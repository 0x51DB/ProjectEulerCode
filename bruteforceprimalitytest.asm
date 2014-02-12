;For Project Euler, on 32 bit Windows
;A tool for brute force primality tests
;Slow but it should always return a correct result - - - when it returns
;For an integer n>3, check every integer from 2 to n - 1
;Result in eax: 1 if prime, 0 otherwise

section .text use32

global _WinMain@16

 _WinMain@16:

 ;set up variables
 xor eax, eax
 mov ebx, 2
 
 ;enter the number to be checked here
 mov ecx, 36

 EBX_Loop:

 mov eax, ecx
 xor edx, edx
 idiv ebx
 cmp edx, 0
 je Not_Prime

 inc ebx
 cmp ecx, ebx
 jne EBX_Loop


 Prime:

 mov eax, 1

 ret 16


 Not_Prime:

 xor eax, eax

 ret 16