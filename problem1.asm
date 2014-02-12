;For Project Euler Problem 1, on 32 bit Windows
;Computes the sum of numbers that are fewer than 1000 and multiples
;of 3 or 5
;This is a basic set counting approach: Find the sum of each set,
;then subtract the intersection
;The arithmetic sequence formula an(n+1)/2 could also be used,
;but this does not require multiplication or division
section .text use32

global _WinMain@16

 _WinMain@16:

 ;result in eax
 ;multiples of 3
 xor eax, eax
 mov ebx, 3
 multthree:
 add eax, ebx
 add ebx, 3
 cmp ebx, 1000
 jl multthree

 ;multiples of 5
 mov ebx, 5
 multfive:
 add eax, ebx
 add ebx, 5
 cmp ebx, 1000
 jl multfive

 ;multiples of 15
 mov ebx, 15
 multfifteen:
 sub eax, ebx
 add ebx, 15
 cmp ebx, 1000
 jl multfifteen

 ret 16