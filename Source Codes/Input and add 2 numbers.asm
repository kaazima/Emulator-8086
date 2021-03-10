.MODEL small
.STACK
.DATA 
num1 db ?
num2 db ? 
num3 db ?
.CODE
.STARTUP
 
;Store value of num1
mov ah,01h
int 21h 
sub al,30h
mov num1,al

;Store value of num2
int 21h 
mov ah,00h  
sub al,30h
mov num2,al

add al,num1
aaa 
add al,30h
add ah,30h
mov dx,offset num3
mov num3,ah
mov num3+1,al
mov num3+2,'$'
 
mov ah,9h
int 21h 
.EXIT
end