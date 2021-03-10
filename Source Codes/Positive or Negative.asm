.MODEL small
.STACK
.DATA
num db -50
.CODE
.STARTUP
mov al,num
rcl al,1 
jb next
mov dl,00h
.EXIT
next: mov dl,01h
.EXIT
end