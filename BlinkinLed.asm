.include "./m328Pdef.inc"
.org 0x00 ;aca arranca el programa

setup: ; configuro los puerto y pongo valores incinales
ldi r16,0b00111100; 
out DDRB,r16; configuro el puerto para para que los pines 5 al 2 sean salida

main:
    apagoLeds:
        ldi r16,0b11111111
        out PORTB,r16

    led0:
        ldi r16,0b11111011
        out PORTB,r16

    led1:
        ldi r16,0b11110111
        out PORTB,r16

    led2:
        ldi r16,0b11101111
        out PORTB,r16
	
    led3:
        ldi r16,0b11011111
        out PORTB,r16
    rjmp main