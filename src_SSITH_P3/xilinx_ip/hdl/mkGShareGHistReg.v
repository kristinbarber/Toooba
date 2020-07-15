//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
// On Wed Jul 15 02:54:43 BST 2020
//
//
// Ports:
// Name                         I/O  size props
// history                        O     8 reg
// RDY_history                    O     1 const
// RDY_addHistory                 O     1 const
// RDY_redirect                   O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// addHistory_taken               I     2
// addHistory_num                 I     2
// redirect_newHist               I     8
// EN_addHistory                  I     1
// EN_redirect                    I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkGShareGHistReg(CLK,
			RST_N,

			history,
			RDY_history,

			addHistory_taken,
			addHistory_num,
			EN_addHistory,
			RDY_addHistory,

			redirect_newHist,
			EN_redirect,
			RDY_redirect);
  input  CLK;
  input  RST_N;

  // value method history
  output [7 : 0] history;
  output RDY_history;

  // action method addHistory
  input  [1 : 0] addHistory_taken;
  input  [1 : 0] addHistory_num;
  input  EN_addHistory;
  output RDY_addHistory;

  // action method redirect
  input  [7 : 0] redirect_newHist;
  input  EN_redirect;
  output RDY_redirect;

  // signals for module outputs
  wire [7 : 0] history;
  wire RDY_addHistory, RDY_history, RDY_redirect;

  // inlined wires
  wire [3 : 0] m_addHist$wget;

  // register m_hist
  reg [7 : 0] m_hist;
  wire [7 : 0] m_hist$D_IN;
  wire m_hist$EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_m_canon_addHistory,
       CAN_FIRE_RL_m_canon_redirect,
       CAN_FIRE_addHistory,
       CAN_FIRE_redirect,
       WILL_FIRE_RL_m_canon_addHistory,
       WILL_FIRE_RL_m_canon_redirect,
       WILL_FIRE_addHistory,
       WILL_FIRE_redirect;

  // remaining internal signals
  wire [9 : 0] x__h276;

  // value method history
  assign history = m_hist ;
  assign RDY_history = 1'd1 ;

  // action method addHistory
  assign RDY_addHistory = 1'd1 ;
  assign CAN_FIRE_addHistory = 1'd1 ;
  assign WILL_FIRE_addHistory = EN_addHistory ;

  // action method redirect
  assign RDY_redirect = 1'd1 ;
  assign CAN_FIRE_redirect = 1'd1 ;
  assign WILL_FIRE_redirect = EN_redirect ;

  // rule RL_m_canon_redirect
  assign CAN_FIRE_RL_m_canon_redirect = EN_redirect ;
  assign WILL_FIRE_RL_m_canon_redirect = EN_redirect ;

  // rule RL_m_canon_addHistory
  assign CAN_FIRE_RL_m_canon_addHistory = !EN_redirect && EN_addHistory ;
  assign WILL_FIRE_RL_m_canon_addHistory = CAN_FIRE_RL_m_canon_addHistory ;

  // inlined wires
  assign m_addHist$wget = { addHistory_taken, addHistory_num } ;

  // register m_hist
  assign m_hist$D_IN = EN_redirect ? redirect_newHist : x__h276[7:0] ;
  assign m_hist$EN = EN_redirect || WILL_FIRE_RL_m_canon_addHistory ;

  // remaining internal signals
  assign x__h276 = { m_addHist$wget[3:2], m_hist } >> m_addHist$wget[1:0] ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        m_hist <= `BSV_ASSIGNMENT_DELAY 8'd0;
      end
    else
      begin
        if (m_hist$EN) m_hist <= `BSV_ASSIGNMENT_DELAY m_hist$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    m_hist = 8'hAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkGShareGHistReg

