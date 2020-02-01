.text
RANDOMPOINT:
	addi sp,sp,-12		#reserva espaco na pilha
	sw a1,0(sp)    		# salva a1
	sw a7,4(sp)
	sw ra,8(sp)
	
	li a1,319		#limite do random x
	li a7,42		#calcula um numero random pro x
	ecall
	mv a3,a0		
	
	li a1,239		#limite do random y
	li a7,42		#calcula um numero random pro y
	ecall
	mv a4,a0

	lw a1,0(sp)    		# salva a1
	lw a7,4(sp)
	lw ra,8(sp)
	addi sp,sp,12		#reserva espaco na pilha
		
	jr ra
