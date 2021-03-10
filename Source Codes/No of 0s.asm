.MODEL small
.STACK
.DATA
num db 11h
.CODE
.STARTUP
mov bl,00h
mov al,num
mov cx,0008h
loop1: rcl al,1
jb next          //if carry flag is 1
inc bl
next: loop loop1
.EXIT
end
