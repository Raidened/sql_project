-- SQLBook: Code
/*STORY 1*/

CREATE TABLE utilisateur(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(60) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL,
    pseudo VARCHAR(40) UNIQUE NOT NULL,
    adresse_postal TEXT,
    code_postal INT,
    ville VARCHAR(255),
    pays VARCHAR(255),
    telephone_portable INT,
    telephone_fixe INT,
    date_inscription DATE,
    PRIMARY KEY(id)
);

CREATE TABLE service(
    id INT NOT NULL AUTO_INCREMENT,
    utilisateur_id INT NOT NULL,
    nom VARCHAR(40) NOT NULL,
    description TEXT NOT NULL,
    adresse TEXT NOT NULL,
    code_postal TEXT NOT NULL,
    ville VARCHAR(255) NOT NULL,
    pays VARCHAR(255) NOT NULL,
    date_heure_service DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    information_complémentaire TEXT NOT NULL,
    FOREIGN KEY(utilisateur_id) REFERENCES utilisateur(id),
    PRIMARY KEY(id)
);

CREATE TABLE message(
    id INT NOT NULL AUTO_INCREMENT,
    expediteur_id INT NOT NULL,
    receveur_id INT NOT NULL,
    contenu_message TEXT NOT NULL,
    date_heure_envoi DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY(expediteur_id) REFERENCES utilisateur(id),
    FOREIGN KEY(receveur_id) REFERENCES utilisateur(id),
    PRIMARY KEY(id)
);


CREATE TABLE service_utilisateur(
    id INT NOT NULL AUTO_INCREMENT,
    service_id INT NOT NULL,
    utilisateur_id INT NOT NULL,
    date_heure_inscription DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY(service_id) REFERENCES service(id),
    FOREIGN KEY(utilisateur_id) REFERENCES utilisateur(id),
    PRIMARY KEY(id)
);



/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 3*/

INSERT INTO utilisateur (
    email, 
    mot_de_passe, 
    pseudo, 
    date_inscription)
VALUES ('draxan.launay-tran@edu.esiee-it.fr', 'motdepasse', 'DraxanLT', CURRENT_TIMESTAMP),
('test1@edu.esiee-it.fr', 'motdepasse', 'Martial P', CURRENT_TIMESTAMP),
('test2@edu.esiee-it.fr', 'motdepasse', 'Test2', CURRENT_TIMESTAMP),
('test3@edu.esiee-it.fr', 'motdepasse', 'Test3', CURRENT_TIMESTAMP),
('test4@edu.esiee-it.fr', 'motdepasse', 'Test4', CURRENT_TIMESTAMP),
('test5@edu.esiee-it.fr', 'motdepasse', 'Test5', CURRENT_TIMESTAMP),
('test6@edu.esiee-it.fr', 'motdepasse', 'Test6', CURRENT_TIMESTAMP),
('test7@edu.esiee-it.fr', 'motdepasse', 'Test7', CURRENT_TIMESTAMP),
('test8@edu.esiee-it.fr', 'motdepasse', 'Test8', CURRENT_TIMESTAMP),
('test9@edu.esiee-it.fr', 'motdepasse', 'Test9', CURRENT_TIMESTAMP);

-- Le mot de passe sera hâché en SHA-131

/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 4*/



UPDATE utilisateur
SET adresse_postal = '',code_postal = '', ville ='',pays ='',telephone_portable='',telephone_fixe = ''
WHERE id =  /*ID JOUEUR*/ ;




/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 5*/

INSERT INTO service (utilisateur_id,nom,description,adresse,code_postal,ville,pays,date_heure_service,information_complémentaire)
VALUES (1, 'Ménage', "Retraité recherche une personne pour effectuer quelques heures de ménage.", 
'35 boulevard du port', 95000, 'Cergy', 'France', '2026-10-24 19:19:38', "l'école qui bouscule le code"),
(2, 'Babysitting', 
 "Bonjour. Nous sommes parents d'une fille de 8 ans.Nous recherchons une femme aux environs de Cergy village pour l'accompagner à l'école à 7h30 et l'a reprendre à 18 H30 jusqu'à 21 H30.Ceci 3 ou 4 fois par semaine. L'école est à 2 minutes de la maison.", 
 'adresse', 95000, 'Cergy', 'France', '2023-07-23 23:04:30', "plus"),
(3, "Garde d'animaux", 
 "Bonjour,Je cherche urgemment une personne de confiance pour garder notre chat pendant 2 semaines, du 13 au 27 août.A bientôt", 
 'adresse', 75011, 'Paris', 'France', '2024-10-28 16:26:42', "plus"),
(4, 'Coach sportif', "Bonjour.Je cherche une personne entre 50 et 80 ans, propriétaire d'un petit voilier (5/6 mètres) amarré à un port sur Marseille (n'importe lequel) qui accepterait, moyennant finances, de me former régulièrement, en fin de semaine aux bases de la navigation sur son petit voilier. J'ai un permis côtier, j'ai fait plusieurs fois du dériveur et suis respectueux des personnes, des biens et suis sympathique. Mon objectif : Nouer une amitié et être  à  terme en capacité de louer ce petit voilier à cette personne (si elle est d’accord) pour des sorties en mer en parfaite autonomie.Pas sérieux s'abstenir.A bientôt.Bruno54 ans", 
 'adresse', 13005, 'Marseille', 'France', '2025-03-19 20:38:21', "plus"),
(5, 'Bricolage', "Bonjour, ma demande est un peu particulière.Je fabrique des cadres personnalisés que j’envoie ensuite à des clients.La personnalisation consiste en 1 fond (à faire imprimer dans n’importe quel imprimeur du coin).Le fond est à coller sur le cadre, un miroir est à coller sur ce fond. Puis mise dans un carton et dépôt en bureau de poste.Pour le moment, je le fais moi-même, mais j’aimerais essayer de déléguer cette tache.Tous les matériaux seront déposés chez vous. L’assemblage d’un cadre prend environ 15 min et je propose 10 € à cadre. La fréquence de création est de plus ou moins de 2 à 3 cadres par semaine. Donc environ 100/120€ par mois pour une petite heure de travail par semaine sans bouger de chez vous. Je cherche quelqu’un de minutieux et fiable sur le long terme et près à prendre potentiellement en charge une plus grande quantité de cadre dans le futur proche.", 
'adresse', 75012, 'Paris', 'France', '2023-01-17 00:44:52', "plus"),
(6, 'Déménagement', "Bonjour Je cherche pour le 10 août 2 personnes avec camion 20m3 (si pas de camion je le louerais) les 2 appartements sont  à une rue donc pas de route et avec ascenseur et tout rentre (les 2. Articles les plus lourd machine à laver et frigo).100 euros par personne et 300 en tout si camion.",
 'adresse', 13005, 'Marseille', 'France', '2026-12-21 08:25:20', "plus"),
(7, "Garde d'animaux", "Bonjour, Je cherche une pet Sitter aux alentours de notre domicile,(max 15km) pour mon chien, une journée par semaine sur une période d'au moins 3 mois.Avec expérience ou qui possède déjà un animal de compagnie. 15€/JOUR. Si vous êtes véhiculé et intéressé, vous pouvez m''envoyer un message. A bientôt;!",
 'adresse', 13180, 'Gignac-la-Nerthe', 'France', '2024-01-16 23:34:32', "plus"),
(8, 'Ménage', "Bonjour, Je suis une conciergerie qui recherche des prestataires de ménage pour des remplacements. Profil recherché :- Auto- entrepreneur (obligatoire)- Disponible entre 10h00 et 17h00- Sérieux- Motivé- À l'écouteUne personne responsable et autonome. N'hésitez pas à me contacter", 
 'adresse', 13000, 'Marseille', 'France', '2025-04-10 01:59:01', "plus"),
(9, 'Babysitting', "Bonjour,Nous sommes parents de deux enfants de 2 et 5 ans. Nous avons besoin d'un intervenant micro-entrepreneur d'expérience pour les garder de manière ponctuelle occasionnellement. Cette personne pourrait être sollicité certaines fin d'après-midi dans la semaine, certains soirs dans la semaine, certaines journée voire le soir également les week-ends. Il faudra probablement leur donner le goûter, leur donner ou préparer le dîner et les coucher.Merci d'avance.", 
 'adresse', 95000, 'Cergy', 'France', '2024-08-05 18:26:40', "plus"),
(10, 'Bricolage', "Bonjour,J'ai 4 barres de seuil à poser, je veux du travail bien fait , surtout sur les finitions, des découpes propres et parfaites, bien poser à plat sur le sol, je ne veux pas de silicone pour camoufler les imperfections, le cache-misère, impossible pour moi.Si ca vous dit, faite le moi savoir !ha oui, chose très importante : 10€/la barre de seuil posée = 40€", 
 'adresse', 75018, 'Paris', 'France', '2026-09-09 15:54:25', "plus");

/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 6*/


INSERT INTO service_utilisateur(service_id,utilisateur_id,date_heure_inscription)
VALUES(1,2,CURRENT_TIMESTAMP),
      (6,5,CURRENT_TIMESTAMP),
      (7,10,CURRENT_TIMESTAMP),
      (4,9,CURRENT_TIMESTAMP),
      (5,6,CURRENT_TIMESTAMP),
      (6,8,CURRENT_TIMESTAMP),
      (7,3,CURRENT_TIMESTAMP),
      (8,4,CURRENT_TIMESTAMP),
      (9,10,CURRENT_TIMESTAMP),
      (10,5,CURRENT_TIMESTAMP),
      (6,3,CURRENT_TIMESTAMP),
      (10,1,CURRENT_TIMESTAMP);





/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 7*/

INSERT INTO message (expediteur_id, receveur_id, contenu_message, date_heure_envoi)
VALUES (2, 1, "Salut !", CURRENT_TIMESTAMP),
(1, 2, 'Bonjour !', CURRENT_TIMESTAMP),
(2, 1, 'Je souhaite utiliser votre service.', CURRENT_TIMESTAMP),
(1, 2, 'Très bien', CURRENT_TIMESTAMP),
(1, 2, 'Il vous suffit de prendre un horraire.', CURRENT_TIMESTAMP),
(1, 2, "Par la suite, nous vous recontacterons pour savoir si l'horraire nous convient.", CURRENT_TIMESTAMP),
(2, 1, "Serait-il possible d'esquiver cette étape ?", CURRENT_TIMESTAMP),
(1, 2, 'Je suis désolé mais ce ne sera pas possible.', CURRENT_TIMESTAMP),
(1, 2, 'Vous devrez attendre une réponse de notre part.', CURRENT_TIMESTAMP),
(2, 1, 'Très bien. ', CURRENT_TIMESTAMP),
(1, 2, 'Souhaitez-vous bénéficier de notre service de babysitting ?', CURRENT_TIMESTAMP),
(2, 1, 'Ah oui, bien sûr !', CURRENT_TIMESTAMP),
(2, 1, 'Mes sacripants sont in-gé-rables !', CURRENT_TIMESTAMP),
(1, 2, 'Ah', CURRENT_TIMESTAMP),
(2, 1, "Oui, cela risque d'être compliqué", CURRENT_TIMESTAMP),
(1, 2, 'Ne vous inquiétez pas, nous avons nos méthodes', CURRENT_TIMESTAMP),
(2, 1, 'Comment ça ?', CURRENT_TIMESTAMP),
(1, 2, 'Ne vous inquiétez pas :)', CURRENT_TIMESTAMP),
(2, 1, "Non, justement je m'inquiète. Qu'allez-vous faire à mes fils ?", CURRENT_TIMESTAMP),
(1, 2, 'Ne vous inquiétez pas...', CURRENT_TIMESTAMP),
(2, 1, 'RÉPONDEZ-MOI !!!!', CURRENT_TIMESTAMP),
(1, 2, '...', CURRENT_TIMESTAMP),
(1, 2, 'Ca fera 150eur !', CURRENT_TIMESTAMP),
(2, 1, 'Pardon ?', CURRENT_TIMESTAMP),
(1, 2, '150eur', CURRENT_TIMESTAMP);

/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 8*/

SELECT *
FROM message
WHERE expediteur_id = 1
ORDER BY date_heure_envoi ASC;

/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 9*/





/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 10*/





INSERT INTO service (utilisateur_id,nom,description,adresse,code_postal,ville,pays,date_heure_service,information_complémentaire)
VALUES (1, 'Ménage', "Retraité recherche une personne pour effectuer quelques heures de ménage.", 
'35 boulevard du port', 95000, 'Cergy', 'France', '2026-10-24 19:19:38', "l'école qui bouscule le code"),
(2, 'Babysitting', 
 "Bonjour. Nous sommes parents d'une fille de 8 ans.Nous recherchons une femme aux environs de Cergy village pour l'accompagner à l'école à 7h30 et l'a reprendre à 18 H30 jusqu'à 21 H30.Ceci 3 ou 4 fois par semaine. L'école est à 2 minutes de la maison.", 
 'adresse', 95000, 'Cergy', 'France', '2023-07-23 23:04:30', "plus"),
(3, "Garde d'animaux", 
 "Bonjour,Je cherche urgemment une personne de confiance pour garder notre chat pendant 2 semaines, du 13 au 27 août.A bientôt", 
 'adresse', 75011, 'Paris', 'France', '2024-10-28 16:26:42', "plus"),
(4, 'Coach sportif', "Bonjour.Je cherche une personne entre 50 et 80 ans, propriétaire d'un petit voilier (5/6 mètres) amarré à un port sur Marseille (n'importe lequel) qui accepterait, moyennant finances, de me former régulièrement, en fin de semaine aux bases de la navigation sur son petit voilier. J'ai un permis côtier, j'ai fait plusieurs fois du dériveur et suis respectueux des personnes, des biens et suis sympathique. Mon objectif : Nouer une amitié et être  à  terme en capacité de louer ce petit voilier à cette personne (si elle est d’accord) pour des sorties en mer en parfaite autonomie.Pas sérieux s'abstenir.A bientôt.Bruno54 ans", 
 'adresse', 13005, 'Marseille', 'France', '2025-03-19 20:38:21', "plus"),
(5, 'Bricolage', "Bonjour, ma demande est un peu particulière.Je fabrique des cadres personnalisés que j’envoie ensuite à des clients.La personnalisation consiste en 1 fond (à faire imprimer dans n’importe quel imprimeur du coin).Le fond est à coller sur le cadre, un miroir est à coller sur ce fond. Puis mise dans un carton et dépôt en bureau de poste.Pour le moment, je le fais moi-même, mais j’aimerais essayer de déléguer cette tache.Tous les matériaux seront déposés chez vous. L’assemblage d’un cadre prend environ 15 min et je propose 10 € à cadre. La fréquence de création est de plus ou moins de 2 à 3 cadres par semaine. Donc environ 100/120€ par mois pour une petite heure de travail par semaine sans bouger de chez vous. Je cherche quelqu’un de minutieux et fiable sur le long terme et près à prendre potentiellement en charge une plus grande quantité de cadre dans le futur proche.", 
'adresse', 75012, 'Paris', 'France', '2023-01-17 00:44:52', "plus"),
(6, 'Déménagement', "Bonjour Je cherche pour le 10 août 2 personnes avec camion 20m3 (si pas de camion je le louerais) les 2 appartements sont  à une rue donc pas de route et avec ascenseur et tout rentre (les 2. Articles les plus lourd machine à laver et frigo).100 euros par personne et 300 en tout si camion.",
 'adresse', 13005, 'Marseille', 'France', '2026-12-21 08:25:20', "plus"),
(7, "Garde d'animaux", "Bonjour, Je cherche une pet Sitter aux alentours de notre domicile,(max 15km) pour mon chien, une journée par semaine sur une période d'au moins 3 mois.Avec expérience ou qui possède déjà un animal de compagnie. 15€/JOUR. Si vous êtes véhiculé et intéressé, vous pouvez m''envoyer un message. A bientôt;!",
 'adresse', 13180, 'Gignac-la-Nerthe', 'France', '2024-01-16 23:34:32', "plus"),
(8, 'Ménage', "Bonjour, Je suis une conciergerie qui recherche des prestataires de ménage pour des remplacements. Profil recherché :- Auto- entrepreneur (obligatoire)- Disponible entre 10h00 et 17h00- Sérieux- Motivé- À l'écouteUne personne responsable et autonome. N'hésitez pas à me contacter", 
 'adresse', 13000, 'Marseille', 'France', '2025-04-10 01:59:01', "plus"),
(9, 'Babysitting', "Bonjour,Nous sommes parents de deux enfants de 2 et 5 ans. Nous avons besoin d'un intervenant micro-entrepreneur d'expérience pour les garder de manière ponctuelle occasionnellement. Cette personne pourrait être sollicité certaines fin d'après-midi dans la semaine, certains soirs dans la semaine, certaines journée voire le soir également les week-ends. Il faudra probablement leur donner le goûter, leur donner ou préparer le dîner et les coucher.Merci d'avance.", 
 'adresse', 95000, 'Cergy', 'France', '2024-08-05 18:26:40', "plus"),
(10, 'Bricolage', "Bonjour,J'ai 4 barres de seuil à poser, je veux du travail bien fait , surtout sur les finitions, des découpes propres et parfaites, bien poser à plat sur le sol, je ne veux pas de silicone pour camoufler les imperfections, le cache-misère, impossible pour moi.Si ca vous dit, faite le moi savoir !ha oui, chose très importante : 10€/la barre de seuil posée = 40€", 
 'adresse', 75018, 'Paris', 'France', '2026-09-09 15:54:25', "plus"),
(7, "Garde d'animaux", "Bonjour, Je cherche une pet Sitter aux alentours de notre domicile,(max 15km) pour mon chien, une journée par semaine sur une période d'au moins 3 mois.Avec expérience ou qui possède déjà un animal de compagnie. 15€/JOUR. Si vous êtes véhiculé et intéressé, vous pouvez m''envoyer un message. A bientôt;!",
 'adresse', 13180, 'Gignac-la-Nerthe', 'France', '2024-01-16 23:34:32', "plus"),
(8, 'Ménage', "Bonjour, Je suis une conciergerie qui recherche des prestataires de ménage pour des remplacements. Profil recherché :- Auto- entrepreneur (obligatoire)- Disponible entre 10h00 et 17h00- Sérieux- Motivé- À l'écouteUne personne responsable et autonome. N'hésitez pas à me contacter", 
 'adresse', 13000, 'Marseille', 'France', '2025-04-10 01:59:01', "plus"),
(9, 'Babysitting', "Bonjour,Nous sommes parents de deux enfants de 2 et 5 ans. Nous avons besoin d'un intervenant micro-entrepreneur d'expérience pour les garder de manière ponctuelle occasionnellement. Cette personne pourrait être sollicité certaines fin d'après-midi dans la semaine, certains soirs dans la semaine, certaines journée voire le soir également les week-ends. Il faudra probablement leur donner le goûter, leur donner ou préparer le dîner et les coucher.Merci d'avance.", 
 'adresse', 95000, 'Cergy', 'France', '2024-08-05 18:26:40', "plus"),
(10, 'Bricolage', "Bonjour,J'ai 4 barres de seuil à poser, je veux du travail bien fait , surtout sur les finitions, des découpes propres et parfaites, bien poser à plat sur le sol, je ne veux pas de silicone pour camoufler les imperfections, le cache-misère, impossible pour moi.Si ca vous dit, faite le moi savoir !ha oui, chose très importante : 10€/la barre de seuil posée = 40€", 
 'adresse', 75018, 'Paris', 'France', '2026-09-09 15:54:25', "plus");












/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 11*/










/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 12*/


DELETE FROM service_utilisateur
WHERE service_id =2;

DELETE FROM service
WHERE id = 2;

/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 13*/

DELETE FROM service_utilisateur
WHERE service_id =2
AND  utilisateur_id = 3;


/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 14*/



DELETE FROM service_utilisateur
WHERE utilisateur_id =2;

DELETE FROM service
WHERE utilisateur_id =2;

DELETE FROM message
WHERE receveur_id =2;

DELETE FROM message
WHERE expediteur_id =2;

DELETE FROM utilisateur
WHERE id =2;


/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 15*/

DELETE FROM message
WHERE id =4;


/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 16*/
