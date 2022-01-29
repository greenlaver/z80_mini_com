        org     0000h
        ld      a,3
PSH:    push    af
        dec     a
        jp      nz,PSH
POP:    POP     af
        POP     af
        POP     af
LOOP:   jp      LOOP
