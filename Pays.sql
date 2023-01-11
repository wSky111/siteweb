-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 04 Janvier 2023 à 09:50
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Pays`
--

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE IF NOT EXISTS `communes` (
  `code_commune` int(12) NOT NULL AUTO_INCREMENT,
  `nom_commune` varchar(20) NOT NULL,
  `population_2010` int(12) NOT NULL,
  `population_1999` int(12) NOT NULL,
  `Surface` varchar(12) NOT NULL,
  `Longitude` varchar(8) NOT NULL,
  `Latitude` varchar(8) NOT NULL,
  PRIMARY KEY (`code_commune`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=790 ;

--
-- Contenu de la table `communes`
--

INSERT INTO `communes` (`code_commune`, `nom_commune`, `population_2010`, `population_1999`, `Surface`, `Longitude`, `Latitude`) VALUES
(123, 'saint-chéron', 6200, 2400, '20km²', '180', '90'),
(456, 'etampes', 12300, 6700, '35km²', '90', '180'),
(789, 'morigny', 7100, 4500, '24km²', '70', '80');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
  `num_departement` varchar(10) NOT NULL,
  `nom_departement` text NOT NULL,
  `code_commune` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`num_departement`),
  KEY `code_commune` (`code_commune`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=790 ;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`num_departement`, `nom_departement`, `code_commune`) VALUES
('51290', 'Essonne', 123),
('78223', 'Essonne', 456),
('91150', 'Essonne', 789);

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `code_region` varchar(10) NOT NULL,
  `num_departement` varchar(10) NOT NULL,
  `nom_region` text NOT NULL,
  PRIMARY KEY (`code_region`),
  KEY `num_departement` (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `regions`
--

INSERT INTO `regions` (`code_region`, `num_departement`, `nom_region`) VALUES
('11', '91150', 'ile de france'),
('13', '78223', 'Occitanie'),
('28', '51290', 'normandie');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `departement_ibfk_1` FOREIGN KEY (`code_commune`) REFERENCES `communes` (`code_commune`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `departement` (`num_departement`) ON DELETE CASCADE ON UPDATE CASCADE;
