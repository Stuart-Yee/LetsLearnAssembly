.globl _start

.section .text

_start:

	movq $5000000000, %rcx
	# Setting rcx to 5 Billion	

	movq $60, %rax
	movq $0, %rdi

mainloop:
	decq %rcx
	jnz mainloop

	# This takes almost two seconds.
	# So my CPU can decrement a register 5 Billion times
	# in under 2 seconds

complete:
	movq $60, %rax
	syscall
