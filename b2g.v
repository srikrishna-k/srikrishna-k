module b2g#(
parameter width=4)
(
input [width-1:0] binary,
output [width-1:0] gray);

assign gray=binary^(binary>>1);
endmodule
