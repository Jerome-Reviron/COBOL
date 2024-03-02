# COBOL

## Table des Matières
- [Introduction](#introduction)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Contribuer](#contribuer)
- [Licence](#licence)
- [Helloworld.cob](#Helloworld)
- [JardinPerimetre.cob](#JardinPerimetre)
- [UtilisateurLivres.cob](#UtilisateurLivres)
- [CalculReductions.cob](#CalculReductions)
- [Exemple_tab_hierarchy.cob](#Exemple_tab_hierarchy)
- [Exemple_paragraphes.cob](#Exemple_paragraphes)
- [GCB.cob](#GCB)
## Introduction <a name="introduction"></a>
Ce repository COBOL a été créé dans le cadre de mon travail de développement en langage COBOL. Il regroupe plusieurs programmes conçus pour répondre à des besoins spécifiques.

## Installation <a name="installation"></a>
Le repository COBOL est accessible publiquement sur GitHub. L'installation est simple, il suffit de cloner le repository sur votre machine locale.

## Utilisation <a name="utilisation"></a>
Le repository contient plusieurs programmes COBOL, chacun ayant une fonction spécifique. Les détails d'utilisation de chaque programme sont fournis dans leurs fichiers respectifs.

## Contribuer <a name="contribuer"></a>
Bien que le repository soit public, les contributions directes ne sont pas autorisées. Cependant, les suggestions, commentaires et retours sont les bienvenus. Pour toute contribution majeure, veuillez me contacter directement.

## Licence <a name="licence"></a>
Tous les droits sont réservés à l'auteur du repository, REVIRON Jérôme.

# Helloworld.cob <a name="Helloworld"></a>

### Introduction
Le fichier "helloworld.cob" est un programme COBOL illustrant le célèbre exemple "Hello, World!". Ce fichier met en œuvre la syntaxe COBOL de base pour afficher un message à l'écran et manipuler une variable simple.

### Fonctionnalités

- **Affichage du Message "Hello, World!"**:
  Le programme affiche le message emblématique "Hello, World!" à l'écran.

- **Manipulation d'une Variable**:
  Le fichier contient une variable `premierevariable` initialisée à zéro, puis sa valeur est affichée, modifiée à 2, et à nouveau affichée.

### Utilisation

1. **Exécution du Programme**:
   Le programme est exécuté pour afficher le message "Hello, World!".

2. **Manipulation de Variable**:
   La variable `premierevariable` est affichée, mise à jour, puis à nouveau affichée pour illustrer la manipulation de données.

### Particularités

- **Structure COBOL**:
  Le fichier suit la structure COBOL conventionnelle avec les divisions IDENTIFICATION, ENVIRONMENT, DATA, et PROCEDURE. Il utilise la section WORKING-STORAGE pour déclarer des variables.

- **Affichage et Manipulation de Variable**:
  Le programme démontre l'utilisation de l'instruction DISPLAY pour afficher des messages et la manipulation de variables avec l'instruction MOVE.

- **Syntaxe COBOL**:
  La syntaxe COBOL est utilisée pour déclarer des sections telles que IDENTIFICATION DIVISION, DATA DIVISION, et PROCEDURE DIVISION, montrant la structure typique d'un programme COBOL de base.

# JardinPerimetre.cob <a name="JardinPerimetre"></a>

### Introduction
Le fichier "JardinPerimetre.cob" est un programme COBOL conçu pour calculer le périmètre d'un jardin en fonction de sa longueur et de sa largeur. Ce programme demande à l'utilisateur d'entrer la longueur et la largeur du jardin, effectue le calcul du périmètre, puis affiche le résultat.

### Fonctionnalités

- **Saisie de la Longueur et de la Largeur**:
  Le programme demande à l'utilisateur d'entrer la longueur et la largeur du jardin.

- **Calcul du Périmètre**:
  Le périmètre du jardin est calculé en utilisant la formule : `Perimetre = 2 * (Longueur + Largeur)`.

- **Affichage du Résultat**:
  Le périmètre calculé est affiché à l'utilisateur.

### Utilisation

1. **Saisie de la Longueur**:
   L'utilisateur est invité à entrer la longueur du jardin en mètres.

2. **Saisie de la Largeur**:
   L'utilisateur est invité à entrer la largeur du jardin en mètres.

3. **Calcul et Affichage du Périmètre**:
   Le programme calcule le périmètre en fonction de la longueur et de la largeur fournies, puis affiche le résultat.

### Particularités

- **Structure COBOL**:
  Le fichier suit la structure COBOL conventionnelle avec les divisions IDENTIFICATION, DATA, et PROCEDURE. Il utilise la section WORKING-STORAGE pour déclarer les variables.

- **Saisie Utilisateur**:
  Le programme utilise l'instruction DISPLAY suivie d'ACCEPT pour obtenir les valeurs de longueur et de largeur auprès de l'utilisateur.

- **Calcul Arithmétique**:
  Le périmètre est calculé à l'aide de l'instruction COMPUTE en fonction de la formule spécifiée.

- **Affichage du Résultat**:
  Le résultat, c'est-à-dire le périmètre du jardin, est affiché à l'utilisateur à l'aide de l'instruction DISPLAY.
  
# UtilisateurLivres.cob <a name="UtilisateurLivres"></a>

### Introduction
Le fichier "UtilisateurLivres.cob" est un programme COBOL qui permet à l'utilisateur d'ajouter de nouveaux livres à une liste existante. Le programme initialise une liste de livres, demande à l'utilisateur le nombre de nouveaux livres à ajouter, puis collecte les informations sur ces livres. Enfin, il affiche les détails de tous les livres, y compris les nouveaux ajoutés.

### Fonctionnalités

- **Initialisation de la Liste de Livres**:
  Le programme initialise une liste de livres avec des données préexistantes.

- **Ajout de Nouveaux Livres**:
  L'utilisateur peut spécifier le nombre de nouveaux livres à ajouter, puis fournir les informations pour chaque nouveau livre.

- **Affichage de Tous les Livres**:
  Le programme affiche les détails de tous les livres, y compris ceux nouvellement ajoutés.

### Utilisation

1. **Initialisation de la Liste Actuelle**:
   Le programme initialise une liste de livres avec des valeurs prédéfinies.

2. **Ajout de Nouveaux Livres**:
   L'utilisateur est invité à entrer le nombre de nouveaux livres qu'il souhaite ajouter. Pour chaque livre, il doit fournir des informations telles que le titre, l'auteur, l'année de publication et le nombre de copies.

3. **Affichage des Résultats**:
   Une fois toutes les informations fournies, le programme affiche les détails de tous les livres, y compris les nouveaux ajoutés.

### Particularités

- **Structure de Données**:
  Le programme utilise une structure de données comprenant un tableau de livres avec des champs tels que Titre, Auteur, Année de Publication et Nombre de Copies.

- **Boucle de Traitement**:
  Les boucles PERFORM VARYING sont utilisées pour itérer à travers les livres existants et les nouveaux livres ajoutés, affichant ainsi tous les détails.

- **Gestion des Indices**:
  Les indices (Idx) sont utilisés pour accéder aux éléments spécifiques du tableau des livres, permettant une manipulation efficace des données.

- **Contrôles de Validation**:
  Le programme effectue des vérifications pour s'assurer que le nombre de livres spécifié par l'utilisateur est valide et qu'il ne dépasse pas la capacité maximale définie (MaxLivres).

# CalculReductions.cob <a name="CalculReductions"></a>

### Introduction
Le fichier "CalculReductions.cob" est un programme COBOL visant à automatiser le calcul de réductions en fonction du montant total d'achat. Il utilise une approche de paliers, appliquant des pourcentages de réduction spécifiques en fonction du montant d'achat. Ce fichier démontre la logique de calcul, l'affichage des résultats, et l'interaction avec l'utilisateur, conformément à la syntaxe COBOL.

### Fonctionnalités

- **Calcul des Réductions**:
  Le programme calcule automatiquement les réductions en fonction du montant total d'achat.

- **Affichage des Informations**:
  Il affiche les détails pertinents, tels que le pourcentage de réduction appliqué, le montant de la réduction, et le montant final à payer.

- **Interaction Utilisateur**:
  L'utilisateur est invité à entrer le montant total de l'achat, créant une interaction entre l'utilisateur et le programme.

### Utilisation

1. **Entrée Utilisateur**:
   L'utilisateur est invité à saisir le montant total de son achat.

2. **Calcul de la Réduction**:
   Le programme détermine automatiquement le pourcentage de réduction en fonction du montant d'achat.

3. **Affichage des Résultats**:
   Les résultats, y compris le pourcentage de réduction, le montant de la réduction, et le montant final à payer, sont affichés à l'utilisateur.

### Ensemble des fonctionnalités tests

- **Scénarios de Réduction**:
  Le programme est testé avec différents scénarios pour vérifier le calcul correct des réductions.

- **Gestion des Paliers**:
  Les paliers de réduction sont testés pour s'assurer que le pourcentage de réduction approprié est appliqué en fonction du montant d'achat.

### Particularités

- **Structure COBOL**:
  Le fichier suit la structure COBOL conventionnelle avec les divisions IDENTIFICATION, DATA, et PROCEDURE. Il utilise des sections telles que WORKING-STORAGE pour déclarer les variables et PROCEDURE DIVISION pour définir la logique du programme.

- **Calculs et Affichages**:
  Des calculs basés sur des conditions spécifiques sont effectués, et les résultats sont affichés à l'utilisateur. La syntaxe COBOL est utilisée pour les calculs arithmétiques et l'affichage des informations.

- **Interaction avec l'Utilisateur**:
  L'utilisateur est impliqué par le biais d'une invitation à entrer des données, illustrant l'interaction typique entre un programme COBOL et l'utilisateur.

# Exemple_tab_hierarchy.cob <a name="Exemple_tab_hierarchy"></a>

### Introduction
Le fichier "exemple_tab_hierarchie.cob" est un programme COBOL illustrant l'utilisation d'un tableau hiérarchique pour stocker des informations sur des produits. Le programme initialise un tableau de produits avec des données préexistantes, puis affiche les détails de chaque produit, y compris le nom et la quantité.

### Fonctionnalités

- **Initialisation du Tableau de Produits**:
  Le programme initialise un tableau hiérarchique de produits avec des données prédéfinies.

- **Affichage des Détails de Chaque Produit**:
  Le programme utilise une boucle pour parcourir le tableau de produits et affiche les détails de chaque produit, y compris le nom et la quantité.

### Utilisation

1. **Initialisation du Tableau de Produits**:
   Le programme initialise un tableau de produits avec des valeurs prédéfinies. Chaque produit a un nom (Nom-Produit) et une quantité (Quantite).

2. **Affichage des Résultats**:
   Le programme utilise une boucle PERFORM VARYING pour itérer à travers le tableau de produits et affiche les détails de chaque produit, y compris le nom et la quantité.

### Particularités

- **Structure du Tableau Hiérarchique**:
  Le tableau hiérarchique (Produits) contient plusieurs occurrences de la structure de produit (Produit), chacune ayant des champs tels que Nom-Produit et Quantite.

- **Utilisation d'un Index**:
  L'index (Idx) est utilisé pour accéder aux différentes occurrences du tableau de produits, permettant ainsi une manipulation efficace des données.

- **Assignation des Valeurs**:
  Les valeurs des noms de produits (Nom-Produit) et des quantités (Quantite) sont attribuées aux occurrences spécifiques du tableau hiérarchique.

- **Affichage des Résultats**:
  Les détails de chaque produit, y compris le nom et la quantité, sont affichés à l'aide de l'instruction DISPLAY dans une boucle PERFORM VARYING.

# Exemple_paragraphes.cob <a name="Exemple_paragraphes"></a>

### Introduction
Le fichier "exemple_paragraphes.cob" est un programme COBOL illustrant l'utilisation de paragraphes dans la division PROCEDURE. Le programme contient plusieurs paragraphes (A-PARA, B-PARA, C-PARA, D-PARA, E-PARA) qui sont appelés et exécutés séquentiellement. Chaque paragraphe effectue une opération spécifique, démontrant ainsi l'utilisation des structures de paragraphe en COBOL.

### Fonctionnalités

- **Paragraphes Sequential Execution**:
  Les paragraphes A-PARA, B-PARA, C-PARA, D-PARA, E-PARA sont exécutés séquentiellement, chacun effectuant une opération spécifique.

- **Affichage des Messages**:
  Chaque paragraphe affiche un message à l'écran pour indiquer son exécution. Les messages incluent "A-PARA", "B-PARA", "C-PARA", "D-PARA", "E-PARA".

### Utilisation

1. **Appel Initial du Paragraphe A-PARA**:
   Le programme commence par appeler le paragraphe A-PARA, qui à son tour appelle les paragraphes C-PARA à E-PARA.

2. **Exécution des Paragraphes C-PARA à E-PARA**:
   Les paragraphes C-PARA à E-PARA sont exécutés séquentiellement à partir du paragraphe A-PARA.

3. **Affichage des Messages**:
   Chaque paragraphe affiche un message distinct à l'écran.

### Particularités

- **Structure en Paragraphes**:
  Le programme est structuré en utilisant des paragraphes, ce qui permet une organisation claire du code et la séparation des fonctionnalités.

- **Appel de Paragraphes**:
  Les paragraphes sont appelés à l'aide de l'instruction PERFORM, permettant une exécution séquentielle des opérations définies dans chaque paragraphe.

- **Arrêt du Programme**:
  Le paragraphe B-PARA affiche un message et arrête l'exécution du programme à l'aide de l'instruction STOP RUN.

# GCB.cob <a name="GCB"></a>

### Introduction
Le fichier "GCB.cob" est un programme COBOL de gestion de compte bancaire. Il permet à un utilisateur d'effectuer des opérations telles que le dépôt, le retrait, le virement et l'affichage du solde pour un compte bancaire. Le programme utilise deux fichiers, "GCBComptesFile.txt" pour stocker les soldes des comptes et "GCBHistoriqueFile.txt" pour enregistrer l'historique des transactions.

### Fonctionnalités

- **Opérations de Compte**:
  Le programme offre les fonctionnalités suivantes :
  - Dépôt d'argent sur le compte.
  - Retrait d'argent du compte.
  - Virement d'argent vers un autre compte.
  - Affichage du solde du compte.

- **Historique des Transactions**:
  Chaque opération effectuée est enregistrée dans le fichier d'historique avec des détails tels que l'action effectuée et le montant.

### Utilisation

1. **Initialisation des Fichiers**:
   Si les fichiers "GCBComptesFile.txt" et "GCBHistoriqueFile.txt" n'existent pas, le programme les crée.

2. **Opérations Utilisateur**:
   L'utilisateur peut choisir parmi les options du menu, telles que le dépôt, le retrait, le virement, et l'affichage du solde.

3. **Traitement des Choix**:
   Chaque choix de l'utilisateur est traité, et les soldes sont mis à jour en conséquence.

4. **Historique des Transactions**:
   Chaque transaction est enregistrée dans le fichier d'historique avec les détails appropriés.

5. **Fin du Programme**:
   L'utilisateur peut choisir de quitter le programme à tout moment.

### Particularités

- **Gestion des Fichiers**:
  Le programme gère deux fichiers, l'un pour stocker les soldes des comptes et l'autre pour enregistrer l'historique des transactions.

- **Affichage et Mise à Jour**:
  Les soldes sont affichés à l'utilisateur après chaque opération, et l'historique est mis à jour en conséquence.

- **Traitement des Erreurs**:
  Des vérifications sont effectuées pour éviter des opérations invalides, telles que le retrait d'un montant supérieur au solde disponible.

- **Boucle d'Interaction**:
  Le programme utilise une boucle pour permettre à l'utilisateur d'effectuer plusieurs opérations avant de choisir de quitter le programme.
