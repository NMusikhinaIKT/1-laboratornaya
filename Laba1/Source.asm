.686
.model flat,stdcall
.stack 100h
.data

x dw -20d ;���������� ����� X
y dw 54d ;���������� ����� Y
z dw -5d ;���������� ����� Z

.code
ExitProcess PROTO STDCALL :DWORD
Start:

xor eax,eax ;������� �������� EAX 
xor ebx,ebx ;������� �������� EBX 
xor ecx,ecx ;������� �������� ECX 
xor edx,edx ;������� �������� EDX 

mov ax,y; �������� � ������� EAX �������� Y
mov bx,z; �������� � ������� EBX �������� Z

not ax
not bx
and ax,00001111b; �������� ������� 4 ��� � Y
and bx,00001111b; �������� ������� 4 ��� � Z

and ax, -20 ; ���������� ��������� � �������
xor ax, bx ; XOR � �������
mov EBX,2 ; ��������
div EBX ; ������� � ������� � ��������� ��������� � EAX

exit:
Invoke ExitProcess,1
End Start