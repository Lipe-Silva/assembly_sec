extern _MessageBoxA
global _main

section .data
    texto db "Jesus Salva",0
    titulo db "Continue Studying",0
section .text

_main:
    push 0 ;uType
    push titulo ;lpCaption
    push texto ;lpText
    push 0 ;hWnd
    call _MessageBoxA