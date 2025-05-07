INCLUDE 'EMU8086.INC'
ORG 100h

.MODEL SMALL
.DATA
  arr DB 8, 5, 3, 6, 1        ; Array of 5 elements
  len DB 5                   ; Length of array

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CL, len              ; Load array length into CX
    LEA SI, arr              ; Load address of array into SI

PRINT_LOOP:
    MOV AL, [SI]             ; Get current element
    ADD AL, 30h              ; Convert to ASCII
    MOV DL, AL
    MOV AH, 02h
    INT 21h                  ; Print character

    ; Print a space after each number
    MOV DL, ' '
    MOV AH, 02h
    INT 21h

    INC SI                   ; Move to next array element
    LOOP PRINT_LOOP          ; Repeat until CX = 0

    ; Exit program
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
