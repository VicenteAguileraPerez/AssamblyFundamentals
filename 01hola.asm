
COMMENT @
    Create a Hello world in ASSEMBLER by Vicente A.
@

.model small ;genera un espacio de memoria pequeño de un segmento de datos y un segmento de codigo
.stack       ;pila               default stack
.data        ;declara variables   data segment where you can add your variables
    cadena db 'hola mundo$'
.code        ;code segment where you add your logic   

    mov ax, @data    ; segmento data lo cargamos a ax     we pass the data segment to register ax
    mov ds,ax         ; carga en el segmento de datos ax   we pass the AX register to DS 
                      ; DS is called data segment register. It points to the segment of the data used by 
                      ;the running program. You can point this to anywhere you want as long as it contains
                      ; the desired data.
    
    mov ah,09h ; write a string  to STDOUT
    mov ds, offset cadena;lea dx,cadena   ;mov dx, offset cadena
    int 21h; interupción 21 para ejecutar  execute int 21h

    .exit
end ; fin del archivo end of file






















