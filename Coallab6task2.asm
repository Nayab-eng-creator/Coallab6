.model small
.stack 100h
.data
msg DB 'The user entered$'
mee DB 'Character$' 

.code   
main proc
  mov ah,01
  int 21h
  mov bx,ax  
  mov dx,10 
  mov ah,2
  int 21h
  mov dx,13 
  mov ah,2
  int 21h
  mov ax,@data
  mov ds,ax
  mov dl,msg
  mov dx,offset msg
  mov ah,9
  int 21h
  mov dx,32 
  mov ah,2
  int 21h
  mov dx,bx
  mov ah,02
  int 21h  
   
  mov dx,32 
  mov ah,2
  int 21h  
   mov dl,mee
  mov dx,offset mee  
  mov ah,9
  int 21h
mov ah,4ch
int 21h
main endp
end main
 
