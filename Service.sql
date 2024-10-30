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
('test1@edu.esiee-it.fr', 'motdepasse', 'Test1', CURRENT_TIMESTAMP),
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










/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 5*/

INSERT INTO service (utilisateur_id,nom,description,adresse,code_postal,ville,pays,date_heure_service,information_complémentaire)
VALUES (1, 'Coding Factory', 'Nous sommes une école de développement web et de cybersécurité permettant à nos étudiants de découvrir le monde du web.', '35 boulevard du port', 95000, 'Cergy', 'France', CURRENT_TIMESTAMP, "l'école qui bouscule le code"),
(2, 'TEST1', 'description1', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus"),
(3, 'TEST2', 'description2', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus"),
(4, 'TEST3', 'description3', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus"),
(5, 'TEST4', 'description4', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus"),
(6, 'TEST5', 'description5', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus"),
(7, 'TEST6', 'description6', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus"),
(8, 'TEST7', 'description7', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus"),
(9, 'TEST8', 'description8', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus"),
(10, 'TEST9', 'description9', 'adresse', 95000, 'loca', 'pays', CURRENT_TIMESTAMP, "plus");

/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 6*/






/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 7*/








/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 8*/






/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 9*/





/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 10*/






/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*STORY 11*/




