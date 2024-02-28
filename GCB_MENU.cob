IDENTIFICATION DIVISION.
PROGRAM-ID. GCB_MENU.

DATA DIVISION.

LINKAGE SECTION.
   01 SoldeCompte PIC S9(5)V99.
   01 SoldeAutreCompte PIC S9(5)V99.
   01 Montant PIC S9(5)V99.
   01 ChoixUtilisateur PIC 9.

PROCEDURE DIVISION USING SoldeCompte SoldeAutreCompte Montant ChoixUtilisateur.
   DISPLAY "Opérations disponibles :"
   DISPLAY "1. Dépôt"
   DISPLAY "2. Retrait"
   DISPLAY "3. Virement"
   DISPLAY "4. Afficher le solde"
   DISPLAY "0. Quitter"
   ACCEPT ChoixUtilisateur.
   EXIT PROGRAM.
