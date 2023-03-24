module cntr(
input rst,
input clk,
output [3:0] count
);

reg [25:0] cnt;
assign count[3:0] = cnt[25:22];

always @(posedge clk) begin
  if(rst)
    cnt <= 0;
  else
    cnt <= cnt + 1;
end
endmodule
