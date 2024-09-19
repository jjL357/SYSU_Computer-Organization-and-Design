;second.asm
code segment
      assume cs:code
      
start:        
       mov ah,01h              ; 功能为1：键盘输入（不回显）
       int 21h                     ;  DOS功能调用

       mov dl, 'a'               ;  dl 里保存了要显示的字符的ASCII
       mov ah,02h              ; 功能号为2：显示dl中的字符
       int 21h                     ;  DOS功能调用

       mov ah,4ch              ; 功能：返回DOS系统
       int 21h                 ;       DOS功能调用
code  ends
      end start