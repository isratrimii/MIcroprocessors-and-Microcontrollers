INCLUDE 'EMU8086.INC'
org 100h

.model small
.data
  arr db 8,5,3,6,1
.code


main proc

mov ax,@data
mov ds,ax

mov si,offset arr
mov cx,5
mov bl,[si]

LoopA:
cmp [si],bl
jge NoUpdate
mov bl,[si]
 
NoUpdate:
inc si
loop LoopA

print "Smallest Value in Arreay: "
add bl,48
mov dl,bl
mov ah,02h
int 21h

samll:
mov ah,4Ch
int 21h

main endp
end main
