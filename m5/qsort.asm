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

       mov ah,4ch              ; ���ܣ��������򣬷���DOSϵͳ
       int 21h                     ; DOS���ܵ���

; ��16������ʾ��si��ʼ��cx���ֽ�
; si-base address��cx-count
disp8 proc near
loop1:
    mov dl, [si]
	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1
	call disp4;�ȴ�ӡ��λ
	mov dl, [si]
 	call disp4;�ٴ�ӡ��λ
	mov dl, 'h'
	mov ah, 02h
	int 21h
	mov dl, ' '
	mov ah, 02h
	int 21h
	inc si
	loop loop1
mov dl,0ah;����
mov ah,02h
int 21h;
    ret
disp8 endp

;��16��������ʾal��4λ 
disp4 proc near
	and dl, 00001111b
	cmp dl, 9
	jle notalpha
	add dl, 7;���ڵ���A��Ҫ����ĸ��ʽ��ӡ
notalpha:
	add dl, 48
	mov ah, 02h
	int 21h
    ret       
disp4 endp


sort proc near
	mov cl, [si]
while:
	cmp si, di
	jnb next1

right:
	cmp si, di
	jnb swap1
	cmp [di], cl
	jb swap1
	dec di
	jmp right
swap1:
	mov ah, [di]
	mov al, [si]
	mov [di], al
	mov [si], ah
left:
	cmp si, di
	jnb swap2
	cmp cl, [si]
	jb swap2
	inc si
	jmp left
swap2:
	mov ah, [di]
	mov al, [si]
	mov [si], ah
 	mov [di], al
	jmp while
next1:
	mov ax, di�����м�λ�÷���
	ret
sort endp








  
;si-��һ�����ĵ�ַ��di-���һ�����ĵ�ַ��cx-�ܹ�������ٸ���
qsort proc near
	
	cmp si, di
	jnb break    ;si>=diʱ�˳�

	push si
	push di
	call sort   
	pop di
	pop si

	push di
	mov di, ax

	dec di
	push si
	push di
	call qsort
	pop di
	pop si
		
	pop di
	mov si, ax
	inc si
	push si
	push di
	call qsort
	pop di
	pop si
break:
        ret
qsort endp

code  ends

      end start