SUM	START	4000
FIRST	EXTDEF	BUF1
	EXTDEF	BUF2
	EXTREF	FIB,FACT
	LDX	#0
	LDA	#0
	LDS	#3
	LDT	#30
UP	ADD	TABLE,X
	ADDR	S,X
	COMPR	X,T
	JLT	UP
	STA	TOTAL
TABLE	RESW	100
TOTAL	RESW	1
BUF1	BYTE	C'EOF'
BUF2	WORD	10
PROD	BYTE	X'14'
	END	FIRST