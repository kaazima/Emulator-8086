.MODEL small
.STACK
.DATA
.CODE
.STARTUP 

 mov al,07h
 mov bl,05h
 add al,bl      
 aaa            ;ax=0102
 
 mov al,35h
 mov bl,38h
 sub al,bl      
 aas            ;ax=0007
 
 mov al,7h
 mov bl,4h
 mul bl         
 aam            ;ax=0208
 
 mov ax,0102h
 aad            ;ax=000C  
 
end