.data
	Mymessage : .asciiz "Hello world \n"
.text
	li $v0, 4 		#system call (4) para printar uma string
	la $a0, Mymessage	#la = carregue o endereço da variavel Mymessage
	syscall 		