IDENTIFICATION DIVISION.
PROGRAM-ID. GestionCompteBancaire.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT GCBComptesFile ASSIGN TO "GCBComptesFile.txt".
    SELECT GCBHistoriqueFile ASSIGN TO "GCBHistoriqueFile.txt".

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
   01 Montant PIC S9(5)V99 VALUE 0.
   01 ChoixUtilisateur PIC 9 VALUE 0.
   01 SoldeCompte PIC S9(5)V99 VALUE 1000.00.
   01 SoldeAutreCompte PIC S9(5)V99 VALUE 500.00.

   01 SoldeCompteAffichage PIC ZZZZ9.99.
   01 SoldeAutreCompteAffichage PIC ZZZZ9.99.

   01 MontantAffichage PIC ZZZZ9.99.

   01 Action PIC X(10).

PROCEDURE DIVISION.

   OPEN OUTPUT GCBComptesFile.
   OPEN EXTEND  GCBHistoriqueFile.

   PERFORM AFFICHER-MENU
   PERFORM UNTIL ChoixUtilisateur = 0
       PERFORM TRAITER-CHOIX
       PERFORM AFFICHER-MENU
   END-PERFORM.

   CLOSE GCBComptesFile
   CLOSE GCBHistoriqueFile.

   DISPLAY "Merci d'avoir utilisé notre service. Au revoir!"
   STOP RUN.

AFFICHER-MENU.
   DISPLAY "Opérations disponibles :"
   DISPLAY "1. Dépôt"
   DISPLAY "2. Retrait"
   DISPLAY "3. Virement"
   DISPLAY "4. Afficher le solde"
   DISPLAY "0. Quitter"
   ACCEPT ChoixUtilisateur.

TRAITER-CHOIX.
   EVALUATE ChoixUtilisateur
      WHEN 1
         PERFORM DEPOT
      WHEN 2
         PERFORM RETRAIT
      WHEN 3
         PERFORM VIREMENT
      WHEN 4
         PERFORM AFFICHER_SOLDE
      WHEN 0
         CONTINUE
      WHEN OTHER
         DISPLAY "Choix invalide. Veuillez choisir 1, 2, 3, 4 ou 0."
   END-EVALUATE.

DEPOT.
   DISPLAY "Entrez le montant du dépôt : ".
   ACCEPT Montant.
   COMPUTE SoldeCompte = SoldeCompte + Montant.
   MOVE "DEPOT" TO ActionFile.
   MOVE Montant TO MontantAffichage.
   MOVE MontantAffichage TO MontantFile. 
   WRITE HistoriqueRecord AFTER ADVANCING 1 LINE.
   MOVE SoldeCompte TO SoldeCompteAffichage.
   WRITE ComptesRecord FROM SoldeCompteAffichage AFTER ADVANCING 1 LINE.
       
RETRAIT.
   DISPLAY "Entrez le montant du retrait : ".
   ACCEPT Montant.
   IF Montant > SoldeCompte
      DISPLAY "Solde insuffisant. Opération annulée."
   ELSE
      COMPUTE SoldeCompte = SoldeCompte - Montant
      MOVE "RETRAIT" TO ActionFile
      MOVE Montant TO MontantAffichage
      MOVE MontantAffichage TO MontantFile
      WRITE HistoriqueRecord AFTER ADVANCING 1 LINE
      MOVE SoldeCompte TO SoldeCompteAffichage
      WRITE ComptesRecord FROM SoldeCompteAffichage AFTER ADVANCING 1 LINE
   END-IF.

VIREMENT.
   DISPLAY "Entrez le montant du virement : "
   ACCEPT Montant.
   IF Montant > SoldeCompte
      DISPLAY "Solde insuffisant. Virement annulé."
   ELSE
      COMPUTE SoldeCompte = SoldeCompte - Montant
      COMPUTE SoldeAutreCompte = SoldeAutreCompte + Montant
      MOVE "VIREMENT" TO ActionFile
      MOVE Montant TO MontantAffichage
      MOVE MontantAffichage TO MontantFile
      WRITE HistoriqueRecord AFTER ADVANCING 1 LINE
      MOVE SoldeCompte TO SoldeCompteAffichage
      WRITE ComptesRecord FROM SoldeCompteAffichage AFTER ADVANCING 1 LINE
   END-IF.

AFFICHER_SOLDE.
   MOVE SoldeCompte TO SoldeCompteAffichage.
   MOVE SoldeAutreCompte TO SoldeAutreCompteAffichage.
   DISPLAY "Solde actuel du compte : " SoldeCompteAffichage.
   DISPLAY "Solde actuel de l'autre compte : " SoldeAutreCompteAffichage.
