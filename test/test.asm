        org     0000h
        ld      a,0
INC:    inc     a
        jp      nz,INC
LOOP:   jp      LOOP
