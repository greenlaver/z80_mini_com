//
// micro-code ROM unit for Z80 UART echo program
//
module uart_microm(n_rst, clk, ce, oe, addr, data);

input        n_rst, clk;
input        ce, oe;
input  [5:0] addr;
output [7:0] data;

reg [5:0] addr_buf;
reg [7:0] data_buf;

always @(posedge clk or negedge n_rst) begin
	if(!n_rst) begin
		addr_buf <= 4'h0;
		data_buf <= 8'hzz;
	end
	else begin
		if(ce && oe) begin
			addr_buf <= addr;
			data_buf <= (addr_buf == 6'h00) ? 8'h3e :
							(addr_buf == 6'h01) ? 8'h4f :
							(addr_buf == 6'h02) ? 8'hcd :
							(addr_buf == 6'h03) ? 8'h1b :
							(addr_buf == 6'h04) ? 8'h00 :
							(addr_buf == 6'h05) ? 8'h3e :
							(addr_buf == 6'h06) ? 8'h4b :
							(addr_buf == 6'h07) ? 8'hcd :
							(addr_buf == 6'h08) ? 8'h1b :
							(addr_buf == 6'h09) ? 8'h00 :
							(addr_buf == 6'h0a) ? 8'hcd :
							(addr_buf == 6'h0b) ? 8'h12 :
							(addr_buf == 6'h0c) ? 8'h00 :
							(addr_buf == 6'h0d) ? 8'hcd :
							(addr_buf == 6'h0e) ? 8'h1b :
							(addr_buf == 6'h0f) ? 8'h00 :
							
							(addr_buf == 6'h10) ? 8'h18 :
							(addr_buf == 6'h11) ? 8'hf8 :
							(addr_buf == 6'h12) ? 8'hdb :
							(addr_buf == 6'h13) ? 8'h85 :
							(addr_buf == 6'h14) ? 8'hcb :
							(addr_buf == 6'h15) ? 8'h4f :
							(addr_buf == 6'h16) ? 8'h28 :
							(addr_buf == 6'h17) ? 8'hfa :
							(addr_buf == 6'h18) ? 8'hdb :
							(addr_buf == 6'h19) ? 8'h84 :
							(addr_buf == 6'h1a) ? 8'hc9 :
							(addr_buf == 6'h1b) ? 8'hf5 :
							(addr_buf == 6'h1c) ? 8'hdb :
							(addr_buf == 6'h1d) ? 8'h85 :
							(addr_buf == 6'h1e) ? 8'hcb :
							(addr_buf == 6'h1f) ? 8'h47 :
							
							(addr_buf == 6'h20) ? 8'h28 :
							(addr_buf == 6'h21) ? 8'hfa :
							(addr_buf == 6'h22) ? 8'hf1 :
							(addr_buf == 6'h23) ? 8'hd3 :
							(addr_buf == 6'h24) ? 8'h84 :
							(addr_buf == 6'h25) ? 8'hc9 : 8'hff;
		end
		else begin
			data_buf <= 8'hzz;
		end
	end
end

assign data = data_buf;

endmodule

/**************************************************************************

; --------------------------------------
; zasm: assemble "uart_echo.asm"
; date: 2022-01-30 02:58:27
; --------------------------------------


USARTD	.equ	0x84		;USART DATA REG
USARTC	.equ	0x85		;USART CONTL REG

        .org    0x0000

main:
	    ld	a,"O"
	    call	com_out
	    ld	a,"K"
	    call	com_out
loop:
      	call	com_in
	    call	com_out
	    jr	loop
 	
com_in:
        in     	a,(USARTC)
	    bit	1,a
        jr      z,com_in
	    in      a,(USARTD)
	    ret

com_out:
        push	af
com_out01:
	    in      a,(USARTC)
        bit     0,a
        jr      z,com_out01
	    pop     af
        out     (USARTD),a
	    ret

	    .end


; +++ segments +++

#CODE          = $0000 =     0,  size = $0026 =    38

; +++ global symbols +++

USARTC    = $0085 =   133          uart_echo.asm:2
USARTD    = $0084 =   132          uart_echo.asm:1
_end      = $0026 =    38          uart_echo.asm:4 (unused)
_size     = $0026 =    38          uart_echo.asm:4 (unused)
com_in    = $0012 =    18          uart_echo.asm:16
com_out   = $001B =    27          uart_echo.asm:23
com_out01 = $001C =    28          uart_echo.asm:25
loop      = $000A =    10          uart_echo.asm:11
main      = $0000 =     0          uart_echo.asm:6 (unused)


total time: 0.0006 sec.
no errors

**************************************************************************/