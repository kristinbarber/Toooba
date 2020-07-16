//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
// On Thu Jul 16 18:15:03 BST 2020
//
//
// Ports:
// Name                         I/O  size props
// checkForException              O    14
// checkForException_dInst        I   145
// checkForException_regs         I    27
// checkForException_csrState     I    15
// checkForException_pcc          I   129
// checkForException_fourByteInst  I     1
//
// Combinational paths from inputs to outputs:
//   (checkForException_dInst,
//    checkForException_regs,
//    checkForException_csrState,
//    checkForException_pcc,
//    checkForException_fourByteInst) -> checkForException
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

module module_checkForException(checkForException_dInst,
				checkForException_regs,
				checkForException_csrState,
				checkForException_pcc,
				checkForException_fourByteInst,
				checkForException);
  // value method checkForException
  input  [144 : 0] checkForException_dInst;
  input  [26 : 0] checkForException_regs;
  input  [14 : 0] checkForException_csrState;
  input  [128 : 0] checkForException_pcc;
  input  checkForException_fourByteInst;
  output [13 : 0] checkForException;

  // signals for module outputs
  wire [13 : 0] checkForException;

  // remaining internal signals
  reg [4 : 0] CASE_checkForException_dInst_BITS_144_TO_140_2_ETC__q2,
	      code__h2344;
  reg IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d197,
      IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d268;
  wire [63 : 0] memCap_address__h637, x__h443, x__h997;
  wire [31 : 0] imm__h1512;
  wire [18 : 0] INV_checkForException_pcc_BITS_108_TO_90__q1;
  wire [13 : 0] b_base__h929,
		cr_addrBits__h111,
		cr_addrBits__h561,
		x__h960,
		y__h1054;
  wire [12 : 0] IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d284;
  wire [11 : 0] IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d18,
		b_top__h928,
		csr__h1509,
		inc__h652;
  wire [5 : 0] x__h1035;
  wire [4 : 0] IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d275,
	       IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d276,
	       rs1__h1511;
  wire [2 : 0] repBound__h535,
	       rm_mode__h2169,
	       tb__h532,
	       tmp_expBotHalf__h991,
	       tmp_expTopHalf__h989;
  wire [1 : 0] carry_out__h594,
	       impliedTopBits__h596,
	       len_correction__h595,
	       x__h617;
  wire IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d200,
       IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d271,
       IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d45,
       IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d50,
       IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d64,
       IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d68,
       IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d79,
       IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d29,
       IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d39,
       IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d46,
       IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d60,
       IF_checkForException_dInst_BIT_38_60_THEN_chec_ETC___d193,
       NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d148,
       NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d152,
       NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d153,
       NOT_checkForException_dInst_BITS_139_TO_137_02_ETC___d225,
       NOT_checkForException_dInst_BITS_139_TO_137_02_ETC___d263,
       checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d129,
       checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d162,
       checkForException_dInst_BITS_139_TO_137_02_EQ__ETC___d127,
       checkForException_dInst_BITS_139_TO_137_02_EQ__ETC___d159;

  // value method checkForException
  assign checkForException =
	     { IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d200,
	       IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d284 } ;

  // remaining internal signals
  assign IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d275 =
	     (IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d45 ||
	      IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d50 ||
	      IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d64 ||
	      IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d68) ?
	       5'd1 :
	       (checkForException_pcc[113] ?
		  ((INV_checkForException_pcc_BITS_108_TO_90__q1[18:1] ==
		    18'd262143) ?
		     5'd2 :
		     5'd3) :
		  5'd17) ;
  assign IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d276 =
	     (IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d45 ||
	      IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d50 ||
	      IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d79) ?
	       IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d275 :
	       5'd24 ;
  assign IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d284 =
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d271 ?
	       { 8'd32,
		 IF_IF_IF_INV_checkForException_pcc_BITS_108_TO_ETC___d276 } :
	       { 2'd1,
		 6'bxxxxxx /* unspecified value */ ,
		 CASE_checkForException_dInst_BITS_144_TO_140_2_ETC__q2 } ;
  assign IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d200 =
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d45 ||
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d50 ||
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d79 ||
	     checkForException_dInst[144:140] == 5'd22 ||
	     checkForException_dInst[144:140] == 5'd23 ||
	     IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d197 ;
  assign IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d271 =
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d45 ||
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d50 ||
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d79 ||
	     checkForException_dInst[144:140] != 5'd22 &&
	     checkForException_dInst[144:140] != 5'd23 &&
	     IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d268 ;
  assign IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d45 =
	     (IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d29 ==
	      IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d39) ?
	       cr_addrBits__h111 > y__h1054 :
	       !IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d29 ;
  assign IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d50 =
	     (IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d46 ==
	      IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d39) ?
	       cr_addrBits__h111 < x__h960 :
	       !IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d39 ;
  assign IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d64 =
	     (IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d29 ==
	      IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d60) ?
	       cr_addrBits__h561 > y__h1054 :
	       !IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d29 ;
  assign IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d68 =
	     (IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d46 ==
	      IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d60) ?
	       cr_addrBits__h561 < x__h960 :
	       !IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d60 ;
  assign IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d79 =
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d64 ||
	     IF_IF_INV_checkForException_pcc_BITS_108_TO_90_ETC___d68 ||
	     !checkForException_pcc[113] ||
	     INV_checkForException_pcc_BITS_108_TO_90__q1[18:1] !=
	     18'd262143 ||
	     !checkForException_pcc[128] ;
  assign IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d18 =
	     INV_checkForException_pcc_BITS_108_TO_90__q1[0] ?
	       { checkForException_pcc[89:81], 3'd0 } :
	       b_top__h928 ;
  assign IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d29 =
	     tb__h532 < repBound__h535 ;
  assign IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d39 =
	     cr_addrBits__h111[13:11] < repBound__h535 ;
  assign IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d46 =
	     x__h960[13:11] < repBound__h535 ;
  assign IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d60 =
	     cr_addrBits__h561[13:11] < repBound__h535 ;
  assign IF_checkForException_dInst_BIT_38_60_THEN_chec_ETC___d193 =
	     checkForException_dInst[38] ?
	       checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d162 ||
	       checkForException_dInst[37:33] == 5'd10 ||
	       !checkForException_pcc[122] &&
	       checkForException_dInst[37:33] != 5'd1 :
	       checkForException_dInst[144:140] == 5'd16 &&
	       (checkForException_dInst[139:137] != 3'd4 ||
		rm_mode__h2169 != 3'b0 && rm_mode__h2169 != 3'b001 &&
		rm_mode__h2169 != 3'b010 &&
		rm_mode__h2169 != 3'b011 &&
		rm_mode__h2169 != 3'b100) ;
  assign INV_checkForException_pcc_BITS_108_TO_90__q1 =
	     ~checkForException_pcc[108:90] ;
  assign NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d148 =
	     csr__h1509 != 12'hC00 ||
	     (checkForException_dInst[139:137] != 3'd0 ||
	      checkForException_dInst[114:110] != 5'd15) &&
	     rs1__h1511 == 5'd0 &&
	     imm__h1512 == 32'd0 ;
  assign NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d152 =
	     csr__h1509 != 12'hC02 ||
	     (checkForException_dInst[139:137] != 3'd0 ||
	      checkForException_dInst[114:110] != 5'd15) &&
	     rs1__h1511 == 5'd0 &&
	     imm__h1512 == 32'd0 ;
  assign NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d153 =
	     csr__h1509 != 12'h001 && csr__h1509 != 12'h002 &&
	     csr__h1509 != 12'h003 &&
	     NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d148 &&
	     NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d152 ;
  assign NOT_checkForException_dInst_BITS_139_TO_137_02_ETC___d225 =
	     (checkForException_dInst[139:137] != 3'd0 ||
	      checkForException_dInst[114:110] != 5'd15) &&
	     rs1__h1511 == 5'd0 &&
	     imm__h1512 == 32'd0 ||
	     csr__h1509[11:10] != 2'b11 ;
  assign NOT_checkForException_dInst_BITS_139_TO_137_02_ETC___d263 =
	     NOT_checkForException_dInst_BITS_139_TO_137_02_ETC___d225 &&
	     !checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d129 &&
	     csr__h1509 != 12'h8FF &&
	     !checkForException_pcc[122] &&
	     NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d153 ;
  assign b_base__h929 =
	     { checkForException_pcc[77:67],
	       ~checkForException_pcc[66],
	       checkForException_pcc[65:64] } ;
  assign b_top__h928 =
	     { checkForException_pcc[89:81],
	       ~checkForException_pcc[80:79],
	       checkForException_pcc[78] } ;
  assign carry_out__h594 =
	     (IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d18 <
	      x__h960[11:0]) ?
	       2'b01 :
	       2'b0 ;
  assign checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d129 =
	     checkForException_csrState[10:9] < csr__h1509[9:8] ;
  assign checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d162 =
	     checkForException_csrState[10:9] <
	     checkForException_dInst[37:36] ;
  assign checkForException_dInst_BITS_139_TO_137_02_EQ__ETC___d127 =
	     (checkForException_dInst[139:137] == 3'd0 &&
	      checkForException_dInst[114:110] == 5'd15 ||
	      rs1__h1511 != 5'd0 ||
	      imm__h1512 != 32'd0) &&
	     csr__h1509[11:10] == 2'b11 ;
  assign checkForException_dInst_BITS_139_TO_137_02_EQ__ETC___d159 =
	     checkForException_dInst_BITS_139_TO_137_02_EQ__ETC___d127 ||
	     checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d129 ||
	     csr__h1509 == 12'h8FF ||
	     !checkForException_pcc[122] &&
	     NOT_IF_checkForException_dInst_BIT_51_22_THEN__ETC___d153 ||
	     checkForException_csrState[10:9] == 2'd1 &&
	     checkForException_csrState[8] &&
	     checkForException_dInst[50:39] == 12'h180 ;
  assign cr_addrBits__h111 =
	     INV_checkForException_pcc_BITS_108_TO_90__q1[0] ?
	       x__h443[13:0] :
	       checkForException_pcc[13:0] ;
  assign cr_addrBits__h561 =
	     INV_checkForException_pcc_BITS_108_TO_90__q1[0] ?
	       x__h997[13:0] :
	       memCap_address__h637[13:0] ;
  assign csr__h1509 =
	     checkForException_dInst[51] ?
	       checkForException_dInst[50:39] :
	       12'h8FF ;
  assign imm__h1512 =
	     checkForException_dInst[32] ?
	       checkForException_dInst[31:0] :
	       32'd0 ;
  assign impliedTopBits__h596 = x__h617 + len_correction__h595 ;
  assign inc__h652 = checkForException_fourByteInst ? 12'd4 : 12'd2 ;
  assign len_correction__h595 =
	     INV_checkForException_pcc_BITS_108_TO_90__q1[0] ? 2'b01 : 2'b0 ;
  assign memCap_address__h637 =
	     checkForException_pcc[63:0] +
	     { {52{inc__h652[11]}}, inc__h652 } ;
  assign repBound__h535 = x__h960[13:11] - 3'b001 ;
  assign rm_mode__h2169 =
	     (checkForException_dInst[113:111] == 3'b111) ?
	       checkForException_csrState[14:12] :
	       checkForException_dInst[113:111] ;
  assign rs1__h1511 =
	     (checkForException_regs[19] && !checkForException_regs[18]) ?
	       checkForException_regs[17:13] :
	       5'd0 ;
  assign tb__h532 =
	     { impliedTopBits__h596,
	       IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d18[11] } ;
  assign tmp_expBotHalf__h991 =
	     { ~checkForException_pcc[66], checkForException_pcc[65:64] } ;
  assign tmp_expTopHalf__h989 =
	     { ~checkForException_pcc[80:79], checkForException_pcc[78] } ;
  assign x__h1035 = { tmp_expTopHalf__h989, tmp_expBotHalf__h991 } ;
  assign x__h443 = checkForException_pcc[63:0] >> x__h1035 ;
  assign x__h617 = x__h960[13:12] + carry_out__h594 ;
  assign x__h960 =
	     INV_checkForException_pcc_BITS_108_TO_90__q1[0] ?
	       { checkForException_pcc[77:67], 3'd0 } :
	       b_base__h929 ;
  assign x__h997 = memCap_address__h637 >> x__h1035 ;
  assign y__h1054 =
	     { impliedTopBits__h596,
	       IF_INV_checkForException_pcc_BITS_108_TO_90_BI_ETC___d18 } ;
  always@(checkForException_csrState)
  begin
    case (checkForException_csrState[10:9])
      2'd0: code__h2344 = 5'd8;
      2'd1: code__h2344 = 5'd9;
      2'd2: code__h2344 = 5'd2;
      2'd3: code__h2344 = 5'd11;
    endcase
  end
  always@(checkForException_dInst or
	  NOT_checkForException_dInst_BITS_139_TO_137_02_ETC___d263 or
	  checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d162 or
	  checkForException_csrState)
  begin
    case (checkForException_dInst[144:140])
      5'd24:
	  IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d268 =
	      checkForException_csrState[10:9] != 2'd0 &&
	      (checkForException_csrState[10:9] != 2'd1 ||
	       !checkForException_csrState[6]);
      5'd25:
	  IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d268 =
	      checkForException_csrState[10:9] == 2'd3;
      default: IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d268 =
		   checkForException_dInst[144:140] != 5'd21 &&
		   ((checkForException_dInst[144:140] == 5'd17) ?
		      NOT_checkForException_dInst_BITS_139_TO_137_02_ETC___d263 :
		      checkForException_dInst[38] &&
		      !checkForException_csrState_BITS_10_TO_9_5_ULT__ETC___d162 &&
		      checkForException_dInst[37:33] != 5'd10);
    endcase
  end
  always@(checkForException_dInst or
	  IF_checkForException_dInst_BIT_38_60_THEN_chec_ETC___d193 or
	  checkForException_dInst_BITS_139_TO_137_02_EQ__ETC___d159 or
	  checkForException_csrState or checkForException_pcc)
  begin
    case (checkForException_dInst[144:140])
      5'd17:
	  IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d197 =
	      checkForException_dInst_BITS_139_TO_137_02_EQ__ETC___d159;
      5'd21:
	  IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d197 =
	      checkForException_csrState[10:9] == 2'd1 &&
	      checkForException_csrState[8];
      5'd24:
	  IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d197 =
	      checkForException_csrState[10:9] == 2'd0 ||
	      checkForException_csrState[10:9] == 2'd1 &&
	      checkForException_csrState[6] ||
	      !checkForException_pcc[122];
      5'd25:
	  IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d197 =
	      checkForException_csrState[10:9] != 2'd3 ||
	      !checkForException_pcc[122];
      default: IF_checkForException_dInst_BITS_144_TO_140_1_E_ETC___d197 =
		   IF_checkForException_dInst_BIT_38_60_THEN_chec_ETC___d193;
    endcase
  end
  always@(checkForException_dInst or code__h2344)
  begin
    case (checkForException_dInst[144:140])
      5'd22:
	  CASE_checkForException_dInst_BITS_144_TO_140_2_ETC__q2 =
	      code__h2344;
      5'd23: CASE_checkForException_dInst_BITS_144_TO_140_2_ETC__q2 = 5'd3;
      default: CASE_checkForException_dInst_BITS_144_TO_140_2_ETC__q2 = 5'd2;
    endcase
  end
endmodule  // module_checkForException

