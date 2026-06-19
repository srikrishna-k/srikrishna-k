module syncff#(
parameter width=1
)
(
input rst,clk,
input[width-1:0]asyncin,
output [width-1:0]syncout);
reg [width-1:0]ff1;
reg [width-1:0]ff2;
always@(negedge rst or posedge clk) begin

if(!rst) begin
ff1<=0;
ff2<=0;
end

else begin 

ff1<=asyncin;
ff2<=ff1;
end
end
assign syncout=ff2;
endmodule
