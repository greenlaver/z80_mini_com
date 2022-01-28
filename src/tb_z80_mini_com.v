`timescale 1ns/1ps

module tb_z80_mini_com;

parameter SYSCLK_TICK = 4;
parameter RST_WIDTH = 1000;
parameter UART_WIDTH = 1302*4;

reg n_rst, sys_clk, txd;
wire rxd;

z80_mini_com z80_mini_com(
	.n_RST(n_rst), .CLK50M(sys_clk), .TXD(rxd), .RXD(txd)
);

/* Clock Generator */
always #(SYSCLK_TICK / 2) begin
  sys_clk = ~sys_clk;
end

/* UART Data Send */
task send_uart (
  input [7:0] dat
);
begin
                              txd = 1'b0;		// start bit
  #(UART_WIDTH * SYSCLK_TICK) txd = dat[0];
  #(UART_WIDTH * SYSCLK_TICK) txd = dat[1];
  #(UART_WIDTH * SYSCLK_TICK) txd = dat[2];
  #(UART_WIDTH * SYSCLK_TICK) txd = dat[3];
  #(UART_WIDTH * SYSCLK_TICK) txd = dat[4];
  #(UART_WIDTH * SYSCLK_TICK) txd = dat[5];
  #(UART_WIDTH * SYSCLK_TICK) txd = dat[6];
  #(UART_WIDTH * SYSCLK_TICK) txd = dat[7];
  #(UART_WIDTH * SYSCLK_TICK) txd = 1'b1;		// stop bit

end
endtask

/* Test Scenario */
initial begin
  /* Init */
  sys_clk = 1'b1;
  n_rst = 1'b1;
  txd = 1'b1;

  /* Reset */
  #(RST_WIDTH * SYSCLK_TICK) n_rst = 1'b0;
  #(RST_WIDTH * SYSCLK_TICK) n_rst = 1'b1;

  #(1000 * SYSCLK_TICK) send_uart(8'h41);	// A
  #(30000 * SYSCLK_TICK)
  
  $display("End test");
  $stop;
end

endmodule