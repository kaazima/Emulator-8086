.MODEL small
.STACK
.DATA
str1 db "butterfly$"
split db 6h 
str2 db ?
.CODE
.STARTUP

mov si,offset str1
check1:cmp [si],'$'
jz exit1
cmp split,0h 
jz check2
dec split
inc si
jmp check1

check2:
mov dx,ds
mov es,dx
mov di,offset str2

loop1:
movsb 
cmp [si],'$'
jz exit1
loop loop1

exit1:
.EXIT
end
