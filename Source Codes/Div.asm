.MODEL small
.STACK
.DATA
.CODE
.STARTUP
 mov bl,3h
 mov ax,7h
 div bl     ;8 bit
 mov dx,1h
 mov cx,0100h
 div cx     ;16 bit
end