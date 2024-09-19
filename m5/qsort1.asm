;qsort.asm

data segment
      cnt1 dw 8
      d1 db 47h, 58h, 34h, 62h, 13h, 81h, 93h,  70h ; unsigned int
      cnt2 dw 10
      d2 db 67h, 30h, 64h, 69h, 2fh, 81h, 9ah,  78h, 55h, 15h; unsigned int
data ends

code segment
          assume cs:code, ds:data
start:
       mov ax,data
       mov ds, ax
       mov es, ax

       mov si, offset d1
       mov cx, [cnt1]
       mov di, si
       add  di, cx
       dec di
       call qsort
       
       mov si, offset d1
       mov cx, [cnt1]
       call disp8
     
       mov si, offset d2
       mov cx, [cnt2]
       mov di, si
       add  di, cx
       dec di
       call qsort
     
       mov si, offset d2
       mov cx, [cnt2]
       call disp8

       mov ah,4ch              ; 功能：结束程序，返回DOS系统
       int 21h                     ; DOS功能调用

; 用16进制显示从si开始的cx个字节
; si-base address，cx-count
disp8 proc near
loop1:
    mov dl, [si]
	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1
	call disp4;先打印高位
	mov dl, [si]
 	call disp4;再打印低位
	mov dl, 'h'
	mov ah, 02h
	int 21h
	mov dl, ' '
	mov ah, 02h
	int 21h
	inc si
	loop loop1
mov dl,0ah;换行
mov ah,02h
int 21h;
    ret
disp8 endp

;用16进制数显示al低4位 
disp4 proc near
	and dl, 00001111b
	cmp dl, 9
	jle notalpha
	add dl, 7;大于等于A，要以字母形式打印
notalpha:
	add dl, 48
	mov ah, 02h
	int 21h
    ret       
disp4 endp


sort proc near
       mov bx,si
	mov cl, [si]
loop2:
	cmp si, di
	jnb return
       
right:
	cmp si, di
	jnb left
	cmp  [di],cl
	jb left
	dec di
	jmp right
left:
	cmp si, di
	jnb swap1
	cmp [si], cl
	jnbe swap1
	inc si
	jmp left
swap1:
      cmp si ,di
      je swap2
	mov ah, [di]
	mov al, [si]
	mov [si], ah
 	mov [di], al
	jmp loop2
swap2:
       mov ah, [di]
	mov al, [bx]
	mov [bx], ah
 	mov [di], al
return:
	mov ax, di;将中间位置返回
	ret
sort endp








  
;si-第一个数的地址，di-最后一个数的地址，cx-总共排序多少个数
qsort proc near
	cmp si, di
      jnb break    ;若排序的左地址>=右地址，退出排序
       push di
       push si
	
	call sort   ;进行一趟排序
	pop si
	pop di

	push di
	mov di, ax

	dec di
	push si
 	push ax
	call qsort
	pop ax
	pop si
      pop di

      push si
	mov si, ax
	inc si
	
	push di
	call qsort
	pop di
	pop si
break:
        
        ret
qsort endp

code  ends

   
  end start