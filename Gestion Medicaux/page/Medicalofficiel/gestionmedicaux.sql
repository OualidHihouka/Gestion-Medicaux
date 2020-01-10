-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 10 jan. 2020 à 17:34
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestionmedicaux`
--

-- --------------------------------------------------------

--
-- Structure de la table `medcine`
--

CREATE TABLE `medcine` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tele` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `gender` text,
  `image_prof` varchar(100) DEFAULT NULL,
  `cin` varchar(20) NOT NULL,
  `date_naiss` date DEFAULT NULL,
  `address` text,
  `assurance` text,
  `matricul_med` varchar(100) NOT NULL,
  `nom_cab` varchar(100) DEFAULT NULL,
  `address_cab` varchar(100) DEFAULT NULL,
  `tele_cab` int(11) DEFAULT NULL,
  `specialite` varchar(100) DEFAULT NULL,
  `activite` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `tele` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `geder` varchar(15) DEFAULT NULL,
  `image_prof` varchar(50) DEFAULT NULL,
  `cin` varchar(20) NOT NULL,
  `date_naiss` date DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `assurance` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utlisateur`
--

CREATE TABLE `utlisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `medcine`
--
ALTER TABLE `medcine`
  ADD PRIMARY KEY (`id`,`cin`,`matricul_med`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`,`cin`);

--
-- Index pour la table `utlisateur`
--
ALTER TABLE `utlisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `medcine`
--
ALTER TABLE `medcine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utlisateur`
--
ALTER TABLE `utlisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
