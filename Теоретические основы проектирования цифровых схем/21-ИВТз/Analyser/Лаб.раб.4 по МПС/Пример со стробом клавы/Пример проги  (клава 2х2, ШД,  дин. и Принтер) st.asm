Org 0
mvi a,0c3h
STA 0028h
Lxi h,klava
SHLD 0029h; ���� �������� ������� � �� ������� ���������� �� �����������, ��� ����� �� ������ 0028h
 ; ���� �������� ������� jmp klava ( ��� jmp - C3h)
jmp mmm 
skip 040h

 
; ������� ����� *������*, �12-����� ������, �11-���� ������ �� ������ ������� �������, 
;�22-������ � ����� �������� ������
;�21- ���� ��������
; ���� - ���� ������ �11-05 �12-06 �21-09 �22-0A, ������ RST.5
   
;������ ����� - �����, ��������� � ��. ������ ��������� �����, ���������� � �� � ����� � ������� ������������, 
;�������� �������� � ��������� �� ������ ������������- ������������ �����\������.
;          ������� �����

const finish 80h ;��������� ������� ����������
 
;PP2- �������� ������������ ���������� ������� � ������� ����������,
; lab -����� 1-�� ������� ������, N - ���������� �������� � ������
const N 017h
:mmm
lxi sp,0300h ;��������� ������� �����
; ���� �������� ������� ���������� ����� (����� 8004h), �.�. �� ���� � ����� �� ���������
mvi a,04h
sta 8003h
:m6    ; ������ ������ �� ���������  ���� �����
mvi a,00h
mvi e,01h
sta 8000h ; ����� ���������
mvi d,01h  ; ������ 1-� ������� � ����������
lxi h,lab ; ������ ����� ��.����� 1-�� ������� � ������
:m2 ;������ ����������� 8-� �������� �� ����������
push h

:m
mov a,m 
sta 8001h ;������� ��.���� � �������
inx h ;������������ ����� ��.����� �������
mov a,m
sta 8002h  ;������� ��.���� � �������

mov a,d ;������ ������� ����������� ����-�� �������
 
sta 8000h ;��������� ������� - ������ �����
mov d,a ; ��������� ������� ������� � �������� D, �.�. ������������� ��� ����� ������������

call pp2 ; �������� ������� ����������� � ������� ����������
 
mov a,d ;��������������� �������� ������� ������� ������������� ������� ��� ��������� � ���-finish
cpi finish
jz m5 ;���� 0 ���� �������� ��������� ������ ������� �� ��������� ������ � ���������� 
;�� ����� �� ��������� � 1-� �������, ����� ��������� ������ ���������� � ��������� ������� 
rlc ;����� - ����� �������
mov d,a ; ��������� ����� �������� ������� � D
inx h  ;������������ ����� ��.����� �������� �������
jmp m ;�������� ��� ����������� ���� 8-�� ��������

:m5 ; �������� ������ ���� ����� 
inx h
mvi d,01h
inr e
mov a,e ; ����� �������� �������
cpi N
jz m6 ; ���� 0,������ ������ �� ���������  ���� ����� 
pop h
inx h
inx h 

; ����� �������� ����� ����� ���� ��������� ����� ������������ � ���������� ���������
mvi a,03h
sta 8003h
ei ; �������� ����������, ������ �� INT ����� ���������� �� �����
jmp m2 ;����� �� ��������
; ������ �������� ��� �����������
:lab
dw 0h,0h,0h,0h,0h,0h,0h,0037h,0073h,0436h,0939h,0079h,0007h,0031h,0000h,0031h,0073h,0080h,0006h,0541h,0040h,0939h,0h,0h,0h,0h,0h,0h,0h  ; ������ ��. 13-�
:pp2           ; �������� � �������
mvi a,02h
:m1
dcr a
cpi 00h
jnz m1
mvi a,0h
sta 8000h ; ������� ����������
ret

:klava
push psw
push b
push d
push h

mvi a, 0h
sta 8003h ;����� ����� ������������
jmp prod
:p10 ;����� �� ���
pop h
pop d
pop b
pop psw
ei
ret  
: prod ; ���-������ � ���� ���������� ������� �������
mvi a,04h
sta 8003h; ����� �������� ��������
mvi a,01h
sta 8003h ; ���������� 1-� �����
LDA 8004h ; ������ ������ ��������
ani 03h ; �������� ��� ��������(��� �� ������ ������)
cpi 00h
jnz L1  ;���� �� 0- ���� �� ������� �� 1-� ����� ������, ���� 0- ���������� ��������� �����
mvi a,04h
sta 8003h; ����� �������� �������� 
mvi a,02h
sta 8003h ; ���������� 2-� �����
LDA 8004h ; ������ ������ ��������
ani 03h ; �������� ��� ��������(��� �� ������ ������)
cpi 0h
jnz L2 ;���� �� 0- ���� �� ������� �� 2-� ����� ������
: L1
cpi 01h
jz K11  ;  ���� �� 0
    ; ������ ������ �12 � ������ �.�. ����� �� ������������ 
; �� ������������ ������� �12 - ����� ������

;�������� ��������� �������
lda 8004h
cpi 00h
jz p10 ; ���� 0, ������� ������ � ���������� ���
mvi a,00h
mvi e,01h
sta 8000h ; ����� ���������
mvi d,01h  ; ������ 1-� ������� � ����������
lxi h,text ; ������ ����� ��.����� 1-�� ������� � ������

:p2 ;������ ����������� 8-� �������� �� ����������
push h

:p
mov a,m 
sta 8001h ;������� ��.���� � �������
inx h ;������������ ����� ��.����� �������
mov a,m
sta 8002h  ;������� ��.���� � �������

mov a,d ;������ ������� ����������� ����-�� �������
 
sta 8000h ;��������� ������� - ������ �����
mov d,a ; ��������� ������� ������� � �������� D, �.�. ������������� ��� ����� ������������

call pp2 ; �������� ������� ����������� � ������� ����������
 
mov a,d ;��������������� �������� ������� ������� ������������� ������� ��� ��������� � ���-finish
cpi finish 
jz p5 ;���� 0,����� 8-� �������� ��������, ���� �������� ��������� ������ ������� �� ��������� ������ � ���������� 
;�� ����� �� ��������� � 1-� �������, ����� ��������� ������ ���������� � ��������� ������� 
rlc ;����� - ����� �������
mov d,a ; ��������� ����� �������� ������� � D
inx h  ;������������ ����� ��.����� �������� �������
jmp p ;�������� ��� ����������� ���� 8-�� ��������
:p5 ;  ����� �� �������� 
inx h
mvi d,01h
inr e
mov a,e ; ����� �������� �������
pop h
inx h
inx h 
cpi 0ah
jnz p2 ; ���� 0, ������ �������� �  ���� ��������

mvi a,00h
sta 8000h  ; ����� �������
mvi a,04h
sta 8003h  ;����� �������� �������� (8004h)
pop h
pop d
pop b
pop psw
ei
RET
; ������ �������� ��� �����������
:text
 dw 0h,0h,0h,0h,0h,0h,0h,0930h,006eh,0116h,0436h,0930h,003fh,0939h,0h,0h,0h




:K11 ; �� ���������� ��, ����� T-���-�� ����� ������, L-����� �� ���� ���
const T 8h
mvi L,T
:w
call shag
mov a,L
cpi 0h
jnz w
jmp w1
:shag
mvi a,010h
sta 8002h
mov c,a
call pp2
mov a,c
rlc
mov c,a
sta 8002h
call pp2
mov a,c
rlc
mov c,a
sta 8002h
call pp2
mov a,c
rlc
sta 8002h
call pp2
mov a,c
rlc
sta 8002h
call pp2
dcr L
ret
:w1
mvi a,04h
sta 8003h  ;����� �������� �������� (8004h)
pop h
pop d
pop b
pop psw
ei
ret

:L2
cpi 01h
jz K22  ; ���� �� 0, ������ K21
 
:K21 ; ����� �� ������� data,  ����������  �������� ��� 1, Z-����� �������� � ������
const z 8
mvi l,z
in 0h
ani 80h
cpi 0h
jz f1 ; ���� �� ����� -�����
lxi b,data
:f2
ldax b
out 0h
:f3
in 0h ;��������� ���������� � ������ ����-�� �������
ani 80h
cpi 0h
jz f3 ; ���� 0 �� �����
inx b
dcr l
mov a,l
cpi 0h
jz f1
jmp f2
:f1
mvi a,04h
sta 8003h  ;����� �������� �������� (8004h)
pop h
pop d
pop b
pop psw
ei
ret
 :data 
db 1,2,3,4,5,6,7,8

:K22 ; �������
mvi a,80h
sta 8003h
mvi a,04h
sta 8003h  ;����� �������� �������� (8004h)
pop h
pop d
pop b
pop psw
ei
ret













