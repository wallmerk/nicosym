-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: ka47898-001.privatesql
-- Generation Time: Dec 08, 2017 at 12:41 AM
-- Server version: 5.7.20-log
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nicolasbadd17`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `link`, `slug`) VALUES
(4, 'Galette au tartare de saumon', ' http://recettes.nicolas.com/galette-tartare-saumon-268.html', 'galette-au-tartare-de-saumon'),
(10, 'Fondant à la faisselle coeur caramel', 'http://recettes.nicolas.com/fondant-faisselle-caramel-495.html', 'fondant--la-faisselle-coeur-caramel'),
(11, 'Rillettes de maquereaux', 'http://recettes.nicolas.com/rillettes-maquereaux.html', 'rillettes-de-maquereaux'),
(12, 'Terrine de ratatouille aux rougets', 'http://recettes.nicolas.com/cake-fourme-ambert-106.html', 'terrine-de-ratatouille-aux-rougets'),
(13, 'Tartinade de carottes au gingembre', 'http://recettes.nicolas.com/tartinade-carottes-642.html', 'tartinade-de-carottes-au-gingembre'),
(14, 'Gratin d’andouillette à la moutarde', 'http://recettes.nicolas.com/gratin-andouillette-moutarde-214.html', 'gratin-d-andouillette--la-moutarde'),
(15, 'Canapés au fondant de ratatouille', 'http://recettes.nicolas.com/canapes-fondant-ratatouille-confite.html', 'canaps-au-fondant-de-ratatouille'),
(16, 'Magic Tortilla', 'http://recettes.nicolas.com/magic-tortilla-11.html', 'magic-tortilla'),
(17, 'Recette Petits cakes salés – 316', 'http://recettes.nicolas.com/petits-cakes-316.html', 'recette-petits-cakes-sals-316'),
(18, 'Chapon rôti aux deux pommes', 'http://recettes.nicolas.com/chapon-roti-deux-pommes-403.html', 'chapon-rti-aux-deux-pommes'),
(19, 'Wrap au bleu de brebis', 'http://recettes.nicolas.com/wrap-bleu-brebis-confiture-tomate.html', 'wrap-au-bleu-de-brebis'),
(20, 'Tarte ricotta citron', 'http://recettes.nicolas.com/recette-tarte-ricotta-citron-624.html', 'tarte-ricotta-citron'),
(21, 'Ceviche de poisson à la Thaï', 'http://recettes.nicolas.com/ceviche-de-poisson-a-la-thai-660.html', 'ceviche-de-poisson--la-tha'),
(22, 'Samoussas de porc', 'http://recettes.nicolas.com/samoussas-porc-428.html', 'samoussas-de-porc'),
(23, 'Sauté de biche au vin rouge', 'http://recettes.nicolas.com/saute-biche-vin-rouge-382.html', 'saut-de-biche-au-vin-rouge'),
(24, 'Moelleux au pamplemousse', 'http://recettes.nicolas.com/moelleux-pamplemousse-269.html', 'moelleux-au-pamplemousse'),
(25, 'Courgette ronde à la ricotta et aux herbes', 'http://recettes.nicolas.com/courgette-ronde-ricotta-herbes-146.html', 'courgette-ronde--la-ricotta-et-aux-herbes'),
(26, 'Mousse au chocolat albinos', 'http://recettes.nicolas.com/mousse-au-chocolat-albinos-17.html', 'mousse-au-chocolat-albinos'),
(27, 'Velouté carotte coco gingembre', 'http://recettes.nicolas.com/recette-veloute-carottes-coco-gingembre-622.html', 'velout-carotte-coco-gingembre'),
(28, 'Mini-pitas au caviar d\'aubergine', 'http://recettes.nicolas.com/mini-pitas-au-caviar-daubergine-20.html', 'mini-pitas-au-caviar-d-aubergine'),
(29, 'Cabillaud roulé au lard', 'http://recettes.nicolas.com/cabillaud-roule-au-lard-156.html', 'cabillaud-roul-au-lard'),
(30, 'Salade de crabe aux pommes de terre', 'http://recettes.nicolas.com/salade-crabe-pommes-de-terre-135.html', 'salade-de-crabe-aux-pommes-de-terre'),
(31, 'Huîtres à la sauce mignonette', 'http://recettes.nicolas.com/huitres-sauce-mignonette-396.html', 'hutres--la-sauce-mignonette'),
(32, 'Mousse aux fruits des bois', 'http://recettes.nicolas.com/mousse-fruits-des-bois-32.html', 'mousse-aux-fruits-des-bois'),
(33, 'Tomates farcies aux crevettes grises', 'http://recettes.nicolas.com/tomates-farcies-crevettes-grises-85.html', 'tomates-farcies-aux-crevettes-grises'),
(34, 'Crumble d\'automne', 'http://recettes.nicolas.com/crumble-automne-bacon-fromage-466.html', 'crumble-d-automne'),
(35, 'Ballottines de poulet aux cèpes', 'http://recettes.nicolas.com/recette-ballottines-de-poulet-aux-cepes-gratinees-au-holunderkas-662.htm', 'ballottines-de-poulet-aux-cpes'),
(36, 'Truite du Pays Basque, risotto d\'asperges', 'http://recettes.nicolas.com/truite-du-pays-basque-risotto-dasperges-115.html', 'truite-du-pays-basque-risotto-d-asperges'),
(37, 'Curry de volaille, riz basmati', 'http://recettes.nicolas.com/curry-de-volaille-riz-basmati-171.html', 'curry-de-volaille-riz-basmati'),
(38, 'Dos de saumon laqué', 'http://recettes.nicolas.com/dos-saumon-laque-159.html', 'dos-de-saumon-laqu'),
(39, 'Tartelettes au pamplemousse rose', 'http://recettes.nicolas.com/tartelettes-pamplemousse-rose.html', 'tartelettes-au-pamplemousse-rose'),
(40, 'Petits cakes salés', 'http://recettes.nicolas.com/petits-cakes-316.html', 'petits-cakes-sals'),
(41, 'Tartelettes au citron vert', 'http://recettes.nicolas.com/petits-cakes-316.html', 'tartelettes-au-citron-vert'),
(42, 'Épaule d’agneau aux herbes', 'http://recettes.nicolas.com/epaule-dagneau-herbes-27.html', 'paule-d-agneau-aux-herbes'),
(43, 'Médaillons de porc à l\'ananas', 'http://http://recettes.nicolas.com/medaillons-porc-ananas-438.html', 'm-daillons-de-porc-l-ananas'),
(44, 'Œuf cocotte tapenade', 'http://http://recettes.nicolas.com/oeuf-cocotte-tapenade-390.html', 'uf-cocotte-tapenade'),
(45, 'Religieuses océanes', 'http://http://recettes.nicolas.com/religieuses-oceanes-60.html', 'religieuses-oc-anes'),
(46, 'Croc BBQ aux figues et fromage fondant', 'http://http://recettes.nicolas.com/recette-croc-bbq-figues-637.html', 'croc-bbq-aux-figues-et-fromage-fondant'),
(47, 'Soupe chinoise aux gambas', 'http://http://recettes.nicolas.com/soupe-chinoise-gambas-313.html', 'soupe-chinoise-aux-gambas'),
(48, 'Blanquette de veau', 'http://http://recettes.nicolas.com/blanquette-de-veau-119.html', 'blanquette-de-veau'),
(49, 'Quiche à l\'oignon et au chèvre', 'http://http://recettes.nicolas.com/quiche-oignon-chevre.html', 'quiche-l-oignon-et-au-ch-vre'),
(50, 'Soupe de fraises brioche perdue', 'http://http://recettes.nicolas.com/soupe-fraises-brioche-367.html', 'soupe-de-fraises-brioche-perdue'),
(51, 'Fraîcheur d’avocat', 'http://http://recettes.nicolas.com/fraicheur-avocat-marmelade-189.html', 'fra-cheur-d-avocat'),
(52, 'Mille-feuille de céleri et truffes noires', 'http://http://recettes.nicolas.com/mille-feuille-celeri-truffes-noires-154.html', 'mille-feuille-de-c-leri-et-truffes-noires'),
(53, 'Brochette de pilons de poulet', 'http://http://recettes.nicolas.com/brochette-pilons-poulet-366.html', 'brochette-de-pilons-de-poulet'),
(54, 'Milk shake céleri bacon', 'http://http://recettes.nicolas.com/milk-shake-celeri-bacon-50.html', 'milk-shake-c-leri-bacon'),
(55, 'Suprême de poularde', 'http://http://recettes.nicolas.com/supreme-poularde-chapon-foret-de-noel.html', 'supr-me-de-poularde'),
(56, 'Pigeons aux amandes', 'http://http://recettes.nicolas.com/pigeons-aux-amandes-68.html', 'pigeons-aux-amandes'),
(57, 'Millefeuilles de chèvre et carpaccio de boeuf', 'http://http://recettes.nicolas.com/millefeuilles-chevre-carpaccio-boeuf-148.html', 'millefeuilles-de-ch-vre-et-carpaccio-de-boeuf'),
(58, 'Velouté de betteraves', 'http://http://recettes.nicolas.com/cupcakes-pommes-de-terre-bacon-noix-496.html', 'velout-de-betteraves'),
(59, 'Financiers au pesto', 'http://http://recettes.nicolas.com/financiers-pesto-perail.html', 'financiers-au-pesto'),
(60, 'Jarret de veau', 'http://http://recettes.nicolas.com/jarret-veau-citron-confit.html', 'jarret-de-veau'),
(61, 'Parmentier de Pot-au-Feu', 'http://http://recettes.nicolas.com/parmentier-pot-au-feu.html', 'parmentier-de-pot-au-feu'),
(62, 'Muffins chorizo', 'http://http://recettes.nicolas.com/muffins-chorizo-625.html', 'muffins-chorizo'),
(63, 'Gigot d\'agneau de lait', 'http://http://recettes.nicolas.com/gigot-agneau-418.html', 'gigot-d-agneau-de-lait'),
(64, 'Rillettes de sardines', 'http://http://recettes.nicolas.com/rillettes-sardines-vieux-pecheur.html', 'rillettes-de-sardines'),
(65, 'Vollkornbrot de saumon fumé', 'http://http://recettes.nicolas.com/vollkornbrot-saumon-fume-265.html', 'vollkornbrot-de-saumon-fum'),
(66, 'Tian de pomme de terre', 'http://http://recettes.nicolas.com/tian-pommes-de-terre-oignons-fenouil-romarin.html', 'tian-de-pomme-de-terre'),
(67, 'Carré d\'agneau en croûte dorée', 'http://http://recettes.nicolas.com/carre-agneau-en-croute-figues.html', 'carr-d-agneau-en-cro-te-dor-e'),
(68, 'Filet mignon de veau en croûte', 'http://http://recettes.nicolas.com/filet-mignon-veau-croute-comte-champignons-bois.html', 'filet-mignon-de-veau-en-cro-te'),
(69, 'Tournedos de filet de canette', 'http://http://recettes.nicolas.com/tournedos-filet-canette-bordelaise-202.html', 'tournedos-de-filet-de-canette'),
(70, 'Porc au caramel chinois', 'http://http://recettes.nicolas.com/porc-caramel-chinois-314.html', 'porc-au-caramel-chinois'),
(71, 'Coupelle de melon et concombre', 'http://http://recettes.nicolas.com/coupelle-melon-concombre-sauce-yaourt-menthe.html', 'coupelle-de-melon-et-concombre'),
(72, 'Velouté de poireaux aux huîtres', 'http://recettes.nicolas.com/veloute-poireaux-huitres-102.html', 'velout-de-poireaux-aux-hu-tres'),
(73, 'Mini-croquettes de risotto à la mozzarella', 'http://http://recettes.nicolas.com/mini-croquettes-risotto-mozzarella-130.html', 'mini-croquettes-de-risotto-la-mozzarella'),
(74, 'Gondoles de Tartiflette', 'http://http://recettes.nicolas.com/gondoles-tartiflette-266.html', 'gondoles-de-tartiflette'),
(75, 'Cupcakes pommes de terre, bacon et noix', 'http://http://recettes.nicolas.com/cupcakes-pommes-de-terre-bacon-noix-496.html', 'cupcakes-pommes-de-terre-bacon-et-noix'),
(76, 'Aiguillettes de poulet aux abricots', 'http://http://recettes.nicolas.com/aiguillettes-poulet-abricots-451.html', 'aiguillettes-de-poulet-aux-abricots'),
(77, 'Salade de lentilles gourmande', 'http://http://recettes.nicolas.com/salade-de-lentilles-gourmande.html', 'salade-de-lentilles-gourmande'),
(78, 'Raie aux câpres', 'http://http://recettes.nicolas.com/raie-aux-capres-96.html', 'raie-aux-c-pres'),
(79, 'Macarons au sucre et coco', 'http://http://recettes.nicolas.com/macarons-sucre-coco-163.html', 'macarons-au-sucre-et-coco'),
(80, 'Feuillantine aux fraises', 'http://http://recettes.nicolas.com/feuillantine-caramelisee-fraises-576.html', 'feuillantine-aux-fraises');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
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
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `label`, `is_active`, `ordre`, `preview`, `slug`) VALUES
(2, 'Recette', 1, '22', '0e331f1f8e5af3c314f4f94ce7b31857.jpg', 'recette');

-- --------------------------------------------------------

--
-- Table structure for table `article_icon`
--

CREATE TABLE `article_icon` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_icon`
--

INSERT INTO `article_icon` (`id`, `label`, `url`, `img`, `slug`) VALUES
(1, ' Apéros & Cocktails', 'http://recettes.nicolas.com/recette/cocktails', '8d9b7856386b9b48860f038a1863df71.jpg', 'apros-cocktails'),
(2, 'Entrée', 'http://recettes.nicolas.com/recette/entree', '62629c4b3215fdff7f5270f5c48b365c.jpeg', 'entre'),
(3, 'Viande', 'http://recettes.nicolas.com/recette/viande', 'ff1ea4c3df5b397739acc9c698f5ef5c.jpeg', 'viande'),
(4, 'Poisson', 'http://recettes.nicolas.com/recette/poisson', '99f446d7dc5955e52207a0795075c9af.jpeg', 'poisson'),
(5, 'Fromage', 'http://recettes.nicolas.com/recette/fromage', 'a723459d731debad4680994330a5cc0c.jpeg', 'fromage'),
(6, 'Dessert', 'http://recettes.nicolas.com/recette/dessert', '2a11178759df5b9c050e2befd8aff4bf.jpeg', 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `article_slider`
--

CREATE TABLE `article_slider` (
  `id` int(11) NOT NULL,
  `background` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_private` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_slider`
--

INSERT INTO `article_slider` (`id`, `background`, `link`, `title`, `is_private`) VALUES
(1, 'fd7f06eb8f22a966799f794385a484d7.jpeg', 'http://recettes.nicolas.com/creme-moules-safran-674.html', 'Recette crème de moules au safran', 0),
(2, 'dc176c869840c02132f063baa7db631b.jpeg', 'http://recettes.nicolas.com/pot-au-feu-bourgeois-675.html', 'Recette pot-au-feu bourgeois', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fixe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `company`, `firstName`, `lastName`, `email`, `fixe`, `subject`, `message`, `date`, `is_read`) VALUES
(1, 'dsfsd', 'sdfsdf', 'karhat', 'amine.karhat@gmail.com', '663802016', 'OTHER', 'sdf', '2017-02-01 09:52:35', 0),
(2, 'Internet Marketing', 'Julian', 'Cooper', 'juliancooper.mkt@gmail.com', '844-287-6371', 'MODIFIED_ORDER', 'Do you wish you could increase your online leads? We have helped a lot of businesses thrive in this market and we can help you! Simply hit reply and I’ll share with you the cost and the benefits.', '2017-03-03 10:32:02', 0),
(3, '', 'Andy', 'Suzenaar', 'andysuzenaar@gmail.com', '', 'OTHER', 'Salut,\r\nPouvez-vous livres un plaquette de vin `a Al Maaden Golf resort mardi prochain?\r\nCordialement,\r\nAndy Suzenaar\r\n', '2017-11-03 11:39:05', 0),
(4, '', 'Maud', 'VIOT', 'maud-vt@hotmail.fr', '0604146299', 'SEARCH_WINE', 'Bonjour, \r\n\r\nje cherche désespérément une bouteille LOUIS GIRARD, un endroit ou je puisse commander et me faire livrer en FRANCE - ALSACE. \r\n\r\nest ce que cela est possible avec votre boutique ? \r\n\r\ndans l\'attente de votre retour, \r\nMaud VIOT', '2017-11-07 11:04:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `label`, `slug`) VALUES
(1, 'Afrique du sud', 'afrique-du-sud'),
(2, 'Argentine', 'argentine'),
(3, 'Australie', 'australie'),
(4, 'Chili', 'chili'),
(5, 'Espagne', 'espagne'),
(6, 'Hongrie', 'hongrie'),
(7, 'Italie', 'italie'),
(8, 'Maroc', 'maroc'),
(9, 'Portugal', 'portugal'),
(10, 'France', 'france'),
(11, 'Autre', 'autre'),
(12, 'Georgie', 'georgie');

-- --------------------------------------------------------

--
-- Table structure for table `footer_block`
--

CREATE TABLE `footer_block` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footer_block`
--

INSERT INTO `footer_block` (`id`, `icon`, `title`, `text`) VALUES
(1, 'ef53ff4303b8164d8fdbbea2f1dd473e.png', '5 magasins au Maroc', 'Retrouvez vos magasins Nicolas près de chez vous.'),
(2, '52861d5dc4f20995bc4e7fbb68032d70.png', 'Un programme privilège', 'Profitez de nos offres, ventes privées et recevez des invitations à nos événements.'),
(3, '95ec0f57ea66cd4f4b686330277ba2f9.png', 'La qualité des produits', 'Trois maîtres mots guident ce processus : sélection, contrôle qualité et traçabilité.'),
(4, 'e790289fef26fd326685a795a963446f.png', 'Votre caviste à votre service', 'Votre caviste saura vous prodiguer ses meilleurs conseils en toutes circonstances.');

-- --------------------------------------------------------

--
-- Table structure for table `home_slider`
--

CREATE TABLE `home_slider` (
  `id` int(11) NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_private` int(11) NOT NULL,
  `background` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_slider`
--

INSERT INTO `home_slider` (`id`, `link`, `is_private`, `background`, `title`) VALUES
(8, '', 0, '0f150cbb6ece83a6bf7c3bd586b8d659.jpg', 'Comtesse'),
(9, '', 0, 'c4860095c4a00caa5076d6c957b6055e.jpg', 'Halana'),
(10, '', 0, 'b2b0c12028a77f661dea5ac57f81b552.jpg', 'Larroque');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subscriptionDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `subscriptionDate`) VALUES
(1, 'aaaa@aaa.aaa', '1486315534'),
(2, 'aaaa@aaa.aaa', '1486325499'),
(3, 'aaaa@aaa.fr', '1486340085'),
(4, 'aaaa@aaa.fr', '1486340097'),
(5, 'g.zarba@gmail.com', '1491758430'),
(6, 'deborahwmcdowell54sh@gmail.com', '1491760526'),
(7, 'degorugby@hotmail.com', '1491760984'),
(8, 'kcjoe2006@yahoo.com', '1491762946'),
(9, 'kcjoe2006@yahoo.com', '1491762969'),
(10, 'tcislo3@gmail.com', '1491764334'),
(11, 'kimadeuso@yahoo.com', '1491767253'),
(12, 'jennallambert@gmail.com', '1491767520'),
(13, 'andrew@handdryer.com', '1491769768'),
(14, 'adamshulman@hotmail.com', '1491770779'),
(15, 'kwdrvr@att.net', '1491775843'),
(16, 'moeschluentz@yahoo.com', '1491776968'),
(17, 'kyle_tonkin@yahoo.com', '1491777350'),
(18, 'taviviela@yahoo.com', '1491777498'),
(19, 'melissagoldstein@hotmail.com', '1491779519'),
(20, 'fergelvez@hotmail.com', '1491780634'),
(21, 'frankcz@hotmail.com', '1491780891'),
(22, 'brejay805@hotmail.com', '1491781331'),
(23, 'r.minchew@yahoo.com', '1491790487'),
(24, 'naomi_peiffer@yahoo.com', '1491792567'),
(25, 'c_anastas@yahoo.com', '1491804722'),
(26, 'yathrin@yahoo.com', '1491808341'),
(27, 'chrisdilo@yahoo.com', '1491813761'),
(28, 'caitlynhorsfall@gmail.com', '1491814323'),
(29, 'caitlynhorsfall@gmail.com', '1491814342'),
(30, 'alexander.sanz@gmail.com', '1491816098'),
(31, 'asociacionbrotesverdes@gmail.com', '1491816709'),
(32, 'asociacionbrotesverdes@gmail.com', '1491817083'),
(33, 'adamshulman@hotmail.com', '1491817681'),
(34, 'tdsfunrn@yahoo.com', '1491818507'),
(35, 'ndwaldo@yahoo.com', '1492193355'),
(36, 'cjmejia4@yahoo.com', '1492210375'),
(37, 'childress_wes@yahoo.com', '1492231537'),
(38, 'eileenskids@yahoo.com', '1492250984'),
(39, 'barryells@gmail.com', '1492252307'),
(40, 'hiten_chauhan@hotmail.co.uk', '1492258733'),
(41, 'agutierrez63089@yahoo.com', '1492269989'),
(42, 'uwe-schultz1963@web.de', '1492270582'),
(43, 'douglasescott@yahoo.com', '1492271204'),
(44, 'almatrnmail@gmail.com', '1492271676'),
(45, 'kelsearehs@gmail.com', '1492271901'),
(46, 'sdilling17@yahoo.com', '1492272169'),
(47, 'dnlmonkey@yahoo.com', '1492272482'),
(48, 'dnlmonkey@yahoo.com', '1492273229'),
(49, 'bmille1537@yahoo.com', '1492274649'),
(50, 'trout.ant@gmail.com', '1492449043'),
(51, 'gregdparish@yahoo.com', '1492451885'),
(52, 'k.wells20@yahoo.com', '1492461294'),
(53, 'maggie.dickerson@regions.com', '1493841535'),
(54, 'gunsedogan@live.co.uk', '1493846897'),
(55, 'spiffyskippy@hotmail.com', '1493854278'),
(56, 'ceciliamgarza53@gmail.com', '1493904747'),
(57, 'clarklj66@gmail.com', '1493914345'),
(58, 'cali.testerman@gmail.com', '1493914907'),
(59, 'outlawjoe66@sbcglobal.net', '1493940588'),
(60, 'boatechcorp@gmail.com', '1493967905'),
(61, 'kevinclancy05@gmail.com', '1493984447'),
(62, 'withlove113@hotmail.com', '1493991707'),
(63, 'wayne2527@gmail.com', '1494003708'),
(64, 'davidlevycohen@yahoo.com', '1494018096'),
(65, 'donnursula@gmail.com', '1494019515'),
(66, 'jday_530@yahoo.com', '1494040628'),
(67, 'mulock@yahoo.com', '1494046093'),
(68, 'mahooanamahase@yahoo.com', '1494050755'),
(69, 'stangns84@yahoo.com', '1494065679'),
(70, 'lespesjulien33@gmail.com', '1494094781'),
(71, 'couturetj@gmail.com', '1494106994'),
(72, 'jsallin2000@yahoo.com', '1494115108'),
(73, 'buttons13@hotmail.com', '1494136546'),
(74, 'aashi1arora@gmail.com', '1494136765'),
(75, 'ramel730@yahoo.com', '1494143754'),
(76, 'rlamarijr@gmail.com', '1494149874'),
(77, 'stephensklein@gmail.com', '1494150094'),
(78, 'tacsandental@gmail.com', '1494152014'),
(79, 'huma.gies@orange.fr', '1494166091'),
(80, 'rusrox@yahoo.com', '1494169278'),
(81, 'dustin_eagans@yahoo.com', '1494174805'),
(82, 'trish.carroll@gmail.com', '1494174918'),
(83, 's.raegriffith@yahoo.com', '1494178777'),
(84, 'jelgarcia936@yahoo.com', '1494232978'),
(85, 'bmurraylbz@hotmail.com', '1494239573'),
(86, 'cybrcwby@hotmail.com', '1494246824'),
(87, 'caseynicole80@gmail.com', '1494256245'),
(88, 'eee_hole_laay@yahoo.com', '1494258587'),
(89, 'astevens76@hotmail.com', '1494258765'),
(90, 'matthew.valdez91@gmail.com', '1494260154'),
(91, 'signografika@gmail.com', '1494260748'),
(92, 'luisbenavidesc@gmail.com', '1494263646'),
(93, 'slurie92067@gmail.com', '1494264123'),
(94, 'buttons13@hotmail.com', '1494285363'),
(95, 'droose@knappen.com', '1494285399'),
(96, 'bpninvestusa@yahoo.com', '1494289809'),
(97, 'tyronejohnson77@yahoo.com', '1494306398'),
(98, 'cs.cordoba@gmail.com', '1494313831'),
(99, 'impexp@aol.com', '1494323798'),
(100, 'test@mail.ma', '1494511759'),
(101, 'dsfsf@zeze.de', '1494524222'),
(102, 'grgrgr@gmail.com', '1504783652'),
(103, 'dahbih775@gmail.com', '1507747999'),
(104, 'dahbih775@gmail.com', '1507747999'),
(105, 'dahbih775@gmail.com', '1507748076'),
(106, 'dahbih775@gmail.com', '1507748219'),
(107, 'hamz999@gmail.com', '1507748430'),
(108, 'dahbih775@gmail.com', '1507751203'),
(109, 'hamza999@fmail.com', '1507814810'),
(110, 'hamza999@fmail.com', '1507814867'),
(111, 'dahbih775@gmail.com', '1507928461'),
(112, 'dahbih775@gmail.com', '1507929558'),
(113, 'hamza999@fmail.com', '1507930301'),
(114, 'dahbih775@gmail.com', '1508012202'),
(115, 'dahbih775@gmail.com', '1508012324'),
(116, 'dahbih775@gmail.com', '1508012324'),
(117, 'dahbih775@gmail.com', '1508012342'),
(118, 'dahbih775@gmail.com', '1509141574'),
(119, 'amaksou@gmail.com', '1509224993'),
(120, 'test@test.com', '1509709642'),
(121, 'andreamcgot@yahoo.com', '1509969237'),
(122, 'carillicarl@gmail.com', '1509971587'),
(123, 'jeandominiak@web.de', '1509979079'),
(124, 'gillian.lancaster@laithes.com', '1509989410'),
(125, 'vandopsis@web.de', '1510145037'),
(126, 'hkanjee@gmail.com', '1510149118'),
(127, 'coreelectric@gmail.com', '1510154321'),
(128, 'tav1765@yahoo.com', '1510166708'),
(129, 'bethanyailstock@gmail.com', '1510172009'),
(130, 'vicktoria_warlaumont@yahoo.com', '1510175280'),
(131, 'nel408@yahoo.com', '1510175400'),
(132, 'hailey37372@yahoo.com', '1510177317'),
(133, 'tiffany_d_simpson@comcast.net', '1510177657'),
(134, 'spellsbrian1@gmail.com', '1510179727'),
(135, 'rsides08@gmail.com', '1510180532'),
(136, 'l.habel@dhr-rgv.com', '1510180861'),
(137, 'dant.grnt@gmail.com', '1510186148'),
(138, 'johndoe43569@yahoo.com', '1510186286'),
(139, 'ncongdon@mac.com', '1510192189'),
(140, 'adkaren@rogenyoung.com', '1510192905'),
(141, 'vsoyfer@yahoo.com', '1510198063'),
(142, 'kevin.brienen@gmail.com', '1510199085'),
(143, 'tony.lin@pachinafarm.com', '1510202785'),
(144, 'riverdale_electric@yahoo.com', '1510206928'),
(145, 'dreamykat01@yahoo.com', '1510490188'),
(146, 'creepjms@yahoo.com', '1510490874'),
(147, 'xviddivx12@yahoo.com', '1510507713'),
(148, 'wgguitroz@yahoo.com', '1510512665'),
(149, 'winderlady99@yahoo.com', '1510516495'),
(150, 'mpascal2@gmail.com', '1510526520'),
(151, 'michaeldavidandtracie@charter.net', '1510557775'),
(152, 'rebeccahouston@yahoo.com', '1510669036'),
(153, '2240wbruff@cox.net', '1510672659'),
(154, 'joshua.a.jacob@gmail.com', '1510672856'),
(155, 'cturnerlewis@tx.rr.com', '1510675245'),
(156, 'protageaf229@gmail.com', '1510675274'),
(157, 'jessicabroche@yahoo.com', '1510682707'),
(158, 'mrags22@gmail.com', '1510684583'),
(159, 'anams820@gmail.com', '1510691148'),
(160, 'afed0708@gmail.com', '1510699181'),
(161, 'bandjbowden@yahoo.com', '1510699202'),
(162, 'stonelady1999@yahoo.com', '1510701394'),
(163, 'cortneylin07@yahoo.com', '1510701478'),
(164, 'lincai_nc@yahoo.com', '1510711617'),
(165, 'hmkill@icloud.com', '1510826004'),
(166, 'jlowecannon@yahoo.com', '1510827434'),
(167, 'porrasanabel@yahoo.com', '1510828685'),
(168, 'krouse21@gmail.com', '1510829368'),
(169, 'tracey_nagel@copelandbuhl.com', '1510829722'),
(170, 'gerry@aci-cpa.com', '1510831490'),
(171, 'wtimmons07@gmail.com', '1510834037'),
(172, 'janefwilliams52@gmail.com', '1510840606'),
(173, 'devidanielle@gmail.com', '1510842352'),
(174, 'cbrown@xrayphys.com', '1510845636'),
(175, 'tpark1421@gmail.com', '1510851351'),
(176, 'christinabarclay44@yahoo.com', '1510852973'),
(177, 'dahbih775@gmail.com', '1510861123'),
(178, 'wtbane@gmail.com', '1510862017'),
(179, 'karaschaefer@yahoo.com', '1510863420'),
(180, 'gerry@aci-cpa.com', '1510873926'),
(181, 'jodirowe@twcny.rr.com', '1510876395'),
(182, 'ojrustad@gmail.com', '1510877534'),
(183, 'maytyang@yahoo.com', '1510883860'),
(184, 'donnamiles0423@gmail.com', '1510888973'),
(185, 'filippov.a@seznam.cz', '1510889862'),
(186, 'rebekah_1589@yahoo.com', '1510992468'),
(187, 'waterfiltermen@gmail.com', '1510997763'),
(188, 'jberard@triconbuilds.com', '1511000561'),
(189, 'waterfiltermen@gmail.com', '1511001768'),
(190, 'dtyost@yahoo.com', '1511002413'),
(191, 'jobu121@yahoo.com', '1511024894'),
(192, 'abparr@att.net', '1511177966'),
(193, 'skylar01@gmail.com', '1511182326'),
(194, 'john@suddarth.net', '1511196577'),
(195, 'josephmoeller@yahoo.com', '1511211042'),
(196, 'wildpalette@yahoo.com', '1511218774'),
(197, 'gary@spruill.com', '1511231156'),
(198, 'darrenmilesphoto@gmail.com', '1511238626');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `name`, `content`, `display`) VALUES
(1, 'NICOLAS PR&Eacute;CURSEUR DEPUIS PLUS DE 190 ANS', 'histoire', '<p class=\"article-paragraph\">L&rsquo;histoire commence &agrave; l&rsquo;&eacute;poque o&ugrave; le vin se buvait sur place, dans les cabarets ou les boutiques &agrave; vins. Et si l&rsquo;envie prenait d&rsquo;en consommer chez soi, il fallait se rendre chez un marchand de vin ou directement chez le producteur pour acheter un f&ucirc;t ! C\'est &agrave; partir de ce constat que Louis Nicolas inventa un nouveau concept de vente du vin qui allait r&eacute;volutionner toutes les habitudes de consommation et de n&eacute;goce: le vin en bouteille.&nbsp;</p>\r\n<p class=\"article-paragraph\">Cr&eacute;&eacute;e en 1822, la Maison Nicolas comptait &agrave; cette &eacute;poque une boutique principale au 53, rue Sainte-Anne et trois d&eacute;p&ocirc;ts, dans Paris. L\'id&eacute;e de fournir une qualit&eacute; sup&eacute;rieure et suivie, &agrave; un prix raisonnable fera la renomm&eacute;e de la Maison.</p>\r\n<p class=\"article-paragraph\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../assets/frontend/images/timeline.jpg\" alt=\"\" width=\"864\" height=\"198\" /></p>\r\n<p class=\"article-paragraph\"><span style=\"color: #ff6600;\"><strong>Notre Mission :</strong> Faciliter l&rsquo;acc&egrave;s au vin.</span></p>\r\n<p class=\"article-paragraph\"><span style=\"color: #ff6600;\"><strong>Notre Vision :</strong> Vous promettre de trouver le vin qui vous convient.</span></p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\"><span style=\"color: #993366;\"><strong>N&deg;1 de la distribution de vin en France en centre-ville</strong></span></p>\r\n<p class=\"article-paragraph\">- Pr&egrave;s de 500 boutiques en France</p>\r\n<p class=\"article-paragraph\">Plus de 1 500 r&eacute;f&eacute;rences en vins, champagnes et spiritueux</p>\r\n<p class=\"article-paragraph\">- 20 corners et 2 Bars &agrave; vin</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\"><span style=\"color: #993366;\"><span style=\"font-weight: bold;\">Nicolas MAROC :</span></span></p>\r\n<p><img style=\"float: right;\" src=\"../../../assets/frontend/images/article_img1.jpg\" alt=\"\" width=\"412\" height=\"266\" /></p>\r\n<p class=\"article-paragraph\">Experts en qualit&eacute; et conseil depuis 1822, les cavistes Nicolas sont de v&eacute;ritables&nbsp;professionnels du vin d&eacute;tenant une excellente connaissance des produits.&nbsp;</p>\r\n<p class=\"article-paragraph\">En effet, chez Nicolas, vendre des vins ne se r&eacute;sume pas &agrave; un simple r&ocirc;le d&rsquo;interm&eacute;diaire entre le producteur et le consommateur. Pour assurer cette qualit&eacute; de conseil, Nicolas apporte &agrave; tous ses cavistes une formation compl&egrave;te d&rsquo;une dur&eacute;e de 5 semaines. Gr&acirc;ce &agrave; l&rsquo;Ecole int&eacute;gr&eacute;e Nicolas (centre de formation agr&eacute;&eacute;), chaque futur caviste d&eacute;couvre non seulement les produits mais s&rsquo;initie au conseil et &agrave; la gestion optimale d&rsquo;un magasin.&nbsp;</p>\r\n<p class=\"article-paragraph\">Chez Nicolas, toutes les questions trouvent r&eacute;ponses, que ce soit sur le vin, son service ou sur l&rsquo;art de l&rsquo;harmoniser avec les plats ! Et qui de mieux plac&eacute; que votre caviste pour d&eacute;livrer des messages simples, clairs et positifs en mati&egrave;re de bonnes pratiques de consommation ?</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\"><span style=\"color: #993366;\"><strong>Culture forte de l&rsquo;innovation</strong></span></p>\r\n<p class=\"article-paragraph\"><img style=\"float: left;\" src=\"../../../assets/frontend/images/article_img2.jpg\" alt=\"\" width=\"414\" height=\"271\" />Triporteurs Nicolas</p>\r\n<p class=\"article-paragraph\">Premier &agrave; vendre du vin en bouteilles, Nicolas a toujours su s&rsquo;affirmer comme pr&eacute;curseur en cr&eacute;ant une gamme de services toujours plus innovants : la livraison &agrave; domicile en 1840, la disponibilit&eacute; de vins au frais en 1988, le service gla&ccedil;ons en 2012&hellip;&nbsp;</p>\r\n<p class=\"article-paragraph\">Et comme l&rsquo;innovation passe aussi par l&rsquo;offre, Nicolas fut le premier &agrave; proposer le Beaujolais Nouveau &agrave; grande &eacute;chelle en 1966. En 1995, il met &agrave; l&rsquo;honneur les Vins de Pays de France avec la gamme des Petites R&eacute;coltes, suivi des Grains de C&eacute;page en 2003.</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\"><span style=\"color: #993366;\"><strong>Les tribulations de Nectar</strong></span></p>\r\n<p class=\"article-paragraph\">La notori&eacute;t&eacute; de NICOLAS s\'est affirm&eacute;e gr&acirc;ce &agrave; une communication publicitaire intense, tant au cin&eacute;ma (premiers dessins anim&eacute;s publicitaires en 1921), que sur les murs avec l&rsquo;apparition de Nectar en 1922. N&eacute; du crayon de Dransy et inspir&eacute; d\'un livreur de la maison nomm&eacute; Le Paven, le fr&ecirc;le livreur moustachu aux yeux en soucoupe, charg&eacute; de bouteilles dans chaque main, connu un succ&egrave;s populaire imm&eacute;diat et indiscut&eacute;.&nbsp;</p>\r\n<p class=\"article-paragraph\">En 2012, &agrave; l&rsquo;occasion du 190&egrave;me anniversaire de Nicolas, le livreur embl&eacute;matique de la maison s&rsquo;est modernis&eacute; et nous a fait d&eacute;couvrir un nouveau visage.&nbsp;<img style=\"float: right;\" src=\"../../../assets/frontend/images/article_img3.jpg\" alt=\"\" width=\"440\" height=\"210\" /></p>\r\n<p class=\"article-paragraph\">Aujourd&rsquo;hui, le caviste est &agrave; l&rsquo;honneur de la communication publicitaire de Nicolas.</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>', 1),
(2, 'NICOLAS PR&Eacute;CURSEUR DEPUIS PLUS DE 190 ANS', 'histoire', '<p class=\"article-paragraph\">L&rsquo;histoire commence &agrave; l&rsquo;&eacute;poque o&ugrave; le vin se buvait sur place, dans les cabarets ou les boutiques &agrave; vins. Et si l&rsquo;envie prenait d&rsquo;en consommer chez soi, il fallait se rendre chez un marchand de vin ou directement chez le producteur pour acheter un f&ucirc;t ! C\'est &agrave; partir de ce constat que Louis Nicolas inventa un nouveau concept de vente du vin qui allait r&eacute;volutionner toutes les habitudes de consommation et de n&eacute;goce: le vin en bouteille.&nbsp;</p>\r\n<p class=\"article-paragraph\">Cr&eacute;&eacute;e en 1822, la Maison Nicolas comptait &agrave; cette &eacute;poque une boutique principale au 53, rue Sainte-Anne et trois d&eacute;p&ocirc;ts, dans Paris. L\'id&eacute;e de fournir une qualit&eacute; sup&eacute;rieure et suivie, &agrave; un prix raisonnable fera la renomm&eacute;e de la Maison.</p>\r\n<p class=\"article-paragraph\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://www.nicolasmaroc.com/assets/frontend/images/timeline.jpg\" alt=\"\" width=\"864\" height=\"198\" /></p>\r\n<p class=\"article-paragraph\"><span style=\"color: #ff6600;\"><strong>Notre Mission :</strong> Faciliter l&rsquo;acc&egrave;s au vin.</span></p>\r\n<p class=\"article-paragraph\"><span style=\"color: #ff6600;\"><strong>Notre Vision :</strong> Vous promettre de trouver le vin qui vous convient.</span></p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\"><span style=\"color: #993366;\"><strong>N&deg;1 de la distribution de vin en France en centre-ville</strong></span></p>\r\n<p class=\"article-paragraph\">- Pr&egrave;s de 500 boutiques en France</p>\r\n<p class=\"article-paragraph\">Plus de 1 500 r&eacute;f&eacute;rences en vins, champagnes et spiritueux</p>\r\n<p class=\"article-paragraph\">- 20 corners et 2 Bars &agrave; vin</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\"><span style=\"color: #993366;\"><strong>Un savoir-faire au service du vin<br /></strong></span></p>\r\n<p class=\"article-paragraph\">Experts en qualit&eacute; et conseil depuis 1822, les cavistes Nicolas sont de v&eacute;ritables <img style=\"float: right;\" src=\"http://www.nicolasmaroc.com/assets/frontend/images/article_img1.jpg\" alt=\"\" width=\"412\" height=\"266\" />professionnels du vin d&eacute;tenant une excellente connaissance des produits.&nbsp;</p>\r\n<p class=\"article-paragraph\">En effet, chez Nicolas, vendre des vins ne se r&eacute;sume pas &agrave; un simple r&ocirc;le d&rsquo;interm&eacute;diaire entre le producteur et le consommateur. Pour assurer cette qualit&eacute; de conseil, Nicolas apporte &agrave; tous ses cavistes une formation compl&egrave;te d&rsquo;une dur&eacute;e de 5 semaines. Gr&acirc;ce &agrave; l&rsquo;Ecole int&eacute;gr&eacute;e Nicolas (centre de formation agr&eacute;&eacute;), chaque futur caviste d&eacute;couvre non seulement les produits mais s&rsquo;initie au conseil et &agrave; la gestion optimale d&rsquo;un magasin.&nbsp;</p>\r\n<p class=\"article-paragraph\">Chez Nicolas, toutes les questions trouvent r&eacute;ponses, que ce soit sur le vin, son service ou sur l&rsquo;art de l&rsquo;harmoniser avec les plats ! Et qui de mieux plac&eacute; que votre caviste pour d&eacute;livrer des messages simples, clairs et positifs en mati&egrave;re de bonnes pratiques de consommation ?</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\"><span style=\"color: #993366;\"><strong>Culture forte de l&rsquo;innovation</strong></span></p>\r\n<p class=\"article-paragraph\"><img style=\"float: left;\" src=\"http://www.nicolasmaroc.com/assets/frontend/images/article_img2.jpg\" alt=\"\" width=\"414\" height=\"271\" />Triporteurs Nicolas</p>\r\n<p class=\"article-paragraph\">Premier &agrave; vendre du vin en bouteilles, Nicolas a toujours su s&rsquo;affirmer comme pr&eacute;curseur en cr&eacute;ant une gamme de services toujours plus innovants : la livraison &agrave; domicile en 1840, la disponibilit&eacute; de vins au frais en 1988, le service gla&ccedil;ons en 2012&hellip;&nbsp;</p>\r\n<p class=\"article-paragraph\">Et comme l&rsquo;innovation passe aussi par l&rsquo;offre, Nicolas fut le premier &agrave; proposer le Beaujolais Nouveau &agrave; grande &eacute;chelle en 1966. En 1995, il met &agrave; l&rsquo;honneur les Vins de Pays de France avec la gamme des Petites R&eacute;coltes, suivi des Grains de C&eacute;page en 2003.</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>\r\n<p class=\"article-paragraph\"><span style=\"color: #993366;\"><strong>Les tribulations de Nectar</strong></span></p>\r\n<p class=\"article-paragraph\">La notori&eacute;t&eacute; de NICOLAS s\'est affirm&eacute;e gr&acirc;ce &agrave; une communication publicitaire intense, tant au cin&eacute;ma (premiers dessins anim&eacute;s publicitaires en 1921), que sur les murs avec l&rsquo;apparition de Nectar en 1922. N&eacute; du crayon de Dransy et inspir&eacute; d\'un livreur de la maison nomm&eacute; Le Paven, le fr&ecirc;le livreur moustachu aux yeux en soucoupe, charg&eacute; de bouteilles dans chaque main, connu un succ&egrave;s populaire imm&eacute;diat et indiscut&eacute;.&nbsp;</p>\r\n<p class=\"article-paragraph\">En 2012, &agrave; l&rsquo;occasion du 190&egrave;me anniversaire de Nicolas, le livreur embl&eacute;matique de la maison s&rsquo;est modernis&eacute; et nous a fait d&eacute;couvrir un nouveau visage.&nbsp;<img style=\"float: right;\" src=\"http://www.nicolasmaroc.com/assets/frontend/images/article_img3.jpg\" alt=\"\" width=\"440\" height=\"210\" /></p>\r\n<p class=\"article-paragraph\">Aujourd&rsquo;hui, le caviste est &agrave; l&rsquo;honneur de la communication publicitaire de Nicolas.</p>\r\n<p class=\"article-paragraph\">&nbsp;</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regular_price` double DEFAULT NULL,
  `strike_price` double DEFAULT NULL,
  `loyality_price` double DEFAULT NULL,
  `volume` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vintage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_new` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `taste_id` int(11) DEFAULT NULL,
  `care_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_temperature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `corps` int(11) NOT NULL,
  `fraicheur` int(11) NOT NULL,
  `evolution` int(11) NOT NULL,
  `style` int(11) NOT NULL,
  `characteristics1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `characteristics_details` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `characteristics2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `appelation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cepage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `country_id`, `brand_id`, `region_id`, `sub_category_id`, `label`, `regular_price`, `strike_price`, `loyality_price`, `volume`, `description`, `slug`, `vintage`, `is_new`, `color_id`, `taste_id`, `care_level`, `service_temperature`, `corps`, `fraicheur`, `evolution`, `style`, `characteristics1`, `characteristics_details`, `characteristics2`, `state`, `appelation`, `cepage`, `ref`, `seen`) VALUES
(26, 10, NULL, 2, 1, 'PETIT CHABLIS - LES VAUX SEREINS', 193, 0, 0, 75, 'Blanc - 12,5°', 'petit-chablis-les-vaux-sereins', '2014', 0, 1, 1, 'Prêt à boire', '9°', 6, 7, 6, 5, 'Fruité et Charnu', 'Sa robe paille  au reflets verts offre un nez de fougères, de fleurs blanches, puis notes de pain de mie et brioche. En bouche, ce vin est équilibré avec un caractère sur la fraîcheur. ', 'Claire aux reflets verts', 1, 'Petit Chablis', 'Chardonnay', '472614', 86),
(28, 10, NULL, 4, 1, 'Château de l\'Hyvernière', 117, 0, 0, 75, '', 'chteau-de-l-hyvernire', '2014', 0, 1, 4, 'A déguster jusqu\'en 2019', '8.0', 5, 5, 5, 5, '', '', 'Paille clair', 1, 'Muscadet Sèvre & Maine', '', '187000', 34),
(29, 10, NULL, 1, 1, 'Château Tour Prignac', 280, 270, 270, 75, 'Cru Bourgeois - Médoc', 'chateau-tour-prignac', '2011', 0, 3, 2, 'A déguster jusqu\'en 2018', '18.0', 6, 3, 7, 7, '', '', 'Brique', 0, 'Médoc', 'Cabernet Sauvignon Merlot', '', 51),
(30, 10, NULL, 6, 1, 'Domaine de la Ferme Blanche', 120, 0, 0, 75, '', 'domaine-de-la-ferme-blanche', '2014', 0, 1, 2, 'Peut encore vieillir', '8.0', 4, 4, 4, 5, '', '', 'Paille aux reflets verts', 0, 'Cassis', '', '', 32),
(31, 10, NULL, 1, 1, 'Château Cheval Noir', 319, 0, 0, 75, 'Grand cru', 'chteau-cheval-noir', '2013', 0, 3, 2, 'A déguster jusqu\'en 2030', '18.0', 5, 5, 5, 5, '', '', 'Grenat', 0, 'Saint-Emilion', '', '154238', 24),
(32, 10, NULL, 2, 1, 'Pierre André', 338, 0, 0, 75, '', 'pierre-andr', '2014', 0, 3, 6, 'Peut encore vieillir', '17.0', 2, 5, 8, 5, '', '', 'Grenat', 0, 'Rully', '', '', 21),
(33, 10, NULL, 2, 1, 'La Chablisienne', 385, 0, 0, 75, '', 'la-chablisienne', '2014', 0, 1, 2, '', '9.0', 5, 5, 5, 5, '', '', 'Or aux reflets verts', 0, 'Chablis 1er Cru', '', '', 15),
(34, 10, NULL, 1, 1, 'Château de Camensac', 1, 0, 0, 150, '', 'chateau-de-camensac', '2012', 0, 3, NULL, '', '', 5, 5, 5, 5, '', '', '', 0, 'Haut-Médoc', 'Cabernet Sauvignon', '', 17),
(35, 10, NULL, 1, 1, 'Château Fourcas Dupré', 123, 0, 0, 75, '', 'chateau-fourcas-dupre', '2012', 0, 3, 7, '', '18.0', 6, 4, 3, 3, '', '', 'Brique', 0, 'Haut-Médoc', '', '', 16),
(36, 10, NULL, 11, 1, 'Domaine Gérard Bertrand', 118, 0, 0, 75, '', 'domaine-grard-bertrand', '2015', 0, 1, 4, '', '8.0', 4, 4, 4, 3, '', '', 'Claire aux reflets verts', 0, 'IGP Pays d\'Oc', '', '', 14),
(37, 10, NULL, 11, 1, 'Domaine Gérard Bertrand', 0, 0, 0, 75, '', 'domaine-grard-bertrand', '2013', 0, 3, 7, '', '16.0', 4, 4, 3, 4, '', '', 'Tuilée', 0, 'IGP Pays d\'Oc', '', '', 17),
(38, 10, NULL, 11, 1, 'Domaine Gérard Bertrand', 0, 0, 0, 75, '', 'domaine-grard-bertrand', '2013', 0, 3, 7, 'A déguster jusqu\'en 2030', '16.0', 5, 8, 4, 3, 'Fruité et charnu', 'Sa robe pourpre aux reflets noirs offre un nez de fruits noirs confiturés, de pêche jaune et de réglisse. Ce vin possède un bon équilibre avec une petite enveloppe, des tanins mûrs, assez gras et ronds, mais un peu capiteux.', 'Grenat', 0, 'Corbières Boutenac', '', '', 10),
(39, 10, NULL, 2, 1, 'Albert Bichot', 345, 0, 0, 75, '', 'albert-bichot', '2014', 0, 3, 4, 'Peut être conservé', '17.0', 4, 5, 4, 3, 'Fruité et nerveux', '', '', 0, 'Mercurey', '', '', 10),
(41, 10, NULL, 4, 1, 'Cave de l’Union des Vignerons de Saint-Pourçain', 104, 0, 0, 75, '', 'cave-de-l-union-des-vignerons-de-saint-pourain', '2015', 0, 1, 4, '', '8.0', 4, 4, 6, 4, 'Fruité et nerveux', '', 'Paille', 0, 'Saint-Pourçain', '', '', 11),
(42, 10, NULL, 11, 1, 'Domaine du Prieuré d\'Amilhac', 109, 0, 0, 75, '', 'domaine-du-prieur-d-amilhac', '2015', 0, 1, 2, 'Peut être conservé', '8.0', 5, 3, 3, 4, 'Fruité et plein', '', 'Or aux reflets verts', 0, 'IGP des Côtes de Thongue', '', '', 7),
(43, 10, NULL, 2, 1, 'La Chablisienne', 274, 0, 0, 75, '', 'la-chablisienne', '2012', 0, 1, 7, '', '9.0', 2, 6, 5, 4, 'Bouqueté, corsé et à point', '', 'Paille aux reflets verts', 0, 'Chablis 1er Cru', '', '22', 7),
(44, 7, NULL, 12, 1, 'Lamberti', 164, 0, 0, 75, '', 'lamberti', '2014', 0, 3, 6, 'Peut être conservé', '16.0', 5, 5, 4, 3, 'Bouqueté et souple', '', 'Grenat', 0, '', '', '472980', 10),
(45, 10, NULL, 11, 1, 'Domaine Gérard Bertrand', 0, 0, 0, 75, '', 'domaine-grard-bertrand', '2013', 0, 3, 2, 'Peut être conservé', '17.0', 4, 6, 3, 9, 'Fruité et plein', '', 'Grenat', 0, 'Coteaux du Languedoc La Clape', '', '472982', 16),
(46, 10, NULL, 11, 1, 'Domaine Gérard Bertrand', 0, 0, 0, 75, '', 'domaine-grard-bertrand', '2013', 0, 3, 2, 'Peut être conservé', '17.0', 3, 3, 2, 3, 'Fruité et plein', '', 'Grenat', 0, 'Coteaux du Languedoc La Clape', '', '472982', 15),
(47, 10, NULL, 11, 1, 'Domaine Gérard Bertrand', 0, 0, 0, 75, '', 'domaine-grard-bertrand', '2014', 0, NULL, 7, '', '8.0', 2, 2, 3, 2, 'Bouqueté, corsé et à point', '', 'Paille aux reflets verts', 0, 'IGP Aude Hauterive', '', '472985', 13),
(49, 10, NULL, 11, 1, 'Domaine Gérard Bertrand', 0, 0, 0, 75, '', 'domaine-grard-bertrand', '2014', 0, 1, 7, '', '8.0', 5, 3, 2, 1, 'Bouqueté, corsé et à point', '', 'Paille aux reflets verts', 0, 'IGP Aude Hauterive', '', '472985', 8),
(50, 10, NULL, 9, 1, 'JP & JF Quénard', 0, 0, 0, 75, '', 'jp-jf-qunard', '2015', 0, 1, 2, 'Peut être conservé', '8.0', 4, 4, 3, 1, 'Fruité et plein', '', '', 0, 'Vin de Savoie', '', '472986', 8),
(51, 10, NULL, 2, 1, 'Domaine Faiveley', 0, 0, 0, 75, '', 'domaine-faiveley', '2014', 0, 3, 2, 'A déguster jusqu\'en 2020', '17.0', 1, 3, 2, 2, 'Fruité et plein', '', 'Grenat', 0, 'Givry', '', '472987', 5),
(52, 10, NULL, 2, 1, 'Domaine Dupont Tisserandot', 0, 0, 0, 75, '', 'domaine-dupont-tisserandot', '2012', 0, 3, NULL, '', '', 3, 2, 3, 2, '', '', '', 0, 'Marsannay', '', '472989', 3),
(53, 10, NULL, 3, 1, 'Maison Delas', 0, 0, 0, 75, '', 'maison-delas', '2013', 0, 3, 6, 'Peut être conservé', '17.0', 2, 3, 2, 2, 'Bouqueté et souple', '', 'Rubis', 0, 'Crozes Hermitage', '', '472990', 5),
(55, 10, NULL, 1, 1, 'Château d’Arcins', 179, 0, 0, 75, 'Second vin', 'chteau-d-arcins', '2012', 0, 3, 6, 'Peut être conservé', '18.0', 3, 3, 6, 2, 'Bouqueté et souple', '', 'Grenat', 0, 'Haut-Médoc', '', '472996', 5),
(56, 10, NULL, 1, 1, 'Château d’Arcins', 294, 0, 0, 75, '', 'chteau-d-arcins', '2012', 0, 3, 6, 'A déguster jusqu\'en 2020', '17.0', 2, 2, 2, 2, 'Bouqueté et souple', '', 'Pourpre', 0, 'Haut-Médoc', '', '472997', 14),
(57, 10, NULL, 1, 1, 'Château Tour Prignac', 0, 0, 0, 75, 'Second vin', 'chateau-tour-prignac', '2013', 0, 3, 1, 'A déguster jusqu\'en 2019', '18.0', 2, 4, 6, 4, 'Fruité et souple', '', '', 0, 'Médoc', '', '472998', 50),
(60, 7, NULL, 13, 1, 'Fertuna', 0, 0, 0, 0, '', 'fertuna', '', 0, 1, 4, 'Peut encore vieillir', '9.0', 3, 1, 3, 2, 'Fruité et nerveux', '', 'Paille soutenu', 0, '', '', '473019', 10),
(61, 7, NULL, 14, 1, 'Torre Saracena', 144, 0, 0, 75, '', 'torre-saracena', '75.0', 0, 3, 6, '', '17.0', 2, 6, 7, 9, 'Bouqueté et souple', '', 'Grenat', 0, '', '', '473027', 9),
(62, 10, NULL, 6, 1, 'Château Les Valentines', 182, 0, 0, 75, '', 'chteau-les-valentines', '2015', 0, 4, 2, '2018', '10.0', 5, 6, 5, 5, 'Fruité et frais', '', 'Robe saumon clair', 1, 'Côtes de Provence', 'Cinsault; Syrah; Grenache; Mourvèdre', '473029', 43),
(63, 10, NULL, 11, 1, 'Beauvignac Viognier OC', 88, 0, 0, 75, 'Blanc - 13°', 'beauvignac-viognier-oc', '2015', 0, 1, 2, 'Prêt à boire', '9.0', 6, 8, 6, 6, 'Fruité et plein', '', 'Robe Paille', 1, 'Pays d\'Oc', 'Viognier', '473030', 26),
(64, 10, NULL, 3, 1, 'Domaine Guigal', 733, 0, 0, 75, '', 'domaine-guigal', '2012', 0, 3, 7, 'A déguster jusqu\'en 2025', '17.0', 2, 5, 4, 6, 'Bouqueté, corsé et à point', '', 'Pourpre', 0, 'Côte-Rotie', '', '473032', 8),
(65, 10, NULL, 7, 1, 'Les Vignerons de Buzet', 699, 0, 0, 75, '', 'les-vignerons-de-buzet', '2015', 0, 4, 2, '', '11.0', 5, 2, 5, 2, 'Fruité et plein', '', 'Corail orangé', 0, 'Buzet', '', '473033', 15),
(66, 10, NULL, 3, 1, 'DOMAINE DE LA LOUBIERE', 107, 0, 0, 75, '', 'domaine-de-la-loubiere', '2015', 0, 3, NULL, '', '', 2, 4, 4, 2, '', '', '', 0, 'Costières de Nîmes', '', '473040', 6),
(70, 10, NULL, 1, 1, 'Château Haut-Rian', 120, 0, 0, 0, '', 'chteau-haut-rian', '2015', 0, 4, 1, '2', '', 3, 2, 3, 2, 'Fruité et plein', '', 'Gris', 0, 'Bordeaux', '', '473055', 15),
(71, NULL, NULL, NULL, 28, 'HEINEKEN  ', 15, 0, 0, 25, '', 'heineken', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0206', 39),
(72, NULL, NULL, NULL, 30, 'HEINEKEN ', 17, 0, 0, 33, '', 'heineken', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, 'canette', '', 'REF0207', 30),
(73, NULL, NULL, NULL, 29, 'CASABLANCA ', 19, 0, 0, 33, '', 'casablanca', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0208', 30),
(74, NULL, NULL, NULL, 28, 'Leffe blonde ', 27, 0, 0, 33, '', 'leffe-blonde', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0383', 24),
(75, NULL, NULL, NULL, 30, 'Fut Heineken ', 365, 0, 0, 500, '', 'fut-heineken', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0500', 30),
(76, NULL, NULL, NULL, 28, 'KRONENBOURG 1664', 24, 0, 0, 33, '', 'kronenbourg-1664', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0507', 21),
(77, NULL, NULL, NULL, 29, 'CASABLANCA ', 17, 0, 0, 25, '', 'casablanca', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0742', 21),
(78, NULL, NULL, NULL, 28, 'BUDWEISER ', 14, 0, 0, 20, '', 'budweiser', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0772', 21),
(79, NULL, NULL, NULL, 29, 'FLAG SPECIALE ', 13, 0, 0, 25, '', 'flag-speciale', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0778', 17),
(80, NULL, NULL, NULL, 28, 'Carlsberg ', 20, 0, 0, 33, '', 'carlsberg', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0782', 24),
(81, NULL, NULL, NULL, 28, 'Stella artois', 23, 0, 0, 33, '', 'stella-artois', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0794', 18),
(82, NULL, NULL, NULL, 30, 'HEINEKEN ', 24, 0, 0, 50, '', 'heineken', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, 'canette', '', 'REF0813', 20),
(83, NULL, NULL, NULL, 28, 'leffe brune ', 27, 0, 0, 33, '', 'leffe-brune', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0839', 21),
(84, NULL, NULL, NULL, 28, 'bierre Kronenbourg boite ', 22, 0, 0, 33, '', 'bierre-kronenbourg-boite', 'Bière importée ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0840', 10),
(85, NULL, NULL, NULL, 28, 'bierre Becks sans alcool BT', 18, 0, 0, 33, '', 'bierre-becks-sans-alcool-bt', 'Bière importée ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0842', 10),
(86, NULL, NULL, NULL, 29, 'Pack Casablanca boite 5+1', 100, 0, 0, 33, '', 'pack-casablanca-boite-5-1', 'Bière locale ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0854', 10),
(87, NULL, NULL, NULL, 28, 'Becks ', 18, 0, 0, 27, '', 'becks', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0883', 17),
(88, NULL, NULL, NULL, 28, 'Becks ss alcool', 19, 0, 0, 33, '', 'becks-ss-alcool', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0912', 21),
(89, NULL, NULL, NULL, 28, 'KRONENBOURG CAN ', 21, 0, 0, 50, '', 'kronenbourg-can', 'Bière importée ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, 'canette', '', 'REF1003', 21),
(90, NULL, NULL, NULL, 29, 'BEAUFORT', 16, 0, 0, 25, '', 'beaufort', 'Bière locale ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1093', 10),
(91, NULL, NULL, NULL, 29, 'CASABLANCA LIGHT ', 15, 0, 0, 25, '', 'casablanca-light', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1097', 25),
(92, NULL, NULL, NULL, 29, '33 EXPORT VP 4*6', 12, 0, 0, 25, '', '33-export-vp-4-6', 'Bière locale ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1158', 10),
(93, NULL, NULL, NULL, 29, 'SPECIALE FLAG *24', 182, 0, 0, 24, '', 'speciale-flag-24', 'Bière locale ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '4721', 10),
(94, NULL, NULL, NULL, 29, 'SPECIALE FLAG *24 VP', 212, 0, 0, 25, '', 'speciale-flag-24-vp', 'Bière locale ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '4728', 10),
(95, NULL, NULL, NULL, 29, 'SPECIALE FLAG BTE *24', 255, 0, 0, 33, '', 'speciale-flag-bte-24', 'Bière locale ', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '4737', 10),
(96, 10, 6, 16, 3, 'VEUVE CLICQUOT BRUT ', 748, 0, 0, 75, 'Blanc - 12°', 'veuve-clicquot-brut', '', 0, 1, NULL, 'Prêt à boire', '9°', 5, 5, 5, 0, 'Riche et Rond', 'Sa robe claire aux reflets paille offre un nez aérien et élégant de fruits jaunes et de vanille. En bouche ce vin présente un bel équilibre et de la finesse. Il est rond avec une belle allonge sur des bulles crémeuses.', 'Robe claire aux reflets paille', 1, '', 'Pinot noir', '017416', 18),
(97, 10, NULL, 16, 3, 'HENRIOT BRUT SOUVERAIN  ', 730, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'henriot-brut-souverain', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '033990', 6),
(98, 10, NULL, 24, 36, 'LAURENT PERRIER Rosé', 1151, 0, 0, 75, 'Rosé - 12°', 'laurent-perrier-rose', '', 0, 4, NULL, 'Prêt à boire', '9°', 4, 5, 5, 0, 'Fruité et Charnu', 'A l\'image de la maison Laurent Perrier, ce champagne rosé est d\'une très grande qualité. Sa robe corail offre un nez bouqueté de fruits rouges, cerises confites et de framboise avec des notes boisées .Ses bulles sont fines et fondantes. Superbe.', 'Robe corail clair', 1, '', 'Pinot noir', '070862', 12),
(99, 10, NULL, 24, 3, 'LAURENT PERRIER BRUT ', 579, 0, 0, 75, 'Blanc - 12°', 'laurent-perrier-brut', '', 0, 1, NULL, 'Prêt à boire', '8°', 5, 5, 6, 0, 'Riche et Rond', 'Sa robe paille lumineuse annonce un beau nez beurrée et épanoui de fruits jaunes et de griolles. En bouche, il est équilibré, racé, assez corsé, ample, nerveux et bien signé. Sa belle allonge est onctueuse sur des bulles crémeuses.', 'Robe paille ', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '075826', 12),
(100, 10, NULL, 24, 3, 'ROEDERER BRUT ', 981, 0, 0, 75, 'Blanc - 12°', 'roederer-brut', '', 0, 1, NULL, 'Prêt à boire', '8°', 5, 6, 5, 0, 'Fruité et Charnu', 'Sa robe paille lumineuse offre un beau nez exubérant d\'amandes grillées, de fruits jaunes et de notes de vanille. En bouche, il est harmonieux, droit, racé, plein, ample et signé avec une finale longue sur notes minérales. Onctueux avec bulles fines . Bea', 'Robe paille ', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '098952', 11),
(101, 10, NULL, 24, 3, 'MALARD BRUT EXCELLENCE 1ER CRU', 543, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'malard-brut-excellence-1er-cru', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '272785', 6),
(102, 10, NULL, 16, 6, 'MALARD GRAND CRU BLC DE BLANCS', 579, 0, 0, 75, 'Chardonnay', 'malard-grand-cru-blc-de-blancs', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Chardonnay', '302380', 9),
(103, 10, NULL, 16, 3, 'CANARD DUCHENE CUVEE LEONIE', 604, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'canard-duchene-cuvee-leonie', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '336916', 9),
(104, 10, NULL, NULL, 3, 'CHARLES LAFITTE 1834 BRUT ', 595, 0, 0, 0, 'Pinot noir,Pinot meunier, Chardonnay', 'charles-lafitte-1834-brut', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '340793', 0),
(105, 10, NULL, 24, 4, 'MALARD DEMI SEC', 491, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'malard-demi-sec', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '446702', 8),
(106, 10, NULL, 24, 7, 'MALARD GRAND CRU BLC DE NOIRS', 637, 0, 0, 75, 'Pinot noir.', 'malard-grand-cru-blc-de-noirs', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir', '447141', 14),
(107, 10, NULL, 16, 3, 'VRANKEN CUVEE DIAMANT BRUT', 856, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'vranken-cuvee-diamant-brut', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '461198', 10),
(108, 10, NULL, 16, 3, 'CHAMPAGNE NICOLAS 1ER CRU', 561, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'champagne-nicolas-1er-cru', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '467372', 9),
(109, 10, NULL, 16, 3, 'CHAMPAGNE SELECTION NICOLAS', 419, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'champagne-selection-nicolas', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '467720', 6),
(110, 10, NULL, 24, 3, 'PIPER HEIDSEICK ESSENTIEL BRUT', 695, 0, 0, 75, 'Blanc - 12 °', 'piper-heidseick-essentiel-brut', '', 0, 1, NULL, 'Prêt à boire', '8°', 6, 6, 6, 0, 'Riche et puissant', 'Ce vin offre un nez étonnant mêlant café torréfié, brioches, pâtisseries mais aussi une touche de mangue bien mûre, abricots et fruits secs. Sur le palais il est précis sur une touche élégante et riche .La finale est pralinée vanillée voir crémeuse.<br />', 'Robe clair aux reflets dorées', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '468991', 7),
(111, 10, NULL, 17, 3, 'BESSERAT BELLEFON MOINE BRUT', 629, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'besserat-bellefon-moine-brut', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '470348', 8),
(112, 10, NULL, 16, 3, 'BRUNO PAILLARD 1ERE CUVEE', 803, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'bruno-paillard-1ere-cuvee', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '472372', 11),
(113, 10, NULL, NULL, 3, 'CHAMPAGNE NICOLAS BLLE SPCL', 611, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'champagne-nicolas-blle-spcl', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '472932', 7),
(114, 10, NULL, NULL, 3, 'CHAMPAGNE NICOLAS ROSE BS', 679, 0, 0, 75, 'Pinot noir, chardonnay', 'champagne-nicolas-rose-bs', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Chardonnay', '472935', 7),
(115, 10, NULL, 17, 3, 'DOM PERIGNON BRUT 2003', 2775, 0, 0, 0, 'Pinot noir,Pinot meunier, Chardonnay', 'dom-perignon-brut-2003', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF0062', 0),
(116, 10, NULL, 17, 3, 'MOET ROSE ', 945, 0, 0, 75, 'Pinot noir, chardonnay', 'moet-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Chardonnay', 'REF0121', 0),
(117, 10, NULL, 24, 3, 'MOET ET CHANDON Imperial Brut', 609, 0, 0, 75, 'Blanc - 12 °', 'moet-et-chandon-imperial-brut', '', 0, 1, NULL, 'Prêt à boire', '8°', 5, 6, 5, 0, 'Complexe et charnu', 'Ce vin offre un nez de pommes et de poires, mais aussi de pleurs blanches. En bouche , il présente une belle vivacité alliée à une légère acidité . C\'est une bouche savoureusement fondu aux notes de fruits à pépins. Ses bulles fines forme des cordons très', 'Robe pâle aux reflets verts', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '209921', 12),
(118, 10, NULL, 16, 3, 'MUMM CORDON ROUGE ', 590, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'mumm-cordon-rouge', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF0143', 0),
(119, 10, NULL, 16, 3, 'MUMM ROSE ', 875, 0, 0, 75, 'Pinot noir, chardonnay', 'mumm-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Chardonnay', 'REF0146', 8),
(120, 10, NULL, 17, 3, 'MG MOET ET CHANDON', 1427, 0, 0, 0, 'Pinot noir,Pinot meunier, Chardonnay', 'mg-moet-et-chandon', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF0248', 0),
(121, 10, NULL, 16, 3, 'VEUVE CLICQUOT ROSE 12%', 1200, 0, 0, 75, 'Pinot noir, chardonnay', 'veuve-clicquot-rose-12', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Chardonnay', 'REF0258', 9),
(122, 10, NULL, 16, 3, 'MUMM CORDON ROUGE ', 1319, 0, 0, 150, 'Pinot noir,Pinot meunier, Chardonnay', 'mumm-cordon-rouge', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF0687', 0),
(123, 10, NULL, 16, 3, 'RUINART BRUT ', 769, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'ruinart-brut', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF0814', 6),
(124, 10, NULL, 16, 6, 'RUINART BLANC DE BLANC ', 1083, 0, 0, 70, 'Chardonnay', 'ruinart-blanc-de-blanc', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Chardonnay', 'REF0816', 10),
(125, 10, NULL, 17, 3, '1/2 MOET ET CHANDON BRUT', 397, 0, 0, 0, 'Pinot noir,Pinot meunier, Chardonnay', '1-2-moet-et-chandon-brut', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF0843', 0),
(126, 10, NULL, 16, 3, 'RUINART ROSE ', 1097, 0, 0, 75, 'Pinot noir, chardonnay', 'ruinart-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Chardonnay', 'REF0853', 5),
(127, 10, NULL, 16, 3, 'RUINART ROSE ', 550, 0, 0, 75, 'Pinot noir, chardonnay', 'ruinart-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Chardonnay', 'REF0955', 0),
(128, 10, 4, 16, 3, 'POMMERY BRUT ROYAL ', 750, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'pommery-brut-royal', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF0957', 7),
(129, 10, NULL, 17, 3, 'MOET ICE IMPERIAL', 720, 0, 0, 0, 'Pinot noir,Pinot meunier, Chardonnay', 'veuve-clicquot-brut-75cl', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF0968', 0),
(130, 10, NULL, 16, 3, 'POMMERY POP ', 274, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'pommery-pop', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF1005', 8),
(131, 10, NULL, 16, 3, 'POMMERY POP ', 380, 0, 0, 20, 'Pinot noir,Pinot meunier, Chardonnay', 'pommery-pop', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF1071', 0),
(132, 10, NULL, 16, 6, 'MUMM BLANC DE BLANCS ', 1073, 0, 0, 75, 'Chardonnay', 'mumm-blanc-de-blancs', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Chardonnay', 'REF1124', 0),
(133, 10, NULL, 17, 3, 'PJ BELLE EPOQUE ', 2429, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'pj-belle-epoque', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF1127', 0),
(134, 10, NULL, 17, 3, 'PJ BELLE EPOQUE ROSE', 4404, 0, 0, 75, 'Pinot noir, chardonnay', 'pj-belle-epoque-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Chardonnay', 'REF1128', 0),
(135, 10, NULL, 17, 3, 'PJ BLASON ROSE', 970, 0, 0, 75, 'Pinot noir, chardonnay', 'pj-blason-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Chardonnay', 'REF1129', 0),
(136, 10, NULL, 17, 3, 'PJ GRAND BRUT ', 716, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'pj-grand-brut', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF1130', 0),
(137, 10, NULL, 16, 3, 'LAURENT PERRIER GR SIECLE ', 2130, 0, 0, 75, 'Pinot noir,Pinot meunier, Chardonnay', 'laurent-perrier-gr-siecle', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF1131', 8),
(138, 10, NULL, 16, 3, 'COFF POMMERY BRUT ROYAL', 750, 0, 0, 0, 'Pinot noir,Pinot meunier, Chardonnay', 'coff-pommery-brut-royal', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', 'REF1157', 0),
(139, NULL, NULL, NULL, 8, 'PORTO RESERVA ESPECIAL', 168, 0, 0, 75, '', 'porto-reserva-especial', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '097801', 16),
(140, NULL, NULL, NULL, 8, 'PORTO KING S TAWNY 20% VOL', 180, 0, 0, 75, '', 'porto-king-s-tawny-20-vol', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '97813', 17),
(141, NULL, NULL, NULL, 8, 'PORTO TAYLOR 10ANS 20% VOL', 541, 0, 0, 75, '', 'porto-taylor-10ans-20-vol', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '132964', 15),
(142, NULL, NULL, NULL, 9, 'PINEAU CHARENTES ROSE ', 198, 0, 0, 75, '', 'pineau-charentes-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '267856', 10),
(143, NULL, NULL, NULL, 8, 'PORTO CROFT PINK', 275, 0, 0, 0, '', 'porto-croft-pink', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '434436', 0),
(144, NULL, NULL, NULL, 8, 'PORTO SAO AGUIAS RUBY OCRE', 225, 0, 0, 0, '', 'porto-sao-aguias-ruby-ocre', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '473037', 0),
(145, NULL, NULL, NULL, 12, 'ABSOLUT VODKA ', 282, 0, 0, 75, '', 'absolut-vodka', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0003', 21),
(146, NULL, NULL, NULL, 11, 'AMARETTO DISARONNO ', 273, 0, 0, 70, '', 'amaretto-disaronno', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0008', 14),
(147, NULL, NULL, NULL, 11, 'ANISETTE MARIE BRIZARD ', 247, 0, 0, 70, '', 'anisette-marie-brizard', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0009', 0),
(148, NULL, NULL, NULL, 10, 'BAILEY \'S ', 300, 0, 0, 75, '', 'bailey-s', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0013', 10),
(149, NULL, NULL, NULL, 10, 'BALLANTINE\'S ', 261, 0, 0, 75, '', 'ballantine-s', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0014', 14),
(150, NULL, NULL, NULL, 13, 'BOMBAY SAPPHIRE ', 321, 0, 0, 75, '', 'bombay-sapphire', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0021', 11),
(151, NULL, NULL, NULL, 10, 'CHIVAS REGAL 12 ANS', 520, 0, 0, 75, '', 'chivas-regal-12-ans', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0038', 11),
(152, NULL, NULL, NULL, 10, 'CLAN CAMBELL ', 0, 0, 0, 75, '', 'clan-cambell', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0042', 0),
(153, NULL, NULL, NULL, 9, 'COGNAC HENNESSY VERY SPECIAL ', 414, 0, 0, 70, '', 'cognac-hennessy-very-special', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0046', 0),
(154, NULL, NULL, NULL, 9, 'COGNAC HENNESSY VSOP', 739, 0, 0, 0, '', 'cognac-hennessy-vsop', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0047', 0),
(155, NULL, NULL, NULL, 13, 'COGNAC REMY MARTIN VSOP ', 645, 0, 0, 70, '', 'cognac-remy-martin-vsop', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0051', 32),
(156, NULL, NULL, NULL, 9, 'COGNAC REMY MARTIN XO ', 2, 0, 0, 70, '', 'cognac-remy-martin-xo', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0052', 1),
(157, NULL, NULL, NULL, 9, 'Cognac xo hennessy ', 2, 0, 0, 70, '', 'cognac-xo-hennessy', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0053', 0),
(158, NULL, NULL, NULL, 11, 'COINTREAU ', 368, 0, 0, 70, '', 'cointreau', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0054', 0),
(159, NULL, NULL, NULL, 10, 'DIMPLE ', 630, 0, 0, 75, '', 'dimple', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0061', 0),
(160, NULL, NULL, NULL, 11, 'GET 27', 159, 0, 0, 0, '', 'get-27', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0075', 0),
(161, NULL, NULL, NULL, 13, 'GIN BEEFEATER ', 244, 0, 0, 75, '', 'gin-beefeater', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0077', 0),
(162, NULL, NULL, NULL, 13, 'GIN GORDON\'S ', 279, 0, 0, 75, '', 'gin-gordon-s', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0078', 7),
(163, NULL, NULL, NULL, 10, 'GLENFIDDICH S. ANC. RESERVE 18 AN ', 789, 0, 0, 75, '', 'glenfiddich-s-anc-reserve-18-an', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0079', 0),
(164, NULL, NULL, NULL, 10, 'GLENFIDDICH S. RESERVE 12 ANS', 450, 0, 0, 75, '', 'glenfiddich-s-reserve-12-ans', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0080', 0),
(165, NULL, NULL, NULL, 10, 'GLENFIDDICH S. SOLERA 15 ANS RES. ', 568, 0, 0, 75, '', 'glenfiddich-s-solera-15-ans-res', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0081', 0),
(166, NULL, NULL, NULL, 9, 'GRAND MARNIER ROUGE ', 315, 0, 0, 70, '', 'grand-marnier-rouge', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0087', 6),
(167, NULL, NULL, NULL, 12, 'Grey Goose ', 1, 0, 0, 150, '', 'grey-goose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0089', 0),
(168, NULL, NULL, NULL, 12, 'GREY GOOSE ', 544, 0, 0, 75, '', 'grey-goose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0090', 0),
(169, NULL, NULL, NULL, 10, 'J&B ', 322, 0, 0, 75, '', 'j-b', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0094', 10),
(170, NULL, NULL, NULL, 10, 'J.W. BLUE LABEL SCOTCH WHISKY 43% ', 2, 0, 0, 75, '', 'j-w-blue-label-scotch-whisky-43', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0095', 1),
(171, NULL, NULL, NULL, 10, 'J.W. RED LABEL ', 309, 0, 0, 75, '', 'j-w-red-label', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0096', 0),
(172, NULL, NULL, NULL, 10, 'JACK DANIEL\'S ', 399, 0, 0, 75, '', 'jack-daniel-s', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0099', 11),
(173, NULL, NULL, NULL, 10, 'JAMESON IRISH WHISKY ', 375, 0, 0, 70, '', 'jameson-irish-whisky', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0101', 0),
(174, NULL, NULL, NULL, 10, 'JW BLACK LABEL', 509, 0, 0, 75, '', 'jw-black-label', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0103', 7),
(175, NULL, NULL, NULL, 11, 'KAHLUA ', 250, 0, 0, 70, '', 'kahlua', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0105', 13),
(176, NULL, NULL, NULL, 14, 'MALIBU PINEAPPLE ', 200, 0, 0, 70, '', 'malibu-pineapple', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0124', 0),
(177, NULL, NULL, NULL, 14, 'MARTINI BIANCO ', 164, 0, 0, 100, '', 'martini-bianco', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0126', 30),
(178, NULL, NULL, NULL, 14, 'MARTINI DRY ', 158, 0, 0, 100, '', 'martini-dry', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0127', 0),
(179, NULL, NULL, NULL, 14, 'MARTINI ROSE ', 167, 0, 0, 100, '', 'martini-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0128', 0),
(180, NULL, NULL, NULL, 14, 'MARTINI ROUGE ', 155, 0, 0, 100, '', 'martini-rouge', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0129', 10),
(181, NULL, NULL, NULL, 10, 'OLD PARR', 593, 0, 0, 0, '', 'old-parr', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0147', 0),
(182, NULL, NULL, NULL, 31, 'BACARDI RHUM BLANC', 292, 0, 0, 0, '', 'bacardi-rhum-blanc', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0160', 0),
(183, NULL, NULL, NULL, 31, 'RHUM DILLON ', 286, 0, 0, 70, '', 'rhum-dillon', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0162', 8),
(184, NULL, NULL, NULL, 12, 'SMIRNOFF BLACK ', 286, 0, 0, 75, '', 'smirnoff-black', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0175', 0),
(185, NULL, NULL, NULL, 12, 'SMIRNOFF BLEU ', 278, 0, 0, 70, '', 'smirnoff-bleu', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0176', 0),
(186, NULL, NULL, NULL, 12, 'SMIRNOFF ROUGE ', 213, 0, 0, 70, '', 'smirnoff-rouge', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0177', 0),
(187, NULL, NULL, NULL, 12, 'VODKA BELVEDERE ', 1, 0, 0, 150, '', 'vodka-belvedere', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0184', 0),
(188, NULL, NULL, NULL, 12, 'VODKA BELVEDERE', 539, 0, 0, 70, '', 'vodka-belvedere', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0185', 11),
(189, NULL, NULL, NULL, 10, 'Whisky Grant\'s', 222, 0, 0, 75, '', 'whisky-grant-s', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0193', 0),
(190, NULL, NULL, NULL, 32, 'PASTIS 51 ROSE ', 202, 0, 0, 70, '', 'pastis-51-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0239', 0),
(191, NULL, NULL, NULL, 12, 'WYBOROWA', 163, 0, 0, 0, '', 'wyborowa', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0245', 0),
(192, NULL, NULL, NULL, 10, 'CHIVAS REGAL 18ANS ', 1, 0, 0, 70, '', 'chivas-regal-18ans', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0283', 0),
(193, NULL, NULL, NULL, 12, 'Absolut Vanilia  ', 300, 0, 0, 75, '', 'absolut-vanilia', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0309', 0),
(194, NULL, NULL, NULL, 32, ' Pastis 51 ', 206, 0, 0, 70, '', 'pastis-51', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0319', 0),
(195, NULL, NULL, NULL, 10, 'Glenmorangie THE ORIGINAL ', 593, 0, 0, 70, '', 'glenmorangie-the-original', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0323', 0),
(196, NULL, NULL, NULL, 12, 'COFFRET PRAVDA ', 242, 0, 0, 37, '', 'coffret-pravda', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0351', 0),
(197, NULL, NULL, NULL, 12, 'ABSOLUT PECHE', 300, 0, 0, 0, '', 'absolut-peche', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0365', 0),
(198, NULL, NULL, NULL, 13, 'GIN TANQUERAY', 315, 0, 0, 0, '', 'gin-tanqueray', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0376', 0),
(199, NULL, NULL, NULL, 32, 'Pastis 51 ', 272, 0, 0, 100, '', 'pastis-51', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0392', 0),
(200, NULL, NULL, NULL, 9, 'Martell cognac vsop ', 612, 0, 0, 70, '', 'martell-cognac-vsop', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0457', 0),
(201, NULL, NULL, NULL, 12, 'SMIRNOFF  ICE 4*6', 30, 0, 0, 27, '', 'smirnoff-ice-4-6', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0502', 0),
(202, NULL, NULL, NULL, 10, 'JW Black Label ', 2, 0, 0, 450, '', 'jw-black-label', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0515', 0),
(203, NULL, NULL, NULL, 10, 'Whisky ardbeg ( Glenmorangie)', 712, 0, 0, 70, '', 'whisky-ardbeg-glenmorangie', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0522', 8),
(204, NULL, NULL, NULL, 10, 'Glenmorangie NECTAR D\'OR', 815, 0, 0, 0, '', 'glenmorangie-nectar-d-or', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0545', 0),
(205, NULL, NULL, NULL, 33, 'EAU DE VIE DE MIRABELLE ', 274, 0, 0, 70, '', 'eau-de-vie-de-mirabelle', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0557', 8),
(206, NULL, NULL, NULL, 10, 'DEWAR\'S WHITE LABEL SCOTCH WHISKY ', 1, 0, 0, 450, '', 'dewar-s-white-label-scotch-whisky', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0573', 0),
(207, NULL, NULL, NULL, 10, 'WILLIAM LAWSON\'S SCOTCH WHISKY ', 1, 0, 0, 450, '', 'william-lawson-s-scotch-whisky', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0574', 0),
(208, NULL, NULL, NULL, 10, 'JW blue label king georges V', 4, 0, 0, 0, '', 'jw-blue-label-king-georges-v', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0597', 0),
(209, NULL, NULL, NULL, 12, 'Ciroc vodka', 570, 0, 0, 0, '', 'ciroc-vodka', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0598', 0),
(210, NULL, NULL, NULL, 10, 'Dewar\'s 18ans', 767, 0, 0, 0, '', 'dewar-s-18ans', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0604', 0),
(211, NULL, NULL, NULL, 10, 'Dewar\'s white label ', 274, 0, 0, 75, '', 'dewar-s-white-label', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0605', 0),
(212, NULL, NULL, NULL, 31, 'HAVANA CLUB RHUM ANEJO 3 ANS', 280, 0, 0, 70, '', 'havana-club-rhum-anejo-3-ans', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0682', 9),
(213, NULL, NULL, NULL, 10, ' CHIVAS REGAL 12YO ', 1, 0, 0, 150, '', 'chivas-regal-12yo', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0688', 0),
(214, NULL, NULL, NULL, 9, 'MARTEL XO ', 2, 0, 0, 70, '', 'martel-xo', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0692', 0),
(215, NULL, NULL, NULL, 9, 'MARTEL VS ', 423, 0, 0, 70, '', 'martel-vs', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0693', 0),
(216, NULL, NULL, NULL, 32, 'RICARD ', 190, 0, 0, 70, '', 'ricard', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0700', 14),
(217, NULL, NULL, NULL, 32, 'RICARD ', 255, 0, 0, 100, '', 'ricard', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0715', 0),
(218, NULL, NULL, NULL, 14, 'MARTINI BITTER ', 281, 0, 0, 100, '', 'martini-bitter', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0719', 0),
(219, NULL, NULL, NULL, 10, 'J.WALKER DOUBLE BLACK ', 615, 0, 0, 75, '', 'j-walker-double-black', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0735', 0),
(220, NULL, NULL, NULL, 9, 'COGNAC ABK6 VS', 440, 0, 0, 0, '', 'cognac-abk6-vs', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0748', 0),
(221, NULL, NULL, NULL, 10, 'J.W XR21', 1, 0, 0, 0, '', 'j-w-xr21', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0758', 0),
(222, NULL, NULL, NULL, 10, 'J.W PLATINUM', 945, 0, 0, 0, '', 'j-w-platinum', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0759', 0),
(223, NULL, NULL, NULL, 10, 'J.W GOLD LABEL RESERVE', 670, 0, 0, 75, '', 'j-w-gold-label-reserve', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0760', 10),
(224, NULL, NULL, NULL, 31, 'ZACAPA XO', 1, 0, 0, 0, '', 'zacapa-xo', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0761', 0),
(225, NULL, NULL, NULL, 31, 'ZACAPA CENT 23', 805, 0, 0, 0, '', 'zacapa-cent-23', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0762', 0),
(226, NULL, NULL, NULL, 31, 'CAPITAIN MORGAN ', 234, 0, 0, 75, '', 'capitain-morgan', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0763', 0),
(227, NULL, NULL, NULL, 9, 'Cardhu single malt', 754, 0, 0, 70, '', 'cardhu-single-malt', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0764', 11),
(228, NULL, NULL, NULL, 34, 'DON JULIO REPOSADO', 850, 0, 0, 0, '', 'don-julio-reposado', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0766', 0),
(229, NULL, NULL, NULL, 34, 'DON JULIO ANEJO', 950, 0, 0, 0, '', 'don-julio-anejo', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0767', 0),
(230, NULL, NULL, NULL, 34, 'TEQUILA SAN JOSE SILVER ', 230, 0, 0, 70, '', 'tequila-san-jose-silver', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0768', 0),
(231, NULL, NULL, NULL, 34, 'TEQUILASAN JOSE GOLD', 251, 0, 0, 0, '', 'tequilasan-jose-gold', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0769', 0),
(232, NULL, NULL, NULL, 12, 'SMIRNOFF CITRUS ', 256, 0, 0, 70, '', 'smirnoff-citrus', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0770', 0),
(233, NULL, NULL, NULL, 13, 'TANQUERAY TEN', 500, 0, 0, 0, '', 'tanqueray-ten', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0771', 0),
(234, NULL, NULL, NULL, 11, 'Liqueur coconut classique ', 169, 0, 0, 70, '', 'liqueur-coconut-classique', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0787', 0),
(235, NULL, NULL, NULL, 11, 'M. BRIZARD CURACAO', 178, 0, 0, 0, '', 'm-brizard-curacao', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0788', 0),
(236, NULL, NULL, NULL, 35, 'Bas arma ch de l aubade vsop', 590, 0, 0, 0, '', 'bas-arma-ch-de-l-aubade-vsop', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0804', 0),
(237, NULL, NULL, NULL, 35, 'Bas arma ch de l aubade XO', 973, 0, 0, 0, '', 'bas-arma-ch-de-l-aubade-xo', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0805', 0),
(238, NULL, NULL, NULL, 31, 'Rhum clement blanc ', 221, 0, 0, 70, '', 'rhum-clement-blanc', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0806', 0),
(239, NULL, NULL, NULL, 31, 'Rhum clement vieux VSOP ', 589, 0, 0, 70, '', 'rhum-clement-vieux-vsop', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0807', 6),
(240, NULL, NULL, NULL, 10, 'WHISKY HAIG CLUB', 675, 0, 0, 0, '', 'whisky-haig-club', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0831', 0),
(241, NULL, NULL, NULL, 12, '1/2 Vodka belvedere ', 308, 0, 0, 0, '', '1-2-vodka-belvedere', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0833', 0),
(242, NULL, NULL, NULL, 12, 'Smirnoff Vanille ', 229, 0, 0, 70, '', 'smirnoff-vanille', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0834', 0),
(243, NULL, NULL, NULL, 12, 'Smirnoff orange ', 229, 0, 0, 70, '', 'smirnoff-orange', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0836', 0),
(244, NULL, NULL, NULL, 32, 'Pastis Berger blanc ', 214, 0, 0, 100, '', 'pastis-berger-blanc', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0837', 0),
(245, NULL, NULL, NULL, 32, 'Pastis Berger jaune ', 214, 0, 0, 100, '', 'pastis-berger-jaune', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0838', 0),
(246, NULL, NULL, NULL, 11, 'Marie brizard melon vert', 176, 0, 0, 0, '', 'marie-brizard-melon-vert', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0846', 0),
(247, NULL, NULL, NULL, 11, 'Marie brizard pastéque', 176, 0, 0, 0, '', 'marie-brizard-pasteque', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0847', 0),
(248, NULL, NULL, NULL, 11, 'Marie brizard manzanita', 222, 0, 0, 0, '', 'marie-brizard-manzanita', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0849', 0),
(249, NULL, NULL, NULL, 11, 'Marie brizard sucre de canne', 95, 0, 0, 0, '', 'marie-brizard-sucre-de-canne', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0850', 0),
(250, NULL, NULL, NULL, 13, 'GIN WILLIAM PEEL ', 142, 0, 0, 70, '', 'gin-william-peel', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0851', 0),
(251, NULL, NULL, NULL, 10, 'Whisky William peel ', 174, 0, 0, 70, '', 'whisky-william-peel', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0852', 0),
(252, NULL, NULL, NULL, 12, 'Vodka belvedere citron ', 570, 0, 0, 70, '', 'vodka-belvedere-citron', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0861', 0),
(253, NULL, NULL, NULL, 12, 'Vodka Bajoru', 121, 0, 0, 70, '', 'vodka-bajoru', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0862', 0),
(254, NULL, NULL, NULL, 10, 'JW  BLACK LABEL ', 278, 0, 0, 37, '', 'jw-black-label', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0863', 0),
(255, NULL, NULL, NULL, 10, 'JW red label ', 176, 0, 0, 37, '', 'jw-red-label', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0864', 0),
(256, NULL, NULL, NULL, 10, 'JB ', 170, 0, 0, 37, '', 'jb', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0865', 0),
(257, NULL, NULL, NULL, 31, 'Florida Rhum ', 179, 0, 0, 0, '', 'florida-rhum', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0866', 0),
(258, NULL, NULL, NULL, 10, 'Chivas regal extra ', 585, 0, 0, 75, '', 'chivas-regal-extra', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0869', 0),
(259, NULL, NULL, NULL, 11, 'Lillet rouge ', 0, 0, 0, 75, '', 'lillet-rouge', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0871', 0),
(260, NULL, NULL, NULL, 11, 'Lillet blanc ', 0, 0, 0, 75, '', 'lillet-blanc', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0872', 0),
(261, NULL, NULL, NULL, 11, 'Llillet rose ', 0, 0, 0, 75, '', 'llillet-rose', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0873', 0),
(262, NULL, NULL, NULL, 13, 'G\'Vine Floraison ', 525, 0, 0, 70, '', 'g-vine-floraison', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0875', 0),
(263, NULL, NULL, NULL, 9, 'Calvados 3 ans roger groult', 525, 0, 0, 0, '', 'calvados-3-ans-roger-groult', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0878', 0),
(264, NULL, NULL, NULL, 10, 'The Glenlivet Founder\'s ', 498, 0, 0, 70, '', 'the-glenlivet-founder-s', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0884', 0),
(265, NULL, NULL, NULL, 10, 'GENTLEMAN JACK DANIEL ', 578, 0, 0, 75, '', 'gentleman-jack-daniel', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0967', 0),
(266, NULL, NULL, NULL, 31, 'VIEUX RHUM J.M XO', 709, 0, 0, 70, '', 'vieux-rhum-j-m-xo', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0972', 0),
(267, NULL, NULL, NULL, 31, 'VIEUX RHUM J.M 2003', 1, 0, 0, 70, '', 'vieux-rhum-j-m-2003', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0973', 0),
(268, NULL, NULL, NULL, 10, 'JACK DANIEL\'S HONEY ', 379, 0, 0, 75, '', 'jack-daniel-s-honey', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0975', 0),
(269, NULL, NULL, NULL, 8, 'PORTO MORGADO ROUGE ', 189, 0, 0, 75, '', 'porto-morgado-rouge', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0987', 0),
(270, NULL, NULL, NULL, 8, 'PORTO MORGADO BLANC ', 189, 0, 0, 75, '', 'porto-morgado-blanc', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0988', 0),
(271, NULL, NULL, NULL, 12, 'VODKA SOBIESKI ', 148, 0, 0, 75, '', 'vodka-sobieski', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0990', 0),
(272, NULL, NULL, NULL, 10, 'MONKEY SHOULDER ', 452, 0, 0, 70, '', 'monkey-shoulder', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF0998', 0),
(273, NULL, NULL, NULL, 11, 'M BRIZARD PECHE DE VERGER', 144, 0, 0, 0, '', 'm-brizard-peche-de-verger', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1066', 0),
(274, NULL, NULL, NULL, 11, 'M BRIZARD FRAISE DES BOIS', 138, 0, 0, 0, '', 'm-brizard-fraise-des-bois', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1067', 0),
(275, NULL, NULL, NULL, 11, 'M BRIZARD CRELME DE MURE', 138, 0, 0, 0, '', 'm-brizard-crelme-de-mure', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1069', 0),
(276, NULL, NULL, NULL, 10, 'JURA PROPHECY HAEVILY ', 1, 0, 0, 70, '', 'jura-prophecy-haevily', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1095', 0),
(277, NULL, NULL, NULL, 10, 'THE GLEN STAG ', 131, 0, 0, 70, '', 'the-glen-stag', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1111', 0),
(278, NULL, NULL, NULL, 10, 'THE DALMORE CIGAR MALT', 1, 0, 0, 0, '', 'the-dalmore-cigar-malt', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1113', 0),
(279, NULL, NULL, NULL, 12, 'YURINKA NATURE ', 171, 0, 0, 100, '', 'yurinka-nature', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1120', 0),
(280, NULL, NULL, NULL, 12, 'ABSOLUT RASPBERRI ', 300, 0, 0, 75, '', 'absolut-raspberri', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1122', 0),
(281, NULL, NULL, NULL, 13, 'GIN BEEFEATER 24 ', 502, 0, 0, 70, '', 'gin-beefeater-24', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', 'REF1123', 0),
(282, NULL, NULL, NULL, 10, 'TAGOUCHI 12ANS', 2, 0, 0, 0, '', 'tagouchi-12ans', '', 0, NULL, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1154', 0),
(502, 10, 10, 5, 1, '1/2 RIESLING COLLECTION PRIVÉE 2014', 291, 0, 0, 38, '', '1-2-riesling-collection-priv-e-2014', '2014', 0, 1, 6, 'Peut encore vieillir', '16.0', 6, 6, 5, 5, 'Bouqueté et souple', '', 'Brique', 0, 'Cahors', '', '471592', 1),
(503, 10, 10, 18, 1, 'SAINT AUBIN BICHOT BLANC 2011', 211, 0, 0, 75, '', 'saint-aubin-bichot-blanc-2011', '2011', 0, 1, 6, 'A déguster jusqu\'en 2020', '17.0', 5, 6, 4, 5, 'Bouqueté et souple', '', 'Brique', 0, 'Gevrey-Chambertin', 'Pinot Noir', '467577', 1),
(504, 10, 10, 2, 1, 'HAUTES CÔTE DE NUITS 2011', 227, 0, 0, 75, 'Second vin', 'hautes-c-te-de-nuits-2011', '2011', 0, 3, 7, 'Peut encore vieillir', '18.0', 6, 6, 4, 7, 'Bouqueté, corsé et à point', '', 'Brique', 0, 'Pessac-Léognan', 'Pinot Noir', '472131', 3),
(505, 10, 10, 1, 1, '1/2 CHÂTEAU HAUT RIAN', 74, 0, 0, 37, 'Rouge - 13°', '1-2-chateau-haut-rian', '2013', 0, 3, 6, '2018', '18.0', 5, 4, 5, 5, 'Riche et rond', '', 'Robe rubis', 1, 'Premières côtes de Bordeaux', 'Merlot; Cabernet; Sauvignon; Cabernet Franc', '472872', 24),
(506, 10, 10, 4, 1, 'TABLE MOUNTAIN CHENIN', 136, 0, 0, 75, '', 'table-mountain-chenin', '', 0, 3, 2, 'Peut être conservé', '16.0', 5, 6, 5, 7, 'Fruité et plein', '', 'Grenat', 0, '', 'cabernet sauvignon', '393143', 3),
(507, 11, 10, 23, 1, 'CHÂTEAU MUKHRANI GORULI 2012', 256, 0, 0, 75, 'Second vin', 'ch-teau-mukhrani-goruli-2012', '2012', 0, 1, 6, 'A déguster jusqu\'en 2018', '18.0', 5, 6, 5, 7, 'Bouqueté et souple', '', 'Brique clair', 0, 'Médoc', '', '468227', 2),
(508, 10, 10, 4, 1, 'MENETON SALON 2014', 114, 0, 0, 75, '', 'meneton-salon-2014', '2014', 0, 3, 1, 'A déguster jusqu\'en 2018', '16.0', 5, 6, 5, 7, 'Fruité et souple', '', 'Grenat', 0, 'Coteaux-Bourguignons', '', '471010', 2),
(509, 10, 10, 2, 1, '1/2 BOURGOGNE PINOT 2013', 309, 0, 0, 38, '', '1-2-bourgogne-pinot-2013', '2013', 0, 3, 6, 'Peut être conservé', '16.0', 5, 6, 5, 7, 'Bouqueté et souple', '', 'Brique', 0, 'Fronton', 'Pinot Noir', '472644', 3),
(510, 10, 10, 2, 1, 'MACON LA ROCHE VINEUSE 2014', 248, 0, 0, 75, 'Second vin', 'macon-la-roche-vineuse-2014', '2014', 0, 1, 6, '', '18.0', 5, 6, 5, 7, 'Bouqueté et souple', '', 'Grenat', 0, 'Margaux', 'Pinot Noir', '473057', 2),
(511, 10, 10, 2, 1, 'CHABLIS MONTÉE TONNER', 378, 0, 0, 75, '', 'chablis-montee-tonner', '2014', 0, 1, 2, '2018', '10', 6, 5, 4, 3, 'Sec, parfumé et rond', '', 'Robe paille clair', 1, 'Bourgogne', 'Chardonnay', '472942', 27);
INSERT INTO `product` (`id`, `country_id`, `brand_id`, `region_id`, `sub_category_id`, `label`, `regular_price`, `strike_price`, `loyality_price`, `volume`, `description`, `slug`, `vintage`, `is_new`, `color_id`, `taste_id`, `care_level`, `service_temperature`, `corps`, `fraicheur`, `evolution`, `style`, `characteristics1`, `characteristics_details`, `characteristics2`, `state`, `appelation`, `cepage`, `ref`, `seen`) VALUES
(512, 10, 10, 4, 1, 'PRIEURE SAINT JEAN BEBI 2009', 1, 0, 0, 75, '', 'prieure-saint-jean-bebi-2009', '2009', 0, 3, 6, 'Peut être conservé', '18.0', 4, 6, 5, 7, 'Bouqueté et souple', '', 'Grenat', 0, 'Saint-Julien', 'Pinot Noir', '464156', 1),
(513, 10, 10, 18, 1, 'CHÂTEAU BEL AIR', 176, 0, 0, 75, 'Second vin', 'chteau-bel-air', '2012', 0, 3, 6, 'A déguster jusqu\'en 2018', '18.0', 4, 6, 5, 7, 'Bouqueté et souple', '', 'Grenat', 0, 'Pessac-Léognan', 'Pinot Noir', '468908', 3),
(514, 10, 10, 3, 1, 'DOMAINE AMANDINE SEGURET ', 158, 0, 0, 75, 'Second vin', 'domaine-amandine-seguret', '2011', 0, 3, NULL, 'Prêt à boire', '16°', 5, 5, 5, 5, 'Fruité et rond', '', 'Paille clair', 1, 'Côtes du Rhône Village', 'Syrah-Grenache', '469378', 14),
(515, 10, 10, 22, 1, 'BROUILLY CHÂTEAU TERRIERE', 204, 0, 0, 75, '', 'brouilly-chteau-terriere', '2014', 0, 3, 6, 'Prêt à boire', '16°', 5, 6, 6, 6, 'Bouqueté et souple', '', 'Grenat', 1, 'Cornas', 'Gamay', '470927', 16),
(516, 10, 10, 1, 1, 'CHÂTEAU DUPLESSIS 2012', 289, 0, 0, 75, '', 'ch-teau-duplessis-2012', '2012', 0, 3, 6, 'Peut encore vieillir', '9.0', 4, 6, 5, 7, 'Bouqueté et souple', '', 'Paille aux reflets verts', 0, 'Pouilly-Vinzelles', '', '471420', 5),
(518, 10, 10, 18, 1, 'A CASETTA CORSE BLC 2015', 169, 0, 0, 75, '', 'a-casetta-corse-blc-2015', '2015', 0, 1, 1, 'Peut être conservé', '15.0', 4, 6, 5, 5, 'Fruité et souple', '', 'Grenat', 0, 'IGP Saint-Guilhem le Désert', 'Gamay', '472993', 2),
(519, 10, 10, 18, 1, 'DOMAINE FERME BLANCHE ROSE 2009', 1, 0, 0, 75, '', 'domaine-ferme-blanche-rose-2009', '2009', 0, 4, 1, 'A consommer dans les 3 mois', '8.0', 5, 6, 4, 7, 'Fruité et souple', '', 'Or aux reflets verts', 0, 'IGP Côtes de Gascogne', 'Pinot Noir', '432221', 1),
(520, 9, 10, 23, 1, 'ESPIGUEIRO VIN VERDE PORT 2011', 869, 0, 0, 75, '', 'espigueiro-vin-verde-port-2011', '2011', 0, 1, 4, '', '11.0', 5, 6, 4, 7, 'Fruité et nerveux', '', 'Rosé foncé', 0, '', '', '463823', 4),
(521, 10, 10, 1, 1, 'THOMAS BARTON RÉSERVE JULIE ', 436, 0, 0, 75, '', 'thomas-barton-rserve-julie', '2011', 0, 3, 7, 'Prêt à boire', '18°', 7, 6, 6, 6, 'Bouqueté et corsé à point', '', 'Grenat', 1, 'Saint Julien', 'Cabernet Sauvignon-Merlot-Cabernet Franc', '466346', 14),
(522, 10, 10, 23, 1, 'CREMANT BOURG PATRIARCHE BLANC', 158, 0, 0, 75, '', 'cremant-bourg-patriarche-blanc', '', 0, 1, 4, 'A déguster jusqu\'en 2018', '9.0', 5, 6, 4, 6, 'Fruité et nerveux', '', 'Or aux reflets verts', 0, 'Bordeaux', 'Pinot Noir', '466513', 3),
(523, 10, 10, 1, 1, 'CHÂTEAU DURFORT VIVENS 2012', 260, 0, 0, 75, '', 'ch-teau-durfort-vivens-2012', '2012', 0, 3, 6, 'A déguster jusqu\'en 2018', '16.0', 5, 6, 4, 6, 'Bouqueté et souple', '', 'Grenat', 0, 'Buzet', '', '467052', 2),
(524, 10, 10, 19, 1, 'MAGNUM DOMAINEE AMANDINE SEGURET ', 274, 0, 0, 75, '', 'magnum-domainee-amandine-seguret', '2011', 0, 3, 6, '', '15.0', 5, 6, 4, 6, 'Bouqueté et souple', '', 'Rubis', 1, 'Côtes du Vivarais', 'Gamay', '469379', 13),
(525, 10, 10, 4, 1, 'SAINT PERAY BLANC 2013', 223, 0, 0, 75, '', 'saint-peray-blanc-2013', '2013', 0, 1, 7, 'Peut encore vieillir', '16.0', 5, 6, 4, 6, 'Bouqueté, corsé et à point', '', 'Grenat', 0, 'Saint-Mont', 'Pinot Noir', '470009', 2),
(526, 10, 10, 1, 1, 'CHÂTEAU CHANTALOUETTE', 540, 0, 0, 75, '', 'chateau-chantalouette', '2012', 0, 3, 1, 'Prêt à boire', '18', 6, 5, 4, 5, 'Riche et rond', '', 'Robe Grenat', 1, 'Pomerol', 'Cabernet ; Sauvignon ; Merlot; Cabernet Franc', '470367', 14),
(527, 10, 10, 23, 1, 'VDP ALPILLES ROSE 2014', 176, 0, 0, 75, '', 'vdp-alpilles-rose-2014', '2014', 0, 4, 2, 'Peut encore vieillir', '14.0', 5, 6, 4, 6, 'Fruité et plein', '', 'Rubis', 0, 'Beaujolais Villages', '', '470390', 6),
(528, 11, 10, 23, 1, 'SANTA TIERRA SAUVIGNON', 109, 0, 0, 75, '', 'santa-tierra-sauvignon', '', 0, 1, 4, 'Peut être conservé', '15.0', 5, 6, 4, 7, 'Fruité et nerveux', '', 'Rubis', 0, 'Côte de Brouilly', 'Sauvignon', '470594', 3),
(529, 10, 10, 22, 1, 'DOMAINE DU SABOT 2014', 145, 0, 0, 75, '', 'domaine-du-sabot-2014', '2014', 0, 3, 6, 'Peut être conservé', '16.0', 5, 6, 4, 7, 'Bouqueté et souple', '', 'Grenat', 0, 'Mâcon', 'Gamay', '470668', 1),
(530, 10, 10, 4, 1, 'DOMAINE LA PERRÉE BOURGUEIL 2014', 103, 0, 0, 75, '', 'domaine-la-perr-e-bourgueil-2014', '2014', 0, 3, 6, 'Peut être conservé', '14.0', 5, 6, 4, 5, 'Bouqueté et souple', '', 'Pourpre', 0, 'Saint-Amour', 'Pinot Noir', '470678', 3),
(531, 10, 10, 19, 1, 'SAINT MONT 2012', 107, 0, 0, 75, '', 'saint-mont-2012', '2012', 0, 3, 2, 'Peut être conservé', '16.0', 5, 6, 4, 6, 'Fruité et plein', '', 'Grenat', 0, 'Saint-Chinian', 'Pinot Noir', '470686', 3),
(532, 10, 10, 5, 1, 'SAINT VRN BSTLON ORATOIRE 2013', 171, 0, 0, 75, '', 'saint-vrn-bstlon-oratoire-2013', '2013', 0, 1, 2, 'A déguster jusqu\'en 2018', '16.0', 5, 6, 4, 6, 'Fruité et plein', '', 'Grenat', 0, 'Côtes du Rhône Villages Cairanne', 'Pinot Noir', '470771', 2),
(533, 10, 10, 1, 1, 'CHÂTEAU TOUR DE MARBUZET', 432, 0, 0, 75, '', 'chateau-tour-de-marbuzet', '2013', 0, 3, 2, 'Peut être conservé', '18', 8, 6, 8, 8, 'Fruité et plein', '', 'Robe Grenat', 1, 'Saint-Estèphe', 'Cabernet ; Sauvignon ; Merlot Cabernet Franc', '475450', 22),
(534, 10, 10, 4, 1, 'SAINT VERAN OMBRELLES 2014', 110, 0, 0, 75, '', 'saint-veran-ombrelles-2014', '2014', 0, 1, 7, 'Peut encore vieillir', '18.0', 5, 6, 4, 6, 'Bouqueté, corsé et à point', '', 'Grenat', 0, 'Haut-Médoc', '', '471390', 4),
(535, 10, 10, 1, 1, 'CHÂTEAU LA TOUR DE BESSAN', 437, 0, 0, 75, '', 'chateau-la-tour-de-bessan', '2012', 0, 3, 2, 'Peut encore vieillir', '18', 6, 5, 8, 7, 'Fruité et plein', '', 'Robe Grenat', 1, 'Margaux', 'Cabernet ; Sauvignon ; Merlot Cabernet Franc', '471418', 20),
(536, 10, 10, 2, 1, 'MAGNUM RESERVE MOUTON CA 2012', 164, 0, 0, 75, '', 'magnum-reserve-mouton-ca-2012', '2012', 0, 3, 6, 'A déguster jusqu\'en 2020', '17.0', 5, 6, 4, 7, 'Bouqueté et souple', '', 'Brique', 0, 'Bourgogne', 'Pinot Noir', '471897', 2),
(537, 10, 10, 7, 1, 'DOMAINE VIGNE GRANDE', 107, 0, 0, 75, '', 'domaine-vigne-grande', '2012', 0, 3, NULL, 'Fin 2018', '17°', 8, 5, 7, 6, 'Rond et bouqueté', '', 'Rubis', 1, 'Cahors', 'Malbec', '472103', 13),
(538, 10, 10, 2, 1, 'CHÂTEAU DE MARSANNAY 2013', 167, 0, 0, 75, '', 'ch-teau-de-marsannay-2013', '2013', 0, 3, 1, '', '16.0', 5, 6, 4, 7, 'Fruité et souple', '', 'Rubis', 0, 'Vin de France', 'Pinot Noir', '472358', 7),
(539, 10, 10, 4, 1, 'SANTENAY JOSEPH DROUHIN 2013', 129, 0, 0, 75, '', 'santenay-joseph-drouhin-2013', '2013', 0, 3, 4, '', '8.0', 5, 6, 4, 7, 'Fruité et nerveux', '', 'Saumonée', 0, 'Vin de France', '', '472366', 7),
(541, 10, 10, 18, 1, 'ARAGO 21 TAUTAVEL 2014', 259, 0, 0, 75, '', 'arago-21-tautavel-2014', '2014', 0, 3, 6, '', '10.0', 5, 6, 4, 7, 'Bouqueté et souple', '', 'Rose violine', 0, 'IGP des Maures', 'Gamay', '472786', 2),
(542, 10, 10, 18, 1, 'CHÂTEAU DEFENDS PROVINCE 2014', 97, 0, 0, 75, '', 'ch-teau-defends-province-2014', '2014', 0, 3, 4, 'Peut être conservé', '8.0', 5, 6, 4, 7, 'Fruité et nerveux', '', 'Paille aux reflets verts', 0, 'Mâcon Villages', 'merlot syrah', '472880', 3),
(543, 10, 10, 2, 1, 'CHABLIS FOURCHAUME ', 376, 0, 0, 75, '', 'chablis-fourchaume', '2014', 0, 1, 8, 'Prêt à boire', '9°', 7, 7, 6, 8, 'Fruité et charnu', '', 'Rubis', 1, 'Chablis 1er Cru', 'Chardonnay', '472941', 15),
(544, 10, 10, 2, 1, 'MERCUREY ALBERT BICHOT 2014', 87, 0, 0, 75, '', 'mercurey-albert-bichot-2014', '2014', 0, 3, 4, 'A déguster jusqu\'en 2019', '10.0', 5, 6, 4, 5, 'Fruité et nerveux', '', 'Paille aux reflets verts', 0, 'Alsace', 'Pinot Noir', '472963', 5),
(545, 10, 10, 18, 1, 'VDP DES MAURES ROSÉ 2015', 151, 0, 0, 75, '', 'vdp-des-maures-ros-2015', '2014', 0, 4, 4, 'A déguster jusqu\'en 2018', '11.0', 5, 6, 4, 7, 'Fruité et nerveux', '', 'Oeil de perdrix', 0, 'Coteaux d\'Aix-en-Provence', '', '472968', 1),
(546, 10, 10, 2, 1, 'CHABLIS GRANDE CUVÉE', 274, 0, 0, 75, 'Blanc - 13°', 'chablis-grande-cuve', '2012', 0, 1, 8, 'jusqu\'en 2018', '9', 5, 7, 6, 6, 'Fruité et charnu', '', 'Robe paille aux reflets verts', 1, 'Chablis grande cuvée', 'Chardonnay', '472978', 27),
(547, 10, 10, 23, 1, 'VDP COLLINES MOURE 2015', 197, 0, 0, 75, '', 'vdp-collines-moure-2015', '2015', 0, 3, 4, 'A déguster jusqu\'en 2020', '9.0', 5, 6, 4, 7, 'Fruité et nerveux', '', 'Paille aux reflets verts', 0, 'Coteaux-Bourguignons', '', '473016', 1),
(548, 10, 10, 19, 1, 'DOMAINE DE LA LOUBIERE 2015', 170, 0, 0, 75, '', 'domaine-de-la-loubiere-2015', '2015', 0, 3, 2, '', '10.0', 5, 6, 4, 7, 'Fruité et plein', '', 'Rose saumoné', 0, 'Côtes de Provence', '', '473040', 2),
(549, 10, 10, 23, 1, 'CHÂTEAU DE FONSCOLOMBE ROSÉ 2015', 100, 0, 0, 75, '', 'ch-teau-de-fonscolombe-ros-2015', '2015', 0, 4, 4, 'A déguster jusqu\'en 2018', '11.0', 5, 6, 4, 7, 'Fruité et nerveux', '', 'Oeil de perdrix', 0, 'Coteaux d\'Aix-en-Provence', '', '473082', 2),
(550, 10, 10, 2, 1, 'MONTHELIE PIERRE ANDRE 2014', 143, 0, 0, 75, '', 'monthelie-pierre-andre-2014', '2015', 0, 1, 4, 'Peut être conservé', '10.0', 5, 6, 4, 7, 'Fruité et nerveux', '', 'Paille aux reflets verts', 0, 'IGP Pays d\'Oc', 'Pinot Noir', '473177', 6),
(551, 10, 10, 4, 1, 'VOUVRAY 2014', 162, 0, 0, 75, '', 'vouvray-2014', '2014', 0, 3, 2, '', '15.0', 6, 6, 4, 7, 'Fruité et plein', '', 'Grenat', 0, 'Brouilly', 'Pinot Noir', '470677', 2),
(553, 11, 10, 23, 1, 'FLEUR CAP SAUVIGNON AFRIQ', 188, 0, 0, 75, '', 'fleur-cap-sauvignon-afriq', '', 0, 1, 2, '', '8.0', 4, 6, 4, 7, 'Fruité et plein', '', 'Claire aux reflets verts', 0, '', 'Sauvignon', '381485', 4),
(554, 2, 10, 23, 1, 'CHE SYRAH MENDOZA 2015', 140, 0, 0, 75, '', 'che-syrah-mendoza-2015', '2015', 0, 3, 2, 'Peut être conservé', '16.0', 4, 6, 4, 7, 'Fruité et plein', '', 'Rubis', 0, '', 'Syrah', '391785', 8),
(555, 10, 10, 2, 1, 'CHABLIS PRIEURE SAINT COME 2012', 314, 0, 0, 75, 'Second vin', 'chablis-prieure-saint-come-2012', '2012', 0, 1, 6, '', '18.0', 4, 6, 4, 7, 'Bouqueté et souple', '', 'Brique', 0, 'Saint-Emilion', 'Pinot Noir', '468007', 3),
(556, 10, 10, 4, 1, 'RELAIS DE LA DOMINIQUE 2011', 413, 0, 0, 75, '', 'relais-de-la-dominique-2011', '2011', 0, 3, 2, 'Peut être conservé', '17.0', 4, 6, 4, 6, 'Fruité et plein', '', 'Rubis', 0, 'Savigny-lès-Beaune', 'Gamay', '468872', 3),
(557, 10, 10, 1, 1, 'CHÂTEAU LANIOTE', 684, 0, 0, 75, '', 'chateau-laniote', '2012', 0, 3, 6, 'A déguster jusqu\'en 2020', '16.0', 6, 5, 8, 8, 'Bouqueté et souple', '', 'Robe Brique', 1, 'Pomerol', 'Cabernet franc; Cabernet Sauvignon; Merlot', '468911', 15),
(558, 10, 10, 1, 1, 'CHÂTEAU DUPLESSIS', 299, 0, 0, 75, '', 'chteau-duplessis', '2011', 0, 3, 2, '2011-2020', '17°', 5, 4, 5, 5, 'Fruité et Plein', '', 'Robe Brique', 1, 'Moulis en Médoc', 'Cabernet Sauvignon-Merlot-Cabernet Franc-Petit Verdot', '469436', 14),
(559, 10, 10, 23, 1, 'CHÂTEAU MONCONTOUR PREDILECTION ', 235, 0, 0, 75, '', 'chateau-moncontour-predilection', '', 0, 1, 6, 'Peut encore vieillir', '17.0', 4, 6, 4, 7, 'Bouqueté et souple', '', 'Rubis', 0, 'Chambolle-Musigny', 'Pinot Noir', '469581', 3),
(560, 11, 10, 23, 1, 'LOS VASCOS CHILI 2013', 190, 0, 0, 75, '', 'los-vascos-chili-2013', '2013', 0, 3, 6, 'A déguster jusqu\'en 2018', '15.0', 4, 6, 4, 7, 'Bouqueté et souple', '', 'Rubis', 0, 'Côtes du Rhône Villages Rasteau', 'Sauvignon', '470286', 3),
(561, 5, 10, 23, 1, 'EXCELLENS MARQUES 2014', 398, 0, 0, 75, '', 'excellens-marques-2014', '2014', 0, 1, 2, 'Peut être conservé', '19.0', 4, 6, 4, 7, 'Fruité et plein', '', 'Rubis', 0, 'Bordeaux', 'Pinot Noir', '470571', 3),
(562, 10, 10, 2, 1, 'HAUTES CÔTE DE BEAUNE 2013', 171, 0, 0, 75, '', 'hautes-c-te-de-beaune-2013', '2013', 0, 3, 4, 'Peut être conservé', '17.0', 4, 6, 4, 7, 'Fruité et nerveux', '', 'Brique', 0, 'Morey-Saint-Denis', 'Pinot Noir', '470744', 4),
(563, 10, 10, 18, 1, 'DOMAINE SORTEILHO SAINT CHINIA 2014', 103, 0, 0, 75, 'Cru Bourgeois', 'domaine-sorteilho-saint-chinia-2014', '2014', 0, 3, 6, 'A déguster jusqu\'en 2022', '18.0', 4, 6, 4, 6, 'Bouqueté et souple', '', 'Grenat', 0, 'Margaux', 'Pinot Noir', '470985', 3),
(564, 10, 10, 4, 1, 'MENETON SALON 2014', 78, 0, 0, 75, '', 'meneton-salon-2014', '2014', 0, 1, 6, 'A déguster jusqu\'en 2020', '18.0', 4, 6, 4, 7, 'Bouqueté et souple', '', 'Grenat', 0, 'Moulis', 'Grenache et Syrah', '471009', 5),
(565, 10, 10, 2, 1, 'MOREY SAINT DENIS LUPE 2012', 89, 0, 0, 75, '', 'morey-saint-denis-lupe-2012', '2012', 0, 3, 4, '', '9.0', 4, 6, 4, 5, 'Fruité et nerveux', '', 'Paille clair', 0, 'Alsace', 'Pinot Noir', '471095', 3),
(566, 10, 10, 4, 1, 'SANCERRE ROUGE CHAMPS 2013', 64, 0, 0, 75, '', 'sancerre-rouge-champs-2013', '2013', 0, 3, 4, 'Peut être conservé', '17.0', 4, 6, 4, 7, 'Fruité et nerveux', '', 'Rubis', 0, 'Mercurey', 'Sauvignon blanc', '471687', 3),
(567, 10, 10, 18, 1, 'POUILLY VINZELLE 2013', 170, 0, 0, 75, '', 'pouilly-vinzelle-2013', '2013', 0, 1, 6, 'Peut être conservé', '17.0', 4, 6, 4, 7, 'Bouqueté et souple', '', 'Rubis', 0, 'Marsannay', '', '471730', 5),
(568, 10, 10, 1, 1, 'MAGNUM CHÂTEAU LA GRACE DIEU 2009', 152, 0, 0, 75, '', 'magnum-ch-teau-la-grace-dieu-2009', '2009', 0, 3, 4, 'Peut être conservé', '17.0', 4, 6, 4, 7, 'Fruité et nerveux', '', 'Rubis', 0, 'Santenay', 'syrah', '471732', 2),
(569, 10, 10, 4, 1, 'SANGRE DE RORO TORRES 2013', 110, 0, 0, 75, '', 'sangre-de-roro-torres-2013', '2013', 0, 3, 4, 'Peur encore vieillir', '8.0', 4, 6, 4, 7, 'Fruité et nerveux', '', 'Claire aux reflets verts', 0, 'Pouilly-sur-Loire', '', '472189', 3),
(570, 10, 10, 4, 1, 'SAINT POURCAIN ', 102, 0, 0, 75, '', 'saint-pourcain', '2015', 0, 1, 2, 'Fin 2018', '8°', 5, 7, 5, 6, 'Fruité et Frais', '', 'Paille clair', 1, 'Saint Pourcain', 'Sauvignon,Chardonnay,Tressalier', '472969', 12),
(571, 10, 10, 4, 1, 'CHEVERNY DESOUCHERI 2015', 123, 0, 0, 75, '', 'cheverny-desoucheri-2015', '2015', 0, 3, 4, 'A déguster jusqu\'en 2018', '11.0', 4, 6, 4, 7, 'Fruité et nerveux', '', 'Rose saumoné', 0, 'IGP de l\'Hérault', '', '473072', 5),
(572, 10, 10, 2, 1, 'SAINT POURCAIN ', 102, 0, 0, 75, '', 'saint-pourcain', '2014', 0, 3, 1, 'Prêt à boire', '16°', 5, 6, 5, 6, 'Fruité et souple', '', 'Paille clair', 1, 'Saint Pourcain', 'Pinot Noir, Gamay', '473183', 9),
(573, 10, 10, 2, 1, 'MERCUREY VIGNES DU DOMAINE 2013', 141, 0, 0, 75, '', 'mercurey-vignes-du-domaine-2013', '2013', 0, 3, 2, '', '16.0', 5, 6, 7, 7, 'Fruité et plein', '', 'Pourpre', 0, 'Crozes Hermitage', 'Pinot Noir', '472197', 2),
(574, 10, 10, 2, 1, 'PARALLELE 45 BLANC 2014', 226, 0, 0, 75, '', 'parallele-45-blanc-2014', '2014', 0, 1, 4, 'Peut être conservé', '15.0', 5, 6, 2, 7, 'Fruité et nerveux', '', 'Rubis', 0, 'Menetou-Salon', 'pinot noir', '470732', 2),
(575, 10, 10, 1, 1, 'MOUTON CADET BLANC 2014', 217, 0, 0, 75, '', 'mouton-cadet-blanc-2014', '2014', 0, 1, 2, 'Peut encore vieillir', '15.0', 5, 6, 3, 7, 'Fruité et plein', '', 'Rubis', 0, 'Brouilly', 'Pinot Noir', '468394', 3),
(576, 10, 10, 19, 1, 'CÔTES DU VIVARIS 2013', 290, 0, 0, 75, '', 'c-tes-du-vivaris-2013', '2013', 0, 3, 4, '', '8.0', 5, 6, 3, 6, 'Fruité et nerveux', '', 'Claire aux reflets verts', 0, 'Rioja', '', '470321', 3),
(577, 10, 10, 18, 1, 'MAISON DE MEYRAC 2013', 116, 0, 0, 75, '', 'maison-de-meyrac-2013', '2013', 0, 3, 2, '', '8.0', 5, 6, 3, 6, 'Fruité et plein', '', 'Paille clair', 0, 'Vouvray', '', '470444', 3),
(578, 10, 10, 2, 1, 'CHÂTEAU DE MEURSAULT 2011', 204, 0, 0, 75, '', 'ch-teau-de-meursault-2011', '2011', 0, 1, 4, '', '15.0', 5, 6, 3, 6, 'Fruité et nerveux', '', 'Grenat', 0, 'Bourgueil', 'Pinot Noir', '470466', 4),
(579, 10, 10, 1, 1, 'CHÂTEAU TERTRE DE CASCARD', 134, 0, 0, 75, 'Rouge - 12,5°', 'chteau-tertre-de-cascard', '2014', 0, 3, NULL, 'Jusqu\'en 2018', '18', 5, 6, 5, 6, 'Fruité et rond', '', 'Robe Brique', 1, 'Bordeaux', 'Carbet; Sauvignon; Merlot; Petit Verdot; Malbec; Cabernet Franc', '470789', 17),
(580, 10, 10, 18, 1, 'CAIRANNE LE PAVILLON ', 89, 0, 0, 75, '', 'cairanne-le-pavillon', '2013', 0, 3, 2, 'A déguster jusqu\'en 2019', '14.0', 5, 6, 3, 6, 'Fruité et plein', '', 'Rubis', 1, 'Saumur-Champigny', '', '471100', 12),
(581, 10, 10, 1, 1, 'CHÂTEAU HAUT RIAN ROUGE', 114, 0, 0, 75, '', 'chteau-haut-rian-rouge', '2013', 0, 3, 2, 'Fin 2018', '18°', 6, 7, 5, 6, 'Fruité et souple', '', 'Rubis', 1, 'Première Côtes de Bordeaux', 'Merlot Cabernet Sauvignon et Cabernet Franc', '471252', 9),
(582, 10, 10, 3, 1, 'BEAUMES DE VENISE', 203, 0, 0, 75, '', 'beaumes-de-venise', '2014', 0, 3, 6, '2021', '16', 6, 7, 5, 7, 'Fruité et nerveux', '', 'Bouqueté et souple', 1, 'Beaumes de Venise', 'Grenache, Syrah, Cinsault, Mourvèdre', '471317', 13),
(583, 10, 10, 18, 1, 'CUVÉE JORDANE CABARET 2012', 535, 0, 0, 75, 'St Emilion Grand cru classé', 'cuv-e-jordane-cabaret-2012', '2012', 0, 3, 5, 'Peut être conservé', '18.0', 6, 6, 3, 7, 'Bouqueté et de la réserve', '', 'Pourpre', 0, 'Saint-Emilion', '', '468313', 2),
(584, 10, 10, 18, 1, 'DB GASCOGNE COLOMBELLE', 797, 0, 0, 75, '', 'db-gascogne-colombelle', '', 0, 1, 6, '', '8.0', 4, 6, 3, 7, 'Bouqueté et souple', '', 'Paille clair', 0, 'Vinho Verde', '', '452753', 2),
(585, 10, 10, 18, 1, 'SAVIGNY LES BEAUNE BICH 2012', 383, 0, 0, 75, '', 'savigny-les-beaune-bich-2012', '2012', 0, 3, 1, '', '10.0', 4, 6, 3, 6, 'Fruité et souple', '', 'Rose violine', 0, 'IGP des Alpilles', '', '469607', 11),
(586, 10, 10, 7, 1, 'CHÂTEAU LAULERIE BERGERAC', 156, 0, 0, 75, '', 'chateau-laulerie-bergerac', '2012', 0, 3, 8, 'Peut être conservé', '18', 7, 5, 8, 7, 'Fruité et charnu', '', 'Robe pourpre', 1, 'Bergerac', 'Malbec, Merlot', '470476', 14),
(587, 10, 10, 2, 1, 'BOURGOGNE EPINEUIL 2014', 75, 0, 0, 75, '', 'bourgogne-epineuil-2014', '2014', 0, 3, 1, 'A déguster jusqu\'en 2019', '9.0', 4, 6, 3, 7, 'Fruité et souple', '', 'Claire aux reflets verts', 0, 'Petit Chablis', 'Pinot Noir', '471869', 4),
(588, 10, 10, 1, 1, 'LA CROIX CARBONNIEUX 2012', 194, 0, 0, 75, '', 'la-croix-carbonnieux-2012', '2012', 0, 1, 6, '', '10.0', 6, 6, 6, 6, 'Bouqueté et souple', '', 'Grenat', 0, 'Côtes du Rhône Villages Rasteau', 'Pinot Noir', '470304', 2),
(589, 11, 10, 23, 1, 'SANTA TIERRA MERLOT 2014', 109, 0, 0, 75, '', 'santa-tierra-merlot-2014', '2014', 0, 3, 7, '', '11.0', 6, 6, 6, 6, 'Bouqueté, corsé et à point', '', 'Paille clair', 0, 'Chablis Grand Cru', 'Chardonnay,Merlot', '470593', 4),
(590, 10, 10, 1, 1, 'LE RELAIS DE PATACHE D’AUX ', 224, 0, 0, 75, 'Cru Bourgeois', 'le-relais-de-patache-d-aux', '2011', 0, 3, 7, 'Jusqu\'en 2020', '18.0', 8, 5, 6, 6, 'Bouqueté, corsé et à point', '', 'Grenat', 1, 'Médoc', 'Cabernet Sauvignon - Merlot - cabernet franc et petit verdot', '468894', 13),
(591, 10, 10, 5, 1, 'PINOT NOIR COLLECTION PRIVÉE 2012', 762, 0, 0, 75, '', 'pinot-noir-collection-priv-e-2012', '2012', 0, 3, 7, '', '9.0', 6, 5, 4, 8, 'Bouqueté, corsé et à point', '', 'Paille clair', 0, 'Chablis Grand Cru', 'Pinot Noir', '466963', 1),
(592, 10, 10, 2, 1, 'DUC DE BELMONT BOURGIO 2014', 603, 0, 0, 75, 'St Emilion Grand cru classé', 'duc-de-belmont-bourgio-2014', '2014', 0, 3, 7, 'A déguster jusqu\'en 2030 et +', '18.0', 6, 5, 4, 8, 'Bouqueté, corsé et à point', '', 'Grenat', 0, 'Saint-Emilion', 'Pinot Noir', '471439', 3),
(593, 10, 10, 2, 1, 'GEVREY CHAMB JADOT 2011', 786, 0, 0, 75, '', 'gevrey-chamb-jadot-2011', '2011', 0, 3, 4, '', '8.0', 5, 5, 3, 6, 'Fruité et nerveux', '', 'Claire aux reflets verts', 0, '', 'Pinot Noir', '468730', 2),
(594, 10, 10, 23, 1, 'VALENCAY PIERRE A FUSIL 2014', 161, 0, 0, 75, '', 'valencay-pierre-a-fusil-2014', '2014', 0, 3, 2, 'Peut être conservé', '8.0', 6, 5, 3, 8, 'Fruité et plein', '', 'Paille', 0, 'Menetou-Salon', 'Pinot Noir', '470730', 1),
(595, 10, 10, 22, 1, 'CHIROUBLES LES 3 PUIT 2014', 56, 0, 0, 75, '', 'chiroubles-les-3-puit-2014', '2014', 0, 3, 2, 'Peut-être conservé', '8.0', 5, 7, 5, 6, 'Fruité et plein', '', 'Paille clair', 0, 'Mâcon Peronne', 'Gamay', '470931', 2),
(596, 10, 10, 4, 1, 'HAUT POITOU DIANE 2014', 104, 0, 0, 75, '', 'haut-poitou-diane-2014', '2014', 0, 3, 2, '', '8.0', 5, 7, 5, 7, 'Fruité et plein', '', 'Paille aux reflets verts', 0, 'IGP Côtes de Gascogne', 'syrah', '471251', 6),
(597, 10, 10, 2, 1, 'CÔTE D’AUXERRE', 217, 0, 0, 75, '', 'cote-d-auxerre', '2013', 0, 3, 6, 'Fin 2018', '16.0', 5, 7, 6, 8, 'Bouqueté et souple', '', 'Robe Brique', 1, 'Côtes d\'auxerre', 'Pinot Noir', '471933', 15),
(598, 10, 10, 19, 1, 'CHÂTEAU DES FINES ROCHES 2012', 97, 0, 0, 75, '', 'ch-teau-des-fines-roches-2012', '2012', 0, 3, 6, 'Peut être conservé 5 ans', '16.0', 5, 7, 5, 7, 'Bouqueté et souple', '', 'Brique', 0, 'Côtes du Rhône', '', '472000', 3),
(599, 10, 10, 18, 1, 'BEAUNE GREVES JESUS 2011', 149, 0, 0, 75, 'Second vin', 'beaune-greves-jesus-2011', '2011', 0, 3, 6, 'Peut encore vieillir', '18.0', 4, 7, 5, 7, 'Bouqueté et souple', '', 'Grenat', 0, 'Médoc', 'Pinot Noir', '467655', 3),
(600, 10, 10, 1, 1, 'LA CROIX CARBONIEUX 2010', 262, 0, 0, 75, 'Second grand cru classé', 'la-croix-carbonieux-2010', '2010', 0, 1, 2, 'A déguster jusqu\'en 2027', '18.0', 5, 7, 4, 6, 'Fruité et plein', '', 'Grenat', 0, 'Margaux', 'Merlot, Cabernet sauvignon', '464793', 1),
(601, 11, 10, 23, 1, 'CORONAS TORRES 2011', 0, 0, 0, 0, '', 'coronas-torres-2011', '', 0, 1, 6, 'A déguster jusqu\'en 2020', '18.0', 5, 7, 4, 7, 'Bouqueté et souple', '', 'Grenat', 0, 'Graves', '', '467901', 8),
(602, 10, 10, 1, 1, 'INITIAL DE DESMIRAIL 2011', 309, 0, 0, 75, '', 'initial-de-desmirail-2011', '2011', 0, 3, 6, 'A déguster jusqu\'en 2019', '18.0', 5, 7, 4, 8, 'Bouqueté et souple', '', 'Rubis', 0, 'Moulis', '', '468740', 5),
(603, 10, 10, 1, 1, 'CHÂTEAU TEYNAC', 599, 0, 0, 75, '', 'chateau-teynac', '2011', 0, 3, 7, '2019', '18', 7, 6, 6, 8, 'Bouqueté, corsé et à point', '', 'Robe Grenat', 1, 'Saint-Julien', 'Cabernet Sauvignon; Merlot; Cabernet Franc; Petit Verdot', '469981', 22),
(604, 10, 10, 2, 1, 'CHAMBOLLE MUSIGNY ANDRE 2012', 366, 0, 0, 75, '', 'chambolle-musigny-andre-2012', '2012', 0, 3, 1, '', '8.0', 5, 7, 4, 7, 'Fruité et souple', '', 'Paille', 0, '', 'Pinot Noir', '470376', 3),
(605, 10, 10, 1, 1, 'RASTEAU GRENACHE ', 425, 0, 0, 75, '', 'rasteau-grenache', '', 0, 3, 2, 'A déguster jusqu\'en 2020', '9.0', 5, 7, 4, 6, 'Fruité et plein', '', 'Paille clair', 0, 'Saint-Véran', '', '470548', 4),
(606, 10, 10, 2, 1, 'MACON ROUGE 2014', 78, 0, 0, 75, 'Cru Bourgeois', 'macon-rouge-2014', '2014', 0, 3, 7, 'A déguster jusqu\'en 2035', '18.0', 5, 7, 4, 8, 'Bouqueté, corsé et à point', '', 'Grenat', 0, 'Saint-Estèphe', 'Pinot Noir', '470925', 5),
(607, 10, 10, 1, 1, 'SAUMUR CHAMPIGNY 2014', 153, 0, 0, 75, '', 'saumur-champigny-2014', '2014', 0, 3, 2, '', '17.0', 5, 7, 4, 7, 'Fruité et plein', '', 'Grenat', 0, 'Bordeaux', '', '471474', 4),
(608, 10, 10, 4, 1, 'MAGNUM SAUMUR CHAMPIGNY 2014', 134, 0, 0, 75, '', 'magnum-saumur-champigny-2014', '2014', 0, 3, 6, '', '16.0', 5, 7, 4, 6, 'Bouqueté et souple', '', 'Brique', 0, 'Côtes d\'Auxerre', '', '471475', 2),
(609, 10, 10, 2, 1, 'SOLEIL GASCON MOELLEUX 2014', 141, 0, 0, 75, '', 'soleil-gascon-moelleux-2014', '2014', 0, 1, 6, 'Peut être conservé', '17.0', 5, 7, 4, 8, 'Bouqueté et souple', '', 'Grenat', 0, 'Châteauneuf-du-Pape', 'pinot noir', '471476', 7),
(610, 10, 10, 1, 1, 'CHÂTEAU CHAVRIGNAC ', 156, 0, 0, 75, '', 'chteau-chavrignac', '2014', 0, 3, 2, '2018', '17°', 7, 7, 5, 6, 'Riche et Rond', '', 'Robe Rubis', 1, 'Bordeaux', 'Merlot; Cabernet; Sauvignon; Cabernet Franc', '471552', 12),
(611, 10, 10, 2, 1, 'MOULIN DE DUHART 2012', 139, 0, 0, 75, '', 'moulin-de-duhart-2012', '2012', 0, 3, 4, '', '9.0', 5, 7, 4, 6, 'Fruité et nerveux', '', 'Paille', 0, 'IGP Côtes de Gascogne', 'Pinot Noir', '472098', 6),
(612, 10, 10, 2, 1, 'HAUTES CÔTE BEAUNE 2012', 184, 0, 0, 75, '', 'hautes-c-te-beaune-2012', '2012', 0, 3, 7, 'Peut être conservé', '9.0', 5, 7, 4, 7, 'Bouqueté, corsé et à point', '', 'Or aux reflets verts', 0, 'Bourgogne', 'Pinot Noir', '472129', 2),
(613, 10, 10, 19, 1, 'CHÂTEAU VAL JOANIS 2013', 97, 0, 0, 75, '', 'ch-teau-val-joanis-2013', '2013', 0, 3, 6, 'A déguster jusqu\'en 2018', '18.0', 5, 7, 4, 7, 'Bouqueté et souple', '', 'Rubis', 0, 'Premières Côtes de Bordeaux', 'Gamay', '472326', 2),
(614, 7, 10, 23, 1, 'PROSECCO DELIZIA EXTRA', 129, 0, 0, 75, '', 'prosecco-delizia-extra', '', 0, 1, 4, 'Prêt à boire', '8° et 10°', 7, 8, 5, 7, 'Fruité et souple', '', 'Paille clair', 1, 'Vénétis', 'Prosecco', '472598', 11),
(615, 10, 10, 2, 1, 'CLOS DU CHATEAU DOMAINE 2013', 105, 0, 0, 75, '', 'clos-du-chateau-domaine-2013', '2013', 0, 3, 4, '', '8.0', 5, 7, 4, 7, 'Fruité et nerveux', '', 'Paille', 0, 'Saint-Pourçain', 'Pinot Noir', '472816', 2),
(616, 10, 10, 1, 1, 'LES HAUTS DE SMITH 2012', 99, 0, 0, 75, '', 'les-hauts-de-smith-2012', '2012', 0, 3, 7, '', '9.0', 5, 7, 4, 7, 'Bouqueté, corsé et à point', '', 'Paille aux reflets verts', 0, 'Chablis 1er Cru', 'Cabernet sauvignon, Merlot', '472828', 3),
(617, 10, 10, 18, 1, 'LES GRUMES ROUGES', 429, 0, 0, 75, '', 'les-grumes-rouges', '', 0, 3, 2, '2 ans', '10.0', 5, 7, 4, 7, 'Fruité et plein', '', 'Gris', 1, 'Côtes de Provence', '', '472876', 9),
(618, 10, 10, 26, 1, 'LES GRUMES ROSÉES', 62, 0, 0, 75, '', 'les-grumes-roses', '2015', 0, 4, 8, 'Prêt à boire', '8°', 5, 6, 5, 6, 'Fruité et Charnu', '', 'Paille', 1, 'Sud-Est', 'Cabernet Franc-Negrette', '472877', 11),
(619, 10, 10, 18, 1, 'VDP CT TARN BLANC MOELLEUX 2015', 239, 0, 0, 75, '', 'vdp-ct-tarn-blanc-moelleux-2015', '2015', 0, 1, 4, '', '9.0', 5, 7, 4, 7, 'Fruité et nerveux', '', 'Saumon clair', 0, 'IGP de l\'Ile de Beauté', 'Sauvignon', '472910', 1),
(620, 10, 10, 23, 1, 'VDP CÔTE DE THAU RECOLTE 2015', 164, 0, 0, 75, '', 'vdp-c-te-de-thau-recolte-2015', '2015', 0, 1, 1, 'Peut être conservé', '8.0', 5, 7, 4, 7, 'Fruité et souple', '', 'Paille clair', 0, 'IGP Côtes de Gascogne', '', '473018', 1),
(621, 10, 10, 2, 1, 'MARANGES LOUIS LATOUR 2013', 161, 0, 0, 75, '', 'maranges-louis-latour-2013', '2013', 0, 3, 7, '', '16.0', 6, 7, 4, 6, 'Bouqueté, corsé et à point', '', 'Pourpre', 0, 'Saint-Mont', 'Pinot Noir', '470500', 2),
(622, 10, 10, 2, 1, 'PINOT NOIR JADOT', 265, 0, 0, 75, 'Rouge - 12°', 'pinot-noir-jadot', '2012', 0, 3, 1, '2019', '16', 6, 6, 8, 7, 'Fruité et souple', '', 'Robe Brique', 1, 'Bourgogne', 'Pinot Noir', '470820', 14),
(623, 10, 10, 1, 1, 'MALBEC CABERNET SAUVIGNON 2014', 89, 0, 0, 75, '', 'malbec-cabernet-sauvignon-2014', '2014', 0, 3, 6, 'Peut être conservé', '16.0', 6, 7, 4, 7, 'Bouqueté et souple', '', 'Brique', 0, 'Coteaux du Languedoc Pic-Saint-Loup', 'Sauvignon', '471012', 3),
(624, 10, 10, 3, 1, '1/2 CHÂTEAU DU BOIS DE LA GARDE ', 103, 0, 0, 37, '', '1-2-chateau-du-bois-de-la-garde', '2012', 0, 3, 8, '2018', '16', 5, 5, 6, 5, 'Riche et puissant', 'Sa robe brique soutenue offre un joli nez de coulis de fruits rouges, de cacao, de thym et de figues sèches. En bouche ce vin possède un bon équilibre, assez corsé sur des tannins mûrs.', 'Robe Brique', 1, 'Côtes du Rhône ', 'Cinsault; Syrah; Grenache Noir; Mourvèdre', '472720', 18),
(625, 10, 10, 19, 1, 'PARALLELE 45 2013', 109, 0, 0, 75, '', 'parallele-45-2013', '2013', 0, 3, 2, '', '16.0', 6, 7, 4, 7, 'Fruité et plein', '', 'Rubis', 0, 'Collioure', '', '473060', 2),
(626, 10, 10, 11, 1, 'CHATEAU DE PENNAUTIER CABARDES', 153, 0, 0, 75, 'Rouge - 13°', 'chateau-de-pennautier-cabardes', '2013', 0, 3, 2, 'Peut être conservé', '18', 7, 5, 6, 6, 'Fruité et plein', '', 'Robe Grenat', 1, 'Cabardès', 'Syrah; Cabernet Sauvignon; Merlot; Grenache; Côt; Cabernet Franc', '470008', 20),
(627, 10, 10, 19, 1, 'ORTAS RASTEAU TRADITION 2013', 203, 0, 0, 75, '', 'ortas-rasteau-tradition-2013', '2013', 0, 3, 6, '', '16.0', 4, 7, 4, 7, 'Bouqueté et souple', '', 'Rubis', 0, 'Hautes Côtes de Beaune', '', '470537', 3),
(628, 10, 10, 5, 1, 'PINOT GRIS BARON HOEN 2014', 552, 0, 0, 75, '', 'pinot-gris-baron-hoen-2014', '2014', 0, 5, 6, '', '16.0', 4, 7, 4, 7, 'Bouqueté et souple', '', 'Rubis', 0, 'Bourgogne Epineuil', 'Pinot gris', '471470', 10),
(629, 10, 10, 7, 1, 'CHÂTEAU BELLEVUE LA FORÊT', 152, 0, 0, 75, '', 'chateau-bellevue-la-foret', '2012', 0, 3, 4, '2019', '18', 7, 6, 7, 7, 'Fruité et nerveux', '', 'Robe Grenat', 1, 'Fronton', 'Négrette; Syrah; Cabernet Sauvignon; Cabernet Franc', '472882', 60),
(630, 10, 10, 18, 1, 'IGP ILE DE BEAUTE ROSÉ 2015', 197, 0, 0, 75, '', 'igp-ile-de-beaute-ros-2015', '2015', 0, 4, 4, '', '11.0', 4, 7, 4, 7, 'Fruité et nerveux', '', 'Rosé clair', 0, 'IGP Pays d\'Oc', '', '473068', 4),
(631, 10, 10, 7, 1, 'CHÂTEAU DE LA ROQUE SAINT MONT ', 172, 0, 0, 75, 'Rouge - 13,5°', 'chateau-de-la-roque-saint-mont', '2011', 0, 3, 2, '2019', '18', 7, 5, 7, 8, 'Fruité et plein', '', 'Robe pourpre', 1, 'Côtes de Saint-Mont', 'Cabernet Sauvignon; Tannat', '470509', 15),
(632, 10, 10, 4, 1, '1/2 CHINON LES BRUYERES', 97, 0, 0, 37, 'Rouge - 12,5°', '1-2-chinon-les-bruyeres', '2014', 0, 3, 1, 'Peut être conservé', '16', 6, 8, 6, 5, 'Fruité et souple', '', 'Robe Rubis', 1, 'Chinon', 'Cabernet Franc', '470680', 11),
(633, 7, 10, 23, 1, 'VOUVRAY SEC BICHE 2014', 134, 0, 0, 75, '', 'vouvray-sec-biche-2014', '2014', 0, 1, 2, 'Peut être conservé', '18.0', 5, 7, 3, 7, 'Fruité et plein', '', 'Pourpre', 0, 'IGP d\'Oc', '', '470741', 1),
(634, 10, 10, 22, 1, 'CÔTE BROUILLY ESNARDS 2014', 78, 0, 0, 75, '', 'c-te-brouilly-esnards-2014', '2014', 0, 3, 2, 'Peut-être conservé', '16.0', 5, 7, 3, 6, 'Fruité et plein', '', 'Grenat', 0, 'Beaumes de Venise', 'Gamay', '470923', 4),
(635, 10, 10, 4, 1, 'SAINT AMOUR 2014', 78, 0, 0, 75, '', 'saint-amour-2014', '2014', 0, 3, 2, 'Peut être conservé', '8.0', 5, 7, 3, 6, 'Fruité et plein', '', 'Paille clair', 0, 'Saint-Véran', 'Pinot Noir', '470929', 5),
(636, 10, 10, 4, 1, '1/2 SAUMUR RESERVE DES VIGNERONS ', 87, 0, 0, 37, 'Rouge - 12.5°', '1-2-saumur-reserve-des-vignerons', '2014', 0, 3, 1, 'A déguster jusqu\'en 2018', '16', 5, 7, 6, 7, 'Fruité et souple', '', 'Robe claire', 1, 'Saumur', 'Cabernet et Franc', '471311', 21),
(637, 10, 10, 19, 1, 'CORNAS 2011', 78, 0, 0, 75, '', 'cornas-2011', '2011', 0, 3, 2, 'Peut être conservé', '8.0', 5, 7, 3, 7, 'Fruité et plein', '', 'Paille clair', 0, 'Alsace', '', '471385', 2),
(639, 10, 10, 19, 1, 'CLAIRETTE DE DIE TRADITION ', 319, 0, 0, 75, '', 'clairette-de-die-tradition', '', 0, 1, 1, 'Peut être conservé', '8.0', 4, 7, 3, 6, 'Fruité et souple', '', 'Claire aux reflets verts', 0, 'Moscato d\'Asti', '', '433573', 1),
(640, 10, 10, 2, 1, 'SANCERRE ROUGE ROCHETTES ', 91, 0, 0, 75, '', 'sancerre-rouge-rochettes', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '027433', 1),
(641, 11, 10, 23, 1, 'AFRIQ SUD ZOULOU TENTATION', 145, 0, 0, 75, '', 'afriq-sud-zoulou-tentation', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot Noir,Cinsault', '109946', 1),
(642, 10, 10, 7, 1, 'CÔTE DE BERGERAC', 151, 0, 0, 75, '', 'c-te-de-bergerac', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Muscadelle B', '136113', 1),
(643, 11, 10, 7, 1, 'CHÂTEAU LES CAPILIERS 2014', 104, 0, 0, 75, '', 'ch-teau-les-capiliers-2014', '2014', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '136117', 1),
(644, 11, 10, 7, 1, 'MADIRAN CELLIER 2011', 193, 0, 0, 75, '', 'madiran-cellier-2011', '2011', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', '136121', 1),
(645, 11, 10, 1, 1, 'CHÂTEAU MAYNARD 2014', 89, 0, 0, 75, '', 'ch-teau-maynard-2014', '2014', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Pinot Noir', '136414', 1),
(646, 11, 10, 1, 1, 'CH DES TOURELLES 2013', 158, 0, 0, 75, '', 'ch-des-tourelles-2013', '2013', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '136415', 1),
(647, 11, 10, 18, 1, 'MAGNUM CÔTE DE PROVINCE ROSE CHÂTEAU CAVALIER 2010', 324, 0, 0, 75, '', 'magnum-c-te-de-province-rose-ch-teau-cavalier-2010', '2010', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Sauvignon blanc', '139270', 1),
(648, 11, 10, 1, 1, 'CHÂTEAU GARDIEU REUI MOULIN 2015', 189, 0, 0, 75, '', 'ch-teau-gardieu-reui-moulin-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 1, '', '', '141375', 1),
(649, 11, 10, 1, 1, 'CHEVALIER D’ARCINS 2011', 132, 0, 0, 75, '', 'chevalier-d-arcins-2011', '2011', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '153300', 1),
(650, 5, 10, 23, 1, 'TORO FINCA SOBRENO 2011', 184, 0, 0, 75, '', 'toro-finca-sobreno-2011', '2011', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Tinta de Toro', '154143', 1),
(651, 11, 10, 1, 1, 'FLEUR DE PEDESCLAUX 2011', 304, 0, 0, 75, '', 'fleur-de-pedesclaux-2011', '2011', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '155056', 1),
(652, 10, 10, 1, 1, 'CHÂTEAU TARTUGUIERE MEDOC', 153, 0, 0, 75, '', 'chteau-tartuguiere-medoc', '2011', 0, 3, 7, 'Fin 2019', '18°', 6, 5, 7, 6, 'Bouqeté et corsé à point', '', '', 1, 'Médoc', 'Cabernet sauvignon - Merlot', '155231', 14),
(653, 11, 10, 18, 1, 'MAISON CASTEL ROUGE MEDOC 2015', 140, 0, 0, 75, '', 'maison-castel-rouge-medoc-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '156590', 1),
(654, 11, 10, 1, 1, 'MAGNUM CHÂTEAU LA TRBESSANE 12', 214, 0, 0, 75, '', 'magnum-ch-teau-la-trbessane-12', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '157132', 1),
(655, 10, 10, 11, 1, 'PINOT NOIR ROUGE MAISON CASTEL ', 102, 0, 0, 75, '', 'pinot-noir-rouge-maison-castel', '2015', 0, 3, 1, '2015-2019', '16°', 5, 7, 6, 6, 'Fruité et souple', '', '', 0, 'Pays d\'Oc', 'Pinot Noir', '157660', 1),
(656, 10, 10, 1, 1, 'CHÂTEAU BOUSQUET ', 189, 0, 0, 75, '', 'chteau-bousquet', '2012', 0, 3, 6, '2012-2020', '18°', 7, 5, 6, 6, 'Bouqueté et souple', '', '', 1, 'Côtes de Bourg', 'Cabernet Sauvignon-Merlot-Malbec-Cabernet Franc', '158481', 8),
(657, 10, 10, 1, 1, 'CHÂTEAU D’ARCINS HAUTE MEDOC ', 226, 0, 0, 75, '', 'chteau-d-arcins-haute-medoc', '2012', 0, 3, 7, 'Fin 2019', '18°', 8, 6, 7, 8, 'Bouqueté et corsé à point', '', '', 1, 'Haut-Medoc', 'Cabernet sauvignon, Merlot', '161338', 10),
(658, 10, 10, 18, 1, 'CASTEL GRANDE CUVÉE CHARDONNAY ', 117, 0, 0, 75, '', 'castel-grande-cuv-e-chardonnay', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Chardonnay', '163692', 1),
(659, 10, 10, 5, 1, 'GEWURZTRAMIER DRESCHLER 2013', 80, 0, 0, 75, '', 'gewurztramier-dreschler-2013', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Gewurztraminer', '163895', 1),
(660, 10, 10, 2, 1, 'MEURSAULT BLANC PATRI 2011', 113, 0, 0, 75, '', 'meursault-blanc-patri-2011', '2011', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'pinot noir', '164635', 1),
(661, 10, 10, 2, 1, 'HAUTES CÔTE DE NUIT PATRI', 234, 0, 0, 75, '', 'hautes-cte-de-nuit-patri', '2013', 0, 3, NULL, 'Fin 2021', '16°et18°', 5, 6, 6, 6, 'Fruité et Frais', '', '', 1, 'Hautes Côtes de Nuits', 'Pinot Noir', '164871', 15),
(662, 10, 10, 18, 1, 'LES ORMES DE CAMBRAS 2015', 139, 0, 0, 75, '', 'les-ormes-de-cambras-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '164960', 1),
(663, 10, 10, 19, 1, 'ORMES DE CAMBRA 2015', 187, 0, 0, 75, '', 'ormes-de-cambra-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Gamay', '164962', 1),
(664, 10, 10, 18, 1, 'LES ORMES DE CAMBRAS ROUGE 2015', 204, 0, 0, 75, '', 'les-ormes-de-cambras-rouge-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '164967', 1),
(665, 10, 10, 18, 1, 'LES ORMES DE CAMBRAS MERLOT 2015', 224, 0, 0, 75, '', 'les-ormes-de-cambras-merlot-2015', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Cabernet Sauvignon & Merlot', '164973', 1),
(666, 10, 10, 23, 1, 'CAMBRAS ROUGE 2015', 182, 0, 0, 75, '', 'cambras-rouge-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'Cabernet Sauvignon & Merlot', '165381', 1),
(667, 10, 10, 2, 1, 'BOURGOGNE G.CHARDONN 2014', 98, 0, 0, 75, '', 'bourgogne-g-chardonn-2014', '2014', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'pinot noir', '167041', 1),
(668, 10, 10, 22, 1, 'BEAUJOLAIS ROUGE 2014', 114, 0, 0, 75, '', 'beaujolais-rouge-2014', '2014', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Gamay ', '167097', 1),
(669, 10, 10, 15, 1, 'BROUILLY MAIS GIRARD RG 2014', 117, 0, 0, 75, '', 'brouilly-mais-girard-rg-2014', '2014', 0, 3, 1, 'Fin 2018', '15°', 6, 7, 5, 5, 'Fruité et souple', '', '', 0, 'Brouilly', 'Gamay', '167525', 1),
(670, 10, 10, 22, 1, 'BOURGOGNE ROUGE 2014', 255, 0, 0, 75, '', 'bourgogne-rouge-2014', '2014', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 1, '', 'pinot noir', '167638', 1),
(671, 10, 10, 4, 1, 'POUILLY FUME LE CHARME ', 238, 0, 0, 75, '', 'pouilly-fume-le-charme', '2014', 0, 1, NULL, 'Fin 2017', '9°', 5, 7, 5, 5, 'Fruité et Frais', '', '', 1, 'Pouilly fumé', 'Sauvignon', '167639', 8),
(672, 10, 10, 4, 1, 'SANCERRE LE CHARME 2014', 402, 0, 0, 75, '', 'sancerre-le-charme-2014', '2014', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Sauvignon', '167739', 1),
(673, 10, 10, 4, 1, 'VOUVRAY LE CHARME 2014', 230, 0, 0, 75, '', 'vouvray-le-charme-2014', '2014', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'le Chenin Blanc', '167740', 1),
(674, 10, 10, 1, 1, 'MAGNUM BARON DE LESTAC 2014', 266, 0, 0, 75, '', 'magnum-baron-de-lestac-2014', '2014', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Merlot', '167753', 1),
(675, 10, 10, 1, 1, 'CHÂTEAU TOUR PRIGNAC ', 194, 0, 0, 75, '', 'chteau-tour-prignac', '2013', 0, 3, 7, 'Fin 2021', '18°', 8, 5, 7, 7, 'Bouqueté et corsé à point', '', '', 1, 'Médoc', 'Cabernet Sauvignon - Merlot', '168401', 5),
(676, 10, 10, 11, 1, 'CORBIERES DOMAINE FABERT ', 103, 0, 0, 75, '', 'corbieres-domaine-fabert', '2014', 0, 3, 8, 'Prêt à boire', '18°', 5, 4, 4, 4, 'Fruité et Charnu', '', '', 1, 'Corbière', 'Syrah-Grenache-Carignan', '168765', 13),
(677, 10, 10, 1, 1, '1/2 BARON DE LESTAC', 60, 0, 0, 37, '', '1-2-baron-de-lestac', '2015', 0, 3, 1, '2018', '18', 7, 5, 7, 8, 'Fruité et souple', '', 'Robe brique', 0, 'Bordeaux', 'Cabernet Sauvignon; Merlot', '169958', 16),
(678, 7, 10, 23, 1, 'VALPO VILLA VERONI 2015', 110, 0, 0, 75, '', 'valpo-villa-veroni-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'cabernet sauvignon', '169727', 1),
(679, 10, 10, 18, 1, 'LES ORMES DE CAMBRAS MUSCAT', 89, 0, 0, 75, '', 'les-ormes-de-cambras-muscat', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '169829', 1),
(680, 10, 10, 18, 1, 'MASFLEUREY CÔTE PROVINCE 2015', 182, 0, 0, 75, '', 'masfleurey-c-te-province-2015', '2015', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '169854', 1),
(681, 10, 10, 2, 1, 'BOEDEAUX LESTAC 2015', 64, 0, 0, 75, '', 'boedeaux-lestac-2015', '2015', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'pinot noir', '169959', 1),
(682, 10, 10, 19, 1, 'LES COMBES DE SAINT SAUVEUR RG ', 87, 0, 0, 75, '', 'les-combes-de-saint-sauveur-rg', '2015', 0, 3, NULL, 'Prêt à boire', '16°', 7, 6, 6, 5, 'Fruité et Equilibré', '', '', 0, 'Côtes du Rhône Village', 'Cinsault-Syrah-Mourvedère et Grenache', '182493', 1),
(683, 10, 10, 19, 1, 'LES COMBES SAINT SAUVEUR 2015', 323, 0, 0, 75, '', 'les-combes-saint-sauveur-2015', '2015', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '182496', 1),
(684, 10, 10, 4, 1, 'VIOGNIER BLANC MAISON CASTEL 2015', 324, 0, 0, 75, '', 'viognier-blanc-maison-castel-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '183012', 1),
(685, 10, 10, 18, 1, 'MERLOT ROUGE 2015', 792, 0, 0, 75, '', 'merlot-rouge-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Merlot', '183018', 1),
(686, 10, 10, 4, 1, 'SYRAH ROUGE 2015', 389, 0, 0, 75, '', 'syrah-rouge-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', '183024', 1),
(687, 10, 10, 1, 1, 'MALBEC ROUGE MAISON CASTEL 2015', 436, 0, 0, 75, '', 'malbec-rouge-maison-castel-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '183029', 1),
(688, 10, 10, 11, 1, 'MAISON CASTEL CHARDONNAY ', 102, 0, 0, 75, '', 'maison-castel-chardonnay', '2015', 0, 1, NULL, 'Prêt à boire', '9°', 7, 7, 5, 6, 'Fruité et rond', '', '', 1, 'Pays d\'Oc', 'Chardonnay', '183122', 14),
(689, 10, 10, 19, 1, 'CABERNET SAUVIGNON 2015', 228, 0, 0, 75, '', 'cabernet-sauvignon-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Cabernet Sauvignon', '183127', 1),
(690, 10, 10, 18, 1, 'MAISON CASTEL GRANDE RÉSERVE SYRAH 2015', 452, 0, 0, 75, '', 'maison-castel-grande-r-serve-syrah-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', '183155', 1),
(691, 10, 10, 19, 1, 'ROSÉ D’ANJOU MAISON CASTEL 2015', 275, 0, 0, 75, '', 'ros-d-anjou-maison-castel-2015', '2015', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Cabernet', '183222', 1),
(692, 10, 10, 18, 1, ' CÔTE PROVINCE ROSÉ MAISON CASTEL 2015', 224, 0, 0, 75, '', 'c-te-province-ros-maison-castel-2015', '2015', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot noir', '183234', 1),
(693, 10, 10, 2, 1, 'HAUTE CÔTE BEAUNE PATRI 2014', 223, 0, 0, 75, '', 'haute-c-te-beaune-patri-2014', '2014', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'pinot noir', '183319', 1),
(694, 10, 10, 1, 1, ' SAINT EMILION MAISON CASTEL ', 178, 0, 0, 75, '', 'saint-emilion-maison-castel', '2015', 0, 3, 6, '2015-2019', '17°', 6, 5, 5, 5, 'Bouqueté et souple', '', '', 1, 'Saint Emilion', 'Merlot-Cabernet franc', '183358', 13),
(695, 10, 10, 2, 1, 'CHABLIS MAISON CASTEL 2015', 515, 0, 0, 75, '', 'chablis-maison-castel-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '183359', 1),
(696, 10, 10, 4, 1, 'POUILLY FUME 2015', 299, 0, 0, 75, '', 'pouilly-fume-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Sauvignon blanc', '183365', 1),
(697, 10, 10, 1, 1, 'LES PUCES MAISON CASTEL', 599, 0, 0, 75, '', 'les-puces-maison-castel', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '183881', 1),
(698, 10, 10, 18, 1, 'CLAPIERE JALADE ROSÉ 2015', 437, 0, 0, 75, '', 'clapiere-jalade-ros-2015', '2015', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '184243', 1),
(699, 10, 10, 18, 1, 'GRENACHE ROUGE MAISON CASTEL 2015', 396, 0, 0, 75, '', 'grenache-rouge-maison-castel-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Grenache', '184428', 1),
(700, 2, 10, 23, 1, 'CHÉ SYRAH 2015', 540, 0, 0, 75, '', 'ch-syrah-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', '184516', 1),
(701, 10, 10, 7, 1, 'SAINT JOSEPH MAISON CASTEL 2015', 134, 0, 0, 75, '', 'saint-joseph-maison-castel-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah, grenache, carignan', '184579', 1),
(702, 10, 10, 26, 1, 'PICPOUL DE PINET', 78, 0, 0, 75, '', 'picpoul-de-pinet', '2015', 0, 3, 2, 'Prêt à boire', '9°', 6, 8, 7, 5, 'Fruité et plein', '', '', 1, 'Languedoc', 'Picpoul blanc', '184626', 11),
(703, 10, 10, 4, 1, 'CABBERNET ANJOU BUISSON 2015', 114, 0, 0, 75, '', 'cabbernet-anjou-buisson-2015', '2015', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Cabernet', '184674', 1),
(704, 10, 10, 5, 1, 'GEWURZTRAMINER MAISON CASTEL BL 2015', 569, 0, 0, 75, '', 'gewurztraminer-maison-castel-bl-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Gewurztraminer', '184739', 1),
(705, 10, 10, 1, 1, 'E2M CHTATEAU MILORD 2015', 437, 0, 0, 75, '', 'e2m-chtateau-milord-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Sauvignon blanc', '184752', 1),
(706, 10, 10, 2, 1, 'MACON VILLAGE GIRARD 2015', 280, 0, 0, 75, '', 'macon-village-girard-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'pinot noir', '184771', 1),
(707, 10, 10, 19, 1, 'BEAUJOLAIS VILLAGE 2015', 156, 0, 0, 75, '', 'beaujolais-village-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Viognier', '185004', 1),
(708, 10, 10, 22, 1, 'FLEURIE GIRARD ', 113, 0, 0, 75, '', 'fleurie-girard', '2015', 0, 3, 1, 'Peut être conservé', '15°', 6, 7, 5, 6, 'Fruité et souple', '', '', 1, 'Fleurie', 'Gamay', '185038', 7),
(709, 10, 10, 18, 1, 'MUSCAT FRONTIGNAN GDE PREMIERE 75cl', 246, 0, 0, 75, '', 'muscat-frontignan-gde-premiere-75cl', '', 0, 1, 1, 'Peut être conservé', '9.0', 0, 0, 0, 0, 'Fruité et souple', '', '', 0, 'Muscat de Frontignan', 'Tannat, Malbec, Arinarnoa', '185745', 6),
(710, 10, 10, 4, 1, 'SANCERRE LE CHARME 2015', 1, 0, 0, 75, '', 'sancerre-le-charme-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '185991', 1),
(711, 10, 10, 4, 1, 'CHATEAU DE LA BOTINIERE', 108, 0, 0, 75, '', 'chateau-de-la-botiniere', '2015', 0, 1, 8, 'Prêt à boire', '9°', 5, 7, 6, 6, 'Fruité et Charnu', '', 'Robe Paille', 1, 'Muscadet', 'Melon de Bourgogne', '186617', 16),
(712, 10, 10, 4, 1, 'CHATEAU L’HYVERNIERE ', 102, 0, 0, 75, '', 'chateau-l-hyverniere', '2015', 0, 1, 4, 'Prêt à boire', '8°', 6, 7, 5, 6, 'Fruité et nerveux', '', '', 0, 'Muscadet', 'Melon de Bourgogne', '187000', 1),
(713, 10, 10, 1, 1, 'CHATEAU LA CROIX MONTLABERT', 299, 0, 0, 75, '', 'chateau-la-croix-montlabert', '2013', 0, 3, 8, 'Jusqu\'en 2022', '16°et18°', 7, 5, 6, 6, 'Fruité et Charnu', '', '', 1, 'Saint Emilion grand cru', 'Merlot-Cabernet Franc', '187108', 10),
(714, 10, 10, 18, 1, 'FITOU DOMAINE LERYS 2015', 540, 0, 0, 75, '', 'fitou-domaine-lerys-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '187389', 1),
(715, 10, 10, 4, 1, 'CHATEAU MONCONTOUR MILLESIME AC', 341, 0, 0, 75, '', 'chateau-moncontour-millesime-ac', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '189105', 2),
(716, 10, 10, 5, 1, 'EDELZWICKER 1LITRE', 159, 0, 0, 1, '', 'edelzwicker-1litre', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '318083', 2),
(717, 10, 10, 23, 1, 'MONMOUSSOU TOURAINE ROSE', 779, 0, 0, 75, '', 'monmoussou-touraine-rose', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '334645', 1),
(718, 10, 10, 5, 1, 'PINOT GRIS KITTERLE 2004', 221, 0, 0, 75, '', 'pinot-gris-kitterle-2004', '2004', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot gris', '364901', 1),
(719, 10, 10, 1, 1, 'CHATEAU DE ROLLAND 2004', 165, 0, 0, 75, '', 'chateau-de-rolland-2004', '2004', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '374743', 1),
(720, 10, 10, 23, 1, 'CREMANT BORDEAUX JAILLANCE', 145, 0, 0, 75, '', 'cremant-bordeaux-jaillance', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Sauvignon', '377022', 3),
(721, 10, 10, 7, 1, 'JURANCON DOMAINE CAUHAPE 2005', 289, 0, 0, 75, '', 'jurancon-domaine-cauhape-2005', '2005', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '383531', 1),
(722, 11, 10, 23, 1, 'FLEUR CAP PINOTAGE AFRIQ', 468, 0, 0, 75, '', 'fleur-cap-pinotage-afriq', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir,Cinsault', '407096', 4),
(723, 7, 10, 23, 1, 'MOSCATO D\'ASTI DOLCE ITA 2011', 334, 0, 0, 75, '', 'moscato-d-asti-dolce-ita-2011', '2011', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '462653', 4),
(724, 10, 10, 1, 1, 'CHATEAU LARRIVET HAUT BRION 2011', 367, 0, 0, 75, '', 'chateau-larrivet-haut-brion-2011', '2011', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '464477', 3),
(725, 10, 10, 19, 1, 'MUSCAT BEAUMES VENISE 2011', 314, 0, 0, 75, '', 'muscat-beaumes-venise-2011', '2011', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Chenin', '465053', 1),
(726, 10, 10, 2, 1, 'DOMAINEE BERTHETE ROSE 2012', 686, 0, 0, 75, '', 'domainee-berthete-rose-2012', '2012', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'pinot noir', '466058', 1),
(727, 9, 10, 23, 1, 'MAURY MAS AMIEL 2011', 383, 0, 0, 75, '', 'maury-mas-amiel-2011', '2011', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah, grenache, cabernet, merlot', '466059', 1),
(728, 10, 10, 1, 1, 'TABLE MOUNTAIN ROSE AFRIQ', 265, 0, 0, 75, '', 'table-mountain-rose-afriq', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '466337', 3),
(729, 10, 10, 2, 1, 'CHABLIS BLANCHOT 2011', 540, 0, 0, 75, '', 'chablis-blanchot-2011', '2011', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'pinot noir', '468418', 2),
(730, 10, 10, 7, 1, 'BARON D’ARDEUIL', 177, 0, 0, 75, '', 'baron-d-ardeuil', '2010', 0, 3, 7, 'Prêt à boire', '18', 6, 5, 5, 5, 'Bouqueté corsé et à point', '', 'Robe Grenat', 1, 'Buzet', 'Cabernet Sauvignon; Merlot; Cabernet Franc', '468512', 22),
(731, 10, 10, 1, 1, 'CHÂTEAU RAHOUL', 270, 0, 0, 75, '', 'chteau-rahoul', '2012', 0, 3, NULL, 'Jusqu\'en 2020', '18°', 7, 5, 7, 7, 'Fruité et rond', '', 'Robe Grenat', 1, 'Graves', 'Cabernet Sauvignon-Merlot-Petit Verdot', '474284', 13),
(732, 10, 10, 22, 1, 'MAGNUM BROUILLY SABLONS 2013', 385, 0, 0, 75, '', 'magnum-brouilly-sablons-2013', '2013', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Gamay', '468953', 3),
(733, 10, 10, 1, 1, 'LA DEMOISELLE SOCIANDO 2012', 378, 0, 0, 75, '', 'la-demoiselle-sociando-2012', '2012', 0, 3, 2, '', '16.0', 0, 0, 0, 0, 'Fruité et plein', '', 'Rubis', 0, 'Colchagua Valley', 'Pinot Noir', '469259', 4),
(734, 10, 10, 2, 1, 'CHÂTEAU DE MARSANNAY 2013', 167, 0, 0, 75, '', 'ch-teau-de-marsannay-2013', '2013', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '469746', 1),
(735, 10, 10, 22, 1, 'SEIGNEURERIE D’OLIVIER 2012', 89, 0, 0, 75, '', 'seigneurerie-d-olivier-2012', '2012', 0, 3, 1, '5 à 10 ans', '', 0, 0, 0, 0, '', '', '', 0, 'Bergerac', 'Gamay', '470007', 3),
(736, 10, 10, 2, 1, 'CHABLIS LES PREUSES 2012', 388, 0, 0, 75, '', 'chablis-les-preuses-2012', '2012', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '470817', 6),
(737, 10, 10, 2, 1, 'MAGNUM BOURGOGNE PINOT JADOT 2012', 139, 0, 0, 75, '', 'magnum-bourgogne-pinot-jadot-2012', '2012', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '470821', 1),
(738, 10, 10, 4, 1, 'RIESLING RITZENTHALER 2014', 104, 0, 0, 75, '', 'riesling-ritzenthaler-2014', '2014', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '471163', 4),
(739, 10, 10, 2, 1, 'MACON PERONNE TOUR PENE 2014', 230, 0, 0, 75, '', 'macon-peronne-tour-pene-2014', '2014', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '471393', 3),
(740, 10, 10, 18, 1, 'DOMAINE L’HORTUS GRANDE CUVÉE 2013', 120, 0, 0, 75, '', 'domaine-l-hortus-grande-cuv-e-2013', '2013', 0, 3, 4, 'Peut être conservé', '7.0', 0, 0, 0, 0, 'Fruité et nerveux', '', 'Rosé vif', 0, 'Crémant de Loire', 'Pinot Noir', '471460', 3),
(741, 10, 10, 5, 1, 'GEWURZTRAMINER MARGUERITE 2014', 163, 0, 0, 75, '', 'gewurztraminer-marguerite-2014', '2014', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, 'Pauillac', 'Gewurztraminer', '471591', 5),
(742, 10, 10, 5, 1, 'PINOT BLANC COLLECTION PRIVÉE 2014', 94, 0, 0, 75, '', 'pinot-blanc-collection-priv-e-2014', '2014', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '471593', 2);
INSERT INTO `product` (`id`, `country_id`, `brand_id`, `region_id`, `sub_category_id`, `label`, `regular_price`, `strike_price`, `loyality_price`, `volume`, `description`, `slug`, `vintage`, `is_new`, `color_id`, `taste_id`, `care_level`, `service_temperature`, `corps`, `fraicheur`, `evolution`, `style`, `characteristics1`, `characteristics_details`, `characteristics2`, `state`, `appelation`, `cepage`, `ref`, `seen`) VALUES
(743, 10, 10, 5, 1, 'GEWURZTRAMINER COLLECTION PRIVÉE ', 214, 0, 0, 75, '', 'gewurztraminer-collection-prive', '2014', 0, 1, 1, 'Peut être conservé', '8°', 6, 6, 5, 5, 'Fruité et Charnu', '', '', 1, 'Alsace', 'Gewurztraminer', '471594', 13),
(744, 10, 10, 1, 1, 'FRANK PHELAN ', 559, 0, 0, 75, '', 'frank-phelan', '2011', 0, 3, 7, 'Fin 2022', '16°et18°', 7, 5, 7, 7, 'Bouqueté, corsé et à point', '', '', 1, 'Saint Estèphe', 'Cabernet Sauvignon-Merlot', '471650', 10),
(745, 10, 10, 1, 1, 'BERGERIE DE L’HORTUS 2014', 63, 0, 0, 75, '', 'bergerie-de-l-hortus-2014', '2014', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '471728', 4),
(746, 10, 10, 4, 1, 'CREMANT LOIRE CHANCENY ROSÉ', 154, 0, 0, 75, '', 'cremant-loire-chanceny-ros', '', 0, 4, NULL, 'Prêt à boire', '7°', 6, 8, 6, 6, 'Fruité et rond', '', '', 1, 'Crémant de Loire', 'Cabernet Franc', '471846', 15),
(747, 10, 10, 7, 1, '1/2 CLOS LA COUTAL ', 93, 0, 0, 37, 'Rouge - 13.5°', '1-2-clos-la-coutal', '2013', 0, 3, 8, '2019', '18', 8, 5, 6, 7, 'Fruité et Charnu', '', 'Robe Grenat', 1, 'Cahors', 'Malbec', '472059', 15),
(748, 10, 10, 7, 1, 'JURANCON GRAINE SAUVAGE 2014', 228, 0, 0, 75, '', 'jurancon-graine-sauvage-2014', '2014', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, 'Chablis 1er Cru', 'Pinot Noir', '472749', 4),
(749, 10, 10, 18, 1, 'GASCOGNE COLOMBELLE 2015', 98, 0, 0, 75, '', 'gascogne-colombelle-2015', '2015', 0, 1, 4, 'Peut être conservé', '17.0', 0, 0, 0, 0, 'Fruité et nerveux', '', '', 0, 'Mercurey', 'Colombard', '472750', 2),
(750, 10, 10, 4, 1, 'POUILLY SUR LOIRE ', 169, 0, 0, 75, '', 'pouilly-sur-loire', '2014', 0, 1, 8, 'Prêt à boire', '9°', 6, 8, 5, 5, 'Fruité et Charnu', '', 'Claire aux reflets verts', 1, 'Pouilly sur Loire', 'Chasselat', '472830', 9),
(751, 10, 10, 19, 1, 'CROZ HERM FEES BRUNES 2014', 93, 0, 0, 75, '', 'croz-herm-fees-brunes-2014', '2014', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '472840', 3),
(752, 10, 10, 7, 1, 'LES GRUMES BLANCHES', 61, 0, 0, 75, '', 'les-grumes-blanches', '2015', 0, 1, 1, 'Prêt à boire', '', 5, 7, 6, 6, 'Fruité et Frais', '', '', 1, 'Vin de France', 'Melon de Bourgogne Grenache blanc', '472878', 14),
(753, 10, 10, 11, 1, 'PLUME CHARDONNAY HERAULT ', 95, 0, 0, 75, '', 'plume-chardonnay-herault', '2015', 0, 1, 8, 'Prêt à boire', '8°', 5, 7, 5, 5, 'Fruité et Charnu', '', '', 1, 'Pays de l\'Herault', 'Chardonnay', '472888', 12),
(754, 10, 10, 5, 1, 'REULLY BLANC CROZ LAFOND 2015', 141, 0, 0, 75, '', 'reully-blanc-croz-lafond-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '472981', 4),
(755, 10, 10, 1, 1, 'CHEVALIER D’ARCINS ', 202, 0, 0, 75, '', 'chevalier-d-arcins', '2012', 0, 3, NULL, 'Peut être conservé', '18°', 7, 5, 6, 6, 'Fruité et rond', '', '', 1, 'Haut-Medoc', 'Cabernet Sauvignon-Merlot', '472996', 13),
(756, 10, 10, 23, 1, 'VDP AIGUES RECOLTE 2015', 208, 0, 0, 75, '', 'vdp-aigues-recolte-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '473058', 2),
(757, 10, 10, 7, 1, 'BANYLUS GERARD BERRAND 2012', 226, 0, 0, 75, '', 'banylus-gerard-berrand-2012', '2012', 0, 3, 1, '', '16.0', 0, 0, 0, 0, '', '', '', 0, '', 'Grenache', '473075', 4),
(758, 10, 10, 18, 1, 'SYLVANER COLLECTION PRIVÉE 2014', 214, 0, 0, 75, '', 'sylvaner-collection-priv-e-2014', '2014', 0, 1, 4, '', '', 0, 0, 0, 0, 'Fruité et nerveux', '', '', 0, '', '', '473081', 2),
(759, 10, NULL, 2, 1, 'CHABLIS - LES VAUX SEREINS ', 235, 0, 0, 75, 'Blanc - 12,5°', 'chablis-les-vaux-sereins', '2014', 0, 1, 8, 'Peut être conservé', '9°', 7, 8, 7, 6, 'Fruité et Charnu', '', 'Robe paille clair', 1, 'Chablis', 'Chardonnay', '475361', 35),
(760, 10, 10, 18, 1, 'CABERNET D’ANJOU ANGEVINE 2015', 125, 0, 0, 75, '', 'cabernet-d-anjou-angevine-2015', '2014', 0, 1, 4, '', '', 0, 0, 0, 0, 'Fruité et nerveux', '', '', 0, '', 'Cabernet', '473153', 2),
(761, 10, 10, 18, 1, 'LE LOUP DANS LA BERGERIE 2015', 187, 0, 0, 75, '', 'le-loup-dans-la-bergerie-2015', '2015', 0, 3, 1, '', '', 0, 0, 0, 0, 'Fruité et souple', '', '', 0, 'IGP Saint-Guilhem le Désert', '', '473179', 2),
(762, 10, 10, 2, 1, 'DUC DE BELMONT BORGIN ', 162, 0, 0, 75, '', 'duc-de-belmont-borgin', '2015', 0, 1, 8, '2015-2020', '9°', 6, 8, 7, 5, 'Fruité et Charnu', '', '', 1, 'Coteaux-Bourguignons', 'Chardonnay', '473184', 16),
(763, 10, 10, 18, 1, 'CÔTE DE TARIQUET GASCOGN 2015', 197, 0, 0, 75, '', 'c-te-de-tariquet-gascogn-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, 'Fruité et souple', '', '', 0, 'IGP Côtes de Gascogne', 'Gamay', '473190', 2),
(764, 10, 10, 2, 1, 'SAINT NICOLAS DE BOURGUAIL 2015', 188, 0, 0, 75, '', 'saint-nicolas-de-bourguail-2015', '2015', 0, 3, 2, '', '', 0, 0, 0, 0, 'Fruité et plein', '', '', 0, 'Saint-Nicolas-de-Bourgueil', 'pinot noir', '473213', 3),
(765, 10, 10, 7, 1, 'BUZET COSTES DE BEYRAC', 120, 0, 0, 75, 'Rouge - 13°', 'buzet-costes-de-beyrac', '2014', 0, 3, 7, '2020', '17°', 7, 4, 5, 6, 'Bouqueté et corsé à point', '', 'Robe pourpre', 1, 'Buzet', 'Merlot-Cabernet sauvignon-Cabernet Franc', '473349', 15),
(766, 10, 10, 19, 1, 'CHÂTEAU VAL JOANIS GRIOTTE 2013', 187, 0, 0, 75, '', 'ch-teau-val-joanis-griotte-2013', '2013', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '473350', 1),
(767, 10, 10, 4, 1, 'SANCERRE CAMP CLOS ', 240, 0, 0, 75, '', 'sancerre-camp-clos', '2015', 0, 1, 1, 'Fin 2018', '8°', 7, 9, 7, 7, 'Fruité et plein', '', '', 1, 'Sancerre', 'Sauvignon', '473618', 9),
(768, 10, 10, 6, 1, 'MOMENTS MINUTY ', 221, 0, 0, 75, '', 'moments-minuty', '2015', 0, 4, 1, 'Prêt à boire', '10°', 7, 8, 6, 6, 'Fruité et Frais', '', '', 1, 'Provence', 'Cinsault-Syrah-Grenache', '473631', 11),
(769, 10, 10, 18, 1, 'RELAIS DE DURFORT 2012', 90, 0, 0, 75, '', 'relais-de-durfort-2012', '2012', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '473651', 2),
(771, 10, 10, 11, 1, 'GRIS DE GRIS IGP PAYS OC ', 141, 0, 0, 75, '', 'gris-de-gris-igp-pays-oc', '2015', 0, 5, 8, 'Prêt à boire', '10°', 5, 8, 6, 6, 'Fruité et charnu', '', '', 1, 'Pays d\'Oc', 'Grenache gris', '473755', 16),
(772, 10, 10, 11, 1, 'GRIS DE GRIS IGP', 141, 0, 0, 75, '', 'gris-de-gris-igp', '2015', 0, 5, 8, 'Prêt à boire', '10°', 5, 8, 6, 6, 'Fruité et Charnu', '', '', 0, 'Pays d\'Oc', 'Grenache gris', '473755', 5),
(773, 10, 10, 18, 1, ' LE MASOULIER ROSE HER15', 69, 0, 0, 75, '', 'le-masoulier-rose-her15', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '473770', 4),
(774, 10, 10, 4, 1, 'SAUMUR BLANC ', 92, 0, 0, 75, '', 'saumur-blanc', '2015', 0, 1, 1, 'Prêt à boire', '8°et 10°', 6, 7, 7, 6, 'Fruité et Charnu', '', '', 1, 'Saumur', 'Chenin blanc', '473980', 7),
(775, 9, 10, 23, 1, 'SAINT TROPEZ PROVENCE ROSÉ 2015', 113, 0, 0, 75, '', 'saint-tropez-provence-ros-2015', '2015', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '474165', 1),
(776, 10, 10, 11, 1, 'LES JAMELLES CHARDONNAY ', 113, 0, 0, 75, '', 'les-jamelles-chardonnay', '2015', 0, 1, 8, '2018', '9°', 4, 5, 5, 4, 'Fruité et Charnu', '', '', 1, 'IGP d\'Oc', 'Chardonnay', '474194', 10),
(777, 10, 10, 2, 1, '1/2 CHABLIS VAUS SEREIN 2015', 101, 0, 0, 38, '', '1-2-chablis-vaus-serein-2015', '2015', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Pinot Noir', '474326', 1),
(778, 10, 10, 4, 1, 'QUINCY PIERRE DURET ', 191, 0, 0, 75, '', 'quincy-pierre-duret', '2015', 0, 1, NULL, 'Fin 2017', '8°', 6, 8, 6, 6, 'Fruité et Frais', '', '', 1, 'Quincy', 'Sauvignon', '474371', 7),
(779, 10, 10, 7, 1, 'MADIRAN 2011', 278, 0, 0, 75, '', 'madiran-2011', '2011', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', '51333', 1),
(780, 10, 10, 1, 1, 'CHÂTEAU FERRAND BLANC', 65, 0, 0, 75, '', 'ch-teau-ferrand-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0886', 1),
(781, 10, 10, 1, 1, 'CHÂTEAU CAVALIER ROSÉ', 65, 0, 0, 75, '', 'ch-teau-cavalier-ros', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0887', 1),
(782, 10, 10, 23, 1, 'FREIXENET ELYSSIA BRUT', 153, 0, 0, 75, '', 'freixenet-elyssia-brut', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0783', 1),
(783, 10, 10, 23, 1, 'FREIXENET ELYSSIA ROSÉ', 88, 0, 0, 75, '', 'freixenet-elyssia-ros', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0784', 1),
(784, 10, 10, 23, 1, 'FREIXENET DUBOIS BRUT 75CL', 163, 0, 0, 75, '', 'freixenet-dubois-brut-75cl', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0913', 1),
(786, 8, 10, 23, 1, '1/2 SAHARI ROUGE', 177, 0, 0, 38, '', '1-2-sahari-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0001', 1),
(787, 8, 10, 23, 1, '1/2 SAHARI RESERVE ROSÉ', 156, 0, 0, 38, '', '1-2-sahari-reserve-ros', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0002', 1),
(788, 8, 10, 23, 1, 'MEDAILLON BLANC', 172, 0, 0, 75, '', 'medaillon-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0135', 1),
(789, 8, 10, 23, 1, 'MEDAILLON ROSÉ DE SYRAH 75 CL', 140, 0, 0, 75, '', 'medaillon-ros-de-syrah-75-cl', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', 'REF0136', 1),
(790, 8, 10, 23, 1, 'MEDAILLON ROUGE 75 cl', 93, 0, 0, 75, '', 'medaillon-rouge-75-cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0137', 1),
(791, 8, 10, 23, 1, 'S DE SIROUA ROSE 75 CL ', 126, 0, 0, 75, '', 's-de-siroua-rose-75-cl', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Muscat', 'REF0169', 1),
(792, 8, 10, 23, 1, 'S DE SIROUA ROUGE 75 CL ', 136, 0, 0, 75, '', 's-de-siroua-rouge-75-cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Muscat', 'REF0170', 1),
(793, 8, 10, 23, 1, 'ECLIPSE ROUGE 75CL', 120, 0, 0, 75, '', 'eclipse-rouge-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Chardonnay,viognier', 'REF0171', 1),
(794, 8, 10, 23, 1, 'SAHARI RÉSERVE ROUGE 75CL', 82, 0, 0, 75, '', 'sahari-r-serve-rouge-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0172', 1),
(795, 8, 10, 23, 1, 'SAHARI RÉSERVE BLANC 75CL', 263, 0, 0, 75, '', 'sahari-r-serve-blanc-75cl', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0173', 1),
(796, 8, 10, 23, 1, 'SAHARI RÉSERVE ROSÉ 75CL', 58, 0, 0, 75, '', 'sahari-r-serve-ros-75cl', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0174', 1),
(797, 8, 10, 23, 1, 'VOLUBILIA ROSÉ 75CL', 44, 0, 0, 75, '', 'volubilia-ros-75cl', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Chardonnay,sauvignon', 'REF0191', 1),
(798, 8, 10, 23, 1, 'BONASSIA ROUGE 75 CL', 109, 0, 0, 75, '', 'bonassia-rouge-75-cl', '', 0, 3, 1, '', '16.0 / 18.0', 7, 5, 6, 5, '', '', 'Belle robe rouge teintée de pourpre.', 0, 'Beni M\'Tir', 'Cabernet Sauvignon', 'REF0194', 1),
(799, 8, 10, 25, 1, 'LARROQUE ROUGE ', 89.9, 0, 0, 75, '', 'larroque-rouge', '', 0, 3, 1, '', '16.0 / 18.0', 6, 6, 7, 6, '', '', 'Belle robe rubis foncé intense, frange violine.', 1, 'Beni M\'Tir', 'Cabernet sauvignon, Merlot', '', 9),
(800, 8, 10, 25, 1, 'LARROQUE GRIS', 99, 0, 0, 75, '', 'larroque-gris', '', 0, 5, 1, '', '10.0', 9, 9, 7, 8, '', '', 'Belle robe saumon frange bleue.', 1, 'Beni M\'Tir', 'Syrah, Tempranillo, Sangiovese', 'REF0196', 10),
(801, 8, 10, 25, 1, 'LARROQUE BLANC ', 109, 0, 0, 75, '', 'larroque-blanc', '', 0, 1, 1, '', '10.0', 8, 8, 6, 6, '', '', 'Belle robe jaune pâle aux reflets gris.', 1, 'Beni M\'Tir', 'Chardonnay', 'REF0197', 8),
(802, 8, 10, 23, 1, 'HALANA SYRAH ROSÉ', 118, 0, 0, 75, '', 'halana-syrah-ros', '', 0, 4, 1, '', '10.0', 8, 6, 7, 6, '', '', 'Belle robe corail.', 1, 'Beni M\'Tir', 'Syrah', 'REF0200', 9),
(803, 8, 10, 23, 1, 'HALANA MERLOT', 129, 0, 0, 75, '', 'halana-merlot', '', 0, 3, 1, '', '16.0 / 18.0', 5, 5, 6, 5, '', '', 'Belle robe grenat aux reflets violacés.', 1, 'Beni M\'Tir', 'Merlot', 'REF0204', 8),
(804, 8, 10, 23, 1, 'HALANA SYRAH ', 139, 0, 0, 75, '', 'halana-syrah', '', 0, 3, 1, '', '16.0 / 18.0', 7, 5, 7, 6, '', '', 'Belle robe rubis aux reflets framboise', 1, 'Beni M\'Tir', 'Syrah', 'REF0205', 31),
(805, 8, 10, 23, 1, 'SAHARI RESERVE GRIS 70CL', 85, 0, 0, 70, '', 'sahari-reserve-gris-70cl', '', 0, 5, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0255', 1),
(806, 8, 10, 23, 1, 'COMTESSE DE LA COURTABLAISE', 74, 0, 0, 75, '', 'comtesse-de-la-courtablaise', '', 0, 3, 1, '', '16.0 / 18.0', 9, 7, 9, 8, '', '', 'Belle robe rubis sombre, reflets violine.', 0, 'Beni M\'Tir', 'Cabernet sauvignon, Cabernet franc, Merlot', 'REF0261', 1),
(807, 9, 10, 23, 1, 'MATEUS 1L', 74, 0, 0, 1, '', 'mateus-1l', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0301', 1),
(808, 8, 10, 23, 1, 'COTEAUX DE L’ATLAS ROUGE 75CL', 130, 0, 0, 75, '', 'coteaux-de-l-atlas-rouge-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0367', 1),
(809, 8, 10, 23, 1, 'CUVÉE PRESIDENT ROSÉ 75CL', 53, 0, 0, 75, '', 'cuv-e-president-ros-75cl', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0378', 1),
(810, 8, 10, 23, 1, 'TANDEM 75CL', 82, 0, 0, 75, '', 'tandem-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0381', 1),
(811, 8, 10, 23, 1, 'SEMILLANT PRESIDENT BLANC 75', 82, 0, 0, 75, '', 'semillant-president-blanc-75', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0391', 1),
(812, 8, 10, 23, 1, 'BEAUVALLON ROSÉ 75CL', 71, 0, 0, 75, '', 'beauvallon-ros-75cl', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Grenache', 'REF0394', 1),
(813, 8, 10, 23, 1, 'CUVÉE DU PRÉSIDENT ROUGE 75cl', 70, 0, 0, 75, '', 'cuve-du-prsident-rouge-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0503', 1),
(814, 8, 10, 23, 1, 'AIT SOUALA ROUGE 75CL', 82, 0, 0, 75, '', 'ait-souala-rouge-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0558', 1),
(815, 8, 10, 23, 1, 'AIT SOUALA BLANC 75CL', 69, 0, 0, 75, '', 'ait-souala-blanc-75cl', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0559', 1),
(816, 8, 10, 23, 1, 'ECLIPSE ROSÉ 75CL', 115, 0, 0, 75, '', 'eclipse-ros-75cl', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0560', 1),
(817, 8, 10, 23, 1, 'BOULAOUANE GRIS 75CL', 239, 0, 0, 75, '', 'boulaouane-gris-75cl', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'syrah', 'REF0562', 1),
(818, 8, 10, 23, 1, 'MAGNUM ECLIPSE ROUGE', 50, 0, 0, 0, '', 'magnum-eclipse-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', 'REF0600', 1),
(819, 8, 10, 23, 1, 'LUMIÈRE ROUGE', 219, 0, 0, 75, '', 'lumi-re-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah, merlot', 'REF0602', 1),
(820, 8, 10, 23, 1, 'TERRE ROUGE', 50, 0, 0, 75, '', 'terre-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0617', 1),
(821, 8, 10, 23, 1, 'TERRE BLANCHE', 72, 0, 0, 75, '', 'terre-blanche', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah, grenache, carignan', 'REF0618', 1),
(822, 8, 10, 23, 1, 'TERRE ROSE', 50, 0, 0, 75, '', 'terre-rose', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Grenache blanc', 'REF0619', 1),
(823, 8, 10, 23, 1, 'AIT SOUALA GRIS 75 CL', 139, 0, 0, 75, '', 'ait-souala-gris-75-cl', '', 0, 5, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Cinsault', 'REF0657', 1),
(824, 8, 10, 23, 1, 'TERRE GRISE 75 CL', 153, 0, 0, 75, '', 'terre-grise-75-cl', '', 0, 5, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', 'REF0658', 1),
(825, 8, 10, 23, 1, 'BONASSIA GRIS', 132, 0, 0, 75, '', 'bonassia-gris', '', 0, 5, 1, '', '10.0', 7, 9, 5, 7, '', '', 'Belle robe saumon franche et lumineuse.', 0, 'Beni M\'Tir', 'Syrah, grenache, carignan', 'REF0701', 1),
(826, 8, 10, 23, 1, 'KASBAH PRESTIGE ROUGE 75CL', 57, 0, 0, 75, '', 'kasbah-prestige-rouge-75cl', '', 0, 3, 1, '', '16.0 / 18.0', 7, 6, 8, 6, '', '', 'Belle robe rouge violine, profonde et limpide', 0, 'Beni M\'Tir', 'Cabernet sauvignon, Merlot, Syrah', 'REF0712', 1),
(827, 8, 10, 23, 1, 'KASBAH PRESTIGE ROSE 75CL', 315, 0, 0, 75, '', 'kasbah-prestige-rose-75cl', '', 0, 4, 1, '', '10.0', 6, 6, 5, 5, '', '', 'Belle robe rose pâle aux reflets dorés', 0, 'Beni M\'Tir', 'Syrah, Cabernet sauvignon', 'REF0713', 1),
(828, 8, 10, 23, 1, 'KASBAH PRESTIGE BLANC 75 CL', 208, 0, 0, 75, '', 'kasbah-prestige-blanc-75-cl', '', 0, 1, 1, '', '10.0', 6, 8, 5, 5, '', '', 'Belle robe jaune pâle aux reflets gris', 0, 'Beni M\'Tir', 'Vermentino', 'REF0740', 1),
(829, 8, 10, 23, 1, 'BONASSIA BLANC', 111, 0, 0, 75, '', 'bonassia-blanc', '', 0, 1, 1, '', '10.0', 7, 7, 5, 7, '', '', 'Belle robe jaune pâle aux reflets gris,', 0, 'Beni M\'Tir', 'Vermentino', 'REF0741', 1),
(830, 8, 10, 23, 1, 'PASSION ROUGE 75CL', 110, 0, 0, 75, '', 'passion-rouge-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0773', 1),
(831, 8, 10, 23, 1, 'TOUAREG ROUGE 75CL', 90, 0, 0, 75, '', 'touareg-rouge-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0774', 1),
(832, 8, 10, 23, 1, 'TOUAREG ROSÉ', 52, 0, 0, 75, '', 'touareg-ros', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0791', 1),
(833, 8, 10, 23, 1, 'TOUAREG BLANC', 42, 0, 0, 75, '', 'touareg-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0792', 1),
(834, 8, 10, 23, 1, 'DOMAINE JIRRY CHARDONNAY', 44, 0, 0, 75, '', 'domaine-jirry-chardonnay', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0793', 1),
(835, 8, 10, 23, 1, 'SAHARI ROUGE', 44, 0, 0, 75, '', 'sahari-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0796', 1),
(836, 8, 10, 23, 1, 'SAFIR DE GUEROUANE ROUGE', 53, 0, 0, 75, '', 'safir-de-guerouane-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0797', 1),
(837, 8, 10, 23, 1, 'PASSION BLANC', 103, 0, 0, 75, '', 'passion-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0798', 1),
(838, 8, 10, 23, 1, 'PASSION ROSÉ', 55, 0, 0, 75, '', 'passion-ros', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0799', 1),
(839, 8, 10, 23, 1, 'ECLIPSE GRIS ', 66, 0, 0, 75, '', 'eclipse-gris', '', 0, 5, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0800', 1),
(840, 8, 10, 23, 1, 'LA GAZELLE DE MOGADORE ROUGE', 66, 0, 0, 75, '', 'la-gazelle-de-mogadore-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'cabernet sauvignon', 'REF0827', 1),
(841, 8, 10, 23, 1, 'LA GAZELLE DE MOGADORE ROSÉ', 142, 0, 0, 75, '', 'la-gazelle-de-mogadore-ros', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'cabernet sauvignon', 'REF0828', 1),
(842, 8, 10, 23, 1, 'LA GAZELLE DE MOGADORE BLANC', 65, 0, 0, 75, '', 'la-gazelle-de-mogadore-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0829', 1),
(843, 8, 10, 23, 1, 'LE VAL D\'ARGAN', 44, 0, 0, 75, '', 'le-val-d-argan', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0830', 1),
(844, 8, 10, 23, 1, 'CB SIGNATURE ROUGE ', 179, 0, 0, 75, '', 'cb-signature-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah du Maroc', 'REF0899', 1),
(845, 8, 10, 23, 1, 'CB SIGNATURE BLANC ', 140, 0, 0, 75, '', 'cb-signature-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0900', 1),
(846, 8, 10, 23, 1, 'CB SIGNATURE ROUGE ', 140, 0, 0, 75, '', 'cb-signature-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0906', 1),
(847, 8, 10, 23, 1, 'CB SIGNATURE BLANC ', 182, 0, 0, 75, '', 'cb-signature-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0907', 1),
(848, 8, 10, 23, 1, 'ITHAQUE ROUGE 75CL', 209, 0, 0, 75, '', 'ithaque-rouge-75cl', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0960', 1),
(849, 8, 10, 23, 1, 'ODYSSEE BLANC 75CL', 209, 0, 0, 75, '', 'odyssee-blanc-75cl', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Muscat, agrumes, mangue', 'REF0961', 1),
(850, 8, 3, 25, 1, 'HALANA PRESTIGE ', 71, 0, 0, 75, '', 'halana-prestige', '', 0, 3, 1, '', '14.0', 8, 9, 7, 8, '', '', 'Belle robe carmin, reflets bruns.', 1, 'Beni M\'Tir', 'Syrah ; cinsault', 'REF0978', 17),
(851, 8, 10, 23, 1, '1/2 SAHARI RESERVE BLANC', 58, 0, 0, 38, '', '1-2-sahari-reserve-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah, fruit rouge, cabernet', 'REF1079', 1),
(852, 8, 10, 23, 1, '1/2 MEDAILLON ROUGE', 61, 0, 0, 38, '', '1-2-medaillon-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1083', 1),
(853, 8, 10, 23, 1, '1/2 MEDAILLON ROSE ', 61, 0, 0, 38, '', '1-2-medaillon-rose', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', 'REF1084', 1),
(854, 8, 10, 23, 1, '1/2 MEDAILLON BLANC 37,5 CL', 61, 0, 0, 38, '', '1-2-medaillon-blanc-37-5-cl', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1085', 1),
(855, 10, 10, 1, 1, 'BORDEAUX BLAISSAC', 79, 0, 0, 75, '', 'bordeaux-blaissac', '2015', 0, 1, 8, 'Prêt à boire', '8°et 10°', 5, 7, 6, 6, 'Fruité et Charnu', '', 'Robe Brique', 1, 'Bordeaux', 'Sémillant-Sauvignon', 'REF1090', 14),
(856, 8, 10, 23, 1, '1/2 SEMILLANT BLANC', 26, 0, 0, 38, '', '1-2-semillant-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1114', 1),
(857, 8, 10, 23, 1, 'MEDAILLON GRIS 75CL', 104, 0, 0, 75, '', 'medaillon-gris-75cl', '', 0, 5, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1139', 1),
(858, 8, 10, 23, 1, 'CUVÉE PREMIÈRE BLANC 75CL', 62, 0, 0, 75, '', 'cuv-e-premi-re-blanc-75cl', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1140', 1),
(859, 8, 10, 23, 1, 'BEAUVALLON BLANC 75CL', 83, 0, 0, 75, '', 'beauvallon-blanc-75cl', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1142', 1),
(860, 8, 10, 23, 1, 'SOLO CABERNET SAUVIGNON ROSÉ', 52, 0, 0, 75, '', 'solo-cabernet-sauvignon-ros', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'cabernet sauvignon', 'REF1143', 1),
(861, 8, 10, 23, 1, 'SOLO CABERNET SAUV ROUGE', 52, 0, 0, 75, '', 'solo-cabernet-sauv-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'cabernet sauvignon', 'REF1144', 1),
(862, 8, 10, 23, 1, 'SOLO MERLOT ROUGE ', 52, 0, 0, 75, '', 'solo-merlot-rouge', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Merlot', 'REF1145', 1),
(863, 8, 10, 23, 1, 'SOLO SAUVIGNON BLANC ', 52, 0, 0, 75, '', 'solo-sauvignon-blanc', '', 0, 1, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Sauvignon blanc', 'REF1146', 1),
(864, 8, 10, 23, 1, 'SOLO SYRAH SYRAH', 52, 0, 0, 75, '', 'solo-syrah-syrah', '', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', 'Syrah', 'REF1147', 1),
(865, 8, 10, 23, 1, 'CUVEE BACCARI ROUGE 2013', 168, 0, 0, 75, '', 'cuvee-baccari-rouge-2013', '2013', 0, 3, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1155', 1),
(866, 8, 10, 23, 1, 'CUVEE BACCARI ROSÉ 75 CL', 137, 0, 0, 75, '', 'cuvee-baccari-ros-75-cl', '', 0, 4, 1, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF1156', 1),
(867, 10, NULL, 16, 3, 'VEUVE GALIEN', 0, 0, 0, 75, 'Blanc - 12°', 'veuve-galien', '', 1, 1, NULL, 'Prêt à boire', '8°', 5, 5, 5, 0, 'Riche et Rond', 'Sa robe paille clair annonce un nez bouqueté de fruits jaunes et de biscuits. En bouche le vin est équilibré, plein, rond et fin avec du caractère. Ses bulles sont fines et crémeuses. Réussi.', 'Robe paille clair', 1, 'Champagne', 'Pinot noir,Chardonnay', '017336', 0),
(868, 10, NULL, 16, 3, 'BOLLINGER Spécial Cuvée Brut', 0, 0, 0, 75, 'Blanc - 12°', 'bollinger-special-cuvee-brut', '', 1, 1, NULL, 'Prêt à boire', '8°', 6, 6, 6, 0, 'Riche et puissant', 'Sa robe paille offre un jolie nez bouqueté de noisettes et de biscuits. En bouche ce vin de caractère présente un bel équilibre et de la profondeur . Corsé, plein et ample sur notes minérales, ce vin a une finale tendue vibrante sur des bulles fondantes.', 'Robe paille ', 1, 'Champagne', 'Pinot noir,Pinot meunier,Chardonnay', '017663', 0),
(869, 10, NULL, 24, 3, 'TAITTINGER Brut Réserve ', 0, 0, 0, 75, 'Blanc - 12°', 'taittinger-brut-reserve', '', 1, 1, NULL, 'Prêt à boire', '8°', 6, 5, 7, 0, 'Frais et fruité', 'Ce vin offre un nez expressif  sur des notes fruitées et briochées , arômes de pêche, fleurs blanches. L\'attaque en bouche est vive et fraîche, le vin tapisse le palais et déploie ses saveurs fruitées relevants une belle complexité miellée et épicée', 'Robe jaune paille', 1, 'Champagne', 'Pinot noir,Chardonnay', '018233', 0),
(870, 10, NULL, 24, 3, 'KRUG Grande Cuvée', 0, 0, 0, 75, 'Blanc - 12°', 'krug-grande-cuvee', '', 1, 1, NULL, 'Prêt à boire', '9°', 6, 6, 5, 0, 'Riche et puissant', 'Sa robe paille offre un joli nez qui s\'ouvre sur des notes vanillées et boisées aux arômes de fruits jaunes et de nougatine. En bouche ce vin est corsé,typé, vif et vineux avec des bulles fines et fondantes.', 'Robe paille ', 1, 'Champagne', 'Pinot noir,Chardonnay', '037563', 0),
(871, 10, 4, 24, 3, 'HEIDSIECK MONOPOLE Blue Top', 0, 0, 0, 75, 'Blanc - 12°', 'heidsieck-monopole-blue-top', '', 1, 1, NULL, 'Prêt à boire', '8°', 5, 5, 4, 0, 'Puissant et fruité', 'Grande richesse aromatique avec des notes épicées, toastées ou encore beurrées. En bouche , son attaque est franche annonçant une bouche pleine et fruitée.', 'Robe paille clair aux reflets émeraude ', 1, 'Champagne', 'Chardonnay,Pinot meunier,Pinot noir', '111787', 0),
(872, 10, 4, 24, 3, 'VRANKEN Brut', 380, 0, 0, 75, 'Blanc - 12°', 'vranken-brut', '', 1, 1, NULL, 'Prêt à boire', '8°', 5, 5, 4, 0, 'Frais et fruité', 'Sa robe paille offre un nez riche d\'arômes mêlant amandes grillées , fruits jaunes et fleurs blanches. En bouche, ce vin est harmonieux et franc , une finale longue et onctueuse avec des bulles délicates.', 'Robe paille ', 1, 'Champagne', 'Chardonnay,Pinot meunier,Pinot noir', '120778', 0),
(873, 10, 4, 24, 36, 'VRANKEN Rosé', 0, 0, 0, 75, 'Rosé - 12°', 'vranken-rose', '', 1, 4, NULL, 'Prêt à boire', '8°', 5, 5, 4, 0, 'Fruité et Charnu', 'Ce vin offre un nez expressif de fruits rouges et de cerises confites avec des notes vanillées et boisées . En bouche , il est ample et plein avec des bulles fines et fondantes .', 'Robe saumonée', 1, 'Champagne', 'Pinot noir', '158577', 0),
(874, 10, NULL, 24, 3, 'POL ROGER Brut', 0, 0, 0, 75, 'Blanc - 12°', 'pol-roger-brut', '', 1, 1, NULL, 'Prêt à boire', '8°', 5, 7, 6, 0, 'Fruité et Charnu', 'Sa robe dorée offre un nez de fruits jaunes, abricots et miel .En bouche, ce vin est vineux, corsé, plein et nerveux avec une finale délicate sur des bulles fines.', 'Robe Or', 1, 'Champagne', 'Pinot noir,Pinot meunier,Chardonnay', '160084', 0),
(875, 10, NULL, 24, 3, 'PERRIER-JOUET Belle Epoque', 2429, 0, 0, 75, 'Blanc - 12°', 'perrier-jouet-belle-epoque', '', 0, 1, NULL, 'Prêt à boire', '10°', 6, 6, 7, 0, 'Fruité et frais', 'Ce vin offre des notes florales de magnolia, de chèvrefeuilles, ainsi que d\'arômes d\'agrumes enveloppés de notes de poire et de pêche mûres. En bouche l\'attaque est franche avec une fraîcheur cristalline dévoilant fruits blanc et lait d\'amande.', 'Robe claire aux reflets dorés', 1, '', 'Chardonnay,Pinot meunier,Pinot noir', '177946', 14),
(876, 10, NULL, 24, 3, 'DEUTZ Classic Brut', 684, 0, 0, 75, 'Blanc - 12°', 'deutz-classic-brut', '', 0, 1, NULL, 'Prêt à boire', '8°', 6, 5, 5, 0, 'Fruité et frais', 'Sa robe paille claire offre un nez épanoui de biscuits et d\'amandes grillées. En bouche, il est équilibré, net, élégant et bien signé avec des notes minérales, Son allonge est fondue sur des bulles crémeuses.', 'Robe paille clair', 1, 'Champagne', 'Pinot noir,Pinot meunier,Chardonnay', '187241', 6),
(877, 10, NULL, 24, 3, 'PERRIER-JOUET Grand Brut', 682, 0, 0, 75, 'Blanc - 12°', 'perrier-jouet-grand-brut', '', 0, 1, NULL, 'Prêt à boire', '9°', 6, 6, 5, 0, 'Riche et Rond', 'Sa belle robe jaune limpide est très brillante à la mousse et cordons consistants . Ce vin offre, au nez, des notes pain grillé et d\'abricot frais. En bouche son attaque est riche te complexe avec de la rondeur sur des notes de noisettes grillées et d\'ama', 'Robe Jaune or', 1, 'Champagne', 'Pinot noir,Chardonnay', '195764', 7),
(878, 10, 4, 24, 3, 'DEMOISELLE VRANKEN Tête de Cuvée Brut', 380, 0, 0, 75, 'Blanc - 12°', 'demoiselle-vranken-tte-de-cuve-brut', '', 0, 1, NULL, 'Prêt à boire', '8°', 5, 4, 5, 0, 'Frais et fruité', 'Sa robe paille soutenu offre un nez bouqueté aux notes briochées. En bouche ce vin est équilibré, plein et rond avec une belle allonge et des bulles fondantes.', 'Robe paille clair', 1, 'Champagne', 'Pinot noir,Chardonnay', '195982', 19),
(879, 10, NULL, 24, 3, 'BESSERAT DE BELLEFON Grande Tradition', 600, 0, 0, 75, 'Blanc - 12°', 'besserat-de-bellefon-grande-tradition', '', 0, 1, NULL, 'Prêt à boire', '8°', 5, 6, 5, 0, 'Riche et Rond', 'Son nez est dominé par des arômes floraux de rose subtils et élégants. L\'attaque en bouche, fraîche et équilibrée, délivre des notes de fruits rouges en harmonie avec des fragrances de miel. La finale est longue et charnu signe d\'un vin ample et équilibré', 'Robe jaune clair', 1, 'Champagne', 'Pinot noir,Pinot meunier,Chardonnay', '204172', 9),
(880, 10, NULL, 24, 36, 'BESSERAT DE BELLEFON Cuvée des Moines Rosé', 740, 0, 0, 75, 'Rosé - 12°', 'besserat-de-bellefon-cuve-des-moines-ros', '', 0, 4, NULL, 'Prêt à boire', '9°', 6, 6, 4, 0, 'Fruité et léger ', 'Sa robe saumonée offre un nez frais de fruits rouges . En bouche, ce vin typé présente de la finesse et de l\'élégance. Il est franc et nerveux avec une finale tendue sous bulles fines.', 'Robe saumonée', 1, '', 'Pinot noir,Pinot meunier,Chardonnay', '259602', 6),
(881, 10, NULL, 24, 2, 'LAURENT PERRIER Ultra Brut', 0, 0, 0, 75, 'Blanc - 12°', 'laurent-perrier-ultra-brut', '', 0, 1, NULL, 'Prêt à boire', '8°', 4, 6, 4, 0, 'Fruité et frais', 'Sa robe paille clair offre un nez discret de pomme verte. En bouche , ce vin est léger avec une finale tendue.', 'Robe paille clair', 0, 'Champagne', 'Pinot noir,Chardonnay', '267723', 0),
(883, 8, NULL, 25, 1, 'SAHARI GRIS  ', 0, 0, 0, 37, '', 'sahari-gris', '2016', 1, 5, NULL, '1 an', 'Entre 8 et 10°', 5, 8, 7, 8, 'Le nez offre des arômes de pêche blanche & abricot', 'Bonne fraîcheur, rond et vif', 'Belle robe saumon pâle', 0, 'VQS', 'Cinsault', '', 0),
(884, 8, NULL, 25, 1, 'SAHARI RESERVE BLANC  ', 0, 0, 0, 75, '', 'sahari-reserve-blanc', '2016', 0, 1, NULL, '1 an', 'Entre 8 et 10°', 5, 8, 7, 8, 'Le nez offre des arômes floraux de genêt d\'Espagne et de poire', 'Bonne fraîcheur, rond et vif', 'Belle robe jaune pâle', 0, 'VQS', 'Grenache blanc', 'REF0173', 0),
(885, 8, NULL, 25, 1, 'SAHARI RESERVE BLANC  ', 0, 0, 0, 75, '', 'sahari-reserve-blanc', '2016', 0, 1, NULL, '1 an', 'Entre 8 et 10°', 5, 8, 7, 8, 'Le nez offre des arômes floraux de genêt d\'Espagne et de poire', 'Bonne fraîcheur, rond et vif', 'Belle robe jaune pâle', 0, 'VQS', 'Grenache blanc', 'REF0173', 0),
(886, 8, NULL, 25, 1, 'SAHARI RESERVE BLANC  ', 0, 0, 0, 37, '', 'sahari-reserve-blanc', '2016', 0, 1, NULL, '1 an', 'Entre 8 et 10°', 5, 8, 7, 8, 'Le nez offre des arômes floraux de genêt d\'Espagne et de poire', 'Bonne fraîcheur, rond et vif', 'Belle robe jaune pâle', 0, 'VQS', 'Grenache blanc', 'REF1079', 0),
(887, 8, NULL, 25, 1, 'SAHARI ROUGE  ', 0, 0, 0, 37, '', 'sahari-rouge', '2016', 0, 3, NULL, '2 ans', 'Entre 16 et 18°', 5, 7, 7, 6, 'Le nez offre des arômes de fruits rouges', 'Bonne fraîcheur, rond et souple', 'Belle robe rouge', 0, 'VQS', 'Grenache Carignan Cinsault', 'REF0001', 0),
(888, 8, NULL, 25, 1, 'SAHARI ROUGE  ', 0, 0, 0, 75, 'Le', 'sahari-rouge', '2016', 0, 3, NULL, '2 ans', 'Entre 16 et 18°', 5, 7, 7, 6, 'Le nez offre des arômes de fruits rouges', 'Bonne fraîcheur, rond et souple', 'Belle robe rouge', 0, 'VQS', 'Grenache Carignan Cinsault', 'REF0194', 0),
(889, 8, NULL, 25, 1, 'SAHARI RESERVE ROUGE  ', 0, 0, 0, 75, '', 'sahari-reserve-rouge', '2015', 0, 3, NULL, '4 ans', 'Entre 16 et 18°', 8, 6, 8, 7, 'Le nez offre des arômes boisés et toastés', 'Bonne rondeur et élégance, structuré et persistant', 'Belle robe rouge', 0, 'VQS', 'Grenache Carignan Syrah', 'REF0172', 0),
(891, 8, NULL, 25, 1, 'SAHARI RESERVE ROSE  ', 0, 0, 0, 37, '', 'sahari-reserve-rose', '2016', 0, 4, NULL, '1 an', 'Entre 8 et 10°', 5, 8, 7, 8, 'Le nez offre des arômes de pamplemousse rose ', 'Bonne fraîcheur, rond et gourmand', 'Belle robe corail', 0, 'VQS', 'Syrah', 'REF0002', 0),
(892, 8, NULL, 25, 1, 'SAHARI RESERVE ROSE  ', 0, 0, 0, 75, '', 'sahari-reserve-rose', '2016', 0, 4, NULL, '1 an', 'Entre 8 et 10°', 5, 8, 7, 8, 'Le nez offre des arômes de pamplemousse rose ', 'Bonne fraîcheur, rond et gourmand', 'Belle robe corail', 0, 'VQS', 'Syrah', 'REF0174', 0),
(893, 8, NULL, 25, 1, 'DOMAINE JIRRY CHARDONNAY', 0, 0, 0, 75, '', 'domaine-jirry-chardonnay', '2016', 0, 3, NULL, '2 ans', '8°', 6, 8, 7, 5, 'fruité, doux', '', 'jaune doré', 0, 'VQS', 'Chardonnay', 'REF0793', 0),
(894, 8, NULL, 25, 1, 'ECLIPSE GRIS ', 0, 0, 0, 75, '', 'eclipse-gris', '2015', 0, 5, NULL, '2 ans', '8°', 6, 8, 6, 5, 'fruité, doux', '', 'Saumoné pâle', 0, 'Guerrouane', 'Grenache', 'REF0800', 0),
(895, 8, NULL, 25, 1, 'TOUAREG ROSÉ', 0, 0, 0, 75, '', 'touareg-rose', '2015', 0, 4, NULL, '1 an', '8°', 6, 8, 6, 5, 'Fruité, doux', '', 'Rose pâle saumoné', 0, 'Guerrouane', 'Mourvedre, cinsaut, grenache, syrah', 'REF0791', 0),
(896, 8, NULL, 25, 1, 'PASSION ROSÉ', 0, 0, 0, 75, '', 'passion-rose', '2015', 0, 4, NULL, '2 ans', '8°', 6, 8, 6, 7, 'Fruité, doux', '', 'Rose pâle saumoné', 0, 'Guerrouane', 'mourvedre, syrah', 'REF0799', 0),
(897, 8, NULL, 25, 1, 'LUMIÈRE ROUGE', 0, 0, 0, 75, '', 'lumiere-rouge', '2014', 0, 3, NULL, '5 ans', '18° à 20°', 7, 7, 5, 7, 'Structuré puissant persistant', '', 'Grenat sombre', 0, 'Guerrouane', 'Syrah', 'REF0602', 0),
(898, 8, NULL, 25, 1, 'ECLIPSE ROSÉ ', 0, 0, 0, 75, '', 'eclipse-rose', '2016', 0, 4, NULL, '1 an', '8°', 6, 9, 7, 7, 'Fruité, doux', '', 'Rose pâle saumoné', 0, 'Guerrouane', 'Syrah grenache mourvedre', 'REF0560', 0),
(899, 8, NULL, 25, 1, 'ECLIPSE ROUGE ', 0, 0, 0, 75, '', 'eclipse-rouge', '2015', 0, 3, NULL, '4 ans', '18° à 20°', 7, 7, 6, 7, 'Structuré puissant persistant', '', 'Grenat sombre', 0, 'Guerrouane', 'Syrah sangiovese', 'REF0171', 0),
(900, 8, NULL, 25, 1, 'MAGNUM ECLIPSE ROUGE', 0, 0, 0, 75, '', 'magnum-eclipse-rouge', '2015', 0, 3, NULL, '4 ans', '18° à 20°', 7, 7, 6, 7, 'Structuré puissant persistant', '', 'Grenat sombre', 0, 'Guerrouane', 'Syrah sangiovese', 'REF0600', 0),
(901, 8, NULL, 25, 1, 'PASSION ROUGE', 0, 0, 0, 75, '', 'passion-rouge', '2013', 0, 3, NULL, '2 ans', '18° à 20°', 7, 7, 6, 5, 'Structuré puissant persistant', '', 'Grenat sombre', 0, 'Guerrouane', 'Syrah, cot malbec, petit verdot', 'REF0773', 0),
(902, 8, NULL, 25, 1, 'SAFIR DE GUEROUANE ROUGE', 0, 0, 0, 75, '', 'safir-de-guerouane-rouge', '2015', 0, 3, NULL, '2 ans', '18° à 20°', 7, 7, 6, 4, 'Structuré puissant persistant', '', 'Grenat sombre', 0, 'Guerrouane', 'Syrah, tempranillo', 'REF0797', 0),
(903, 8, NULL, 25, 1, 'TOUAREG ROUGE ', 0, 0, 0, 75, '', 'touareg-rouge', '2014', 0, 3, NULL, '2 ans', '18° à 20°', 7, 7, 5, 5, 'Structuré puissant persistant', '', 'Grenat sombre', 0, '', 'syrah, tempranillo, cot malbec, petit verdo', 'REF0774', 0),
(904, 8, NULL, 25, 1, 'TOUAREG BLANC', 0, 0, 0, 75, '', 'touareg-blanc', '2015', 0, 1, NULL, '1 an', '8°', 6, 8, 7, 5, 'Fruité, doux', '', 'Jaune doré', 0, 'Guerrouane', 'vermentino, marsanne, muscat', 'REF0792', 0),
(905, 8, NULL, 25, 1, 'PASSION BLANC', 0, 0, 0, 75, '', 'passion-blanc', '2015', 0, 1, NULL, '2 ans', '8°', 6, 8, 7, 5, 'Fruité, doux', '', 'Jaune doré', 0, 'Guerrouane', 'Vermentino, marsanne, muscat ', 'REF0798', 0),
(906, 8, NULL, 25, 1, '1/2 SAHARI ROUGE', 0, 0, 0, 38, '', '1-2-sahari-rouge', '', 0, 3, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0001', 0),
(907, 8, 1, 25, 1, '1/2 SAHARI RESERVE ROSÉ', 0, 0, 0, 37, '', '1-2-sahari-reserve-rose', '', 0, 4, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0002', 0),
(908, 8, NULL, 25, 1, 'SAHARI RÉSERVE ROUGE', 0, 0, 0, 75, '', 'sahari-reserve-rouge', '', 0, 3, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, '', '', 'REF0173', 0),
(909, 8, NULL, 25, 1, 'SAHARI RÉSERVE ROSÉ ', 0, 0, 0, 75, '', 'sahari-reserve-rose', '', 0, 4, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, 'Guerrouane', '', 'REF0174', 0),
(910, 8, NULL, 25, 1, 'SAHARI RESERVE GRIS ', 0, 0, 0, 70, '', 'sahari-reserve-gris', '', 0, 5, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, 'Guerrouane', '', 'REF0255', 0),
(911, 8, NULL, 25, 1, 'SAHARI ROUGE  ', 0, 0, 0, 75, '', 'sahari-rouge', '', 0, 3, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, 'Guerrouane', '', 'REF0796', 0),
(912, 8, NULL, 25, 1, '1/2 SAHARI RESERVE BLANC', 0, 0, 0, 37, '', '1-2-sahari-reserve-blanc', '', 0, 1, NULL, '', '', 0, 0, 0, 0, '', '', '', 0, 'Guerrouane', '', 'REF1079', 0),
(913, 10, NULL, 6, 1, 'VDP DES MAURES ROSÉ', 73, 0, 0, 75, '', 'vdp-des-maures-ros', '2015', 0, 4, NULL, 'Prêt à boire', '10°', 6, 7, 5, 5, 'Fruité et Rond', '', '', 1, 'IGP des Maures', 'Cinsault et grenache', '472968', 8),
(914, NULL, NULL, 1, 1, 'CHÂTEAU SUAU ', 148, 0, 0, 75, '', 'chteau-suau', '2010', 0, NULL, NULL, 'Prêt à boire', '18°', 7, 8, 7, 6, 'Fruité et plein', '', '', 1, 'Côtes de Bordeaux', 'Merlot Cabernet Sauvignon', '467914', 8),
(915, 10, NULL, 1, 1, 'CHÂTEAU ROUSTAING ', 96, 0, 0, 75, '', 'chteau-roustaing', '2015', 0, NULL, 1, 'Fin 2018', '18°', 6, 7, 5, 8, 'Fruité et souple', '', '', 1, 'Bordeaux', 'Merlot Cabernet Sauvignon', '474976', 8),
(916, NULL, NULL, 7, 1, 'VDP CT TARN  MOELLEUX ', 65, 0, 0, 75, '', 'vdp-ct-tarn-moelleux', '2015', 0, NULL, NULL, 'Prêt à boire', '8° et 10°', 7, 8, 6, 8, 'Bouqueté et souple', '', '', 1, 'Côtes de Tarn', '', '472910', 9),
(917, 10, NULL, 19, 1, 'CHÂTEAU DU BOIS DE LA GARDE ', 118, 0, 0, 75, '', 'chteau-du-bois-de-la-garde', '2012', 0, NULL, NULL, 'Prêt à boire', '16°', 8, 7, 8, 9, 'Fruité et plein', '', '', 1, 'Rhône', 'Cinsault-Syrah-Mourvedre-Grenache noir', '472719', 11),
(918, 10, NULL, 1, 1, 'BARON DE LESTAC ', 110, 0, 0, 75, '', 'baron-de-lestac', '2014', 0, 3, 7, 'Prêt à boire', '8° et 10°', 6, 7, 5, 7, 'Bouqueté et corsé à point', '', '', 1, 'Bordeaux', 'Cabernet Sauvignon - Merlot et cabernet franc', '169485', 8),
(919, 10, NULL, 4, 1, 'POUILLY FUME DME RENAUD ', 208, 0, 0, 75, '', 'pouilly-fume-dme-renaud', '2015', 0, NULL, 8, 'Prêt à boire', '9°', 7, 8, 7, 7, 'Fruité et Charnu', '', '', 1, 'Pouilly Fumé', 'Sauvignon', '473656', 11),
(920, 10, NULL, 1, 1, 'CHÂTEAU CORBIN ', 209, 0, 0, 75, '', 'chteau-corbin', '2011', 0, NULL, 6, 'Fin 2020', '18°', 8, 6, 8, 7, 'Bouqueté et souple', '', '', 1, 'Montagne Saint Emilion', 'Merlot - Cabernet sauvignon', '474076', 6),
(921, 10, NULL, 4, 1, 'SAUMUR ROUGE ', 92, 0, 0, 75, '', 'saumur-rouge', '2015', 0, 3, 2, '2015-2020', '16°', 5, 6, 5, 5, 'Fruité et plein', '', '', 0, 'Saumur', 'Cabernet franc', '473822', 0),
(922, 10, NULL, 1, 1, 'CHÂTEAU BEL AIR ', 215, 0, 0, 75, '', 'chteau-bel-air', '2013', 0, NULL, 8, '2013-2019', '18°', 7, 5, 6, 7, 'Fruité et Charnu', '', '', 1, 'Lussac Saint Emilion', 'Merlot - Cabernet sauvignon et cabernet franc', '475584', 6),
(924, 10, NULL, 1, 1, 'CHÂTEAU SAINT LEON  ', 131, 0, 0, 75, '', 'chteau-saint-leon', '2013', 0, NULL, 1, '2013-2021', '18°', 6, 7, 6, 6, 'Fruité et souple', '', '', 1, 'Bordeaux Supérieur', 'Merlot - Cabernet sauvignon', '165836', 8),
(925, NULL, NULL, 2, 1, 'BOURG ALIGOTE VAUS SERI ', 145, 0, 0, 75, '', 'bourg-aligote-vaus-seri', '2015', 0, NULL, NULL, 'Prêt à boire', '8°', 6, 8, 5, 6, 'Fruité et sec', '', '', 1, 'Bourgogne', 'Aligoté', '473352', 7),
(926, 10, NULL, 3, 1, 'VDP PRINCIPAUTE D\'ORANGE ', 64, 0, 0, 75, '', 'vdp-principaute-d-orange', '2015', 0, NULL, 1, 'Prêt à boire', '16°', 6, 5, 6, 5, 'Fruité et souple', '', '', 1, 'IGP de la Principauté d\'orange', '', '472909', 11),
(927, 10, NULL, 4, 3, 'CREMANT LOIRE CHANCENY ', 135, 0, 0, 75, '', 'cremant-loire-chanceny', '', 0, 1, 4, 'Prêt à boire', '8°', 7, 8, 6, 6, 'Fruité et nerveux', '', '', 1, 'Crémant de Loire', 'Cabernet Franc,Chenin blanc,Chardonnay', '415176', 8),
(928, 10, NULL, 11, 1, 'PRIEURE D AMILHAC ', 106, 0, 0, 75, '', 'prieure-d-amilhac', '2015', 0, NULL, NULL, 'Prêt à boire', '8° et 10°', 6, 7, 5, 5, 'Fruité et ronde', '', '', 1, 'IGP des côtes de Thongue', 'Chardonnay', '472971', 6),
(929, 10, NULL, 1, 1, ' CHÂTEAU HAUT RIAN ', 103, 0, 0, 75, '', 'chteau-haut-rian', '2015', 0, 1, 1, '2015-2018', '8°', 7, 6, 6, 5, 'Fruité et souple', '', '', 1, 'Entre deux Mers', 'Sémillant-Sauvignon', '473056', 6),
(930, 10, NULL, 1, 1, 'CRU DE LA MAQUELINE', 136, 0, 0, 75, '', 'cru-de-la-maqueline', '2014', 0, NULL, NULL, '2014-2019', '18°', 7, 5, 6, 6, 'Fruité et rond', '', '', 1, 'Bordeaux', 'Merlot-Cabernet sauvignon', 'REF0889', 7),
(931, 10, NULL, 3, 1, 'COTE DU RHONE JEANTE ', 115, 0, 0, 75, '', 'cote-du-rhone-jeante', '2015', 0, NULL, NULL, 'Fin 2019', '16°', 6, 5, 5, 5, 'Fruité et souple', '', '', 0, 'Côtes du Rhône Village', 'Syrah-Grenache-Mourveèdre', '168448', 0),
(933, 10, NULL, 1, 1, 'PETIT CORBIN D\'ESPAGNE', 385, 0, 0, 75, '', 'petit-corbin-d-espagne', '2012', 0, NULL, NULL, 'Fin 2020', '16°et18°', 8, 6, 8, 8, 'Fruité et soyeux', '', '', 1, 'Saint Emilion grand cru', 'Merlot-Cabernet Sauvignon', '471080', 7),
(934, 10, NULL, 4, 1, 'DME LA PERREE BOURGUEIL ', 147, 0, 0, 75, '', 'dme-la-perree-bourgueil', '2014', 0, NULL, 8, 'Prêt à boire', '15°', 5, 6, 6, 5, 'Fruité et Charnu', '', '', 1, 'Bourgueil', 'Cabernet Franc', '470678', 6),
(935, 10, NULL, 2, 1, 'VIRE CLISSE V ', 199, 0, 0, 75, '', 'vire-clisse-v', '2015', 0, 1, 8, 'Peut être conservé', '8°', 6, 6, 5, 5, 'Fruité et Charnu', '', '', 1, 'Viré-Clessé', 'Chardonnay', '473987', 6),
(936, 10, NULL, 1, 1, 'CHÂTEAU LACAUSSADE ST MARTIN ', 141, 0, 0, 75, '', 'chteau-lacaussade-st-martin', '2014', 0, 3, 1, 'Jusqu\'en 2019', '17°', 7, 6, 6, 5, 'Fruité et souple', '', '', 1, 'Côtes de Blaye', 'Cabernet Sauvignon-Merlot-Cabernet Franc', '472762', 10),
(937, 10, NULL, 1, 1, 'CHÂTEAU FERRANDE ', 237, 0, 0, 75, '', 'chteau-ferrande', '2013', 0, 3, NULL, 'Prêt à boire', '18°', 8, 6, 6, 8, 'Fruité et rond', '', '', 1, 'Grave', 'Cabernet Sauvignon-Merlot', 'REF0983', 6),
(938, 10, NULL, 11, 1, 'LES ORMES DE CAMBRAS CHAR', 77, 0, 0, 75, '', 'les-ormes-de-cambras-char', '2015', 0, NULL, NULL, 'Prêt à boire', '8°et 10°', 5, 7, 4, 4, 'Fruité et Frais', '', '', 1, 'Pays d\'Oc', 'Chardonnay', '164960', 12),
(939, 10, NULL, 1, 1, 'CHÂTEAU LESTAGE ', 252, 0, 0, 75, '', 'chteau-lestage', '2012', 0, NULL, NULL, 'Jusqu\'en 2021', '18°', 8, 6, 7, 6, 'Riche et Puissant', '', '', 1, 'Listrac de Médoc', 'Cabernet Sauvignon-Merlot-Petit Verdot', '475733', 7),
(940, 10, NULL, 2, 1, 'BOURGOGNE RG Louis Girard', 145, 0, 0, 75, '', 'bourgogne-rg-louis-girard', '2014', 0, NULL, 1, 'Prêt à boire', '17°', 5, 6, 5, 5, 'Fruité et souple', '', '', 1, 'Bourgogne', 'Pinot Noir', '167638', 11),
(941, 10, NULL, 1, 1, 'CHÂTEAU MALBEC ', 148, 0, 0, 75, '', 'chteau-malbec', '2012', 0, NULL, 8, 'Fin 2018', '17°', 6, 6, 7, 6, 'Fruité et Charnu', '', '', 1, 'Bordeaux', 'Merlot-Cabernet Sauvignon-Cabernet Franc-Malbec', '161832', 5),
(942, 10, NULL, 1, 1, 'CHÂTEAU GOELANE ', 152, 0, 0, 75, '', 'chteau-goelane', '2011', 0, 3, 1, 'Prêt à boire', '17°', 7, 6, 6, 5, 'Fruité et souple', '', '', 1, 'Bordeaux Supérieur', 'Merlot-Cabernet sauvignon', '153199', 7),
(943, 10, NULL, 7, 1, 'COTE DE TARIQUET GASCOGN ', 184, 0, 0, 75, '', 'cote-de-tariquet-gascogn', '2015', 0, NULL, 1, 'Peut être conservé', '8°', 5, 6, 4, 5, 'Fruité et souple', '', '', 1, 'IGP Côtes de Gascogne', 'Sauvignon,Chardonnay', '473190', 13),
(945, 10, NULL, 1, 1, 'CH LA GRACE DIEU MENUTS ', 615, 0, 0, 75, '', 'ch-la-grace-dieu-menuts', '2010', 0, NULL, NULL, '2010-2021', '17°', 8, 6, 8, 8, 'Riche et Puissant', '', '', 1, 'Saint Emilion grand cru', 'Merlot-Cabernet Franc', '471835', 8),
(946, 10, NULL, 1, 1, 'CHÂTEAU DU LORT ', 154, 0, 0, 75, '', 'chteau-du-lort', '2012', 0, NULL, 7, 'jusqu\'en 2018', '17°', 6, 4, 6, 6, 'Bouqueté et corsé à point', '', '', 1, 'Bordeaux Supérieur', 'Cabernet Sauvignon-Merlot', '158776', 6),
(947, 10, NULL, 1, 1, 'LAROSE DE GRUAUD ', 678, 0, 0, 75, '', 'larose-de-gruaud', '2011', 0, NULL, 1, '2011-2025', '18°', 7, 6, 7, 7, 'Riche et Rond', '', '', 1, 'Saint Julien', 'Cabernet Sauvignon-Merlot-Petit Verdot-Cabernet Franc', '469258', 8),
(948, 10, NULL, 15, 1, 'COTE BROUILLY ESNARDS ', 187, 0, 0, 75, '', 'cote-brouilly-esnards', '2014', 0, NULL, 1, 'Prêt à boire', '16°', 5, 7, 6, 6, 'Fruité et Souple', '', '', 1, 'Côtes de Brouilly', 'Gamay', '470923', 6),
(949, 10, NULL, 4, 1, 'ROSE D\'ANJOU M CASTEL ', 92, 0, 0, 75, '', 'rose-d-anjou-m-castel', '2015', 0, NULL, NULL, 'Prêt à boire', '11°', 6, 7, 5, 5, 'Fruité et Rond', '', '', 1, 'Rosé d\'Anjou', 'Cabernet Franc', '183222', 7),
(950, 10, NULL, 4, 1, 'CHINON LES BRUYERES ', 149, 0, 0, 75, '', 'chinon-les-bruyeres', '2014', 0, NULL, 1, 'Prêt à boire', '16°', 5, 4, 4, 4, 'Fruité et souple', '', '', 1, 'Chinon', 'Cabernet Franc', '470679', 7),
(951, 10, NULL, 1, 1, 'CHÂTEAU HAUT MARBUZET ', 869, 0, 0, 75, '', 'chteau-haut-marbuzet', '2011', 0, NULL, NULL, '2011-2034', '18°', 7, 6, 6, 6, 'Riche et Rond', '', '', 1, 'Saint Estèphe', 'Cabernet Sauvignon-Merlot-Cabernet Franc', '464233', 6),
(952, 10, NULL, 1, 1, 'MG BARON DE LESTAC ', 198, 0, 0, 75, '', 'mg-baron-de-lestac', '2014', 0, 3, 2, 'Peut être conservé', '17°', 5, 4, 5, 5, 'Fruité et Plein', '', '', 1, 'Bordeaux', 'Cabernet Sauvignon-Merlot', '167753', 7),
(953, 10, NULL, 1, 1, 'CHATEAU DES DEMOISELLES ', 162, 0, 0, 75, '', 'chateau-des-demoiselles', '2012', 0, NULL, NULL, 'Prêt à boire', '18°', 6, 5, 6, 6, 'Riche et Puissant', '', '', 1, 'Côtes de Castillon', 'Cabernet Sauvignon-Merlot', '473103', 5),
(954, 10, NULL, 3, 1, 'DME DE LA LOUBIERE', 107, 0, 0, 75, '', 'dme-de-la-loubiere', '2015', 0, NULL, 8, 'Peut être conservé', '15°', 7, 4, 5, 5, 'Fruité et charnu', '', '', 1, 'Costière de Nîmes', 'Syrah-Grenach noir', '473040', 9),
(955, 10, NULL, 1, 1, 'CHÂTEAU DE CAMARSAC ', 166, 0, 0, 75, '', 'chteau-de-camarsac', '2011', 0, NULL, NULL, 'Jusqu\'en 2019', '18°', 6, 6, 5, 6, 'Riche et Rond', '', '', 1, 'Bordeaux Supérieur', 'Cabernet Sauvignon-Merlot', '468413', 6),
(956, 10, NULL, 4, 1, 'SAUMUR CHAMPIGNY LES LYS ', 151, 0, 0, 75, '', 'saumur-champigny-les-lys', '2014', 0, NULL, 1, 'Prêt à boire', '14°et16°', 7, 6, 6, 6, 'Fruité et souple', '', '', 1, 'Saumur Champigny', 'Cabernet Franc', '471474', 10),
(957, 10, NULL, 4, 1, 'CHÂTEAU DE NOE MUSCADET S/LI ', 86, 0, 0, 75, '', 'chteau-de-noe-muscadet-s-li', '2015', 0, NULL, NULL, 'Fin 2018', '8°', 5, 8, 5, 6, 'Fruité et Frais', '', '', 1, 'Muscadet Sèvre et Maine', 'Muscadet ', '473846', 8),
(958, 10, NULL, 1, 1, 'CHÂTEAU BARREYRES ', 298, 0, 0, 75, '', 'chteau-barreyres', '2012', 0, NULL, NULL, 'Jusqu\'en 2022', '18°', 7, 5, 7, 7, 'Fruité et rond', '', '', 1, 'Haut-Medoc', 'Cabernet Sauvignon-Merlot', '162894', 7),
(959, 10, NULL, 1, 1, 'LES CHARMES MAGNOL ', 136, 0, 0, 75, '', 'les-charmes-magnol', '2014', 0, 3, 8, 'Peut être conservé', '8°', 5, 7, 5, 5, 'Fruité et Charnu', '', '', 1, 'Bordeaux', 'Sémillant-Sauvignon', '472001', 9),
(960, 10, NULL, 1, 1, 'CHÂTEAU TECHNEY ', 142, 0, 0, 75, '', 'chteau-techney', '2013', 0, 3, 8, 'Fin 2019', '18°', 6, 4, 5, 6, 'Fruité et Charnu', '', '', 1, 'Bordeaux Supérieur', 'Cabernet Sauvignon-Merlot-Malbec-Cabernet Franc', '168048', 9);

-- --------------------------------------------------------

--
-- Table structure for table `product_alliance`
--

CREATE TABLE `product_alliance` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `badge` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_alliance`
--

INSERT INTO `product_alliance` (`id`, `label`, `slug`, `description`, `badge`) VALUES
(4, 'Charcuterie', 'charcuterie', '<p>A l&rsquo;exception des terrines et des p&acirc;t&eacute;s, les vins blancs sont de sortie. D&eacute;couvrez quelles bouteilles d&eacute;boucher pour accompagner tous vos plats de charcuterie.</p>', '75dccd9dc055d2b849d237be7f3ec46f.png'),
(5, 'Fois gras', 'fois-gras', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Mi-cuit ou po&ecirc;l&eacute;&hellip; D&eacute;couvrez quelle bouteille d&eacute;boucher pour accompagner votre foie gras. Une chose est s&ucirc;re, les vins moelleux sont &agrave; l&rsquo;honneur.</span></p>', 'd4fc9b833f7d0a8d69f016c539fa4579.png'),
(6, 'Crustacés', 'crustacs', '<p>A d&eacute;guster crus ou cuisin&eacute;s&hellip; Les vins blancs secs et les champagnes s&rsquo;accorderont parfaitement avec les coquillages et crustac&eacute;s.</p>', '799e2a4919e54fc4368268d6f039e927.png'),
(7, 'Poisson grillé', 'poisson-grill', '<p>Retrouvez notre s&eacute;lection de vins blancs, ros&eacute;s et champagnes qui s&rsquo;accorderont parfaitement avec le poisson grill&eacute;.</p>', '6645360cd9d67402ecff9ea159c7317d.png'),
(8, 'poisson en sauce', 'poisson-en-sauce', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">D&eacute;couvrez notre s&eacute;lection de vins qui s&rsquo;accordera parfaitement avec le poisson en sauce.</span></p>', 'fd1be5eb8c2fb8bfd3783fbf65772faa.png'),
(9, 'Agneau', 'agneau', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Gigot, c&ocirc;tes ou &eacute;paule d&rsquo;agneau&hellip; D&eacute;couvrez notre s&eacute;lection de vins qui s&rsquo;accordera parfaitement avec l&rsquo;agneau.</span></p>', '627bfc18a5c6f59839b244cd9bd0871e.png'),
(10, 'Gibier', 'gibier', '<p>Retrouvez notre s&eacute;lection des meilleurs vins rouges pour accompagner un bon gibier.</p>', '93b2d73a7660215c7723c030ab79195d.png'),
(11, 'viande rouge', 'viande-rouge', '<p>R&ocirc;ti de b&oelig;uf ou plats en sauce&hellip; D&eacute;couvrez quelles bouteilles d&eacute;boucher pour accompagner parfaitement vos plats de viandes rouges.</p>', 'b81fd73db53d90390fb032b920aa1f94.png'),
(12, 'Fromage doux', 'fromage-doux', '<p>D&eacute;couvrez quelles bouteilles d&eacute;boucher pour accompagner parfaitement un plateau de fromages doux.</p>', '432231edb04ea61dba71a4304295efd1.png'),
(13, 'Fromage corsé', 'fromage-corse', '<p>D&eacute;couvrez quelles bouteilles d&eacute;boucher pour accompagner parfaitement un plateau de fromages cors&eacute;s.</p>', 'f679d54f9b2aa054f0e27f1befa233ef.png'),
(14, 'Tartes', 'tartes', '<p>Tarte amandine, tarte tatin ou aux fraises&hellip; D&eacute;couvrez notre s&eacute;lection de vins qui accompagnera vos tartes sucr&eacute;es et ravira vos papilles !</p>', 'a1d5f8aa67f5ce009e9cfbf37a2ee248.png'),
(15, 'Gâteau', 'gteau', '<p>Plut&ocirc;t g&acirc;teau ou p&acirc;tisserie? Retrouvez notre s&eacute;lection de vins qui s&rsquo;accordera parfaitement avec toutes vos envies sucr&eacute;es.</p>', 'a14bb6cffb29090eff1c5130de0d23de.png'),
(16, 'glaces et sorbets', 'glaces-et-sorbets', '<p>Une envie rafra&icirc;chissante? D&eacute;couvrez notre s&eacute;lection de champagnes qui s&rsquo;accordera parfaitement avec les glaces et sorbets.</p>', '56c699721ce924adc3d960111160b79e.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_alliance_join`
--

CREATE TABLE `product_alliance_join` (
  `product_id` int(11) NOT NULL,
  `product_alliance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_alliance_join`
--

INSERT INTO `product_alliance_join` (`product_id`, `product_alliance_id`) VALUES
(26, 6),
(26, 7),
(26, 12),
(26, 13),
(28, 4),
(28, 5),
(28, 6),
(29, 4),
(29, 5),
(29, 6),
(30, 5),
(30, 6),
(30, 7),
(31, 4),
(31, 6),
(31, 11),
(32, 9),
(32, 10),
(32, 12),
(33, 4),
(33, 6),
(33, 10),
(34, 4),
(34, 6),
(34, 12),
(35, 10),
(35, 11),
(35, 12),
(36, 9),
(36, 12),
(36, 13),
(37, 4),
(37, 6),
(37, 7),
(38, 6),
(38, 7),
(38, 10),
(39, 4),
(39, 7),
(39, 8),
(41, 11),
(41, 12),
(41, 13),
(42, 5),
(42, 6),
(42, 10),
(43, 4),
(43, 7),
(43, 9),
(44, 7),
(44, 9),
(44, 11),
(45, 4),
(45, 7),
(45, 8),
(46, 4),
(46, 5),
(46, 6),
(47, 8),
(47, 10),
(47, 11),
(49, 8),
(49, 9),
(49, 10),
(50, 4),
(50, 5),
(50, 6),
(51, 10),
(51, 11),
(51, 12),
(52, 5),
(52, 6),
(52, 7),
(53, 8),
(53, 9),
(53, 10),
(55, 5),
(55, 6),
(55, 7),
(56, 5),
(56, 6),
(56, 7),
(57, 4),
(57, 5),
(57, 6),
(60, 8),
(60, 9),
(60, 10),
(60, 11),
(61, 4),
(61, 5),
(61, 6),
(62, 5),
(62, 6),
(62, 7),
(63, 4),
(63, 7),
(63, 12),
(64, 5),
(64, 6),
(64, 7),
(65, 13),
(65, 14),
(65, 15),
(66, 8),
(66, 9),
(66, 10),
(96, 8),
(96, 14),
(96, 15),
(98, 7),
(98, 9),
(98, 14),
(99, 6),
(99, 8),
(99, 16),
(100, 6),
(100, 7),
(100, 16),
(110, 6),
(110, 8),
(110, 15),
(117, 6),
(117, 7),
(117, 8),
(502, 4),
(502, 6),
(502, 7),
(502, 8),
(505, 4),
(505, 11),
(505, 12),
(507, 11),
(508, 4),
(508, 7),
(508, 11),
(509, 11),
(510, 7),
(510, 11),
(511, 7),
(511, 12),
(511, 16),
(513, 7),
(513, 11),
(514, 4),
(514, 12),
(515, 9),
(515, 12),
(516, 11),
(518, 6),
(520, 11),
(520, 12),
(521, 4),
(521, 11),
(521, 13),
(522, 7),
(522, 8),
(523, 7),
(523, 11),
(524, 11),
(525, 7),
(526, 10),
(526, 11),
(526, 13),
(527, 7),
(530, 4),
(530, 7),
(531, 7),
(532, 6),
(533, 9),
(533, 11),
(533, 13),
(534, 6),
(535, 5),
(535, 11),
(535, 12),
(536, 11),
(537, 9),
(537, 11),
(537, 13),
(538, 5),
(538, 11),
(539, 7),
(539, 11),
(541, 11),
(542, 11),
(543, 6),
(543, 7),
(543, 8),
(543, 12),
(544, 11),
(544, 12),
(545, 6),
(546, 6),
(546, 8),
(546, 12),
(547, 11),
(548, 10),
(549, 7),
(549, 11),
(550, 11),
(551, 6),
(551, 7),
(556, 4),
(556, 5),
(556, 10),
(556, 11),
(557, 4),
(557, 11),
(557, 12),
(558, 10),
(558, 11),
(558, 13),
(559, 7),
(562, 11),
(563, 11),
(565, 11),
(566, 4),
(567, 6),
(567, 7),
(568, 4),
(568, 5),
(568, 10),
(568, 11),
(570, 4),
(570, 6),
(570, 7),
(571, 10),
(571, 11),
(572, 4),
(572, 7),
(572, 12),
(573, 11),
(573, 12),
(574, 6),
(576, 6),
(576, 11),
(577, 10),
(577, 11),
(579, 4),
(579, 12),
(580, 11),
(581, 11),
(581, 12),
(582, 10),
(582, 11),
(582, 13),
(583, 7),
(585, 11),
(586, 10),
(586, 11),
(586, 13),
(587, 11),
(588, 7),
(590, 10),
(590, 11),
(590, 13),
(592, 11),
(593, 7),
(593, 11),
(594, 11),
(595, 4),
(596, 5),
(597, 4),
(597, 12),
(597, 14),
(598, 11),
(601, 11),
(602, 7),
(602, 11),
(603, 4),
(603, 5),
(603, 13),
(604, 11),
(605, 7),
(606, 4),
(606, 7),
(606, 10),
(606, 11),
(607, 4),
(607, 6),
(607, 7),
(607, 8),
(608, 4),
(608, 6),
(608, 7),
(608, 8),
(609, 5),
(610, 4),
(610, 11),
(610, 12),
(611, 11),
(613, 4),
(613, 11),
(614, 4),
(614, 16),
(615, 6),
(616, 11),
(617, 4),
(618, 4),
(618, 7),
(619, 5),
(619, 14),
(620, 7),
(621, 4),
(621, 7),
(621, 10),
(621, 11),
(622, 4),
(622, 11),
(622, 12),
(623, 4),
(624, 10),
(624, 11),
(624, 12),
(625, 11),
(626, 4),
(626, 11),
(626, 12),
(627, 7),
(627, 11),
(628, 4),
(628, 6),
(628, 7),
(628, 8),
(629, 5),
(629, 9),
(629, 11),
(630, 7),
(631, 5),
(631, 11),
(631, 13),
(632, 4),
(632, 12),
(632, 14),
(633, 7),
(634, 7),
(634, 11),
(635, 11),
(636, 4),
(636, 9),
(636, 12),
(637, 11),
(639, 15),
(652, 4),
(652, 9),
(652, 11),
(655, 4),
(655, 12),
(656, 4),
(656, 11),
(656, 12),
(657, 9),
(657, 10),
(657, 13),
(661, 4),
(661, 11),
(661, 12),
(669, 4),
(669, 12),
(671, 4),
(671, 6),
(671, 12),
(675, 4),
(675, 9),
(675, 13),
(676, 4),
(676, 12),
(677, 4),
(677, 9),
(677, 13),
(682, 11),
(682, 12),
(682, 13),
(688, 4),
(688, 6),
(688, 7),
(694, 4),
(694, 11),
(694, 13),
(702, 6),
(702, 7),
(702, 12),
(708, 4),
(708, 11),
(708, 12),
(709, 14),
(711, 6),
(711, 7),
(711, 12),
(712, 4),
(712, 7),
(712, 12),
(713, 9),
(713, 11),
(713, 13),
(715, 7),
(720, 6),
(720, 7),
(726, 7),
(726, 11),
(728, 11),
(729, 6),
(729, 10),
(730, 4),
(730, 11),
(730, 13),
(731, 10),
(731, 11),
(731, 13),
(733, 11),
(734, 6),
(734, 10),
(735, 11),
(736, 6),
(736, 10),
(737, 11),
(738, 4),
(738, 6),
(738, 7),
(738, 8),
(739, 7),
(739, 11),
(740, 11),
(741, 4),
(741, 6),
(741, 7),
(741, 8),
(743, 4),
(743, 5),
(743, 7),
(744, 10),
(744, 11),
(744, 13),
(745, 7),
(746, 4),
(746, 7),
(746, 16),
(747, 5),
(747, 11),
(747, 13),
(748, 4),
(748, 6),
(748, 7),
(748, 8),
(750, 6),
(750, 12),
(750, 13),
(751, 7),
(751, 11),
(752, 6),
(752, 7),
(752, 12),
(753, 7),
(753, 8),
(753, 12),
(754, 7),
(755, 10),
(755, 11),
(755, 13),
(756, 7),
(756, 8),
(758, 4),
(758, 6),
(758, 7),
(758, 8),
(759, 6),
(759, 7),
(759, 12),
(761, 7),
(762, 4),
(762, 6),
(762, 7),
(762, 12),
(764, 7),
(765, 9),
(765, 13),
(766, 4),
(767, 7),
(767, 12),
(768, 7),
(768, 8),
(768, 12),
(769, 7),
(769, 11),
(771, 4),
(771, 7),
(772, 4),
(772, 7),
(773, 7),
(774, 6),
(774, 7),
(774, 12),
(776, 6),
(776, 7),
(776, 8),
(776, 12),
(776, 13),
(777, 6),
(777, 10),
(778, 4),
(778, 6),
(778, 7),
(798, 11),
(799, 10),
(799, 11),
(801, 7),
(801, 8),
(803, 7),
(803, 11),
(804, 7),
(806, 7),
(825, 7),
(826, 11),
(827, 7),
(828, 6),
(828, 7),
(828, 8),
(829, 6),
(829, 7),
(829, 8),
(855, 6),
(855, 7),
(855, 12),
(855, 13),
(867, 8),
(867, 11),
(867, 14),
(868, 8),
(868, 9),
(868, 11),
(869, 7),
(869, 8),
(869, 16),
(870, 8),
(870, 9),
(870, 11),
(871, 6),
(871, 7),
(871, 8),
(872, 6),
(872, 7),
(872, 8),
(873, 7),
(873, 9),
(873, 14),
(874, 8),
(874, 11),
(874, 14),
(875, 7),
(875, 9),
(875, 14),
(876, 6),
(876, 7),
(876, 16),
(877, 6),
(877, 7),
(877, 16),
(878, 6),
(878, 7),
(878, 16),
(879, 4),
(879, 7),
(879, 16),
(880, 7),
(880, 14),
(880, 16),
(881, 6),
(881, 7),
(881, 8),
(881, 9),
(913, 12),
(914, 4),
(914, 11),
(914, 12),
(914, 13),
(915, 4),
(915, 15),
(915, 16),
(916, 5),
(916, 12),
(916, 14),
(917, 4),
(917, 10),
(917, 13),
(918, 4),
(918, 11),
(918, 13),
(919, 6),
(919, 7),
(919, 12),
(920, 4),
(920, 11),
(920, 12),
(921, 4),
(921, 12),
(922, 6),
(922, 11),
(922, 12),
(922, 13),
(924, 4),
(924, 11),
(924, 12),
(925, 6),
(925, 12),
(925, 13),
(926, 4),
(926, 12),
(927, 4),
(927, 5),
(927, 12),
(928, 7),
(929, 4),
(929, 7),
(929, 12),
(930, 9),
(930, 11),
(930, 12),
(931, 4),
(931, 10),
(931, 12),
(933, 5),
(933, 9),
(933, 12),
(934, 9),
(934, 12),
(935, 4),
(935, 7),
(935, 12),
(936, 4),
(936, 11),
(936, 13),
(937, 9),
(937, 11),
(937, 13),
(938, 6),
(938, 7),
(938, 8),
(938, 12),
(938, 13),
(939, 10),
(939, 11),
(939, 13),
(940, 11),
(940, 12),
(941, 4),
(941, 11),
(941, 12),
(942, 4),
(942, 11),
(943, 4),
(943, 6),
(943, 12),
(945, 10),
(945, 11),
(945, 13),
(946, 4),
(946, 11),
(946, 12),
(947, 10),
(947, 11),
(947, 12),
(948, 9),
(948, 12),
(949, 4),
(949, 14),
(950, 9),
(950, 12),
(951, 4),
(951, 11),
(951, 13),
(952, 4),
(952, 11),
(952, 12),
(953, 4),
(953, 12),
(954, 4),
(954, 12),
(955, 11),
(955, 12),
(956, 4),
(956, 11),
(956, 12),
(957, 7),
(957, 8),
(957, 12),
(957, 13),
(958, 9),
(958, 11),
(958, 13),
(959, 4),
(959, 6),
(959, 12),
(960, 4),
(960, 11),
(960, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product_article`
--

CREATE TABLE `product_article` (
  `product_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_article`
--

INSERT INTO `product_article` (`product_id`, `article_id`) VALUES
(26, 4),
(28, 11),
(29, 4),
(30, 12),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 13),
(37, 4),
(38, 4),
(39, 14),
(41, 16),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 10),
(47, 10),
(50, 40),
(56, 18),
(57, 19),
(60, 20),
(65, 21),
(509, 43),
(511, 26),
(518, 34),
(520, 46),
(522, 47),
(534, 78),
(537, 48),
(538, 49),
(539, 50),
(541, 15),
(543, 25),
(544, 29),
(545, 30),
(547, 35),
(549, 30),
(550, 28),
(556, 52),
(557, 53),
(565, 54),
(567, 55),
(568, 56),
(569, 57),
(570, 32),
(572, 32),
(573, 58),
(576, 59),
(578, 60),
(580, 61),
(585, 62),
(587, 4),
(590, 63),
(594, 64),
(595, 65),
(601, 67),
(602, 68),
(606, 69),
(609, 70),
(611, 71),
(612, 72),
(614, 73),
(615, 16),
(619, 24),
(620, 36),
(630, 75),
(633, 76),
(634, 77),
(635, 78),
(639, 79),
(709, 41),
(740, 80);

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `ordre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`id`, `label`, `is_active`, `ordre`, `slug`, `logo`, `data_type`) VALUES
(1, 'Maison Castel', 1, '1', 'maison-castel', '6bfd3e20425dcd53c92a5f6657b5d4z1.png', 'brand'),
(2, 'Cépages réunis', 1, '2', 'cepages-reunis', '6bfd3e20425dcd53c92a5f6657b5d4z2.png', 'brand'),
(3, 'Brasseries du Maroc', 1, '3', 'GBM', '6bfd3e20425dcd53c92a5f6657b5d4z3.png', 'brand'),
(4, 'Pommery', 1, '4', 'pommery', '6bfd3e20425dcd53c92a5f6657b5d4z4.png', 'brand'),
(5, 'Ruinart', 1, '5', 'ruinart', '6bfd3e20425dcd53c92a5f6657b5d4z5.png', 'brand'),
(6, 'Veuve Cliquot', 1, '6', 'veuve-cliquot', '6bfd3e20425dcd53c92a5f6657b5d4z6.png', 'brand'),
(7, 'Beau soleil', 1, '7', 'beau-soleil', '9410f56a07e22e9d2abe960ab345253c.png', 'brand'),
(8, 'Château de meursault', 1, '8', 'chteau-de-meursault', 'e16473834c2527d0c9f383a0186a3fea.png', 'brand'),
(9, 'Château margaux', 1, '9', 'chteau-margaux', '6bfd3e20425dcd53c92a5f6657b5d469.png', 'brand'),
(10, 'autre', 1, '10', 'autre', '6bfd3e20425dcd53c92a5f6657b5d469.png', 'brand');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `label`, `code`, `slug`, `is_active`, `description`) VALUES
(1, 'Vins', 'vins', 'vins', 1, 'Rouges, rosés, blancs et pétillants, les vins représentent un univers envoûtant. Contemplez leurs robes, découvrez leur palette aromatique et leurs saveurs ...'),
(2, 'Champagnes', 'champagnes', 'champagnes', 1, 'Rouges, rosés, blancs et pétillants, les vins représentent un univers envoûtant. Contemplez leurs robes, découvrez leur palette aromatique et leurs saveurs ...'),
(3, 'Spiritueux', 'spiritueux', 'spiritueux', 1, ' Tradi ou \"trendy\", \"on the rock\" ou sec, l\'univers des spiritueux est un art aux déclinaisons infinies. Parcourez les fiches produits et découvrez les différentes marques de France minutieusement sélectionnées par Nicolas. '),
(4, 'Bières', 'bieres', 'bires', 1, 'Bières locales, étrangères un importées, Nicolas vous propose un large de choix qui sera combler tout les amateurs.'),
(5, 'Objets du vin', 'wine-object', 'objets-du-vin', 0, ''),
(7, 'product_category', 'product_category', 'product_category', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_category_banner`
--

CREATE TABLE `product_category_banner` (
  `id` int(11) NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category_banner`
--

INSERT INTO `product_category_banner` (`id`, `banner`, `link`, `category_id`) VALUES
(3, 'c3ef7cb476a31e49bdb1885d7038e228.jpg', '#', 2),
(4, '0dcd8435ead9837cf3cf2e3518f72f7b.jpg', '#', 2),
(5, '50a0681365ca84b0bc93fa037b2a2298.jpg', '#', 3),
(7, '49c79ede5d295ec529c58a755b457079.jpg', '#', 5),
(9, '740c84166232dba7a08cdda21af4aede.jpg', '', 3),
(10, '634f1059dd8461caf65cf7571881ce8a.png', '', 1),
(11, '4ce655aa5443e0cfe18c092fdd823436.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `label`, `slug`, `data_type`) VALUES
(1, 'Blanc', 'blanc', 'color'),
(2, 'Jaune', 'jaune', 'color'),
(3, 'Rouge', 'rouge', 'color'),
(4, 'Rosé', 'rose', 'color'),
(5, 'Gris', 'gris', 'color');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_main` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `file`, `is_main`) VALUES
(23, 26, 'f0494a26e49a2a7fc2040c6ac9fb7606.png', 1),
(25, 28, '2cbf69c45416f3871a890737e5def0b5.png', 1),
(26, 29, 'fa879bcb618ba255f211ebb9f27708f1.png', 1),
(27, 30, '1fac0b6cfa70373aabce89613810cf49.png', 1),
(28, 31, '4e48417dcea2787bbeb043b089222185.png', 1),
(29, 32, '14d91d174059829cdf3e89f87c2cfc71.png', 1),
(30, 33, '08a7e50aee244c3d8031474160dd2411.png', 1),
(31, 34, '193991c4bb7be395cb95b490a091f1a6.png', 1),
(32, 35, '36c6ff7444a1fa50d27027c55f72e1cd.png', 1),
(33, 36, 'c84be7a0d6a9e7e51201cce69a1570de.png', 1),
(34, 37, '73f96723c055b3f30096b4fd864a1ed0.png', 1),
(35, 38, '1922fd9a16f14b6d2434afea33eb4ca0.png', 1),
(36, 39, 'eb98ba07b7397fbb39f26ea766bb552b.png', 1),
(38, 41, 'fafc591f7c21715bf626f1c5c37d0734.png', 1),
(39, 42, '458eff52621eb0773b7514955ab72a17.png', 1),
(40, 43, '5fd879e36db7ea74d7138753c5e3a8ea.png', 1),
(41, 44, '1eddd5b606a5af9a44596294c3fce400.png', 1),
(42, 45, '8389f5e35620a04b080899e439b4329b.png', 1),
(43, 46, '66c19b589f901c28057d6643c567cc17.png', 1),
(44, 47, 'c1eef182ba8e16a1107ebd74b13dd52a.png', 1),
(45, 49, 'd1df25e77ebe9d369be8f7172f8ad636.png', 1),
(46, 50, '2500366143bb9fb9d03bfcdaaefc8450.png', 1),
(47, 51, '5d1d95946793526c5376a444b54e9ed1.png', 1),
(48, 52, '3c8ae70cdfc75468a5c868a219892099.png', 1),
(49, 53, '08b397abb2dd7ed88122d977a0460e01.png', 1),
(51, 55, 'cafafbf2521f1975176651790a983139.png', 1),
(52, 56, 'f1d12b8e7c88143e78fea59530cbdd20.png', 1),
(53, 57, '99a1d931d1650b9aa501bb616ee32bae.png', 1),
(56, 60, 'fa327e1c4f8ce3722285739f26c11b27.png', 1),
(57, 61, 'b0b80a49242e4cf84c6ace3f22be5ee3.png', 1),
(58, 62, 'd8f0fded1b19f99d226b49b1ae80f3c6.png', 1),
(59, 63, '8c7bc3d15094bd54a5ea6871377cbdcc.png', 1),
(60, 64, '8fcf192d175e53e7dabfe95cd70908e1.png', 1),
(61, 65, 'a88e9a3003305ac0d4cf239cc66d7b70.png', 1),
(62, 66, '66ca9a061485d5c27ec8569668260a61.png', 1),
(66, 70, 'caeb3e55d3efcb04917e8afbb399ae02.png', 1),
(67, 71, 'REF0206.png', 1),
(70, 139, 'f42543cb5c888c61e0870c6e3ff1a5ec.png', 1),
(71, 140, '789c7938d5abcd538913b8b5de39b6b3.png', 1),
(72, 141, 'e625afe509cd2a635af85e850019e6d5.png', 1),
(73, 142, '69a6c04d494086abf1f9a91cd5e442d4.png', 1),
(74, 145, '68a594e517f847a5316a19b95c36aad0.png', 1),
(75, 146, 'c8947d7c8f04e0601a4464b2b6fbf5c2.png', 1),
(76, 148, 'b192ad145f92ea8310d3890ac20da50c.png', 1),
(77, 149, '691a56954692b38b5772341811566501.png', 1),
(78, 150, '6e3bc59055b696ca380be3c9cd4c3f82.png', 1),
(79, 151, '57135739c6112b755ecba9db48340d81.png', 1),
(80, 72, 'REF0207.png', 1),
(81, 73, 'REF0208.png', 1),
(82, 74, 'REF0383.png', 1),
(83, 75, 'REF0500.png', 1),
(84, 76, 'REF0507.png', 1),
(85, 77, 'REF0742.png', 1),
(86, 78, 'REF0772.png', 1),
(87, 79, 'REF0778.png', 1),
(88, 80, 'REF0782.png', 1),
(89, 81, 'REF0794.png', 1),
(90, 82, 'REF0813.png', 1),
(91, 83, 'REF0839.png', 1),
(92, 87, 'REF0883.png', 1),
(93, 88, 'REF0912.png', 1),
(94, 89, 'REF1003.png', 1),
(95, 91, 'REF1097.png', 1),
(96, 155, '0117ba83a70e6bbba7ce3de53a5e1db5.png', 1),
(97, 156, 'b72892f1f86f50d34c0c3df58d80309d.png', 1),
(98, 162, '3946476d848d88e3a032cf66f6e5ad77.png', 1),
(99, 166, 'cfefc7f9698a9af98702e15465325fa5.png', 1),
(100, 169, 'acd36d5310a53b7c91547a7353a3461c.png', 1),
(101, 170, 'a2fa860716ffe5bfa1297af3b9ec716a.png', 1),
(102, 172, '311320f69a84620c058c48fd44934adf.png', 1),
(103, 174, 'ca610b52b22c33706e42663dd3855683.png', 1),
(104, 175, '6125b2a03443717b397a6e203f192dc8.png', 1),
(105, 177, 'fa943e6b7bec9ef1f85c7b3f3c41e526.png', 1),
(106, 180, '971393ef02db493d6a907d59fff65b6f.png', 1),
(107, 183, 'b13b45d4211858901c513ab11bb7e399.png', 1),
(108, 187, 'd160facc7211727e07bd9aac851b2d18.png', 1),
(109, 188, 'e57686a9c0cbf9b1638abdd8e82b3b16.png', 1),
(110, 278, '00e6c33363f3aec1e3cb25f02e2091f4.png', 1),
(111, 260, '157de5bcab002d36d2de6dbe34983fdf.png', 1),
(112, 239, '3bc1ea9bd28ce4a7dfc2d027885c4274.png', 1),
(113, 227, '82e78fde803e5e0846fc13272518376c.png', 1),
(114, 223, '7d2d8b7e79d7b280c25a88ed3b1a94a0.png', 1),
(115, 216, 'e601dbf181811662388de366a9cf5bce.png', 1),
(116, 212, '9ef7bce105ad79a66aefe171061d8844.png', 1),
(117, 205, '4a2a2f7e7a42adaa026c2a564c657578.png', 1),
(118, 203, 'e387af3fd4802a341b8962cadfff89b7.png', 1),
(119, 192, '15caa2805ea516b62fbeb7be51d52dd6.png', 1),
(120, 96, '66f1378c09d970a2ab3c66769be97cb4.png', 1),
(121, 97, '7f03009aaa5c9288b2fedc83135d7e09.png', 1),
(122, 98, '07545e2cb96a4ba28e897e286dbae068.png', 1),
(123, 99, 'e569683f94325e3c867695feef3c0f9a.png', 1),
(124, 100, '07179924dd9a77b4c44a0d44088286e3.png', 1),
(125, 101, 'f544af9d6ac049220e6818041a36493f.png', 1),
(126, 102, '4780070ec165b3bff0537859a37be055.png', 1),
(127, 103, '386771c6dc5a936ba3ed1ceee6d9aca4.png', 1),
(128, 105, 'cb116d0eff2963a588cbddc3078822aa.png', 1),
(129, 106, '0f5f82ea4c8ae0f40a4e494b79d4548a.png', 1),
(130, 107, '7abd1e401540dbca39f51ee840ec4411.png', 1),
(131, 108, '400140d8c1aa8bec034d211d9e4cab8f.png', 1),
(132, 109, '48413b0f23f5b1ed24b49f5db0f0c3ad.png', 1),
(133, 110, '638c3d58f8f7f9dc94ee5aff24e5bd81.png', 1),
(134, 111, '933e62a3022009f03ff1967067e7bcb9.png', 1),
(135, 112, '7e1b911d089969211f1d5916ea091572.png', 1),
(136, 113, '044ca3561081883b2030c692396b74c8.png', 1),
(137, 114, 'f860c040c851d1d680e123f4ff2d0353.png', 1),
(138, 137, '50b204bff34e5177f21a9ebf20a4d09b.png', 1),
(139, 130, '6e9c07e30241e627f4b17db774f7275e.png', 1),
(140, 128, '9b1e4ed425be54256e8e78c476b67493.png', 1),
(141, 126, '7cbd1779d96e492f7b3c601d4cd36081.png', 1),
(142, 124, '1d10e4d4eabe4a0abf0e20310be27551.png', 1),
(143, 123, '3312b9dd8b3197284ce57e299226e88a.png', 1),
(144, 121, 'b7b7c939e9acd0e794be06c1fd7bd007.png', 1),
(145, 119, '7767c17fb05f1383f7d8128d2fba2ea2.png', 1),
(146, 117, '153c7676bfa186a270fc7248c3d5a973.png', 1),
(287, 504, '472131.png', 1),
(288, 505, 'c308a4a7d642c7a7c0ee8ad4e76e038e.png', 1),
(289, 506, '393143.png', 1),
(290, 507, '468227.png', 1),
(291, 508, '471010.png', 1),
(292, 509, '472644.png', 1),
(293, 510, '473057.png', 1),
(294, 511, '472942.png', 1),
(295, 514, '469378.png', 1),
(296, 515, '470927.png', 1),
(297, 516, '471420.png', 1),
(299, 518, '472993.png', 1),
(300, 520, '463823.png', 1),
(301, 521, '466346.png', 1),
(302, 522, '466513.png', 1),
(303, 523, '467052.png', 1),
(304, 524, '469379.png', 1),
(305, 525, '470009.png', 1),
(306, 526, '470367.png', 1),
(307, 527, '470390.png', 1),
(308, 528, '470594.png', 1),
(309, 529, '470668.png', 1),
(310, 530, '470678.png', 1),
(311, 531, '470686.png', 1),
(312, 532, '470771.png', 1),
(313, 533, '471329.png', 1),
(314, 534, '471390.png', 1),
(315, 535, '471418.png', 1),
(316, 536, '471897.png', 1),
(317, 537, '472103.png', 1),
(318, 538, '472358.png', 1),
(319, 539, '472366.png', 1),
(321, 541, '472786.png', 1),
(322, 542, '472880.png', 1),
(323, 543, '472941.png', 1),
(324, 544, '472963.png', 1),
(325, 546, '472978.png', 1),
(326, 548, '473040.png', 1),
(327, 549, '473082.png', 1),
(328, 550, '473177.png', 1),
(329, 551, '470677.png', 1),
(331, 553, '381485.png', 1),
(332, 554, '391785.png', 1),
(333, 555, '468007.png', 1),
(334, 556, '468872.png', 1),
(335, 557, '468911.png', 1),
(336, 558, '469436.png', 1),
(337, 559, '469581.png', 1),
(338, 560, '470286.png', 1),
(339, 561, '470571.png', 1),
(340, 562, '470744.png', 1),
(341, 563, '470985.png', 1),
(342, 564, '471009.png', 1),
(343, 565, '471095.png', 1),
(344, 566, '471687.png', 1),
(345, 567, '471730.png', 1),
(346, 568, '471732.png', 1),
(347, 569, '472189.png', 1),
(348, 570, '472969.png', 1),
(349, 571, '473072.png', 1),
(350, 572, '473183.png', 1),
(351, 573, '472197.png', 1),
(352, 574, '470732.png', 1),
(353, 575, '468394.png', 1),
(354, 576, '470321.png', 1),
(355, 577, '470444.png', 1),
(356, 578, '470466.png', 1),
(357, 579, '470789.png', 1),
(358, 580, '471100.png', 1),
(359, 581, '471252.png', 1),
(360, 582, '471317.png', 1),
(361, 583, '468313.png', 1),
(362, 584, '452753.png', 1),
(363, 585, '469607.png', 1),
(364, 586, '470476.png', 1),
(365, 587, '471869.png', 1),
(366, 588, '470304.png', 1),
(367, 589, '470593.png', 1),
(368, 590, '468894.png', 1),
(369, 592, '471439.png', 1),
(370, 593, '468730.png', 1),
(371, 595, '470931.png', 1),
(372, 596, '471251.png', 1),
(373, 597, '471933.png', 1),
(374, 598, '472000.png', 1),
(375, 599, '467655.png', 1),
(376, 601, '467901.png', 1),
(377, 602, '468740.png', 1),
(378, 603, '469981.png', 1),
(379, 604, '470376.png', 1),
(380, 605, '470548.png', 1),
(381, 606, '470925.png', 1),
(382, 607, '471474.png', 1),
(383, 608, '471475.png', 1),
(384, 609, '471476.png', 1),
(385, 610, '471552.png', 1),
(386, 611, '472098.png', 1),
(387, 612, '472129.png', 1),
(388, 613, '472326.png', 1),
(389, 614, '472598.png', 1),
(390, 615, '472816.png', 1),
(391, 616, '472828.png', 1),
(392, 617, '472876.png', 1),
(393, 618, '472877.png', 1),
(394, 621, '470500.png', 1),
(395, 623, '471012.png', 1),
(396, 624, '472720.png', 1),
(397, 625, '473060.png', 1),
(398, 626, '470008.png', 1),
(399, 627, '470537.png', 1),
(400, 628, '471470.png', 1),
(401, 629, '472882.png', 1),
(402, 630, '473068.png', 1),
(403, 631, '470509.png', 1),
(404, 632, '470680.png', 1),
(405, 634, '470923.png', 1),
(406, 635, '470929.png', 1),
(407, 636, '471311.png', 1),
(408, 637, '471385.png', 1),
(410, 709, '185745.png', 1),
(411, 715, '189105.png', 1),
(412, 716, '318083.png', 1),
(413, 720, '377022.png', 1),
(414, 722, '407096.png', 1),
(415, 723, '462653.png', 1),
(416, 724, '464477.png', 1),
(417, 728, '466337.png', 1),
(418, 729, '468418.png', 1),
(419, 730, '468512.png', 1),
(420, 731, '468776.png', 1),
(421, 732, '468953.png', 1),
(422, 733, '469259.png', 1),
(423, 735, '470007.png', 1),
(424, 736, '470817.png', 1),
(425, 738, '471163.png', 1),
(426, 739, '471393.png', 1),
(427, 740, '471460.png', 1),
(428, 741, '471591.png', 1),
(429, 742, '471593.png', 1),
(430, 743, '471594.png', 1),
(431, 744, '471650.png', 1),
(432, 745, '471728.png', 1),
(433, 746, '471846.png', 1),
(434, 747, '472059.png', 1),
(435, 748, '472749.png', 1),
(436, 749, '472750.png', 1),
(437, 750, '472830.png', 1),
(438, 751, '472840.png', 1),
(439, 752, '472878.png', 1),
(440, 753, '472888.png', 1),
(441, 754, '472981.png', 1),
(442, 755, '472996.png', 1),
(443, 756, '473058.png', 1),
(444, 757, '473075.png', 1),
(445, 758, '473081.png', 1),
(446, 759, '473083.png', 1),
(447, 760, '473153.png', 1),
(448, 761, '473179.png', 1),
(449, 762, '473184.png', 1),
(450, 763, '473190.png', 1),
(451, 764, '473213.png', 1),
(452, 767, '473618.png', 1),
(453, 768, '473631.png', 1),
(454, 769, '473651.png', 1),
(456, 771, '473754.png', 1),
(457, 772, '473755.png', 1),
(458, 773, '473770.png', 1),
(459, 850, '15f3d5c0bbcd3eae1f0e704a99a55793.png', 1),
(460, 677, 'af62aaae1998d610ea320af7510311fb.png', 1),
(461, 677, '3053f90b7a3ce9d1478ab40754d17b38.png', 0),
(462, 855, '16346b5c4dce8fa2cf264994ae93cf88.png', 1),
(463, 622, 'aee0761c72861952dde506bfe19788af.png', 1),
(464, 765, '12d2b6cb7307b0fc7f438a10c20e10da.png', 1),
(465, 513, 'f5e6c7f776d593a3bbe7c6fb4caa9869.png', 1),
(466, 711, '2bf5a6ec073f048600f0c9b1edf3bb13.png', 1),
(467, 502, '1678a1304fabfb66f72cf538eb1c8dc1.png', 1),
(468, 959, 'c5e611c30b41664ab682b7e01db34d51.png', 1),
(469, 958, '289eff5846ccc26db740ed8d97b1e25a.png', 1),
(470, 957, 'fc81a8650689404cf5c2754d2ec3ee71.png', 1),
(471, 956, '8d1e6a801b343880e41fe9396b204b2b.png', 1),
(472, 955, '0ab469cc51d7eb17527d7889e321c5c4.png', 1),
(473, 952, 'a4dd438ac761395fbd9dd734f806cfaa.png', 1),
(474, 951, '6687415d271d8c896a292eff3ac9d3fa.png', 1),
(475, 953, '1de8c5036ee7efe02949e70690f43f29.png', 1),
(476, 950, '2e5835cfdeebdb379a015a9347317f30.png', 1),
(477, 948, '16ded87137561003ee6d64a55e7eb875.png', 1),
(478, 947, 'c32adb77639d2d80ab92490c70de9dfa.png', 1),
(479, 946, 'aac0e43f8b1c8be1c5261e97c27acab9.png', 1),
(480, 945, '0442f784c101c0795872d6637a536ad8.png', 1),
(483, 943, '5b43af41638ba053823a043921d8beaf.png', 1),
(484, 942, 'a05d2599410083aabc45e7ac75137b71.png', 1),
(485, 941, 'd92f6835c28fd97ddc90da8a5177d024.png', 1),
(486, 940, 'd9b5b95adef437026847625d3d386976.png', 1),
(487, 939, '29b889bcca057f6a9ed6e782668d984c.png', 1),
(488, 938, 'd96c39be53c0e2b855999b98ce5887c0.png', 1),
(489, 937, 'a2717b0b6305053a0047018b88d9b57b.png', 1),
(490, 954, 'badf75b10582cf6821d07523e7cf5a87.png', 1),
(491, 929, '86bfb3891408b473ab6ccac48a863326.png', 1),
(492, 936, '58b95af100063c8f87987a94a83f6569.png', 1),
(493, 933, 'd68f0f2b3f28d13ea94947722e2083d1.png', 1),
(494, 934, 'e911fba4b29373f5b949bd69c8f3250b.png', 1),
(495, 935, '9e2b3f4ff9188777556195a1288f5d34.png', 1),
(496, 928, 'ce9b3a11de009c32d63d9b3e136caca3.png', 1),
(497, 927, 'f33d0f11cafe44635f3d6bc5eedeeb5b.png', 1),
(498, 926, '2d4a17f7a940adb09c49db12d5e91d1f.png', 1),
(499, 925, '90e9ddae23f6dd787d3c11113ec79e4a.png', 1),
(500, 914, '167bd139cb4d54c30cafa790bab4e9bc.png', 1),
(501, 924, 'c4de6ee8323abf9a3459fa14d49f79a3.png', 1),
(502, 922, '70e6e7cbb0a8e335023bfb060d202530.png', 1),
(503, 919, 'd762962cd1f36b89fd3b3b9f2787c882.png', 1),
(504, 920, '10145f76cad3e5da4ef83ebdc4064466.png', 1),
(505, 918, '09302e3cfd8d05dd0aa632484913078d.png', 1),
(506, 916, '4a1e5a50d3b26f5e340916ab0291023d.png', 1),
(507, 916, '9490f52232e7fa2840d5387121bf443c.png', 1),
(508, 915, 'a41e03df32e2f154e5791f548bf53dd0.png', 1),
(509, 917, '4e7d66829f7f7c31dc3a51dfef8ea777.png', 1),
(510, 913, '232611d4152170f97c05413faf13e3b9.png', 1),
(511, 881, 'ca93f004e6065000e00c547755d84e23.png', 1),
(512, 880, 'f58d454355fa4328220484a5fe82febe.png', 1),
(513, 879, '48a62daf532c8e3265c85143d7b82c0f.png', 1),
(514, 878, 'a6662255b5ad1061e411a9774d13f5da.png', 1),
(515, 877, '73622b685fd8b131c110e2a1fa3bbe0a.png', 1),
(516, 876, '92bf535c1346954b8679396817aaf186.png', 1),
(517, 875, '3c5c3feb34bbd57107b4c99905d0248f.png', 1),
(518, 774, '30ad75f587da234fb1332ea09f262fb4.png', 1),
(519, 702, '71f0ed7e68aafb2ae5f57ac409e6a752.png', 1),
(521, 712, 'c1c0cf9931100d8bc2842d143bcf68bb.png', 1),
(522, 657, '2fd651bb72375ef429d35e72ed27e032.png', 1),
(523, 669, '66fa88ce95dee671db56aa4e3bda5d3c.png', 1),
(524, 652, 'dfd25299a34520e6d92597e9a07887df.png', 1),
(525, 675, '29b009e15ca848002508f7908cc4dfa8.png', 1),
(526, 930, 'c800554d7392e2acdad52ec80cdc80a9.png', 1),
(527, 778, '77ff2e67fbb2551f72a7f2ff36b35d70.png', 1),
(528, 776, 'c1b9c946df823a453dca9fbc18595248.png', 1),
(529, 688, '36175411dfeb53bc2423409c1a132e96.png', 1),
(530, 671, '39e3c7a1d7348623eda9abecd4ff2ff2.png', 1),
(531, 708, '24483120d5c1c26024e49d8742444f3d.png', 1),
(532, 676, 'b774aff9074bbaeed961c458e609067d.png', 1),
(533, 661, 'fde306deb9ae79b4e0bc16dc4e372968.png', 1),
(534, 656, '8cd440f7f257bd12ccc007dd344a92f3.png', 1),
(535, 921, '45e7d5ea112394cf8c8b1b907ee9d4ee.png', 1),
(536, 683, '2352aed790079f54efb2a80d62e4047c.png', 1),
(537, 949, 'fcc983d0e840618ff2d060d96ea41393.png', 1),
(538, 713, '82ac8d6406016b62d9d998f417607991.png', 1),
(539, 694, 'a498fcef0e9b8594476eb66bc7de84d2.png', 1),
(540, 960, '152d282e43586b3e33b605b967f2498d.png', 1),
(541, 802, '8fa950469bcdeca72318666b10dff35b.png', 1),
(542, 803, 'd4decc8aacc0c3f27a8b457d70613ad7.png', 1),
(543, 804, 'fd0e521b86c904a92721e128a0a3cffb.png', 1),
(544, 800, '71ecdd8d1c500acae2e8414006955b20.png', 1),
(545, 799, '71025a8ed546c1501fe2fb9dc234b237.png', 1),
(546, 801, '9c3e15f55a44ec7d3a7fb3b9cbddb9d8.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category`
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
-- Dumping data for table `product_sub_category`
--

INSERT INTO `product_sub_category` (`id`, `category_id`, `label`, `code`, `slug`, `is_active`) VALUES
(1, 1, 'Vins', 'vins', 'vins', 1),
(2, 2, 'Extra-brut', 'extra_brut', 'extra-brut', 1),
(3, 2, 'Brut', 'brut', 'brut', 1),
(4, 2, 'Demi-sec', 'demi_sec', 'demi-sec', 1),
(5, 2, 'Millésimés', 'millesimes', 'millesimes', 1),
(6, 2, 'Blanc de blancs', 'blanc_de_blancs', 'blanc-de-blancs', 1),
(7, 2, 'Blanc de noirs', 'blanc_de_noirs', 'blanc-de-noirs', 1),
(8, 3, 'Porto', 'porto', 'porto', 1),
(9, 3, 'Cognac', 'cognac', 'cognac', 1),
(10, 3, 'Whisky', 'whisky', 'whisky', 1),
(11, 3, 'Liqueur', 'liqueur', 'liqueur', 1),
(12, 3, 'Vodka', 'vodka', 'vodka', 1),
(13, 3, 'Gin', 'gin', 'gin', 1),
(14, 3, 'Martini', 'martini', 'martini', 1),
(28, 4, 'Bières importées', 'biereimportee', 'bires-importes', 1),
(29, 4, 'Bières locales', 'biereslocales', 'bires-locales', 1),
(30, 4, 'Bière étrangères', 'bieresetrangeres', 'bire-trangres', 1),
(31, 3, 'Rhum', 'rhum', 'rhum', 1),
(32, 3, 'Pastis', 'pastis', 'pastis', 1),
(33, 3, 'Eau de vie', 'eaudevie', 'eaudevie', 1),
(34, 3, 'Tequila', 'tequilla', 'tequila', 1),
(35, 3, 'Digéstif', 'digestif', 'digestif', 1),
(36, 2, 'Champagne rosé', 'Champagne rosé', 'champagne-ros', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_taste`
--

CREATE TABLE `product_taste` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_taste`
--

INSERT INTO `product_taste` (`id`, `label`, `css_class`, `slug`, `data_type`) VALUES
(1, 'Fruité et souple', 'FUITE_SOUPLE', 'fruit-et-souple', 'taste'),
(2, 'Fruité et plein', 'FRUITE_ET_PLEIN', 'fruit-et-plein', 'taste'),
(4, 'Fruité et nerveux', 'FRUITE_ET_NERVEUX', 'fruit-et-nerveux', 'taste'),
(5, 'Bouqueté et à la reserve ', 'BOUQUETE_ET_A_LA_RESERVE', 'bouquet-et--la-reserve', 'taste'),
(6, 'Bouqueté et souple', 'BOUQUETE_ET_SOUPLE', 'bouquet-et-souple', 'taste'),
(7, 'Bouqueté corse et à point', 'BOUQUETE_CORSE_ET_A_POINT', 'bouquet-corse-et--point', 'taste'),
(8, 'Fruité et charnu', 'FRUITE_ET_PLEIN', 'fruit-et-charnu', 'taste');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `ordre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `label`, `is_active`, `ordre`, `slug`) VALUES
(1, 'Type 1', 1, '1', 'type-1');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `label`, `slug`, `data_type`) VALUES
(1, 'Bordeaux ', 'bordeaux', 'region'),
(2, 'Bourgogne', 'bourgogne', 'region'),
(3, 'Rhône', 'rhne', 'region'),
(4, 'Loire et Centre', 'loire-et-centre', 'region'),
(5, 'Alsace', 'alsace', 'region'),
(6, 'Provence', 'provence', 'region'),
(7, 'Sud Ouest', 'sud-ouest', 'region'),
(8, 'Corse', 'corse', 'region'),
(9, 'Savoie', 'savoie', 'region'),
(11, 'Languedoc-Roussillon', 'languedoc-roussillon', 'region'),
(12, 'Valpolicella', 'valpolicella', 'region'),
(13, 'Toscane', 'toscane', 'region'),
(14, 'Sicile', 'sicile', 'region'),
(15, 'Beaujolais-Mâconnais', 'beaujolais-mconnais', 'region'),
(16, 'Reims', 'reims', 'region'),
(17, 'Epernay', 'epernay', 'region'),
(18, 'Littoral méditerranéen', 'littoral-mditerranen', 'region'),
(19, 'Côtes du Rhône', 'ctes-du-rhne', 'region'),
(22, 'Beaujolais-Mâconnais', 'beaujolais-maconnais', 'region'),
(23, 'Autre', 'autre', 'region'),
(24, 'Champagne-Ardenne', 'champagne-ardenne', 'region'),
(25, 'Meknès', 'meknes', 'region'),
(26, 'Sud-Est', 'sud-est', 'region');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `background_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `content`, `position`, `background_color`, `image`) VALUES
(1, ' Des produits de qualité ', 'Chez Nicolas, pour les « petits » vins comme pour les grands crus, c’est toute la rigueur des méthodes de travail et de sélection mises en œuvre en amont de l’achat qui permet aux clients Nicolas de bénéficier d’une assurance de Qualité sans équivalent.', 1, 'orange', '77938e8438d75fe681ba3390cfe6cf29.png'),
(3, 'La carte fidélité nicolas', '<span>Des avantages, des remises, des cadeaux… Nicolas pousse le bouchon loin pour ses clients fidèles !<br><div><br></div><div>Demandez la carte à votre caviste, elle est gratuite !</div></span><div></div>', 1, 'yellow', 'a46f5ea3c5e28edf84835e4bc81ec471.png'),
(4, 'La cave des grands crus', '<span>Amateurs de nectars prestigieux, chez Nicolas vous avez du choix.<br></span><br>\r\nGrands millésimes de bordeaux, bourgognes, champagnes et alcools rares, sont conservés précieusement dans nos caves. Pour ces bouteilles uniques, nous vous garantissons un transport rapide et une qualité optimale.<span><br><br></span>', 2, 'gray', '07c7f78f4b6f5f4225045f0c480fd411.png');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`, `address`, `city`, `longitude`, `latitude`, `phone`, `description`, `image`) VALUES
(2, 'Casablanca Gauthier ', 'Résidence des arts, 6 et 7 angle rue Hafid Ibrahim & rue Abou El Kacem Echabbi ', 'Casablanca ', '-7.61868251', '33.56510063', '05 22 20 09 85', '', '648884e78264851851d6acb715a23a4d.jpg'),
(3, 'Nicolas Racine (Anfa)', '11 rue du 6 octobre', 'Casablanca ', '-7.65786553', '33.55695759', '05 22 39 39 35', '                                                                                                                                                                                        ', '4358a30f6265916ddfee7bacea8dd21c.jpg'),
(5, 'Nicolas Rabat', '27 rue Dayet Aoua Agdal', 'Rabat ', '-6.85586358', '33.97365659', '05 37 77 34 61', '                                                                                                                                                                                        ', '14cc9d4a1ba972a0b114ce1674964b93.jpg'),
(6, 'Nicolas Marrakech', 'Avenue Bouroud, avenue Mohammed IV, Hivernage', 'Marrakech', '-7.9810845', '31.6294723', '0524431314', '                                                                                                                                                                                        ', 'a19b0e2025fa2eed15e34b22c24a7666.jpg'),
(7, 'Nicolas C.I.L', '35 & 39 rue Mahdia Hay Salam', 'Casablanca', '-7.6589506', '33.5725003', '05 22 36 43 71', '                                                                                            ', 'cfe8098379efe4d8ca7129fa9115582b.jpg'),
(8, 'Nicolas Agadir', 'Avenue hassan II, angle rue de madrid et hassan Ii, Agadir 80000, Maroc', 'Agadir', '-9.60205078125', '30.439202087235582', '', '                                                                                            ', 'ebdddef56de9d4a5d44b0f993c4d6fdb.jpg'),
(9, 'Nicolas Rabat - Zaër', 'Avenue Mohamed VI, Rabat, Maroc', 'Rabat', '-6.826715469360352', '33.961799856615855', '05 37 65 14 60', '', '2b03e5208d9a0adec774986209d1252e.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `is_active`, `roles`, `date_created`, `date_lastlogin`, `date_disabled`) VALUES
(1, 'admin', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', 'Prenom', 'Nom', 'email@email.com', 1, 'ROLE_SUPERADMIN', 0, 0, 0),
(2, 'Kamil', '$2a$08$jHZj/wJfcVKlIwr5AvR78euJxYK7Ku5kURNhNx.7.CSIJ3Pq6LEPC', 'Kamil', 'El Bouab', 'kamil@kamil.org ', 1, 'ROLE_SUPERADMIN', 0, 0, 0),
(3, 'Soufiane', '$2a$04$43rKeNcYeS2UM5Pv0P7DMO.oml0uGS8QtHEp6ROGfWd1H0q/aPwYC', 'Soufiane\r\n ', 'Perimetre', 'soufiane@perimetre.org ', 1, 'ROLE_SUPERADMIN', 0, 0, 0),
(4, 'a.bajjou', '$2a$04$FFJnLTKdGonDnomjuK4JMOsQTSmhkf5W2gEbTC4gmUw2qGOW9.jJq', 'a ', 'Bajjou', 'a.bajjou@gbm.ma ', 1, 'ROLE_SUPERADMIN', 0, 0, 0),
(5, 'Oussama', '$2a$04$JbmpkSAzfOu7D7Q2iJkWB.0BDlpvn/s9RiqhAQD75RB/nrUoiUVH.', 'Oussama', 'Nicolas', 'oussama@nicolas.ma', 1, 'ROLE_SUPERADMIN', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`id`, `icon`, `title`, `subTitle`, `text`, `link`, `picture`, `notice`, `ordre`) VALUES
(1, '4c546e25046bfae235f49c7b4b687a4c.png', 'QUI SOMMES-NOUS ?', '', 'Achat vin ? Nicolas, précurseur dans le vin depuis plus de 190 ans !\r\nAvec près de 500 boutiques en France, nous sommes le n°1 de la distribution de vin en centre-ville. Découvrez notre histoire, nos valeurs, nos ambitions.', '/notre-histoire.html', NULL, NULL, '1'),
(2, '9fd543e48902a427cb51d36af0fa72fe.png', 'LE SAVIEZ-VOUS ?', NULL, 'Peu importe l\'occasion sachez qu\'il y\'a toujours des bouteilles au frais chez Nicolas. C\'est tellement plus agréable d\'offrir une bouteille et de pouvoir la déboucher sans plus tarder.', '', '63114642b4e6800e9bce775e6bb0a57c.png', '', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_icon`
--
ALTER TABLE `article_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_slider`
--
ALTER TABLE `article_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_block`
--
ALTER TABLE `footer_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
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
-- Indexes for table `product_alliance`
--
ALTER TABLE `product_alliance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_alliance_join`
--
ALTER TABLE `product_alliance_join`
  ADD PRIMARY KEY (`product_id`,`product_alliance_id`),
  ADD KEY `IDX_83E0E3494584665A` (`product_id`),
  ADD KEY `IDX_83E0E349BC8F7420` (`product_alliance_id`);

--
-- Indexes for table `product_article`
--
ALTER TABLE `product_article`
  ADD PRIMARY KEY (`product_id`,`article_id`),
  ADD KEY `IDX_D3E315D64584665A` (`product_id`),
  ADD KEY `IDX_D3E315D67294869C` (`article_id`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_banner`
--
ALTER TABLE `product_category_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_52FE770112469DE2` (`category_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_64617F034584665A` (`product_id`);

--
-- Indexes for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3147D5F312469DE2` (`category_id`);

--
-- Indexes for table `product_taste`
--
ALTER TABLE `product_taste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `article_icon`
--
ALTER TABLE `article_icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `article_slider`
--
ALTER TABLE `article_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `footer_block`
--
ALTER TABLE `footer_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;
--
-- AUTO_INCREMENT for table `product_alliance`
--
ALTER TABLE `product_alliance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product_category_banner`
--
ALTER TABLE `product_category_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;
--
-- AUTO_INCREMENT for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `product_taste`
--
ALTER TABLE `product_taste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD44F5D008` FOREIGN KEY (`brand_id`) REFERENCES `product_brand` (`id`),
  ADD CONSTRAINT `FK_D34A04AD74E52521` FOREIGN KEY (`taste_id`) REFERENCES `product_taste` (`id`),
  ADD CONSTRAINT `FK_D34A04AD7ADA1FB5` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`id`),
  ADD CONSTRAINT `FK_D34A04AD98260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  ADD CONSTRAINT `FK_D34A04ADF7BFE87C` FOREIGN KEY (`sub_category_id`) REFERENCES `product_sub_category` (`id`),
  ADD CONSTRAINT `FK_D34A04ADF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `product_alliance_join`
--
ALTER TABLE `product_alliance_join`
  ADD CONSTRAINT `FK_83E0E3494584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_83E0E349BC8F7420` FOREIGN KEY (`product_alliance_id`) REFERENCES `product_alliance` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_article`
--
ALTER TABLE `product_article`
  ADD CONSTRAINT `FK_D3E315D64584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D3E315D67294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_category_banner`
--
ALTER TABLE `product_category_banner`
  ADD CONSTRAINT `FK_52FE770112469DE2` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK_64617F034584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD CONSTRAINT `FK_3147D5F312469DE2` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
