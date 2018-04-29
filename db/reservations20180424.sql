-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 24 Avril 2018 à 22:52
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `reservations`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste_type`
--

CREATE TABLE `artiste_type` (
  `id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `artiste_type`
--

INSERT INTO `artiste_type` (`id`, `artist_id`, `type_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 3, 1),
(7, 4, 2),
(8, 5, 3),
(9, 6, 3),
(10, 7, 3),
(11, 8, 3),
(12, 9, 3),
(13, 10, 1),
(14, 10, 3),
(15, 11, 2),
(16, 12, 1),
(17, 12, 3),
(18, 13, 1),
(19, 13, 3),
(20, 14, 1),
(21, 15, 2),
(22, 16, 3),
(23, 17, 3);

-- --------------------------------------------------------

--
-- Structure de la table `artiste_type_show`
--

CREATE TABLE `artiste_type_show` (
  `id` int(11) NOT NULL,
  `artiste_type_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `artiste_type_show`
--

INSERT INTO `artiste_type_show` (`id`, `artiste_type_id`, `show_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 5, 4),
(21, 20, 5),
(22, 21, 5),
(23, 22, 5),
(24, 23, 5);

-- --------------------------------------------------------

--
-- Structure de la table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `artists`
--

INSERT INTO `artists` (`id`, `firstname`, `lastname`) VALUES
(1, 'Daniel', 'Marcelin'),
(2, 'Philipe', 'Laurent'),
(3, 'Marius', 'Von Mayenburg'),
(4, 'Olivier', 'Boudon'),
(5, 'Anne Marie', 'Loop'),
(6, 'Pietro', 'Varasso'),
(7, 'Laurent', 'Caron'),
(8, 'Élena', 'Perez'),
(9, 'Guillaume', 'Alexandre'),
(10, 'Claude', 'Semal'),
(11, 'Laurence', 'Warin'),
(12, 'Pierre', 'Wayburn'),
(13, 'Gwendoline', 'Gauthier'),
(14, 'Slawomir', 'Mrozek'),
(15, 'Najib', 'Ghallale'),
(16, 'Rachid', 'Benbouchta'),
(17, 'Mohamed', 'Ouachen');

-- --------------------------------------------------------

--
-- Structure de la table `locality`
--

CREATE TABLE `locality` (
  `id` int(11) NOT NULL,
  `postal_code` varchar(6) NOT NULL,
  `locality` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locality`
--

INSERT INTO `locality` (`id`, `postal_code`, `locality`) VALUES
(1, '1000', 'Bruxelles'),
(2, '1050', 'Ixelles');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `address` varchar(255) NOT NULL,
  `locality_id` int(11) NOT NULL,
  `website` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id`, `slug`, `designation`, `address`, `locality_id`, `website`, `phone`) VALUES
(1, 'delvaux', 'Espace Delvaux', 'rue du Port 15', 1, '', ''),
(2, 'dexia', 'Dexia Media Center', 'avenue des Arts 450', 2, '', ''),
(3, 'samaritaine', 'La Samaritaine', '16 rue de la samaritaine', 1, '', ''),
(4, 'espacemagh', 'Espace Magh', '17 rue du Poinçon', 1, 'http://www.espacemagh.be', '+32 (0)2 274 05 10');

-- --------------------------------------------------------

--
-- Structure de la table `representations`
--

CREATE TABLE `representations` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `when` datetime NOT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `representations`
--

INSERT INTO `representations` (`id`, `show_id`, `when`, `location_id`) VALUES
(1, 1, '2012-10-12 13:30:00', 1),
(2, 1, '2012-10-12 20:30:00', 2),
(4, 2, '2012-10-02 20:30:00', NULL),
(5, 2, '2012-10-03 20:30:00', NULL),
(6, 2, '2012-10-04 20:30:00', NULL),
(7, 2, '2012-10-05 20:30:00', NULL),
(8, 2, '2012-10-06 20:30:00', NULL),
(9, 2, '2012-10-09 20:30:00', NULL),
(10, 2, '2012-10-10 20:30:00', NULL),
(11, 2, '2012-10-11 20:30:00', NULL),
(12, 2, '2012-10-12 20:30:00', NULL),
(13, 2, '2012-10-13 20:30:00', NULL),
(14, 3, '2012-10-16 20:30:00', NULL),
(15, 3, '2012-10-18 20:30:00', NULL),
(16, 3, '2012-10-19 20:30:00', NULL),
(17, 3, '2012-10-20 20:30:00', NULL),
(18, 3, '2012-10-23 20:30:00', NULL),
(19, 3, '2012-10-25 20:30:00', NULL),
(20, 3, '2012-10-26 20:30:00', NULL),
(21, 3, '2012-10-27 20:30:00', NULL),
(22, 4, '2012-01-29 20:30:00', NULL),
(23, 4, '2012-01-30 20:30:00', NULL),
(24, 4, '2012-01-31 20:30:00', NULL),
(25, 4, '2012-02-01 20:30:00', NULL),
(26, 4, '2012-02-02 20:30:00', NULL),
(27, 4, '2012-02-03 20:30:00', NULL),
(28, 4, '2012-02-04 20:30:00', NULL),
(29, 4, '2012-02-05 20:30:00', NULL),
(30, 4, '2012-02-06 20:30:00', NULL),
(31, 4, '2012-02-07 20:30:00', NULL),
(32, 4, '2012-02-08 20:30:00', NULL),
(33, 4, '2012-02-09 20:30:00', NULL),
(34, 4, '2012-02-10 20:30:00', NULL),
(35, 4, '2012-02-11 20:30:00', NULL),
(36, 4, '2012-02-12 20:30:00', NULL),
(37, 4, '2012-02-13 20:30:00', NULL),
(38, 4, '2012-02-14 20:30:00', NULL),
(39, 4, '2012-02-15 20:30:00', NULL),
(40, 4, '2012-02-16 20:30:00', NULL),
(41, 5, '2012-01-29 20:30:00', NULL),
(42, 5, '2012-01-30 20:30:00', NULL),
(43, 5, '2012-01-31 20:30:00', NULL),
(44, 5, '2012-02-01 20:30:00', NULL),
(45, 5, '2012-02-02 20:30:00', NULL),
(46, 5, '2012-02-03 20:30:00', NULL),
(47, 5, '2012-02-04 20:30:00', NULL),
(48, 5, '2012-02-05 20:30:00', NULL),
(49, 5, '2012-02-06 20:30:00', NULL),
(50, 5, '2012-02-07 20:30:00', NULL),
(51, 5, '2012-02-08 20:30:00', NULL),
(52, 5, '2012-02-09 20:30:00', NULL),
(53, 5, '2012-02-10 20:30:00', NULL),
(54, 5, '2012-02-11 20:30:00', NULL),
(55, 5, '2012-02-12 20:30:00', NULL),
(56, 5, '2012-02-13 20:30:00', NULL),
(57, 5, '2012-02-14 20:30:00', NULL),
(58, 5, '2012-02-15 20:30:00', NULL),
(59, 5, '2012-02-16 20:30:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `representation_user`
--

CREATE TABLE `representation_user` (
  `id` int(11) NOT NULL,
  `representation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `places` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `representation_user`
--

INSERT INTO `representation_user` (`id`, `representation_id`, `user_id`, `places`) VALUES
(1, 5, 2, 2),
(2, 14, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'membre');

-- --------------------------------------------------------

--
-- Structure de la table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `title` varchar(255) NOT NULL,
  `poster_url` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `bookable` tinyint(1) NOT NULL COMMENT 'Réservable?',
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `shows`
--

INSERT INTO `shows` (`id`, `slug`, `title`, `poster_url`, `location_id`, `bookable`, `price`) VALUES
(1, 'ayiti', 'Ayiti', '/wrapped/imgs/ayiti.jpg', 1, 1, '0.00'),
(2, 'cible', 'Cible mouvante', '/wrapped/imgs/cible.jpg', 2, 1, '0.00'),
(3, 'chanteurbelge', 'Ceci n\'est pas un chanteur belge', '/images/stories/Cecinestpasunchanteurbelge/claudebelgesaison220.jpg', 1, 1, '0.00'),
(4, 'wayburn', 'Nouveau spectacle de Pierre Wayburn', '/wrapped/imgs/wayburn.jpg', 3, 1, '0.00'),
(5, 'emigres', 'Émigrés', '/wrapped/imgs/emigres.jpg', 4, 0, '0.00');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'auteur'),
(2, 'scénographe'),
(3, 'acteur'),
(4, 'comédien'),
(5, 'artiste');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `langue` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role_id`, `firstname`, `lastname`, `email`, `langue`) VALUES
(1, 'admin', '$2y$10$YxoSs42MgzOmPBBKE1cc0.kvWV68V2kNNMzZGf81E9Dmq9CspqfSC', 1, 'Bob', 'Sull', 'admin@example.com', 'en'),
(2, 'membre', '$2y$10$3qmGT/g5Uz3T8mH.un59Uev2exfAbgAbG.HSKl.Gr35FDAMZTA8hq', 2, 'Julia', 'Smith', 'membre@example.com', 'fr');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `artiste_type`
--
ALTER TABLE `artiste_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Index pour la table `artiste_type_show`
--
ALTER TABLE `artiste_type_show`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_id` (`show_id`),
  ADD KEY `artiste_type_id` (`artiste_type_id`);

--
-- Index pour la table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `locality`
--
ALTER TABLE `locality`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_code` (`postal_code`),
  ADD UNIQUE KEY `locality` (`locality`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `localite_id` (`locality_id`);

--
-- Index pour la table `representations`
--
ALTER TABLE `representations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Index pour la table `representation_user`
--
ALTER TABLE `representation_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `representation_id` (`representation_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `location_id` (`location_id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `artiste_type`
--
ALTER TABLE `artiste_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `artiste_type_show`
--
ALTER TABLE `artiste_type_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `locality`
--
ALTER TABLE `locality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `representations`
--
ALTER TABLE `representations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `representation_user`
--
ALTER TABLE `representation_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `artiste_type`
--
ALTER TABLE `artiste_type`
  ADD CONSTRAINT `artiste_type_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `artiste_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `artiste_type_show`
--
ALTER TABLE `artiste_type_show`
  ADD CONSTRAINT `artiste_type_show_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `artiste_type_show_ibfk_2` FOREIGN KEY (`artiste_type_id`) REFERENCES `artiste_type` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`locality_id`) REFERENCES `locality` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `representations`
--
ALTER TABLE `representations`
  ADD CONSTRAINT `representations_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `representations_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `representation_user`
--
ALTER TABLE `representation_user`
  ADD CONSTRAINT `representation_user_ibfk_1` FOREIGN KEY (`representation_id`) REFERENCES `representations` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `representation_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
