# Simple arithmetic program

.globl _start
.section .text

_start:

	movq $3, %rdi		# 3 is in rdi
	movq %rdi, %rax		# 3 is also in rax
	addq %rdi, %rax		# rax is now 6
	mulq %rdi		# rax is now 18
	movq $2, %rdi		# rdi is now 2
	addq %rdi, %rax		# rax is now 20
	movq $4, %rdi		# rdi is now 4
	mulq %rdi		# rax is now 80
	movq %rax, %rdi		# copying 80 to rdi (this will be the exit code)

	# Set the exit system call number

	movq $60, %rax
	syscall
