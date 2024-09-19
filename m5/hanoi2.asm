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
	mov si, 0
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
	push cx
	push dx;��ʼ״̬
	inc si
while:
	cmp si, 0
	je next
one:
	pop dx
	pop cx
	pop bx
	pop ax
	dec si
	cmp cx, 1
	je two

	dec cx
	push bx
	push ax
	push cx
	push dx
	inc si

	push ax
	push bx
	mov di, 1
	push di
	push dx
	inc si
	
	push ax
	push dx
	push cx
	push bx
	inc si

	jmp while
two:
	call move
	jmp while
next:
       ret
hanoi endp

code  ends
      end start
