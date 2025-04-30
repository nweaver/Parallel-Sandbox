	.arch armv8-a
	.file	"parallel_tests_to_assembly.cpp"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, %function
_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
.LFB4655:
	.cfi_startproc
	cbz	w2, .L2
	cmp	w2, 1
	beq	.L3
	cmp	w2, 2
	beq	.L8
.L5:
	mov	w0, 0
	ret
	.p2align 2,,3
.L2:
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
	str	x1, [x0]
	mov	w0, 0
	ret
	.p2align 2,,3
.L3:
	str	x1, [x0]
	mov	w0, 0
	ret
	.p2align 2,,3
.L8:
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	b	.L5
	.cfi_endproc
.LFE4655:
	.size	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .-_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.align	2
	.p2align 4,,11
	.type	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, %function
_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
.LFB4649:
	.cfi_startproc
	cbz	w2, .L10
	cmp	w2, 1
	beq	.L11
	cmp	w2, 2
	beq	.L15
.L13:
	mov	w0, 0
	ret
	.p2align 2,,3
.L10:
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
	add	x1, x1, 16
	str	x1, [x0]
	mov	w0, 0
	ret
	.p2align 2,,3
.L11:
	str	x1, [x0]
	mov	w0, 0
	ret
	.p2align 2,,3
.L15:
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	b	.L13
	.cfi_endproc
.LFE4649:
	.size	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .-_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.align	2
	.p2align 4,,11
	.type	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, %function
_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
.LFB4643:
	.cfi_startproc
	cbz	w2, .L17
	cmp	w2, 1
	beq	.L18
	cmp	w2, 2
	beq	.L22
.L20:
	mov	w0, 0
	ret
	.p2align 2,,3
.L17:
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
	add	x1, x1, 32
	str	x1, [x0]
	mov	w0, 0
	ret
	.p2align 2,,3
.L18:
	str	x1, [x0]
	mov	w0, 0
	ret
	.p2align 2,,3
.L22:
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	b	.L20
	.cfi_endproc
.LFE4643:
	.size	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .-_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"Matrix<T> parallel_multiply2(Matrix<T>&, Matrix<T>&) [with T = float]"
	.align	3
.LC1:
	.string	"matrix.hpp"
	.align	3
.LC2:
	.string	"a._size == b._size"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E9_M_invokeERKSt9_Any_data, %function
_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E9_M_invokeERKSt9_Any_data:
.LFB4652:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	ldp	x2, x1, [x0]
	ldr	x1, [x1, 8]
	ldr	x0, [x2, 8]
	cmp	x0, x1
	bne	.L27
	mul	x0, x0, x0
	mov	x1, 2305843009213693950
	cmp	x0, x1
	bhi	.L25
	lsl	x0, x0, 2
	bl	_Znam
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	mov	x1, 4
	b	_ZdlPvm
.L27:
	.cfi_restore_state
	adrp	x3, .LC0
	adrp	x1, .LC1
	adrp	x0, .LC2
	add	x3, x3, :lo12:.LC0
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC2
	mov	w2, 122
	bl	__assert_fail
.L25:
	bl	__cxa_throw_bad_array_new_length
	.cfi_endproc
.LFE4652:
	.size	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E9_M_invokeERKSt9_Any_data
	.section	.rodata.str1.8
	.align	3
.LC3:
	.string	"Matrix<T> Matrix<T>::operator*(Matrix<T>&) [with T = float]"
	.align	3
.LC4:
	.string	"_size == b._size"
	.align	3
.LC5:
	.string	"T& Matrix<T>::operator()(size_t, size_t) [with T = float; size_t = long unsigned int]"
	.align	3
.LC6:
	.string	"row < _size"
	.align	3
.LC7:
	.string	"column < _size"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E9_M_invokeERKSt9_Any_data, %function
_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E9_M_invokeERKSt9_Any_data:
.LFB4639:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	ldr	x20, [x0, 8]
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	ldr	x21, [x0]
	ldr	x0, [x20, 8]
	ldr	x19, [x21, 8]
	cmp	x19, x0
	bne	.L45
	mul	x0, x19, x19
	mov	x1, 2305843009213693950
	cmp	x0, x1
	bhi	.L30
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x5, [x21, 8]
	cbz	x5, .L31
	ldp	x12, x9, [x20]
	lsl	x14, x19, 2
	ldr	x13, [x21]
	mov	x7, x0
	mov	x8, 0
	mov	x6, 0
	lsl	x11, x9, 2
	.p2align 3,,7
.L32:
	add	x10, x13, x8, lsl 2
	mov	x2, x12
	mov	x1, 0
	.p2align 3,,7
.L39:
	movi	v0.2s, #0
	mov	x4, x2
	mov	x3, 0
	.p2align 3,,7
.L35:
	ldr	s1, [x10, x3, lsl 2]
	cmp	x3, x9
	beq	.L36
	cmp	x1, x9
	beq	.L37
	ldr	s2, [x4]
	add	x3, x3, 1
	add	x4, x4, x11
	fmadd	s0, s1, s2, s0
	cmp	x3, x5
	bne	.L35
	cmp	x6, x19
	beq	.L36
	cmp	x19, x1
	beq	.L37
	str	s0, [x7, x1, lsl 2]
	add	x1, x1, 1
	add	x2, x2, 4
	cmp	x1, x5
	bne	.L39
	add	x6, x6, 1
	add	x7, x7, x14
	add	x8, x8, x5
	cmp	x6, x5
	bne	.L32
.L31:
	ldp	x19, x20, [sp, 16]
	mov	x1, 4
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPvm
.L36:
	.cfi_restore_state
	adrp	x3, .LC5
	adrp	x1, .LC1
	adrp	x0, .LC6
	add	x3, x3, :lo12:.LC5
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC6
	mov	w2, 78
	bl	__assert_fail
.L37:
	adrp	x3, .LC5
	adrp	x1, .LC1
	adrp	x0, .LC7
	add	x3, x3, :lo12:.LC5
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC7
	mov	w2, 79
	bl	__assert_fail
.L45:
	adrp	x3, .LC3
	adrp	x1, .LC1
	adrp	x0, .LC4
	add	x3, x3, :lo12:.LC3
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC4
	mov	w2, 84
	bl	__assert_fail
.L30:
	bl	__cxa_throw_bad_array_new_length
	.cfi_endproc
.LFE4639:
	.size	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt14_Function_baseD2Ev
	.type	_ZNSt14_Function_baseD2Ev, %function
_ZNSt14_Function_baseD2Ev:
.LFB1270:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1270
	ldr	x3, [x0, 16]
	cbz	x3, .L52
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x1, x0
	mov	w2, 3
	mov	x29, sp
	blr	x3
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L52:
	ret
	.cfi_endproc
.LFE1270:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt14_Function_baseD2Ev,"aG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
.LLSDA1270:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1270-.LLSDACSB1270
.LLSDACSB1270:
.LLSDACSE1270:
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.size	_ZNSt14_Function_baseD2Ev, .-_ZNSt14_Function_baseD2Ev
	.weak	_ZNSt14_Function_baseD1Ev
	.set	_ZNSt14_Function_baseD1Ev,_ZNSt14_Function_baseD2Ev
	.section	.text._ZN6MatrixIfED2Ev,"axG",@progbits,_ZN6MatrixIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN6MatrixIfED2Ev
	.type	_ZN6MatrixIfED2Ev, %function
_ZN6MatrixIfED2Ev:
.LFB4477:
	.cfi_startproc
	ldr	x0, [x0]
	cbz	x0, .L55
	mov	x1, 4
	b	_ZdlPvm
	.p2align 2,,3
.L55:
	ret
	.cfi_endproc
.LFE4477:
	.size	_ZN6MatrixIfED2Ev, .-_ZN6MatrixIfED2Ev
	.weak	_ZN6MatrixIfED1Ev
	.set	_ZN6MatrixIfED1Ev,_ZN6MatrixIfED2Ev
	.section	.rodata._Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_.str1.8,"aMS",@progbits,1
	.align	3
.LC8:
	.string	"Matrix<T> parallel_multiply(Matrix<T>&, Matrix<T>&) [with T = float]"
	.section	.text._Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_,"axG",@progbits,_Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_
	.type	_Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_, %function
_Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_:
.LFB4487:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x21, x0
	ldr	x19, [x0, 8]
	ldr	x0, [x1, 8]
	cmp	x19, x0
	bne	.L74
	mul	x0, x19, x19
	mov	x20, x1
	mov	x1, 2305843009213693950
	cmp	x0, x1
	bhi	.L59
	mov	x22, x8
	lsl	x0, x0, 2
	bl	_Znam
	mov	x8, x0
	stp	x0, x19, [x22]
	ldr	x4, [x21, 8]
	cbz	x4, .L57
	ldp	x11, x2, [x20]
	lsl	x13, x19, 2
	ldr	x12, [x21]
	mov	x10, 0
	mov	x9, 0
	lsl	x6, x2, 2
	.p2align 3,,7
.L61:
	mov	x7, x11
	add	x5, x12, x10, lsl 2
	mov	x3, 0
	.p2align 3,,7
.L68:
	movi	v0.2s, #0
	mov	x1, x7
	mov	x0, 0
	.p2align 3,,7
.L64:
	ldr	s1, [x5, x0, lsl 2]
	cmp	x2, x0
	beq	.L65
	cmp	x3, x2
	beq	.L66
	ldr	s2, [x1]
	add	x0, x0, 1
	add	x1, x1, x6
	fmadd	s0, s1, s2, s0
	cmp	x4, x0
	bne	.L64
	cmp	x19, x9
	beq	.L65
	cmp	x19, x3
	beq	.L66
	str	s0, [x8, x3, lsl 2]
	add	x3, x3, 1
	add	x7, x7, 4
	cmp	x4, x3
	bne	.L68
	add	x9, x9, 1
	add	x8, x8, x13
	add	x10, x10, x4
	cmp	x4, x9
	bne	.L61
.L57:
	mov	x0, x22
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L65:
	.cfi_restore_state
	adrp	x3, .LC5
	adrp	x1, .LC1
	adrp	x0, .LC6
	add	x3, x3, :lo12:.LC5
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC6
	mov	w2, 78
	bl	__assert_fail
.L66:
	adrp	x3, .LC5
	adrp	x1, .LC1
	adrp	x0, .LC7
	add	x3, x3, :lo12:.LC5
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC7
	mov	w2, 79
	bl	__assert_fail
.L74:
	adrp	x3, .LC8
	adrp	x1, .LC1
	adrp	x0, .LC2
	add	x3, x3, :lo12:.LC8
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC2
	mov	w2, 104
	bl	__assert_fail
.L59:
	bl	__cxa_throw_bad_array_new_length
	.cfi_endproc
.LFE4487:
	.size	_Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_, .-_Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E9_M_invokeERKSt9_Any_data, %function
_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E9_M_invokeERKSt9_Any_data:
.LFB4646:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	adrp	x2, :got:__stack_chk_guard
	mov	x1, x0
	mov	x29, sp
	ldr	x2, [x2, #:got_lo12:__stack_chk_guard]
	add	x8, sp, 24
	ldr	x0, [x0]
	ldr	x3, [x2]
	str	x3, [sp, 40]
	mov	x3, 0
	ldr	x1, [x1, 8]
	bl	_Z17parallel_multiplyIfE6MatrixIT_ERS2_S3_
	ldr	x0, [sp, 24]
	cbz	x0, .L75
	mov	x1, 4
	bl	_ZdlPvm
.L75:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L82
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L82:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE4646:
	.size	_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB4923:
	.cfi_startproc
	mov	x7, 45279
	mov	x1, x0
	add	x6, x0, 1816
	mov	x3, x0
	movk	x7, 0x9908, lsl 16
	.p2align 3,,7
.L85:
	ldp	x4, x5, [x3]
	ldr	x2, [x3, 3176]
	bfi	x4, x5, 0, 31
	eor	x2, x2, x4, lsr 1
	tst	x4, 1
	eor	x4, x2, x7
	csel	x2, x4, x2, ne
	str	x2, [x3], 8
	cmp	x6, x3
	bne	.L85
	mov	x5, 45279
	add	x6, x0, 3168
	movk	x5, 0x9908, lsl 16
	.p2align 3,,7
.L87:
	ldr	x3, [x1, 1816]
	add	x1, x1, 8
	ldr	x4, [x1, 1816]
	ldr	x2, [x1, -8]
	bfi	x3, x4, 0, 31
	eor	x2, x2, x3, lsr 1
	tst	x3, 1
	eor	x3, x2, x5
	csel	x2, x3, x2, ne
	str	x2, [x1, 1808]
	cmp	x6, x1
	bne	.L87
	ldr	x4, [x0]
	mov	x3, 45279
	ldr	x2, [x0, 4984]
	movk	x3, 0x9908, lsl 16
	ldr	x1, [x0, 3168]
	str	xzr, [x0, 4992]
	bfi	x2, x4, 0, 31
	eor	x1, x1, x2, lsr 1
	tst	x2, 1
	eor	x2, x1, x3
	csel	x1, x2, x1, ne
	str	x1, [x0, 4984]
	ret
	.cfi_endproc
.LFE4923:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.rodata._ZN6MatrixIfE9randomizeEv.str1.8,"aMS",@progbits,1
	.align	3
.LC9:
	.string	"default"
	.section	.text._ZN6MatrixIfE9randomizeEv,"axG",@progbits,_ZN6MatrixIfE9randomizeEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN6MatrixIfE9randomizeEv
	.type	_ZN6MatrixIfE9randomizeEv, %function
_ZN6MatrixIfE9randomizeEv:
.LFB4632:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4632
	mov	x12, 10112
	sub	sp, sp, x12
	.cfi_def_cfa_offset 10112
	adrp	x2, :got:__stack_chk_guard
	adrp	x1, .LC9
	add	x1, x1, :lo12:.LC9
	mov	x3, 5104
	stp	x29, x30, [sp]
	.cfi_offset 29, -10112
	.cfi_offset 30, -10104
	mov	x29, sp
	ldr	x2, [x2, #:got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 16]
	ldr	w4, [x1]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -10096
	.cfi_offset 20, -10088
	.cfi_offset 21, -10080
	.cfi_offset 22, -10072
	add	x19, sp, x3
	add	x3, x19, 16
	ldr	x5, [x2]
	str	x5, [sp, 10104]
	mov	x5, 0
	str	w4, [sp, 5120]
	mov	x4, 7
	str	x4, [sp, 5112]
	add	x4, sp, 4096
	ldr	w2, [x1, 3]
	str	x3, [sp, 5104]
	add	x21, sp, 104
	mov	x20, x0
	mov	x1, x19
	strb	wzr, [x4, 1031]
	mov	x0, x21
	str	w2, [x3, 3]
.LEHB0:
	bl	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE0:
	ldr	x0, [sp, 5104]
	add	x1, x19, 16
	cmp	x0, x1
	beq	.L98
	ldr	x1, [sp, 5120]
	add	x1, x1, 1
	bl	_ZdlPvm
.L98:
	mov	x0, x21
.LEHB1:
	bl	_ZNSt13random_device9_M_getvalEv
.LEHE1:
	uxtw	x1, w0
	mov	x0, 35173
	add	x3, x19, 8
	mov	x2, 1
	movk	x0, 0x6c07, lsl 16
	str	x1, [sp, 5104]
	b	.L102
	.p2align 2,,3
.L119:
	add	x3, x3, 8
.L102:
	eor	x1, x1, x1, lsr 30
	madd	w1, w1, w0, w2
	add	x2, x2, 1
	str	x1, [x3]
	cmp	x2, 624
	bne	.L119
	ldr	x0, [x20, 8]
	str	x2, [sp, 10096]
	mov	x22, 0
	mul	x0, x0, x0
	cbz	x0, .L107
	str	x25, [sp, 64]
	.cfi_offset 25, -10048
	mov	x25, 22144
	mov	x0, 4751297606875873280
	movk	x25, 0x9d2c, lsl 16
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -10056
	.cfi_offset 23, -10064
	mov	x24, 4022730752
	str	d10, [sp, 72]
	.cfi_offset 74, -10040
	fmov	d10, x0
	stp	d8, d9, [sp, 80]
	.cfi_offset 73, -10024
	.cfi_offset 72, -10032
	b	.L103
	.p2align 2,,3
.L122:
	fdiv	d8, d8, d9
	fmov	d0, 1.0e+0
	fcmpe	d8, d0
	bge	.L112
	fadd	d8, d8, d0
	fcvt	s8, d8
.L106:
	ldp	x1, x0, [x20]
	mul	x0, x0, x0
	str	s8, [x1, x22, lsl 2]
	add	x22, x22, 1
	cmp	x0, x22
	bls	.L120
.L103:
	movi	d8, #0
	mov	x0, x2
	mov	w23, 2
	fmov	d9, 1.0e+0
	cmp	x2, 623
	bhi	.L121
.L104:
	ldr	x1, [x19, x0, lsl 3]
	add	x2, x0, 1
	str	x2, [sp, 10096]
	ubfx	x0, x1, 11, 32
	eor	x1, x1, x0
	and	x0, x25, x1, lsl 7
	eor	x1, x1, x0
	and	x0, x24, x1, lsl 15
	eor	x1, x1, x0
	eor	x1, x1, x1, lsr 18
	ucvtf	d0, x1
	fmadd	d8, d0, d9, d8
	fmul	d9, d9, d10
	cmp	w23, 1
	beq	.L122
	mov	x0, x2
	mov	w23, 1
	cmp	x2, 623
	bls	.L104
.L121:
	mov	x0, x19
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x0, [sp, 10096]
	b	.L104
.L120:
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
	ldp	d8, d9, [sp, 80]
	.cfi_restore 73
	.cfi_restore 72
	ldr	d10, [sp, 72]
	.cfi_restore 74
.L107:
	mov	x0, x21
	bl	_ZNSt13random_device7_M_finiEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 10104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L123
	mov	x12, 10112
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L112:
	.cfi_def_cfa_offset 10112
	.cfi_offset 19, -10096
	.cfi_offset 20, -10088
	.cfi_offset 21, -10080
	.cfi_offset 22, -10072
	.cfi_offset 23, -10064
	.cfi_offset 24, -10056
	.cfi_offset 25, -10048
	.cfi_offset 29, -10112
	.cfi_offset 30, -10104
	.cfi_offset 72, -10032
	.cfi_offset 73, -10024
	.cfi_offset 74, -10040
	fmov	s8, 2.0e+0
	b	.L106
.L123:
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	stp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_offset 24, -10056
	.cfi_offset 23, -10064
	str	x25, [sp, 64]
	.cfi_offset 25, -10048
	str	d10, [sp, 72]
	.cfi_offset 74, -10040
	stp	d8, d9, [sp, 80]
	.cfi_offset 73, -10024
	.cfi_offset 72, -10032
	bl	__stack_chk_fail
.L113:
	.cfi_restore_state
	mov	x19, x0
	mov	x0, x21
	stp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_offset 24, -10056
	.cfi_offset 23, -10064
	str	x25, [sp, 64]
	.cfi_offset 25, -10048
	str	d10, [sp, 72]
	.cfi_offset 74, -10040
	stp	d8, d9, [sp, 80]
	.cfi_offset 73, -10024
	.cfi_offset 72, -10032
	bl	_ZNSt13random_device7_M_finiEv
	mov	x0, x19
.LEHB2:
	bl	_Unwind_Resume
.L114:
	.cfi_restore_state
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -10056
	.cfi_offset 23, -10064
	str	x25, [sp, 64]
	.cfi_offset 25, -10048
	str	d10, [sp, 72]
	.cfi_offset 74, -10040
	stp	d8, d9, [sp, 80]
	.cfi_offset 73, -10024
	.cfi_offset 72, -10032
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE4632:
	.section	.gcc_except_table._ZN6MatrixIfE9randomizeEv,"aG",@progbits,_ZN6MatrixIfE9randomizeEv,comdat
.LLSDA4632:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4632-.LLSDACSB4632
.LLSDACSB4632:
	.uleb128 .LEHB0-.LFB4632
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L114-.LFB4632
	.uleb128 0
	.uleb128 .LEHB1-.LFB4632
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L113-.LFB4632
	.uleb128 0
	.uleb128 .LEHB2-.LFB4632
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE4632:
	.section	.text._ZN6MatrixIfE9randomizeEv,"axG",@progbits,_ZN6MatrixIfE9randomizeEv,comdat
	.size	_ZN6MatrixIfE9randomizeEv, .-_ZN6MatrixIfE9randomizeEv
	.text
	.align	2
	.p2align 4,,11
	.global	_Z3foov
	.type	_Z3foov, %function
_Z3foov:
.LFB4111:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4111
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	adrp	x0, :got:__stack_chk_guard
	mov	x29, sp
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -144
	.cfi_offset 20, -136
	mov	x19, 1024
	stp	x21, x22, [sp, 32]
	mov	x20, 32
	.cfi_offset 21, -128
	.cfi_offset 22, -120
	add	x21, sp, 88
	stp	x23, x24, [sp, 48]
	add	x22, sp, 104
	.cfi_offset 23, -112
	.cfi_offset 24, -104
	adrp	x24, _ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E9_M_invokeERKSt9_Any_data
	str	x25, [sp, 64]
	.cfi_offset 25, -96
	add	x24, x24, :lo12:_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E9_M_invokeERKSt9_Any_data
	adrp	x25, _ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	mov	x23, 6
	add	x25, x25, :lo12:_ZNSt17_Function_handlerIFvvEZ3foovEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	b	.L125
	.p2align 2,,3
.L133:
	lsl	x20, x20, 1
	mov	x0, 2305843009213693950
	mul	x19, x20, x20
	cmp	x19, x0
	bhi	.L126
.L125:
	lsl	x19, x19, 2
	mov	x0, x19
.LEHB3:
	bl	_Znam
	mov	x1, x0
	mov	x0, x21
	stp	x1, x20, [sp, 88]
	bl	_ZN6MatrixIfE9randomizeEv
.LEHE3:
	mov	x0, x19
.LEHB4:
	bl	_Znam
	mov	x1, x0
	mov	x0, x22
	stp	x1, x20, [sp, 104]
	bl	_ZN6MatrixIfE9randomizeEv
.LEHE4:
	add	x19, sp, 120
	stp	x21, x22, [sp, 120]
	mov	x0, x19
	stp	x25, x24, [sp, 136]
.LEHB5:
	bl	_Z9GetTimingSt8functionIFvvEE
.LEHE5:
	ldr	x3, [sp, 136]
	cbz	x3, .L128
	mov	x1, x19
	mov	x0, x19
	mov	w2, 3
	blr	x3
.L128:
	adrp	x1, _ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E9_M_invokeERKSt9_Any_data
	adrp	x2, _ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	add	x1, x1, :lo12:_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E9_M_invokeERKSt9_Any_data
	add	x2, x2, :lo12:_ZNSt17_Function_handlerIFvvEZ3foovEUlvE0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	mov	x0, x19
	stp	x21, x22, [sp, 120]
	stp	x2, x1, [sp, 136]
.LEHB6:
	bl	_Z9GetTimingSt8functionIFvvEE
.LEHE6:
	ldr	x3, [sp, 136]
	cbz	x3, .L129
	mov	x1, x19
	mov	x0, x19
	mov	w2, 3
	blr	x3
.L129:
	adrp	x1, _ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E9_M_invokeERKSt9_Any_data
	adrp	x2, _ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	add	x1, x1, :lo12:_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E9_M_invokeERKSt9_Any_data
	add	x2, x2, :lo12:_ZNSt17_Function_handlerIFvvEZ3foovEUlvE1_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	mov	x0, x19
	stp	x21, x22, [sp, 120]
	stp	x2, x1, [sp, 136]
.LEHB7:
	bl	_Z9GetTimingSt8functionIFvvEE
.LEHE7:
	ldr	x3, [sp, 136]
	cbz	x3, .L130
	mov	x1, x19
	mov	x0, x19
	mov	w2, 3
	blr	x3
.L130:
	ldr	x0, [sp, 104]
	cbz	x0, .L131
	mov	x1, 4
	bl	_ZdlPvm
.L131:
	ldr	x0, [sp, 88]
	cbz	x0, .L132
	mov	x1, 4
	bl	_ZdlPvm
.L132:
	subs	x23, x23, #1
	bne	.L133
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L163
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 160
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L163:
	.cfi_restore_state
	bl	__stack_chk_fail
.L126:
.LEHB8:
	bl	__cxa_throw_bad_array_new_length
.L143:
.L162:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	_ZNSt14_Function_baseD2Ev
	mov	x0, x22
	bl	_ZN6MatrixIfED1Ev
.L138:
	mov	x0, x21
	bl	_ZN6MatrixIfED1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE8:
.L142:
	b	.L162
.L141:
	b	.L162
.L140:
	mov	x19, x0
	b	.L138
	.cfi_endproc
.LFE4111:
	.section	.gcc_except_table,"a",@progbits
.LLSDA4111:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4111-.LLSDACSB4111
.LLSDACSB4111:
	.uleb128 .LEHB3-.LFB4111
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB4111
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L140-.LFB4111
	.uleb128 0
	.uleb128 .LEHB5-.LFB4111
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L141-.LFB4111
	.uleb128 0
	.uleb128 .LEHB6-.LFB4111
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L142-.LFB4111
	.uleb128 0
	.uleb128 .LEHB7-.LFB4111
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L143-.LFB4111
	.uleb128 0
	.uleb128 .LEHB8-.LFB4111
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE4111:
	.text
	.size	_Z3foov, .-_Z3foov
	.section	.rodata
	.align	3
	.type	_ZTSZ3foovEUlvE_, %object
	.size	_ZTSZ3foovEUlvE_, 14
_ZTSZ3foovEUlvE_:
	.string	"*Z3foovEUlvE_"
	.zero	2
	.type	_ZTSZ3foovEUlvE0_, %object
	.size	_ZTSZ3foovEUlvE0_, 15
_ZTSZ3foovEUlvE0_:
	.string	"*Z3foovEUlvE0_"
	.zero	1
	.type	_ZTSZ3foovEUlvE1_, %object
	.size	_ZTSZ3foovEUlvE1_, 15
_ZTSZ3foovEUlvE1_:
	.string	"*Z3foovEUlvE1_"
	.section	.data.rel.ro,"aw"
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTIZ3foovEUlvE1_, %object
	.size	_ZTIZ3foovEUlvE1_, 16
_ZTIZ3foovEUlvE1_:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTSZ3foovEUlvE1_
	.type	_ZTIZ3foovEUlvE0_, %object
	.size	_ZTIZ3foovEUlvE0_, 16
_ZTIZ3foovEUlvE0_:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTSZ3foovEUlvE0_
	.type	_ZTIZ3foovEUlvE_, %object
	.size	_ZTIZ3foovEUlvE_, 16
_ZTIZ3foovEUlvE_:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTSZ3foovEUlvE_
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
