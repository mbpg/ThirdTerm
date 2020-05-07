start:
	MOV R0, #0

	SETB P0.3
	CLR P0.0
	CALL colScan
	JB F0, finish

	SETB P0.0
	CLR P0.1
	CALL colScan
	JB F0, finish

	SETB P0.1
	CLR P0.2
	CALL colScan
	JB F0, finish

	SETB P0.2
	CLR P0.3
	CALL colScan
	JB F0, finish

	JMP start

finish:
	JMP start

colScan:
	JNB P0.4, gotKey
	INC R0
	JNB P0.5, gotKey
	INC R0
	JNB P0.6, gotKey
	INC R0
	RET

gotKey:
	SETB F0
	MOV A, R0
	CPL A
	MOV P1, A
	MOV R0, #0
	CLR F0
	RET
