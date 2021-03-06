//
// micro-code ROM unit for Z80 increment test
//
module test_microm(n_rst, clk, n_ce, n_oe, addr, data);

input        n_rst, clk;
input        n_ce, n_oe;
input  [3:0] addr;
output [7:0] data;

reg [3:0] addr_buf;
reg [7:0] data_buf;
// reg       oe_d, oe_dd;

always @(posedge clk or negedge n_rst) begin
	if(!n_rst) begin
		addr_buf <= 4'h0;
		data_buf <= 8'hzz;
		// oe_d <= 1'b1;
		// oe_dd <= 1'b1;
	end
	else begin
		if(!n_ce) begin
			addr_buf <= addr;
			data_buf <= (addr_buf == 4'h00) ? 8'h3e :
							(addr_buf == 4'h01) ? 8'h00 :
							(addr_buf == 4'h02) ? 8'h3c :
							(addr_buf == 4'h03) ? 8'hc2 :
							(addr_buf == 4'h04) ? 8'h02 :
							(addr_buf == 4'h05) ? 8'h00 :
							(addr_buf == 4'h06) ? 8'hc3 :
							(addr_buf == 4'h07) ? 8'h06 :
							(addr_buf == 4'h08) ? 8'h00 : 8'hff;
		end
		else begin
			data_buf <= 8'hzz;
		end
		
		// signal buffer
		// oe_dd <= oe_d;
		// oe_d  <= n_oe;
	end
end

assign data = data_buf;

endmodule