.globl _start
.section .text

# Let's calculate 2^3

_start:
	movq $2, %rbx # base
	movq $3, %rdi # exponent
	movq $0, %rcx # counter
	movq $1, %rax # acumulater

mainloop:
	cmpq %rcx, %rdi
	je complete

	mulq %rbx
	incq %rcx
	jmp mainloop

complete:
	movq %rax, %rdi
	movq $60, %rax
	syscall
	
