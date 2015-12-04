-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 04 Décembre 2015 à 14:48
-- Version du serveur: 5.5.46-0ubuntu0.14.04.2
-- Version de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `blog-pratik`
--

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published` datetime NOT NULL,
  `author` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Contenu de la table `post`
--

INSERT INTO `post` (`id`, `titre`, `url_alias`, `content`, `published`, `author`) VALUES
(12, '10 inspirations qui vont vous faire changer d''avis sur le lambris', 'localhost:8000/post/12', 'Le lambris n’a pas dit son dernier mot dans notre déco ! Longtemps considéré comme has been parce que trop rustique et beaucoup trop utilisé en total look notamment pour cacher les irrégularités d’un mur, le lambris revient en force dans nos intérieurs. Qu’est-ce qui nous a fait changer d’avis à son égard ? Son caractère ultra décoratif, sa capacité à s’ouvrir à milles déclinaisons sans oublier sa facilité à se marier avec d’autres matériaux aussi variés que le parquet, le béton ciré ou le carrelage. Dans la liste des nombreux avantages de ce revêtement, il faut mentionner ses qualités isolantes et phoniques qui font son succès en rénovation, sans compter sa facilité de pose (grâce à des tasseaux) et son prix plus que raisonnable.\r\n\r\nNaturel, bruni, grisé, vintage ou coloré, ces lames de bois peuvent décorer toutes nos pièces. Qu’elles affichent un look scandinave, contemporain ou vintage, il existera toujours un lambris qui collera à leur esprit. Vous l''aurez compris, le lambris d''aujourd''hui a plus d''un tour dans son sac pour embellir notre intérieur. La preuve en images !', '2015-12-04 14:22:49', 13),
(13, 'Objets Connectés – On en est où de la sécurité ?', 'localhost:8000/post/13', 'Si la sécurité des objets connectés vous intéresse, je vous invite à lire ce rapport (en anglais) publié par l''Agence européenne chargée de la sécurité des réseaux et de l''information (ENISA). Dans ce rapport, ils passent en revue les bonnes pratiques qui devraient s''appliquer à chaque étape de la vie d''un objet connecté, de son développement à son intégration en passant par ses usages et sa maintenance jusqu''à ce qu''ils soient bons à jeter à la poubelle.\r\n\r\nOn n''y pense pas forcement, mais la plupart des constructeurs font le minimum en sécurité sur les objets connectés qu''ils produisent... Seulement, voilà... Ces objets se retrouvent ensuite chez nous, nous filment, nous enregistrent, transmettent nos données personnelles, contrôlent différentes choses dans la maison...etc. Il est donc salutaire qu''un tel rapport voie le jour pour mettre les fabricants, les vendeurs, les fournisseurs de solutions technologiques et les développeurs devant leurs responsabilités en matière de sécurité.\r\n\r\nLe rapport met aussi en avant la faisabilité des mesures de sécurité à prendre pour chaque type d''objets connectés. On y retrouve aussi une checklist de choses à contrôler et pour les utilisateurs finaux comme vous et moi, voici les questions à se poser avant d''investir dans ujn objet connecté ou les choses à vérifier une fois qu''on est en sa possession.\r\n\r\nBref, que vous soyez à fond sur le sujet, ou simplement un maker passionné, je pense que ça va vous intéresser.', '2015-12-04 14:25:04', 13),
(14, 'Astuces pour différencier ses clefs', 'localhost:8000/post/14', 'Quand on a un trousseau de clefs avec une multitude de clefs qui se ressemblent, on perd souvent un temps fou à trouver la bonne clef. Voici quelques astuces simples et efficaces qui vous faciliteront la vie et aussi gagner du temps..\r\nPour facilement différencier ses clefs, il suffit de peindre ou vernir ses têtes de clefs avec une couleur différente pour chacune d''elle. Facile et rapide à faire.\r\n\r\nUne autre idée sympa et originale, c''est de coller avec une colle forte ou du vernis colle, des bijoux fantaisies, des broches ou tout autre médaillon que vous ne portez plus..là aussi pas de limite à l''originalité pour différencier facilement vos clefs.\r\n\r\nUne autre astuce pour repérer en un clin d''oeil la bonne clef, il suffit de les habiller de housses en laine de couleurs différentes.\r\n\r\nPour les plus créatifs, vous pouvez customiser vos clefs avec de la pâte fimo et créer de petits personnages ou têtes d''animaux..', '2015-12-04 14:27:53', 14),
(15, 'Trucs pour renforcer ses défenses immunitaires pour l''hiver !', 'localhost:8000/post/15', 'Lorsqu’arrive l’automne, il faut renforcer ses défenses immunitaires, pour mieux résister aux attaques des microbes, bactéries et virus qui arriveront avec le froid. \r\n\r\nPour cela, il suffit simplement de privilégier certaines vitamines : faire une cure de vitamine C (comprimé) ou manger quotidiennement ou moins 2 kiwis ou deux oranges, consommer régulièrement des fruits secs, comme les noisettes et les amandes (riches en oligo-éléments et magnésium), consommer régulièrement du miel ou de la gelée royale, manger de l''ail, c''est un excellent anti-infectueux et un désinfectant naturel de grande efficacité, boire souvent pour éliminer les toxines. \r\n\r\nEn hiver, on peut malgré tout maintenir son quota de vitamines en consommant des oléagineux qui sont des alliés anti-fatigue par excellence. Consommer des fruits secs renforcent le système immunitaire. Les fruits secs sont les alliés anti-fatigue et anti-stress.', '2015-12-04 14:30:06', 14),
(16, 'Conserver votre parapluie plus longtemps..', 'localhost:8000/post/16', 'Pour le nettoyer et raviver ses couleurs : lavez-le de temps en temps, avec un mélange d''eau et de vinaigre blanc chauffé à 30°C et rincez. Pour conserver des baleines souples qui se plient bien : frottez-les de temps en temps, avec un coton imbibé d''huile d''olive, en insistant bien sur les articulations..Vous pouvez aussi, pour conserver l''imperméabilité de la toile, la frottez avec un chiffon imprégné d''une matière grasse, huile, cirage incolore, ou encore avec un reste de crème hydratante périmée..', '2015-12-04 14:33:15', 15),
(17, 'Un bricolage à 10$ capable de prédire et d’utiliser un numéro de carte bancaire', 'localhost:8000/post/17', 'Le hacker Samy Kamkar dont je relate souvent les découvertes ici, vient encore une fois de signer un coup de maitre. Après avoir reçu sa nouvelle carte bancaire (une American Express), il s''est rendu compte que le numéro de la carte suivait un certain schéma.\r\n\r\nAprès avoir demandé à ses amis sur Facebook les 4 derniers chiffres de leur numéro d''American Express, il a été capable de pondre un algo qui lui permet tout simplement de "trouver" le prochain numéro et la nouvelle date d''expiration d''une CB.\r\n\r\nCela veut dire que si une CB est annulé (car perdue ou volée) ou arrive à expiration, il est possible en connaissant son numéro, de prédire le nouveau numéro et la date d''expiration qu''aura la prochaine carte. D''après lui, ce n''est très simple et très "évident". Il n''a pas eu besoin de cracker d''algorithme complexe et avoue qu''il ne serait pas étonné si d''autres avaient fait cette découverte avant lui.\r\n\r\nA partir de là, il s''est amusé à concevoir un petit appareil avec 10$ de matos, baptisé MagSpoof, qui permet de simuler n''importe quelle bande magnétique de cartes bancaires, sans avoir besoin d''un code PIN et capable de basculer à tout moment sur le prochain n° de CB grâce à un petit bouton.', '2015-12-04 14:34:06', 15),
(18, 'Truc anti-poux 100 % naturel', 'localhost:8000/post/18', 'Les poux quelle plaie quand ils ont décidé de nicher sur la tête de nos enfants ou sur les notres. \r\nJ''ai trouvé ce truc 100 % naturel qui me paraît être une bonne alternative à tous les shampoings chimiques du commerce... \r\n\r\nPréparez vous-même votre shampoing anti-poux.....Réservez votre quantité de shampoing habituel et ajoutez-y : \r\n- 4 gouttes d''huiles essentielles d''eucalyptus + 4 g de romarin ou origan + 4 gouttes de lavande.. \r\nMélangez et appliquez directement sur les cheveux en massant bien, laisser agir quelques minutes et rincer.. \r\nEn prévention, mettre une goutte d''eucalyptus ou de lavande derrière chaque oreille.. \r\nC''est radical...les poux détesteront çà !', '2015-12-04 14:37:38', 15),
(19, 'Comment nettoyer votre micro-onde ?', 'localhost:8000/post/19', 'Pour bien dégraisser votre micro-onde d''une façon toute à fait naturelle, il faut suffit de mettre à chauffer un bol d''eau avec du jus de citron (la moitié d''un citron suffit) pendant 3 minutes température maxi... \r\nLe but c''est d''avoir le plus de vapeur possible, elle dégraissera votre four, et en plus il sentira bon...Après cela, un coup d''éponge, et voilà votre four nettoyé et dégraissé, sans avoir utilisé de produit chimique..', '2015-12-04 14:38:11', 15),
(20, 'Comment bien choisir son appareil photo ?', 'localhost:8000/post/20', 'Mes copains de Nowtech.tv ont pu se rendre au salon de la photo à Paris et ont pris le temps de réaliser cette superbe émission pour vous expliquer comment bien choisir votre appareil. Au sommaire de l''émission, le budget, les usages, votre niveau, les différents types d''appareil, les specs techniques, les marques à choisir et les accessoires indispensables.\r\n\r\nBref, si vous êtes débutant, je pense que ça va vous plaire ! Bon visionnage à tous !', '2015-12-04 14:39:56', 14),
(21, 'Comment nettoyer son canapé en cuir ?', 'localhost:8000/post/21', 'Le Cuir est une matière noble qui s''entretient régulièrement. \r\nCette matière supporte mal les produits nettoyants habituels, qui sont trop agressifs.. \r\n\r\nComment nettoyer et entretenir son canapé en Cuir ? \r\n\r\n1) le nettoyer avec un gant mouillé additionné de savon de marseille, frottez, insister sur les assises et accoudoirs. Rincez à l''eau claire. Essuyez avec un chiffon doux. \r\n2) appliquez ensuite sur votre cuir, un lait hydratant qui va nourrir et assouplir votre cuir, et ausi le faire briller. (lingettes hydratantes, lait démaquillant, crème de soin, etc..) et frottez avec un chiffon sec.. \r\n3) renouveler l''expérience 1 fois par mois pour garder un joli cuir.', '2015-12-04 14:41:18', 14),
(22, 'Comment dépoussiérer un pot pourri ?', 'localhost:8000/post/22', 'Placer votre pot pourri dans une passoire. Dans une casserole porter de l''eau à ébullition, déposer votre passoire au dessus de l''eau bouillante pendant quelques minutes, agiter de temps à autre..Votre pot pourri sera dépoussiéré et rafraichi par la vapeur..çà marche aussi pour les bouquets de fleurs séchées..', '2015-12-04 14:42:38', 14),
(23, 'Enlever du goudron sur la carosserie', 'localhost:8000/post/23', 'Rien de pire que du goudron sur une carosserie de voiture. \r\nVoici un truc efficace, que j''ai eu l''occasion de tester pour avoir roulé sur une route fraichement goudronnée. \r\nAprès avoir tout essayé en frottant bêtement avec des nettoyants divers, je n''ai fait qu''étaler le goudron et résultat c''était pire après, qu''avant.. \r\nEn dernier ressor, j''ai frotté mes tâches de goudron avec du white spirit...et miracle..çà marche à merveille, j''ai réussi à faire disparaître assez facilement tout le goudron. \r\n\r\nN''hésitez pas, ce truc marche du tonnerre !', '2015-12-04 14:43:31', 14);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(13, 'manu', 'manu', 'manu@gmail.com', 'manu@gmail.com', 1, 'rgsovvtuylw80sgskokk4ksk88w8sg8', '$2y$13$rgsovvtuylw80sgskokk4eoVxmzs6vaxBCu3WUek4aioy0duuapMa', '2015-12-04 14:07:48', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(14, 'morgane', 'morgane', 'morgane@gmail.com', 'morgane@gmail.com', 1, 'nrgx5h0ighwkssocggkcowowcsckcw8', '$2y$13$nrgx5h0ighwkssocggkcouLl7xWgK0IsGRoKxDdXMDEehn.PooT7K', '2015-12-04 14:38:50', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(15, 'geoffrey', 'geoffrey', 'geoffrey@gmail.com', 'geoffrey@gmail.com', 1, '6y0ap71xvhssksowos0gk4ocwcwg4s4', '$2y$13$6y0ap71xvhssksowos0gkuBX8YpCvM2qUkV81NWR.sRhF5wJv8PMW', '2015-12-04 14:30:44', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
