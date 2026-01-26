module reset_counter (
    input  clk,               // Clock
    input  rstn,              // Active-low synchronous reset
    output reg [22:0] out,      // Counter output
	 output reset
);

  always @(posedge clk) begin
    if (!rstn) begin
      out <= 23'd0;
		reset <= 0;
    end else if (out == 23'd5000000) begin
      out <= 23'd0;
		reset <= 0;
    end else begin
      out <= out + 1'b1;
		reset <= 1;
	 end
  end

endmodule