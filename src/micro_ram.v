module micro_ram(addr, clock, data_in, ce, rden, wren, q);

input [9:0] addr;
input	[7:0] data_in;
input clock, ce, rden, wren;
output [7:0] q;

reg [7:0] mem[1023:0];

always @(posedge clock) begin
	if(ce & ~rden & wren) begin
		mem[addr] <= data_in;	
	end
end

assign q = (ce & rden & ~wren) ? mem[addr] : 8'hzz;

endmodule