MOV AH,2  		;prepare to display '?'
MOV DL,"?"		
INT 21H			;displayed '?'
    
MOV AH,1		;input fisrt char
INT 21H   
MOV BL,AL 		; move it to BL
    
INT 21H			;input second char
MOV BH,AL		;move it to BH
    
CMP BL,BH		;if(BL<BH) true hoy taile jump kre display function e jbe
JLE DISPLAY

XCHG BL,BH		;jdi cmp function false return kre taile BL,BH exchange kre dbo
       
       
DISPLAY: 

    MOV AH,2	;prepare to display
    MOV DL,0AH  ;line feed
    INT 21H		;printed new line
	
    MOV DL,BL
    INT 21H		;printed firSt char
	
    MOV DL,BH
    INT 21H		;printed second char
 
 
    
;PRINT:   
; ?
;INPUT: YM 
;OUTPUT: MY