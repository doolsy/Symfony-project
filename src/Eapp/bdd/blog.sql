-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 06 Décembre 2015 à 23:51
-- Version du serveur :  5.6.21
-- Version de PHP :  5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `titre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url_alias` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `post`
--

INSERT INTO `post` (`id`, `image_id`, `titre`, `url_alias`, `content`, `published`) VALUES
(1, NULL, 'Kobe Bryant : 1 club, 20 saisons, 5 titres, 10 coaches, 143 coéquipiers', 'kobe-bryant-1-club-20-saisons-5-titres-10-coaches-143-coequipiers', 'Il débute sa carrière aux côtés de Byron Scott, Derek Fisher et Shaquille O’Neal\r\nVingt années passées dans la grande Ligue NBA, 20 années passées dans la même équipe, Kobe Bryant est une légende vivante du basket et des Los Angeles Lakers, et tout a commencé en juin 1996 avec la traditionnelle draft.\r\nCe sont les Charlotte Hornets qui sélectionnent le natif de Philadelphie, en 13e position, mais il est échangé directement aux Lakers. La franchise hollywoodienne est en pleine reconstruction après la retraite de Magic Johnson et elle décide miser sur un lycéen de 18 ans qui a tapé dans l’oeil de Jerry West.\r\nKobe Bryant arrive alors en même temps que Derek Fisher (drafté par les Lakers la même année que lui, en 24e position) ainsi qu’un certain Shaquille O’Neal. C’est le début du duo légendaire des Lakers Kobe-Shaq qui réussira le fameux Three-Peat (2000, 2001 et 2002).\r\nCette année 1996, Kobe rejoint aussi des joueurs aguerris et respectés comme Byron Scott, Nick Van Exel ou le regretté Jerome Kersey. Ils sont parmi les premiers des 143 joueurs qui porteront le même maillot que le Black Mamba. Histoire de boucler la boucle, Byron Scott est d’ailleurs aujourd’hui l’entraîneur des Lakers et de Kobe.', '2015-12-06 23:22:27'),
(2, NULL, 'Nando De Colo élu dans la All-Euroleague Second Team', 'nando-de-colo-elu-dans-la-all-euroleague-second-team', 'Joffrey Lauvergne va débuter la Summer League en petite forme physique puisque le Français sort d’une infection au pied.\r\n\r\nForcément, pour reprendre la compétition, même dans une ligue d’été, ce n’est pas l’idéal. La saison passée, en 24 rencontres, Joffrey Lauvergne avait compilé 3.9 points et 3.2 rebonds de moyenne en 11 minutes par match.', '2015-12-06 23:24:24'),
(3, NULL, 'Le bilan de la présaison des Français', 'le-bilan-de-la-presaison-des-francais', 'En attendant de relancer la rubrique spécialement dédiée (« le coin des français »), on a décidé de vous proposer un bilan de la présaison pour nos chers Bleus. Si les uns et les autres en sont à différents stades de condition physique, certains soignant des bobos et d’autres reprenant encore en douceur, la colonie tricolore a encore fière allure cette saison.\r\n\r\nEmmenée par ses leaders, Tony Parker et Joakim Noah, la classe française impose sa griffe sur la NBA avec pas moins de 11 représentants, dont 7 intérieurs et 4 extérieurs. Avec Nicolas Batum et Evan Fournier, voire Rudy Gobert, la nouvelle génération prend peu à peu le pouvoir et a en tout cas l’opportunité de passer un cap supplémentaire cette saison en assumant des responsabilités élargies. On suivra tout ça de très près évidemment !', '2015-12-06 23:25:56'),
(4, NULL, 'New Orleans Pelicans : Alexis Ajinça blessé et mis au repos', 'new-orleans-pelicans-alexis-ajinca-blesse-et-mis-au-repos', 'Selon NOLA.com, Alexis Ajinça serait actuellement gêné par une blessure aux quadriceps et manquera donc le premier match de pré-saison, ce soir, face au Heat.\r\n\r\nNéanmoins, le pivot français devrait être remis sur pied dès lundi prochain pour jouer contre les Hawks. C’est donc une simple précaution qui ne remet pas en cause sa présence pour l’ouverture de la saison.\r\n\r\nEn son absence, c’est Jeff Whitey qui devrait disputer la majeure partie de la rencontre puisqu’ Ömer Asik sera vraisemblablement économisé durant le match.\r\n\r\nLoin de l’équipe de France, le champion d’Europe 2013 a profité de l’été pour se renforcer, il aurait ainsi gagné une dizaine de kilos de muscles.', '2015-12-06 23:26:29'),
(5, NULL, 'Tony Parker : « C’est mon titre préféré »', 'tony-parker-c-est-mon-titre-prefere', 'Actuellement en vacances, Tony Parker profite de son été pour prendre du repos et découvrir la paternité après une saison NBA harassante. En pleine tournée promo pour son sponsor Peak, le meneur français revient sur son histoire d’amour avec les Spurs, laquelle se prolongera jusqu’en 2018, au moins, si tout va bien.', '2015-12-06 23:27:26'),
(6, NULL, 'Ligue 1 : Saint-Etienne arrache le nul face à Rennes', 'ligue-1-saint-etienne-arrache-le-nul-face-a-rennes', 'C’était l’heure du rachat pour Saint-Etienne (8e) comme pour Rennes (10e) qui s’affrontaient ce dimanche à Geoffroy-Guichard pour la dernière rencontre de cette 17e journée. En quête de régularité dans ce championnat, les deux équipes affichent un niveau inquiétant ces dernières semaines. Après avoir perdus 6 de leurs 9 derniers matches, les Verts se devaient de remporter cette rencontre pour revenir dans le haut du classement. Côté rennais, un succès était aussi impératif après avoir rendu trois matches consécutifs sans gagner. Et bonne surprise pour les Bretons puisqu’au coup d’envoi, Philippe Montanier titularisait Quintero.\r\nSeulement, les deux formations ne sont pas réputées pour leur jeu flamboyant et cela se voyait rapidement. Preuve en était avec des enchaînements d’erreurs techniques. Seul Monnet-Paquet se signalait en plaçant sa tête de peu à côté après un mauvais renvoi rennais (5e). Malgré un festival de corners, les Verts n’arrivaient à se montrer dangereux. Rennes profitait de la domination territoriale adverse pour exister en contre. Suite à un décalage de Quintero, Pedro Henrique obligeait Ruffier à une belle claquette sur un tir de 25 mètres (22e). Peu avant la mi-temps, le Brésilien trouvait cette fois-ci le but en reprenant un centre de Sio (0-1, 40e). A la pause, les Stéphanois n’y étaient clairement pas.', '2015-12-06 23:28:18'),
(7, NULL, 'Nice répond à l’intérêt des ogres européens pour Ben Arfa', 'nice-repond-a-l-interet-des-ogres-europeens-pour-ben-arfa', 'Nice réalise une bonne saison. 6e de Ligue 1 avec une attaque explosive (30 buts marqués en 17 journées de championnat), le Gym retrouve sa lumière d’antan grâce à une dynamique collective particulièrement séduisante représentée par un joueur en particulier, Hatem Ben Arfa. A l’image de son club, le milieu offensif revient sur le devant de la scène. Meilleur dribbleur des cinq grands championnats européens (63 dribbles devant Neymar 52 ou Hazard 44), il affiche une forme éblouissante depuis le mois d’août. De quoi attirer les plus grands clubs européens naturellement.\r\nGalatasaray, l’Inter Milan, le Borussia Dortmund, des clubs anglais, ils sont tous charmés par le niveau affiché actuellement par l’international français (7 buts et 2 passes décisives en 16 apparitions de Ligue 1). D’autant que son contrat à Nice se termine à la fin de la saison 2016. Malgré ses années perdues, les grandes écuries européennes ont l’air décidées à passer à l’action pour enrôler le joueur. Seulement, il faudra le convaincre, lui qui semble s’être attaché au Gym.\r\nC’est en substance ce qu’a annoncé Jean-Pierre Rivère. Invité sur le Canal Football Club, le président de l’OGC Nice se voulait confiant pour conserver le natif de Clamart. « C’est un joueur qui est très attachant humainement parlant, et qui mérite une autre image que celle qu’il a. Il se plait à Nice, il est très bien et très heureux. Des clubs anglais sont dessus. Il a envie de rester et on le gardera. On verra la saison que nous allons faire, il y aura un problème financier qu’il faudra assumer. Hatem a une chose rare dans le football, il a une parole. Je l’espère, je le souhaite en tout cas. » Le feuilleton du départ ou non de Ben Arfa à Nice vient de commencer.', '2015-12-06 23:29:15'),
(8, NULL, 'OM : un Michel désarmé face à sa défense', 'om-un-michel-desarme-face-a-sa-defense', 'Les semaines se suivent et se ressemblent au Vélodrome. C’est bien simple, depuis le 13 septembre et la réception de Bastia, l’OM n’a plus gagné à domicile en Ligue 1. Seules deux petites victoires compliquées en Ligue Europa contre Braga et Groningue sont venues interrompre cette triste série de 6 matches. D’autant que les scénarios se ressemblent. Ce dimanche, Marseille a arraché le nul face à Montpellier (2-2) après être parvenu le week-end dernier à égaliser dans les dix dernières minutes face à Monaco (3-3). De quoi interpeller Michel.\r\n« Les matches et les conférences de presse se répètent, les mêmes questions reviennent... se lasse le coach olympien la tête dépitée. Nous donnons trop de facilité à nos adversaires, jusqu’à quand ? Je ne sais pas. On pourrait parler longtemps de la situation, comment nous jouons à la maison, mais c’est difficile de la résoudre. Certaines choses sont compliquées à expliquer, comme le but de Groningue ou le second but que nous prenons aujourd’hui (Ndlr, sur des dégagements ratés dans la surface). Nous nous entraînons collectivement, mais les actions individuelles c’est plus dur de les corriger, ce sont des actions à un moment déterminé. »\r\nCar encore une fois, la défense marseillaise et notamment Rekik sur le second but montpelliérain sont passés au travers sur quelques actions. Évidemment, Michel n’a voulu incriminer personne, assurant que c’est le collectif qui a fait défaut. « Nous devons beaucoup plus travailler collectivement, je ne me lasse jamais de le répéter, nous ne résoudrons rien individuellement, mais collectivement. Et il me semble que nous sommes plus responsables à l’extérieur. L’histoire se répète, il y a sept jours, il fallait qu’on marque et nos adversaires en ont profité. Nous devons jouer pour marquer des buts alors que nos adversaires n’ont qu’à profiter de nos erreurs. » Car Marseille a une défense bien trop poreuse au Vélodrome (10 buts lors de ses 6 matches sans victoire) pour espérer revenir sur les équipes de têtes. Michel a encore du boulot.', '2015-12-06 23:30:08'),
(9, NULL, 'Monaco passe à l’action pour un défenseur champion du Brésil', 'monaco-passe-a-l-action-pour-un-defenseur-champion-du-bresil', 'Meilleure défense de Ligue 1 en 2014/15, l’AS Monaco est, après 16 journées, la seizième arrière-garde du championnat, avec 22 buts encaissés. Les départs de Layvin Kurzawa (Paris SG) et Aymen Abdennour (FC Valence) ont profondément affaibli le secteur défensif de Leonardo Jardim, par ailleurs vieillissant avec Andrea Raggi (31 ans) et Ricardo Carvalho (37 ans). Face à ce constat, les dirigeants monégasques ont décidé de chercher du renfort derrière. Le média brésilien O Globoesporte croit connaître l’une des cibles hivernales de l’ASM. \r\nSelon les informations de la publication auriverde, la formation du Rocher serait sur les traces de Felipe (26 ans), défenseur central, récent champion du Brésil avec Corinthians. Ce dernier, auteur de 25 matches en Série A cette saison, forme avec l’ancien Valenciennois Gil (28 ans) l’une des meilleures charnières du championnat brésilien. Il a ainsi tapé dans l’œil des observateurs monégasques. Son gabarit (1m90) en fait un atout dans le jeu aérien et sur coups de pied arrêtés (il a inscrit 4 buts toutes compétitions confondues cette saison) sans l’handicaper puisque sa vitesse lui permet de ne pas se faire prendre en défaut par les attaquants adverses.', '2015-12-06 23:30:49'),
(10, NULL, 'Karim Benzema hausse le ton face à une polémique et juge son avenir chez les Bleus', 'karim-benzema-hausse-le-ton-face-a-une-polemique-et-juge-son-avenir-chez-les-bleus', 'Karim Benzema est sous le feu des critiques de l’opinion publique. Pour son implication dans l’affaire de la sextape de Mathieu Valbuena, des voix s’élèvent pour son bannissement de l’équipe de France. Des voix renforcées récemment par la polémique autour de son crachat à l’issue de la Marseillaise en hommage aux victimes des attentats de Paris en marge du Clasico du 21 novembre dernier. Une polémique que l’attaquant français ne digère pas, à en juger par ses déclarations lâchées à Téléfoot.\r\n« Je trouve ça lamentable. C’est nul d’inventer des histoires comme ça, de dire des choses aussi graves. Si tu regardes pendant l’hymne, je suis sincère et sérieux dans mon regard, je pense aux victimes, à ma famille, au foot. À aucun moment, je ne pense à cracher sur la Marseillaise. C’est lamentable de me faire passer pour quelqu’un comme ça, qui ne respecte pas mon pays, qui ne respecte pas les morts. Ça fait mal », a-t-il regretté, avant de rappeler son attachement au maillot bleu, souvent pointé du doigt du fait qu’il ne chante pas l’hymne.\r\n« Je me sens français. Les polémiques, j’en ai marre. Si c’était obligatoire, je la chanterais la Marseillaise. J’ai toujours respecté les règles. Je ne vais pas venir 81 fois en sélection et ne pas aimer être là. Je suis attaché à l’équipe de France. J’ai envie de gagner un titre avec mon pays », a-t-il poursuivi. Et de fait, l’ancien Lyonnais n’a aucune crainte quant à son retour chez les Bleus et sa participation à l’Euro. « Ça a toujours été mon objectif de jouer pour les Bleus. Avec Valbuena ? C’est mon souhait. C’est un bon joueur, la France a besoin de lui comme de moi. Si j’ai peur de ne pas être à l’Euro ? Non ». Voilà qui est dit.', '2015-12-06 23:31:38');

-- --------------------------------------------------------

--
-- Structure de la table `tut_image`
--

CREATE TABLE IF NOT EXISTS `tut_image` (
`id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
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
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'asy', 'asy', 'asy@gmail.com', 'asy@gmail.com', 1, 'gmg67icodfcwggok884wss0wo8s4ks8', '5PfGmGUsjbb7kh9YrAla2/3IMPEu7Se+D+Q4mmekU+31o7X5wtDV0AtZ5MRsQOL9c9fRtNAcej+Y7aKAqo98rw==', '2015-12-06 23:38:12', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_5A8A6C8D24C804E3` (`url_alias`), ADD UNIQUE KEY `UNIQ_5A8A6C8D3DA5256D` (`image_id`);

--
-- Index pour la table `tut_image`
--
ALTER TABLE `tut_image`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`), ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `tut_image`
--
ALTER TABLE `tut_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
ADD CONSTRAINT `FK_5A8A6C8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `tut_image` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
