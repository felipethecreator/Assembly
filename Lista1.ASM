; 1. Faça um programa que atribua aos registradores AL, BL, CL e DL,
; os valores FA; FB; FC e FDrespectivamente.

	MOV	AL,FA
	MOV	BL,FB
	MOV	CL,FC
	MOV	DL,FD
	
; 2. Faça um programa, a partir do anterior, que troque o conteúdo dos registradores 
; AL e DL; BL e CL, utilizando instruções PUSH e POP.
	
	PUSH	AL
	PUSH	BL
	PUSH	CL
	PUSH	DL

	POP	AL
	POP	BL
	POP	CL
	POP	DL		

; 4. Faça um programa que apresente no display de sete 
; segmentos (porta 02) o valor 88.

	MOV	AL,FF
	OUT	02
	DEC	AL
	OUT	02

; 6. Faça um programa que resolva a seguinte operação 
; lógica: ((DB & FD) ^ (~ 3E)) | (DA). O
; Resultado final deve ficar em AL, você poderá utilizar 
; registradores e endereços de memória. Os
; valores dos operandos podem ser atribuídos a registradores 
; ou para células da memória principal.
	
	; & = and, ^ = xor, ~ = not, | = or
	; O RESULTADO DESSA OPERAÇÃO DEVE SER "DA"
	
	MOV	AL,DB
	MOV	BL,3E
	MOV	CL,DA
	AND	AL,FD
	NOT	BL
	XOR	AL,BL
	OR	AL,CL
	MOV	[90],AL ; // LUGAR EM QUE AL FOI ALOCADO.
	
; 7. Implemente agora um programa que resolva a seguinte operação:
; ((7732 ^ 88CD) | (FDCA & 7235)) ^ (1111)
; 77, 88, FD, 72, 11 E 32, CD, CA, 35, 11 DEVEM SER ALOCADOS EM LUGARES DIFERENTES!

	; TEM QUE DAR "EE"!

	MOV	AL,77
	XOR	AL,88
	MOV	BL,FD
	AND	BL,72
	OR	AL,BL
	XOR	AL,11
	MOV	[70],AL

	; TEM QUE DAR "EE" TAMBÉM!!

	MOV	AL,32
	XOR	AL,CD
	MOV	BL,CA
	AND	BL,35
	OR	AL,BL
	XOR	AL,11
	MOV	[71],AL

	END