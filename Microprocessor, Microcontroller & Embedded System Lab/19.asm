;ID-C181202
;PROBLEM-3
;Given Equation:
;500/2+(40*3)/3-60*4-100/2=0

MOV AX,40   ;ax=40
MOV BX,3    ;bx=3
MUL BX      ;ax=120
DIV BX      ;AX=40

MOV CX,AX   ;CX=40

MOV AX,500  ;AX=500
MOV BX,2    ;BX=2
DIV BX      ;AX=250

ADD CX,AX   ;CX=290  


MOV AX,60   ;AX=60
MOV BX,4    ;BX=4
MUL BX      ;AX=240

SUB CX,AX   ;CX=50    

MOV AX,100  ;AX=100
MOV BX,2    ;BX=2
DIV BX      ;AX=50

SUB CX,AX   ;OUTPUT: CX=0
MOV DX,CX   ;OUTPUT: DX=0

