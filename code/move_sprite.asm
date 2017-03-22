move_sprite			;lda delay_animation_pointer
					;eor #$01
					;sta delay_animation_pointer
					;beq delay_animation

					+sine_table counter1_x
					clc
					adc	#$20
					sta $d000

					+sine_table counter1_y
					clc
					adc #$3f
					sta $d001

					+sine_table counter2_x
					clc
					adc	#$9f
					sta $d002

					+sine_table counter2_y
					clc
					adc #$3f
					sta $d003

delay_animation		rts