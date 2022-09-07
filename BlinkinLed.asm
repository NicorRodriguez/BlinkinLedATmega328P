;
; AssemblerApplication8.asm
;
; Created: 1/9/2021 18:40:54
; Author : Administrador
;
.include "./m328Pdef.inc"
.org 0x00 ;aca arranca el programa
; Replace with your application code
setup: ; configuro los puerto y pongo valores incinales
ldi r16,0b00111100; 
out DDRB,r16; configuro el puerto para para que los pines 5 al 2 sean salida
ldi r16,0b11111011; ;
out PORTB,r16;

main:
    ldi r17,0xFF
    ldi r18,0xFF
    led0:
        ldi r16,0b11111011
        out PORTB,r16
    delay0:
        dec r17
        brne delay0
            dec r18
            brne delay0
	ldi r17,0xFF
	ldi r18,0xFF
    led1:
        ldi r16,0b11110111
        out PORTB,r16
    delay1:
        dec r17
        brne delay1
            dec r18
            brne delay1
	ldi r17,0xFF
    ldi r18,0xFF
    led2:
        ldi r16,0b11101111
        out PORTB,r16
    delay2:
        dec r17
        brne delay2
            dec r18
            brne delay2
	ldi r17,0xFF
    ldi r18,0xFF
    led3:
        ldi r16,0b11011111
        out PORTB,r16
    delay3:
        dec r17
        brne delay3
            dec r18
            brne delay3
    rjmp main