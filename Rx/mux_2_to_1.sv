module mux_2_to_1 (output logic out,
						 input logic a, b,
						 input logic s);
assign out = (s) ? b : a ;
endmodule
