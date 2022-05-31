MOV CX,80	; number of ‘*’ to display
MOV AH,2	; char display function
MOV DL,'*'	; char to display
TOP:
	INT 21h	; display a star
	LOOP TOP	; repeat 80 times
