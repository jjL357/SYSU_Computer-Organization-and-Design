;first.asm
data segment
      s1 db 'Hello World','$'
      num db 0
data ends

code segment
          assume cs:code, ds:data
start:
       mov ax,data
       mov ds, ax
       mov al,num[si]
       mov ah,09h            ; 功能：显示字符串
       mov dx,offset s1    ; ds:dx指向字符串的起始地址
       int 21h                     ; DOS功能调用

      mov ah,4ch              ; 功能：结束程序，返回DOS系统
       int 21h                     ; DOS功能调用
code  ends
      end start