IDENTIFICATION DIVISION.
PROGRAM-ID. UtilisateurLivre.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.

   01 MaxLivres CONSTANT 15.
   01 Livres.
      02 Livre OCCURS MaxLivres TIMES INDEXED BY Idx.
         05 Titre PIC X(30).
         05 Auteur PIC X(30).
         05 AnneePublication PIC 9(4).
         05 NbCopies PIC 9(3).

   01 NombreLivresActuels CONSTANT 5.
   01 IdxActuel PIC 9(2) VALUE 1.
   01 NombreLivres PIC 9(2).

PROCEDURE DIVISION.
   PERFORM INITIALISER-LIVRES-ACTUELS.
   
   DISPLAY "Combien de nouveaux livres souhaitez-vous ajouter? ".
   ACCEPT NombreLivres.

   IF NombreLivres NOT NUMERIC OR
      NombreLivres < 1 OR
      (IdxActuel + NombreLivres - 1) > MaxLivres
   THEN
      DISPLAY "Nombre de livres invalide. Le programme s'arrête."
      STOP RUN
   END-IF.

   PERFORM VARYING Idx FROM IdxActuel BY 1 UNTIL Idx > (IdxActuel + NombreLivres - 1)
      DISPLAY "Entrez les informations pour le nouveau livre #" Idx
      ACCEPT Titre (Idx)
      ACCEPT Auteur (Idx)
      ACCEPT AnneePublication (Idx)
      ACCEPT NbCopies (Idx)
   END-PERFORM

   PERFORM AFFICHER-TOUS-LIVRES

   STOP RUN.

INITIALISER-LIVRES-ACTUELS.
   MOVE "1984" TO Titre (IdxActuel).
   MOVE "George Orwell" TO Auteur (IdxActuel).
   MOVE 1949 TO AnneePublication (IdxActuel).
   MOVE 5 TO NbCopies (IdxActuel).

   MOVE "Le Petit Prince" TO Titre (IdxActuel + 1).
   MOVE "Antoine de Saint-Exupéry" TO Auteur (IdxActuel + 1).
   MOVE 1943 TO AnneePublication (IdxActuel + 1).
   MOVE 3 TO NbCopies (IdxActuel + 1).

   MOVE "Le Seigneur des Anneaux" TO Titre (IdxActuel + 2).
   MOVE "J.R.R. Tolkien" TO Auteur (IdxActuel + 2).
   MOVE 1954 TO AnneePublication (IdxActuel + 2).
   MOVE 7 TO NbCopies (IdxActuel + 2).

   MOVE "Fondation" TO Titre (IdxActuel + 3).
   MOVE "Isaac Asimov" TO Auteur (IdxActuel + 3).
   MOVE 1951 TO AnneePublication (IdxActuel + 3).
   MOVE 4 TO NbCopies (IdxActuel + 3).

   MOVE "Dune" TO Titre (IdxActuel + 4).
   MOVE "Frank Herbert" TO Auteur (IdxActuel + 4).
   MOVE 1965 TO AnneePublication (IdxActuel + 4).
   MOVE 6 TO NbCopies (IdxActuel + 4).

   ADD NombreLivresActuels TO IdxActuel.

AFFICHER-TOUS-LIVRES.
   PERFORM VARYING Idx FROM 1 BY 1 UNTIL Idx > (IdxActuel + NombreLivres - 1)
      DISPLAY "Titre du livre : " Titre (Idx)
      DISPLAY "Auteur du livre : " Auteur (Idx)
      DISPLAY "Année : " AnneePublication (Idx)
      DISPLAY "Copies : " NbCopies (Idx)
      DISPLAY SPACE
   END-PERFORM.
