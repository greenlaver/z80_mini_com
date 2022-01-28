module z80_mini_com(n_RST, CLK50M);

input n_RST, CLK50M;

wire cpu_clk;
wire cpu_mreq, cpu_ioreq;
wire cpu_rd, cpu_wr;
wire [15:0] cpu_addr;
wire [7:0] cpu_data_in;

reg [3:0] rst_delay_cnt;
wire cpu_rst;

clk_div clk_div(
	.n_rst(n_RST), .clk(CLK50M), .cpu_clk(cpu_clk)
);

test_microm microm(
	.n_rst(n_RST), .clk(CLK50M), .n_ce(~cpu_mreq), .n_oe(~cpu_rd), .addr(cpu_addr[3:0]), .data(cpu_data_in)
);


fz80 fz80(
	.data_in(cpu_data_in), .reset_in(cpu_rst), .clk(cpu_clk), .adr(cpu_addr),
	.intreq(1'b0), .nmireq(1'b0), .busreq(1'b0), .waitreq(1'b0), .start(),
	.mreq(cpu_mreq), .iorq(cpu_ioreq), .rd(cpu_rd), .wr(cpu_wr),
	.data_out(), .busack_out(), .intack_out(), .mr()
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