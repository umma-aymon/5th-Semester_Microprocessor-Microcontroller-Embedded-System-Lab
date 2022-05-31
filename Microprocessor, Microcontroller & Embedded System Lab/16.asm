; TRAFFIC LIGHT CONTROL SYSTEM
; 3.DISPLAY YELLOW>RED>GREEN IN EVERY STOPAGE AFTER EVERY 2 SECONDS.

#start=Traffic_Lights.exe#

name "traffic"


mov ax, all_red
out 4, ax 

mov si, offset situation


next:
mov ax, [si]
out 4, ax

; wait 2 seconds (2 million microseconds)
mov cx, 1Eh ; 004C4B40h = 2,000,000
mov dx, 8480h
mov ah, 86h   ;time function
int 15h       ; time er inturrupt address


add si, 2 ; next situation
cmp si, sit_end
jb  next
mov si, offset situation
jmp next


;                       FEDC_BA98_7654_3210
situation       dw      0000_0011_0000_1010b  ;y-r-g-r 
s1              dw      0000_1000_0101_0001b  ;r-y-r-g
s2              dw      0000_0010_1000_1100b  ;g-r-y-r
s3              dw      0000_0100_0110_0001b  ;r-g-r-y
s4              dw      0000_0100_0110_0001b  ;r-g-r-y
sit_end = $


all_red          equ     0000_0010_0100_1001b

