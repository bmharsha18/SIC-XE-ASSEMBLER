P	START	0
	EXTDEF	BUF
FIRST	LDX	#0
	LDA	#0
	+LDB	TABLE2
	BASE	TABLE2
LOOP	ADD	TABLE,X
	ADD	TABLE2,X
	TIX	COUNT
	JLT	LOOP
	+STA	TOTAL
COUNT	RESW	1
TABLE2	RESB	2000
TABLE	RESW	2000
TOTAL	RESW	1
BUF	RESW	100
	END	FIRST