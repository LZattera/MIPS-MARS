.text
	ori $t2, $zero, 521 	# t2 = 521
	ori $t1, $zero, 323	
	nor $t3, $zero, $t1	#t3 = -324
	
	add $t4, $t2, $t3	#t4 = 521 + (-324)
	
	ori $t2, $zero, 211	# t2 = 211
	ori $t1, $zero, 782
	nor $t3, $zero, $t1	# t3 = -783
	
	add $t1, $t2, $t3	# t1 = 211 + (-783)
	
	add $t0, $t4, $t1	# t0 = (521 + (-324)) + (211 + (-783))
	