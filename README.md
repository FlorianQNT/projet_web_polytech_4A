# projet web polytech 4A: Le Codex Stygien

## Disclaimer
L'IA a été utilisé pour un premier jet de mise en page (modifier par la suite) ainsi que pour aider lors des requetes SQL pour les pages "Build" et "Codex" à cause de la complexité des requètes SQL pour l'affichage.

## Membres:
-Florian QUINT(base de donnée et programmation)<br>
-Florian LE RUYET(base de donnée et visuel)<br>

## Description du projet:
Ce site permet aux joueurs du jeu Hades d'avoir un endroit pour consulté tous les boons des dieux, marteaux, armes, talents du mirroir avec leurs spécificité le tout en français.<br>
Le site est en 3 pages:
- Une page d'acceuil pour l'arrivé du site et présenter ce qu'il y a sur ce dernier.
- Une page Codex qui permet de séléctionner ce que l'on veut voir (boons des dieux, marteaux, armes, talents du mirroir).
- Une page Build qui permet de créer ce que l'on appelle un build qui est une liste de boons que l'on obtien au fur et à mesure de l'avancement dans la partie.

Toutes les informations consultables dans les pages Codex et Build se trouvent dans une base de données hébergé sur XAMPP (donc en local)<br>

## Technologies utilisés:
- HTML5
- CSS
- JavaScript
- MySQL (MariaDB)
- NodeJS

## Lien
Il n'y a pas de lien car tout est en local.<br>

## Bug Connu:
Lors de la sélection d'un boon, si ce dernier est utilisable dans un duo, le duo est prenable alors qu'il manque le deuxième boon<br>
Dans la page Codex, la taille des colonnes est impactée par la quantité de texte présente dans la colonne "Prérequis"

