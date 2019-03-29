.section .data
x: .word 1
.section .text
.globl  _start
_start:
ldr  r1, =x          @ load the memoryaddress of xinto r1
ldr r1, [r1]        @ load the valuexinto r1
cmp r1,#3           @compare 3 with r1
bgt thenpart	@if r1 bigger than 3,jump to thenpart branch
sub r1,r1,#1    @if r1 is smaller than 3,x=x-1
thenpart:	@thenpart branch
sub r1,r1,#2	@x=x-2
mov r7, #1 @ Program Termination: exit syscall
svc #0  @ Program Termination:wake kernel
.end

