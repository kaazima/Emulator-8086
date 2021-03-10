.MODEL small
.DATA  
temp db ?
strlen db ? 
msg1 db "Enter array elements:$"
msg2 db "Modified array:$"
num dw 10h ?
.CODE
.STARTUP 

mov dx,offset msg1
mov ah,09h
int 21h

mov dx,offset num
mov ah,0Ah
int 21h       

;Finding length of array               
mov si,offset num
inc si
mov bh,[si]
mov strlen,bh
dec strlen
mov ax,0
mov al,strlen
mov ch,2
div ch

mov cx,0h
mov cl,al
mov di,2
inc di     

mov dx,offset msg2
mov ah,09h
int 21h

cube: 
mov bx,num[di]
sub bx,3030h
mov ax,bx
mul bl
mul bx 
aam 
add ax,3030h
mov dx,offset temp 
mov temp,ah
mov temp+1,al 
mov temp+2,'$' 
mov ah,09h
int 21h
add di,2
loop cube

.EXIT
end