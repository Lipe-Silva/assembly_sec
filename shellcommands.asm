extern _ShellExecuteA

global _main 

section .data
    par db "/c mkdir hello",0
    cmd db "cmd",0
    oper db "open",0
section .text
_main:
    push 0 ; ShowCmd
    push 0 ; Directory
    push par ; Parameters
    push cmd; File
    push oper; Operation
    push 0; 
    call _ShellExecuteA