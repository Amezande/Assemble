mov ah,01
int 21h

mov ah,02
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

