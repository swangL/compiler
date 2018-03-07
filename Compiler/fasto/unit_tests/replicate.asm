	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function main
main:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$11, $0, 4
# was:	ori	_size_reg_3_, 0, 4
	ori	$10, $0, 4
# was:	ori	_ele_reg_4_, 0, 4
	addi	$11, $11, -1
# was:	addi	_size_reg_3_, _size_reg_3_, -1
	bgez	$11, _safe_lab_5_
# was:	bgez	_size_reg_3_, _safe_lab_5_
	ori	$5, $0, 2
# was:	ori	5, 0, 2
	j	_IllegalArrSizeError_
_safe_lab_5_:
	addi	$11, $11, 1
# was:	addi	_size_reg_3_, _size_reg_3_, 1
	ori	$16, $28, 0
# was:	ori	_letBind_2_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_11_, _size_reg_3_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_11_, _tmp_11_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_11_
	sw	$11, 0($16)
# was:	sw	_size_reg_3_, 0(_letBind_2_)
	addi	$13, $16, 4
# was:	addi	_iter_reg_6_, _letBind_2_, 4
	ori	$14, $0, 0
# was:	ori	_i_reg_7_, 0, 0
_loop_beg_8_:
	sub	$12, $14, $11
# was:	sub	_tmp_reg_10_, _i_reg_7_, _size_reg_3_
	bgez	$12, _loop_end_9_
# was:	bgez	_tmp_reg_10_, _loop_end_9_
	sw	$10, 0($13)
# was:	sw	_ele_reg_4_, 0(_iter_reg_6_)
	addi	$13, $13, 4
# was:	addi	_iter_reg_6_, _iter_reg_6_, 4
	addi	$14, $14, 1
# was:	addi	_i_reg_7_, _i_reg_7_, 1
	j	_loop_beg_8_
_loop_end_9_:
	ori	$10, $0, 0
# was:	ori	_arr_ind_14_, 0, 0
	addi	$11, $16, 4
# was:	addi	_arr_reg_15_, _letBind_2_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_16_, 0(_letBind_2_)
	bgez	$10, _safe_lab_19_
# was:	bgez	_arr_ind_14_, _safe_lab_19_
_error_lab_18_:
	ori	$5, $0, 2
# was:	ori	5, 0, 2
	j	_IllegalArrSizeError_
_safe_lab_19_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_17_, _arr_ind_14_, _size_reg_16_
	bgez	$12, _error_lab_18_
# was:	bgez	_tmp_reg_17_, _error_lab_18_
	sll	$10, $10, 2
# was:	sll	_arr_ind_14_, _arr_ind_14_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_15_, _arr_reg_15_, _arr_ind_14_
	lw	$10, 0($11)
# was:	lw	_tmp_13_, 0(_arr_reg_15_)
# 	ori	_letBind_12_,_tmp_13_,0
	ori	$2, $10, 0
# was:	ori	2, _letBind_12_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$10, $0, 1
# was:	ori	_arr_ind_22_, 0, 1
	addi	$11, $16, 4
# was:	addi	_arr_reg_23_, _letBind_2_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_24_, 0(_letBind_2_)
	bgez	$10, _safe_lab_27_
# was:	bgez	_arr_ind_22_, _safe_lab_27_
_error_lab_26_:
	ori	$5, $0, 2
# was:	ori	5, 0, 2
	j	_IllegalArrSizeError_
_safe_lab_27_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_25_, _arr_ind_22_, _size_reg_24_
	bgez	$12, _error_lab_26_
# was:	bgez	_tmp_reg_25_, _error_lab_26_
	sll	$10, $10, 2
# was:	sll	_arr_ind_22_, _arr_ind_22_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_23_, _arr_reg_23_, _arr_ind_22_
	lw	$10, 0($11)
# was:	lw	_tmp_21_, 0(_arr_reg_23_)
# 	ori	_letBind_20_,_tmp_21_,0
	ori	$2, $10, 0
# was:	ori	2, _letBind_20_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$10, $0, 2
# was:	ori	_arr_ind_30_, 0, 2
	addi	$11, $16, 4
# was:	addi	_arr_reg_31_, _letBind_2_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_32_, 0(_letBind_2_)
	bgez	$10, _safe_lab_35_
# was:	bgez	_arr_ind_30_, _safe_lab_35_
_error_lab_34_:
	ori	$5, $0, 2
# was:	ori	5, 0, 2
	j	_IllegalArrSizeError_
_safe_lab_35_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_33_, _arr_ind_30_, _size_reg_32_
	bgez	$12, _error_lab_34_
# was:	bgez	_tmp_reg_33_, _error_lab_34_
	sll	$10, $10, 2
# was:	sll	_arr_ind_30_, _arr_ind_30_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_31_, _arr_reg_31_, _arr_ind_30_
	lw	$10, 0($11)
# was:	lw	_tmp_29_, 0(_arr_reg_31_)
# 	ori	_letBind_28_,_tmp_29_,0
	ori	$2, $10, 0
# was:	ori	2, _letBind_28_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$11, $0, 3
# was:	ori	_arr_ind_38_, 0, 3
	addi	$10, $16, 4
# was:	addi	_arr_reg_39_, _letBind_2_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_40_, 0(_letBind_2_)
	bgez	$11, _safe_lab_43_
# was:	bgez	_arr_ind_38_, _safe_lab_43_
_error_lab_42_:
	ori	$5, $0, 2
# was:	ori	5, 0, 2
	j	_IllegalArrSizeError_
_safe_lab_43_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_41_, _arr_ind_38_, _size_reg_40_
	bgez	$12, _error_lab_42_
# was:	bgez	_tmp_reg_41_, _error_lab_42_
	sll	$11, $11, 2
# was:	sll	_arr_ind_38_, _arr_ind_38_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_39_, _arr_reg_39_, _arr_ind_38_
	lw	$2, 0($10)
# was:	lw	_tmp_37_, 0(_arr_reg_39_)
# 	ori	_letBind_36_,_tmp_37_,0
# 	ori	2,_letBind_36_,0
	jal	putint
# was:	jal	putint, 2
	ori	$11, $0, 4
# was:	ori	_size_reg_45_, 0, 4
	ori	$10, $0, 1
# was:	ori	_ele_reg_46_, 0, 1
	addi	$11, $11, -1
# was:	addi	_size_reg_45_, _size_reg_45_, -1
	bgez	$11, _safe_lab_47_
# was:	bgez	_size_reg_45_, _safe_lab_47_
	ori	$5, $0, 3
# was:	ori	5, 0, 3
	j	_IllegalArrSizeError_
_safe_lab_47_:
	addi	$11, $11, 1
# was:	addi	_size_reg_45_, _size_reg_45_, 1
	ori	$16, $28, 0
# was:	ori	_letBind_44_, 28, 0
	addi	$12, $11, 3
# was:	addi	_tmp_53_, _size_reg_45_, 3
	sra	$12, $12, 2
# was:	sra	_tmp_53_, _tmp_53_, 2
	sll	$12, $12, 2
# was:	sll	_tmp_53_, _tmp_53_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_53_, _tmp_53_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_53_
	sw	$11, 0($16)
# was:	sw	_size_reg_45_, 0(_letBind_44_)
	addi	$14, $16, 4
# was:	addi	_iter_reg_48_, _letBind_44_, 4
	ori	$12, $0, 0
# was:	ori	_i_reg_49_, 0, 0
_loop_beg_50_:
	sub	$13, $12, $11
# was:	sub	_tmp_reg_52_, _i_reg_49_, _size_reg_45_
	bgez	$13, _loop_end_51_
# was:	bgez	_tmp_reg_52_, _loop_end_51_
	sb	$10, 0($14)
# was:	sb	_ele_reg_46_, 0(_iter_reg_48_)
	addi	$14, $14, 1
# was:	addi	_iter_reg_48_, _iter_reg_48_, 1
	addi	$12, $12, 1
# was:	addi	_i_reg_49_, _i_reg_49_, 1
	j	_loop_beg_50_
_loop_end_51_:
	ori	$10, $0, 0
# was:	ori	_arr_ind_56_, 0, 0
	addi	$11, $16, 4
# was:	addi	_arr_reg_57_, _letBind_44_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_58_, 0(_letBind_44_)
	bgez	$10, _safe_lab_61_
# was:	bgez	_arr_ind_56_, _safe_lab_61_
_error_lab_60_:
	ori	$5, $0, 3
# was:	ori	5, 0, 3
	j	_IllegalArrSizeError_
_safe_lab_61_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_59_, _arr_ind_56_, _size_reg_58_
	bgez	$12, _error_lab_60_
# was:	bgez	_tmp_reg_59_, _error_lab_60_
	sll	$10, $10, 2
# was:	sll	_arr_ind_56_, _arr_ind_56_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_57_, _arr_reg_57_, _arr_ind_56_
	lw	$2, 0($11)
# was:	lw	_tmp_55_, 0(_arr_reg_57_)
# 	ori	_letBind_54_,_tmp_55_,0
# 	ori	2,_letBind_54_,0
	jal	putint
# was:	jal	putint, 2
	ori	$11, $0, 1
# was:	ori	_arr_ind_64_, 0, 1
	addi	$10, $16, 4
# was:	addi	_arr_reg_65_, _letBind_44_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_66_, 0(_letBind_44_)
	bgez	$11, _safe_lab_69_
# was:	bgez	_arr_ind_64_, _safe_lab_69_
_error_lab_68_:
	ori	$5, $0, 3
# was:	ori	5, 0, 3
	j	_IllegalArrSizeError_
_safe_lab_69_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_67_, _arr_ind_64_, _size_reg_66_
	bgez	$12, _error_lab_68_
# was:	bgez	_tmp_reg_67_, _error_lab_68_
	sll	$11, $11, 2
# was:	sll	_arr_ind_64_, _arr_ind_64_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_65_, _arr_reg_65_, _arr_ind_64_
	lw	$2, 0($10)
# was:	lw	_tmp_63_, 0(_arr_reg_65_)
# 	ori	_letBind_62_,_tmp_63_,0
# 	ori	2,_letBind_62_,0
	jal	putint
# was:	jal	putint, 2
	ori	$10, $0, 2
# was:	ori	_arr_ind_72_, 0, 2
	addi	$11, $16, 4
# was:	addi	_arr_reg_73_, _letBind_44_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_74_, 0(_letBind_44_)
	bgez	$10, _safe_lab_77_
# was:	bgez	_arr_ind_72_, _safe_lab_77_
_error_lab_76_:
	ori	$5, $0, 3
# was:	ori	5, 0, 3
	j	_IllegalArrSizeError_
_safe_lab_77_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_75_, _arr_ind_72_, _size_reg_74_
	bgez	$12, _error_lab_76_
# was:	bgez	_tmp_reg_75_, _error_lab_76_
	sll	$10, $10, 2
# was:	sll	_arr_ind_72_, _arr_ind_72_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_73_, _arr_reg_73_, _arr_ind_72_
	lw	$2, 0($11)
# was:	lw	_tmp_71_, 0(_arr_reg_73_)
# 	ori	_letBind_70_,_tmp_71_,0
# 	ori	2,_letBind_70_,0
	jal	putint
# was:	jal	putint, 2
	ori	$10, $0, 3
# was:	ori	_arr_ind_80_, 0, 3
	addi	$11, $16, 4
# was:	addi	_arr_reg_81_, _letBind_44_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_82_, 0(_letBind_44_)
	bgez	$10, _safe_lab_85_
# was:	bgez	_arr_ind_80_, _safe_lab_85_
_error_lab_84_:
	ori	$5, $0, 3
# was:	ori	5, 0, 3
	j	_IllegalArrSizeError_
_safe_lab_85_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_83_, _arr_ind_80_, _size_reg_82_
	bgez	$12, _error_lab_84_
# was:	bgez	_tmp_reg_83_, _error_lab_84_
	sll	$10, $10, 2
# was:	sll	_arr_ind_80_, _arr_ind_80_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_81_, _arr_reg_81_, _arr_ind_80_
	lw	$10, 0($11)
# was:	lw	_tmp_79_, 0(_arr_reg_81_)
# 	ori	_letBind_78_,_tmp_79_,0
	ori	$2, $10, 0
# was:	ori	2, _letBind_78_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $0, 0
# was:	ori	_mainres_1_, 0, 0
# 	ori	2,_mainres_1_,0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000