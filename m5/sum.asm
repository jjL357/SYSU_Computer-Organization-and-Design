;sum.asm loop/one segment/three data segment/proc
;dos ���ܵ���
data segment
      cnt1 db 4 
      d1 db 10h,35h,52h,61h
      cnt2 db 4 
      d2 db 53h,42h,31h,22h
data ends

code segment
          assume cs:code, ds:data
start:
       mov ax,data
       mov ds, ax

       mov ax, 0
       mov si,0
       mov cx, [cnt1]
       mov bx, offset d1

next:
       add ax,[bx+si]
       inc si
       cmp cx,si
       jnz   next


       mov ah,4ch              ; ���ܣ��������򣬷���DOSϵͳ
       int 21h                     ; DOS���ܵ���
code  ends
      end start