//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
// On Wed Jul 15 02:53:50 BST 2020
//
//
// Ports:
// Name                         I/O  size props
// RDY_enq                        O     1
// RDY_deq                        O     1
// first_data                     O    36
// RDY_first_data                 O     1
// first_poisoned                 O     1
// RDY_first_poisoned             O     1
// RDY_specUpdate_incorrectSpeculation  O     1 const
// RDY_specUpdate_correctSpeculation  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// enq_x                          I    36
// specUpdate_incorrectSpeculation_kill_all  I     1
// specUpdate_incorrectSpeculation_kill_tag  I     4
// specUpdate_correctSpeculation_mask  I    12
// EN_enq                         I     1
// EN_deq                         I     1
// EN_specUpdate_incorrectSpeculation  I     1
// EN_specUpdate_correctSpeculation  I     1
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

module mkMulExecQ(CLK,
		  RST_N,

		  enq_x,
		  EN_enq,
		  RDY_enq,

		  EN_deq,
		  RDY_deq,

		  first_data,
		  RDY_first_data,

		  first_poisoned,
		  RDY_first_poisoned,

		  specUpdate_incorrectSpeculation_kill_all,
		  specUpdate_incorrectSpeculation_kill_tag,
		  EN_specUpdate_incorrectSpeculation,
		  RDY_specUpdate_incorrectSpeculation,

		  specUpdate_correctSpeculation_mask,
		  EN_specUpdate_correctSpeculation,
		  RDY_specUpdate_correctSpeculation);
  input  CLK;
  input  RST_N;

  // action method enq
  input  [35 : 0] enq_x;
  input  EN_enq;
  output RDY_enq;

  // action method deq
  input  EN_deq;
  output RDY_deq;

  // value method first_data
  output [35 : 0] first_data;
  output RDY_first_data;

  // value method first_poisoned
  output first_poisoned;
  output RDY_first_poisoned;

  // action method specUpdate_incorrectSpeculation
  input  specUpdate_incorrectSpeculation_kill_all;
  input  [3 : 0] specUpdate_incorrectSpeculation_kill_tag;
  input  EN_specUpdate_incorrectSpeculation;
  output RDY_specUpdate_incorrectSpeculation;

  // action method specUpdate_correctSpeculation
  input  [11 : 0] specUpdate_correctSpeculation_mask;
  input  EN_specUpdate_correctSpeculation;
  output RDY_specUpdate_correctSpeculation;

  // signals for module outputs
  reg RDY_deq, first_poisoned;
  wire [35 : 0] first_data;
  wire RDY_enq,
       RDY_first_data,
       RDY_first_poisoned,
       RDY_specUpdate_correctSpeculation,
       RDY_specUpdate_incorrectSpeculation;

  // inlined wires
  reg m_valid_for_enq_wire$wget;
  wire m_poisoned_0_lat_0$whas,
       m_poisoned_1_lat_0$whas,
       m_poisoned_2_lat_0$whas,
       m_poisoned_3_lat_0$whas,
       m_valid_0_lat_0$whas,
       m_valid_0_lat_1$whas,
       m_valid_1_lat_0$whas,
       m_valid_1_lat_1$whas,
       m_valid_2_lat_0$whas,
       m_valid_2_lat_1$whas,
       m_valid_3_lat_0$whas,
       m_valid_3_lat_1$whas;

  // register m_deqP
  reg [1 : 0] m_deqP;
  wire [1 : 0] m_deqP$D_IN;
  wire m_deqP$EN;

  // register m_enqP
  reg [1 : 0] m_enqP;
  wire [1 : 0] m_enqP$D_IN;
  wire m_enqP$EN;

  // register m_poisoned_0_rl
  reg m_poisoned_0_rl;
  wire m_poisoned_0_rl$D_IN, m_poisoned_0_rl$EN;

  // register m_poisoned_1_rl
  reg m_poisoned_1_rl;
  wire m_poisoned_1_rl$D_IN, m_poisoned_1_rl$EN;

  // register m_poisoned_2_rl
  reg m_poisoned_2_rl;
  wire m_poisoned_2_rl$D_IN, m_poisoned_2_rl$EN;

  // register m_poisoned_3_rl
  reg m_poisoned_3_rl;
  wire m_poisoned_3_rl$D_IN, m_poisoned_3_rl$EN;

  // register m_row_0
  reg [23 : 0] m_row_0;
  wire [23 : 0] m_row_0$D_IN;
  wire m_row_0$EN;

  // register m_row_1
  reg [23 : 0] m_row_1;
  wire [23 : 0] m_row_1$D_IN;
  wire m_row_1$EN;

  // register m_row_2
  reg [23 : 0] m_row_2;
  wire [23 : 0] m_row_2$D_IN;
  wire m_row_2$EN;

  // register m_row_3
  reg [23 : 0] m_row_3;
  wire [23 : 0] m_row_3$D_IN;
  wire m_row_3$EN;

  // register m_specBits_0_rl
  reg [11 : 0] m_specBits_0_rl;
  wire [11 : 0] m_specBits_0_rl$D_IN;
  wire m_specBits_0_rl$EN;

  // register m_specBits_1_rl
  reg [11 : 0] m_specBits_1_rl;
  wire [11 : 0] m_specBits_1_rl$D_IN;
  wire m_specBits_1_rl$EN;

  // register m_specBits_2_rl
  reg [11 : 0] m_specBits_2_rl;
  wire [11 : 0] m_specBits_2_rl$D_IN;
  wire m_specBits_2_rl$EN;

  // register m_specBits_3_rl
  reg [11 : 0] m_specBits_3_rl;
  wire [11 : 0] m_specBits_3_rl$D_IN;
  wire m_specBits_3_rl$EN;

  // register m_valid_0_rl
  reg m_valid_0_rl;
  wire m_valid_0_rl$D_IN, m_valid_0_rl$EN;

  // register m_valid_1_rl
  reg m_valid_1_rl;
  wire m_valid_1_rl$D_IN, m_valid_1_rl$EN;

  // register m_valid_2_rl
  reg m_valid_2_rl;
  wire m_valid_2_rl$D_IN, m_valid_2_rl$EN;

  // register m_valid_3_rl
  reg m_valid_3_rl;
  wire m_valid_3_rl$D_IN, m_valid_3_rl$EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_m_poisoned_0_canon,
       CAN_FIRE_RL_m_poisoned_1_canon,
       CAN_FIRE_RL_m_poisoned_2_canon,
       CAN_FIRE_RL_m_poisoned_3_canon,
       CAN_FIRE_RL_m_setEnqWire,
       CAN_FIRE_RL_m_specBits_0_canon,
       CAN_FIRE_RL_m_specBits_1_canon,
       CAN_FIRE_RL_m_specBits_2_canon,
       CAN_FIRE_RL_m_specBits_3_canon,
       CAN_FIRE_RL_m_valid_0_canon,
       CAN_FIRE_RL_m_valid_1_canon,
       CAN_FIRE_RL_m_valid_2_canon,
       CAN_FIRE_RL_m_valid_3_canon,
       CAN_FIRE_deq,
       CAN_FIRE_enq,
       CAN_FIRE_specUpdate_correctSpeculation,
       CAN_FIRE_specUpdate_incorrectSpeculation,
       WILL_FIRE_RL_m_poisoned_0_canon,
       WILL_FIRE_RL_m_poisoned_1_canon,
       WILL_FIRE_RL_m_poisoned_2_canon,
       WILL_FIRE_RL_m_poisoned_3_canon,
       WILL_FIRE_RL_m_setEnqWire,
       WILL_FIRE_RL_m_specBits_0_canon,
       WILL_FIRE_RL_m_specBits_1_canon,
       WILL_FIRE_RL_m_specBits_2_canon,
       WILL_FIRE_RL_m_specBits_3_canon,
       WILL_FIRE_RL_m_valid_0_canon,
       WILL_FIRE_RL_m_valid_1_canon,
       WILL_FIRE_RL_m_valid_2_canon,
       WILL_FIRE_RL_m_valid_3_canon,
       WILL_FIRE_deq,
       WILL_FIRE_enq,
       WILL_FIRE_specUpdate_correctSpeculation,
       WILL_FIRE_specUpdate_incorrectSpeculation;

  // remaining internal signals
  reg [11 : 0] SEL_ARR_m_specBits_0_rl_1_m_specBits_1_rl_8_m__ETC___d174;
  reg [6 : 0] SEL_ARR_m_row_0_11_BITS_19_TO_13_38_m_row_1_13_ETC___d143;
  reg [5 : 0] SEL_ARR_m_row_0_11_BITS_5_TO_0_65_m_row_1_13_B_ETC___d170;
  reg [4 : 0] SEL_ARR_m_row_0_11_BITS_10_TO_6_59_m_row_1_13__ETC___d164;
  reg [1 : 0] SEL_ARR_m_row_0_11_BITS_23_TO_22_12_m_row_1_13_ETC___d120;
  reg SEL_ARR_NOT_m_row_0_11_BIT_20_27_28_NOT_m_row__ETC___d136,
      SEL_ARR_m_row_0_11_BIT_11_53_m_row_1_13_BIT_11_ETC___d158,
      SEL_ARR_m_row_0_11_BIT_12_44_m_row_1_13_BIT_12_ETC___d149,
      SEL_ARR_m_row_0_11_BIT_21_21_m_row_1_13_BIT_21_ETC___d126;
  wire [11 : 0] n__read__h8750,
		n__read__h8880,
		n__read__h9010,
		n__read__h9140,
		upd__h4225,
		upd__h4570,
		upd__h4915,
		upd__h5260;

  // action method enq
  assign RDY_enq = !m_valid_for_enq_wire$wget ;
  assign CAN_FIRE_enq = !m_valid_for_enq_wire$wget ;
  assign WILL_FIRE_enq = EN_enq ;

  // action method deq
  always@(m_deqP or
	  m_valid_0_rl or m_valid_1_rl or m_valid_2_rl or m_valid_3_rl)
  begin
    case (m_deqP)
      2'd0: RDY_deq = m_valid_0_rl;
      2'd1: RDY_deq = m_valid_1_rl;
      2'd2: RDY_deq = m_valid_2_rl;
      2'd3: RDY_deq = m_valid_3_rl;
    endcase
  end
  assign CAN_FIRE_deq = RDY_deq ;
  assign WILL_FIRE_deq = EN_deq ;

  // value method first_data
  assign first_data =
	     { SEL_ARR_m_row_0_11_BITS_23_TO_22_12_m_row_1_13_ETC___d120,
	       SEL_ARR_m_row_0_11_BIT_21_21_m_row_1_13_BIT_21_ETC___d126,
	       !SEL_ARR_NOT_m_row_0_11_BIT_20_27_28_NOT_m_row__ETC___d136,
	       SEL_ARR_m_row_0_11_BITS_19_TO_13_38_m_row_1_13_ETC___d143,
	       SEL_ARR_m_row_0_11_BIT_12_44_m_row_1_13_BIT_12_ETC___d149,
	       SEL_ARR_m_row_0_11_BIT_11_53_m_row_1_13_BIT_11_ETC___d158,
	       SEL_ARR_m_row_0_11_BITS_10_TO_6_59_m_row_1_13__ETC___d164,
	       SEL_ARR_m_row_0_11_BITS_5_TO_0_65_m_row_1_13_B_ETC___d170,
	       SEL_ARR_m_specBits_0_rl_1_m_specBits_1_rl_8_m__ETC___d174 } ;
  assign RDY_first_data = RDY_deq ;

  // value method first_poisoned
  always@(m_deqP or
	  m_poisoned_0_rl or
	  m_poisoned_1_rl or m_poisoned_2_rl or m_poisoned_3_rl)
  begin
    case (m_deqP)
      2'd0: first_poisoned = m_poisoned_0_rl;
      2'd1: first_poisoned = m_poisoned_1_rl;
      2'd2: first_poisoned = m_poisoned_2_rl;
      2'd3: first_poisoned = m_poisoned_3_rl;
    endcase
  end
  assign RDY_first_poisoned = RDY_deq ;

  // action method specUpdate_incorrectSpeculation
  assign RDY_specUpdate_incorrectSpeculation = 1'd1 ;
  assign CAN_FIRE_specUpdate_incorrectSpeculation = 1'd1 ;
  assign WILL_FIRE_specUpdate_incorrectSpeculation =
	     EN_specUpdate_incorrectSpeculation ;

  // action method specUpdate_correctSpeculation
  assign RDY_specUpdate_correctSpeculation = 1'd1 ;
  assign CAN_FIRE_specUpdate_correctSpeculation = 1'd1 ;
  assign WILL_FIRE_specUpdate_correctSpeculation =
	     EN_specUpdate_correctSpeculation ;

  // rule RL_m_setEnqWire
  assign CAN_FIRE_RL_m_setEnqWire = 1'd1 ;
  assign WILL_FIRE_RL_m_setEnqWire = 1'd1 ;

  // rule RL_m_valid_0_canon
  assign CAN_FIRE_RL_m_valid_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_valid_0_canon = 1'd1 ;

  // rule RL_m_valid_1_canon
  assign CAN_FIRE_RL_m_valid_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_valid_1_canon = 1'd1 ;

  // rule RL_m_valid_2_canon
  assign CAN_FIRE_RL_m_valid_2_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_valid_2_canon = 1'd1 ;

  // rule RL_m_valid_3_canon
  assign CAN_FIRE_RL_m_valid_3_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_valid_3_canon = 1'd1 ;

  // rule RL_m_poisoned_0_canon
  assign CAN_FIRE_RL_m_poisoned_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_poisoned_0_canon = 1'd1 ;

  // rule RL_m_poisoned_1_canon
  assign CAN_FIRE_RL_m_poisoned_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_poisoned_1_canon = 1'd1 ;

  // rule RL_m_poisoned_2_canon
  assign CAN_FIRE_RL_m_poisoned_2_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_poisoned_2_canon = 1'd1 ;

  // rule RL_m_poisoned_3_canon
  assign CAN_FIRE_RL_m_poisoned_3_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_poisoned_3_canon = 1'd1 ;

  // rule RL_m_specBits_0_canon
  assign CAN_FIRE_RL_m_specBits_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_specBits_0_canon = 1'd1 ;

  // rule RL_m_specBits_1_canon
  assign CAN_FIRE_RL_m_specBits_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_specBits_1_canon = 1'd1 ;

  // rule RL_m_specBits_2_canon
  assign CAN_FIRE_RL_m_specBits_2_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_specBits_2_canon = 1'd1 ;

  // rule RL_m_specBits_3_canon
  assign CAN_FIRE_RL_m_specBits_3_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_specBits_3_canon = 1'd1 ;

  // inlined wires
  assign m_valid_0_lat_0$whas = EN_deq && m_deqP == 2'd0 ;
  assign m_valid_0_lat_1$whas = EN_enq && m_enqP == 2'd0 ;
  assign m_valid_1_lat_0$whas = EN_deq && m_deqP == 2'd1 ;
  assign m_valid_1_lat_1$whas = EN_enq && m_enqP == 2'd1 ;
  assign m_valid_2_lat_0$whas = EN_deq && m_deqP == 2'd2 ;
  assign m_valid_2_lat_1$whas = EN_enq && m_enqP == 2'd2 ;
  assign m_valid_3_lat_0$whas = EN_deq && m_deqP == 2'd3 ;
  assign m_valid_3_lat_1$whas = EN_enq && m_enqP == 2'd3 ;
  assign m_poisoned_0_lat_0$whas =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      m_specBits_0_rl[specUpdate_incorrectSpeculation_kill_tag]) ;
  assign m_poisoned_1_lat_0$whas =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      m_specBits_1_rl[specUpdate_incorrectSpeculation_kill_tag]) ;
  assign m_poisoned_2_lat_0$whas =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      m_specBits_2_rl[specUpdate_incorrectSpeculation_kill_tag]) ;
  assign m_poisoned_3_lat_0$whas =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      m_specBits_3_rl[specUpdate_incorrectSpeculation_kill_tag]) ;
  always@(m_enqP or
	  m_valid_0_rl or m_valid_1_rl or m_valid_2_rl or m_valid_3_rl)
  begin
    case (m_enqP)
      2'd0: m_valid_for_enq_wire$wget = m_valid_0_rl;
      2'd1: m_valid_for_enq_wire$wget = m_valid_1_rl;
      2'd2: m_valid_for_enq_wire$wget = m_valid_2_rl;
      2'd3: m_valid_for_enq_wire$wget = m_valid_3_rl;
    endcase
  end

  // register m_deqP
  assign m_deqP$D_IN = (m_deqP == 2'd3) ? 2'd0 : m_deqP + 2'd1 ;
  assign m_deqP$EN = EN_deq ;

  // register m_enqP
  assign m_enqP$D_IN = (m_enqP == 2'd3) ? 2'd0 : m_enqP + 2'd1 ;
  assign m_enqP$EN = EN_enq ;

  // register m_poisoned_0_rl
  assign m_poisoned_0_rl$D_IN =
	     !m_valid_0_lat_1$whas &&
	     (m_poisoned_0_lat_0$whas || m_poisoned_0_rl) ;
  assign m_poisoned_0_rl$EN = 1'd1 ;

  // register m_poisoned_1_rl
  assign m_poisoned_1_rl$D_IN =
	     !m_valid_1_lat_1$whas &&
	     (m_poisoned_1_lat_0$whas || m_poisoned_1_rl) ;
  assign m_poisoned_1_rl$EN = 1'd1 ;

  // register m_poisoned_2_rl
  assign m_poisoned_2_rl$D_IN =
	     !m_valid_2_lat_1$whas &&
	     (m_poisoned_2_lat_0$whas || m_poisoned_2_rl) ;
  assign m_poisoned_2_rl$EN = 1'd1 ;

  // register m_poisoned_3_rl
  assign m_poisoned_3_rl$D_IN =
	     !m_valid_3_lat_1$whas &&
	     (m_poisoned_3_lat_0$whas || m_poisoned_3_rl) ;
  assign m_poisoned_3_rl$EN = 1'd1 ;

  // register m_row_0
  assign m_row_0$D_IN = enq_x[35:12] ;
  assign m_row_0$EN = m_valid_0_lat_1$whas ;

  // register m_row_1
  assign m_row_1$D_IN = enq_x[35:12] ;
  assign m_row_1$EN = m_valid_1_lat_1$whas ;

  // register m_row_2
  assign m_row_2$D_IN = enq_x[35:12] ;
  assign m_row_2$EN = m_valid_2_lat_1$whas ;

  // register m_row_3
  assign m_row_3$D_IN = enq_x[35:12] ;
  assign m_row_3$EN = m_valid_3_lat_1$whas ;

  // register m_specBits_0_rl
  assign m_specBits_0_rl$D_IN =
	     EN_specUpdate_correctSpeculation ? upd__h4225 : n__read__h8750 ;
  assign m_specBits_0_rl$EN = 1'd1 ;

  // register m_specBits_1_rl
  assign m_specBits_1_rl$D_IN =
	     EN_specUpdate_correctSpeculation ? upd__h4570 : n__read__h8880 ;
  assign m_specBits_1_rl$EN = 1'd1 ;

  // register m_specBits_2_rl
  assign m_specBits_2_rl$D_IN =
	     EN_specUpdate_correctSpeculation ? upd__h4915 : n__read__h9010 ;
  assign m_specBits_2_rl$EN = 1'd1 ;

  // register m_specBits_3_rl
  assign m_specBits_3_rl$D_IN =
	     EN_specUpdate_correctSpeculation ? upd__h5260 : n__read__h9140 ;
  assign m_specBits_3_rl$EN = 1'd1 ;

  // register m_valid_0_rl
  assign m_valid_0_rl$D_IN =
	     m_valid_0_lat_1$whas || !m_valid_0_lat_0$whas && m_valid_0_rl ;
  assign m_valid_0_rl$EN = 1'd1 ;

  // register m_valid_1_rl
  assign m_valid_1_rl$D_IN =
	     m_valid_1_lat_1$whas || !m_valid_1_lat_0$whas && m_valid_1_rl ;
  assign m_valid_1_rl$EN = 1'd1 ;

  // register m_valid_2_rl
  assign m_valid_2_rl$D_IN =
	     m_valid_2_lat_1$whas || !m_valid_2_lat_0$whas && m_valid_2_rl ;
  assign m_valid_2_rl$EN = 1'd1 ;

  // register m_valid_3_rl
  assign m_valid_3_rl$D_IN =
	     m_valid_3_lat_1$whas || !m_valid_3_lat_0$whas && m_valid_3_rl ;
  assign m_valid_3_rl$EN = 1'd1 ;

  // remaining internal signals
  assign n__read__h8750 =
	     m_valid_0_lat_1$whas ? enq_x[11:0] : m_specBits_0_rl ;
  assign n__read__h8880 =
	     m_valid_1_lat_1$whas ? enq_x[11:0] : m_specBits_1_rl ;
  assign n__read__h9010 =
	     m_valid_2_lat_1$whas ? enq_x[11:0] : m_specBits_2_rl ;
  assign n__read__h9140 =
	     m_valid_3_lat_1$whas ? enq_x[11:0] : m_specBits_3_rl ;
  assign upd__h4225 = n__read__h8750 & specUpdate_correctSpeculation_mask ;
  assign upd__h4570 = n__read__h8880 & specUpdate_correctSpeculation_mask ;
  assign upd__h4915 = n__read__h9010 & specUpdate_correctSpeculation_mask ;
  assign upd__h5260 = n__read__h9140 & specUpdate_correctSpeculation_mask ;
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_NOT_m_row_0_11_BIT_20_27_28_NOT_m_row__ETC___d136 =
	      !m_row_0[20];
      2'd1:
	  SEL_ARR_NOT_m_row_0_11_BIT_20_27_28_NOT_m_row__ETC___d136 =
	      !m_row_1[20];
      2'd2:
	  SEL_ARR_NOT_m_row_0_11_BIT_20_27_28_NOT_m_row__ETC___d136 =
	      !m_row_2[20];
      2'd3:
	  SEL_ARR_NOT_m_row_0_11_BIT_20_27_28_NOT_m_row__ETC___d136 =
	      !m_row_3[20];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_11_BITS_19_TO_13_38_m_row_1_13_ETC___d143 =
	      m_row_0[19:13];
      2'd1:
	  SEL_ARR_m_row_0_11_BITS_19_TO_13_38_m_row_1_13_ETC___d143 =
	      m_row_1[19:13];
      2'd2:
	  SEL_ARR_m_row_0_11_BITS_19_TO_13_38_m_row_1_13_ETC___d143 =
	      m_row_2[19:13];
      2'd3:
	  SEL_ARR_m_row_0_11_BITS_19_TO_13_38_m_row_1_13_ETC___d143 =
	      m_row_3[19:13];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_11_BIT_12_44_m_row_1_13_BIT_12_ETC___d149 =
	      m_row_0[12];
      2'd1:
	  SEL_ARR_m_row_0_11_BIT_12_44_m_row_1_13_BIT_12_ETC___d149 =
	      m_row_1[12];
      2'd2:
	  SEL_ARR_m_row_0_11_BIT_12_44_m_row_1_13_BIT_12_ETC___d149 =
	      m_row_2[12];
      2'd3:
	  SEL_ARR_m_row_0_11_BIT_12_44_m_row_1_13_BIT_12_ETC___d149 =
	      m_row_3[12];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_11_BIT_11_53_m_row_1_13_BIT_11_ETC___d158 =
	      m_row_0[11];
      2'd1:
	  SEL_ARR_m_row_0_11_BIT_11_53_m_row_1_13_BIT_11_ETC___d158 =
	      m_row_1[11];
      2'd2:
	  SEL_ARR_m_row_0_11_BIT_11_53_m_row_1_13_BIT_11_ETC___d158 =
	      m_row_2[11];
      2'd3:
	  SEL_ARR_m_row_0_11_BIT_11_53_m_row_1_13_BIT_11_ETC___d158 =
	      m_row_3[11];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_11_BITS_10_TO_6_59_m_row_1_13__ETC___d164 =
	      m_row_0[10:6];
      2'd1:
	  SEL_ARR_m_row_0_11_BITS_10_TO_6_59_m_row_1_13__ETC___d164 =
	      m_row_1[10:6];
      2'd2:
	  SEL_ARR_m_row_0_11_BITS_10_TO_6_59_m_row_1_13__ETC___d164 =
	      m_row_2[10:6];
      2'd3:
	  SEL_ARR_m_row_0_11_BITS_10_TO_6_59_m_row_1_13__ETC___d164 =
	      m_row_3[10:6];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_11_BITS_5_TO_0_65_m_row_1_13_B_ETC___d170 =
	      m_row_0[5:0];
      2'd1:
	  SEL_ARR_m_row_0_11_BITS_5_TO_0_65_m_row_1_13_B_ETC___d170 =
	      m_row_1[5:0];
      2'd2:
	  SEL_ARR_m_row_0_11_BITS_5_TO_0_65_m_row_1_13_B_ETC___d170 =
	      m_row_2[5:0];
      2'd3:
	  SEL_ARR_m_row_0_11_BITS_5_TO_0_65_m_row_1_13_B_ETC___d170 =
	      m_row_3[5:0];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_11_BIT_21_21_m_row_1_13_BIT_21_ETC___d126 =
	      m_row_0[21];
      2'd1:
	  SEL_ARR_m_row_0_11_BIT_21_21_m_row_1_13_BIT_21_ETC___d126 =
	      m_row_1[21];
      2'd2:
	  SEL_ARR_m_row_0_11_BIT_21_21_m_row_1_13_BIT_21_ETC___d126 =
	      m_row_2[21];
      2'd3:
	  SEL_ARR_m_row_0_11_BIT_21_21_m_row_1_13_BIT_21_ETC___d126 =
	      m_row_3[21];
    endcase
  end
  always@(m_deqP or m_row_0 or m_row_1 or m_row_2 or m_row_3)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_row_0_11_BITS_23_TO_22_12_m_row_1_13_ETC___d120 =
	      m_row_0[23:22];
      2'd1:
	  SEL_ARR_m_row_0_11_BITS_23_TO_22_12_m_row_1_13_ETC___d120 =
	      m_row_1[23:22];
      2'd2:
	  SEL_ARR_m_row_0_11_BITS_23_TO_22_12_m_row_1_13_ETC___d120 =
	      m_row_2[23:22];
      2'd3:
	  SEL_ARR_m_row_0_11_BITS_23_TO_22_12_m_row_1_13_ETC___d120 =
	      m_row_3[23:22];
    endcase
  end
  always@(m_deqP or
	  m_specBits_0_rl or
	  m_specBits_1_rl or m_specBits_2_rl or m_specBits_3_rl)
  begin
    case (m_deqP)
      2'd0:
	  SEL_ARR_m_specBits_0_rl_1_m_specBits_1_rl_8_m__ETC___d174 =
	      m_specBits_0_rl;
      2'd1:
	  SEL_ARR_m_specBits_0_rl_1_m_specBits_1_rl_8_m__ETC___d174 =
	      m_specBits_1_rl;
      2'd2:
	  SEL_ARR_m_specBits_0_rl_1_m_specBits_1_rl_8_m__ETC___d174 =
	      m_specBits_2_rl;
      2'd3:
	  SEL_ARR_m_specBits_0_rl_1_m_specBits_1_rl_8_m__ETC___d174 =
	      m_specBits_3_rl;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        m_deqP <= `BSV_ASSIGNMENT_DELAY 2'd0;
	m_enqP <= `BSV_ASSIGNMENT_DELAY 2'd0;
	m_poisoned_0_rl <= `BSV_ASSIGNMENT_DELAY
	    1'bx /* unspecified value */ ;
	m_poisoned_1_rl <= `BSV_ASSIGNMENT_DELAY
	    1'bx /* unspecified value */ ;
	m_poisoned_2_rl <= `BSV_ASSIGNMENT_DELAY
	    1'bx /* unspecified value */ ;
	m_poisoned_3_rl <= `BSV_ASSIGNMENT_DELAY
	    1'bx /* unspecified value */ ;
	m_specBits_0_rl <= `BSV_ASSIGNMENT_DELAY
	    12'bxxxxxxxxxxxx /* unspecified value */ ;
	m_specBits_1_rl <= `BSV_ASSIGNMENT_DELAY
	    12'bxxxxxxxxxxxx /* unspecified value */ ;
	m_specBits_2_rl <= `BSV_ASSIGNMENT_DELAY
	    12'bxxxxxxxxxxxx /* unspecified value */ ;
	m_specBits_3_rl <= `BSV_ASSIGNMENT_DELAY
	    12'bxxxxxxxxxxxx /* unspecified value */ ;
	m_valid_0_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_valid_1_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_valid_2_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_valid_3_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (m_deqP$EN) m_deqP <= `BSV_ASSIGNMENT_DELAY m_deqP$D_IN;
	if (m_enqP$EN) m_enqP <= `BSV_ASSIGNMENT_DELAY m_enqP$D_IN;
	if (m_poisoned_0_rl$EN)
	  m_poisoned_0_rl <= `BSV_ASSIGNMENT_DELAY m_poisoned_0_rl$D_IN;
	if (m_poisoned_1_rl$EN)
	  m_poisoned_1_rl <= `BSV_ASSIGNMENT_DELAY m_poisoned_1_rl$D_IN;
	if (m_poisoned_2_rl$EN)
	  m_poisoned_2_rl <= `BSV_ASSIGNMENT_DELAY m_poisoned_2_rl$D_IN;
	if (m_poisoned_3_rl$EN)
	  m_poisoned_3_rl <= `BSV_ASSIGNMENT_DELAY m_poisoned_3_rl$D_IN;
	if (m_specBits_0_rl$EN)
	  m_specBits_0_rl <= `BSV_ASSIGNMENT_DELAY m_specBits_0_rl$D_IN;
	if (m_specBits_1_rl$EN)
	  m_specBits_1_rl <= `BSV_ASSIGNMENT_DELAY m_specBits_1_rl$D_IN;
	if (m_specBits_2_rl$EN)
	  m_specBits_2_rl <= `BSV_ASSIGNMENT_DELAY m_specBits_2_rl$D_IN;
	if (m_specBits_3_rl$EN)
	  m_specBits_3_rl <= `BSV_ASSIGNMENT_DELAY m_specBits_3_rl$D_IN;
	if (m_valid_0_rl$EN)
	  m_valid_0_rl <= `BSV_ASSIGNMENT_DELAY m_valid_0_rl$D_IN;
	if (m_valid_1_rl$EN)
	  m_valid_1_rl <= `BSV_ASSIGNMENT_DELAY m_valid_1_rl$D_IN;
	if (m_valid_2_rl$EN)
	  m_valid_2_rl <= `BSV_ASSIGNMENT_DELAY m_valid_2_rl$D_IN;
	if (m_valid_3_rl$EN)
	  m_valid_3_rl <= `BSV_ASSIGNMENT_DELAY m_valid_3_rl$D_IN;
      end
    if (m_row_0$EN) m_row_0 <= `BSV_ASSIGNMENT_DELAY m_row_0$D_IN;
    if (m_row_1$EN) m_row_1 <= `BSV_ASSIGNMENT_DELAY m_row_1$D_IN;
    if (m_row_2$EN) m_row_2 <= `BSV_ASSIGNMENT_DELAY m_row_2$D_IN;
    if (m_row_3$EN) m_row_3 <= `BSV_ASSIGNMENT_DELAY m_row_3$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    m_deqP = 2'h2;
    m_enqP = 2'h2;
    m_poisoned_0_rl = 1'h0;
    m_poisoned_1_rl = 1'h0;
    m_poisoned_2_rl = 1'h0;
    m_poisoned_3_rl = 1'h0;
    m_row_0 = 24'hAAAAAA;
    m_row_1 = 24'hAAAAAA;
    m_row_2 = 24'hAAAAAA;
    m_row_3 = 24'hAAAAAA;
    m_specBits_0_rl = 12'hAAA;
    m_specBits_1_rl = 12'hAAA;
    m_specBits_2_rl = 12'hAAA;
    m_specBits_3_rl = 12'hAAA;
    m_valid_0_rl = 1'h0;
    m_valid_1_rl = 1'h0;
    m_valid_2_rl = 1'h0;
    m_valid_3_rl = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkMulExecQ

