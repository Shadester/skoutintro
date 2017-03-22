sprite_background_color = $00
sprite_multicolor_1  	= $0e
sprite_multicolor_2  	= $01

delay_animation_pointer     = $fc

; individual sprite color for Sprite#0. This is also stored in Byte 64
; of each Sprite (low nibble) when we use SpritePad. We did not bother
; to parse this information in this case either.
skout_special_color	= $06
meetme_special_color = $04

skout_x_pos = $20
skout_y_pos = $3f
meetme_x_pos = $0f
meetme_y_pos = $3f

spritepointerskout			= skoutspr / $40
spritepointermeetme			= meetmespr / $40

lda #spritepointerskout
sta screen_ram + $3f8

lda #spritepointermeetme
sta screen_ram + $3f9

lda #%00000011     ; enable Sprite#0+1
sta $d015 

lda #%00000011     ; set multicolor mode for Sprite#0+1
sta $d01c

lda #$00     ; Sprite#0 has priority over background
sta $d01b

lda #sprite_background_color ; shared background color
sta $d021

lda #sprite_multicolor_1 	 ; shared multicolor 1
sta $d025

lda #sprite_multicolor_2 	 ; shared multicolor 2
sta $d026

lda #skout_special_color 	 ; individual Sprite#0 color
sta $d027
lda #meetme_special_color	 ; individual Sprite#1 color
sta $d028


lda #%00000010     ; set X-Coord high bit (9th Bit) for Sprite#1
sta $d010

					