;For Project Euler Problem 3, on 32 bit Windows
;Find the largest prime factor of a given number
;I don't want to implement a general number sieve
;So I will do something similar to trial division

section .text use32

global _WinMain@16

 _WinMain@16:

 xor edx, edx
 mov eax, 600851475143
 mov 1, ebx

 ;Try every number starting at 1, to see if it is a factor
 FactorLoop:
 mov ecx, eax
 idiv ebx
 cmp edx, 0
 je DoNotReplace
 DoNoReplace

 ret 16