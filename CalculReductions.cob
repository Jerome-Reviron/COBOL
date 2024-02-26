IDENTIFICATION DIVISION.
PROGRAM-ID. CalculReductions.

DATA DIVISION.
WORKING-STORAGE SECTION.
   01 MontantAchat PIC 9(5)V99 VALUE 0.
   01 Reduction PIC 9(3)V99 VALUE 0.
   01 MontantFinal PIC 9(3)V99 VALUE 0.

PROCEDURE DIVISION.
   DISPLAY "Entrez le montant total de votre achat : ".
   ACCEPT MontantAchat.

   IF MontantAchat < 100
      DISPLAY "Aucune réduction applicable."
   ELSE IF MontantAchat <= 500
      COMPUTE Reduction = MontantAchat * 0.05
      DISPLAY "Réduction de 5% appliquée."
   ELSE
      COMPUTE Reduction = MontantAchat * 0.10
      DISPLAY "Réduction de 10% appliquée."
   END-IF.

   COMPUTE MontantFinal = MontantAchat - Reduction.

   DISPLAY "Montant de la réduction : " Reduction.
   DISPLAY "Montant final à payer : " MontantFinal.

   STOP RUN.
