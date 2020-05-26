-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 26 mai 2020 à 11:08
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autopark_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `autoparks`
--

DROP TABLE IF EXISTS `autoparks`;
CREATE TABLE IF NOT EXISTS `autoparks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_timetable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `autoparks`
--

INSERT INTO `autoparks` (`id`, `name`, `address`, `work_timetable`) VALUES
(2, 'divin park', 'kloch', 'monday'),
(3, 'ushindi park', 'frank', 'sunday'),
(4, 'estha prodg', 'lemba', 'monday'),
(5, 'don', 'din', 'diwe');

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_autopark` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `car_number` varchar(255) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cars`
--

INSERT INTO `cars` (`id`, `id_autopark`, `id_role`, `car_number`, `driver_name`) VALUES
(3, 2, 1, '9687', 'estha drive'),
(4, 3, 1, '764', 'deag'),
(5, 4, 1, '668', 'bien'),
(6, 3, 1, '865', 'ok ok'),
(7, 3, 1, '758', 'bien'),
(8, 2, 1, '764', 'deag'),
(9, 4, 1, '986', 'divin'),
(10, 4, 1, '255', 'ushi'),
(11, 2, 1, '4541', 'agent'),
(12, 2, 1, '484', 'main'),
(13, 2, 2, '565', 'don'),
(14, 5, 1, '7848', 'ok');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_25_165535_create_cars_table', 1),
(2, '2020_05_25_170144_create_autoparks_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL COMMENT 'user''s id',
  `password` varchar(20) NOT NULL COMMENT 'user''s password',
  `role` varchar(50) NOT NULL COMMENT 'user''s role',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='this table is for user''s role that connect to autopark';

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `password`, `role`) VALUES
(1, '1234', 'manager'),
(2, '6773', 'driver'),
(3, '656', 'driver'),
(4, '896', 'driver'),
(5, '896', 'driver'),
(6, '8946', 'driver');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
