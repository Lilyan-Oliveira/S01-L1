10 INPUT "Entre com o valor de A: "; A
20 INPUT "Entre com o valor de B: "; B
30 INPUT "Entre com o valor de C: "; C
40 LET DELTA = (B * B) - (4 * A * C)
50 IF DELTA >= 0 THEN GOTO 80
60 PRINT "As raízes são complexas."
70 GOTO 120
80 LET RAIZ1 = (-B + SQR(DELTA)) / (2 * A)
90 LET RAIZ2 = (-B - SQR(DELTA)) / (2 * A)
100 PRINT "X1: " + RAIZ1
110 PRINT "X2: " + RAIZ2
120 exit = 0