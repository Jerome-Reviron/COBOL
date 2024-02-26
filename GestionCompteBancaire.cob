IDENTIFICATION DIVISION.
PROGRAM-ID. GestionCompteBancaire.

DATA DIVISION.
WORKING-STORAGE SECTION.
   01 SoldeCompte PIC S9(5)V99 VALUE 1000.00.
   01 Montant PIC S9(5)V99 VALUE 0.
   01 SoldeAutreCompte PIC S9(5)V99 VALUE 500.00.
   01 ChoixUtilisateur PIC 9 VALUE 0.

   01 SoldeCompteAffichage PIC ZZZZ9.99.

   01 SoldeAutreCompteAffichage PIC ZZZZ9.99.

PROCEDURE DIVISION.

   PERFORM AFFICHER-MENU
   PERFORM UNTIL ChoixUtilisateur = 0
       PERFORM TRAITER-CHOIX
       PERFORM AFFICHER-MENU
   END-PERFORM.

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

RETRAIT.
   DISPLAY "Entrez le montant du retrait : ".
   ACCEPT Montant.
   IF Montant > SoldeCompte
      DISPLAY "Solde insuffisant. Opération annulée."
   ELSE
      COMPUTE SoldeCompte = SoldeCompte - Montant
   END-IF.

VIREMENT.
   DISPLAY "Entrez le montant du virement : ".
   ACCEPT Montant.
   IF Montant > SoldeCompte
      DISPLAY "Solde insuffisant. Virement annulé."
   ELSE
      COMPUTE SoldeCompte = SoldeCompte - Montant
      COMPUTE SoldeAutreCompte = SoldeAutreCompte + Montant
   END-IF.

AFFICHER_SOLDE.
MOVE SoldeCompte TO SoldeCompteAffichage.
MOVE SoldeAutreCompte TO SoldeAutreCompteAffichage.
DISPLAY "Solde actuel du compte : " SoldeCompteAffichage.
DISPLAY "Solde actuel de l'autre compte : " SoldeAutreCompteAffichage.
