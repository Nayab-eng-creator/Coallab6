.model small
.stack 100h

.data
    msg1 db 'Enter a lowercase character: $'
    msg2 db 'The uppercase character is: $'

.code
main proc
    mov ax, @data
    mov ds, ax 
    mov dx, offset msg1
    mov ah, 09h
    int 21h  
    mov ah, 01h
    int 21h
    mov bl, al  
    
    mov dl, 13  
    mov ah, 02h
    int 21h
    mov dl, 10  
    mov ah, 02h
    int 21h
    mov dx, offset msg2
    mov ah, 09h
    int 21h    
    sub bl, 32 
    mov dl, bl  
    mov ah, 02h  
    int 21h
    mov ah, 4Ch
    int 21h

main endp
end main
