

.DEF MP = R16  ;Definiu MP como registrador 16
.DEF MPC = R17 ;Definiu MPC como registrador 17


RJMP Start ;Salta para o Start

Start:

   LDI MP, 0xFF ; Carregou 0b11111111 no R16
   OUT DDRB, MP ; Todas as portas B como saída
    LDI  r18, 11 ;Cálculo do delay
    LDI  r19, 99 
    RJMP Programa ;Salta para o Programa 
	


Programa:
	RCALL Zero ;Chama a função Zero
	RJMP Programa ;Salta para o Programa
	
Zero:
   RCALL Delay ; Delay para contar o 0
   LDI MPC, 0x3F ; acende os leds necessarios para dar 0
   OUT  PORTB, MPC  ; Colocando as devidas portas B em High e low
   RCALL Delay ; chamando o Delay
   RJMP Um

Um: 
   LDI MPC,  0x06 ; acende os leds necessarios para dar 1
   OUT  PORTB, MPC
   RCALL Delay 
   RJMP Dois

Dois:
   LDI MPC,  0x5B ; acende os leds necessarios para dar 2
   OUT  PORTB, MPC
   RCALL Delay 
   RJMP Tres

Tres:
   LDI MPC,  0x4F  ;acende os leds necessarios para dar 3
   OUT  PORTB, MPC
   RCALL Delay 
   RJMP Quatro

Quatro:
   LDI MPC,  0x66 ;acende os leds necessarios para dar 4
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Cinco
   
Cinco:
   LDI MPC,  0x6D ;acende os leds necessarios para dar 5
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Seis

Seis:
   LDI MPC,  0x7D ;acende os leds necessarios para dar 6
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Sete
   
Sete:
   LDI MPC,  0x07 ; acende os leds necessarios para dar 7
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Oito

Oito:
   LDI MPC,  0x7F ; acende os leds necessarios para dar 8
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Nove
   
Nove:
   LDI MPC,  0x6F ;acende os leds necessarios para dar 9
   OUT  PORTB, MPC
   RCALL Delay
   RJMP Zero
  
RET ; Retorna para Call Zero

Delay: dec  r19 ; Delay 1ms
    brne Delay  ; começa em 0 e soma mais 1
    dec  r18  ; decrementa um no registro
    brne Delay 
 
 RET
