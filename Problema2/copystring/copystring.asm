section .data
    cadena db "AWA OWO UWU EWE IWI owo uwu ",0
    len1 equ $-cadena



section .bss
    cadena_copia resb 30

section .text
global _start

_start:
    
    mov r10,cadena_copia
    mov r11,cadena

    mov r15,len1
    mov rcx,len1
    mov rbx,0

    ciclo:
        mov r9 ,[r11] 
        mov [r10],r9

        add r10,8
        add r11,8

        sub rcx,8

        cmp rbx,rcx   
        jl ciclo

;SystemCall
    
    mov rax,1
    mov rdi,1
    mov rsi,cadena_copia
    mov rdx,31
    syscall
    


