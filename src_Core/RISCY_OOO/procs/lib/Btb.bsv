
// Copyright (c) 2017 Massachusetts Institute of Technology
//
//-
// RVFI_DII + CHERI modifications:
//     Copyright (c) 2020 Jessica Clarke
//     Copyright (c) 2020 Jonathan Woodruff
//     All rights reserved.
//
//     This software was developed by SRI International and the University of
//     Cambridge Computer Laboratory (Department of Computer Science and
//     Technology) under DARPA contract HR0011-18-C-0016 ("ECATS"), as part of the
//     DARPA SSITH research programme.
//
//     This work was supported by NCSC programme grant 4212611/RFA 15971 ("SafeBet").
//-
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use, copy,
// modify, merge, publish, distribute, sublicense, and/or sell copies
// of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
// BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
// ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Types::*;
import ProcTypes::*;
import ConfigReg::*;
import RegFile::*;
import Vector::*;
import CHERICC_Fat::*;
import CHERICap::*;

`define OPTIMIZE_BTB

export NextAddrPred(..);
export mkBtb;

interface NextAddrPred;
    method Maybe#(CapMem) predPc(CapMem pc);
    method Action update(CapMem pc, CapMem brTarget, Bool taken);
    // security
    method Action flush;
    method Bool flush_done;
endinterface

// Local BTB Typedefs
typedef 1 PcLsbsIgnore;
typedef 256 BtbEntries; // 4KB BTB
typedef Bit#(TLog#(BtbEntries)) BtbIndex;
`ifndef OPTIMIZE_BTB
typedef Bit#(TSub#(TSub#(AddrSz, TLog#(BtbEntries)), PcLsbsIgnore)) BtbTag;
`else
typedef Bit#(8) BtbTag;
`endif

typedef struct {
    CapMem pc;
    CapMem nextPc;
    Bool taken;
} BtbUpdate deriving(Bits, Eq, FShow);

// No synthesize boundary because we need to call predPC several times
module mkBtb(NextAddrPred);
    // Read and Write ordering doesn't matter since this is a predictor
    // mkRegFileWCF is the RegFile version of mkConfigReg
    RegFile#(BtbIndex, CapMem) next_addrs <- mkRegFileWCF(0,fromInteger(valueOf(BtbEntries)-1));
    RegFile#(BtbIndex, BtbTag) tags <- mkRegFileWCF(0,fromInteger(valueOf(BtbEntries)-1));
    Vector#(BtbEntries, Reg#(Bool)) valid <- replicateM(mkConfigReg(False));

    RWire#(BtbUpdate) updateEn <- mkRWire;

`ifdef SECURITY
    Reg#(Bool) flushDone <- mkReg(True);
`else
    Bool flushDone = True;
`endif

    function BtbIndex getIndex(CapMem pc) = truncate(getAddr(pc) >> valueof(PcLsbsIgnore));
    function BtbTag getTag(CapMem pc) = truncateLSB(getAddr(pc));

    // no flush, accept update
    (* fire_when_enabled, no_implicit_conditions *)
    rule canonUpdate(flushDone &&& updateEn.wget matches tagged Valid .upd);
        let pc = upd.pc;
        let nextPc = upd.nextPc;
        let taken = upd.taken;

        let index = getIndex(pc);
        let tag = getTag(pc);
        if(taken) begin
            valid[index] <= True;
            tags.upd(index, tag);
            next_addrs.upd(index, nextPc);
        end else if( tags.sub(index) == tag ) begin
            // current instruction has target in btb, so clear it
            valid[index] <= False;
        end
    endrule

`ifdef SECURITY
    // flush, clear everything (and drop update)
    rule doFlush(!flushDone);
        writeVReg(valid, replicate(False));
        flushDone <= True;
    endrule
`endif

    method Maybe#(CapMem) predPc(CapMem pc);
        BtbIndex index = getIndex(pc);
        BtbTag tag = getTag(pc);
        if(valid[index] && tag == tags.sub(index))
            return tagged Valid next_addrs.sub(index);
        else
            return tagged Invalid;
    endmethod

    method Action update(CapMem pc, CapMem nextPc, Bool taken);
        updateEn.wset(BtbUpdate {pc: pc, nextPc: nextPc, taken: taken});
    endmethod

`ifdef SECURITY
    method Action flush if(flushDone);
        flushDone <= False;
    endmethod
    method flush_done = flushDone._read;
`else
    method flush = noAction;
    method flush_done = True;
`endif
endmodule
