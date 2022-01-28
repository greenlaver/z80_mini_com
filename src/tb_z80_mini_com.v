`timescale 1ns/1ps

module tb_z80_mini_com;

parameter SYSCLK_TICK = 5;
parameter RST_WIDTH = 1000;

reg n_rst, sys_clk;

z80_mini_com z80_mini_com(
	.n_RST(n_rst), .CLK50M(sys_clk)
);

/* Clock Generator */
always #(SYSCLK_TICK / 2) begin
  sys_clk = ~sys_clk;
end

/* Test Scenario */
initial begin
  /* Init */
  sys_clk = 1'b1;
  n_rst = 1'b1;

  /* Reset */
  #(RST_WIDTH * SYSCLK_TICK) n_rst = 1'b0;
  #(RST_WIDTH * SYSCLK_TICK) n_rst = 1'b1;

  #(40000 * SYSCLK_TICK)
  
  $display("End test");
  $stop;
end

endmodule