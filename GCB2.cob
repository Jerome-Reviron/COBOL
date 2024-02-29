IDENTIFICATION DIVISION.
PROGRAM-ID. GCB2.
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
   01 Montant PIC S9(5)V99 VALUE 0.
   01 ChoixUtilisateur PIC 9 VALUE 0.
   01 SoldeCompte PIC S9(5)V99 VALUE 1000.00.
   01 SoldeAutreCompte PIC S9(5)V99 VALUE 500.00.
   01 SoldeCompteAffichage PIC ZZZZ9.99.

   01 SoldeAutreCompteAffichage PIC ZZZZ9.99.
   
   01 MontantAffichage PIC ZZZZ9.99.

   01 Action PIC X(10).

PROCEDURE DIVISION.
   CALL 'GCB_LECTURE' USING SoldeCompte.
   CALL 'GCB_AFFICHAGE' USING SoldeCompte  SoldeAutreCompte.
   CALL 'GCB_MENU' USING SoldeCompte SoldeAutreCompte Montant ChoixUtilisateur.
   CALL 'GCB_WRITE' USING Action Montant SoldeCompte.

   OPEN I-O GCBComptesFile.
   CALL 'GCB_LECTURE' USING SoldeCompte.
   CLOSE GCBComptesFile.

   PERFORM UNTIL ChoixUtilisateur = 0
       PERFORM TRAITER-CHOIX
       CALL 'GCB_MENU' USING SoldeCompte SoldeAutreCompte Montant ChoixUtilisateur
   END-PERFORM.

   DISPLAY "Merci d'avoir utilisé notre service. Au revoir!"
   STOP RUN.

TRAITER-CHOIX.
   EVALUATE ChoixUtilisateur
      WHEN 1
         PERFORM DEPOT
      WHEN 2
         PERFORM RETRAIT
      WHEN 3
         PERFORM VIREMENT
      WHEN 4
         CALL 'GCB_AFFICHAGE' USING SoldeCompte SoldeAutreCompte
      WHEN 0
         CONTINUE
      WHEN OTHER
         DISPLAY "Choix invalide. Veuillez choisir 1, 2, 3, 4 ou 0."
   END-EVALUATE.

DEPOT.
   DISPLAY "Entrez le montant du dépôt : ".
   ACCEPT Montant.
   COMPUTE SoldeCompte = SoldeCompte + Montant.
   MOVE "DEPOT" TO Action.
   CALL 'GCB_WRITE' USING Action Montant SoldeCompte.

RETRAIT.
   DISPLAY "Entrez le montant du retrait : ".
   ACCEPT Montant.
   IF Montant > SoldeCompte
      DISPLAY "Solde insuffisant. Opération annulée."
   ELSE
      COMPUTE SoldeCompte = SoldeCompte - Montant
      MOVE "RETRAIT" TO Action
      CALL 'GCB_WRITE' USING Action Montant SoldeCompte
   END-IF.

VIREMENT.
   DISPLAY "Entrez le montant du virement : "
   ACCEPT Montant.
   IF Montant > SoldeCompte
      DISPLAY "Solde insuffisant. Virement annulé."
   ELSE
      COMPUTE SoldeCompte = SoldeCompte - Montant
      COMPUTE SoldeAutreCompte = SoldeAutreCompte + Montant
      MOVE "VIREMENT" TO Action
      CALL 'GCB_WRITE' USING Action Montant SoldeCompte
   END-IF.
