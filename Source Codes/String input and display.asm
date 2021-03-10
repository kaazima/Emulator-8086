.model small
.data
str db 10,?
.code
.startup
mov dx,offset str
mov ah,0Ah
int 21h 
add dx,02h
mov ah,09h
int 21h
.exit
end