sprite_background_color = $00
sprite_multicolor_1  	= $0b
sprite_multicolor_2  	= $01

; individual sprite color for Sprite#0. This is also stored in Byte 64
; of each Sprite (low nibble) when we use SpritePad. We did not bother
; to parse this information in this case either.
sprite_special_color	= $02

spritepointer			= skoutspr / $40

init_sprite				lda #spritepointer
						sta screen_ram + $3f8

						lda #$01     ; enable Sprite#0
						sta $d015 

						lda #$01     ; set multicolor mode for Sprite#0
						sta $d01c
						
						lda #$00     ; Sprite#0 has priority over background
						sta $d01b
						
						lda #sprite_background_color ; shared background color
						sta $d021
						
						lda #sprite_multicolor_1 	 ; shared multicolor 1
						sta $d025
						
						lda #sprite_multicolor_2 	 ; shared multicolor 2
						sta $d026
						
						lda #sprite_special_color 	 ; individual Sprite#0 color
						sta $d027
						
						lda #$01     ; set X-Coord high bit (9th Bit) for Sprite#0
						sta $d010

						lda #$a0 	; set Sprite#0 positions with X/Y coords to
						sta $d000   ; lower right of the screen
						lda #$ff    ; $d000 corresponds to X-Coord (0-504 incl 9th Bit on PAL systems)
						sta $d001   ; $d001 corresponds to Y-Coord (0-255 on PAL systems)
						rts						