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

       PROCEDURE                       DIVISION.
       0001-MAIN                       SECTION.
           PERFORM 0100-INITIALIZE.
           PERFORM 0200-PROCESS.
           PERFORM 0300-END.
           STOP RUN.
       0100-INITIALIZE                 SECTION.


       0200-PROCESS                    SECTION.
           CONTINUE.
       0300-END                        SECTION.
           DISPLAY "======== END OF PROGRAM ========".
