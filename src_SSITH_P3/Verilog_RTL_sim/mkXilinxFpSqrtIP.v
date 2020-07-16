//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
// On Thu Jul 16 18:22:47 BST 2020
//
//
// Ports:
// Name                         I/O  size props
// RDY_request_put                O     1
// response_get                   O    69
// RDY_response_get               O     1
// CLK                            I     1 clock
// RST_N                          I     1 reset
// request_put                    I    67
// EN_request_put                 I     1
// EN_response_get                I     1
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

module mkXilinxFpSqrtIP(CLK,
			RST_N,

			request_put,
			EN_request_put,
			RDY_request_put,

			EN_response_get,
			response_get,
			RDY_response_get);
  input  CLK;
  input  RST_N;

  // action method request_put
  input  [66 : 0] request_put;
  input  EN_request_put;
  output RDY_request_put;

  // actionvalue method response_get
  input  EN_response_get;
  output [68 : 0] response_get;
  output RDY_response_get;

  // signals for module outputs
  wire [68 : 0] response_get;
  wire RDY_request_put, RDY_response_get;

  // register init_cnt
  reg [7 : 0] init_cnt;
  wire [7 : 0] init_cnt$D_IN;
  wire init_cnt$EN;

  // register init_init
  reg init_init;
  wire init_init$D_IN, init_init$EN;

  // register init_rg_ready
  reg init_rg_ready;
  wire init_rg_ready$D_IN, init_rg_ready$EN;

  // ports of submodule fpSqrt
  wire [63 : 0] fpSqrt$m_axis_result_tdata, fpSqrt$s_axis_a_tdata;
  wire fpSqrt$m_axis_result_tready,
       fpSqrt$m_axis_result_tuser,
       fpSqrt$m_axis_result_tvalid,
       fpSqrt$s_axis_a_tready,
       fpSqrt$s_axis_a_tvalid;

  // rule scheduling signals
  wire CAN_FIRE_RL_init_doInit,
       CAN_FIRE_RL_init_rg_rl_ready,
       CAN_FIRE_request_put,
       CAN_FIRE_response_get,
       WILL_FIRE_RL_init_doInit,
       WILL_FIRE_RL_init_rg_rl_ready,
       WILL_FIRE_request_put,
       WILL_FIRE_response_get;

  // action method request_put
  assign RDY_request_put =
	     fpSqrt$s_axis_a_tready && init_init && init_rg_ready ;
  assign CAN_FIRE_request_put =
	     fpSqrt$s_axis_a_tready && init_init && init_rg_ready ;
  assign WILL_FIRE_request_put = EN_request_put ;

  // actionvalue method response_get
  assign response_get =
	     { fpSqrt$m_axis_result_tdata,
	       fpSqrt$m_axis_result_tuser,
	       4'd0 } ;
  assign RDY_response_get =
	     fpSqrt$m_axis_result_tvalid && init_init && init_rg_ready ;
  assign CAN_FIRE_response_get =
	     fpSqrt$m_axis_result_tvalid && init_init && init_rg_ready ;
  assign WILL_FIRE_response_get = EN_response_get ;

  // submodule fpSqrt
  fp_sqrt fpSqrt(.aclk(CLK),
		 .s_axis_a_tdata(fpSqrt$s_axis_a_tdata),
		 .s_axis_a_tvalid(fpSqrt$s_axis_a_tvalid),
		 .m_axis_result_tready(fpSqrt$m_axis_result_tready),
		 .s_axis_a_tready(fpSqrt$s_axis_a_tready),
		 .m_axis_result_tvalid(fpSqrt$m_axis_result_tvalid),
		 .m_axis_result_tdata(fpSqrt$m_axis_result_tdata),
		 .m_axis_result_tuser(fpSqrt$m_axis_result_tuser));

  // rule RL_init_doInit
  assign CAN_FIRE_RL_init_doInit = !init_init ;
  assign WILL_FIRE_RL_init_doInit = CAN_FIRE_RL_init_doInit ;

  // rule RL_init_rg_rl_ready
  assign CAN_FIRE_RL_init_rg_rl_ready = 1'd1 ;
  assign WILL_FIRE_RL_init_rg_rl_ready = 1'd1 ;

  // register init_cnt
  assign init_cnt$D_IN = init_cnt + 8'd1 ;
  assign init_cnt$EN = CAN_FIRE_RL_init_doInit ;

  // register init_init
  assign init_init$D_IN = 1'd1 ;
  assign init_init$EN = WILL_FIRE_RL_init_doInit && init_cnt == 8'd255 ;

  // register init_rg_ready
  assign init_rg_ready$D_IN = 1'd1 ;
  assign init_rg_ready$EN = 1'd1 ;

  // submodule fpSqrt
  assign fpSqrt$s_axis_a_tdata = request_put[66:3] ;
  assign fpSqrt$s_axis_a_tvalid = EN_request_put ;
  assign fpSqrt$m_axis_result_tready = EN_response_get ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        init_cnt <= `BSV_ASSIGNMENT_DELAY 8'd0;
	init_init <= `BSV_ASSIGNMENT_DELAY 1'd0;
	init_rg_ready <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (init_cnt$EN) init_cnt <= `BSV_ASSIGNMENT_DELAY init_cnt$D_IN;
	if (init_init$EN) init_init <= `BSV_ASSIGNMENT_DELAY init_init$D_IN;
	if (init_rg_ready$EN)
	  init_rg_ready <= `BSV_ASSIGNMENT_DELAY init_rg_ready$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    init_cnt = 8'hAA;
    init_init = 1'h0;
    init_rg_ready = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_request_put && request_put[2:0] != 3'd0)
	$fwrite(32'h80000002,
		"[Xlinx SQRT] WARNING: unsupported rounding mode ");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_request_put && request_put[2:0] == 3'd1)
	$fwrite(32'h80000002, "<Round Mode: Nearest Away From Zero>");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_request_put && request_put[2:0] == 3'd2)
	$fwrite(32'h80000002, "<Round Mode: +Infinity>");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_request_put && request_put[2:0] == 3'd3)
	$fwrite(32'h80000002, "<Round Mode: -Infinity>");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_request_put && request_put[2:0] != 3'd0 &&
	  request_put[2:0] != 3'd1 &&
	  request_put[2:0] != 3'd2 &&
	  request_put[2:0] != 3'd3)
	$fwrite(32'h80000002, "<Round Mode: Zero>");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_request_put && request_put[2:0] != 3'd0)
	$fwrite(32'h80000002, "\n");
  end
  // synopsys translate_on
endmodule  // mkXilinxFpSqrtIP

