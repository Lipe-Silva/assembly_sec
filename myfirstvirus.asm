extern system

section .text
    global _main

_main:
    push 0x00657865 ;00exe
    push 0x2e636c61 ;.cal
    push 0x6320632f ; c c/
    push 0x20657865 ;  exe
    push 0x2e646d63 ; .cmd
    push esp
    pop eax
    push eax
    mov ebx, 0x76583d30 ; system
    call ebx


    
    