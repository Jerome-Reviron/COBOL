       IDENTIFICATION DIVISION.
       PROGRAM-ID. GestionInventaireLivres.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

              01 Livres.
                  02 Livre OCCURS 5 TIMES INDEXED BY Idx.
                     05 Titre PIC X(30).
                     05 Auteur PIC X(30).
                     05 AnneePublication PIC 9(4).
                     05 NbCopies PIC 9(3).
       
       PROCEDURE DIVISION.
               MOVE "1984" TO Titre of Livre (1).
               MOVE "George Orwell" TO Auteur of Livre (1).
               MOVE 1949 TO AnneePublication of Livre (1).
               MOVE 5 TO NbCopies of Livre (1).

               MOVE "Le Petit Prince" TO Titre of Livre (2).
               MOVE "Antoine de Saint-Exupéry" TO Auteur of Livre (2).
               MOVE 1943 TO AnneePublication of Livre (2).
               MOVE 3 TO NbCopies of Livre (2).

               MOVE "Le Seigneur des Anneaux" TO Titre of Livre(3).
               MOVE "J.R.R. Tolkien" TO Auteur of Livre(3).
               MOVE 1954 TO AnneePublication of Livre(3).
               MOVE 7 TO NbCopies of Livre(3).

               MOVE "Fondation" TO Titre of Livre (4).
               MOVE "Isaac Asimov" TO Auteur of Livre (4).
               MOVE 1951 TO AnneePublication of Livre (4).
               MOVE 4 TO NbCopies of Livre (4).

               MOVE "Dune" TO Titre of Livre (5).
               MOVE "Frank Herbert" TO Auteur of Livre (5).
               MOVE 1965 TO AnneePublication of Livre (5).
               MOVE 6 TO NbCopies of Livre (5).

                PERFORM VARYING Idx FROM 1 BY 1 UNTIL Idx > 5
                   DISPLAY "Titre du livre : " Titre (Idx)       
                   DISPLAY "Auteiur du livre : " Auteur (Idx)
                   DISPLAY "Année : " AnneePublication (Idx)       
                   DISPLAY "Copies : " NbCopies (Idx) 
                   DISPLAY SPACE   
                END-PERFORM.
           