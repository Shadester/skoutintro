move_sprite			;lda delay_animation_pointer
					;eor #$01
					;sta delay_animation_pointer
					;beq delay_animation

					jsr sine_table_x
					clc
					adc	#$20
					sta $d000

					jsr sine_table_y
					clc
					adc #$3f
					sta $d001

delay_animation		rts