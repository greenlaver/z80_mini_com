module sio_clk_div(n_rst, clk, sio_clk);

parameter SIO_CLK_SCALER = 312;	// 24M/9600/2/2/2=312, 76.9kHz

input n_rst;
input clk;	// 24MHz
output sio_clk;

reg [9:0] count;
reg q;

always @(posedge clk or negedge n_rst) begin
	if(!n_rst) begin
		count <= 10'h0;
		q <= 1'b0;
	end
	else begin
		count <= count + 11'h1;
		if(count == SIO_CLK_SCALER-1) begin
			q <= ~q;
			count <= 10'h0;
		end
	end
end

assign sio_clk = q;

endmodule

