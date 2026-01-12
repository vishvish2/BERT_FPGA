module counter_7bit(CLOCK_5,
						  reset,
						  counter_out,
						  flag
						 );

input CLOCK_5;
input reset;
output [6:0] counter_out;
reg [6:0] counter_out;
output flag;
reg flag;

always @(posedge CLOCK_5) begin
	 if (reset) begin
		  counter_out <= 7'd0;
        flag <= 1'b1;
	 end
    else if (counter_out == 7'd126) begin
        counter_out <= 7'd0;
        flag <= 1'b1;
    end else begin
        counter_out <= counter_out + 1;
        flag <= 1'b0;
    end
end
endmodule