                                      This is the assembly language and register 
                                  
  N.B[Before run the code you should remind the input value,not greater than 9]
  
To known about assembly language first you need to know Register.How many type and their function.
REGISTER:::::::Registers are essentially places that the processor can store memory. You can think of them as buckets which the processor can store information in

```
rdi:    First Argument
rsi:    Second Argument
rdx:    Third Argument
rcx:    Fourth Argument
r8:     Fifth Argument
r9:     Sixth Argument
+-----------------+---------------+---------------+------------+
| 8 Byte Register | Lower 4 Bytes | Lower 2 Bytes | Lower Byte |
+-----------------+---------------+---------------+------------+
|   rbp           |     ebp       |     bp        |     bpl    |
|   rsp           |     esp       |     sp        |     spl    |
|   rip           |     eip       |               |            |
|   rax           |     eax       |     ax        |     al     |
|   rbx           |     ebx       |     bx        |     bl     |
|   rcx           |     ecx       |     cx        |     cl     | 
|   rdx           |     edx       |     dx        |     dl     |
|   rsi           |     esi       |     si        |     sil    |
|   rdi           |     edi       |     di        |     dil    |
|   r8            |     r8d       |     r8w       |     r8b    |
|   r9            |     r9d       |     r9w       |     r9b    |
|   r10           |     r10d      |     r10w      |     r10b   |
|   r11           |     r11d      |     r11w      |     r11b   |
|   r12           |     r12d      |     r12w      |     r12b   |
|   r13           |     r13d      |     r13w      |     r13b   |
|   r14           |     r14d      |     r14w      |     r14b   |
|   r15           |     r15d      |     r15w      |     r15b   |
+-----------------+---------------+---------------+------------
```
                         
                         SOME INSTRUCTIONS
                         
mov	edx,4		; message length.
mov	ecx,msg		; message to write.
mov	ebx,1		; file descriptor (stdout).
mov	eax,4		; system call number (sys_write).
int	0x80		; call kernel.



                            The EQU Directive
                            
                            
                            
The EQU directive is used for defining constants. The syntax of the EQU directive is as follows −

CONSTANT_NAME EQU expression;


TOTAL_STUDENTS equ 50;
SYS_WRITE equ 4
                            
                                                 PROLOGUE AND EPILOGUE
Then the prologue is executed:    
push  ebp         ; Save the stack-frame base pointer (of the calling function).

mov   ebp, esp    ; Set the stack-frame base pointer to be the current

                  ; location on the stack.
                  
sub   esp, N      ; Grow the stack by N bytes to reserve space for local variables



The epilog:
mov   esp, ebp    ; Put the stack pointer back where it was when this function

                  ; was called.
                  
pop   ebp         ; Restore the calling function's stack frame.

ret               ; Return to the calling function.

