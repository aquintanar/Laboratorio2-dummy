
section .data
mensaje1 db "El numero es capicua",10
len1 equ $-mensaje1 

mensaje2 db "El numero no es capicua",10
len2 equ $-mensaje2

codigo db "91022019";Codigo de alumno

section .bss

codigo_invertido resb 8


section .text
    global _start

_start:

    mov r9,QWORD[codigo] 
    mov r10,QWORD[codigo]
    bswap r9

    xor r10,r9
    jz capicua 


nocapicua:
    mov rax, 1		    ; función a utilizar (printf)
	mov rdi, 1		    ; imprimir en pantalla: 1
	mov rsi, mensaje2	; rsi debe contener el puntero hacia el arreglo a imprimir
	mov rdx, len2		; numero de elementos a imprimir
	syscall	

    jmp exit 


capicua:
    mov rax, 1		    ; función a utilizar (printf)
	mov rdi, 1		    ; imprimir en pantalla: 1
	mov rsi, mensaje1	; rsi debe contener el puntero hacia el arreglo a imprimir
	mov rdx, len1	
    syscall

exit:
    mov rax, 60		; función para terminar la ejecución del programa. Similar a int 21h
	mov rdi, 0
	syscall