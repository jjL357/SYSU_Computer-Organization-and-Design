;hanoi.asm

code segment
          assume cs:code
start:
       mov ah, 1;���ݷŵ���al��
       int 21h
       and al, 0fh
       mov ah,0
       mov cx, ax;cx�д����n�����̵�����

       mov dl,0ah
       mov ah,02
       int 21h 

       mov ax, 'A'   ;source
       mov dx, 'C'   ;destination
       mov bx, 'B'   ;middle
       call hanoi
       
       mov ah,4ch              ; ���ܣ��������򣬷���DOSϵͳ
       int 21h                     ; DOS���ܵ���

; ��ʾ��ax => dx�����̣�
move proc near
    	push ax
    	push dx
	mov dl, al
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
	mov ah, 02h
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
		
	push ax
	push bx
	push dx

	cmp cx, 0
	je next;�������ת

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
	call hanoi
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
	call hanoi
	pop dx
	pop cx
	pop bx
	pop ax
next:
	
	pop dx
	pop bx
	pop ax
       ret
hanoi endp

code  ends
      end start
