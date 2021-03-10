.MODEL small
.STACK
.DATA
num db 04h  
quad db ?
.CODE
.STARTUP
mov al,num
and al,03h
jnz set
mov quad,0FFh    
.EXIT 
set:mov quad,00h
.EXIT
end