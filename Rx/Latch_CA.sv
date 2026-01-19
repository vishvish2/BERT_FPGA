module Latch_CA (
						input logic data_in, enable,
						output logic q_out
						);
  assign  q_out = (enable) ? data_in : q_out;
endmodule
