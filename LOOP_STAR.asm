.MODEL SMALL
.STACK 100H
.DATA
M DB 10,13,"I HACKED YOU $"

.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M
    INT 21H 
    
    MOV AH,2
    MOV DL,0AH               ;NEW LINE 
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV CX,15
    
    LEVEL:
    
   ;MOV DX,"*"
    MOV AH,2
    MOV DX,"*"
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H  
    
    MOV AH,2
    MOV DL,0AH               ;NEW LINE 
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    
    LOOP LEVEL
    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
  
END MAIN
    





