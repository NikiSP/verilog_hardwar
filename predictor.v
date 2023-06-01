module predictor(input wire request, result, clk, taken, output reg prediction);

// Your code

reg [1:0]PHS;

always @(request==1'b1 , posedge clk) begin
  prediction=PHS[1];
end

always @(result==1'b1 , posedge clk) begin
  if(taken) begin
    if(PHS<2'b11)begin
      PHS<=PHS+1;
    end
  end
  else begin
    if(PHS>2'b00) begin
      PHS<=PHS-1;  
    end
  end
end

endmodule