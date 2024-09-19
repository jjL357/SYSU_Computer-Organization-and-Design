; add1.asm
; hex adc, jnz

data segment
      cnt     dw 6
      num1 db 99h, 97h, 78h, 69h, 66h, 37h          ; 37h is most significant byte
      num2 db 82h, 85h, 80h, 98h, 98h, 54h
      sum  db 6 dup(0)                  ; reserve 6 bytes
data ends

code segment
          assume cs:code, ds:data



start:
       mov ax, data
       mov ds, ax
       mov cx,[cnt]
       mov al,0
       mov ah,0
       mov si,0
       mov dl,0
       mov dh,0
next:
       mov bx,offset num1
       mov al,[bx+si]
       mov dl,ah
       mov ah,0
       add al,dl
       mov dl,0
       mov bx,offset num2
       mov dl,[bx+si]
       adc ax,dx
       mov bx,offset sum
       mov [bx+si],al
       inc si
       cmp cx,si
       jne next
                                ； coding here

       mov ah,4ch              ; 功能：结束程序，返回DOS系统
       int 21h                     ; DOS功能调用

code  ends
      end start