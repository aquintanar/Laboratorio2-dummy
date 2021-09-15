section .data

    cadena db "SoyUnaCadena",10
    len1 equ $-cadena


    posicion dd 10

section .bss

    caracter_imprimir resb 1

section .text
global _start

_start:
    mov r9,cadena
    mov r10,len1
    mov r14,[posicion]
    mov r15,0
    ciclo:
        xor rax,rax
        xor rbx,rbx
        xor rdx,rdx


        inc r9
        inc r15
        mov cl,[r9]

        cmp r14,r15
    jnz ciclo

    mov [caracter_imprimir],cl

;SYS_WRITE
    
    mov rax,1
    mov rdi,1
    mov rsi,caracter_imprimir
    mov rdx,1
    syscall

;Terminar programa
    mov rax, 60		; función para terminar la ejecución del programa. Similar a int 21h
	mov rdi, 0
	syscall




