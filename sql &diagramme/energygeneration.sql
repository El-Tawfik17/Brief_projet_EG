-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 01 juil. 2022 à 12:02
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `energygeneration`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `contenu` varchar(245) NOT NULL,
  `date_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `date_creation`) VALUES
(1, 'Title1', 'content1', '2022-06-29 04:46:25'),
(2, 'title2', 'content2', '2022-06-29 04:46:25'),
(3, 'title3', 'content3', '2022-06-29 04:46:25'),
(4, 'title4', 'content4', '2022-06-29 04:46:25'),
(5, 'title5', 'content5', '2022-06-29 04:46:25'),
(6, 'title6', 'content6', '2022-06-29 04:46:25');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `nom_auteur` varchar(45) NOT NULL,
  `contenu_commentaire` varchar(245) NOT NULL,
  `date_creation` datetime NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `nom_auteur`, `contenu_commentaire`, `date_creation`, `article_id`) VALUES
(2, 'tawfik', 'fff', '0000-00-00 00:00:00', 2),
(3, 'NADA-ABI Tawfik', 'helo', '0000-00-00 00:00:00', 1),
(4, 'tawfik17', 'hello17', '0000-00-00 00:00:00', 1),
(5, 'Josias', 'hello!', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_confirmation` varchar(100) NOT NULL,
  `numero_tel` varchar(45) NOT NULL,
  `pays` varchar(45) NOT NULL,
  `niveau_etude` varchar(45) NOT NULL,
  `thematique` varchar(45) NOT NULL,
  `campus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `registration`
--

INSERT INTO `registration` (`id`, `nom`, `genre`, `email`, `email_confirmation`, `numero_tel`, `pays`, `niveau_etude`, `thematique`, `campus`) VALUES
(1, 'tawfik', 'masculin', 'kifwat17@gmail.com', 'kifwat17@gmail.com', '+22870007488', 'togo', 'bac+2', 'santé & bien-être', 'campus anglophone-ghana'),
(2, 'Tawfik', 'feminin', 'tafss@gmail.com', 'tafss@gmail.com', '+22870007488', 'togo', 'bac+4/5', 'energy', 'campus anglophone-ghana');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_commentaire_article_idx` (`article_id`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Index pour la table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `email_confirmation_UNIQUE` (`email_confirmation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_commentaire_article` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;


--
-- Métadonnées
--
USE `phpmyadmin`;

--
-- Métadonnées pour la table article
--

--
-- Métadonnées pour la table commentaire
--

--
-- Métadonnées pour la table newsletter
--

--
-- Métadonnées pour la table registration
--

--
-- Métadonnées pour la base de données energygeneration
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
