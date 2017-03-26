move_sprite			inc delay_animation_pointer
        			lda delay_animation_pointer                  ;If already executing, skip the update
        			cmp #$03                        ;code
        			bcs continue
        			rts

        continue	lda #$0
        			sta delay_animation_pointer

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

					+sine_table counter3_x
					clc
					pha
					adc #ifweleft_x_pos
					sta $d004
					pla
					adc #ifweright_x_pos
					sta $d006

					+sine_table counter3_y
					clc
					pha
					adc #ifweleft_y_pos
					sta $d005
					pla
					adc #ifweright_y_pos
					sta $d007

					rts