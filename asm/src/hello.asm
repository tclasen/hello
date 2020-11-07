; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
; To assemble and run:
;
;     nasm -felf64 hello.asm && ld hello.o && ./a.out
; ----------------------------------------------------------------------------------------

						global			_start

						section			.text
_start:			mov					rax, 1
						mov					rdi, 1
print:			mov					rsi, msg
						mov					rdx, msgLen
						syscall
exit:				mov					rax, 60
						xor					rdi, rdi
						syscall

						section			.data
msg:				db					"Hello, from x86_64 NASM!", 0xA
msgLen:			equ					$-msg
