.model small
.data
cadena1 db 'Programa que realiza +,*,/ de la boleta. ',10,13, '$'  ;10,13 es para que avance al siguiente renglon(salto de linea) 
                                    ;el signo $ es hasta donde va a leer la memoria 


cadena2 db 'ingresados desde el teclado', 10,13, '$'

ingresa1 db 'ingresa el primer valor:', 10,13,'$' 
ingresa2 db 'ingresa el segundo valor:', 10,13,'$'

numero1 db ?
numero2 db 0 
suma_parcial db ?
    

variable1 db ? ;variable indefinida 
variable2 db ? ;vbariables definida con 0
variable3 db ? ;variable indefinida 3
variable4 db ? 
variable5 db ? 
variable6 db ?
variable7 db ?
variable8 db ?
variable9 db ?
variable10 db ?
variable11 db ?
variable12 db ?
variable13 db ?
variable14 db ?
variable15 db ?
variable16 db ? ;mul
variable17 db ?
variable18 db ?
variable19 db ?
variable20 db ?
variable21 db ?
variable22 db ?
variable23 db ? ;mul
variable24 db ?
variable25 db ?


;BOLETA : 2022351346 
 
;SUMA MULTIPLICACION Y DIVISION ENTRE LA SUMA. 
 
.code
mov ax,@data ;es para que apunte hacia el segmento de datos, es como un apuntador 
mov ds,ax ;ds es un segmento de dato, solo me va a decir en que direccion va a apuntar 
mov dx,offset cadena1
mov ah,09
int 21h

;----------------------------------------------------------------------------------------------------------------------
 
;SUMA 
  
mov ah,01
int 21h  ;para ingresar desde teclado 
aas

mov variable7,al ;primero numero en var7

mov variable1,al ;guardando el primer numero en varibale1
mov bl,variable1 ;respaldo de numero en bl 

mov ah,02
mov dl, '+'   ;imprimir el simbolo de suma 
int 21h
 
mov ah,01
int 21h  ;para ingresar desde teclado 
aas                                        

mov variable8,al ;segundo numero en var8

mov variable2,al ;guardando el segundo numero      

add variable2,bl ;sumando los dos valores ingresados
;mov bl,variable2 ;guardando el resultado en bl 
mov al,variable2 ;moviendo resultado a al para usar aam  


aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h     ;primer resultado en var2

;mov 

mov ah,02
mov dl, '+'   ;imprimir el simbolo de suma 
int 21h

mov ah,01
int 21h  ;para ingresar desde teclado 
aas 

mov variable9,al ;tercer numero en var9  -----

mov bl,al ;tercer numero en var3

add variable2,bl ;sumando los dos valores ingresados
;mov bl,variable2 ;guardando el resultado en bl 
mov al,variable2 ;moviendo resultado a al para usar aam  


aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h   ;tercer resultado en var2

;----------------------------------

mov ah,02
mov dl, '+'
int 21h
      
mov ah,01
int 21h  ;para ingresar desde teclado 
aas

mov variable10,al ;caurto numero en var10 -----

mov bl,al ;numero a resrtar en var3
add variable2,bl ;restamos el resultado de la suma con el numero ingresado a restar 
 
mov al,variable2 ;movemos el resultado a al para usar aam 

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h     ;cuarto resultado en var2

;----------------------------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '+'
int 21h
      
mov ah,01
int 21h  ;para ingresar desde teclado 
aas

mov variable11,al ;quinto numero en var11

mov bl,al ;numero a resrtar en var3
add variable2,bl ;restamos el resultado de la suma con el numero ingresado a restar 
 
mov al,variable2 ;movemos el resultado a al para usar aam 

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h     ;quinto resultado en var2

;--------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '+'
int 21h
      
mov ah,01
int 21h  ;para ingresar desde teclado 
aas 

mov variable12,al ;sexto numero en var12

mov bl,al ;numero a resrtar en var3
add variable2,bl ;restamos el resultado de la suma con el numero ingresado a restar 
 
mov al,variable2 ;movemos el resultado a al para usar aam 

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h     ;sexto resultado en var2

;-----------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '+'
int 21h
      
mov ah,01
int 21h  ;para ingresar desde teclado 
aas 

mov variable13,al ;septimo numero en var13

mov bl,al ;numero a resrtar en var3
add variable2,bl ;restamos el resultado de la suma con el numero ingresado a restar 
 
mov al,variable2 ;movemos el resultado a al para usar aam 

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h     ;septimo resultado en var2

;-------------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '+'
int 21h
      
mov ah,01
int 21h  ;para ingresar desde teclado 
aas

mov variable14,al ;octavo numero en var14

mov bl,al ;numero a resrtar en var3
add variable2,bl ;restamos el resultado de la suma con el numero ingresado a restar 
 
mov al,variable2 ;movemos el resultado a al para usar aam 

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h     ;octavo resultado en var2

;-------------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '+'
int 21h
      
mov ah,01
int 21h  ;para ingresar desde teclado 
aas 

mov variable15,al ;noveno numero en var15

mov bl,al ;numero a resrtar en var3
add variable2,bl ;restamos el resultado de la suma con el numero ingresado a restar 
 
mov al,variable2 ;movemos el resultado a al para usar aam 

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h     ;noveno resultado en var2

mov bl,variable2 ;resultado de la suma en var2 y bl
mov variable4,bl ;resultado de la suma en var4 y bl

;Salto de linea
mov ah,02
mov dl,0Dh
int 21h
mov ah,02
mov dl,0Ah
int 21h
;Salto de linea
mov ah,02
mov dl,0Dh
int 21h
mov ah,02
mov dl,0Ah
int 21h
;-------------------------------------------------------------------------------------------------------

;MULTIPLICACION 

;primero numero en var7
mov bl,variable7 ;copiando el primero numero a bl
mov al,variable8 ;copiando el segundo numero en al para multiplicar 


mul bl ;multiplicando el primero por el segundo 
mov variable16,al ;primer resultado parcial de la multip�licacion en var16

;tercer numero en var9
mov bl,variable16 ;el primer resultado a bl
mov al,variable9 ;copiando el tercer numero a b


mul bl
mov variable17,al ;segundo valor parcial en var17

;caurto numero en var10
mov bl,variable17 ;el segundo resultado a bl
mov al,variable10

mul bl
mov variable18,al ;tercer valor parcial en var18 

;quinto numero en var11
mov bl,variable18 ;el segundo resultado a bl         ;BOLETA 2022351346
mov al,variable11

mul bl
mov variable19,al ;cuarto valor parcial en var19

;secto numero en var12
mov bl,variable19 ;el segundo resultado a bl
mov al,variable12

mul bl
mov variable20,al ;quinto valor parcial en var20

;septimo numero en var13
mov bl,variable20 ;el segundo resultado a bl
mov al,variable13

mul bl
mov variable21,al ;quinto valor parcial en var21

;octavo numero en var14
mov bl,variable21 ;el segundo resultado a bl
mov al,variable14

mul bl
mov variable22,al ;quinto valor parcial en var21

;noveno numero en var15
mov bl,variable22 ;el segundo resultado a bl
mov al,variable15

mul bl
mov variable23,al ;quinto valor parcial en var21




mov ah,02
mov dl, '*'
int 21h

mov bl,al

mov ah,01
int 21h  ;para ingresar desde teclado 
aas
;numero en al           

mul bl
mov variable5,al    ;resultado de la multiplicacion en var5

mov al,variable5

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h    ;primer resultado en var5


;-----------------------------------------------------------------------------

mov ah,02
mov dl, '*'
int 21h 

mov bl,al

mov ah,01
int 21h  ;para ingresar desde teclado 
aas
;numero en al           

mul bl
mov variable5,al    ;resultado de la multiplicacion en var5

mov al,variable5

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h    ;segundo resultado en var5

;---------------------------------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '*'
int 21h 

mov bl,al

mov ah,01
int 21h  ;para ingresar desde teclado 
aas
;numero en al           

mul bl
mov variable5,al    ;resultado de la multiplicacion en var5

mov al,variable5

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h    ;tercer resultado en var5

;-------------------------------------------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '*'
int 21h 

mov bl,al

mov ah,01
int 21h  ;para ingresar desde teclado 
aas
;numero en al           

mul bl
mov variable5,al    ;resultado de la multiplicacion en var5

mov al,variable5

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h    ;cuarto resultado en var5

;---------------------------------------------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '*'
int 21h 

mov bl,al

mov ah,01
int 21h  ;para ingresar desde teclado 
aas
;numero en al           

mul bl
mov variable6,al    ;resultado de la multiplicacion en var5

mov al,variable6

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h    ;quinto resultado en var6  aqui se desborda 
                  
;--------------------------------------------------------------------------------------------------------------------------

mov ah,02
mov dl, '*'
int 21h 

mov bl,al

mov ah,01
int 21h  ;para ingresar desde teclado 
aas
;numero en al           

mul bl
mov variable5,al    ;resultado de la multiplicacion en var5

mov al,variable5

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h

mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h    ;sexto resultado en var5                  
;DIVISION 

mov ah,02
mov dl, '/'
int 21h

mov ah,01
int 21h  ;para ingresar desde teclado 
aas
;numero en al

div variable4 

mov al,variable1

aam ;Instruccion para transformar valores en hexadecimal a decimal
mov bx,ax
add bx,3030h
 
mov ah,02
mov dl, '='
int 21h

mov ah,02                    
mov dl,bh
int 21h                              

mov ah,02
mov dl,bl
int 21h 
     
end    
.exit
