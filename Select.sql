
/*STORY 2*/








/*STORY 3*/
INSERT INTO utilisateur(email, mot_de_passe, pseudo, date_heure_inscription, date_heure_d_connexion)
VALUES ("jsp@gmail.com", SHA2("Salaaa", 256),"je sais pas", '2024-10-28 22:05:58', '2024-10-28 22:05:58');


/*Story 4*/

/*UPDATE mot de passe */

UPDATE utilisateur
SET mot_de_passe = SHA2('New mdp', 256)
WHERE id = utilisateur.id = 1 
  AND mot_de_passe = SHA2('Last mdp', 256);

  /*UPDATE Email */

UPDATE utilisateur
SET email = '#Input New email'
WHERE id = utilisateur.id = 1 
  AND mot_de_passe = SHA2('#Input MDP', 256)
  AND email = '#Input Last email';

  /*UPDATE bio */

UPDATE utilisateur
SET bio = ('New mdp')
WHERE id = utilisateur.id = 1 

-------

/*Story 5*/
/*Connexion */

SELECT 
    CASE 
        WHEN email = '#Input email' 
             AND




/*STORY 6*/
INSERT INTO jeu(nom)
VALUES ('Booo Of Memory');





/*STORY 7*/
SELECT jeu.nom AS 'JEU', utilisateur.pseudo AS 'PSEUDO', difficulte.nom AS 'DIFFICULTE', score.score_partie AS 'SCORE'
FROM score
JOIN jeu ON score.jeu_id = jeu.id 
JOIN utilisateur ON score.joueur_id = utilisateur.id 
JOIN difficulte ON score.difficulte = difficulte.id
ORDER BY jeu.nom, difficulte.id DESC, score.score_partie DESC





/*STORY 8*/
SELECT jeu.nom AS 'JEU', utilisateur.pseudo AS 'PSEUDO', difficulte.nom AS 'DIFFICULTE', score.score_partie AS 'SCORE'
FROM score
JOIN jeu ON score.jeu_id = jeu.id 
JOIN utilisateur ON score.joueur_id = utilisateur.id 
JOIN difficulte ON score.difficulte = difficulte.id
WHERE jeu.nom = 'Booo Of Memory'
ORDER BY jeu.nom, difficulte.id DESC, score.score_partie DESC;/*essai1*/

SELECT jeu.nom AS 'JEU', utilisateur.pseudo AS 'PSEUDO', difficulte.nom AS 'DIFFICULTE', score.score_partie AS 'SCORE'
FROM score
JOIN jeu ON score.jeu_id = jeu.id 
JOIN utilisateur ON score.joueur_id = utilisateur.id 
JOIN difficulte ON score.difficulte = difficulte.id
WHERE utilisateur.pseudo = 'DraxanLT'
ORDER BY jeu.nom, difficulte.id DESC, score.score_partie DESC;/*essai2*/

SELECT jeu.nom AS 'JEU', utilisateur.pseudo AS 'PSEUDO', difficulte.nom AS 'DIFFICULTE', score.score_partie AS 'SCORE'
FROM score
JOIN jeu ON score.jeu_id = jeu.id 
JOIN utilisateur ON score.joueur_id = utilisateur.id 
JOIN difficulte ON score.difficulte = difficulte.id
WHERE difficulte.nom = 'Intermédiaire'
ORDER BY jeu.nom, difficulte.id DESC, score.score_partie DESC;/*essai3*/





/*STORY 9 */

INSERT INTO score (joueur_id,jeu_id,difficulte,score_partie,date_heure_partie) 
VALUES(1,1,3,36,'2024-10-30 09:59:58');

SELECT utilisateur.pseudo,score.jeu_id,score.difficulte,score.score_partie,score.date_heure_partie
FROM score
INNER JOIN utilisateur
ON utilisateur.id = score.joueur_id
WHERE utilisateur.pseudo = 'DraxanLT' AND score.difficulte = 3
ORDER BY score.date_heure_partie DESC
LIMIT 1;

INSERT INTO score (joueur_id,jeu_id,difficulte,score_partie,date_heure_partie) 
VALUES(2,1,2,19,'2024-10-30 09:59:58');

SELECT utilisateur.pseudo,score.jeu_id,score.difficulte,score.score_partie,score.date_heure_partie
FROM score
INNER JOIN utilisateur
ON utilisateur.id = score.joueur_id
WHERE utilisateur.pseudo = 'MateisB' AND score.difficulte = 2
ORDER BY score.date_heure_partie DESC
LIMIT 1;



 mot_de_passe = SHA2('#Input MDP', 256) 
             THEN 'Connexion réussie'
        ELSE 'Connexion échouée'
    END AS  statut_connexion,utilisateur.id,utilisateur.pseudo,email
FROM utilisateur;



/*STORY 10 */ ---------------------------------

INSERT INTO chat (jeu_id, joueur_id, isSender, message, date_heure_message)
VALUES (1, 1, 1, 'Envoyer un message', CURRENT_TIMESTAMP);

/*STORY 11 */ ---------------------------------

SELECT 
    chat.message, 
    utilisateur.pseudo, 
    chat.date_heure_message,
    CASE
        WHEN chat.joueur_id = 1 THEN TRUE
        ELSE FALSE
    END AS isSender
FROM 
    chat 
JOIN 
    utilisateur ON chat.joueur_id = utilisateur.id
WHERE 
    chat.date_heure_message >= NOW() - INTERVAL 1 DAY
ORDER BY 
    chat.date_heure_message;

/*STORY 12 */ ---------------------------------

SELECT utilisateur.id, score.joueur_id, utilisateur.pseudo, score.score_partie, score.jeu_id, score.difficulte ,score.date_heure_partie, score.ancien_score
FROM score
JOIN utilisateur ON score.joueur_id = utilisateur.id
WHERE utilisateur.pseudo LIKE '%a%'
ORDER BY score.date_heure_partie;

/*STORY 13 */ ---------------------------------



/*STORY 14 */ ---------------------------------

-- Requête d'envoi de message
INSERT INTO chat (jeu_id, joueur_id, isSender, message, date_heure_message)
VALUES (1, 1, 1, 'Qui est entrain de jouer là ?', CURRENT_TIMESTAMP);

-- Requête de suppression de message
DELETE FROM chat
WHERE id_chat = 28;

-- Requête de modification de message
UPDATE chat 
SET jeu_id = 1, 
    joueur_id = 1, 
    isSender = 1, 
    message = 'Qui ne joue pas là ?', 
    date_heure_message = CURRENT_TIMESTAMP
WHERE 
    id_chat = 28;

/*STORY 15 */ ---------------------------------

SELECT expediteur.pseudo AS expediteur, destinataire.pseudo AS destinataire, message_prive.contenu, message_prive.date_heure_envoie, message_prive.date_heure_lecture, message_prive.lu
FROM message_prive 
JOIN utilisateur expediteur ON (
    CASE 
        WHEN message_prive.p_joueur_id = 1 THEN message_prive.p_joueur_id
        ELSE message_prive.s_joueur_id 
    END = expediteur.id
)
JOIN utilisateur destinataire ON (
    CASE 
        WHEN message_prive.p_joueur_id = 1 THEN message_prive.s_joueur_id
        ELSE message_prive.p_joueur_id
    END = destinataire.id
)
WHERE message_prive.id IN (
    SELECT MAX(id)
    FROM message_prive
    WHERE p_joueur_id = 1 OR s_joueur_id = 1
    GROUP BY 
        CASE 
            WHEN p_joueur_id = 1 THEN s_joueur_id
            ELSE p_joueur_id
        END
)
ORDER BY message_prive.date_heure_envoie DESC;

/*STORY 16 */ ---------------------------------

SELECT 
    exp.pseudo AS expediteur,
    dest.pseudo AS destinataire,
    mp.contenu,
    mp.date_heure_envoie,
    mp.date_heure_lecture,
    mp.lu,
    -- Nombre de parties jouées par l'expéditeur
    (SELECT COUNT(*) 
     FROM score s1 
     WHERE s1.joueur_id = mp.p_joueur_id) AS nb_parties_expediteur,
    -- Nombre de parties jouées par le destinataire
    (SELECT COUNT(*) 
     FROM score s2 
     WHERE s2.joueur_id = mp.s_joueur_id) AS nb_parties_destinataire,
    -- Jeu le plus joué par l'expéditeur
    (SELECT j1.nom
     FROM jeu j1
     JOIN score s3 ON j1.id = s3.jeu_id
     WHERE s3.joueur_id = mp.p_joueur_id
     GROUP BY j1.id, j1.nom
     ORDER BY COUNT(*) DESC
     LIMIT 1) AS jeu_favori_expediteur,
    -- Jeu le plus joué par le destinataire
    (SELECT j2.nom
     FROM jeu j2
     JOIN score s4 ON j2.id = s4.jeu_id
     WHERE s4.joueur_id = mp.s_joueur_id
     GROUP BY j2.id, j2.nom
     ORDER BY COUNT(*) DESC
     LIMIT 1) AS jeu_favori_destinataire
FROM message_prive mp
JOIN utilisateur exp ON mp.

-------

/*Story 17*/


/* Score top 3 */
WITH RankedPlayers AS (
    SELECT 
        DATE_FORMAT(date_heure_partie, '%Y') AS Année,
        DATE_FORMAT(date_heure_partie, '%m') AS Mois, 
        utilisateur.pseudo,
        COUNT(score.id) AS Total_Parties,
        ROW_NUMBER() OVER (PARTITION BY DATE_FORMAT(score.date_heure_partie, '%Y-%m') ORDER BY COUNT(score.id) DESC) AS Rank
    FROM 
        utilisateur
    JOIN 
        score ON utilisateur.id = score.joueur_id
    GROUP BY 
        utilisateur.id, Année, Mois),

MostPlayedGames AS (
    SELECT 
        DATE_FORMAT(date_heure_partie, '%Y') AS Année,
        DATE_FORMAT(date_heure_partie, '%m') AS Mois,
        jeu_id,
        COUNT(jeu_id) AS Total_Jouées,
        ROW_NUMBER() OVER (PARTITION BY DATE_FORMAT(score.date_heure_partie, '%Y-%m') ORDER BY COUNT(jeu_id) DESC) AS Rank
    FROM 
        score
    GROUP BY 
        jeu_id, Année, Mois
)

SELECT 
    RankedPlayers.Année,
    RankedPlayers.Mois,
    MAX(CASE WHEN RankedPlayers.Rank = 1 THEN RankedPlayers.pseudo END) AS Top_1,
    MAX(CASE WHEN RankedPlayers.Rank = 2 THEN RankedPlayers.pseudo END) AS Top_2,
    MAX(CASE WHEN RankedPlayers.Rank = 3 THEN RankedPlayers.pseudo END) AS Top_3,
    SUM(RankedPlayers.Total_Parties) AS Total_Parties,
    (SELECT MostPlayedGames.jeu_id
     FROM MostPlayedGames 
     WHERE MostPlayedGames.Année = RankedPlayers.Année AND MostPlayedGames.Mois = RankedPlayers.Mois AND MostPlayedGames.Rank = 1) AS Jeu_Plus_Joué
FROM 
    RankedPlayers 
WHERE 
    RankedPlayers.Rank <= 3
GROUP BY 
    RankedPlayers.Année, RankedPlayers.Mois
ORDER BY 
    RankedPlayers.Année ASC, RankedPlayers.Mois ASC;



    -------

/*Story 18*/

/* Score du joueur */

SELECT 
    DATE_FORMAT(date_heure_partie, '%y') AS Année,
    DATE_FORMAT(date_heure_partie, '%m') AS Mois, 
    COUNT(score_partie) AS Total_Parties,
    AVG(score_partie) AS Score_moyen,
  
    (SELECT jeu_id
     FROM score AS s2
     WHERE s2.joueur_id = (     SELECT id FROM utilisateur WHERE pseudo = '#Input Pseudo') 
       AND DATE_FORMAT(s2.date_heure_partie, '%y-%m') = DATE_FORMAT(score.date_heure_partie, '%y-%m')
     GROUP BY jeu_id
     ORDER BY COUNT(jeu_id) DESC
     LIMIT 1) AS Jeu_Plus_Joué

FROM score
WHERE joueur_id = (  SELECT id FROM utilisateur WHERE pseudo = '#Input Pseudo') 
GROUP BY Année, Mois  
ORDER BY Année ASC, Mois ASC;