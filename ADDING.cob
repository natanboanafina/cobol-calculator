       IDENTIFICATION                  DIVISION.
       PROGRAM-ID.ADDING.
      *=================================================================
      *    AUTHOR:  NATAN BOANAFINA
      *    DATE:    07-11-2022
      *    PURPOSE: SUM LOGIC.
      *=================================================================
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA                            DIVISION.
       WORKING-STORAGE                 SECTION.
       COPY "#MATHVAR".
       77  WRK-TOTAL-ED        PIC Z.ZZZ.ZZZ.ZZZ,ZZ.
       LINKAGE                         SECTION.
       01  LNK-VAR.
           05 LNK-RESULT   PIC 9(10)V99.

       PROCEDURE                       DIVISION USING LNK-VAR.
       0001-MAIN                       SECTION.
           PERFORM 0100-INITIALIZE.
           PERFORM 0200-PROCESS.
           GOBACK.

       0100-INITIALIZE                 SECTION.
           DISPLAY "DIGITE O PRIMEIRO NUMERO: ".
             ACCEPT WRK-FIRST-NUM.
           DISPLAY "DIGITE O SEGUNDO NUMERO: ".
             ACCEPT WRK-SECOND-NUM.

       0200-PROCESS                    SECTION.
           COMPUTE WRK-TOTAL-NUM = WRK-FIRST-NUM + WRK-SECOND-NUM.
           MOVE WRK-TOTAL-NUM TO WRK-TOTAL-ED.
           DISPLAY WRK-TOTAL-ED.
