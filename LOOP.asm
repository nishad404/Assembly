.MODEL SMALL
.STACK 100H
.DATA
    M DB "I HACKED YOUR SYSTEM $"
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        MOV AH,9
        LEA DX,M
        INT 21H
        MOV CX,26
        MOV AH,2
        MOV DL,'A'
        LEVEL1:
        INT 21H
        INC DL 
        LOOP LEVEL1 
        MOV AH,1
        INT 21H
        MOV CL,AL
        MOV AH,2
        MOV DL,CL
        INT 21H
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN
        
        
        


