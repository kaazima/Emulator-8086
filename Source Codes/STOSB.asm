.MODEL small
.STACK
.DATA 
str db 5,?
.CODE
.STARTUP
MOV DX,DS
MOV ES,DX
CLD 
LEA DI,str
ADD DI,1
MOV AL,'B'
MOV CX,5
REP STOSB
end