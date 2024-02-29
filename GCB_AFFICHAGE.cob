IDENTIFICATION DIVISION.
PROGRAM-ID. GCB_AFFICHAGE.

DATA DIVISION.
WORKING-STORAGE SECTION.
   01 SoldeCompteAffichage PIC ZZZZ9.99.
   01 SoldeAutreCompteAffichage PIC ZZZZ9.99.

LINKAGE SECTION.
   01 SoldeCompte PIC S9(5)V99.
   01 SoldeAutreCompte PIC S9(5)V99.
   
PROCEDURE DIVISION USING SoldeCompte  SoldeAutreCompte.
   MOVE SoldeCompte TO SoldeCompteAffichage.
   MOVE SoldeAutreCompte TO SoldeAutreCompteAffichage.
   DISPLAY "Solde actuel du compte : " SoldeCompteAffichage.
   DISPLAY "Solde actuel de l'autre compte : " SoldeAutreCompteAffichage.
   EXIT PROGRAM.
