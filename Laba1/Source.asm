.686
.model flat,stdcall
.stack 100h
.data

x dw -20d ;обьявление числа X
y dw 54d ;обьявление числа Y
z dw -5d ;обьявление числа Z

.code
ExitProcess PROTO STDCALL :DWORD
Start:

xor eax,eax ;очистка регистра EAX 
xor ebx,ebx ;очистка регистра EBX 
xor ecx,ecx ;очистка регистра ECX 
xor edx,edx ;очистка регистра EDX 

mov ax,y; загрузка в регистр EAX значение Y
mov bx,z; загрузка в регистр EBX значение Z

not ax
not bx
and ax,00001111b; инверсия младших 4 бит у Y
and bx,00001111b; инверсия младших 4 бит у Z

and ax, -20 ; логическое умножение в формуле
xor ax, bx ; XOR в формуле
mov EBX,2 ; Делитель
div EBX ; деление в формуле и результат находится в EAX

exit:
Invoke ExitProcess,1
End Start