include irvine32.inc
.data
dArray dword 1, 2, 3, 4
.code
main PROC
 mov ecx , LENGTHOF dArray - 1
 mov esi, OFFSET dArray
 mov eax, 1
LOOP_START:
 mov edx, [esi + 4]
 mov [esi], EDX
 add esi, 4
 LOOP LOOP_START
 mov [esi], eax ; Move 0 to the last element
 ; Display array elements
 mov ecx, LENGTHOF dArray
 mov rsi, OFFSET dArray
DISPLAY_LOOP:
 mov EAX, [ESI]
 call writeint ; Display EAX
 add ESI, 4
 LOOP DISPLAYP_LOOP
 EXIT
main endp