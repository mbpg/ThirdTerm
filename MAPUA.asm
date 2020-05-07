	MOV 30H, #'M'
	MOV 31H, #'A'
	MOV 32H, #'P'
	MOV 33H, #'U'
	MOV 34H, #'A'
	MOV 35H, #0

	CLR P1.3

	CLR P1.7
	CLR P1.6
	SETB P1.5
	CLR P1.4

	SETB P1.2
	CLR P1.2

	CALL delay

	SETB P1.2
	CLR P1.2

	SETB P1.7

	SETB P1.2
	CLR P1.2

	CALL delay

	CLR P1.7
	CLR P1.6
	CLR P1.5
	CLR P1.4
	
	SETB P1.2
	CLR P1.2
	
	SETB P1.6
	SETB P1.5
	
	SETB P1.2
	CLR P1.2
	
	CALL delay

	CLR P1.7
	CLR P1.6
	CLR P1.5
	CLR P1.4

	SETB P1.2
	CLR P1.2

	SETB P1.7
	SETB P1.6
	SETB P1.5
	SETB P1.4

	SETB P1.2
	CLR P1.2

	CALL delay

	SETB P1.3
	MOV R1, #30H
loop:
	MOV A, @R1
	JZ finish

	CALL sendCharacter
	INC R1
	JMP loop

finish:
	JMP $

sendCharacter:
	MOV C, ACC.7
	MOV P1.7, C
	MOV C, ACC.6
	MOV P1.6, C
	MOV C, ACC.5
	MOV P1.5, C
	MOV C, ACC.4
	MOV P1.4, C

	SETB P1.2
	CLR P1.2

	MOV C, ACC.3
	MOV P1.7, C
	MOV C, ACC.2
	MOV P1.6, C
	MOV C, ACC.1
	MOV P1.5,C
	MOV C, ACC.0
	MOV P1.4, C

	SETB P1.2
	CLR P1.2

	CALL delay

delay:
	MOV R0, #200
	DJNZ R0, $
	RET