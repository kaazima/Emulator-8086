.MODEL small
.STACK
.DATA
.CODE
.STARTUP 

 mov al,25h
 mov bl,46h
 add al,bl      
 daa            ;ax=0071
 
 mov al,4Bh
 mov bl,21h
 sub al,bl
 das            ;ax=0024
 
end