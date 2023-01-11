.MODEL SMALL
.STACK 100H
.DATA
   M DB "I HACKED YOUR SYSTEM $"
   
.CODE
   MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV AH,2
    LEA DX,M
    INT 21H
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
      




