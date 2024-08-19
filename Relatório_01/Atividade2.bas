RANDOMIZE = TIMER
n = RND(10)+1
fact = 1
FOR i = 1 TO n + 1
  fact = fact * i
NEXT i
PRINT "Numero aleatorio: " + n
PRINT "Fatorial de " + n + " e: " + fact