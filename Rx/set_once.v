module set_once (clk,
					  flag,
					  reset,
					  out
);

input clk;
input flag;
input reset;
output out;
reg out;

initial out = 1'b0;

always @(posedge clk) begin
    if (reset) begin
        out <= 1'b0;
	 end else if (reset) begin
        out <= 1'b1;
	 end
		  
end

endmodule