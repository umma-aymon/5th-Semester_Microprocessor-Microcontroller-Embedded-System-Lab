;ID-C181202
;PROBLEM-2->STEP-1
;Anticlockwise display yellow light after every 1 seconds.
#start=Traffic_Lights.exe#
name "traffic"

mov ax, all_red
out 4, ax

mov si, offset situation

next:
mov ax, [si]
out 4, ax

; wait 1 seconds (1 million microseconds)        
mov     cx, 0Fh    ; 000F4240h = 1,000,000  
mov     dx, 4240h
mov     ah, 86h    ;time function
int     15h        ;time er inturrupt address                                                                     
add si, 2          ; next situation
cmp si, sit_end
jb  next
mov si, offset situation
jmp next

;                        FEDC_BA98_7654_3210
situation        dw      0000_0000_0000_0010b
s1               dw      0000_0000_0001_0000b
s2               dw      0000_0000_1000_0000b
s3               dw      0000_0100_0000_0000b
s4               dw      0000_0010_0100_1001b
sit_end = $                         

all_red          equ     0000_0010_0100_1001b