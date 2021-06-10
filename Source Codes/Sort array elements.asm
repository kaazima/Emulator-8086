.MODEL small
.DATA  
strlen db ? 
msg1 db "Enter array elements:$"
msg2 db "   Sorted array:$"
num dw 10h ?
.CODE
.STARTUP 

;Print message1
mov dx,offset msg1
mov ah,09h
int 21h
    
;Input array elements (Ex:235701269$)  
mov dx,offset num
mov ah,0Ah
int 21h       

;Finding length of array               
mov si,offset num
inc si
mov bh,[si]
mov strlen,bh
dec strlen      

sort:
mov si,offset strlen
mov cl,[si]
dec cl  

next1:
mov ch, cl
mov si,offset num
inc si   
inc si

next2:
mov al,[si]
inc si
cmp al,[si] 
;Change jc to jnc to sort in descending order
jc next3
xchg al,[si]
dec si
xchg al,[si]
inc si

next3:
dec ch
jnz next2  
dec cl
jnz next1    
       
;Print message2       
mov dx,offset msg2
mov ah,09h
int 21h
        
;Print Sorted array        
mov dx,offset num+2
mov ah,09h
int 21h
       
.EXIT
end
