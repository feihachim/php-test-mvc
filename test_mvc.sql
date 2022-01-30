-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 30 jan. 2022 à 22:58
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test_mvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `urlPhoto` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `creation_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `blog`
--

INSERT INTO `blog` (`id`, `title`, `urlPhoto`, `content`, `creation_date`, `user_id`) VALUES
(1, 'This man is a knight in shining armor.', NULL, 'Tell him time is of the essence. You\'re a killer. I catch killers. Only you could make those words cute. Only you could make those words cute.\r\n\r\nSomehow, I doubt that. You have a good heart, Dexter. Hello, Dexter Morgan. I\'m really more an apartment person. Only you could make those words cute. I have a dark side, too.', '2022-01-30 21:57:02', 1),
(2, 'I videotape every customer that comes in here, so that I may blackmail them later.', NULL, 'I videotape every customer that comes in here, so that I may blackmail them later. Shut up and get to the point! Why did you bring us here? Have you ever tried just turning off the TV, sitting down with your children, and hitting them?\r\n\r\nWhat are you hacking off? Is it my torso?! \'It is! \' My precious torso! Hey! I\'m a porno-dealing monster, what do I care what you think? If rubbin\' frozen dirt in your crotch is wrong, hey I don\'t wanna be right.', '2022-01-30 21:59:02', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `urlPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `urlPhoto`, `password`, `admin`) VALUES
(1, 'hachim', 'alpha@beta.com', NULL, '$2y$10$JvVkRchR3KbMLosDboXSHOEzgRxvwOSmv5dFaC9TDJDj.sDW8TqOm', 1),
(2, 'abc', 'abc@def.fr', NULL, '$2y$10$aZhCCJ.S46K0ttfMLMQ5aequ5PEBpOAvVmbrlWgoYyE40ToicL.0y', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
