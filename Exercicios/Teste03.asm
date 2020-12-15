.data
	age: .word 23	#word: instruções, informações que vão para o processador (2-3 bits BASIC UNIT)
	pi: .float 3.14
	nl: .asciiz "\n" #nova linha 
.text
	
	#imprimir um inteiro na tela
	li $v0, 1 	#dizendo para o sistema se preparar para printar um inteiro (1)
	lw $a0, age	#lw: load word (inteiro é uma word)
	syscall 
	
	#nova linha
	li $v0, 4
	la $a0, nl
	syscall
	
	#imprimir um float
	li $v0, 2
	lwc1 $f12, pi #load to processor 1 e tem que usar o f12 seão não funciona
	syscall