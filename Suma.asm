mov ah,01; agregar
int 21h

mov ah,02 ; imprimir
mov dl,"+"
int 21h
       
mov ah,01
int 21h


mov al,3 
mov ah,7
mov bl,10d
mov bh,37h


add al,bh


sub al,ah; al minuendo, ah sustraendo, para todos los valores earitméticos restarle 30h para poder hacerlos decimal

/*mov ah,01
int 21h

mov ah,02
mov dl,"+"
int 21h
       
mov ah,01
int 21h


mov al,3 
mov ah,7
mov bl,10d
mov bh,37h // para poder suamr en ensabmlador tenemos que convetir


add al,bh 
add ah,al
add bl,al
add bl,5
add bh,38


sub al,ah*/

