-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 30 oct. 2024 à 10:44
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `boooofmemory_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id_chat` int NOT NULL AUTO_INCREMENT,
  `jeu_id` int NOT NULL,
  `joueur_id` int NOT NULL,
  `isSender` tinyint(1) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_heure_message` datetime NOT NULL,
  PRIMARY KEY (`id_chat`),
  KEY `jeu_id` (`jeu_id`),
  KEY `expediteur_id` (`joueur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`id_chat`, `jeu_id`, `joueur_id`, `isSender`, `message`, `date_heure_message`) VALUES
(1, 1, 1, 0, 'Post hanc adclinis Libano monti Phoenice, regio plena gratiarum et venustatis', '2024-10-28 22:17:56'),
(2, 1, 1, 0, 'Post hanc adclinis Libano montiplena gratiarum et venustatis', '2024-10-28 22:17:56'),
(3, 1, 1, 0, 'Hanc adclinis Libano gratiarum et venustatis', '2024-10-28 22:17:56'),
(4, 1, 1, 0, 'Post hanc adclinis Libano monti Phoenice, regio plena gratiarum et venustatis', '2024-10-28 22:17:56'),
(5, 1, 1, 0, 'Post adclinis Libano monti Phoenice, plena gratiarum et', '2024-10-28 22:17:56'),
(6, 1, 1, 0, 'Post s Libano monte, plena gratia', '2024-10-28 22:17:56'),
(7, 1, 2, 0, 'Post hanc adclinis Libano monti Phoenice, regio plena gratiarum et venustatis', '2024-10-28 22:18:12'),
(8, 1, 2, 0, 'Post hanc adclinis Libano montiplena gratiarum et venustatis', '2024-10-28 22:18:12'),
(9, 1, 2, 0, 'Hanc adclinis Libano gratiarum et venustatis', '2024-10-28 22:18:12'),
(10, 1, 5, 0, 'Post hanc adcli gratiarum', '2024-10-28 22:22:11'),
(11, 1, 2, 0, 'Post adclinis Libano monti Phoenice, plena gratiarum et', '2024-10-28 22:18:12'),
(12, 1, 2, 0, 'Post s Libano monte, plena gratia', '2024-10-28 22:18:12'),
(13, 1, 3, 0, 'Post hanc adclinis Libano monti Phoenice, regio plena gratiarum et venustatis', '2024-10-28 22:18:31'),
(14, 1, 3, 0, 'Post hanc adclinis Libano montiplena gratiarum et venustatis', '2024-10-28 22:18:31'),
(15, 1, 3, 0, 'Hanc adclinis Libano gratiarum et venustatis', '2024-10-28 22:18:31'),
(16, 1, 3, 0, 'Post hanc adclinis Libano monti Phoenice, regio plena gratiarum et venustatis', '2024-10-28 22:18:31'),
(17, 1, 3, 0, 'Post adclinis Libano monti Phoenice, plena gratiarum et', '2024-10-28 22:18:31'),
(18, 1, 5, 0, 'Post hanc Phoenice', '2024-10-28 22:22:11'),
(19, 1, 4, 0, 'Post hanc adclinis Libano monti Phoenice, regio plena gratiarum et venustatis', '2024-10-28 22:18:47'),
(20, 1, 4, 0, 'Post hanc adclinis Libano montiplena gratiarum et venustatis', '2024-10-28 22:18:47'),
(21, 1, 4, 0, 'Hanc adclinis Libano gratiarum et venustatis', '2024-10-28 22:18:47'),
(22, 1, 4, 0, 'Post hanc adclinis Libano monti Phoenice, regio plena gratiarum et venustatis', '2024-10-28 22:18:47'),
(23, 1, 4, 0, 'Post adclinis Libano monti Phoenice, plena gratiarum et', '2024-10-28 22:18:47'),
(24, 1, 5, 0, 'Post hanc adcl, regio plena  oeu tirecata reto pie', '2024-10-28 22:22:11'),
(25, 1, 5, 0, 'Post Libano monte', '2024-10-28 22:19:11'),
(26, 1, 4, 0, 'POMME DE TERRE', '2024-10-27 10:52:10'),
(27, 1, 5, 1, 'test isSender', '2024-10-29 11:21:48'),
(29, 1, 2, 1, 'Moi !', '2024-10-29 14:22:04'),
(30, 1, 5, 1, 'aaaaaah le calme', '2024-10-29 15:08:11'),
(31, 1, 4, 1, 'pas moi ', '2024-10-29 14:22:47'),
(32, 1, 5, 1, 'Moi je modère, me soulez pas', '2024-10-29 14:23:04'),
(33, 1, 2, 1, 'Violent un peu l admin mdrrr', '2024-10-29 14:23:24'),
(34, 1, 1, 1, 'Clairement', '2024-10-29 14:24:21'),
(35, 1, 4, 1, 'Grave', '2024-10-29 14:24:34'),
(36, 1, 5, 1, 'Respectez moi sinon c est ban !!', '2024-10-29 14:24:53'),
(37, 1, 2, 1, 'Chef laisse nous jouer et modère de ton côté', '2024-10-29 14:25:18'),
(38, 1, 1, 1, 'Modère ou je te modère', '2024-10-29 14:25:36'),
(39, 1, 5, 1, 'quel plaisir', '2024-10-29 15:08:27'),
(40, 1, 4, 1, 'On va (pas) se calmer tkt', '2024-10-29 14:26:19'),
(41, 1, 5, 1, 'Allez hop c est ban', '2024-10-29 14:28:49'),
(42, 1, 1, 1, 'Nooooonnnn', '2024-10-29 14:29:03'),
(43, 1, 2, 1, 'Abusé !!', '2024-10-29 14:29:29'),
(44, 1, 5, 1, 'bon allez dodo', '2024-10-29 15:08:45'),
(45, 1, 4, 1, 'Purée de pomme de terre', '2024-10-29 14:29:53'),
(46, 1, 5, 1, 'Hahahaaaa', '2024-10-29 14:30:02'),
(47, 1, 5, 1, 'Enfin du calme', '2024-10-29 14:38:10'),
(48, 1, 1, 1, 'Envoyer un message', '2024-10-30 11:23:28'),
(49, 1, 1, 1, 'Qui est entrain de jouer là ?', '2024-10-30 11:24:08'),
(50, 1, 1, 1, 'Envoyer un message', '2024-10-30 11:39:56'),
(51, 1, 1, 1, 'Qui est entrain de jouer là ?', '2024-10-30 11:40:22'),
(52, 1, 1, 1, 'Qui est entrain de jouer là ?', '2024-10-30 11:40:23');

-- --------------------------------------------------------

--
-- Structure de la table `difficulte`
--

DROP TABLE IF EXISTS `difficulte`;
CREATE TABLE IF NOT EXISTS `difficulte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `difficulte`
--

INSERT INTO `difficulte` (`id`, `nom`) VALUES
(1, 'Facile'),
(2, 'Intermédiaire'),
(3, 'Expert');

-- --------------------------------------------------------

--
-- Structure de la table `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `utilisateur_id` int DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  KEY `utilisateur_id` (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

DROP TABLE IF EXISTS `jeu`;
CREATE TABLE IF NOT EXISTS `jeu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id`, `nom`) VALUES
(1, 'Booo Of Memory'),
(2, 'Booo Of Memory');

-- --------------------------------------------------------

--
-- Structure de la table `message_prive`
--

DROP TABLE IF EXISTS `message_prive`;
CREATE TABLE IF NOT EXISTS `message_prive` (
  `id` int NOT NULL AUTO_INCREMENT,
  `p_joueur_id` int NOT NULL,
  `s_joueur_id` int NOT NULL,
  `contenu` varchar(64) NOT NULL,
  `lu` tinyint(1) NOT NULL,
  `date_heure_envoie` datetime NOT NULL,
  `date_heure_lecture` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `p_joueur_id` (`p_joueur_id`),
  KEY `s_joueur_id` (`s_joueur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `message_prive`
--

INSERT INTO `message_prive` (`id`, `p_joueur_id`, `s_joueur_id`, `contenu`, `lu`, `date_heure_envoie`, `date_heure_lecture`) VALUES
(1, 1, 2, 'Salut, bien joué pour ton score !', 1, '2024-10-29 14:25:00', '2024-10-29 14:26:00'),
(2, 2, 1, 'Merci ! Je continue de m\'entraîner', 0, '2024-10-29 15:30:00', '2024-10-29 15:30:00'),
(3, 3, 1, 'Hey, on fait une partie ?', 1, '2024-10-29 16:15:00', '2024-10-29 16:16:00'),
(4, 1, 3, 'Dans 5 minutes !', 1, '2024-10-29 16:17:00', '2024-10-29 16:18:00'),
(5, 4, 1, 'Tu as vu mon nouveau record ?', 1, '2024-10-29 17:00:00', '2024-10-29 17:01:00'),
(6, 1, 4, 'Impressionnant !', 0, '2024-10-29 17:02:00', '2024-10-29 17:02:00'),
(7, 5, 1, 'Message de l\'admin', 1, '2024-10-29 18:00:00', '2024-10-29 18:01:00'),
(8, 1, 5, 'Bien reçu', 1, '2024-10-29 18:02:00', '2024-10-29 18:03:00');

-- --------------------------------------------------------

--
-- Structure de la table `mot_de_passe`
--

DROP TABLE IF EXISTS `mot_de_passe`;
CREATE TABLE IF NOT EXISTS `mot_de_passe` (
  `utilisateur_id` int DEFAULT NULL,
  `mot_de_passe` varchar(20) DEFAULT NULL,
  KEY `utilisateur_id` (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `pseudo`
--

DROP TABLE IF EXISTS `pseudo`;
CREATE TABLE IF NOT EXISTS `pseudo` (
  `utilisateur_id` int DEFAULT NULL,
  `pseudo` varchar(20) DEFAULT NULL,
  KEY `utilisateur_id` (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

DROP TABLE IF EXISTS `score`;
CREATE TABLE IF NOT EXISTS `score` (
  `id` int NOT NULL AUTO_INCREMENT,
  `joueur_id` int NOT NULL,
  `jeu_id` int NOT NULL,
  `difficulte` int NOT NULL,
  `score_partie` int DEFAULT NULL,
  `date_heure_partie` datetime NOT NULL,
  `ancien_score` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `joueur_id` (`joueur_id`),
  KEY `jeu_id` (`jeu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`id`, `joueur_id`, `jeu_id`, `difficulte`, `score_partie`, `date_heure_partie`, `ancien_score`) VALUES
(1, 1, 1, 1, 4, '2024-10-28 22:05:58', NULL),
(2, 2, 1, 1, 7, '2024-10-28 22:05:58', NULL),
(3, 3, 1, 1, 5, '2024-10-28 22:05:58', NULL),
(4, 4, 1, 1, 3, '2024-10-28 22:05:58', NULL),
(5, 5, 1, 1, 2, '2024-10-28 22:05:58', NULL),
(7, 1, 1, 2, 19, '2024-10-28 22:05:58', NULL),
(8, 2, 1, 2, 23, '2024-10-28 22:05:58', NULL),
(9, 3, 1, 2, 8, '2024-10-28 22:05:58', NULL),
(10, 4, 1, 2, 25, '2024-10-28 22:05:58', NULL),
(11, 5, 1, 2, 9, '2024-10-28 22:05:58', NULL),
(13, 1, 1, 3, 34, '2024-10-28 22:05:58', NULL),
(14, 2, 1, 3, 22, '2024-10-28 22:05:58', NULL),
(15, 3, 1, 3, 25, '2024-10-28 22:05:58', NULL),
(16, 4, 1, 3, 20, '2024-10-28 22:05:58', NULL),
(17, 5, 1, 3, 28, '2024-10-28 22:05:58', NULL),
(19, 1, 1, 1, 4, '2024-10-28 22:05:58', NULL),
(20, 2, 1, 1, 7, '2024-10-28 22:05:58', NULL),
(21, 3, 1, 1, 5, '2024-10-28 22:05:58', NULL),
(22, 4, 1, 1, 3, '2024-10-28 22:05:58', NULL),
(23, 5, 1, 1, 2, '2024-10-28 22:05:58', NULL),
(24, 1, 1, 2, 19, '2024-10-28 22:05:58', NULL),
(25, 2, 1, 2, 23, '2024-10-28 22:05:58', NULL),
(26, 3, 1, 2, 8, '2024-10-28 22:05:58', NULL),
(27, 4, 1, 2, 25, '2024-10-28 22:05:58', NULL),
(28, 5, 1, 2, 9, '2024-10-28 22:05:58', NULL),
(29, 1, 1, 3, 34, '2024-10-28 22:05:58', NULL),
(30, 2, 1, 3, 22, '2024-10-28 22:05:58', NULL),
(31, 3, 1, 3, 25, '2024-10-28 22:05:58', NULL),
(32, 4, 1, 3, 20, '2024-10-28 22:05:58', NULL),
(33, 5, 1, 3, 28, '2024-10-28 22:05:58', NULL),
(34, 1, 1, 3, 36, '2024-10-30 09:59:58', NULL),
(35, 2, 1, 2, 19, '2024-10-30 09:59:58', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` char(64) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `date_heure_inscription` datetime NOT NULL,
  `date_heure_d_connexion` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `email`, `mot_de_passe`, `pseudo`, `date_heure_inscription`, `date_heure_d_connexion`) VALUES
(1, 'draxan.launay-tran@edu.esiee-it.fr', '967520ae23e8ee14888bae72809031b98398ae4a636773e18fff917d77679334', 'DraxanLT', '2024-10-28 22:05:58', '2024-10-28 22:05:58'),
(2, 'mateis.bourlet@edu.esiee-it.fr', '967520ae23e8ee14888bae72809031b98398ae4a636773e18fff917d77679334', 'MateisB', '2024-10-28 22:05:58', '2024-10-28 22:05:58'),
(3, 'estelle.bandhavong@edu.esiee-it.fr', '967520ae23e8ee14888bae72809031b98398ae4a636773e18fff917d77679334', 'EstelleB', '2024-10-28 22:05:58', '2024-10-28 22:05:58'),
(4, 'saif-allah.kahila@edu.esiee-it.fr', '967520ae23e8ee14888bae72809031b98398ae4a636773e18fff917d77679334', 'SaïfK', '2024-10-28 22:05:58', '2024-10-28 22:05:58'),
(5, 'admin@boooofmemory.fr', '967520ae23e8ee14888bae72809031b98398ae4a636773e18fff917d77679334', 'Admin', '2024-10-28 22:05:58', '2024-10-28 22:05:58'),
(6, 'jsp@gmail.com', 'd808a7cf1f49971e7eca5e13e0338b9ca011ccecaf766ffb550912d9ed9517a8', 'je sais pas', '2024-10-28 22:05:58', '2024-10-28 22:05:58');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`jeu_id`) REFERENCES `jeu` (`id`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`joueur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `message_prive`
--
ALTER TABLE `message_prive`
  ADD CONSTRAINT `message_prive_ibfk_1` FOREIGN KEY (`p_joueur_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `message_prive_ibfk_2` FOREIGN KEY (`s_joueur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `mot_de_passe`
--
ALTER TABLE `mot_de_passe`
  ADD CONSTRAINT `mot_de_passe_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `pseudo`
--
ALTER TABLE `pseudo`
  ADD CONSTRAINT `pseudo_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`joueur_id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`jeu_id`) REFERENCES `jeu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
