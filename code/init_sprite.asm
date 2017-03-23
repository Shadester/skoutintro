sprite_background_color = $00
sprite_multicolor_1  	= $0e
sprite_multicolor_2  	= $01

delay_animation_pointer     = $fc

; individual sprite color for Sprite#0. This is also stored in Byte 64
; of each Sprite (low nibble) when we use SpritePad. We did not bother
; to parse this information in this case either.
skout_special_color	= $06
meetme_special_color = $04
ifwe_special_color = $01

skout_x_pos = $20
skout_y_pos = $3f
meetme_x_pos = $ce
meetme_y_pos = $3f
ifweleft_x_pos = $7b
ifweleft_y_pos = $8b
ifweright_x_pos = $93
ifweright_y_pos = $8b

spritepointerskout			 = skoutspr / $40
spritepointermeetme			 = meetmespr / $40
spritepointerifweleft        = ifweleftspr / $40
spritepointerifweright       = ifwerightspr / $40

lda #spritepointerskout
sta screen_ram + $3f8

lda #spritepointermeetme
sta screen_ram + $3f9

lda #spritepointerifweleft
sta screen_ram + $3fa

lda #spritepointerifweright
sta screen_ram + $3fb

lda #%00001111     ; enable Sprite#0+1
sta $d015 

lda #%00000011     ; set multicolor mode for Sprite#0+1
sta $d01c

;lda #%00000010     ; set X-Coord high bit (9th Bit) for Sprite#1
;sta $d010

lda #%00000011	   ; set double width
sta $d01d

lda #%00000011     ; set double height
sta $d017

lda #$02     ; Sprite#0 has priority over background
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
lda #ifwe_special_color	 ; individual Sprite#2,3 color
sta $d029
sta $d02a



					