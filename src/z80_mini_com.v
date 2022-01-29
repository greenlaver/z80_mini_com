module z80_mini_com(n_RST, CLK50M, TXD, RXD);

input n_RST, CLK50M;
input RXD;
output TXD;

wire cpu_clk;
wire cpu_mreq, cpu_ioreq;
wire cpu_rd, cpu_wr;
wire [15:0] cpu_addr;
wire [7:0] cpu_data_in, cpu_data_out;

reg [3:0] rst_delay_cnt;
wire cpu_rst;

wire sio_clk;

cpu_clk_div cpu_clk_div(
	.n_rst(n_RST), .clk(CLK50M), .cpu_clk(cpu_clk)
);

sio_clk_div sio_clk_div(
	.n_rst(n_RST), .clk(CLK50M), .sio_clk(sio_clk)
);

simple_sio sio(
	.n_rst(n_RST), .clk(CLK50M),
	.txrx_clk(sio_clk),
	.ce((cpu_addr[7:1] == 7'b100_0010)? 1'b1 : 1'b0),	// address decoder 0x84-0x85
	.rd(cpu_ioreq & cpu_rd), .wr(cpu_ioreq & cpu_wr),
	.cd(cpu_addr[0]),
	.data_in(cpu_data_out),
	.data_out(cpu_data_in),
	.txd(TXD), .rxd(RXD)
);

//test_microm microm(
//	.n_rst(n_RST), .clk(CLK50M), .n_ce(~cpu_mreq), .n_oe(~cpu_rd), .addr(cpu_addr[3:0]), .data(cpu_data_in)
//);
//ip_rom_wrapper ip_rom_wrapper(
//	.address(cpu_addr[8:0]), .clock(CLK50M),
//	.rden(cpu_mreq & cpu_rd & cpu_addr[15] == 1'b0),
//	.q(cpu_data_in)
//);
uart_microm microm(
	.n_rst(n_RST), .clk(CLK50M),
	.ce(cpu_mreq & cpu_addr[15] == 1'b0),
	.oe(cpu_rd),
	.addr(cpu_addr[5:0]), .data(cpu_data_in)
);

ip_ram_wrapper ip_ram_wrapper(
	.address(cpu_addr[8:0]), .clock(CLK50M),
	.data_in(cpu_data_out),
	.rden(cpu_mreq & cpu_rd & cpu_addr[15] == 1'b1),
	.wren(cpu_mreq & cpu_wr & cpu_addr[15] == 1'b1),
	.q(cpu_data_in)
);

fz80 fz80(
	.data_in(cpu_data_in), .reset_in(cpu_rst), .clk(cpu_clk), .adr(cpu_addr),
	.intreq(1'b0), .nmireq(1'b0), .busreq(1'b0), .waitreq(1'b0), .start(),
	.mreq(cpu_mreq), .iorq(cpu_ioreq), .rd(cpu_rd), .wr(cpu_wr),
	.data_out(cpu_data_out), .busack_out(), .intack_out(), .mr()
);


// 
// rst signal delay for Z80
//
always @(posedge cpu_clk or negedge n_RST) begin
	if(!n_RST) begin
		 rst_delay_cnt <= 4'h0;
	end
	else begin
		if(rst_delay_cnt[3] == 1'b0) rst_delay_cnt <= rst_delay_cnt + 3'h1;
	end
end

assign cpu_rst = ~rst_delay_cnt[3];

endmodule