-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 13 Décembre 2016 à 13:30
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_nicolas`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `preview_text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `is_published` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `category_id`, `title`, `preview_text`, `preview`, `content`, `date`, `is_published`, `slug`) VALUES
(1, 1, 'Bouchées  de carottes  au fromages', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même.', '44def2bcd8d0e2287bc974e2685027bb.jpg', '<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et emp&ecirc;che de se concentrer sur la mise en page elle-m&ecirc;me. L\'avantage du Lorem Ipsum sur un texte g&eacute;n&eacute;rique comme \'Du texte. Du texte. Du texte.\' est qu\'il poss&egrave;de une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du fran&ccedil;ais standard. De nombreuses suites logicielles de mise en page ou &eacute;diteurs de sites Web ont fait du Lorem Ipsum leur faux texte par d&eacute;faut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'&agrave; leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).</p>', 1481414400, 1, 'bouchees-de-carottes-au-fromage');

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

CREATE TABLE `article_category` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `ordre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `article_category`
--

INSERT INTO `article_category` (`id`, `label`, `is_active`, `ordre`, `preview`, `slug`) VALUES
(1, 'Fromage', 1, '5', 'ca1efd8484e8e8c5cbba53bc99a43d33.jpg', 'fromage');

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `country`
--

INSERT INTO `country` (`id`, `label`, `slug`) VALUES
(1, 'Maroc', 'maroc'),
(2, 'France', 'france'),
(3, 'Brasil', 'brasil');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `taste_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regular_price` double DEFAULT NULL,
  `strike_price` double DEFAULT NULL,
  `loyality_price` double DEFAULT NULL,
  `volume` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vintage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_new` int(11) NOT NULL,
  `care_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_temperature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `appelation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `corps` int(11) NOT NULL,
  `fraicheur` int(11) NOT NULL,
  `evolution` int(11) NOT NULL,
  `style` int(11) NOT NULL,
  `characteristics1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `characteristics_details` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `characteristics2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cepage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `brand_id`, `region_id`, `sub_category_id`, `color_id`, `taste_id`, `label`, `regular_price`, `strike_price`, `loyality_price`, `volume`, `description`, `slug`, `vintage`, `is_new`, `care_level`, `service_temperature`, `state`, `appelation`, `corps`, `fraicheur`, `evolution`, `style`, `characteristics1`, `characteristics_details`, `characteristics2`, `cepage`, `country_id`) VALUES
(1, NULL, 4, 1, 7, 2, 'Château brane-cantenac', 900, 850.75, 0, 75, 'Margaux<br /><br />\r\n2ème cru Classé<br /><br />\r\nRouge |12,5°', 'chateau-brane-cantenac', '2006', 1, 'Prêt à boire', '35', 0, 'Bordeaux  supérieur', 8, 9, 7, 8, 'Bouqueté, corsé  et à point ', 'Robe brique sombre,  nez bouqueté de fruits noirs …', 'Robe pourpre', 'cabernet sauvignon merlot  cabernet frais', 2),
(2, NULL, 3, 2, 3, 5, 'Jack', 1000, 950, 600, 50, '<p>azefazrga gareg aer</p>', 'jack', '1886', 1, 'Prêt à boire', '10', 1, 'Bordeaux  supérieur fuck', 8, 9, 7, 8, 'azef eabzefv avzerg ', '<p>zaef azgezrg zdverg a</p>', 'Robe pourpre', 'cabernet sauvignon merlot  cabernet frais', 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_alliance`
--

CREATE TABLE `product_alliance` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `badge` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_alliance`
--

INSERT INTO `product_alliance` (`id`, `label`, `slug`, `description`, `badge`) VALUES
(1, 'Charcuterie', 'charcuterie', '<p>TEST TEST</p>', '04ee5493e6096f9bd9c10bbb5185da41.png'),
(2, 'Foie gras', 'foie-gras', '<p>TEST TEST TEST</p>', 'e553369072ac93b8fb7a51229b56e522.png');

-- --------------------------------------------------------

--
-- Structure de la table `product_alliance_join`
--

CREATE TABLE `product_alliance_join` (
  `product_id` int(11) NOT NULL,
  `product_alliance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_alliance_join`
--

INSERT INTO `product_alliance_join` (`product_id`, `product_alliance_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `product_article`
--

CREATE TABLE `product_article` (
  `product_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_article`
--

INSERT INTO `product_article` (`product_id`, `article_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `ordre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_category`
--

INSERT INTO `product_category` (`id`, `label`, `code`, `slug`, `is_active`) VALUES
(1, 'Vin', 'wine', 'vin', 1),
(2, 'Champagnes', 'champ', 'champagnes', 1),
(3, 'Spirtueux', 'spi', 'spirtueux', 1),
(4, 'Cofferts', 'cof', 'cofferts', 1),
(5, 'Notre séléction', 'ours', 'notre-selection', 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_color`
--

INSERT INTO `product_color` (`id`, `label`, `slug`) VALUES
(1, 'Ambré', 'ambre'),
(2, 'Rosé', 'rose'),
(3, 'Blanc', 'blanc'),
(4, 'Brun', 'brun'),
(5, 'Brune', 'brune'),
(6, 'Jaune', 'jaune'),
(7, 'Rouge', 'rouge');

-- --------------------------------------------------------

--
-- Structure de la table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_main` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `file`, `is_main`) VALUES
(1, 1, 'fbc6b5c3eb4f92aef8c2b8526d8d0e21.png', 1),
(2, 2, '01c03678103f437b13a3d3206e378d5a.png', 1),
(3, 1, 'c31212ecb0b4fe7c4eb16e8e819cc898.png', 0),
(4, 1, 'e6d97c137e29375f1f333beee6b9ed7c.png', 0);

-- --------------------------------------------------------

--
-- Structure de la table `product_sub_category`
--

CREATE TABLE `product_sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_sub_category`
--

INSERT INTO `product_sub_category` (`id`, `category_id`, `label`, `code`, `slug`, `is_active`) VALUES
(1, 1, 'Vin', 'wine', 'vin', 1),
(2, 3, 'Wisckey', 'wisckey', 'wisckey', 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_taste`
--

CREATE TABLE `product_taste` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product_taste`
--

INSERT INTO `product_taste` (`id`, `label`, `slug`, `css_class`) VALUES
(1, 'Fruité et frais', 'fruite-et-frais', ''),
(2, 'Fruité et charnu', 'fruite-et-charnu', ''),
(3, 'Fruité et léger', 'fruite-et-leger', ''),
(4, 'Puissant avec du potentiel', 'puissant-avec-du-potentiel', ''),
(5, 'Riche et rond', 'riche-et-rond', ''),
(6, 'Riche et puissant', 'riche-et-puissant', '');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`id`, `label`, `slug`) VALUES
(1, 'Grand Casablanca', 'grand-casablanca'),
(3, 'Meknès-Tafilalet', 'meknes-tafilalet'),
(4, 'Bordeaux', 'bordeaux');

-- --------------------------------------------------------

--
-- Structure de la table `suggestions`
--

CREATE TABLE `suggestions` (
  `product_a_id` int(11) NOT NULL,
  `product_b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `roles` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` int(11) NOT NULL,
  `date_lastlogin` int(11) NOT NULL,
  `date_disabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `is_active`, `roles`, `date_created`, `date_lastlogin`, `date_disabled`) VALUES
(1, 'admin', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', 'Anass', 'AIT AL BRIMI', 'anassbrimi1992@gmail.com', 1, 'ROLE_SUPERADMIN', 0, 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6612469DE2` (`category_id`);

--
-- Index pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD44F5D008` (`brand_id`),
  ADD KEY `IDX_D34A04AD98260155` (`region_id`),
  ADD KEY `IDX_D34A04ADF7BFE87C` (`sub_category_id`),
  ADD KEY `IDX_D34A04AD7ADA1FB5` (`color_id`),
  ADD KEY `IDX_D34A04AD74E52521` (`taste_id`),
  ADD KEY `IDX_D34A04ADF92F3E70` (`country_id`);

--
-- Index pour la table `product_alliance`
--
ALTER TABLE `product_alliance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_alliance_join`
--
ALTER TABLE `product_alliance_join`
  ADD PRIMARY KEY (`product_id`,`product_alliance_id`),
  ADD KEY `IDX_83E0E3494584665A` (`product_id`),
  ADD KEY `IDX_83E0E349BC8F7420` (`product_alliance_id`);

--
-- Index pour la table `product_article`
--
ALTER TABLE `product_article`
  ADD PRIMARY KEY (`product_id`,`article_id`),
  ADD KEY `IDX_D3E315D64584665A` (`product_id`),
  ADD KEY `IDX_D3E315D67294869C` (`article_id`);

--
-- Index pour la table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_64617F034584665A` (`product_id`);

--
-- Index pour la table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3147D5F312469DE2` (`category_id`);

--
-- Index pour la table `product_taste`
--
ALTER TABLE `product_taste`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`product_a_id`,`product_b_id`),
  ADD KEY `IDX_91B68614B63671F9` (`product_a_id`),
  ADD KEY `IDX_91B68614A483DE17` (`product_b_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `product_alliance`
--
ALTER TABLE `product_alliance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `product_taste`
--
ALTER TABLE `product_taste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `article_category` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD44F5D008` FOREIGN KEY (`brand_id`) REFERENCES `product_brand` (`id`),
  ADD CONSTRAINT `FK_D34A04AD74E52521` FOREIGN KEY (`taste_id`) REFERENCES `product_taste` (`id`),
  ADD CONSTRAINT `FK_D34A04AD7ADA1FB5` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`id`),
  ADD CONSTRAINT `FK_D34A04AD98260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  ADD CONSTRAINT `FK_D34A04ADF7BFE87C` FOREIGN KEY (`sub_category_id`) REFERENCES `product_sub_category` (`id`),
  ADD CONSTRAINT `FK_D34A04ADF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `product_alliance_join`
--
ALTER TABLE `product_alliance_join`
  ADD CONSTRAINT `FK_83E0E3494584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_83E0E349BC8F7420` FOREIGN KEY (`product_alliance_id`) REFERENCES `product_alliance` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_article`
--
ALTER TABLE `product_article`
  ADD CONSTRAINT `FK_D3E315D64584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D3E315D67294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK_64617F034584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD CONSTRAINT `FK_3147D5F312469DE2` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);

--
-- Contraintes pour la table `suggestions`
--
ALTER TABLE `suggestions`
  ADD CONSTRAINT `FK_91B68614A483DE17` FOREIGN KEY (`product_b_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_91B68614B63671F9` FOREIGN KEY (`product_a_id`) REFERENCES `product` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
