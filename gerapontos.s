.text

GERAPONTOS:
	addi sp,sp,-8		#reserva espaco na pilha
	sw ra,0(sp)    		# salva a1
	sw t0,4(sp)

	mv t0,a1		# guarda o valor de N 
GERAUMPONTO:
	beq t0,zero,ENDGERAPONTOS
	jal RANDOMPOINT

	addi sp,sp,-4		#reserva espaco na pilha
	sh a3,2(sp)    		#armanzena x
	sh a4,0(sp)		#armazena y

	addi t0,t0,-1		# decrementa o N
	j GERAUMPONTO

ENDGERAPONTOS: 	slli t0,a1,2
		add sp,sp,t0
		lw ra,0(sp)    		# salva a1
		lw t0,4(sp)
		addi sp,sp,8		#reserva espaco na pilha
	
		jr ra

.include "randompoint.s"