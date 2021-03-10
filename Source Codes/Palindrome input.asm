.MODEL small
.STACK
.DATA      
pal db "Palindrome$"
notpal db "Not a Palindrome$"
strlen db ? 
str1 db 10 ?
.CODE
.STARTUP 

;Input a string

mov dx,offset str1
mov ah,0Ah
int 21h

;Finding length of first string
               
mov si,offset str1
inc si
mov bh,[si]
mov strlen,bh
dec strlen

;Palindrome check

compare:
mov cx,0h
mov cl,strlen
mov dx,ds
mov es,dx
mov si,offset str1
mov di,offset str1
add si,2
add di,2
mov ax,0h
mov al,strlen
dec al
add di,ax

loop1:cmpsb
jnz exit1
dec di
dec di
loop loop1

exit1:cmp cl,0h
mov dx,offset pal
jz exit 
mov dx,offset notpal 

;Output a message

exit:
mov ah,09h
int 21h
.EXIT
end
