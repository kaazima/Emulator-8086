.MODEL small
.DATA
.CODE
.STARTUP
mov ah,01h
int 21h
mov dl,al
mov ah,02h
int 21h
.EXIT
end