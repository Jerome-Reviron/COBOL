# COBOL

## Table des Matières
- [Introduction](#introduction)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Contribuer](#contribuer)
- [Licence](#licence)
- [CalculReductions.cob](#CalculReductions.cob)
- [Programme 2](#programme-2)
- [Programme 3](#programme-3)
- [Programme 4](#programme-4)
- [Programme 5](#programme-5)
- [Programme 6](#programme-6)

## Introduction
Ce repository COBOL a été créé dans le cadre de mon travail de développement en langage COBOL. Il regroupe plusieurs programmes conçus pour répondre à des besoins spécifiques.

## Installation
Le repository COBOL est accessible publiquement sur GitHub. L'installation est simple, il suffit de cloner le repository sur votre machine locale.

## Utilisation
Le repository contient plusieurs programmes COBOL, chacun ayant une fonction spécifique. Les détails d'utilisation de chaque programme sont fournis dans leurs fichiers respectifs.

## Contribuer
Bien que le repository soit public, les contributions directes ne sont pas autorisées. Cependant, les suggestions, commentaires et retours sont les bienvenus. Pour toute contribution majeure, veuillez me contacter directement.

## Licence
Tous les droits sont réservés à l'auteur du repository, REVIRON Jérôme.

# CalculReductions.cob

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
