IDENTIFICATION DIVISION.
PROGRAM-ID. GCB_WRITE.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT GCBComptesFile 
        FILE STATUS IS WS-FILE-STATUS
        ASSIGN TO "GCBComptesFile.txt".
    SELECT GCBHistoriqueFile 
        FILE STATUS IS WS-FILE-STATUS
        ASSIGN TO "GCBHistoriqueFile.txt".

DATA DIVISION.
FILE SECTION.
   FD GCBComptesFile.
   01 ComptesRecord.
      05 SoldeCompteFile PIC ZZZZ9.99 VALUE 0.

   FD GCBHistoriqueFile.
   01 HistoriqueRecord.
      05 ActionFile PIC X(10) VALUE SPACES.
      05 MontantFile PIC ZZZZ9.99 VALUE 0.

WORKING-STORAGE SECTION.
   01 WS-FILE-STATUS PIC 99.
   01 MontantAffichage PIC ZZZZ9.99.
   01 SoldeCompteAffichage PIC ZZZZ9.99.

LINKAGE SECTION.
   01 Action PIC X(10).
   01 Montant PIC S9(5)V99.
   01 SoldeCompte PIC S9(5)V99.
   

PROCEDURE DIVISION USING Action Montant SoldeCompte.
   OPEN OUTPUT GCBComptesFile.
   OPEN EXTEND GCBHistoriqueFile.

   MOVE Action TO ActionFile.
   MOVE Montant TO MontantAffichage.
   MOVE MontantAffichage TO MontantFile. 
   WRITE HistoriqueRecord AFTER ADVANCING 1 LINE.
   MOVE SoldeCompte TO SoldeCompteAffichage.
   WRITE ComptesRecord FROM SoldeCompteAffichage AFTER ADVANCING 1 LINE.
   
   CLOSE GCBComptesFile.
   CLOSE GCBHistoriqueFile.
   EXIT PROGRAM.
