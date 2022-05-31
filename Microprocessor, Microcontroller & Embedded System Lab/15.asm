; TRAFFIC LIGHT CONTROL SYSTEM
; 2.DISPLAY GREEN LIGHT CLOCK WISE AFTER EVERY 10 SECONDS.

#start=Traffic_Lights.exe#

name "traffic"


mov ax, all_red
out 4, ax 

mov si, offset situation


next:
mov ax, [si]
out 4, ax

; wait 10 seconds (10 million microseconds)
mov     cx, 98h    ;    989680 =10,000,000
mov     dx, 9680h
mov     ah, 86h   ;time function
int     15h       ; time er inturrupt address


add si, 2 ; next situation
cmp si, sit_end
jb  next
mov si, offset situation
jmp next


;                        FEDC_BA98_7654_3210
 situation        dw      0000_0011_0000_1100b  ;g-r-g-r
   s1             dw      0000_1000_0110_0001b  ;r-g-r-g
   s2             dw      0000_0011_0000_1100b  ;g-r-g-r
   s3             dw      0000_1000_0110_0001b  ;r-g-r-g
   s4             dw      0000_1000_0110_0001b  ;r-g-r-g
sit_end = $


all_red          equ     0000_0010_0100_1001b

