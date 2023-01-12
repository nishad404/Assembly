.MODEL SMALL
.STACK 100H
.DATA
M DB "HELLO PROGRAMMERS $"
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
    
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    
    
    ADD BL,BH
    SUB BL,48
    MOV CH,BL
    ADD CH,CL
    SUB CH,48
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
       



