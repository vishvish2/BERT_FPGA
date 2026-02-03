module counter #(
    parameter int MAX_COUNT = 10000
) (
    input  logic        clk,
    input  logic        rstn,   // Active-low synchronous reset
    output logic [23:0]  out,
    output logic        error
);

  always_ff @(posedge clk) begin
    if (!rstn) begin
      out <= 24'd0;
      error <= 1'b0;
    end
    else if (out == MAX_COUNT-1) begin
      out <= 24'd0;
      error <= 1'b1;   // one-cycle pulse
    end
    else begin
      out <= out + 24'd1;
      error <= 1'b0;
    end
  end

endmodule