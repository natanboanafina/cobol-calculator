       IDENTIFICATION                  DIVISION.
       PROGRAM-ID.FULLDATE.
      *=================================================================
      *    AUTHOR:  NATAN BOANAFINA
      *    DATE:    07-11-2022
      *    PURPOSE: TREATING DATE IN FULL.
      *=================================================================
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
       DATA                            DIVISION.
       WORKING-STORAGE                 SECTION.

       COPY "#DATEVAR".
       01  WRK-MONTHS.
           05  WRK-FULLMONTH   PIC X(09) OCCURS 12 TIMES.
       LINKAGE                         SECTION.
       01  LNK-SEC.
           05 LNK-DATE     PIC X(30).

       PROCEDURE                       DIVISION USING LNK-SEC.
       0001-MAIN                       SECTION.
           PERFORM 0100-INITIALIZE.
           PERFORM 0200-PROCESS.
           GOBACK.
       0100-INITIALIZE                 SECTION.
           ACCEPT WRK-DATE FROM DATE YYYYMMDD.

       0200-PROCESS                    SECTION.
           PERFORM 0210-FULL-MONTH.

           STRING WRK-DAY                   DELIMITED BY SIZE
                  " DE "                    DELIMITED BY SIZE
                  WRK-FULLMONTH(WRK-MONTH)  DELIMITED BY SIZE
                  " DE "                    DELIMITED BY SIZE
                  WRK-YEAR                  DELIMITED BY SIZE
                  INTO LNK-DATE.

       0210-FULL-MONTH                 SECTION.
           MOVE "JANEIRO  " TO WRK-FULLMONTH(1).
           MOVE "FEVEREIRO" TO WRK-FULLMONTH(2).
           MOVE "MARCO    " TO WRK-FULLMONTH(3).
           MOVE "ABRIL    " TO WRK-FULLMONTH(4).
           MOVE "MAIO     " TO WRK-FULLMONTH(5).
           MOVE "JUNHO    " TO WRK-FULLMONTH(6).
           MOVE "JULHO    " TO WRK-FULLMONTH(7).
           MOVE "AGOSTO   " TO WRK-FULLMONTH(8).
           MOVE "SETEMBRO " TO WRK-FULLMONTH(9).
           MOVE "OUTUBRO  " TO WRK-FULLMONTH(10).
           MOVE "NOVEMBRO " TO WRK-FULLMONTH(11).
           MOVE "DEZEMBRO " TO WRK-FULLMONTH(12).
       0300-END                        SECTION.
