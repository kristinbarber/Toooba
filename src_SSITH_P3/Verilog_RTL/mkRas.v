//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
//
//
//
// Ports:
// Name                         I/O  size props
// ras_0_first                    O    64
// RDY_ras_0_first                O     1 const
// RDY_ras_0_popPush              O     1 const
// ras_1_first                    O    64
// RDY_ras_1_first                O     1 const
// RDY_ras_1_popPush              O     1 const
// RDY_flush                      O     1 const
// flush_done                     O     1 const
// RDY_flush_done                 O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// ras_0_popPush_pop              I     1
// ras_0_popPush_pushAddr         I    65
// ras_1_popPush_pop              I     1
// ras_1_popPush_pushAddr         I    65
// EN_ras_0_popPush               I     1
// EN_ras_1_popPush               I     1
// EN_flush                       I     1 unused
//
// Combinational paths from inputs to outputs:
//   (ras_0_popPush_pop, ras_0_popPush_pushAddr, EN_ras_0_popPush) -> ras_1_first
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

module mkRas(CLK,
	     RST_N,

	     ras_0_first,
	     RDY_ras_0_first,

	     ras_0_popPush_pop,
	     ras_0_popPush_pushAddr,
	     EN_ras_0_popPush,
	     RDY_ras_0_popPush,

	     ras_1_first,
	     RDY_ras_1_first,

	     ras_1_popPush_pop,
	     ras_1_popPush_pushAddr,
	     EN_ras_1_popPush,
	     RDY_ras_1_popPush,

	     EN_flush,
	     RDY_flush,

	     flush_done,
	     RDY_flush_done);
  input  CLK;
  input  RST_N;

  // value method ras_0_first
  output [63 : 0] ras_0_first;
  output RDY_ras_0_first;

  // action method ras_0_popPush
  input  ras_0_popPush_pop;
  input  [64 : 0] ras_0_popPush_pushAddr;
  input  EN_ras_0_popPush;
  output RDY_ras_0_popPush;

  // value method ras_1_first
  output [63 : 0] ras_1_first;
  output RDY_ras_1_first;

  // action method ras_1_popPush
  input  ras_1_popPush_pop;
  input  [64 : 0] ras_1_popPush_pushAddr;
  input  EN_ras_1_popPush;
  output RDY_ras_1_popPush;

  // action method flush
  input  EN_flush;
  output RDY_flush;

  // value method flush_done
  output flush_done;
  output RDY_flush_done;

  // signals for module outputs
  reg [63 : 0] ras_0_first, ras_1_first;
  wire RDY_flush,
       RDY_flush_done,
       RDY_ras_0_first,
       RDY_ras_0_popPush,
       RDY_ras_1_first,
       RDY_ras_1_popPush,
       flush_done;

  // inlined wires
  wire stack_0_lat_0$whas,
       stack_0_lat_1$whas,
       stack_1_lat_0$whas,
       stack_1_lat_1$whas,
       stack_2_lat_0$whas,
       stack_2_lat_1$whas,
       stack_3_lat_0$whas,
       stack_3_lat_1$whas,
       stack_4_lat_0$whas,
       stack_4_lat_1$whas,
       stack_5_lat_0$whas,
       stack_5_lat_1$whas,
       stack_6_lat_0$whas,
       stack_6_lat_1$whas,
       stack_7_lat_0$whas,
       stack_7_lat_1$whas;

  // register head_rl
  reg [2 : 0] head_rl;
  wire [2 : 0] head_rl$D_IN;
  wire head_rl$EN;

  // register stack_0_rl
  reg [63 : 0] stack_0_rl;
  wire [63 : 0] stack_0_rl$D_IN;
  wire stack_0_rl$EN;

  // register stack_1_rl
  reg [63 : 0] stack_1_rl;
  wire [63 : 0] stack_1_rl$D_IN;
  wire stack_1_rl$EN;

  // register stack_2_rl
  reg [63 : 0] stack_2_rl;
  wire [63 : 0] stack_2_rl$D_IN;
  wire stack_2_rl$EN;

  // register stack_3_rl
  reg [63 : 0] stack_3_rl;
  wire [63 : 0] stack_3_rl$D_IN;
  wire stack_3_rl$EN;

  // register stack_4_rl
  reg [63 : 0] stack_4_rl;
  wire [63 : 0] stack_4_rl$D_IN;
  wire stack_4_rl$EN;

  // register stack_5_rl
  reg [63 : 0] stack_5_rl;
  wire [63 : 0] stack_5_rl$D_IN;
  wire stack_5_rl$EN;

  // register stack_6_rl
  reg [63 : 0] stack_6_rl;
  wire [63 : 0] stack_6_rl$D_IN;
  wire stack_6_rl$EN;

  // register stack_7_rl
  reg [63 : 0] stack_7_rl;
  wire [63 : 0] stack_7_rl$D_IN;
  wire stack_7_rl$EN;

  // ports of submodule head_dummy2_0
  wire head_dummy2_0$D_IN, head_dummy2_0$EN, head_dummy2_0$Q_OUT;

  // ports of submodule head_dummy2_1
  wire head_dummy2_1$D_IN, head_dummy2_1$EN, head_dummy2_1$Q_OUT;

  // ports of submodule head_dummy2_2
  wire head_dummy2_2$D_IN, head_dummy2_2$EN, head_dummy2_2$Q_OUT;

  // ports of submodule stack_0_dummy2_0
  wire stack_0_dummy2_0$D_IN, stack_0_dummy2_0$EN, stack_0_dummy2_0$Q_OUT;

  // ports of submodule stack_0_dummy2_1
  wire stack_0_dummy2_1$D_IN, stack_0_dummy2_1$EN, stack_0_dummy2_1$Q_OUT;

  // ports of submodule stack_0_dummy2_2
  wire stack_0_dummy2_2$D_IN, stack_0_dummy2_2$EN, stack_0_dummy2_2$Q_OUT;

  // ports of submodule stack_1_dummy2_0
  wire stack_1_dummy2_0$D_IN, stack_1_dummy2_0$EN, stack_1_dummy2_0$Q_OUT;

  // ports of submodule stack_1_dummy2_1
  wire stack_1_dummy2_1$D_IN, stack_1_dummy2_1$EN, stack_1_dummy2_1$Q_OUT;

  // ports of submodule stack_1_dummy2_2
  wire stack_1_dummy2_2$D_IN, stack_1_dummy2_2$EN, stack_1_dummy2_2$Q_OUT;

  // ports of submodule stack_2_dummy2_0
  wire stack_2_dummy2_0$D_IN, stack_2_dummy2_0$EN, stack_2_dummy2_0$Q_OUT;

  // ports of submodule stack_2_dummy2_1
  wire stack_2_dummy2_1$D_IN, stack_2_dummy2_1$EN, stack_2_dummy2_1$Q_OUT;

  // ports of submodule stack_2_dummy2_2
  wire stack_2_dummy2_2$D_IN, stack_2_dummy2_2$EN, stack_2_dummy2_2$Q_OUT;

  // ports of submodule stack_3_dummy2_0
  wire stack_3_dummy2_0$D_IN, stack_3_dummy2_0$EN, stack_3_dummy2_0$Q_OUT;

  // ports of submodule stack_3_dummy2_1
  wire stack_3_dummy2_1$D_IN, stack_3_dummy2_1$EN, stack_3_dummy2_1$Q_OUT;

  // ports of submodule stack_3_dummy2_2
  wire stack_3_dummy2_2$D_IN, stack_3_dummy2_2$EN, stack_3_dummy2_2$Q_OUT;

  // ports of submodule stack_4_dummy2_0
  wire stack_4_dummy2_0$D_IN, stack_4_dummy2_0$EN, stack_4_dummy2_0$Q_OUT;

  // ports of submodule stack_4_dummy2_1
  wire stack_4_dummy2_1$D_IN, stack_4_dummy2_1$EN, stack_4_dummy2_1$Q_OUT;

  // ports of submodule stack_4_dummy2_2
  wire stack_4_dummy2_2$D_IN, stack_4_dummy2_2$EN, stack_4_dummy2_2$Q_OUT;

  // ports of submodule stack_5_dummy2_0
  wire stack_5_dummy2_0$D_IN, stack_5_dummy2_0$EN, stack_5_dummy2_0$Q_OUT;

  // ports of submodule stack_5_dummy2_1
  wire stack_5_dummy2_1$D_IN, stack_5_dummy2_1$EN, stack_5_dummy2_1$Q_OUT;

  // ports of submodule stack_5_dummy2_2
  wire stack_5_dummy2_2$D_IN, stack_5_dummy2_2$EN, stack_5_dummy2_2$Q_OUT;

  // ports of submodule stack_6_dummy2_0
  wire stack_6_dummy2_0$D_IN, stack_6_dummy2_0$EN, stack_6_dummy2_0$Q_OUT;

  // ports of submodule stack_6_dummy2_1
  wire stack_6_dummy2_1$D_IN, stack_6_dummy2_1$EN, stack_6_dummy2_1$Q_OUT;

  // ports of submodule stack_6_dummy2_2
  wire stack_6_dummy2_2$D_IN, stack_6_dummy2_2$EN, stack_6_dummy2_2$Q_OUT;

  // ports of submodule stack_7_dummy2_0
  wire stack_7_dummy2_0$D_IN, stack_7_dummy2_0$EN, stack_7_dummy2_0$Q_OUT;

  // ports of submodule stack_7_dummy2_1
  wire stack_7_dummy2_1$D_IN, stack_7_dummy2_1$EN, stack_7_dummy2_1$Q_OUT;

  // ports of submodule stack_7_dummy2_2
  wire stack_7_dummy2_2$D_IN, stack_7_dummy2_2$EN, stack_7_dummy2_2$Q_OUT;

  // rule scheduling signals
  wire CAN_FIRE_RL_head_canon,
       CAN_FIRE_RL_stack_0_canon,
       CAN_FIRE_RL_stack_1_canon,
       CAN_FIRE_RL_stack_2_canon,
       CAN_FIRE_RL_stack_3_canon,
       CAN_FIRE_RL_stack_4_canon,
       CAN_FIRE_RL_stack_5_canon,
       CAN_FIRE_RL_stack_6_canon,
       CAN_FIRE_RL_stack_7_canon,
       CAN_FIRE_flush,
       CAN_FIRE_ras_0_popPush,
       CAN_FIRE_ras_1_popPush,
       WILL_FIRE_RL_head_canon,
       WILL_FIRE_RL_stack_0_canon,
       WILL_FIRE_RL_stack_1_canon,
       WILL_FIRE_RL_stack_2_canon,
       WILL_FIRE_RL_stack_3_canon,
       WILL_FIRE_RL_stack_4_canon,
       WILL_FIRE_RL_stack_5_canon,
       WILL_FIRE_RL_stack_6_canon,
       WILL_FIRE_RL_stack_7_canon,
       WILL_FIRE_flush,
       WILL_FIRE_ras_0_popPush,
       WILL_FIRE_ras_1_popPush;

  // remaining internal signals
  wire [63 : 0] IF_stack_0_lat_0_whas_THEN_stack_0_lat_0_wget__ETC___d8,
		IF_stack_1_lat_0_whas__5_THEN_stack_1_lat_0_wg_ETC___d18,
		IF_stack_2_lat_0_whas__5_THEN_stack_2_lat_0_wg_ETC___d28,
		IF_stack_3_lat_0_whas__5_THEN_stack_3_lat_0_wg_ETC___d38,
		IF_stack_4_lat_0_whas__5_THEN_stack_4_lat_0_wg_ETC___d48,
		IF_stack_5_lat_0_whas__5_THEN_stack_5_lat_0_wg_ETC___d58,
		IF_stack_6_lat_0_whas__5_THEN_stack_6_lat_0_wg_ETC___d68,
		IF_stack_7_lat_0_whas__5_THEN_stack_7_lat_0_wg_ETC___d78,
		n__read__h14366,
		n__read__h14368,
		n__read__h14370,
		n__read__h14372,
		n__read__h14374,
		n__read__h14376,
		n__read__h14378,
		n__read__h14380,
		n__read__h16919,
		n__read__h16921,
		n__read__h16923,
		n__read__h16925,
		n__read__h16927,
		n__read__h16929,
		n__read__h16931,
		n__read__h16933;
  wire [2 : 0] IF_head_lat_0_whas__5_THEN_head_lat_0_wget__6__ETC___d88,
	       _theResult____h15846,
	       _theResult____h17604,
	       h___1__h15920,
	       h___1__h17675,
	       h__h15845,
	       upd__h13268,
	       upd__h16887,
	       v__h15890,
	       v__h17648,
	       x__h16799;

  // value method ras_0_first
  always@(h__h15845 or
	  n__read__h14366 or
	  n__read__h14368 or
	  n__read__h14370 or
	  n__read__h14372 or
	  n__read__h14374 or
	  n__read__h14376 or n__read__h14378 or n__read__h14380)
  begin
    case (h__h15845)
      3'd0: ras_0_first = n__read__h14366;
      3'd1: ras_0_first = n__read__h14368;
      3'd2: ras_0_first = n__read__h14370;
      3'd3: ras_0_first = n__read__h14372;
      3'd4: ras_0_first = n__read__h14374;
      3'd5: ras_0_first = n__read__h14376;
      3'd6: ras_0_first = n__read__h14378;
      3'd7: ras_0_first = n__read__h14380;
    endcase
  end
  assign RDY_ras_0_first = 1'd1 ;

  // action method ras_0_popPush
  assign RDY_ras_0_popPush = 1'd1 ;
  assign CAN_FIRE_ras_0_popPush = 1'd1 ;
  assign WILL_FIRE_ras_0_popPush = EN_ras_0_popPush ;

  // value method ras_1_first
  always@(x__h16799 or
	  n__read__h16919 or
	  n__read__h16921 or
	  n__read__h16923 or
	  n__read__h16925 or
	  n__read__h16927 or
	  n__read__h16929 or n__read__h16931 or n__read__h16933)
  begin
    case (x__h16799)
      3'd0: ras_1_first = n__read__h16919;
      3'd1: ras_1_first = n__read__h16921;
      3'd2: ras_1_first = n__read__h16923;
      3'd3: ras_1_first = n__read__h16925;
      3'd4: ras_1_first = n__read__h16927;
      3'd5: ras_1_first = n__read__h16929;
      3'd6: ras_1_first = n__read__h16931;
      3'd7: ras_1_first = n__read__h16933;
    endcase
  end
  assign RDY_ras_1_first = 1'd1 ;

  // action method ras_1_popPush
  assign RDY_ras_1_popPush = 1'd1 ;
  assign CAN_FIRE_ras_1_popPush = 1'd1 ;
  assign WILL_FIRE_ras_1_popPush = EN_ras_1_popPush ;

  // action method flush
  assign RDY_flush = 1'd1 ;
  assign CAN_FIRE_flush = 1'd1 ;
  assign WILL_FIRE_flush = EN_flush ;

  // value method flush_done
  assign flush_done = 1'd1 ;
  assign RDY_flush_done = 1'd1 ;

  // submodule head_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) head_dummy2_0(.CLK(CLK),
							.D_IN(head_dummy2_0$D_IN),
							.EN(head_dummy2_0$EN),
							.Q_OUT(head_dummy2_0$Q_OUT));

  // submodule head_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) head_dummy2_1(.CLK(CLK),
							.D_IN(head_dummy2_1$D_IN),
							.EN(head_dummy2_1$EN),
							.Q_OUT(head_dummy2_1$Q_OUT));

  // submodule head_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) head_dummy2_2(.CLK(CLK),
							.D_IN(head_dummy2_2$D_IN),
							.EN(head_dummy2_2$EN),
							.Q_OUT(head_dummy2_2$Q_OUT));

  // submodule stack_0_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) stack_0_dummy2_0(.CLK(CLK),
							   .D_IN(stack_0_dummy2_0$D_IN),
							   .EN(stack_0_dummy2_0$EN),
							   .Q_OUT(stack_0_dummy2_0$Q_OUT));

  // submodule stack_0_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) stack_0_dummy2_1(.CLK(CLK),
							   .D_IN(stack_0_dummy2_1$D_IN),
							   .EN(stack_0_dummy2_1$EN),
							   .Q_OUT(stack_0_dummy2_1$Q_OUT));

  // submodule stack_0_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) stack_0_dummy2_2(.CLK(CLK),
							   .D_IN(stack_0_dummy2_2$D_IN),
							   .EN(stack_0_dummy2_2$EN),
							   .Q_OUT(stack_0_dummy2_2$Q_OUT));

  // submodule stack_1_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) stack_1_dummy2_0(.CLK(CLK),
							   .D_IN(stack_1_dummy2_0$D_IN),
							   .EN(stack_1_dummy2_0$EN),
							   .Q_OUT(stack_1_dummy2_0$Q_OUT));

  // submodule stack_1_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) stack_1_dummy2_1(.CLK(CLK),
							   .D_IN(stack_1_dummy2_1$D_IN),
							   .EN(stack_1_dummy2_1$EN),
							   .Q_OUT(stack_1_dummy2_1$Q_OUT));

  // submodule stack_1_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) stack_1_dummy2_2(.CLK(CLK),
							   .D_IN(stack_1_dummy2_2$D_IN),
							   .EN(stack_1_dummy2_2$EN),
							   .Q_OUT(stack_1_dummy2_2$Q_OUT));

  // submodule stack_2_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) stack_2_dummy2_0(.CLK(CLK),
							   .D_IN(stack_2_dummy2_0$D_IN),
							   .EN(stack_2_dummy2_0$EN),
							   .Q_OUT(stack_2_dummy2_0$Q_OUT));

  // submodule stack_2_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) stack_2_dummy2_1(.CLK(CLK),
							   .D_IN(stack_2_dummy2_1$D_IN),
							   .EN(stack_2_dummy2_1$EN),
							   .Q_OUT(stack_2_dummy2_1$Q_OUT));

  // submodule stack_2_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) stack_2_dummy2_2(.CLK(CLK),
							   .D_IN(stack_2_dummy2_2$D_IN),
							   .EN(stack_2_dummy2_2$EN),
							   .Q_OUT(stack_2_dummy2_2$Q_OUT));

  // submodule stack_3_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) stack_3_dummy2_0(.CLK(CLK),
							   .D_IN(stack_3_dummy2_0$D_IN),
							   .EN(stack_3_dummy2_0$EN),
							   .Q_OUT(stack_3_dummy2_0$Q_OUT));

  // submodule stack_3_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) stack_3_dummy2_1(.CLK(CLK),
							   .D_IN(stack_3_dummy2_1$D_IN),
							   .EN(stack_3_dummy2_1$EN),
							   .Q_OUT(stack_3_dummy2_1$Q_OUT));

  // submodule stack_3_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) stack_3_dummy2_2(.CLK(CLK),
							   .D_IN(stack_3_dummy2_2$D_IN),
							   .EN(stack_3_dummy2_2$EN),
							   .Q_OUT(stack_3_dummy2_2$Q_OUT));

  // submodule stack_4_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) stack_4_dummy2_0(.CLK(CLK),
							   .D_IN(stack_4_dummy2_0$D_IN),
							   .EN(stack_4_dummy2_0$EN),
							   .Q_OUT(stack_4_dummy2_0$Q_OUT));

  // submodule stack_4_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) stack_4_dummy2_1(.CLK(CLK),
							   .D_IN(stack_4_dummy2_1$D_IN),
							   .EN(stack_4_dummy2_1$EN),
							   .Q_OUT(stack_4_dummy2_1$Q_OUT));

  // submodule stack_4_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) stack_4_dummy2_2(.CLK(CLK),
							   .D_IN(stack_4_dummy2_2$D_IN),
							   .EN(stack_4_dummy2_2$EN),
							   .Q_OUT(stack_4_dummy2_2$Q_OUT));

  // submodule stack_5_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) stack_5_dummy2_0(.CLK(CLK),
							   .D_IN(stack_5_dummy2_0$D_IN),
							   .EN(stack_5_dummy2_0$EN),
							   .Q_OUT(stack_5_dummy2_0$Q_OUT));

  // submodule stack_5_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) stack_5_dummy2_1(.CLK(CLK),
							   .D_IN(stack_5_dummy2_1$D_IN),
							   .EN(stack_5_dummy2_1$EN),
							   .Q_OUT(stack_5_dummy2_1$Q_OUT));

  // submodule stack_5_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) stack_5_dummy2_2(.CLK(CLK),
							   .D_IN(stack_5_dummy2_2$D_IN),
							   .EN(stack_5_dummy2_2$EN),
							   .Q_OUT(stack_5_dummy2_2$Q_OUT));

  // submodule stack_6_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) stack_6_dummy2_0(.CLK(CLK),
							   .D_IN(stack_6_dummy2_0$D_IN),
							   .EN(stack_6_dummy2_0$EN),
							   .Q_OUT(stack_6_dummy2_0$Q_OUT));

  // submodule stack_6_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) stack_6_dummy2_1(.CLK(CLK),
							   .D_IN(stack_6_dummy2_1$D_IN),
							   .EN(stack_6_dummy2_1$EN),
							   .Q_OUT(stack_6_dummy2_1$Q_OUT));

  // submodule stack_6_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) stack_6_dummy2_2(.CLK(CLK),
							   .D_IN(stack_6_dummy2_2$D_IN),
							   .EN(stack_6_dummy2_2$EN),
							   .Q_OUT(stack_6_dummy2_2$Q_OUT));

  // submodule stack_7_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) stack_7_dummy2_0(.CLK(CLK),
							   .D_IN(stack_7_dummy2_0$D_IN),
							   .EN(stack_7_dummy2_0$EN),
							   .Q_OUT(stack_7_dummy2_0$Q_OUT));

  // submodule stack_7_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) stack_7_dummy2_1(.CLK(CLK),
							   .D_IN(stack_7_dummy2_1$D_IN),
							   .EN(stack_7_dummy2_1$EN),
							   .Q_OUT(stack_7_dummy2_1$Q_OUT));

  // submodule stack_7_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) stack_7_dummy2_2(.CLK(CLK),
							   .D_IN(stack_7_dummy2_2$D_IN),
							   .EN(stack_7_dummy2_2$EN),
							   .Q_OUT(stack_7_dummy2_2$Q_OUT));

  // rule RL_stack_0_canon
  assign CAN_FIRE_RL_stack_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_stack_0_canon = 1'd1 ;

  // rule RL_stack_1_canon
  assign CAN_FIRE_RL_stack_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_stack_1_canon = 1'd1 ;

  // rule RL_stack_2_canon
  assign CAN_FIRE_RL_stack_2_canon = 1'd1 ;
  assign WILL_FIRE_RL_stack_2_canon = 1'd1 ;

  // rule RL_stack_3_canon
  assign CAN_FIRE_RL_stack_3_canon = 1'd1 ;
  assign WILL_FIRE_RL_stack_3_canon = 1'd1 ;

  // rule RL_stack_4_canon
  assign CAN_FIRE_RL_stack_4_canon = 1'd1 ;
  assign WILL_FIRE_RL_stack_4_canon = 1'd1 ;

  // rule RL_stack_5_canon
  assign CAN_FIRE_RL_stack_5_canon = 1'd1 ;
  assign WILL_FIRE_RL_stack_5_canon = 1'd1 ;

  // rule RL_stack_6_canon
  assign CAN_FIRE_RL_stack_6_canon = 1'd1 ;
  assign WILL_FIRE_RL_stack_6_canon = 1'd1 ;

  // rule RL_stack_7_canon
  assign CAN_FIRE_RL_stack_7_canon = 1'd1 ;
  assign WILL_FIRE_RL_stack_7_canon = 1'd1 ;

  // rule RL_head_canon
  assign CAN_FIRE_RL_head_canon = 1'd1 ;
  assign WILL_FIRE_RL_head_canon = 1'd1 ;

  // inlined wires
  assign stack_0_lat_0$whas =
	     EN_ras_0_popPush && v__h15890 == 3'd0 &&
	     ras_0_popPush_pushAddr[64] ;
  assign stack_0_lat_1$whas =
	     EN_ras_1_popPush && v__h17648 == 3'd0 &&
	     ras_1_popPush_pushAddr[64] ;
  assign stack_1_lat_0$whas =
	     EN_ras_0_popPush && v__h15890 == 3'd1 &&
	     ras_0_popPush_pushAddr[64] ;
  assign stack_1_lat_1$whas =
	     EN_ras_1_popPush && v__h17648 == 3'd1 &&
	     ras_1_popPush_pushAddr[64] ;
  assign stack_2_lat_0$whas =
	     EN_ras_0_popPush && v__h15890 == 3'd2 &&
	     ras_0_popPush_pushAddr[64] ;
  assign stack_2_lat_1$whas =
	     EN_ras_1_popPush && v__h17648 == 3'd2 &&
	     ras_1_popPush_pushAddr[64] ;
  assign stack_3_lat_0$whas =
	     EN_ras_0_popPush && v__h15890 == 3'd3 &&
	     ras_0_popPush_pushAddr[64] ;
  assign stack_3_lat_1$whas =
	     EN_ras_1_popPush && v__h17648 == 3'd3 &&
	     ras_1_popPush_pushAddr[64] ;
  assign stack_4_lat_0$whas =
	     EN_ras_0_popPush && v__h15890 == 3'd4 &&
	     ras_0_popPush_pushAddr[64] ;
  assign stack_4_lat_1$whas =
	     EN_ras_1_popPush && v__h17648 == 3'd4 &&
	     ras_1_popPush_pushAddr[64] ;
  assign stack_5_lat_0$whas =
	     EN_ras_0_popPush && v__h15890 == 3'd5 &&
	     ras_0_popPush_pushAddr[64] ;
  assign stack_5_lat_1$whas =
	     EN_ras_1_popPush && v__h17648 == 3'd5 &&
	     ras_1_popPush_pushAddr[64] ;
  assign stack_6_lat_0$whas =
	     EN_ras_0_popPush && v__h15890 == 3'd6 &&
	     ras_0_popPush_pushAddr[64] ;
  assign stack_6_lat_1$whas =
	     EN_ras_1_popPush && v__h17648 == 3'd6 &&
	     ras_1_popPush_pushAddr[64] ;
  assign stack_7_lat_0$whas =
	     EN_ras_0_popPush && v__h15890 == 3'd7 &&
	     ras_0_popPush_pushAddr[64] ;
  assign stack_7_lat_1$whas =
	     EN_ras_1_popPush && v__h17648 == 3'd7 &&
	     ras_1_popPush_pushAddr[64] ;

  // register head_rl
  assign head_rl$D_IN =
	     EN_ras_1_popPush ?
	       upd__h13268 :
	       IF_head_lat_0_whas__5_THEN_head_lat_0_wget__6__ETC___d88 ;
  assign head_rl$EN = 1'd1 ;

  // register stack_0_rl
  assign stack_0_rl$D_IN =
	     stack_0_lat_1$whas ?
	       ras_1_popPush_pushAddr[63:0] :
	       IF_stack_0_lat_0_whas_THEN_stack_0_lat_0_wget__ETC___d8 ;
  assign stack_0_rl$EN = 1'd1 ;

  // register stack_1_rl
  assign stack_1_rl$D_IN =
	     stack_1_lat_1$whas ?
	       ras_1_popPush_pushAddr[63:0] :
	       IF_stack_1_lat_0_whas__5_THEN_stack_1_lat_0_wg_ETC___d18 ;
  assign stack_1_rl$EN = 1'd1 ;

  // register stack_2_rl
  assign stack_2_rl$D_IN =
	     stack_2_lat_1$whas ?
	       ras_1_popPush_pushAddr[63:0] :
	       IF_stack_2_lat_0_whas__5_THEN_stack_2_lat_0_wg_ETC___d28 ;
  assign stack_2_rl$EN = 1'd1 ;

  // register stack_3_rl
  assign stack_3_rl$D_IN =
	     stack_3_lat_1$whas ?
	       ras_1_popPush_pushAddr[63:0] :
	       IF_stack_3_lat_0_whas__5_THEN_stack_3_lat_0_wg_ETC___d38 ;
  assign stack_3_rl$EN = 1'd1 ;

  // register stack_4_rl
  assign stack_4_rl$D_IN =
	     stack_4_lat_1$whas ?
	       ras_1_popPush_pushAddr[63:0] :
	       IF_stack_4_lat_0_whas__5_THEN_stack_4_lat_0_wg_ETC___d48 ;
  assign stack_4_rl$EN = 1'd1 ;

  // register stack_5_rl
  assign stack_5_rl$D_IN =
	     stack_5_lat_1$whas ?
	       ras_1_popPush_pushAddr[63:0] :
	       IF_stack_5_lat_0_whas__5_THEN_stack_5_lat_0_wg_ETC___d58 ;
  assign stack_5_rl$EN = 1'd1 ;

  // register stack_6_rl
  assign stack_6_rl$D_IN =
	     stack_6_lat_1$whas ?
	       ras_1_popPush_pushAddr[63:0] :
	       IF_stack_6_lat_0_whas__5_THEN_stack_6_lat_0_wg_ETC___d68 ;
  assign stack_6_rl$EN = 1'd1 ;

  // register stack_7_rl
  assign stack_7_rl$D_IN =
	     stack_7_lat_1$whas ?
	       ras_1_popPush_pushAddr[63:0] :
	       IF_stack_7_lat_0_whas__5_THEN_stack_7_lat_0_wg_ETC___d78 ;
  assign stack_7_rl$EN = 1'd1 ;

  // submodule head_dummy2_0
  assign head_dummy2_0$D_IN = 1'd1 ;
  assign head_dummy2_0$EN = EN_ras_0_popPush ;

  // submodule head_dummy2_1
  assign head_dummy2_1$D_IN = 1'd1 ;
  assign head_dummy2_1$EN = EN_ras_1_popPush ;

  // submodule head_dummy2_2
  assign head_dummy2_2$D_IN = 1'b0 ;
  assign head_dummy2_2$EN = 1'b0 ;

  // submodule stack_0_dummy2_0
  assign stack_0_dummy2_0$D_IN = 1'd1 ;
  assign stack_0_dummy2_0$EN = stack_0_lat_0$whas ;

  // submodule stack_0_dummy2_1
  assign stack_0_dummy2_1$D_IN = 1'd1 ;
  assign stack_0_dummy2_1$EN = stack_0_lat_1$whas ;

  // submodule stack_0_dummy2_2
  assign stack_0_dummy2_2$D_IN = 1'b0 ;
  assign stack_0_dummy2_2$EN = 1'b0 ;

  // submodule stack_1_dummy2_0
  assign stack_1_dummy2_0$D_IN = 1'd1 ;
  assign stack_1_dummy2_0$EN = stack_1_lat_0$whas ;

  // submodule stack_1_dummy2_1
  assign stack_1_dummy2_1$D_IN = 1'd1 ;
  assign stack_1_dummy2_1$EN = stack_1_lat_1$whas ;

  // submodule stack_1_dummy2_2
  assign stack_1_dummy2_2$D_IN = 1'b0 ;
  assign stack_1_dummy2_2$EN = 1'b0 ;

  // submodule stack_2_dummy2_0
  assign stack_2_dummy2_0$D_IN = 1'd1 ;
  assign stack_2_dummy2_0$EN = stack_2_lat_0$whas ;

  // submodule stack_2_dummy2_1
  assign stack_2_dummy2_1$D_IN = 1'd1 ;
  assign stack_2_dummy2_1$EN = stack_2_lat_1$whas ;

  // submodule stack_2_dummy2_2
  assign stack_2_dummy2_2$D_IN = 1'b0 ;
  assign stack_2_dummy2_2$EN = 1'b0 ;

  // submodule stack_3_dummy2_0
  assign stack_3_dummy2_0$D_IN = 1'd1 ;
  assign stack_3_dummy2_0$EN = stack_3_lat_0$whas ;

  // submodule stack_3_dummy2_1
  assign stack_3_dummy2_1$D_IN = 1'd1 ;
  assign stack_3_dummy2_1$EN = stack_3_lat_1$whas ;

  // submodule stack_3_dummy2_2
  assign stack_3_dummy2_2$D_IN = 1'b0 ;
  assign stack_3_dummy2_2$EN = 1'b0 ;

  // submodule stack_4_dummy2_0
  assign stack_4_dummy2_0$D_IN = 1'd1 ;
  assign stack_4_dummy2_0$EN = stack_4_lat_0$whas ;

  // submodule stack_4_dummy2_1
  assign stack_4_dummy2_1$D_IN = 1'd1 ;
  assign stack_4_dummy2_1$EN = stack_4_lat_1$whas ;

  // submodule stack_4_dummy2_2
  assign stack_4_dummy2_2$D_IN = 1'b0 ;
  assign stack_4_dummy2_2$EN = 1'b0 ;

  // submodule stack_5_dummy2_0
  assign stack_5_dummy2_0$D_IN = 1'd1 ;
  assign stack_5_dummy2_0$EN = stack_5_lat_0$whas ;

  // submodule stack_5_dummy2_1
  assign stack_5_dummy2_1$D_IN = 1'd1 ;
  assign stack_5_dummy2_1$EN = stack_5_lat_1$whas ;

  // submodule stack_5_dummy2_2
  assign stack_5_dummy2_2$D_IN = 1'b0 ;
  assign stack_5_dummy2_2$EN = 1'b0 ;

  // submodule stack_6_dummy2_0
  assign stack_6_dummy2_0$D_IN = 1'd1 ;
  assign stack_6_dummy2_0$EN = stack_6_lat_0$whas ;

  // submodule stack_6_dummy2_1
  assign stack_6_dummy2_1$D_IN = 1'd1 ;
  assign stack_6_dummy2_1$EN = stack_6_lat_1$whas ;

  // submodule stack_6_dummy2_2
  assign stack_6_dummy2_2$D_IN = 1'b0 ;
  assign stack_6_dummy2_2$EN = 1'b0 ;

  // submodule stack_7_dummy2_0
  assign stack_7_dummy2_0$D_IN = 1'd1 ;
  assign stack_7_dummy2_0$EN = stack_7_lat_0$whas ;

  // submodule stack_7_dummy2_1
  assign stack_7_dummy2_1$D_IN = 1'd1 ;
  assign stack_7_dummy2_1$EN = stack_7_lat_1$whas ;

  // submodule stack_7_dummy2_2
  assign stack_7_dummy2_2$D_IN = 1'b0 ;
  assign stack_7_dummy2_2$EN = 1'b0 ;

  // remaining internal signals
  assign IF_head_lat_0_whas__5_THEN_head_lat_0_wget__6__ETC___d88 =
	     EN_ras_0_popPush ? upd__h16887 : head_rl ;
  assign IF_stack_0_lat_0_whas_THEN_stack_0_lat_0_wget__ETC___d8 =
	     stack_0_lat_0$whas ? ras_0_popPush_pushAddr[63:0] : stack_0_rl ;
  assign IF_stack_1_lat_0_whas__5_THEN_stack_1_lat_0_wg_ETC___d18 =
	     stack_1_lat_0$whas ? ras_0_popPush_pushAddr[63:0] : stack_1_rl ;
  assign IF_stack_2_lat_0_whas__5_THEN_stack_2_lat_0_wg_ETC___d28 =
	     stack_2_lat_0$whas ? ras_0_popPush_pushAddr[63:0] : stack_2_rl ;
  assign IF_stack_3_lat_0_whas__5_THEN_stack_3_lat_0_wg_ETC___d38 =
	     stack_3_lat_0$whas ? ras_0_popPush_pushAddr[63:0] : stack_3_rl ;
  assign IF_stack_4_lat_0_whas__5_THEN_stack_4_lat_0_wg_ETC___d48 =
	     stack_4_lat_0$whas ? ras_0_popPush_pushAddr[63:0] : stack_4_rl ;
  assign IF_stack_5_lat_0_whas__5_THEN_stack_5_lat_0_wg_ETC___d58 =
	     stack_5_lat_0$whas ? ras_0_popPush_pushAddr[63:0] : stack_5_rl ;
  assign IF_stack_6_lat_0_whas__5_THEN_stack_6_lat_0_wg_ETC___d68 =
	     stack_6_lat_0$whas ? ras_0_popPush_pushAddr[63:0] : stack_6_rl ;
  assign IF_stack_7_lat_0_whas__5_THEN_stack_7_lat_0_wg_ETC___d78 =
	     stack_7_lat_0$whas ? ras_0_popPush_pushAddr[63:0] : stack_7_rl ;
  assign _theResult____h15846 =
	     ras_0_popPush_pop ? h___1__h15920 : h__h15845 ;
  assign _theResult____h17604 =
	     ras_1_popPush_pop ? h___1__h17675 : x__h16799 ;
  assign h___1__h15920 = h__h15845 - 3'd1 ;
  assign h___1__h17675 = x__h16799 - 3'd1 ;
  assign h__h15845 =
	     (head_dummy2_0$Q_OUT && head_dummy2_1$Q_OUT &&
	      head_dummy2_2$Q_OUT) ?
	       head_rl :
	       3'd0 ;
  assign n__read__h14366 =
	     (stack_0_dummy2_0$Q_OUT && stack_0_dummy2_1$Q_OUT &&
	      stack_0_dummy2_2$Q_OUT) ?
	       stack_0_rl :
	       64'd0 ;
  assign n__read__h14368 =
	     (stack_1_dummy2_0$Q_OUT && stack_1_dummy2_1$Q_OUT &&
	      stack_1_dummy2_2$Q_OUT) ?
	       stack_1_rl :
	       64'd0 ;
  assign n__read__h14370 =
	     (stack_2_dummy2_0$Q_OUT && stack_2_dummy2_1$Q_OUT &&
	      stack_2_dummy2_2$Q_OUT) ?
	       stack_2_rl :
	       64'd0 ;
  assign n__read__h14372 =
	     (stack_3_dummy2_0$Q_OUT && stack_3_dummy2_1$Q_OUT &&
	      stack_3_dummy2_2$Q_OUT) ?
	       stack_3_rl :
	       64'd0 ;
  assign n__read__h14374 =
	     (stack_4_dummy2_0$Q_OUT && stack_4_dummy2_1$Q_OUT &&
	      stack_4_dummy2_2$Q_OUT) ?
	       stack_4_rl :
	       64'd0 ;
  assign n__read__h14376 =
	     (stack_5_dummy2_0$Q_OUT && stack_5_dummy2_1$Q_OUT &&
	      stack_5_dummy2_2$Q_OUT) ?
	       stack_5_rl :
	       64'd0 ;
  assign n__read__h14378 =
	     (stack_6_dummy2_0$Q_OUT && stack_6_dummy2_1$Q_OUT &&
	      stack_6_dummy2_2$Q_OUT) ?
	       stack_6_rl :
	       64'd0 ;
  assign n__read__h14380 =
	     (stack_7_dummy2_0$Q_OUT && stack_7_dummy2_1$Q_OUT &&
	      stack_7_dummy2_2$Q_OUT) ?
	       stack_7_rl :
	       64'd0 ;
  assign n__read__h16919 =
	     (stack_0_dummy2_1$Q_OUT && stack_0_dummy2_2$Q_OUT) ?
	       IF_stack_0_lat_0_whas_THEN_stack_0_lat_0_wget__ETC___d8 :
	       64'd0 ;
  assign n__read__h16921 =
	     (stack_1_dummy2_1$Q_OUT && stack_1_dummy2_2$Q_OUT) ?
	       IF_stack_1_lat_0_whas__5_THEN_stack_1_lat_0_wg_ETC___d18 :
	       64'd0 ;
  assign n__read__h16923 =
	     (stack_2_dummy2_1$Q_OUT && stack_2_dummy2_2$Q_OUT) ?
	       IF_stack_2_lat_0_whas__5_THEN_stack_2_lat_0_wg_ETC___d28 :
	       64'd0 ;
  assign n__read__h16925 =
	     (stack_3_dummy2_1$Q_OUT && stack_3_dummy2_2$Q_OUT) ?
	       IF_stack_3_lat_0_whas__5_THEN_stack_3_lat_0_wg_ETC___d38 :
	       64'd0 ;
  assign n__read__h16927 =
	     (stack_4_dummy2_1$Q_OUT && stack_4_dummy2_2$Q_OUT) ?
	       IF_stack_4_lat_0_whas__5_THEN_stack_4_lat_0_wg_ETC___d48 :
	       64'd0 ;
  assign n__read__h16929 =
	     (stack_5_dummy2_1$Q_OUT && stack_5_dummy2_2$Q_OUT) ?
	       IF_stack_5_lat_0_whas__5_THEN_stack_5_lat_0_wg_ETC___d58 :
	       64'd0 ;
  assign n__read__h16931 =
	     (stack_6_dummy2_1$Q_OUT && stack_6_dummy2_2$Q_OUT) ?
	       IF_stack_6_lat_0_whas__5_THEN_stack_6_lat_0_wg_ETC___d68 :
	       64'd0 ;
  assign n__read__h16933 =
	     (stack_7_dummy2_1$Q_OUT && stack_7_dummy2_2$Q_OUT) ?
	       IF_stack_7_lat_0_whas__5_THEN_stack_7_lat_0_wg_ETC___d78 :
	       64'd0 ;
  assign upd__h13268 =
	     ras_1_popPush_pushAddr[64] ? v__h17648 : _theResult____h17604 ;
  assign upd__h16887 =
	     ras_0_popPush_pushAddr[64] ? v__h15890 : _theResult____h15846 ;
  assign v__h15890 = _theResult____h15846 + 3'd1 ;
  assign v__h17648 = _theResult____h17604 + 3'd1 ;
  assign x__h16799 =
	     (head_dummy2_1$Q_OUT && head_dummy2_2$Q_OUT) ?
	       IF_head_lat_0_whas__5_THEN_head_lat_0_wget__6__ETC___d88 :
	       3'd0 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        head_rl <= `BSV_ASSIGNMENT_DELAY 3'd0;
	stack_0_rl <= `BSV_ASSIGNMENT_DELAY 64'd0;
	stack_1_rl <= `BSV_ASSIGNMENT_DELAY 64'd0;
	stack_2_rl <= `BSV_ASSIGNMENT_DELAY 64'd0;
	stack_3_rl <= `BSV_ASSIGNMENT_DELAY 64'd0;
	stack_4_rl <= `BSV_ASSIGNMENT_DELAY 64'd0;
	stack_5_rl <= `BSV_ASSIGNMENT_DELAY 64'd0;
	stack_6_rl <= `BSV_ASSIGNMENT_DELAY 64'd0;
	stack_7_rl <= `BSV_ASSIGNMENT_DELAY 64'd0;
      end
    else
      begin
        if (head_rl$EN) head_rl <= `BSV_ASSIGNMENT_DELAY head_rl$D_IN;
	if (stack_0_rl$EN)
	  stack_0_rl <= `BSV_ASSIGNMENT_DELAY stack_0_rl$D_IN;
	if (stack_1_rl$EN)
	  stack_1_rl <= `BSV_ASSIGNMENT_DELAY stack_1_rl$D_IN;
	if (stack_2_rl$EN)
	  stack_2_rl <= `BSV_ASSIGNMENT_DELAY stack_2_rl$D_IN;
	if (stack_3_rl$EN)
	  stack_3_rl <= `BSV_ASSIGNMENT_DELAY stack_3_rl$D_IN;
	if (stack_4_rl$EN)
	  stack_4_rl <= `BSV_ASSIGNMENT_DELAY stack_4_rl$D_IN;
	if (stack_5_rl$EN)
	  stack_5_rl <= `BSV_ASSIGNMENT_DELAY stack_5_rl$D_IN;
	if (stack_6_rl$EN)
	  stack_6_rl <= `BSV_ASSIGNMENT_DELAY stack_6_rl$D_IN;
	if (stack_7_rl$EN)
	  stack_7_rl <= `BSV_ASSIGNMENT_DELAY stack_7_rl$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    head_rl = 3'h2;
    stack_0_rl = 64'hAAAAAAAAAAAAAAAA;
    stack_1_rl = 64'hAAAAAAAAAAAAAAAA;
    stack_2_rl = 64'hAAAAAAAAAAAAAAAA;
    stack_3_rl = 64'hAAAAAAAAAAAAAAAA;
    stack_4_rl = 64'hAAAAAAAAAAAAAAAA;
    stack_5_rl = 64'hAAAAAAAAAAAAAAAA;
    stack_6_rl = 64'hAAAAAAAAAAAAAAAA;
    stack_7_rl = 64'hAAAAAAAAAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkRas

