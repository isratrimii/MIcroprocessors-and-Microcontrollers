INCLUDE 'EMU8086.INC'
ORG 100h

.MODEL SMALL
.DATA
  arr DB 8, 5, 3, 6, 1        ; Array of 5 elements
.CODE

MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    MOV SI, OFFSET arr        ; Point SI to the start of the array
    MOV CX, 5                 ; Number of elements
    MOV BL, [SI]              ; Initialize BL with the first element

LoopA:
    CMP [SI], BL              ; Compare current element with BL
    JLE NoUpdate              ; If BL >= [SI], no update
    MOV BL, [SI]              ; Else, update BL with current element

NoUpdate:
    INC SI                    ; Move to next element
    LOOP LoopA                ; Repeat until CX = 0

    ; Display result
    PRINT "Largest Value in Array: "
    ADD BL, 30h               ; Convert to ASCII
    MOV DL, BL
    MOV AH, 02h
    INT 21h

    ; Exit program
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
