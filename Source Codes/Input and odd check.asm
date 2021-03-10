.MODEL small
.STACK
.DATA
.CODE
.STARTUP
mov ah,01h
int 21h
sub al,30h
and al,01h
jnz set
mov dl,30h 
mov ah,02h
int 21h  
.EXIT

set:
mov dl,31h 
mov ah,02h
int 21h
.EXIT
end