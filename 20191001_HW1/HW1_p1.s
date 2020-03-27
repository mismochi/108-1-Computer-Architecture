.data
str1: .asciiz	"Before sorting: \n"
str2: .asciiz	"\nResult:\n"
str3: .asciiz	"\n"
num: .word -1 3 -5 7 -9 2 -4 6 -8 10

.text
main:
	#print initiate
	li $v0, 4
	la $a0, str1
	syscall
	la $a0, num	#a0=num
	la $a1, 10 #array_length=10
	jal prints
	
	#TODO

	move $s2,$a0 #base_address
	move $s3,$a1 #n=array_length
	move $s0,$zero #i=0(initialization for the 1st for-loop)
for1tst:
	slt $t0, $s0, $s3 #if(s0<s3) t0=1;
	beq $t0, $zero, exit1 #if(t0==0) exit1;
	addi $s1, $s0, -1 #j=i-1(initialization for 2nd for-loop)
for2tst:
	slti $t0, $s1, 0  #if(s1<0) t0=1;
	bne $t0, $zero, exit2 #if(t0!=0) exit2;
	sll $t1, $s1, 2 #t1=j*4(2 bits)(since byte address is needed)
	add $t2, $a0, $t1 #t2=base_address+j*4
	addi $t2, $t2, 4
	lw $t3, 0($t2) #t3=v[j]
	lw $t4, 4($t2) #t4=v[j+1]
	slt $t0, $t4, $t3 #if(t4<t3) t0=1;
	beq $t0, $zero, exit2 #if(t0==0) exit2;
	jal swap
	addi $s1, $s1, -1 #--j
	j for2tst
exit2:
	addi $s0, $s0, 1 #++i
	j for1tst #jump to 1st for-loop
exit1:

	#print result
	li $v0, 4
	la $a0, str2
	syscall
	la $a0, num	#a0=num
	la $a1, 10
	jal prints
	
# -----
#  Done, terminate program.
	li	$v0, 10				# terminate
	syscall					# system call

.end main

prints:
	addi $sp, $sp, -16
	sw $s3, 12($sp)
	sw $s2 8($sp)
	sw $s1, 4($sp)
	sw $s0, 0($sp)
	
	move $s0, $zero
	move $s2, $a0
	move $s3, $a1
printloop:
	bge $s0, $s3, printexit
	sll $s1, $s0, 2
	add $t2, $s2, $s1
	lw $t3, 0($t2)
	li $v0, 1 # print_int
	move $a0, $t3
	syscall
	
	li $v0, 4
	la $a0, str3
	syscall 
	
	addi $s0, $s0, 1
	j printloop
printexit:
	lw $s0, 0($sp)
	lw $s1, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	addi $sp, $sp, 16
	jr $ra
swap:
	sll $t1, $s1, 2 #t1=j*4
	add $t1, $a0, $t1
	addi $t1, $t1, 4 #
	lw $t0, 0($t1) #t0=v[t1]
	lw $t2, 4($t1) #t2=v[t1+1]
	sw $t2, 0($t1) #v[t1]=t2
	sw $t0, 4($t1) #v[t1+1]=t0
	jr $ra