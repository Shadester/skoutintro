; color data table
; first 9 rows (40 bytes) are used for the color washer
; on start the gradient is done by byte 40 is mirroed in byte 1, byte 39 in byte 2 etc... 

color        !byte $0b,$0b,$04,$04,$02 
             !byte $02,$0a,$0a,$0f,$0f 
             !byte $07,$07,$01,$01,$01 
             !byte $01,$01,$01,$01,$01 
             !byte $01,$01,$01,$01,$01 
             !byte $01,$01,$01,$07,$07 
             !byte $0f,$0f,$0a,$0a,$02 
             !byte $02,$04,$04,$0b,$0b 

color2       !byte $0b,$0b,$04,$04,$02 
             !byte $02,$0a,$0a,$0f,$0f 
             !byte $07,$07,$01,$01,$01 
             !byte $01,$01,$01,$01,$01 
             !byte $01,$01,$01,$01,$01 
             !byte $01,$01,$01,$07,$07 
             !byte $0f,$0f,$0a,$0a,$02 
             !byte $02,$04,$04,$0b,$0b 
