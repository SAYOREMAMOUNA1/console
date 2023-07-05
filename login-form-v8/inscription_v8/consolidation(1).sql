-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 05 juil. 2023 à 14:59
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `consolidation`
--

-- --------------------------------------------------------

--
-- Structure de la table `verification`
--

CREATE TABLE `verification` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `verification`
--

INSERT INTO `verification` (`id`, `nom`, `prenom`, `date_de_naissance`, `sexe`, `email`, `mot_de_passe`) VALUES
(3, 'sayore', 'MAMOUNA', '0000-00-00', 'feminin', 'sayoremamouna@gmail.com', '21445'),
(4, 'seni', 'lala', '0000-00-00', 'masculin', 'seni@gmail.com', '12345678'),
(5, 'xcvbn,', 'qSDFGH', '0000-00-00', 'QSDFGHJ', 'test@gmail.com', '0'),
(6, 'aazeerrrttttty', 'wxcvbn,', '2023-07-13', 'wxcvbn', 'tester@gmail.com', '$2y$10$vdhHahF2uvNaioUuQzdZFemOFGxqOUCSWV499f6STo6uhzzUmiIze');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `verification`
--
ALTER TABLE `verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
