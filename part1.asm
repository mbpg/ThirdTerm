ORG 0000H
MAIN:
	CLR A
	MOV A, #06H
	MOV B, #03H
AGAIN:
	DEC A
	DJNZ B, AGAIN
	ADD A, B
	MOV R0, #03H
CTR:
	DJNZ R0, CTR
	MOV p1, A
END
