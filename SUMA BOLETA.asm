mov ah,01; agregar
int 21h
sub al, 30h
mov bl, al
mov cl, bl

mov ah,02 ; imprimir
mov dl,"+"
int 21h
       
mov ah,01; agregar
int 21h
sub al, 30h
add bl, al
mov ch, al

mov ah, 02
mov dl, '='
int 21h

mov al, bl

aam
mov bx, ax
add bx, 3030h
mov ah, 02
mov dl, bh
int 21h

mov ah, 02
mov dl, bl
int 21h

mov ah,02 ; imprimir
mov dl,"+"
int 21h
       
mov ah,01; agregar
int 21h
sub al, 30h
add bl, al
mov ch, al

mov ah, 02
mov dl, '='
int 21h

mov al, bl

aam
mov bx, ax
add bx, 3030h
mov ah, 02
mov dl, bh
int 21h

mov ah, 02
mov dl, bl
int 21h
