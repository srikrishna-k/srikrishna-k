module g2b#(
parameter width=4)
(input [width-1:0] gray,
output reg [width-1:0] binary);

integer i;

always@(*) begin
  binary[width-1]=gray[width-1];
for (i=width-2;i>=0;i=i-1) begin
  binary[i]=binary[i+1]^gray[i];
end
end
endmodule
