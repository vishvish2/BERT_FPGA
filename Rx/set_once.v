module set_once (clk,
					  flag,
					  out
);

input clk;
input flag;
output out;
reg out;

initial out = 1'b0;

always @(posedge clk) begin
    if (flag)
        out <= 1'b1;
end

endmodule