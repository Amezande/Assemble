mov ah,01
int 21h
sub al,30h
mov bl,al
mov cl,bl ; primer guardado en cl

mov ah,02
mov dl,"+"
int 21h

mov ah,01
int 21h
sub al,30h
add bl,al

mov ah,02
mov dl,"+"
int 21h

mov ah,01
int 21h
sub al,30h
add bl,al

mov ah,02
mov dl,"+"
int 21h

mov ah,01
int 21h
sub al,30h
add bl,al

mov ah,02
mov dl,"+"
int 21h 

mov ah,01
int 21h
sub al,30h
add bl,al
mov ch,al ; ultimo valor agregado

mov ah,02
mov dl,"="
int 21h

mov al,bl ;para que funcione aam tiene qwue estar en el registro al 


aam
mov bx,ax
add bx,3030h
mov ah,02
mov dl,bh
int 21h           

mov ah,02
mov dl,bl
int 21h 

mov ah,02
mov dl,0ah
int 21h 
mov ah,02
mov dl,0dh
int 21h
;________________


mov ah,02
mov dl,"="
int 21h

add ch,cl
mov bl,ch

mov al,bl


aam
mov bx,ax
add bx,3030h
mov ah,02
mov dl,bh
int 21h

mov ah,02
mov dl,bl
int 21h
