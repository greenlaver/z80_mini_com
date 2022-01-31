module ip_ram_wrapper(address, clock, data_in, ce, rden, wren, q);

input [14:0] address;
input	[7:0] data_in;
input clock, ce, rden, wren;
output [7:0] q;

wire [7:0] mem_q;

//ip_ram ip_ram(
//	.address(address), .clock(clock),
//	.data(data_in),
//	.rden(rden), .wren(wren), .q(mem_q)
//);

ip_ram ip_ram(
	.addra(address), .clka(clock),
	.dia(data_in),
	.wea(ce & wren), .doa(mem_q)
);

assign q = (ce & rden) ? mem_q : 8'hzz;

endmodule