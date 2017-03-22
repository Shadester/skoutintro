move_sprite			;lda delay_animation_pointer
					;eor #$01
					;sta delay_animation_pointer
					;beq delay_animation

					jsr sine_table1_x
					clc
					adc	#$20
					sta $d000

					jsr sine_table1_y
					clc
					adc #$3f
					sta $d001

					jsr sine_table2_x
					clc
					adc	#$9f
					sta $d002

					jsr sine_table2_y
					clc
					adc #$3f
					sta $d003

delay_animation		rts