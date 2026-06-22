module error_counter (input clk,
                  input error,  
						input rstn,
                  output reg[9:0] count);  

						
  always @ (posedge clk or negedge rstn) begin
    if (! rstn) begin
      count <= 10'd0;
    end else if (error)
      count <= count + 10'd1;
	 else
	   count <= count;
  end
endmodule