#SUBTRAÇÃO
.data
	n1: .word 20
	n2: .word 8
.text
	lw $s0, n1	#lw $t0, n1($zero)  ||  s0 = n1
	lw $s1, n1	#lw $t1, n2($zero)  ||  s1 = n2
	
	sub $t0, $s0, $s1	#n1 - n2 (t0 = s0 - s1)
	
	 li $v0, 1
	 move $a0, $t0		#move oq estava em t0 para a0
	 syscall 