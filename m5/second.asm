;second.asm
code segment
      assume cs:code
      
start:        
       mov ah,07h              ; ���ܣ���������
       int 21h                 ;       DOS���ܵ���

       mov dl, al 
       mov ah,02h              ; ���ܣ���ʾ���
       int 21h                     ;           DOS���ܵ���

       mov ah,4ch              ; ���ܣ�����DOSϵͳ
       int 21h                 ;       DOS���ܵ���
code  ends
      end start