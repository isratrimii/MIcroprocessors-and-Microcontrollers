
.model small
.stack 100h
.code

main proc
    mov CL,90 
    print:
    mov ah,2
    mov BL,CL
    mov DL,BL 
    int 21H
    mov DL,10
    int 21h  
    mov DL,13
    int 21h
    dec CL
    cmp CL,65 
    jge print  
    
exit:

main endp
end main  
