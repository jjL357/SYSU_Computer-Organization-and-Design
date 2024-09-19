;second.asm
code segment
      assume cs:code
      
start:        
       mov ah,07h              ; 功能：键盘输入
       int 21h                 ;       DOS功能调用

       mov dl, al 
       mov ah,02h              ; 功能：显示输出
       int 21h                     ;           DOS功能调用

       mov ah,4ch              ; 功能：返回DOS系统
       int 21h                 ;       DOS功能调用
code  ends
      end start