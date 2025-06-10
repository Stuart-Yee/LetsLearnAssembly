# my first program. This is a comment.

.globl _start

.section .text

_start:

	movq $60, %rax # Move quadword integervalue 60 to the rax register
	movq $42, %rdi # set 42 as the exit status code
	syscall
