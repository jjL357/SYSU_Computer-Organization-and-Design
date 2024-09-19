;hanoi.asm

code segment
          assume cs:code
start:
       mov ah, 1
       int 21h
       and al, 0fh
       mov ah,0
       mov cx, ax

       mov dl,0ah
       mov ah,02
       int 21h 

       mov ax, 'A'   ;source
       mov dx, 'C'   ;destination
       mov bx, 'B'   ;middle
	mov si, 0
       call hanoi
       
       mov ah,4ch              ; ���ܣ��������򣬷���DOSϵͳ
       int 21h                     ; DOS���ܵ���

; ��ʾ��ax => dx�����̣�
move proc near
    	push ax
    	push dx
    
   	mov dl, al;��ӡsource
    	mov ah, 02h
    	int 21h
    	mov dl, '='
    	mov ah, 02h
    	int 21h
    	mov dl, '>'
    	mov ah, 02h
    	int 21h
    	pop dx
    	push dx
    	mov ah, 02h;��ӡdestination
    	int 21h
    	mov dl, ' '
    	mov ah, 02h
    	int 21h

    	pop dx
    	pop ax
    	ret

    ret
move endp

 ; ax =>dx, middle-bx, cx-count of layers
hanoi proc near
	push ax
	push bx
	push cx
	push dx;������Ĳ�����ջ
       mov si,1
loop1:
	cmp si, 0;siΪ0ʱջΪ��
	je break
stack:
	pop dx
	pop cx
	pop bx
	pop ax
	dec si;��ջ
	cmp cx, 1
	je startmove;��ջ������Ҫ�ƶ���������Ϊ1ʱmove

	dec cx;n-1,b,a,c
	push bx
	push ax
	push cx
	push dx
	inc si;source=bx,middle=ax,detination=dx,cx=n-1��ջ

	push ax;1,a,b,c
	push bx
	mov di, 1
	push di
	push dx
	inc si;source=ax,middle=bx,detination=dx,cx=1��ջ
	
	push ax;n-1,a,c,b
	push dx
	push cx
	push bx
	inc si;source=ax,middle=dx,detination=bx,cx=n-1��ջ

	jmp loop1
startmove:
	call move
	jmp loop1
break:
       ret
hanoi endp

code  ends
      end start
