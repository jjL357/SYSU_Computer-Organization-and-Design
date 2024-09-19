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
       
       mov ah,4ch              ; 功能：结束程序，返回DOS系统
       int 21h                     ; DOS功能调用

; 显示：ax => dx（单盘）
move proc near
    	push ax
    	push dx
    
   	mov dl, al;打印source
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
    	mov ah, 02h;打印destination
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
	push dx;将最初的参数入栈
       mov si,1
loop1:
	cmp si, 0;si为0时栈为空
	je break
stack:
	pop dx
	pop cx
	pop bx
	pop ax
	dec si;出栈
	cmp cx, 1
	je startmove;此栈顶参数要移动的盘子数为1时move

	dec cx;n-1,b,a,c
	push bx
	push ax
	push cx
	push dx
	inc si;source=bx,middle=ax,detination=dx,cx=n-1入栈

	push ax;1,a,b,c
	push bx
	mov di, 1
	push di
	push dx
	inc si;source=ax,middle=bx,detination=dx,cx=1入栈
	
	push ax;n-1,a,c,b
	push dx
	push cx
	push bx
	inc si;source=ax,middle=dx,detination=bx,cx=n-1入栈

	jmp loop1
startmove:
	call move
	jmp loop1
break:
       ret
hanoi endp

code  ends
      end start
