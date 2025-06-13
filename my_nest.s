.globl _start
.section .text

_start:
	
	movq $0, %rax
	movq $0, %rdi

outer_loop:

	movq $100, %rcx
	cmpq $1000, %rax
	jne inner_loop
	jmp complete

inner_loop:
	incq %rax
	decq %rcx
	jnz outer_loop
	jmp inner_loop

complete:
	movq %rax, %rdi
	movq $60, %rax
	syscall

	
