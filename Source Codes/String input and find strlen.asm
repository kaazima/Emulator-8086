.MODEL small
.STACK
.DATA
str db 10,?
strlen db ?
.CODE
.STARTUP 
mov dx,offset str
mov ah,0Ah
int 21h

mov dl,[str+1]
add dl,30h
sub dl,1
   
mov ah,02h
int 21h
.EXIT
end