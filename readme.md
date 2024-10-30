# Commandes SQL par Story


```sql
INSERT INTO utilisateur(email, mot_de_passe, pseudo, date_heure_inscription, date_heure_d_connexion)
VALUES ("jsp@gmail.com", SHA2("Salaaa", 256),"je sais pas", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Modification mot de passe
UPDATE utilisateur
SET mot_de_passe = SHA2('New mdp', 256)
WHERE id = 1 AND mot_de_passe = SHA2('Last mdp', 256);

-- Modification email
UPDATE utilisateur
SET email = 'nouveau@email.com'
WHERE id = 1 
  AND mot_de_passe = SHA2('mdp_actuel', 256)
  AND email = 'ancien@email.com';

SELECT 
    CASE 
        WHEN email = '#Input email' 
             AND mot_de_passe = SHA2('#Input MDP', 256) 
             THEN 'Connexion réussie'
        ELSE 'Connexion échouée'
    END AS statut_connexion,
    utilisateur.id,
    utilisateur.pseudo,
    email
FROM utilisateur;

INSERT INTO jeu(nom)
VALUES ('Booo Of Memory');

SELECT jeu.nom AS 'JEU', 
       utilisateur.pseudo AS 'PSEUDO', 
       difficulte.nom AS 'DIFFICULTE', 
       score.score_partie AS 'SCORE'
FROM score
JOIN jeu ON score.jeu_id = jeu.id 
JOIN utilisateur ON score.joueur_id = utilisateur.id 
JOIN difficulte ON score.difficulte = difficulte.id
ORDER BY jeu.nom, difficulte.id DESC, score.score_partie DESC;

-- Par jeu
SELECT jeu.nom, utilisateur.pseudo, difficulte.nom, score.score_partie
FROM score
JOIN jeu ON score.jeu_id = jeu.id 
JOIN utilisateur ON score.joueur_id = utilisateur.id 
JOIN difficulte ON score.difficulte = difficulte.id
WHERE jeu.nom = 'Booo Of Memory'
ORDER BY difficulte.id DESC, score.score_partie DESC;

-- Par joueur
SELECT jeu.nom, utilisateur.pseudo, difficulte.nom, score.score_partie
FROM score
JOIN jeu ON score.jeu_id = jeu.id 
JOIN utilisateur ON score.joueur_id = utilisateur.id 
JOIN difficulte ON score.difficulte = difficulte.id
WHERE utilisateur.pseudo = 'DraxanLT'
ORDER BY difficulte.id DESC, score.score_partie DESC;

INSERT INTO score (joueur_id, jeu_id, difficulte, score_partie, date_heure_partie) 
VALUES(1, 1, 3, 36, CURRENT_TIMESTAMP);

INSERT INTO chat (jeu_id, joueur_id, isSender, message, date_heure_message)
VALUES (1, 1, 1, 'Envoyer un message', CURRENT_TIMESTAMP);

SELECT 
    chat.message, 
    utilisateur.pseudo, 
    chat.date_heure_message,
    CASE
        WHEN chat.joueur_id = 1 THEN TRUE
        ELSE FALSE
    END AS isSender
FROM chat 
JOIN utilisateur ON chat.joueur_id = utilisateur.id
WHERE chat.date_heure_message >= NOW() - INTERVAL 1 DAY
ORDER BY chat.date_heure_message;

SELECT 
    exp.pseudo AS expediteur,
    dest.pseudo AS destinataire,
    mp.contenu,
    mp.date_heure_envoie,
    mp.date_heure_lecture,
    mp.lu
FROM message_prive mp
JOIN utilisateur exp ON mp.p_joueur_id = exp.id
JOIN utilisateur dest ON mp.s_joueur_id = dest.id
WHERE mp.id IN (
    SELECT MAX(id)
    FROM message_prive
    WHERE p_joueur_id = 1 OR s_joueur_id = 1
    GROUP BY 
        CASE 
            WHEN p_joueur_id = 1 THEN s_joueur_id
            ELSE p_joueur_id
        END
)
ORDER BY mp.date_heure_envoie DESC;

WITH RankedPlayers AS (
    SELECT 
        DATE_FORMAT(date_heure_partie, '%Y') AS Année,
        DATE_FORMAT(date_heure_partie, '%m') AS Mois, 
        utilisateur.pseudo,
        COUNT(score.id) AS Total_Parties,
        ROW_NUMBER() OVER (PARTITION BY DATE_FORMAT(score.date_heure_partie, '%Y-%m') 
        ORDER BY COUNT(score.id) DESC) AS Rank
    FROM utilisateur
    JOIN score ON utilisateur.id = score.joueur_id
    GROUP BY utilisateur.id, Année, Mois)
SELECT 
    Année,
    Mois,
    MAX(CASE WHEN Rank = 1 THEN pseudo END) AS Top_1,
    MAX(CASE WHEN Rank = 2 THEN pseudo END) AS Top_2,
    MAX(CASE WHEN Rank = 3 THEN pseudo END) AS Top_3,
    SUM(Total_Parties) AS Total_Parties
FROM RankedPlayers 
WHERE Rank <= 3
GROUP BY Année, Mois
ORDER BY Année ASC, Mois ASC;
