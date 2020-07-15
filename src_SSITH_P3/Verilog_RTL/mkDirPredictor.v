//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
// On Wed Jul 15 02:54:45 BST 2020
//
//
// Ports:
// Name                         I/O  size props
// pred_0_pred                    O    25
// RDY_pred_0_pred                O     1 const
// pred_1_pred                    O    25
// RDY_pred_1_pred                O     1 const
// RDY_update                     O     1 const
// RDY_flush                      O     1 const
// flush_done                     O     1 const
// RDY_flush_done                 O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// pred_0_pred_pc                 I   129
// pred_1_pred_pc                 I   129
// update_pc                      I   129
// update_taken                   I     1
// update_train                   I    24
// update_mispred                 I     1
// EN_update                      I     1
// EN_flush                       I     1 unused
// EN_pred_0_pred                 I     1
// EN_pred_1_pred                 I     1
//
// Combinational paths from inputs to outputs:
//   EN_pred_0_pred -> pred_1_pred
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

module mkDirPredictor(CLK,
		      RST_N,

		      pred_0_pred_pc,
		      EN_pred_0_pred,
		      pred_0_pred,
		      RDY_pred_0_pred,

		      pred_1_pred_pc,
		      EN_pred_1_pred,
		      pred_1_pred,
		      RDY_pred_1_pred,

		      update_pc,
		      update_taken,
		      update_train,
		      update_mispred,
		      EN_update,
		      RDY_update,

		      EN_flush,
		      RDY_flush,

		      flush_done,
		      RDY_flush_done);
  input  CLK;
  input  RST_N;

  // actionvalue method pred_0_pred
  input  [128 : 0] pred_0_pred_pc;
  input  EN_pred_0_pred;
  output [24 : 0] pred_0_pred;
  output RDY_pred_0_pred;

  // actionvalue method pred_1_pred
  input  [128 : 0] pred_1_pred_pc;
  input  EN_pred_1_pred;
  output [24 : 0] pred_1_pred;
  output RDY_pred_1_pred;

  // action method update
  input  [128 : 0] update_pc;
  input  update_taken;
  input  [23 : 0] update_train;
  input  update_mispred;
  input  EN_update;
  output RDY_update;

  // action method flush
  input  EN_flush;
  output RDY_flush;

  // value method flush_done
  output flush_done;
  output RDY_flush_done;

  // signals for module outputs
  wire [24 : 0] pred_0_pred, pred_1_pred;
  wire RDY_flush,
       RDY_flush_done,
       RDY_pred_0_pred,
       RDY_pred_1_pred,
       RDY_update,
       flush_done;

  // ports of submodule m
  wire [128 : 0] m$pred_0_pred_pc, m$pred_1_pred_pc, m$update_pc;
  wire [24 : 0] m$pred_0_pred, m$pred_1_pred;
  wire [23 : 0] m$update_train;
  wire m$EN_flush,
       m$EN_pred_0_pred,
       m$EN_pred_1_pred,
       m$EN_update,
       m$flush_done,
       m$update_mispred,
       m$update_taken;

  // rule scheduling signals
  wire CAN_FIRE_flush,
       CAN_FIRE_pred_0_pred,
       CAN_FIRE_pred_1_pred,
       CAN_FIRE_update,
       WILL_FIRE_flush,
       WILL_FIRE_pred_0_pred,
       WILL_FIRE_pred_1_pred,
       WILL_FIRE_update;

  // actionvalue method pred_0_pred
  assign pred_0_pred = m$pred_0_pred ;
  assign RDY_pred_0_pred = 1'd1 ;
  assign CAN_FIRE_pred_0_pred = 1'd1 ;
  assign WILL_FIRE_pred_0_pred = EN_pred_0_pred ;

  // actionvalue method pred_1_pred
  assign pred_1_pred = m$pred_1_pred ;
  assign RDY_pred_1_pred = 1'd1 ;
  assign CAN_FIRE_pred_1_pred = 1'd1 ;
  assign WILL_FIRE_pred_1_pred = EN_pred_1_pred ;

  // action method update
  assign RDY_update = 1'd1 ;
  assign CAN_FIRE_update = 1'd1 ;
  assign WILL_FIRE_update = EN_update ;

  // action method flush
  assign RDY_flush = 1'd1 ;
  assign CAN_FIRE_flush = 1'd1 ;
  assign WILL_FIRE_flush = EN_flush ;

  // value method flush_done
  assign flush_done = m$flush_done ;
  assign RDY_flush_done = 1'd1 ;

  // submodule m
  mkTourPred m(.CLK(CLK),
	       .RST_N(RST_N),
	       .pred_0_pred_pc(m$pred_0_pred_pc),
	       .pred_1_pred_pc(m$pred_1_pred_pc),
	       .update_mispred(m$update_mispred),
	       .update_pc(m$update_pc),
	       .update_taken(m$update_taken),
	       .update_train(m$update_train),
	       .EN_pred_0_pred(m$EN_pred_0_pred),
	       .EN_pred_1_pred(m$EN_pred_1_pred),
	       .EN_update(m$EN_update),
	       .EN_flush(m$EN_flush),
	       .pred_0_pred(m$pred_0_pred),
	       .RDY_pred_0_pred(),
	       .pred_1_pred(m$pred_1_pred),
	       .RDY_pred_1_pred(),
	       .RDY_update(),
	       .RDY_flush(),
	       .flush_done(m$flush_done),
	       .RDY_flush_done());

  // submodule m
  assign m$pred_0_pred_pc = pred_0_pred_pc ;
  assign m$pred_1_pred_pc = pred_1_pred_pc ;
  assign m$update_mispred = update_mispred ;
  assign m$update_pc = update_pc ;
  assign m$update_taken = update_taken ;
  assign m$update_train = update_train ;
  assign m$EN_pred_0_pred = EN_pred_0_pred ;
  assign m$EN_pred_1_pred = EN_pred_1_pred ;
  assign m$EN_update = EN_update ;
  assign m$EN_flush = EN_flush ;
endmodule  // mkDirPredictor

