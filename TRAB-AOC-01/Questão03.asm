#	8x - 4y - 6z RESULTADO EM T7 - x,y,z = 1
.text
	ori $t1, $zero, 1	#t1 = x	
	ori $t2, $zero, 1	#t2 = y
	ori $t3, $zero 1	#t3 = z
	
	# 8x
	sll $t1, $t1, 3		#t1 = 1 x (2x2x2)
	# 4y
	sll $t2, $t2, 2		#t2 = 1 x (2x2)
	# 6z
	ori $t4, $zero, 6
	mult $t4, $t3		#hi-lo = 6($t4) x 1($t3)
	mflo $t3 
	
	# 8x - 4y
	sub $t4, $t1, $t2
	# ... - 6z
	sub $t7, $t4, $t3