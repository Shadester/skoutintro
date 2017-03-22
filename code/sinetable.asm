sine_table_x	ldx counter_x
        		cpx #100
        		bne nextstop_x

        		ldx #00
        		stx counter_x

nextstop_x      lda sprite_sinus,x

        		inc counter_x

        		rts

sine_table_y	ldx counter_y
        		cpx #100
        		bne nextstop_y

        		ldx #00
        		stx counter_y

nextstop_y      lda sprite_sinus,x

        		inc counter_y

        		rts

sprite_sinus   
    !byte 25,23,21,20,18,17,15,14,12,11,10,8,7,6,5,4
    !byte 3,2,2,1,1,0,0,0,0,0,0,0,0,0,1,1
    !byte 2,3,4,5,6,7,8,9,10,12,13,14,16,17,19,21
    !byte 22,24,25,27,28,30,32,33,35,36,37,39,40,41,42,43
    !byte 44,45,46,47,48,48,49,49,49,49,49,49,49,49,49,48
    !byte 48,47,47,46,45,44,43,42,41,39,38,37,35,34,32,31
    !byte 29,28,26,25