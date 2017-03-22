move_sprite			lda delay_animation_pointer
					eor #$01
					sta delay_animation_pointer
					beq delay_animation

					
					dec $d000	;

delay_animation		rts