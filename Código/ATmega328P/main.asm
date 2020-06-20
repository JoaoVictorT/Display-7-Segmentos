

.DEF MP = R16  
.DEF MPC = R17 


RJMP Start 

Start:

   LDI MP, 0xFF 
   OUT DDRB, MP 
    LDI  r18, 11 
    LDI  r19, 99 
	RJMP Programa 
	


Programa:
	RCALL Zero 
	RJMP Programa 