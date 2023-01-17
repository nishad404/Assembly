.MODEL SMALL
.STACK 100H
.DATA
M DB "IN HEXADECIMAL VALUE $"
N DB 10,13,"IN DECIMAL VALUE $" 

.CODE 
   MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,17D        ;C=>65-17=50  ;2
    
    
    MOV AH,9
    LEA DX,N
    INT 21H
    
    ;MOV DL,49D        ;PRINT 1 VALUE 
    MOV AH,2
    MOV DL,49D
    INT 21H
    
    MOV DL,BL
    MOV AH,2
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
   
   
END MAIN
