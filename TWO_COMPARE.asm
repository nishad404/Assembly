.MODEL SAMLL
.STACK 100H
.DATA
M DB "I HACKED YOUR SYSTEM $"
N DB 10,13,"I AM PROGRAMMER $"
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
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,2
    CMP BL,BH
    JG LEVEL1
    JMP LEVEL2
    
    LEVEL1:
    MOV AH,9
    LEA DX,N
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    LEVEL2:
    MOV AH,9
    LEA DX,N
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
   
END MAIN
    
     




