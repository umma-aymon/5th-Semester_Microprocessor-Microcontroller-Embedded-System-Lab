MOV AH,1	; read character function
INT 21H		; char in AL

CMP	AL,'A'	; char >= ‘A’
JNGE END_IF	; no, exit ? jump if Not Greater Than or Equal to

CMP	AL,'Z'	; char <= ‘Z’
JNLE END_IF	; no, exit  ? jump if Not Less Than or Equal to 

MOV DL,AL	; get char

MOV AH,2	; display character function
INT 21h		; display the character
END_IF:  
