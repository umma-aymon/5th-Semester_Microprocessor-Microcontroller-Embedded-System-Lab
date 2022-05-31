MOV AX,50    ;AX=50
MOV BX,2     ;BX=2
MUL BX       ;AX=100 

MOV BX,60    ;BX=60
ADD AX,BX    ;AX=160

MOV CX,AX    ;CX=160

MOV AX,100   ;AX=100
MOV BX,2     ;BX=2
DIV BX       ;AX=50

SUB CX,AX    ;CX=110
MOV BX,40    ;BX=40
SUB CX,BX    ;CX=70

MOV AX,70    ;AX=70    
MOV BX,5     ;BX=5 
DIV BX       ;AX=14
  
ADD CX,AX    ;CX=84