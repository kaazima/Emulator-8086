.MODEL small
.STACK
.DATA
str db "madam$"
.CODE
.STARTUP

mov si,offset str
loop1:cmp [si],'$'
jz exit1
cmp [si],'a'
jnz check   
mov [si],'z'
check:inc si
loop loop1

exit1:
.EXIT
end