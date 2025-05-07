INCLUDE 'EMU8086.INC'
ORG 100h

.MODEL SMALL
.DATA
    arr DB 8, 5, 3, 6, 1     ; Array of 5 elements
.CODE

MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    MOV SI, OFFSET arr       
    MOV CX, 5                
    MOV AL, [SI]             
    MOV BL, AL               
    MOV BH, AL               

    INC SI                   
    DEC CX                   

FIND_LOOP:
    MOV AL, [SI]             

    ; Check for max
    CMP AL, BL
    JLE CHECK_MIN
    MOV BL, AL               

CHECK_MIN:
    CMP AL, BH
    JGE NEXT
    MOV BH, AL               

NEXT:
    INC SI
    LOOP FIND_LOOP

    ; Display max
    PRINT "Maximum Value: "
    MOV DL, BL
    ADD DL, 30h              
    MOV AH, 02h
    INT 21h

    ; Newline
    MOV DL, 13
    MOV AH, 02h
    INT 21h
    MOV DL, 10
    INT 21h

    ; Display min
    PRINT "Minimum Value: "
    MOV DL, BH
    ADD DL, 30h              
    MOV AH, 02h
    INT 21h

    ; Exit
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
