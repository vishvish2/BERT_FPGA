module reset_counter #(
    parameter int MAX_COUNT = 20000000
) (
    input  clk,               // Clock
    input  rstn,              // Active-low synchronous reset
    output reg [47:0] out,      // 7-bit counter output
	 output reset
);

  always @(posedge clk) begin
    if (!rstn) begin
      out <= 48'd0;
		reset <= 0;
    end else if (out == MAX_COUNT-1) begin
      out <= 48'd0;
		reset <= 0;
    end else begin
      out <= out + 48'd1;
		reset <= 1;
	 end
  end

endmodule