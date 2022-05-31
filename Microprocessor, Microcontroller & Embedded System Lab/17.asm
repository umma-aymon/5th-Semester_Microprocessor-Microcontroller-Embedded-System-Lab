;ID-C181202
;PROBLEM-2->STEP-2
;Display Green>Red>Yellow in every stoppage. Lit light time gap:2 seconds. From one Stoppage to another stoppage time gap:4 seconds.
#start=Traffic_Lights.exe#
name "traffic2"

green            equ      0000_0100b
red              equ      0000_0001b
yellow           equ      0000_0010b

start:
nop

;0 1 2
mov ax,green
out 4, ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address
                   
mov ax,red
out 4, ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address

mov ax,yellow 
out 4, ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address 


; wait 4 seconds (4 million microseconds)             
mov     cx, 3Dh    ; 003D0900h = 4,000,000
mov     dx, 0900h  
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address
             


;3 4 5
mov ax,green << 3
out 4,ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address
 
mov ax,red << 3
out 4,ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address 

mov ax,yellow << 3
out 4,ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address


; wait 4 seconds (4 million microseconds)             
mov     cx, 3Dh    ; 003D0900h = 4,000,000
mov     dx, 0900h  
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address  

 

;6 7 8
mov ax,green << 6
out 4,ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address

mov ax,red << 6
out 4,ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address

mov ax,yellow << 6
out 4,ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address


; wait 4 seconds (4 million microseconds)             
mov     cx, 3Dh    ; 003D0900h = 4,000,000
mov     dx, 0900h  
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address  
 


;B A 9
mov ax,green << 9
out 4, ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address 

mov ax,red << 9
out 4, ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address

mov ax,yellow << 9
out 4, ax
; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ; 001E8480h = 2,000,000
mov     dx, 8480h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address


; wait 4 seconds (4 million microseconds)             
mov     cx, 3Dh    ; 003D0900h = 4,000,000
mov     dx, 0900h  
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address

jmp start