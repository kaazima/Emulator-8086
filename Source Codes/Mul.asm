.MODEL small
.STACK
.DATA
.CODE
.STARTUP
 mov bl,10h
 mov al,1h
 mov cx,1000h
 mul bl     ;ax=al*bl
 mul cx     ;dx ax=ax*cx
end