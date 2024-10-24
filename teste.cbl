      ******************************************************************
      * Author: MateusAlgayer
      * Date: 10/10/2024
      * Purpose: Fatores de um inteiro
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEU-PROGRAMA-1.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'COPYBOOK.cpy'.

       PROCEDURE DIVISION.
           MOVE 1 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 1"

           MOVE 2 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 2"

           MOVE 3 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 3"

           MOVE 4 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 2,2"

           MOVE 5 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 5"

           MOVE 6 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 2,3"

           MOVE 7 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 7"

           MOVE 8 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 2,2,2"

           MOVE 9 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 3,3"

           MOVE 14 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 2,7"

           MOVE 111 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 3,37"

           MOVE 358801 TO FACTOR
           PERFORM EXECUTA-CALCULO
           DISPLAY "valor esperado: 599,599"

           STOP RUN.

           EXECUTA-CALCULO.
               DISPLAY "==============================================="
               DISPLAY "Calculando fatores de " FACTOR.
               CALL 'FATORADOR' USING BOOKPARAMETERS.
               EXIT.
       END PROGRAM MEU-PROGRAMA-1.
