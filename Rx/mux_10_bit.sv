module mux_10_bit (output logic [9:0] out,
						 input logic [9:0] a, b,
						 input logic s);
assign out = (s) ? b : a ;
endmodule
