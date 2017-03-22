move_sprite			;lda delay_animation_pointer
					;eor #$01
					;sta delay_animation_pointer
					;beq delay_animation

					+sine_table counter1_x
					clc
					adc	#skout_x_pos
					sta $d000

					+sine_table counter1_y
					clc
					adc #skout_y_pos
					sta $d001

					+sine_table counter2_x
					clc
					adc	#meetme_x_pos
					sta $d002

					+sine_table counter2_y
					clc
					adc #meetme_y_pos
					sta $d003

delay_animation		rts