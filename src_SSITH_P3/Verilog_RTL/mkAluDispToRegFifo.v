//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
// On Thu Jul 16 18:37:41 BST 2020
//
//
// Ports:
// Name                         I/O  size props
// RDY_enq                        O     1
// RDY_deq                        O     1 reg
// first                          O   231
// RDY_first                      O     1 reg
// RDY_specUpdate_incorrectSpeculation  O     1 const
// RDY_specUpdate_correctSpeculation  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// enq_x                          I   231
// specUpdate_incorrectSpeculation_kill_all  I     1
// specUpdate_incorrectSpeculation_kill_tag  I     4
// specUpdate_correctSpeculation_mask  I    12
// EN_enq                         I     1
// EN_deq                         I     1
// EN_specUpdate_incorrectSpeculation  I     1
// EN_specUpdate_correctSpeculation  I     1
//
// Combinational paths from inputs to outputs:
//   (specUpdate_incorrectSpeculation_kill_all,
//    specUpdate_incorrectSpeculation_kill_tag,
//    EN_deq,
//    EN_specUpdate_incorrectSpeculation) -> RDY_enq
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

module mkAluDispToRegFifo(CLK,
			  RST_N,

			  enq_x,
			  EN_enq,
			  RDY_enq,

			  EN_deq,
			  RDY_deq,

			  first,
			  RDY_first,

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
  input  [230 : 0] enq_x;
  input  EN_enq;
  output RDY_enq;

  // action method deq
  input  EN_deq;
  output RDY_deq;

  // value method first
  output [230 : 0] first;
  output RDY_first;

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
  wire [230 : 0] first;
  wire RDY_deq,
       RDY_enq,
       RDY_first,
       RDY_specUpdate_correctSpeculation,
       RDY_specUpdate_incorrectSpeculation;

  // inlined wires
  wire [11 : 0] m_m_specBits_0_lat_1$wget;
  wire m_m_valid_0_lat_0$whas;

  // register m_m_row_0
  reg [218 : 0] m_m_row_0;
  wire [218 : 0] m_m_row_0$D_IN;
  wire m_m_row_0$EN;

  // register m_m_specBits_0_rl
  reg [11 : 0] m_m_specBits_0_rl;
  wire [11 : 0] m_m_specBits_0_rl$D_IN;
  wire m_m_specBits_0_rl$EN;

  // register m_m_valid_0_rl
  reg m_m_valid_0_rl;
  wire m_m_valid_0_rl$D_IN, m_m_valid_0_rl$EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_m_m_specBits_0_canon,
       CAN_FIRE_RL_m_m_valid_0_canon,
       CAN_FIRE_deq,
       CAN_FIRE_enq,
       CAN_FIRE_specUpdate_correctSpeculation,
       CAN_FIRE_specUpdate_incorrectSpeculation,
       WILL_FIRE_RL_m_m_specBits_0_canon,
       WILL_FIRE_RL_m_m_valid_0_canon,
       WILL_FIRE_deq,
       WILL_FIRE_enq,
       WILL_FIRE_specUpdate_correctSpeculation,
       WILL_FIRE_specUpdate_incorrectSpeculation;

  // inputs to muxes for submodule ports
  wire MUX_m_m_valid_0_lat_0$wset_1__SEL_1;

  // remaining internal signals
  reg [29 : 0] CASE_enq_x_BITS_225_TO_223_0_enq_x_BITS_225_TO_ETC__q3,
	       CASE_m_m_row_0_BITS_213_TO_211_0_m_m_row_0_BIT_ETC__q7;
  reg [10 : 0] CASE_enq_x_BITS_195_TO_194_0_enq_x_BITS_195_TO_ETC__q4,
	       CASE_m_m_row_0_BITS_183_TO_182_0_m_m_row_0_BIT_ETC__q8;
  reg [3 : 0] CASE_IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq__ETC__q2,
	      CASE_IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_1_ETC__q6,
	      IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56,
	      IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224;
  reg [2 : 0] CASE_IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq__ETC__q1,
	      CASE_IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_5_ETC__q5,
	      IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq_x_BIT_ETC___d88,
	      IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_53_OR__ETC___d256;
  wire [11 : 0] sb__h10798, upd__h1154;
  wire [8 : 0] IF_enq_x_BITS_193_TO_190_3_EQ_0_4_OR_NOT_enq_x_ETC___d140,
	       IF_enq_x_BITS_193_TO_190_3_EQ_1_5_OR_NOT_enq_x_ETC___d139,
	       IF_enq_x_BITS_193_TO_190_3_EQ_2_7_OR_NOT_enq_x_ETC___d138,
	       IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_0_02_OR__ETC___d306,
	       IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_1_03_OR__ETC___d305,
	       IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_2_05_OR__ETC___d304;

  // action method enq
  assign RDY_enq = m_m_valid_0_lat_0$whas ? !1'd0 : !m_m_valid_0_rl ;
  assign CAN_FIRE_enq = m_m_valid_0_lat_0$whas ? !1'd0 : !m_m_valid_0_rl ;
  assign WILL_FIRE_enq = EN_enq ;

  // action method deq
  assign RDY_deq = m_m_valid_0_rl ;
  assign CAN_FIRE_deq = m_m_valid_0_rl ;
  assign WILL_FIRE_deq = EN_deq ;

  // value method first
  assign first =
	     { m_m_row_0[218:214],
	       CASE_m_m_row_0_BITS_213_TO_211_0_m_m_row_0_BIT_ETC__q7,
	       CASE_m_m_row_0_BITS_183_TO_182_0_m_m_row_0_BIT_ETC__q8,
	       m_m_row_0[172:0],
	       m_m_specBits_0_rl } ;
  assign RDY_first = m_m_valid_0_rl ;

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

  // rule RL_m_m_valid_0_canon
  assign CAN_FIRE_RL_m_m_valid_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_m_valid_0_canon = 1'd1 ;

  // rule RL_m_m_specBits_0_canon
  assign CAN_FIRE_RL_m_m_specBits_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_m_specBits_0_canon = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_m_m_valid_0_lat_0$wset_1__SEL_1 =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      m_m_specBits_0_rl[specUpdate_incorrectSpeculation_kill_tag]) ;

  // inlined wires
  assign m_m_valid_0_lat_0$whas =
	     MUX_m_m_valid_0_lat_0$wset_1__SEL_1 || EN_deq ;
  assign m_m_specBits_0_lat_1$wget =
	     sb__h10798 & specUpdate_correctSpeculation_mask ;

  // register m_m_row_0
  assign m_m_row_0$D_IN =
	     { enq_x[230:226],
	       CASE_enq_x_BITS_225_TO_223_0_enq_x_BITS_225_TO_ETC__q3,
	       CASE_enq_x_BITS_195_TO_194_0_enq_x_BITS_195_TO_ETC__q4,
	       enq_x[184:12] } ;
  assign m_m_row_0$EN = EN_enq ;

  // register m_m_specBits_0_rl
  assign m_m_specBits_0_rl$D_IN =
	     EN_specUpdate_correctSpeculation ? upd__h1154 : sb__h10798 ;
  assign m_m_specBits_0_rl$EN = 1'd1 ;

  // register m_m_valid_0_rl
  assign m_m_valid_0_rl$D_IN =
	     EN_enq || (m_m_valid_0_lat_0$whas ? 1'd0 : m_m_valid_0_rl) ;
  assign m_m_valid_0_rl$EN = 1'd1 ;

  // remaining internal signals
  assign IF_enq_x_BITS_193_TO_190_3_EQ_0_4_OR_NOT_enq_x_ETC___d140 =
	     (enq_x[193:190] == 4'd0 ||
	      enq_x[193:190] != 4'd1 && enq_x[193:190] != 4'd2 &&
	      enq_x[193:190] != 4'd3 &&
	      enq_x[193:190] != 4'd4 &&
	      enq_x[193:190] != 4'd5 &&
	      enq_x[193:190] != 4'd6 &&
	      IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 ==
	      4'd0) ?
	       { 4'd0, enq_x[189:185] } :
	       IF_enq_x_BITS_193_TO_190_3_EQ_1_5_OR_NOT_enq_x_ETC___d139 ;
  assign IF_enq_x_BITS_193_TO_190_3_EQ_1_5_OR_NOT_enq_x_ETC___d139 =
	     (enq_x[193:190] == 4'd1 ||
	      enq_x[193:190] != 4'd2 && enq_x[193:190] != 4'd3 &&
	      enq_x[193:190] != 4'd4 &&
	      enq_x[193:190] != 4'd5 &&
	      enq_x[193:190] != 4'd6 &&
	      IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 ==
	      4'd1) ?
	       { 4'd1, enq_x[189:185] } :
	       IF_enq_x_BITS_193_TO_190_3_EQ_2_7_OR_NOT_enq_x_ETC___d138 ;
  assign IF_enq_x_BITS_193_TO_190_3_EQ_2_7_OR_NOT_enq_x_ETC___d138 =
	     (enq_x[193:190] == 4'd2 ||
	      enq_x[193:190] != 4'd3 && enq_x[193:190] != 4'd4 &&
	      enq_x[193:190] != 4'd5 &&
	      enq_x[193:190] != 4'd6 &&
	      IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 ==
	      4'd2) ?
	       { 4'd2,
		 (enq_x[189:187] == 3'd0 ||
		  enq_x[189:187] != 3'd1 &&
		  IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq_x_BIT_ETC___d88 ==
		  3'd0) ?
		   { 3'd0, enq_x[186:185] } :
		   ((enq_x[189:187] == 3'd1 ||
		     IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq_x_BIT_ETC___d88 ==
		     3'd1) ?
		      { 3'd1, enq_x[186:185] } :
		      { CASE_IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq__ETC__q1,
			2'bxx /* unspecified value */  }) } :
	       ((enq_x[193:190] == 4'd3 ||
		 enq_x[193:190] != 4'd4 && enq_x[193:190] != 4'd5 &&
		 enq_x[193:190] != 4'd6 &&
		 IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 ==
		 4'd3) ?
		  { 4'd3, enq_x[189:185] } :
		  ((enq_x[193:190] == 4'd4 ||
		    enq_x[193:190] != 4'd5 && enq_x[193:190] != 4'd6 &&
		    IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 ==
		    4'd4) ?
		     { 4'd4, 5'bxxxxx /* unspecified value */  } :
		     ((enq_x[193:190] == 4'd5 ||
		       enq_x[193:190] != 4'd6 &&
		       IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 ==
		       4'd5) ?
			{ 4'd5, 5'bxxxxx /* unspecified value */  } :
			((enq_x[193:190] == 4'd6 ||
			  IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 ==
			  4'd6) ?
			   { 4'd6, enq_x[189:185] } :
			   { CASE_IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq__ETC__q2,
			     5'bxxxxx /* unspecified value */  })))) ;
  assign IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_0_02_OR__ETC___d306 =
	     (m_m_row_0[181:178] == 4'd0 ||
	      m_m_row_0[181:178] != 4'd1 && m_m_row_0[181:178] != 4'd2 &&
	      m_m_row_0[181:178] != 4'd3 &&
	      m_m_row_0[181:178] != 4'd4 &&
	      m_m_row_0[181:178] != 4'd5 &&
	      m_m_row_0[181:178] != 4'd6 &&
	      IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 ==
	      4'd0) ?
	       { 4'd0, m_m_row_0[177:173] } :
	       IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_1_03_OR__ETC___d305 ;
  assign IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_1_03_OR__ETC___d305 =
	     (m_m_row_0[181:178] == 4'd1 ||
	      m_m_row_0[181:178] != 4'd2 && m_m_row_0[181:178] != 4'd3 &&
	      m_m_row_0[181:178] != 4'd4 &&
	      m_m_row_0[181:178] != 4'd5 &&
	      m_m_row_0[181:178] != 4'd6 &&
	      IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 ==
	      4'd1) ?
	       { 4'd1, m_m_row_0[177:173] } :
	       IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_2_05_OR__ETC___d304 ;
  assign IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_2_05_OR__ETC___d304 =
	     (m_m_row_0[181:178] == 4'd2 ||
	      m_m_row_0[181:178] != 4'd3 && m_m_row_0[181:178] != 4'd4 &&
	      m_m_row_0[181:178] != 4'd5 &&
	      m_m_row_0[181:178] != 4'd6 &&
	      IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 ==
	      4'd2) ?
	       { 4'd2,
		 (m_m_row_0[177:175] == 3'd0 ||
		  m_m_row_0[177:175] != 3'd1 &&
		  IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_53_OR__ETC___d256 ==
		  3'd0) ?
		   { 3'd0, m_m_row_0[174:173] } :
		   ((m_m_row_0[177:175] == 3'd1 ||
		     IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_53_OR__ETC___d256 ==
		     3'd1) ?
		      { 3'd1, m_m_row_0[174:173] } :
		      { CASE_IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_5_ETC__q5,
			2'bxx /* unspecified value */  }) } :
	       ((m_m_row_0[181:178] == 4'd3 ||
		 m_m_row_0[181:178] != 4'd4 && m_m_row_0[181:178] != 4'd5 &&
		 m_m_row_0[181:178] != 4'd6 &&
		 IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 ==
		 4'd3) ?
		  { 4'd3, m_m_row_0[177:173] } :
		  ((m_m_row_0[181:178] == 4'd4 ||
		    m_m_row_0[181:178] != 4'd5 &&
		    m_m_row_0[181:178] != 4'd6 &&
		    IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 ==
		    4'd4) ?
		     { 4'd4, 5'bxxxxx /* unspecified value */  } :
		     ((m_m_row_0[181:178] == 4'd5 ||
		       m_m_row_0[181:178] != 4'd6 &&
		       IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 ==
		       4'd5) ?
			{ 4'd5, 5'bxxxxx /* unspecified value */  } :
			((m_m_row_0[181:178] == 4'd6 ||
			  IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 ==
			  4'd6) ?
			   { 4'd6, m_m_row_0[177:173] } :
			   { CASE_IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_1_ETC__q6,
			     5'bxxxxx /* unspecified value */  })))) ;
  assign sb__h10798 = EN_enq ? enq_x[11:0] : m_m_specBits_0_rl ;
  assign upd__h1154 = m_m_specBits_0_lat_1$wget ;
  always@(enq_x)
  begin
    case (enq_x[193:190])
      4'd7, 4'd8, 4'd9, 4'd10, 4'd11:
	  IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 =
	      enq_x[193:190];
      default: IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56 =
		   4'd12;
    endcase
  end
  always@(enq_x)
  begin
    case (enq_x[189:187])
      3'd2, 3'd3:
	  IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq_x_BIT_ETC___d88 =
	      enq_x[189:187];
      default: IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq_x_BIT_ETC___d88 =
		   3'd4;
    endcase
  end
  always@(m_m_row_0)
  begin
    case (m_m_row_0[181:178])
      4'd7, 4'd8, 4'd9, 4'd10, 4'd11:
	  IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 =
	      m_m_row_0[181:178];
      default: IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224 =
		   4'd12;
    endcase
  end
  always@(m_m_row_0)
  begin
    case (m_m_row_0[177:175])
      3'd2, 3'd3:
	  IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_53_OR__ETC___d256 =
	      m_m_row_0[177:175];
      default: IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_53_OR__ETC___d256 =
		   3'd4;
    endcase
  end
  always@(IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq_x_BIT_ETC___d88)
  begin
    case (IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq_x_BIT_ETC___d88)
      3'd2, 3'd3:
	  CASE_IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq__ETC__q1 =
	      IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq_x_BIT_ETC___d88;
      default: CASE_IF_enq_x_BITS_189_TO_187_1_EQ_2_5_OR_enq__ETC__q1 = 3'd4;
    endcase
  end
  always@(IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56)
  begin
    case (IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56)
      4'd7, 4'd8, 4'd9, 4'd10, 4'd11:
	  CASE_IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq__ETC__q2 =
	      IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq_x_BIT_ETC___d56;
      default: CASE_IF_enq_x_BITS_193_TO_190_3_EQ_7_7_OR_enq__ETC__q2 = 4'd12;
    endcase
  end
  always@(enq_x)
  begin
    case (enq_x[225:223])
      3'd0, 3'd1, 3'd2, 3'd3, 3'd4:
	  CASE_enq_x_BITS_225_TO_223_0_enq_x_BITS_225_TO_ETC__q3 =
	      enq_x[225:196];
      default: CASE_enq_x_BITS_225_TO_223_0_enq_x_BITS_225_TO_ETC__q3 =
		   { 3'd5,
		     27'bxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  };
    endcase
  end
  always@(enq_x or IF_enq_x_BITS_193_TO_190_3_EQ_0_4_OR_NOT_enq_x_ETC___d140)
  begin
    case (enq_x[195:194])
      2'd0:
	  CASE_enq_x_BITS_195_TO_194_0_enq_x_BITS_195_TO_ETC__q4 =
	      enq_x[195:185];
      2'd1:
	  CASE_enq_x_BITS_195_TO_194_0_enq_x_BITS_195_TO_ETC__q4 =
	      { enq_x[195:194],
		IF_enq_x_BITS_193_TO_190_3_EQ_0_4_OR_NOT_enq_x_ETC___d140 };
      default: CASE_enq_x_BITS_195_TO_194_0_enq_x_BITS_195_TO_ETC__q4 =
		   { 2'd2, 9'bxxxxxxxxx /* unspecified value */  };
    endcase
  end
  always@(IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_53_OR__ETC___d256)
  begin
    case (IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_53_OR__ETC___d256)
      3'd2, 3'd3:
	  CASE_IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_5_ETC__q5 =
	      IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_53_OR__ETC___d256;
      default: CASE_IF_m_m_row_0_83_BITS_177_TO_175_49_EQ_2_5_ETC__q5 = 3'd4;
    endcase
  end
  always@(IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224)
  begin
    case (IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224)
      4'd7, 4'd8, 4'd9, 4'd10, 4'd11:
	  CASE_IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_1_ETC__q6 =
	      IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_15_OR__ETC___d224;
      default: CASE_IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_7_1_ETC__q6 = 4'd12;
    endcase
  end
  always@(m_m_row_0)
  begin
    case (m_m_row_0[213:211])
      3'd0, 3'd1, 3'd2, 3'd3, 3'd4:
	  CASE_m_m_row_0_BITS_213_TO_211_0_m_m_row_0_BIT_ETC__q7 =
	      m_m_row_0[213:184];
      default: CASE_m_m_row_0_BITS_213_TO_211_0_m_m_row_0_BIT_ETC__q7 =
		   { 3'd5,
		     27'bxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  };
    endcase
  end
  always@(m_m_row_0 or
	  IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_0_02_OR__ETC___d306)
  begin
    case (m_m_row_0[183:182])
      2'd0:
	  CASE_m_m_row_0_BITS_183_TO_182_0_m_m_row_0_BIT_ETC__q8 =
	      m_m_row_0[183:173];
      2'd1:
	  CASE_m_m_row_0_BITS_183_TO_182_0_m_m_row_0_BIT_ETC__q8 =
	      { m_m_row_0[183:182],
		IF_m_m_row_0_83_BITS_181_TO_178_01_EQ_0_02_OR__ETC___d306 };
      default: CASE_m_m_row_0_BITS_183_TO_182_0_m_m_row_0_BIT_ETC__q8 =
		   { 2'd2, 9'bxxxxxxxxx /* unspecified value */  };
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        m_m_specBits_0_rl <= `BSV_ASSIGNMENT_DELAY
	    12'bxxxxxxxxxxxx /* unspecified value */ ;
	m_m_valid_0_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (m_m_specBits_0_rl$EN)
	  m_m_specBits_0_rl <= `BSV_ASSIGNMENT_DELAY m_m_specBits_0_rl$D_IN;
	if (m_m_valid_0_rl$EN)
	  m_m_valid_0_rl <= `BSV_ASSIGNMENT_DELAY m_m_valid_0_rl$D_IN;
      end
    if (m_m_row_0$EN) m_m_row_0 <= `BSV_ASSIGNMENT_DELAY m_m_row_0$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    m_m_row_0 = 219'h2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
    m_m_specBits_0_rl = 12'hAAA;
    m_m_valid_0_rl = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkAluDispToRegFifo

