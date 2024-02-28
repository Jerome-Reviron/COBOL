IDENTIFICATION DIVISION.
PROGRAM-ID. CalculReductions.

DATA DIVISION.
WORKING-STORAGE SECTION.
   01 MontantAchat PIC 9(5)V99 VALUE 0.
   01 ReductionPercentage PIC 9(3)V99 VALUE 0.
   01 Reduction PIC 9(3)V99 VALUE 0.
   01 MontantFinal PIC 9(3)V99 VALUE 0.

PROCEDURE DIVISION.
   DISPLAY "Entrez le montant total de votre achat : ".
   ACCEPT MontantAchat.

   IF MontantAchat > 500
      THEN
         MOVE 10 TO ReductionPercentage
   ELSE IF MontantAchat >= 100
      THEN
         MOVE 5 TO ReductionPercentage
   END-IF.

   COMPUTE Reduction = MontantAchat * (ReductionPercentage / 100).

   IF ReductionPercentage > 0
      THEN
         DISPLAY "Réduction de " ReductionPercentage " % appliquée."
   ELSE
      DISPLAY "Aucune réduction applicable."
   END-IF.

   COMPUTE MontantFinal = MontantAchat - Reduction.

   DISPLAY "Montant de la réduction : " Reduction.
   DISPLAY "Montant final à payer : " MontantFinal.

   STOP RUN.
