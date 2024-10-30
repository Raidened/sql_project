# Guide d'implémentation des Stories SQL

## Story 3 - Inscription Utilisateur
1. Exécuter la requête INSERT dans utilisateur avec:
   - email 
   - mot de passe (chiffré avec [SHA2](https://fr.wikipedia.org/wiki/SHA-2))
   - pseudo
   - dates d'inscription/connexion

## Story 4 - Modification Profil
1. UPDATE mot de passe:
   - Vérifier ancien mot de passe
   - Mettre à jour avec nouveau mot de passe chiffré
2. UPDATE email:
   - Vérifier mot de passe
   - Mettre à jour email
3. UPDATE bio:
   - Simple mise à jour du champ bio

## Story 5 - Connexion
1. Exécuter SELECT pour vérifier:
   - Correspondance email
   - Correspondance mot de passe chiffré
2. Retourne statut connexion + infos utilisateur

## Story 6 - Création Jeu
1. INSERT dans table jeu:
   - Nom du jeu

## Story 7 - Affichage Scores Globaux
1. SELECT avec [JOIN](https://www.w3schools.com/sql/sql_join.asp) multiples:
   - jeu
   - utilisateur 
   - difficulte
2. Trier par jeu, difficulté et score

## Story 8 - Filtrage Scores  
1. Même requête que Story 7 avec [WHERE](https://www.w3schools.com/sql/sql_where.asp) sur:
   - Nom du jeu
   - Pseudo joueur  
   - Niveau difficulté

## Story 9 - Sauvegarde Score
1. INSERT nouveau score:
   - ID joueur
   - ID jeu
   - Difficulté
   - Score
   - Date/heure
2. SELECT pour vérifier insertion

## Story 15 - Messages Privés
1. INSERT messages de test
2. SELECT avec JOIN pour afficher:
   - Expéditeur
   - Destinataire  
   - Contenu
   - Dates envoi/lecture
   - Statut lu

## Story 17 - Statistiques Mensuelles
1. Requête [WITH](https://dev.mysql.com/doc/refman/8.0/en/with.html) pour classement joueurs
2. Grouper par année/mois
3. Afficher top 3 + statistiques

## Story 18 - Statistiques Personnelles
1. SELECT avec regroupement par mois:
   - Total parties
   - Score moyen 
   - Jeu le plus joué
2. Filtrer sur pseudo joueur

Chaque étape nécessite de vérifier la structure des tables et les contraintes de [clés étrangères](https://www.w3schools.com/sql/sql_foreignkey.asp) avant exécution.
