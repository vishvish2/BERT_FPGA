module reset_counter (
    input  clk,               // Clock
    input  rstn,              // Active-low synchronous reset
    output reg [23:0] out,      // 7-bit counter output
	 output reset
);

  always @(posedge clk) begin
    if (!rstn) begin
      out <= 24'd0;
		reset <= 0;
    end else if (out == 24'd9999999) begin
      out <= 24'd0;
		reset <= 0;
    end else begin
      out <= out + 24'd1;
		reset <= 1;
	 end
  end

endmodule