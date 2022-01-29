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
