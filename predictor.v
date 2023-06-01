module predictor(input wire request, result, clk, taken, output reg prediction);

// Your code

reg [1:0]PHS=2'b11;

always @(posedge clk) begin
  if(request==1'b1) begin
    prediction=PHS[1];
  end
  
end

always @(posedge clk) begin
  if(result==1'b1) begin
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
  
  
  end
  

endmodule



