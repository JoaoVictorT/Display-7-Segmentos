

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
	
Zero:
   RCALL Delay 
   LDI MPC, 0x3F 
   OUT  PORTB, MPC 
   RCALL Delay 
   RJMP Um

Um: 
   LDI MPC,  0x06 
   OUT  PORTB, MPC
   RCALL Delay 
   RJMP Dois

Dois:
   LDI MPC,  0x5B 
   OUT  PORTB, MPC
   RCALL Delay 
   RJMP Tres

Tres:
   LDI MPC,  0x4F 
   OUT  PORTB, MPC
   RCALL Delay 
   RJMP Quatro

Quatro:
   LDI MPC,  0x66 
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Cinco
   
Cinco:
   LDI MPC,  0x6D 
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Seis

Seis:
   LDI MPC,  0x7D 
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Sete
