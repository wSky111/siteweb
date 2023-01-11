-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 11 Janvier 2023 à 11:47
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion_des_commandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `num_categories` varchar(20) NOT NULL,
  `nom_categories` varchar(20) NOT NULL,
  `def_reference` varchar(20) NOT NULL,
  `cat_remise` varchar(10) NOT NULL,
  `produit_ref` varchar(20) NOT NULL,
  PRIMARY KEY (`num_categories`),
  KEY `produit_ref` (`produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--


-- --------------------------------------------------------

--
-- Structure de la table ` clients`
--

CREATE TABLE IF NOT EXISTS ` clients` (
  `Client_id` varchar(20) NOT NULL,
  `Client_civilite` text NOT NULL,
  `Client_nom` text NOT NULL,
  `Client_prenom` text NOT NULL,
  `Client_ville` varchar(30) NOT NULL,
  `Client_tel` varchar(10) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table ` clients`
--

INSERT INTO ` clients` (`Client_id`, `Client_civilite`, `Client_nom`, `Client_prenom`, `Client_ville`, `Client_tel`, `date_naissance`) VALUES
('10', 'femme', 'Roi', 'Léa', 'etampes', '06655', '1979-01-01'),
('12', 'homme', 'Jarde', 'Léo', 'paris', '0690554321', '1976-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `Com_num` varchar(20) NOT NULL,
  `Com_client` varchar(20) NOT NULL,
  `date_commande` date DEFAULT NULL,
  `Com_montant` varchar(12) NOT NULL,
  `Client_id` varchar(20) NOT NULL,
  `produit_ref` varchar(20) NOT NULL,
  PRIMARY KEY (`Com_num`),
  KEY `Client_id` (`Client_id`),
  KEY `produit_ref` (`produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`Com_num`, `Com_client`, `date_commande`, `Com_montant`, `Client_id`, `produit_ref`) VALUES
('100', '30', '2000-06-04', '156', '12', 'A100'),
('131', '23', '2023-01-03', '132', '10', 'A121'),
('1400', '23', '2023-01-02', '167', '10', 'A12'),
('1500', '21', '2023-01-01', '123', '12', 'A13'),
('1700', '28', '2000-06-04', '145', '12', 'A14'),
('1800', '30', '2022-01-04', '100', '10', 'A12');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `produit_ref` varchar(20) NOT NULL,
  `produit_nom` varchar(30) NOT NULL,
  `produit_prix` varchar(12) NOT NULL,
  `produit_poids` varchar(8) NOT NULL,
  `produit_vues` varchar(12) NOT NULL,
  `produit_stock` varchar(12) NOT NULL,
  `produit_code` varchar(20) NOT NULL,
  `Com_num` varchar(20) NOT NULL,
  `num_categories` varchar(20) NOT NULL,
  PRIMARY KEY (`produit_ref`),
  KEY `num_categories` (`num_categories`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`produit_ref`, `produit_nom`, `produit_prix`, `produit_poids`, `produit_vues`, `produit_stock`, `produit_code`, `Com_num`, `num_categories`) VALUES
('A100', 'banane', '2', '50', '10000 ', '100', '667', '1500', ''),
('A121', 'tele', '400', '5000', '10000000', '1000', '911', '131', '4'),
('A13', 'yaourt', '12', '8', '10000 ', '1000', '456', '1400', '3'),
('A14', 'dyson v8', '521', '1200', '200 ', '100', '789', '1500', '10');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`num_categories`) REFERENCES `produits` (`num_categories`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`Client_id`) REFERENCES ` clients` (`Client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`produit_ref`) REFERENCES `commandes` (`produit_ref`) ON DELETE CASCADE ON UPDATE CASCADE;
