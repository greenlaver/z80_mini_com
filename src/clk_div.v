module clk_div(n_rst, clk, cpu_clk);

input n_rst;
input clk;	// 50MHz
output cpu_clk;

reg [7:0] count;

always @(posedge clk or negedge n_rst) begin
	if(!n_rst) begin
		count = 8'h0;
	end
	else begin
		count <= count + 8'h1;
	end
end

assign cpu_clk = count[4];	// div 1/32 = 1.5625MHz

endmodule

