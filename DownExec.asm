extern _ShellExecuteA

global _main 

section .data
    par db "/c powershell -Command wget 'https://i.redd.it/oxuyfogwny061.png' -OutFile C:\windows\temp\photo.png",0 ; insert cmd commands here
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