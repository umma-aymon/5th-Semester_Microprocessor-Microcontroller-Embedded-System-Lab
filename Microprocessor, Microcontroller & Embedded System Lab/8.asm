MOV AL,3
CMP AL,1	; AL = 1?
JE 	ODD	    ; yes, display ‘o’
CMP AL,3	; AL = 3?
JE 	ODD	
    ; yes, display ‘o’
CMP AL,2	; AL = 2?
JE 	EVEN	; yes, display ‘e’
CMP AL,4	; AL = 4?
JE 	EVEN	 ; yes, display ‘e’
JMP	END_CASE
ODD:
	MOV DL,'o'	; get ‘o’
	JMP DISPLAY	; go to display
EVEN:	
	MOV	DL,'e'	; get ‘e’
DISPLAY:
	MOV	AH,2	; char display function
	INT 21h	; display character
END_CASE:
