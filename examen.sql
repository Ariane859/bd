-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 29 juil. 2021 à 10:45
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `examen`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

DROP TABLE IF EXISTS `candidat`;
CREATE TABLE IF NOT EXISTS `candidat` (
  `id cand` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `datnais` date NOT NULL,
  `ville` varchar(255) NOT NULL,
  `sexe` char(4) NOT NULL,
  `codfil` varchar(100) NOT NULL,
  PRIMARY KEY (`id cand`),
  KEY `codfil` (`codfil`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `candidat`
--

INSERT INTO `candidat` (`id cand`, `nom`, `prenom`, `datnais`, `ville`, `sexe`, `codfil`) VALUES
(1, 'd\'ALMEIDA', 'Ariane', '2021-07-21', 'Cotonou', 'F', 'SIL'),
(31, 'de SOUZA ', 'Marcel', '2021-07-13', 'Cotonou', 'F', 'AGRO'),
(34, 'd\'ALMEIDA', 'Ariane', '2021-07-08', 'bohicon', 'F', 'SIL');

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

DROP TABLE IF EXISTS `filiere`;
CREATE TABLE IF NOT EXISTS `filiere` (
  `codfil` varchar(100) NOT NULL,
  `nomfil` varchar(255) NOT NULL,
  PRIMARY KEY (`codfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`codfil`, `nomfil`) VALUES
('AGE', 'Administration et gestion des entreprises'),
('AGRO', 'Agronomie'),
('RIT', 'Réseaux Informatiques et Télécommunications'),
('SIL', 'Systèmes Informatiques et Logiciels');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD CONSTRAINT `candidat_ibfk_1` FOREIGN KEY (`codfil`) REFERENCES `filiere` (`codfil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
