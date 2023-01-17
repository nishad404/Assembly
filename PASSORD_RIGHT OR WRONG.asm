.MODEL SMALL
.STACK 100H
.DATA
A DB "ENTER YOUR PASSWORD $" 
B DB "CORRECT PASSWORD $"
C DB "WORNG PASSWORD $" 
D DB "HACKED $"
E DW 6
.CODE 
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
            
    MOV CX,E
    MOV BX,OFFSET D 
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    ;MOV CX,E
    ;MOV BX,OFFSET D
    
    LEVEL1:
    MOV AH,8          ;DON'T SHOW IN PASSWORD
    INT 21H
    
    CMP AL,[BX]        ;COMPARE WITH PASSWORD AND OFFSET ADDRESS
    JNE LEVEL2
    INC BX
    LOOP LEVEL1      
    
    MOV AH,9
    LEA DX,B
    INT 21H
    JMP EXIT 
    
    LEVEL2:
    
    MOV AH,9
    LEA DX,C
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
 END MAIN
    
    



