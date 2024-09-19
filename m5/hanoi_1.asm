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
;       mov cx, 3
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
move endp

 ; ax =>dx, middle-bx, cx-count of layers
hanoi proc near

	cmp cx, 0
	je break;cx=0ʱ�˳�

	push bx
	push dx
	push cx
	push ax

	mov ax, bx
	mov bx, dx
	mov dx, ax
	dec cx
	pop ax
	push ax
	call hanoi;ax=>bx
	pop ax
	pop cx
	pop dx
	pop bx
	
	call move
	
	push ax
	push bx
	push cx
	push dx

	mov dx, ax
	mov ax, bx
	mov bx, dx
	pop dx
	dec cx
	push dx
	call hanoi;bx=>dx
	pop dx
	pop cx
	pop bx
	pop ax
break:
	
       ret
hanoi endp

code  ends
      end start