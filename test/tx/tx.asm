USARTD	.equ	0x84		;USART DATA REG
USARTC	.equ	0x85		;USART CONTL REG

        org     0x0000
TX:     in      a,(USARTC)
        bit     0,a
        ld      a,"A"
        out     (USARTD),a
LOOP:   jp      LOOP
