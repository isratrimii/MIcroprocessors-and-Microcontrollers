.model small
.stack 100h
.data
.code
main proc        
    mov cl,4
    
lavel1:          
    mov bl,cl
    
lavel2:         
    
    mov ah,2
    mov dl,42    
    int 21h
    
    dec bl
    cmp bl,0
    jne lavel2
    
    
    mov ah,2     
    mov dl,10    
    int 21h      
    mov dl,13    
    int 21h      
    
    dec cl       
    cmp cl,1     
    jge lavel1   
    
main endp
end main
