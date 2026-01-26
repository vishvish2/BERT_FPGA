module reset_counter (
    input  clk,               // Clock
    input  rstn,              // Active-low synchronous reset
    output reg [7:0] out,      // 7-bit counter output
	 output reset
);

  always @(posedge clk) begin
    if (!rstn) begin
      out <= 8'd0;
		reset <= 0;
    end else if (out == 8'd200) begin
      out <= 8'd0;
		reset <= 0;
    end else begin
      out <= out + 1'b1;
		reset <= 1;
	 end
  end

endmodule