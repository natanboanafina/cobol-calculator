       IDENTIFICATION                  DIVISION.
       PROGRAM-ID.CALC.
      *=================================================================
      *    AUTHOR: NATAN BOANAFINA
      *    DATE: 07-11-2022
      *    PURPOSE: LEARNING AND TRAINNING SOME COBOL PRINCIPLES BY
      *    CREATING A SIMPLE CALCULATOR.
      *=================================================================
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA                            DIVISION.
       WORKING-STORAGE                 SECTION.
       COPY "#DATEVAR".
       77  WRK-EXT-DATE        PIC X(30).
       77  WRK-ADDING-VAR      PIC 9(10)V99.
       77  WRK-SUB-VAR         PIC 9(10)V99.
       77  WRK-MULT-VAR        PIC 9(10)V99.
       77  WRK-DIVIDE-VAR      PIC 9(10)V99.
       77  WRK-SIGNAL          PIC X(01) VALUE SPACES.
       PROCEDURE                       DIVISION.
       0001-MAIN                       SECTION.

           PERFORM 0100-INITIALIZE.
           PERFORM 0200-PROCESS.
           PERFORM 0300-END.
           STOP RUN.
       0100-INITIALIZE                 SECTION.
       0110-DISPLAY-DATE.
           CALL "FULLDATE" USING WRK-EXT-DATE.
           DISPLAY WRK-EXT-DATE.
       0120-INIT-SUM.

       0200-PROCESS                    SECTION.
           DISPLAY "ESCOLHA UMA OPERACAO (+, -, /, *): "
           ACCEPT WRK-SIGNAL.

           EVALUATE TRUE
             WHEN WRK-SIGNAL EQUAL TO "+"
               CALL "ADDING" USING WRK-ADDING-VAR
             WHEN WRK-SIGNAL EQUAL TO "-"
               CALL "SUBTRACT" USING WRK-SUB-VAR
             WHEN WRK-SIGNAL EQUAL TO "/"
               CALL "DIVI" USING WRK-DIVIDE-VAR
             WHEN WRK-SIGNAL EQUAL TO "*"
               CALL "MULTI" USING WRK-MULT-VAR
             WHEN OTHER
               DISPLAY "OPERACAO INVALIDA!"
           END-EVALUATE.
       0300-END                        SECTION.
           DISPLAY "======== END OF PROGRAM ========".
