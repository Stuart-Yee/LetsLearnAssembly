.globl _start

.section .text

_start:

	mov $60, %rax # set syscall to exit
	jmp do_it

not_it:
	mov $10, %rdi

do_it:
	mov $42, %rdi

	syscall
