-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 14 Décembre 2022 à 10:56
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `RH`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `NoEmploye` varchar(20) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prénom` varchar(20) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `salaire` float NOT NULL,
  `TypeContrat` varchar(30) NOT NULL,
  `fonction` varchar(20) NOT NULL,
  `site` varchar(50) NOT NULL,
  `date d'embauche` date NOT NULL,
  `date de naissance` date NOT NULL,
  `NoSrv` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`NoEmploye`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`NoEmploye`, `Nom`, `Prénom`, `sexe`, `salaire`, `TypeContrat`, `fonction`, `site`, `date d'embauche`, `date de naissance`, `NoSrv`) VALUES
('10', 'Croissant', 'Jean', 'masculin', 2267, 'CDI', 'comptable', 'Paris La défense', '2010-12-01', '1997-05-21', 110),
('11', 'pain', 'Marie', 'féminin', 1803, 'CDD', 'Assistante', 'Paris La défense', '2018-02-19', '1998-09-07', 111),
('12', 'Raisin', 'Josette', 'féminin', 3800, 'CDI', 'Directeur', 'Tour', '2013-06-19', '1998-12-11', 112),
('13', 'chocolat', 'pierre', 'masculin', 3200, 'CDD', 'directeur', 'Lille', '2012-12-13', '1997-12-01', 113),
('14', 'pomme', 'Edouard', 'masculin', 2300, 'CDI', 'femme de ménage', 'lyon', '2009-12-01', '1997-09-17', 113);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num_interv` int(11) NOT NULL,
  `NoProj` int(11) NOT NULL,
  `NoEmploye` varchar(20) NOT NULL,
  `NbHeures` int(11) NOT NULL,
  PRIMARY KEY (`Num_interv`),
  KEY `NoProj` (`NoProj`,`NoEmploye`),
  KEY `NoEmploye` (`NoEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num_interv`, `NoProj`, `NoEmploye`, `NbHeures`) VALUES
(199, 91, '10', 35),
(200, 91, '11', 36);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `Noprojet` int(11) NOT NULL,
  `LibelleProjet` text NOT NULL,
  `NoServ` int(11) NOT NULL,
  PRIMARY KEY (`Noprojet`),
  KEY `Noserv` (`NoServ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`Noprojet`, `LibelleProjet`, `NoServ`) VALUES
(90, 'informatique', 110),
(91, 'financement', 111);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NoSrv` int(11) NOT NULL AUTO_INCREMENT,
  `NomSrv` text NOT NULL,
  PRIMARY KEY (`NoSrv`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NoSrv`, `NomSrv`) VALUES
(110, 'abt'),
(111, 'rs6'),
(112, 'porsche'),
(113, 'techart');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`NoEmploye`) REFERENCES `employe` (`NoEmploye`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`NoProj`) REFERENCES `projet` (`Noprojet`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`NoServ`) REFERENCES `service` (`NoSrv`);
