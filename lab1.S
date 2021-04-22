.global lab1
.syntax unified
#define _A #3
#define _B #2
#define _C #2
#define _T #10

lab1:
push {lr}
// calculate 
mov r0, _A
mov r1, _B
mov r2, _C
bl test_var
pop {pc}

test_var:
push { r0, r1, lr }
mul r3, r0, r1
cmp r3, _T

ITE GE
orrGE r3, r0, r1
andLT r3, r0, r1

mul r0, r3, r2
pop { r0, r1, r2, pc }

