	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_sumit                          ; -- Begin function sumit
	.p2align	2
_sumit:                                 ; @sumit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	xzr, [sp, #8]
	str	xzr, [sp]
	str	xzr, [sp, #8]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	subs	x8, x8, #10
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #8]
	adrp	x8, _XARRAY@GOTPAGE
	ldr	x8, [x8, _XARRAY@GOTPAGEOFF]
	ldr	x9, [x8, x9, lsl #3]
	ldr	x8, [sp]
	add	x8, x8, x9
	str	x8, [sp]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB0_1
LBB0_4:
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	bl	_sumit
	stur	x0, [x29, #-16]
	adrp	x9, _XARRAY@GOTPAGE
	ldr	x9, [x9, _XARRAY@GOTPAGEOFF]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, #1
	str	x8, [x9]
	ldur	x8, [x29, #-16]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-20]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.comm	_XARRAY,8192,3                  ; @XARRAY
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%ld"

l_.str.1:                               ; @.str.1
	.asciz	"\n\nHello, World!\n\n"

.subsections_via_symbols
