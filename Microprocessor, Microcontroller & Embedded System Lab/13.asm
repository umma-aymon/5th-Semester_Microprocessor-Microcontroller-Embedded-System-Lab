mov cx,127  ;decimal number of 7f prior number of 80h    
mov bl,0    ;null rakhlam 1 to 10 count er jnno nisi

print:  

    mov ah,2   ;prepare to display 
    inc cx     ;increment cx 
    
    cmp cx,255 ;255 hocche ffh last value  
    ja Exit    ; ja means jump if above//loop shesh hole exit hbe
      
    mov dx,cx     
    int 21h    ;char print krlm 
    
    mov dx,32d ;32d means space        
    int 21h    ;space print ktlm   
    
    jmp Next   ;jmp means uncondiotional jump

Next:  
   
    inc bl      ;10ta char print howar por newline print hbe ota count krar jnno  
    
    cmp bl,10   ;bl==10 hle newline print krbo     
    je newline  ;je means jump if equal
     
    jmp print   ;newline print na krle next char print e jbo
 
newline:
       
    mov ah,2    ;prepare to display
    mov dl,0dh  ;0dh diye next line er first row te cursor jbe  
    int 21h    
    mov dl,0ah  ;0ah mane newline 
    int 21h    
    mov bl,0    ;abr bl 0 kre dilam 1 to 10 count er jnno
    jmp print   ; then print function e chole gelam
  
Exit:  
  


;0ah is for line feed (moves to next output line) & 0dh is for carriage return.
;Carriage return has ASCII value 13 or 0XD & Linefeed has value 10 or 0XA. 
;Carriage return means to return to the beginning of the current line without advancing downward.