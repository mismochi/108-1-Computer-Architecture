.data
	str1: .asciiz "The highest score is: "
	str2: .asciiz "Traceback result:\n"
	nextline: .asciiz "\n"
	
#####################################################

# This part may change on different testing data

	seq1: .asciiz "CAAGAATGTCACAGGTCCAT"
	seq2: .asciiz "CAGCATCACACTTA"
	score: .word 0:315	#(len1 + 1) * (len2 + 1)
	dir: .word 0:315


.text
	main:	
		li $s0, 20		#seq 1 length
		li $s1, 14		#seq 2 length
		
#####################################################		
		
# Todo
		la $a0,score
		la $a1,dir
		la $a2,seq1
		la $a3,seq2

		li $s2,0 #i = 0
	loop1:
		addi $t0, $s1, 1 #seq_2_length + 1
		slt $t0, $s2, $t0 #if(s2<seq_2_length + 1) t0=1;
		beq $t0, $zero, loopExit1 #if(t0==0) loopExit1;

		li $s3,0 #j=0
	loop2:
		addi $t0, $s0, 1 #seq_1_length + 1
		slt $t0, $s3, $t0 #if(s3<seq_1_length + 1) t0=1;
		beq $t0, $zero, loopExit2 #if(t0==0) loopExit2;

		beq $s2, $zero, if
		bne $s3, $zero, else
	if:
		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #t0 = width * i
		add $t0, $s3, $t0 #t0 = width * i + j
		sll $t0, $t0, 2
		add $t1, $a0, $t0 #score_base_address + t0
		add $t2, $a1, $t0 #dir_base_address + t0
		sw $zero, 0($t1) #score[i][j] = 0;
		sw $zero, 0($t2) #dir[i][j] = 0;

		addi $s3, $s3, 1 #++j
		j loop2
	else:
		addi $t0, $s2, -1 #i - 1
		addi $t1, $s3, -1 #j - 1
		add $t1, $a2, $t1
		add $t0, $a3, $t0
		lb $t2, 0($t1) #seq2[j - 1]
		lb $t3, 0($t0) #seq1[i - 1]
		bne $t2, $t3, mismatch #if(seq2[i - 1] != seq1[j - 1]) mismatch;

		addi $t0, $s2, -1 #i - 1
		addi $t1, $s3, -1 #j - 1
		addi $t2, $s0, 1 #width = seq_1_length + 1
		mul $t2,$t0,$t2 #width * (i - 1)
		add $t2, $t1, $t2 #width * (i - 1) + (j - 1)
		sll $t2, $t2, 2
		add $t2, $a0, $t2
		lw $s4, 0($t2)
		addi $s4, $s4, 3 #score[i - 1][j - 1] + 3

		addi $t0, $s2, -1 #i - 1
		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$t0,$t1 #width * (i - 1)
		add $t1, $s3, $t1 #width * (i - 1) + j
		sll $t1, $t1, 2
		add $t1, $a0, $t1
		lw $s5, 0($t1)
		addi $s5, $s5, -2 #score[i - 1][j] - 2

		addi $t0, $s3, -1 #j - 1
		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $t0, $t1 #width * i + (j - 1)
		sll $t1, $t1, 2
		add $t1, $a0, $t1
		lw $s6, 0($t1)
		addi $s6, $s6, -2 #score[i][j - 1] - 2
	#match
		slt $t0, $s4, $s5 #if(score[i - 1][j - 1] + 3 < score[i - 1][j] - 2) t0 = 1;
		slt $t1, $s4, $s6 #if(score[i - 1][j - 1] + 3 < score[i][j - 1] - 2) t1 = 1;
		slt $t2, $s4, $zero #if(score[i - 1][j - 1] + 3 < 0) t2 = 1;
		bne $t0, $zero, deletion1
		bne $t1, $zero, deletion1
		bne $t2, $zero, deletion1

		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		sw $s4, 0($t0) #score[i][j] = score[i - 1][j - 1] + 3

		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $s3, $t1 #width * i + j
		sll $t1, $t1, 2
		add $t1, $a1, $t1
		addi $t2, $zero, 3
		sw $t2, 0($t1) #dir[i][j] = 3

		addi $s3, $s3, 1 #++j
		j loop2
	deletion1:
		slt $t0, $s4, $s5 #if(score[i - 1][j - 1] + 3 < score[i - 1][j] - 2) t0 = 1;
		slt $t1, $s5, $s6 #if(score[i - 1][j] - 2 < score[i][j - 1] - 2) t1 = 1;
		slt $t2, $s5, $zero #if(score[i - 1][j] < 0) t2 = 1;
		beq $t0, $zero, insertion1
		bne $t1, $zero, insertion1
		bne $t2, $zero, insertion1

		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		sw $s5, 0($t0) #score[i][j] = score[i - 1][j] - 2

		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $s3, $t1 #width * i + j
		sll $t1, $t1, 2
		add $t1, $a1, $t1
		addi $t2, $zero, 2
		sw $t2, 0($t1) #dir[i][j] = 2

		addi $s3, $s3, 1 #++j
		j loop2
	insertion1:
		slt $t0, $s4, $s6 #if(score[i - 1][j - 1] + 3 < score[i][j - 1] - 2) t0 = 1;
		slt $t1, $s5, $s6 #if(score[i - 1][j] - 2 < score[i][j - 1] - 2) t1 = 1;
		slt $t2, $s6, $zero #if(score[i][j - 1] - 2 < 0) t2 = 1;
		beq $t0, $zero, zero1
		beq $t1, $zero, zero1
		bne $t2, $zero, zero1

		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		sw $s6, 0($t0) #score[i][j] = score[i][j - 1] - 2

		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $s3, $t1 #width * i + j
		sll $t1, $t1, 2
		add $t1, $a1, $t1
		addi $t2, $zero, 1
		sw $t2, 0($t1) #dir[i][j] = 1

		addi $s3, $s3, 1 #++j
		j loop2
	zero1:
		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		sw $zero, 0($t0) #score[i][j] = 0

		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $s3, $t1 #width * i + j
		sll $t1, $t1, 2
		add $t1, $a1, $t1
		sw $zero, 0($t1) #dir[i][j] = 0

		addi $s3, $s3, 1 #++j
		j loop2
	mismatch:
		addi $t0, $s2, -1 #i - 1
		addi $t1, $s3, -1 #j - 1
		addi $t2, $s0, 1 #width = seq_1_length + 1
		mul $t2,$t0,$t2 #width * (i - 1)
		add $t2, $t1, $t2 #width * (i - 1) + (j - 1)
		sll $t2, $t2, 2
		add $t2, $a0, $t2
		lw $s4, 0($t2)
		addi $s4, $s4, -1 #score[i - 1][j - 1] - 1

		addi $t0, $s2, -1 #i - 1
		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$t0,$t1 #width * (i - 1)
		add $t1, $s3, $t1 #width * (i - 1) + j
		sll $t1, $t1, 2
		add $t1, $a0, $t1
		lw $s5, 0($t1)
		addi $s5, $s5, -2 #score[i - 1][j] - 2

		addi $t0, $s3, -1 #j - 1
		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $t0, $t1 #width * i + (j - 1)
		sll $t1, $t1, 2
		add $t1, $a0, $t1
		lw $s6, 0($t1)
		addi $s6, $s6, -2 #score[i][j - 1] - 2
	#mismatch
		slt $t0, $s4, $s5 #if(score[i - 1][j - 1] + 3 < score[i - 1][j] - 2) t0 = 1;
		slt $t1, $s4, $s6 #if(score[i - 1][j - 1] + 3 < score[i][j - 1] - 2) t1 = 1;
		slt $t2, $s4, $zero #if(score[i - 1][j - 1] + 3 < 0) t2 = 1;
		bne $t0, $zero, deletion2
		bne $t1, $zero, deletion2
		bne $t2, $zero, deletion2

		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		sw $s4, 0($t0) #score[i][j] = score[i - 1][j - 1] - 1

		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $s3, $t1 #width * i + j
		sll $t1, $t1, 2
		add $t1, $a1, $t1
		addi $t2, $zero, 3
		sw $t2, 0($t1) #dir[i][j] = 3

		addi $s3, $s3, 1 #++j
		j loop2
	deletion2:
		slt $t0, $s4, $s5 #if(score[i - 1][j - 1] - 1 < score[i - 1][j] - 2) t0 = 1;
		slt $t1, $s5, $s6 #if(score[i - 1][j] - 2 < score[i][j - 1] - 2) t1 = 1;
		slt $t2, $s5, $zero #if(score[i - 1][j] < 0) t2 = 1;
		beq $t0, $zero, insertion2
		bne $t1, $zero, insertion2
		bne $t2, $zero, insertion2

		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		sw $s5, 0($t0) #score[i][j] = score[i - 1][j] - 2

		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $s3, $t1 #width * i + j
		sll $t1, $t1, 2
		add $t1, $a1, $t1
		addi $t2, $zero, 2
		sw $t2, 0($t1) #dir[i][j] = 2

		addi $s3, $s3, 1 #++j
		j loop2
	insertion2:
		slt $t0, $s4, $s6 #if(score[i - 1][j - 1] - 1 < score[i][j - 1] - 2) t0 = 1;
		slt $t1, $s5, $s6 #if(score[i - 1][j] - 2 < score[i][j - 1] - 2) t1 = 1;
		slt $t2, $s6, $zero #if(score[i][j - 1] - 2 < 0) t2 = 1;
		beq $t0, $zero, zero2
		beq $t1, $zero, zero2
		bne $t2, $zero, zero2

		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		sw $s6, 0($t0) #score[i][j] = score[i][j - 1] - 2

		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $s3, $t1 #width * i + j
		sll $t1, $t1, 2
		add $t1, $a1, $t1
		addi $t2, $zero, 1
		sw $t2, 0($t1) #dir[i][j] = 1

		addi $s3, $s3, 1 #++j
		j loop2
	zero2:
		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		sw $zero, 0($t0) #score[i][j] = 0

		addi $t1, $s0, 1 #width = seq_1_length + 1
		mul $t1,$s2,$t1 #width * i
		add $t1, $s3, $t1 #width * i + j
		sll $t1, $t1, 2
		add $t1, $a1, $t1
		sw $zero, 0($t1) #dir[i][j] = 0

		addi $s3, $s3, 1 #++j
		j loop2
	loopExit2:
		addi $s2, $s2, 1 #++i
		j loop1
	loopExit1:

		li $s4,0 #max = 0;
		li $s5,0 #max_i = 0;
		li $s6,0 #max_j = 0;

		li $s2,0 #i = 0
	maxLoop1:
		addi $t0, $s1, 1 #seq_2_length + 1
		slt $t0, $s2, $t0 #if(s2<seq_2_length + 1) t0=1;
		beq $t0, $zero, maxLoopExit1 #if(t0==0) loopExit1;

		li $s3,0 #j=0
	maxLoop2:
		addi $t0, $s0, 1 #seq_1_length + 1
		slt $t0, $s3, $t0 #if(s3<seq_1_length + 1) t0=1;
		beq $t0, $zero, maxLoopExit2 #if(t0==0) loopExit2;

		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s2,$t0 #width * i
		add $t0, $s3, $t0 #width * i + j
		sll $t0, $t0, 2
		add $t0, $a0, $t0
		lw $t1, 0($t0) #score[i][j]

		slt $t2, $s4, $t1 #if(max < score[i][j]) t2 = 1;
		bne $zero, $t2, changeMax #if(t2 != 0) changeMax;

		addi $s3, $s3, 1 #++i;
		j maxLoop2
	changeMax:
		li $s4,0 #max = 0;
		li $s5,0 #max_i = 0;
		li $s6,0 #max_j = 0;
		add $s4, $s4, $t1 #max = 0 + score[i][j]
		add $s5, $s5, $s2 #max_i = 0 + i
		add $s6, $s6, $s3 #max_j = 0 + j

		addi $s3, $s3, 1 #++i;
		j maxLoop2
	maxLoopExit2:
		addi $s2, $s2, 1 #++i;
		j maxLoop1
	maxLoopExit1:
		#print highest score
		li $v0,4
		la $a0,str1
		syscall
		li $v0,1
		move $a0,$s4
		syscall
		li $v0,4
		la $a0,nextline
		syscall
		li $v0,4
		la $a0,nextline
		syscall
		#print traceback
		li $v0,4
		la $a0,str2
		syscall
	while:
		addi $t0, $s0, 1 #width = seq_1_length + 1
		mul $t0,$s5,$t0 #width * max_i
		add $t0, $s6, $t0 #width * max_i + max_j
		sll $t0, $t0, 2
		add $t0, $a1, $t0
		lw $t1, 0($t0) #dir[max_i][max_j]
		beq $zero, $t1, exit #while(dir[max_i][max_j] != 0) switch(dir[max_i][max_j]);
		li $v0,1
		move $a0,$t1
		syscall

		li $t2,3
		bne $t2, $t1, case2
		addi $s5, $s5, -1 #--max_i
		addi $s6, $s6, -1 #--max_j
		j while
	case2:
		li $t2,2
		bne $t2, $t1, case1
		addi $s5, $s5, -1 #--max_i
		j while
	case1:
		li $t2,1
		bne $t2, $t1, exit
		addi $s6, $s6, -1 #--max_j
		j while
	exit:
		li $v0, 10
		syscall
.end main