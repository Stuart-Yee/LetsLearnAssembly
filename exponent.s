.globl _start

.section .text

# calculate 2^3

_start:

	movq $2, %rbx
	movq $3, %rcx # counter
	movq $1, %rax # acumulator set to 1

mainloop:
	addq $0, %rcx # adding sets the flags for rcx
	
	jz complete # jump to complete if rcx is 0
	
	mulq %rbx

	decq %rcx
		
	jmp mainloop

complete:
	movq %rax, %rdi
	movq $60, %rax
	syscall
	

