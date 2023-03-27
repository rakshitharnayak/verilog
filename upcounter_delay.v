module upcounter(
input rst,
input clk,
  output [2:0] count
);



always @(posedge clk) begin
  if(rst==1)
    count <= 0;
  else
    count <= count + 1;
end
endmodule
