.MODEL small
.STACK
.DATA
str db "Cool$" 
str1 db "Hello$"
str2 dw "Welcome$"
str3 db ?
str4 dw ?
str5 db ?
.CODE
.STARTUP 

check1:
mov dx,ds
mov es,dx
mov si,offset str1
mov di,offset str3
loop1:movsb
cmp [si],'$'
jz check2
loop loop1

check2:
mov si,offset str2
mov di,offset str4          
loop2:movsw
cmp [si],'$'
jz check3
loop loop2 

check3:
mov al,03h
mov di,offset str5
stosb
mov di,offset str5  
mov ax,040Ah
stosw

check4:
mov di,offset str
scasb
cmpsb

check5:
mov di,offset str
mov cx,4
rep stosb
          
end