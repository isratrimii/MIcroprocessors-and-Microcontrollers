.model small
.stack 100h
.data
.code
main proc
    
MOV cl, 1
Lavel1:


MOV BL,CL
Lavel2:

MOV AH,2
MOV DL,"*"
INT 21h

DEC BL
CMP BL,0
JNE Lavel2

MOV AH,2
MOV DL,10
INT 21h
MOV DL,13
INT 21h

INC cl
CMP cl,4
JLE Lavel1

main endp
end main
