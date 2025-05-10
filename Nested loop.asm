.model small
.stack 100h
.data
.code
main proc         
    mov cl,1
    
lavel1:          
    mov bl,cl
    
lavel2:          
    
    mov ah,2
    mov dl,45    
    int 21h
    
    dec bl
    cmp bl,0
    jne lavel2
    
    
    mov ah,2    
    mov dl,10    
    int 21h      
    mov dl,13    
    int 21h      
    
    inc cl       
    cmp cl,4     
    jle lavel1   
    
main endp
end main
