;second.asm
code segment
      assume cs:code
      
start:        
       mov ah,01h              ; ����Ϊ1���������루�����ԣ�
       int 21h                     ;  DOS���ܵ���

       mov dl, 'a'               ;  dl �ﱣ����Ҫ��ʾ���ַ���ASCII
       mov ah,02h              ; ���ܺ�Ϊ2����ʾdl�е��ַ�
       int 21h                     ;  DOS���ܵ���

       mov ah,4ch              ; ���ܣ�����DOSϵͳ
       int 21h                 ;       DOS���ܵ���
code  ends
      end start