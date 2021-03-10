.MODEL small
.STACK
.DATA
num db 05h  
odd db ?
.CODE
.STARTUP
mov al,num
and al,01h
jnz set
mov odd,00h    
.EXIT
set:mov odd,01h
.EXIT
end
