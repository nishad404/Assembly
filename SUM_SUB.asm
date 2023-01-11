.MODEL SMALL
.STACK 100H
.DATA
  A DB "i HACKED YOUR SYATEM $"
  B DB "I ASLO HACKED $"
  C DB "HELLO PROGAMMERS $"
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H 
    
    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV AH,9
    LEA DX,C
    INT 21H
    
    MOV AH,2
    MOV DL,0AH               ;NEW LINE 
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL  
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    ADD BL,BH
    SUB BL,48
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  
END MAIN
    



