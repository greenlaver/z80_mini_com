module ip_rom_wrapper(n_rst, clock, address, rden, q);

input [12:0] address;
input n_rst, clock, rden;
output [7:0] q;

wire [7:0] mem_q;

//ip_rom ip_rom(
//	.address(address), .clock(clock),
//	.rden(rden), .q(mem_q)
//);
ip_rom ip_rom(
	.rsta(~n_rst), .clka(clock),
	.addra(address), .doa(mem_q)
);

assign q = (rden) ? mem_q : 8'hzz;

endmodule