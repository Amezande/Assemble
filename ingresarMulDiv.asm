;5: R ex1-4 2-org 3-or ax 3030h 4- mov var,ax 5- 


;Ingresar 10 números, multiplicar esos 5, sumar esos 5, y dividir el numero mayor entre el numero menor

.model small
.data

examen db 'Examen extraordinario hecho con el corazon ',10,13,10,13,'$'                        
titulo db 'Division entre el numero mayor entre el numero menor',10,13,'$' 
seleccion db 'Ingrese 6 valores',10,13, '$'

ingreso db 'Ingrese un valor',10,13, '$' 
pari db 'Es par ',10,13,'$'
impari db 'Es impar ',10,13,'$' 

sum db 'El resultado de la suma es: ',10,13,'$' 
multi db 'El resultado de la multiplicacion es: ',10,13,'$'

rebase db 'El resultado de la multiplicacion supera el 99',10,13,'$'
posrebas db 'Se encuentra en la variable "mult"',10,13,'$'


v1 db 0
v2 db 0 
v3 db 0
v4 db 0
v5 db 0 
v6 db 0
mult dd 1
suma db 0 
divi dw 0

.code
; colores
mov ah, 06
mov bh, 05bh
mov cx, 0000h
mov dx, 184fh
int 10h

inicio: 

     mov ah, 02
    mov dl, 03h    ;Salto de linea
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx, offset examen   ;examen
    mov ah,09
    int 21h 
    
    mov ah, 02
    mov dl, 03h    ;Salto de linea
    int 21h
     
    mov ax,@data
    mov ds,ax
    mov dx, offset titulo   ;Programa
    mov ah,09
    int 21h
    
    mov ah, 02
    mov dl, 0ah
    int 21h 
    
    mov ah, 02
    mov dl, 0dh    ;Salto de linea
    int 21h
   
    mov ax,@data
    mov ds,ax                    ;instruccion
    mov dx, offset seleccion   
    mov ah,09
    int 21h
    
    ;Ingresar 6 numeros
    
    mov ah, 02
    mov dl, 0ah
    int 21h

        mov ah, 9
        lea dx, ingreso
        int 21h ; mostrar
        mov ah, 02
        mov dl, ' '
        int 21h 
        
        mov ah,01      ;valor 1 ingresado
        int 21h
        aas
        mov v1,al 
        
        mov ah, 02
        mov dl, 0ah
        int 21h 
        
        mov ah, 02
        mov dl, 0dh
        int 21h 
        
        mov ah, 9
        lea dx, ingreso
        int 21h ; mostrar
        
        
        mov ah, 02
        mov dl, ' '
        int 21h 
        
        mov ah,01      ;valor 2 ingresado
        int 21h
        aas
        mov v2,al 
        
        mov ah, 02
        mov dl, 0ah
        int 21h 
        
        mov ah, 02
        mov dl, 0dh
        int 21h
        
        mov ah, 9
        lea dx, ingreso
        int 21h ; mostrar
        mov ah, 02
        mov dl, ' '
        int 21h 
        
        mov ah,01      ;valor 3 ingresado
        int 21h
        aas
        mov v3,al 
        
        mov ah, 02
        mov dl, 0ah
        int 21h 
        
        mov ah, 02
        mov dl, 0dh
        int 21h
        
        mov ah, 9
        lea dx, ingreso
        int 21h ; mostrar
        mov ah, 02
        mov dl, ' '
        int 21h 
        
        mov ah,01      ;valor 4 ingresado
        int 21h
        aas
        mov v4,al 
        
        mov ah, 02
        mov dl, 0ah
        int 21h 
        
        mov ah, 02
        mov dl, 0dh
        int 21h
        
        mov ah, 9
        lea dx, ingreso
        int 21h ; mostrar
        mov ah, 02
        mov dl, ' '
        int 21h 
        
        mov ah,01      ;valor 5 ingresado
        int 21h
        aas
        mov v5,al 
        
        mov ah, 02
        mov dl, 0ah
        int 21h 
        
        mov ah, 02
        mov dl, 0dh
        int 21h
        
        mov ah, 9
        lea dx, ingreso
        int 21h ; mostrar
        mov ah, 02
        mov dl, ' '
        int 21h 
        
        mov ah,01      ;valor 6 ingresado
        int 21h
        aas
        mov v6,al 
      ;____________  
        
       ;_________
        mov ah, 02
        mov dl, 0ah
        int 21h 
        
        mov ah, 02
        mov dl, 0dh
        int 21h

        mov ah, 02
        mov dl, 0ah
        int 21h 
        
        mov ah, 02
        mov dl, 0dh    ;Salto de linea
        int 21h
        mov ah, 02
        mov dl, 0ah
        int 21h 
        
        mov ah, 02
        mov dl, 0dh    ;Salto de linea
        int 21h
        
;Comparación  
    comp1:
        xor ax,ax
        xor bx,bx
        mov al,v1
        mov bl,2
        
        div bl
        
        cmp ah,0
        je parv1
        jne imparv1 
    
    comp2:
        xor ax,ax
        xor bx,bx
        mov al,v2
        mov bl,2
        
        div bl
        
        cmp ah,0
        je parv2
        jne imparv2
         
    comp3:
        xor ax,ax
        xor bx,bx
        mov al,v3
        mov bl,2
        
        div bl
        
        cmp ah,0
        je parv3
        jne imparv3
    
    comp4:
        xor ax,ax
        xor bx,bx
        mov al,v4
        mov bl,2
        
        div bl
        
        cmp ah,0
        je parv4
        jne imparv4     
        
    comp5:
        xor ax,ax
        xor bx,bx
        mov al,v5
        mov bl,2
        
        div bl
        
        cmp ah,0
        je parv5
        jne imparv5 
        
    comp6:
        xor ax,ax
        xor bx,bx
        mov al,v6
        mov bl,2
        
        div bl
        
        cmp ah,0
        je parv6
        jne imparv6
        
    ;
    ;  
    
;Par o impar

    parv1:
        xor ax,ax
        xor bx,bx
        mov al, v1
        mov bl,suma
        add al,bl
        mov suma,al
    
        jmp comp2
    
    imparv1:
        xor ax,ax
        xor bx,bx
        mov bl,1
        mov al, v1 
        mul bl 
        
        mov mult,ax
        
        jmp comp2 
        
    parv2:
        xor ax,ax
        xor bx,bx
        mov al, v2
        mov bl,suma
        add al,bl
        mov suma,al
    
        jmp comp3
    
    imparv2:
        xor ax,ax
        xor bx,bx
        mov ax,mult
        mov bl,v2 
        mul bx 
        
        mov mult,ax
        
        jmp comp3   
    
    parv3:
        xor ax,ax
        xor bx,bx
        mov al, v3
        mov bl,suma
        add al,bl
        mov suma,al
    
        jmp comp4
    
    imparv3:
        xor ax,ax
        xor bx,bx
        mov ax,mult
        mov bl,v3 
        mul bx 
        
        mov mult,ax
        
        jmp comp4 
    
    parv4:
        xor ax,ax
        xor bx,bx
        mov al, v4
        mov bl,suma
        add al,bl
        mov suma,al
    
        jmp comp5
    
    imparv4:
        xor ax,ax
        xor bx,bx
        mov ax,mult
        mov bl,v4 
        mul bx 
        
        mov mult,ax
        
        jmp comp5
        
    parv5:
        xor ax,ax
        xor bx,bx
        mov al, v5
        mov bl,suma
        add al,bl
        mov suma,al
    
        jmp comp6
    
    imparv5:
        xor ax,ax
        xor bx,bx
        mov ax,mult
        mov bl,v5 
        mul bx 
        
        mov mult,ax
        
        jmp comp6
        
    parv6:
        xor ax,ax
        xor bx,bx
        mov al, v6
        mov bl,suma
        add al,bl
        mov suma,al
    
        ;jmp comp7
    
    imparv6:
        xor ax,ax
        xor bx,bx
        mov ax,mult
        mov bl,v6 
        mul bx 
        
        mov mult,ax
        
       ; jmp comp7
        
                         
                 
res:

    ;Suma 
    mov ah, 9
    lea dx, sum
    int 21h ; mostrar    
    
    xor ax,ax
    xor bx,bx
    mov al,suma
    aam
    mov bx,ax
    
    add bx,3030h
    
    mov ah, 02
    mov dl, bh
    int 21h
    
    mov ah, 02
    mov dl, bl
    int 21h
    
    mov ah, 02
    mov dl, 0ah
    int 21h 
    
    mov ah, 02
    mov dl, 0dh
    int 21h
    
    
    
    ;Multiplicacion
    mov ah, 9
    lea dx, multi
    int 21h ; mostrar
    
    xor ax,ax
    xor bx,bx
    mov ax,mult
    
    cmp ax,100
    jb resmul
    ja varmul
    
    resmul:
        xor ax,ax
        xor bx,bx
        
        mov ax,mult
        aam
        mov bx,ax
        add bx,3030h
        
        mov ah, 02
        mov dl, bh
        int 21h
    
        mov ah, 02
        mov dl, bl
        int 21h
        
        jmp masmenos
        
    varmul:
        mov ah, 9
        lea dx, rebase
        int 21h ; mostrar
        
        mov ah, 9
        lea dx, posrebas
        int 21h ; mostrar
        
        jmp masmenos
        
    ;comparar que resultado es mayor y cual el menor    
    masmenos:
        mov ax,mult
        mov bl,suma
        
        cmp ax,bx
        ja divmul
        jb divsuma
        
        divmul:
            xor ax,ax
            xor bx,bx
            mov ax,mult
            mov bl,suma
            
            div bl
            
            mov divi,ax
            
        divsuma:
            xor ax,ax
            xor bx,bx
            mov al,suma
            mov bx,mult
            
            div bl
    
            mov divi,ax
    
    
        

.exit    



;mov ah, 02
        ;mov dl, 0ah
        ;int 21h 
        
        ;mov ah, 02
        ;mov dl, 0dh
        ;int 21h
        
        ;mov ah, 9
        ;lea dx, ingreso
        ;int 21h ; mostrar
        ;mov ah, 02
        ;mov dl, ' '
        ;int 21h 
        
        ;mov ah,01      ;valor 7 ingresado
        ;int 21h
        ;aas
        ;mov v7,al 
        
        ;mov ah, 02
        ;mov dl, 0ah
        ;int 21h 
        
        ;mov ah, 02
        ;mov dl, 0dh
        ;int 21h
        
        ;mov ah, 9
        ;lea dx, ingreso
        ;int 21h ; mostrar
        ;mov ah, 02
        ;mov dl, ' '
        ;int 21h 
        
        ;mov ah,01      ;valor 8 ingresado
        ;int 21h
        ;aas
        ;mov v8,al 
        
        ;mov ah, 02
       ; mov dl, 0ah
        ;int 21h 
        
        ;mov ah, 02
        ;mov dl, 0dh
        ;int 21h
        
        ;mov ah, 9
        ;lea dx, ingreso
        ;int 21h ; mostrar
        ;mov ah, 02
        ;mov dl, ' '
        ;int 21h 
        
        ;mov ah,01      ;valor 9 ingresado
        ;int 21h
        ;aas
        ;mov v9,al 
        
        ;mov ah, 02
        ;mov dl, 0ah
        ;int 21h 
        
        ;mov ah, 02
        ;mov dl, 0dh
        ;int 21h
        
       ; mov ah, 9
        ;lea dx, ingreso
        ;int 21h ; mostrar
        ;mov ah, 02
        ;mov dl, ' '
        ;int 21h 
        
        ;mov ah,01      ;valor 10 ingresado
        ;int 21h
        ;aas
        ;mov v10,al   
        
        ;_______________________
        ;comp7:
        ;xor ax,ax
        ;xor bx,bx
        ;mov al,v7
        ;mov bl,2 div blcmp ah,0je parv7jne imparv7 comp8:xor ax,axxor bx,bxmov al,v8 mov bl,2div blcmp ah,0je parv8jne imparv8 comp9: xor ax,axxor bx,bx
        ;mov al,v9 mov bl,2div bl  cmp ah,0 je parv9  jne imparv9 comp10:  xor ax,ax  xor bx,bx  mov al,v10  mov bl,2   div bl  cmp ah,0  je parv10 jne imparv10 
