.model small
.stack 100h
.code

main proc
    mov CL,97 
    print:
    mov ah,2
    mov BL,CL
    mov DL,BL 
    int 21H
    mov DL,10
    int 21h  
    mov DL,13
    int 21h
    inc CL
    cmp CL,122 
    jle print  
     
exit:
main endp
end main
