CR EQU 0DH
LF EQU 0AH
CTRLZ EQU 1AH

RCONF EQU 1
WCONF EQU 2
RBUFF EQU 10

RBOOT EQU 0
BDOS EQU 5
TPA EQU 100H

ORG TPA

LXI SP, STAK

START:
MVI B, 0

INPUT1:
CALL SPMSG
DB LF, 'ENTER YOUR FIRST NUMBER', CR, LF, 0
CALL CIMSG
CALL CCRLF
CALL READNUM
XCHG
SHLD NUM1

INPUT2:
CALL SPMSG
DB LF, 'ENTER YOUR SECOND NUMBER', CR, LF, 0
CALL CIMSG
CALL CCRLF
CALL READNUM

ADDNUMS:
CALL CCRLF
LHLD NUM1
DAD D
XCHG
CALL BINTOASCII

CALL SPMSG
DB LF, 'SUM:', CR, LF, 0

LXI H, BTABUF
CALL COMSGREV

CALL CCRLF
JMP RBOOT

NUM1: DW 0
BTABUF: DS 6

READNUM:
MVI D, 0
MVI E, 0
LXI H, INBUF+2

READNUMLOOP:
MOV A, M
ORA A
RZ

MOV A, E
MVI B, 10
CALL MULTIPLY
MOV E, A

MOV A, M
ANI 0FH
XCHG
MOV C, A
MVI B, 0
DAD B
XCHG

INX H
JMP READNUMLOOP

BINTOASCII:
MVI C, 0
MOV A, E
LXI H, BTABUF+1

BTALOOP:
MVI B, 10
CALL DIVIDE

ADI 30H
MOV M, A
INX H
INR C

MOV A, B

ORA A
JNZ BTALOOP

LXI H, BTABUF
MOV M, C
RET

MULTIPLY:     
; WRITTEN BY PARKER, MULTIPLIES A WITH B, STORES IN A
        
PUSH    B
PUSH    D
MVI     C, 1
MVI     D, 0
MOV     E, A

LOOP:

MOV     A, E
ANA     C

JZ      NOINC
MOV     A, D
ADD     B
MOV     D, A

NOINC: 
MOV     A, B
RAL
STC
CMC
MOV     B, A
MOV     A, C
RAL
MOV     C, A

JNC     LOOP
MOV     A, D
POP     D
POP     B
RET

; B = A / B
; A = A % B
DIVIDE:
PUSH D
MVI D, 0

DIVLOOP:
CMP B
JC DIVLOOPEND

SUB B
INR D

JMP DIVLOOP
DIVLOOPEND:
MOV B, D
POP D
RET


CI:
PUSH B 
PUSH D
PUSH H
MVI C, RCONF
CALL BDOS
ANI 7FH
POP H
POP D
POP B
RET

CO: 
PUSH B
PUSH D
PUSH H
MVI C, WCONF
MOV E, A
CALL BDOS
POP H
POP D
POP B
RET

TWOCR: CALL CCRLF
CCRLF:  ; CREATES A NEW LINE BY WRITING A CRLF
MVI A, CR
CALL CO
MVI A, LF
JMP CO

COMSG:  ; PRINTS A LINE, CHECKS IF THE BYTE IS NULL TO RETURN
MOV A, M
ORA A
RZ
CALL CO
INX H
JMP COMSG

COMSGREV:  ; PRINTS A LINE, CHECKS IF THE BYTE IS NULL TO RETURN
MOV E, M
MVI D, 0
DAD D

COMSGREVLOOP:
MOV A, E
ORA A 
RZ
DCR A
MOV E, A
MOV A, M
CALL CO
DCX H
JMP COMSGREVLOOP

CIMSG:  ; READS A LINE OF INPUT USING THE RBUFF BDOS FUNC
PUSH B
PUSH D
PUSH H
LXI H, INBUF+1  ; SETS UP BUFFER
MVI M, 0        ; CURRENT CHARACTER COUNT
DCX H   
MVI M, 80       ; CHARACTER LIMIT
XCHG
MVI C, RBUFF
CALL BDOS
LXI H, INBUF+1
MOV E, M        ; PUT AMOUNT OF CHARACTERS INTO DE REGISTER
MVI D, 0
DAD D           ; ADD TO HL TO GET ADDRESS OF THE END OF THE STRING
INX H
MVI M, 0        ; ADD A NULL TERMINATOR
POP H
POP D
POP B
RET

SPMSG:      ; PRINTS MESSAGES FROM THE STACK
XTHL        ; SWITCHES TOP OF STACK WITH HL
XRA A       ; ZEROS A
ADD M       ; MOVES M TO A, SETS ZERO FLAG IF CHARACTER IS NULL
INX H       ; NEXT CHARACTER
XTHL        ; RESET STACK
RZ          ; RETURN IF NULL TERMINATOR
CALL CO     ; PRINT CHARACTER
JMP SPMSG   ; LOOP

GETYN:
CALL SPMSG
DB LF, '(Y/N): ', 0
CALL CIMSG
CALL CCRLF
LDA INBUF+2     ; GET FIRST CHARACTER
ANI 01011111B   ; LOWERCASE TO UPPERCASE
CPI 'Y'         ; 0 IF TRUE
RZ
CPI 'N'
JNZ GETYN
CPI 0           ; RESETS ZERO FLAG
RET

INBUF: DS 83

DS 64

STAK: DB 0

END

