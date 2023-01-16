.MODEL SMALL
.STACK 100H
.DATA
M DB "UPPER CASE $"
N DB 10,13,"LOWER CASE $"
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
        
        MOV AH,9
        LEA DX,N
        INT 21H
        
        MOV AH,2
        SUB BL,32
        MOV DL,BL
        INT 21H
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    
END MAIN