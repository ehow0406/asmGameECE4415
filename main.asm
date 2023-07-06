; Eric How Chun Lun
; github.com/asmGame (i think this is how it works)
; 6502 Assembly Run!
; Hoping this will go well
; Assemble in MADS -1 -t
; Initial Setup

    org $2000

SAVMSC = $0058 ; Screen Memory address

    ldy #0
loop
    lda hello,y
    sta (SAVMSC),y
    iny
    cpy #12
    bne loop 

    jmp *

; Data
hello
    .byte "HELLO WORLD!"
