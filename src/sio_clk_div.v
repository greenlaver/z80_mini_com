module sio_clk_div(n_rst, clk, sio_clk);

parameter SIO_CLK_SCALER = 1302;	// 50M/9600/4=1302

input n_rst;
input clk;	// 50MHz
output sio_clk;

reg [10:0] count;
reg q;

always @(posedge clk or negedge n_rst) begin
	if(!n_rst) begin
		count <= 11'h0;
		q <= 1'b0;
	end
	else begin
		count <= count + 11'h1;
		if(count == SIO_CLK_SCALER-1) begin
			q <= ~q;
			count <= 11'h0;
		end
	end
end

assign cpu_clk = q;

endmodule

