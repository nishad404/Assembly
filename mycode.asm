.MODEL SMALL
.STACK 100H
.DATA
     NUM DB ?
     CHAR DB 'A'
     MSG DB "THIS IS HACKER $"
.CODE
 MAIN PROC 
    MOV AX,@DATA     ;VARIABLE ACCESS
    MOV DS,AX 
    
    MOV AH,2
    MOV DL,NUM
    INT 21H 
    
    MOV AH,2
    MOV DL,CHAR
    INT 21H 
    
    
    MOV AH,2
    MOV DL,0AH               ;NEW LINE 
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH,9
    LEA DX,MSG
    INT 21H 
    
    MOV AH,4CH
    INT 21H                 ;RETURN 0
 MAIN ENDP
END MAIN 
    