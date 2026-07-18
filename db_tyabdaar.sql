-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour db_tyabdaar
CREATE DATABASE IF NOT EXISTS `db_tyabdaar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_tyabdaar`;

-- Listage de la structure de table db_tyabdaar. clients
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_user` bigint NOT NULL,
  `date_inscription` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_clients_users` (`id_user`),
  CONSTRAINT `FK_clients_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_tyabdaar.clients : ~0 rows (environ)

-- Listage de la structure de table db_tyabdaar. commandes
CREATE TABLE IF NOT EXISTS `commandes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_commande` date DEFAULT NULL,
  `statut` enum('livery','encor') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `total` float DEFAULT NULL,
  `id_client` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_commandes_clients` (`id_client`),
  CONSTRAINT `FK_commandes_clients` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_tyabdaar.commandes : ~0 rows (environ)

-- Listage de la structure de table db_tyabdaar. cooks
CREATE TABLE IF NOT EXISTS `cooks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `spécialité` varchar(50) DEFAULT NULL,
  `id_user` bigint DEFAULT NULL,
  `img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `FK_cooks_users` (`id_user`),
  CONSTRAINT `FK_cooks_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_tyabdaar.cooks : ~0 rows (environ)

-- Listage de la structure de table db_tyabdaar. ligne_commande
CREATE TABLE IF NOT EXISTS `ligne_commande` (
  `id_commande` bigint DEFAULT NULL,
  `id_plat` bigint DEFAULT NULL,
  `quantite` int DEFAULT NULL,
  KEY `FK_ligne_commande_commandes` (`id_commande`),
  KEY `FK_ligne_commande_plats` (`id_plat`),
  CONSTRAINT `FK_ligne_commande_commandes` FOREIGN KEY (`id_commande`) REFERENCES `commandes` (`id`),
  CONSTRAINT `FK_ligne_commande_plats` FOREIGN KEY (`id_plat`) REFERENCES `plats` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_tyabdaar.ligne_commande : ~0 rows (environ)

-- Listage de la structure de table db_tyabdaar. plats
CREATE TABLE IF NOT EXISTS `plats` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `catégore` enum('patsir','salade , plats pransipal') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text,
  `id_cuisiniere` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_plats_cooks` (`id_cuisiniere`),
  CONSTRAINT `FK_plats_cooks` FOREIGN KEY (`id_cuisiniere`) REFERENCES `cooks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_tyabdaar.plats : ~0 rows (environ)

-- Listage de la structure de table db_tyabdaar. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom_complet` varchar(40) DEFAULT NULL,
  `telephone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adresse` varchar(200) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `pwd` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_tyabdaar.users : ~11 rows (environ)
INSERT INTO `users` (`id`, `nom_complet`, `telephone`, `email`, `adresse`, `ville`, `pwd`) VALUES
	(1, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', '', '$2y$10$L9vcuWlWjzxPzvzVO0P1Xe6h6.2Ubb4Omdm18e/EKSY2mJkzspejC'),
	(2, 'aya loutfi', '0624418124', 'ayalutfi91@gmail.com', 'béni melal', 'afourar', '$2y$10$Aa0StLnREAntXON9o0hioOFjAqWtd8j.ymsz4FRMV/LnM6Srf1atu'),
	(3, 'aya loutfi', '0624418124', 'ayalutfi91@gmail.com', 'béni melal', 'tadla', '$2y$10$GrHYaa5IhNBOOF6nyviiIuI8iIYuxlrho5hXSozysMmqPQBJnaPxy'),
	(4, 'aya loutfi', '0624418124', 'ayalutfi91@gmail.com', 'béni melal', 'tadla', '$2y$10$j8VO7MpDIyrNSBT5JVm.AeT50st5ptTw5PKD4LXWWLNV8KVs1Tlz6'),
	(5, 'aya loutfi', '0612345678', 'fesfdefd@fdsfd.yty', 'béni melal', 'béni mellel', '$2y$10$ty4rRx2dr8w9IS74QSVrsu4eH.SURJLo2YSFY4r2Yvwkaa6Z9BCgG'),
	(6, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', 'béni mellel', '$2y$10$JimamcSi3OKx0FkyRyAr9O/yCXsKrx2fci.Ri6ECzd23GPCzLo3Ha'),
	(7, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', 'béni mellel', '$2y$10$JimamcSi3OKx0FkyRyAr9O/yCXsKrx2fci.Ri6ECzd23GPCzLo3Ha'),
	(8, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', 'tadla', '$2y$10$GqXV.D7OIlKLZoutXMI/N.W1Ge3AYLScKUcYWBsTXps5JkJ7OdjqO'),
	(9, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', 'béni mellel', '$2y$10$bko6EsRe2w7soTzBSx0a7ey.3fvzVBRL0en2wLa1s7pYs0GbvFx3K'),
	(10, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', 'béni mellel', '$2y$10$ko6WlP8I4Xp2b4DIQV5cvuPadq5iXAci6Y7rFsqI6OqmJIBSJYxre'),
	(11, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', 'béni mellel', '$2y$10$DVFrQ.rMPRTG.lamCDtxGuy2HGTtccdsZKsQ.ID9.j3nHlgpNBmWq'),
	(12, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', 'béni mellel', '$2y$10$ta1wWIYbUWYmNr4W/gT.zOEKEdlUQEC7SmgHcJNabRt1pvSrFkKKW'),
	(13, 'aya loutfi', '0612345678', 'ayalutfi91@gmail.com', 'béni melal', 'béni mellel', '$2y$10$pB5g/e9WDQlEgKZ4NXZHxOfrfWJtO3jKR4VlTdaSFTylNgXPP.W6G');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
