-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 12 Mai 2023 à 18:19
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestion_de_stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
`id_article` int(11) NOT NULL,
  `nom_article` varchar(20) NOT NULL,
  `categorie_article` varchar(20) NOT NULL,
  `quatité_stock_article` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id_article`, `nom_article`, `categorie_article`, `quatité_stock_article`) VALUES
(12, 'fhg', 'fghd', 98760),
(23, 'dfg', 'fgd', 23),
(1, 'fgds', 'dfgs', 8);

-- --------------------------------------------------------

--
-- Structure de la table `bon_d_achat`
--

CREATE TABLE IF NOT EXISTS `bon_d_achat` (
`id_bon_achat` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `bon_d_achat`
--

INSERT INTO `bon_d_achat` (`id_bon_achat`, `id_fournisseur`) VALUES
(3, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(20) NOT NULL,
  `prenom_client` varchar(20) NOT NULL,
  `tel_client` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `prenom_client`, `tel_client`) VALUES
(1344444441, 'ghhjjjk', 'jhjh', '123'),
(13, 'TYUD', 'dftu', '34567'),
(123, 'FGHJK', 'DFGHJ', '45678'),
(12, 'zerzea', 'zera', '65243');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
`id_commande` int(11) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=455543 ;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `id_client`) VALUES
(2, 1),
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE IF NOT EXISTS `fournisseur` (
`id_fournisseur` int(11) NOT NULL,
  `nom_fournisseur` varchar(20) NOT NULL,
  `prenom_fournisseur` varchar(20) NOT NULL,
  `tel_fournisseur` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `nom_fournisseur`, `prenom_fournisseur`, `tel_fournisseur`) VALUES
(1, 'ghh', 'ujhk', '9876543');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_achat`
--

CREATE TABLE IF NOT EXISTS `ligne_achat` (
`id_ligne_achat` int(11) NOT NULL,
  `id_bon_achat` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantité` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `ligne_achat`
--

INSERT INTO `ligne_achat` (`id_ligne_achat`, `id_bon_achat`, `id_produit`, `quantité`) VALUES
(5, 1, 434, 2354),
(4, 1, 2, 34),
(6, 2, 43, 3),
(7, 3, 23, 32);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_de_commande`
--

CREATE TABLE IF NOT EXISTS `ligne_de_commande` (
`id_ligne_de_commande` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantité` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Contenu de la table `ligne_de_commande`
--

INSERT INTO `ligne_de_commande` (`id_ligne_de_commande`, `id_commande`, `id_produit`, `quantité`) VALUES
(63, 4, 423, 24),
(62, 1, 32, 32),
(60, 1, 2, 2),
(1, 1, 1, 1),
(64, 4, 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(10) NOT NULL,
  `nom_utilisateur` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `post` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `nom_utilisateur`, `password`, `post`) VALUES
(3, '3', '3', 'magasinier'),
(2, '2', '2', 'responsable d’achat'),
(1, '1', '1', 'responsable de vente'),
(4, 'ghazi', 'ghazi', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
 ADD PRIMARY KEY (`id_article`);

--
-- Index pour la table `bon_d_achat`
--
ALTER TABLE `bon_d_achat`
 ADD PRIMARY KEY (`id_bon_achat`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
 ADD PRIMARY KEY (`id_commande`), ADD KEY `c` (`id_client`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
 ADD PRIMARY KEY (`id_fournisseur`);

--
-- Index pour la table `ligne_achat`
--
ALTER TABLE `ligne_achat`
 ADD PRIMARY KEY (`id_ligne_achat`,`id_bon_achat`);

--
-- Index pour la table `ligne_de_commande`
--
ALTER TABLE `ligne_de_commande`
 ADD PRIMARY KEY (`id_ligne_de_commande`,`id_commande`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `bon_d_achat`
--
ALTER TABLE `bon_d_achat`
MODIFY `id_bon_achat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=455543;
--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `ligne_achat`
--
ALTER TABLE `ligne_achat`
MODIFY `id_ligne_achat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `ligne_de_commande`
--
ALTER TABLE `ligne_de_commande`
MODIFY `id_ligne_de_commande` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
