; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
msg DB 'My Name is:        Nayab Goher$' 
mee DB 'I am:              20 years old$'
meg DB 'My Birth date:     08/04.2002$'
mry DB 'My Profession is:  Software Enigineering$ '
.code   
main proc
    mov ax,@data
    mov ds,ax  
    mov dl,msg
    mov dx, offset msg
    mov ah,09
    int 21h 
    mov dx,10
    mov ah,2
    int 21h 
    mov dx,13
    mov ah,2
    int 21h 
    mov dl,mee
    mov dx, offset mee
    
    mov ah,09
    int 21h
              
    mov dx,10
    mov ah,2
    int 21h           
    mov dx,13
    mov ah,2
    int 21h
    mov dl,meg
    mov dx, offset meg  
    mov ah,09
    int 21h
    mov dx,10
    mov ah,2
    int 21h 
    mov dx,13
    mov ah,2
    int 21h
    mov dl,mry
    mov dx, offset mry
    mov ah,9
    int 21h
mov ah,4ch
int 21h
main endp
end main


ret

