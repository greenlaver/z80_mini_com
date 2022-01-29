module ip_rom_wrapper(address, clock, rden, q);

input [13:0] address;
input clock, rden;
output [7:0] q;

wire [7:0] mem_q;

ip_rom ip_rom(
	.address(address), .clock(clock),
	.rden(rden), .q(mem_q)
);

assign q = (rden) ? mem_q : 8'hzz;

endmodule