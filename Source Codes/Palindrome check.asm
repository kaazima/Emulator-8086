.MODEL small
.STACK
.DATA
str1 db "madam$"
strlen db 0h
pal db 1h
.CODE
.STARTUP

;Finding length of first string

mov si,offset str1
check1:cmp [si],'$'
jz compare
inc strlen
inc si
jmp check1

;Palindrome check

compare:
mov cx,0h
mov cl,strlen
mov dx,ds
mov es,dx
mov si,offset str1
mov di,offset str1
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
jz exit
mov pal,0h
exit:
.EXIT
end
