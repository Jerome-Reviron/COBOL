# COBOL

## Table des Matières
- [Introduction](#introduction)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Contribuer](#contribuer)
- [Licence](#licence)
- [Helloworld.cob](#Helloworld)
- [JardinPerimetre.cob](#JardinPerimetre)
- [CalculReductions.cob](#CalculReductions)
- [Programme 4](#programme-4)
- [Programme 5](#programme-5)
- [Programme 6](#programme-6)

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
