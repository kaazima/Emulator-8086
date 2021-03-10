.MODEL small
.STACK
.DATA 
vowel db 00h 
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

mov cx,0h
mov cl,strlen
mov si,offset str1
add si,2

check1:    
cmp [si],'a'
jz check2
cmp [si],'e'
jz check2
cmp [si],'i'
jz check2
cmp [si],'o'
jz check2
cmp [si],'u'
jnz check3
check2:
inc vowel
check3:
inc si
loop check1

mov dl,vowel
add dl,30h
mov ah,02h
int 21h
.EXIT
end
