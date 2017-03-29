;============================================================
; index file which loads all source code and resources files
;============================================================

;============================================================
;    specify output file
;============================================================

!cpu 6502
!to "build/skoutro.prg",cbm    ; output file

; skout sprite
!source "resources/skout_sprite.asm"
!source "resources/data_colorwash.asm"

;============================================================
; BASIC loader with start address $c000
;============================================================

* = $0801                               ; BASIC start address (#2049)
!byte $0d,$08,$dc,$07,$9e,$20,$34,$39   ; BASIC loader to start at $c000...
!byte $31,$35,$32,$00,$00,$00           ; puts BASIC line 2012 SYS 49152

* = $c000     				            ; start address for 6502 code

;============================================================
;  Main routine with IRQ setup and custom IRQ routine
;============================================================

; address maps
!source "code/setup_symbols.asm"

; Sprite painting
!source "code/init_sprite.asm"

; main!
!source "code/main.asm"

; subroutines
!source "code/init_clear_screen.asm"

; Sine table
!source "code/sinetable.asm"

; Sprite movement
!source "code/move_sprite.asm"

; Music subroutine
!source "code/sub_music.asm"

; Colorwash routine
!source "code/sub_colorwash.asm"

; Only music
!source "code/load_resources.asm"

; print text
!source "code/init_static_text.asm"

; Text
!source "resources/straight_text.asm"

;============================================================
;  add additional source files as required
;============================================================

