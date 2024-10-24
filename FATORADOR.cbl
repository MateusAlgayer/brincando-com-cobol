      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FATORADOR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
           COPY 'COPYBOOK.cpy'.
       PROCEDURE DIVISION USING BOOKPARAMETERS.
           IF FACTOR = 1
               MOVE FACTOR TO FATOR-ESCRITA
               DISPLAY FATOR-ESCRITA
               EXIT
           END-IF.

           PERFORM VARYING DIVISOR FROM 2 BY 1
           UNTIL DIVISOR > FACTOR
               PERFORM
               UNTIL FUNCTION MOD(FACTOR, DIVISOR) NOT EQUAL 0
                   DIVIDE FACTOR BY DIVISOR GIVING FACTOR

                   MOVE DIVISOR TO FATOR-ESCRITA
                   DISPLAY FATOR-ESCRITA
               END-PERFORM
           END-PERFORM.
       END PROGRAM FATORADOR.
