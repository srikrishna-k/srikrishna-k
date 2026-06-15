module fifomemoryarray#(
parameter datawidth= 512,
parameter addressslotwidth= 4)
(input wire [datawidth-1:0] wdata,
 input wclk,
 input wclken,
 input wire [addressslotwidth-1:0] waddress,
 input wire [addressslotwidth-1:0] raddress,
 output wire [datawidth-1:0] rdata);

// creating a depth of memory
localparam depth=1<<addressslotwidth; 

reg [datawidth-1:0] mem[0:depth-1];


// this is no latency path forr read operation
//completely combinational path , no delayed events
assign rdata=mem[raddress];
//forr writing the data inthe memory
always @(posedge wclk) begin
  if(wclken)
    begin
      mem[waddress]<=wdata;
    end 
end
endmodule
