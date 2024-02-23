IDENTIFICATION DIVISION.
PROGRAM-ID. CalculPerimetre.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Longueur       PIC 9(3).
01 Largeur        PIC 9(3).
01 Perimetre      PIC 9(4).

PROCEDURE DIVISION.
    DISPLAY "Entrez la longueur du jardin (en mètres) : ".
    ACCEPT Longueur.

    DISPLAY "Entrez la largeur du jardin (en mètres) : ".
    ACCEPT Largeur.

    COMPUTE Perimetre = 2 * (Longueur + Largeur).

    DISPLAY "Le périmètre du jardin est de ", Perimetre, " mètres.".

    STOP RUN.
