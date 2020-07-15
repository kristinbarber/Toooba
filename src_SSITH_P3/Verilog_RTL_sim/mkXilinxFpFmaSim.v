//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
// On Wed Jul 15 02:40:45 BST 2020
//
//
// Ports:
// Name                         I/O  size props
// RDY_request_put                O     1 reg
// response_get                   O    69 reg
// RDY_response_get               O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// request_put                    I   196
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

module mkXilinxFpFmaSim(CLK,
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
  input  [195 : 0] request_put;
  input  EN_request_put;
  output RDY_request_put;

  // actionvalue method response_get
  input  EN_response_get;
  output [68 : 0] response_get;
  output RDY_response_get;

  // signals for module outputs
  wire [68 : 0] response_get;
  wire RDY_request_put, RDY_response_get;

  // ports of submodule fpFma
  wire [63 : 0] fpFma$A, fpFma$B, fpFma$C, fpFma$RES;

  // ports of submodule respQ
  wire [68 : 0] respQ$D_IN, respQ$D_OUT;
  wire respQ$CLR, respQ$DEQ, respQ$EMPTY_N, respQ$ENQ, respQ$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_request_put,
       CAN_FIRE_response_get,
       WILL_FIRE_request_put,
       WILL_FIRE_response_get;

  // action method request_put
  assign RDY_request_put = respQ$FULL_N ;
  assign CAN_FIRE_request_put = respQ$FULL_N ;
  assign WILL_FIRE_request_put = EN_request_put ;

  // actionvalue method response_get
  assign response_get = respQ$D_OUT ;
  assign RDY_response_get = respQ$EMPTY_N ;
  assign CAN_FIRE_response_get = respQ$EMPTY_N ;
  assign WILL_FIRE_response_get = EN_response_get ;

  // submodule fpFma
  fp_fma_sim fpFma(.A(fpFma$A), .B(fpFma$B), .C(fpFma$C), .RES(fpFma$RES));

  // submodule respQ
  FIFO2 #(.width(32'd69), .guarded(32'd1)) respQ(.RST(RST_N),
						 .CLK(CLK),
						 .D_IN(respQ$D_IN),
						 .ENQ(respQ$ENQ),
						 .DEQ(respQ$DEQ),
						 .CLR(respQ$CLR),
						 .D_OUT(respQ$D_OUT),
						 .FULL_N(respQ$FULL_N),
						 .EMPTY_N(respQ$EMPTY_N));

  // submodule fpFma
  assign fpFma$A = request_put[130:67] ;
  assign fpFma$B = request_put[66:3] ;
  assign fpFma$C =
	     { request_put[195] && request_put[194],
	       request_put[195] ? request_put[193:131] : 63'd0 } ;

  // submodule respQ
  assign respQ$D_IN = { fpFma$RES, 5'd0 } ;
  assign respQ$ENQ = EN_request_put ;
  assign respQ$DEQ = EN_response_get ;
  assign respQ$CLR = 1'b0 ;
endmodule  // mkXilinxFpFmaSim

