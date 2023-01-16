.MODEL SMALL
.STACK 100H
.DATA
M EQU "2"
N EQU "I HACKED YOU $"
Y DB N
.CODE 
   MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BL,M 
    
    MOV AH,2
    MOV DL,0AH               ;NEW LINE 
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH,2
    MOV DL,M
    INT 21H 
    
    MOV AH,2
    MOV DL,0AH            ;NEW LINE 
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH,9
    LEA DX,Y
    INT 21H
 
            
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
   
END MAIN



