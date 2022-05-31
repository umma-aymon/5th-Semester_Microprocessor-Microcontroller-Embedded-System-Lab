;TRAFFIC LIGHT CONTROL SYSTEM
;1. DISPLAY RED LIGHT ANTI CLOCK WISE AFTER EVERY 3 SECONDS.

#start=Traffic_Lights.exe#

name "traffic"


mov ax, all_red
out 4, ax 

mov si, offset situation


next:
mov ax, [si]
out 4, ax

; wait 3 seconds (3 million microseconds)
mov     cx, 2Dh    ;    2DC6C0 =3,000,000
mov     dx, 0C6C0h
mov     ah, 86h   ;time function
int     15h       ; time er inturrupt address


add si, 2 ; next situation
cmp si, sit_end
jb  next
mov si, offset situation
jmp next


;                     FEDC_BA98_7654_3210
situation     dw      0000_1000_0110_0001b  ;r-g-r-g
s1            dw      0000_0011_0000_1100b  ;g-r-g-r
s2            dw      0000_1000_0110_0001b  ;r-g-r-g
s3            dw      0000_0011_0000_1100b  ;g-r-g-r
s4            dw      0000_0011_0000_1100b  ;g-r-g-r
sit_end = $


all_red       equ     0000_0010_0100_1001b

