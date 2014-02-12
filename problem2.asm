;For Project Euler Problem 2, on 32 bit Windows
;Finds the sum of even Fibonacci numbers whose values do not exceed 4 million
;Count every third Fibonacci number, stopping when value exceeds 4 million

section .text use32

global _WinMain@16

 _WinMain@16:

 xor eax, eax
 mov ebx, 1
 mov ecx, 1
 mov edx, 2
 FibonacciLoop:
 add eax, edx
 mov ebx, edx
 add ebx, ecx
 mov ecx, ebx
 add ecx, edx
 mov edx, ecx
 add edx, ebx
 cmp edx, 4000000
 jl FibonacciLoop 

 ret 16