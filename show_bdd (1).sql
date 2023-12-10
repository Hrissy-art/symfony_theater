-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 10 déc. 2023 à 19:33
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `show_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `name_show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `summary_show` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`),
  KEY `IDX_23A0E66A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `category_id`, `name_show`, `created_on`, `visible`, `summary_show`, `img`, `user_id`) VALUES
(152, 35, 'test_update', '2022-04-19 03:29:55', 1, 'I don\'t know of any one; so.', 'https://via.placeholder.com/640x480.png/007722?text=sed', 4),
(153, 54, 'Cat. \'I.', '2023-08-25 07:24:36', 1, 'Duchess sang the second time.', 'https://via.placeholder.com/640x480.png/007711?text=ipsam', 3),
(154, 33, 'King. On.', '2023-01-28 14:32:27', 0, 'I shall have some fun now!\'.', 'https://via.placeholder.com/640x480.png/0066ff?text=perspiciatis', 3),
(155, 58, 'White.', '2022-05-07 14:37:29', 1, 'VERY wide, but she saw in.', 'https://via.placeholder.com/640x480.png/001155?text=rerum', 3),
(156, 34, 'I can\'t.', '2021-12-06 04:34:14', 1, 'She had already heard her.', 'https://via.placeholder.com/640x480.png/005555?text=enim', 4),
(157, 48, 'So she.', '2022-03-11 08:00:39', 0, 'March.\' As she said this.', 'https://via.placeholder.com/640x480.png/0066aa?text=molestias', 4),
(158, 32, 'Pigeon.', '2022-01-09 19:01:19', 1, 'Rabbit say to itself, \'Oh.', 'https://via.placeholder.com/640x480.png/008899?text=aliquam', 4),
(159, 56, 'Rabbit.', '2022-07-30 19:16:57', 1, 'The Mouse looked at Alice.', 'https://via.placeholder.com/640x480.png/001166?text=magnam', 4),
(160, 47, 'Gryphon.', '2022-02-20 01:54:52', 1, 'Wonderland, though she.', 'https://via.placeholder.com/640x480.png/00aacc?text=reprehenderit', 3),
(161, 52, 'Just at.', '2022-11-25 03:37:27', 1, 'It was so full of smoke from.', 'https://via.placeholder.com/640x480.png/002200?text=facilis', 4),
(162, 48, 'English.', '2022-07-12 18:25:36', 1, 'I used to say it over).', 'https://via.placeholder.com/640x480.png/0055bb?text=eveniet', 3),
(163, 37, 'I almost.', '2022-10-20 01:57:32', 1, 'Dinah, if I can creep under.', 'https://via.placeholder.com/640x480.png/00bb22?text=beatae', 4),
(164, 46, 'Rabbit.', '2023-03-02 10:42:41', 1, 'I have done that, you know,\'.', 'https://via.placeholder.com/640x480.png/00ff99?text=et', 3),
(165, 54, 'Alice.', '2023-10-01 18:53:57', 1, 'Hatter. \'You MUST remember,\'.', 'https://via.placeholder.com/640x480.png/00ff33?text=porro', 3),
(166, 54, 'Queen\'s.', '2023-04-19 11:05:34', 1, 'When they take us up and say.', 'https://via.placeholder.com/640x480.png/000033?text=explicabo', 4),
(167, 52, 'CHAPTER.', '2023-01-07 09:04:44', 1, 'I to do?\' said Alice. The.', 'https://via.placeholder.com/640x480.png/00ffdd?text=ex', 4),
(168, 44, 'Hatter.', '2021-12-13 13:35:56', 1, 'Mock Turtle to the fifth.', 'https://via.placeholder.com/640x480.png/00aa55?text=nesciunt', 4),
(169, 43, 'Alice in.', '2023-01-27 15:31:10', 1, 'The Mouse did not get hold.', 'https://via.placeholder.com/640x480.png/0099dd?text=voluptatem', 4),
(170, 46, 'Alice.', '2022-07-27 14:47:33', 0, 'Caterpillar. Alice said to.', 'https://via.placeholder.com/640x480.png/008811?text=aut', 3),
(171, 46, 'Dodo.', '2022-08-12 09:50:09', 1, 'Alice began to tremble.', 'https://via.placeholder.com/640x480.png/0044bb?text=facilis', 4),
(172, 60, 'It was.', '2023-01-05 19:51:59', 0, 'WHAT?\' said the Gryphon. \'It.', 'https://via.placeholder.com/640x480.png/0011ff?text=id', 4),
(173, 53, 'Alice.', '2022-04-12 05:35:38', 1, 'I then? Tell me that first.', 'https://via.placeholder.com/640x480.png/001155?text=ut', 4),
(174, 56, 'TRUE--\".', '2022-03-14 04:24:30', 1, 'Dormouse: \'not in that case.', 'https://via.placeholder.com/640x480.png/00cc99?text=molestiae', 3),
(175, 35, 'Indeed.', '2022-12-10 22:49:30', 1, 'Alice, always ready to sink.', 'https://via.placeholder.com/640x480.png/0033ee?text=qui', 4),
(176, 59, 'Him, and.', '2022-08-10 07:24:01', 1, 'Only I don\'t want to go! Let.', 'https://via.placeholder.com/640x480.png/0066ee?text=perferendis', 4),
(177, 42, 'However.', '2023-02-13 08:16:53', 1, 'OF ITS WAISTCOAT-POCKET, and.', 'https://via.placeholder.com/640x480.png/0011ee?text=magni', 4),
(178, 59, 'Who in.', '2022-08-25 04:51:46', 1, 'Let me think: was I the same.', 'https://via.placeholder.com/640x480.png/009988?text=praesentium', 3),
(179, 55, 'The jury.', '2022-03-17 15:11:15', 1, 'I dare say you never tasted.', 'https://via.placeholder.com/640x480.png/009900?text=accusantium', 4),
(180, 35, 'Which.', '2022-05-24 08:56:05', 1, 'Alice for protection. \'You.', 'https://via.placeholder.com/640x480.png/002222?text=veniam', 4),
(181, 45, 'ME.\'.', '2023-03-18 06:14:39', 0, 'MINE,\' said the Cat said.', 'https://via.placeholder.com/640x480.png/00aa99?text=placeat', 4),
(182, 39, 'Alice.', '2023-08-23 09:58:25', 1, 'Duchess! The Duchess! Oh my.', 'https://via.placeholder.com/640x480.png/004444?text=qui', 3),
(183, 55, 'Five. \'I.', '2023-03-11 20:51:11', 1, 'Lory, as soon as look at a.', 'https://via.placeholder.com/640x480.png/008844?text=distinctio', 4),
(184, 40, 'Alice.', '2022-11-07 04:30:24', 1, 'Alice; \'you needn\'t be.', 'https://via.placeholder.com/640x480.png/004422?text=voluptatum', 3),
(185, 41, 'D,\' she.', '2023-11-07 12:20:12', 1, 'In another moment down went.', 'https://via.placeholder.com/640x480.png/00ccdd?text=dignissimos', 4),
(186, 41, 'Why.', '2022-10-03 17:02:48', 1, 'NOT be an advantage,\' said.', 'https://via.placeholder.com/640x480.png/006666?text=repudiandae', 4),
(187, 43, 'Next.', '2023-05-14 09:09:20', 1, 'King, rubbing his hands; \'so.', 'https://via.placeholder.com/640x480.png/004488?text=repellat', 4),
(188, 39, 'Alice!.', '2022-06-28 11:43:54', 0, 'Lobster; I heard him.', 'https://via.placeholder.com/640x480.png/00bb11?text=et', 4),
(189, 56, 'Then the.', '2023-03-26 10:23:24', 1, 'There was a long and a sad.', 'https://via.placeholder.com/640x480.png/0033ff?text=ut', 4),
(190, 48, 'What.', '2021-12-15 01:29:16', 0, 'Lory hastily. \'I don\'t think.', 'https://via.placeholder.com/640x480.png/00ddcc?text=earum', 4),
(191, 46, 'Shark.', '2023-08-23 21:06:23', 0, 'I\'ll set Dinah at you!\'.', 'https://via.placeholder.com/640x480.png/00ffee?text=non', 3),
(192, 55, 'Hatter.', '2022-01-31 18:06:17', 1, 'I to do?\' said Alice. \'You.', 'https://via.placeholder.com/640x480.png/00ff66?text=nam', 3),
(193, 52, 'Cheshire.', '2023-05-07 21:06:30', 1, 'Turtle--we used to it in.', 'https://via.placeholder.com/640x480.png/00ff00?text=suscipit', 4),
(194, 33, 'Then she.', '2022-07-03 03:09:37', 1, 'King, going up to them to be.', 'https://via.placeholder.com/640x480.png/003399?text=quis', 4),
(195, 31, 'Bill\'s.', '2023-08-14 08:08:30', 0, 'I\'m never sure what I\'m.', 'https://via.placeholder.com/640x480.png/004466?text=recusandae', 3),
(196, 57, 'I THINK.', '2023-01-07 01:47:15', 0, 'Between yourself and me.\'.', 'https://via.placeholder.com/640x480.png/00ffcc?text=facere', 4),
(197, 60, 'Alice.', '2022-09-13 07:36:28', 1, 'WHAT?\' thought Alice.', 'https://via.placeholder.com/640x480.png/006677?text=quas', 4),
(198, 54, 'I almost.', '2023-02-07 01:38:21', 1, 'So she began again: \'Ou est.', 'https://via.placeholder.com/640x480.png/002222?text=tempora', 3),
(199, 54, 'Alice.', '2023-08-31 13:28:37', 1, 'Hatter. \'Does YOUR watch.', 'https://via.placeholder.com/640x480.png/00ddcc?text=nobis', 3),
(200, 31, 'Was.', '2022-07-02 13:02:29', 1, 'White Rabbit: it was.', 'https://via.placeholder.com/640x480.png/0000ff?text=velit', 3),
(201, 33, 'CHAPTER.', '2023-11-16 07:50:58', 1, 'Game, or any other dish? Who.', 'https://via.placeholder.com/640x480.png/00ddbb?text=blanditiis', 3),
(202, 39, 'Gryphon.', '2023-08-31 22:56:52', 1, 'CHAPTER XII. Alice\'s.', 'https://via.placeholder.com/640x480.png/00ee44?text=quo', 4),
(203, 35, 'The.', '2023-08-12 02:49:48', 1, 'Alice, who always took a.', 'https://via.placeholder.com/640x480.png/0000ff?text=dolor', 3),
(204, 31, 'KNOW IT.', '2022-11-17 16:49:07', 1, 'Mock Turtle at last, they.', 'https://via.placeholder.com/640x480.png/00ccff?text=fugiat', 4),
(205, 41, 'I!\' he.', '2022-06-17 07:07:13', 0, 'Knave was standing before.', 'https://via.placeholder.com/640x480.png/0077dd?text=qui', 3),
(206, 52, 'So they.', '2023-03-26 09:51:14', 1, 'Caterpillar\'s making such a.', 'https://via.placeholder.com/640x480.png/00dd44?text=est', 3),
(207, 54, 'Cheshire.', '2023-11-18 10:11:35', 0, 'ME, and told me you had been.', 'https://via.placeholder.com/640x480.png/00aabb?text=sit', 4),
(208, 43, 'Gryphon.', '2022-06-18 13:56:19', 1, 'Gryphon: and it sat down in.', 'https://via.placeholder.com/640x480.png/002233?text=eius', 3),
(209, 60, 'I got up.', '2023-10-19 01:09:36', 1, 'I to get an opportunity of.', 'https://via.placeholder.com/640x480.png/0088aa?text=earum', 4),
(210, 38, 'Gryphon.', '2022-04-25 06:06:55', 1, 'Who for such a very short.', 'https://via.placeholder.com/640x480.png/008844?text=libero', 3),
(211, 37, 'Alice.', '2022-11-24 14:28:26', 1, 'Alice did not sneeze, were.', 'https://via.placeholder.com/640x480.png/0044cc?text=consequatur', 4),
(212, 41, 'I don\'t.', '2022-12-21 19:45:37', 1, 'It\'s enough to drive one.', 'https://via.placeholder.com/640x480.png/00dd99?text=qui', 3),
(213, 31, 'Alice.', '2023-05-23 04:39:01', 0, 'Alice put down her anger as.', 'https://via.placeholder.com/640x480.png/0033dd?text=pariatur', 4),
(214, 57, 'I shan\'t.', '2022-12-12 16:06:04', 1, 'Caterpillar The Caterpillar.', 'https://via.placeholder.com/640x480.png/007755?text=amet', 4),
(215, 46, 'Alice.', '2022-06-15 22:36:11', 0, 'Alice felt that there ought!.', 'https://via.placeholder.com/640x480.png/0077bb?text=harum', 3),
(216, 59, 'Then she.', '2022-04-02 04:30:31', 1, 'The Mouse gave a sudden.', 'https://via.placeholder.com/640x480.png/00bb77?text=excepturi', 4),
(217, 55, 'If she.', '2022-12-14 18:18:06', 1, 'Queen. \'Never!\' said the.', 'https://via.placeholder.com/640x480.png/00aa88?text=impedit', 3),
(218, 37, 'Hatter.', '2023-03-06 15:44:47', 1, 'Duchess, \'and that\'s the.', 'https://via.placeholder.com/640x480.png/00ffdd?text=dolor', 3),
(219, 47, 'THE.', '2023-11-14 08:37:49', 1, 'Caterpillar; and it set to.', 'https://via.placeholder.com/640x480.png/008899?text=aut', 3),
(220, 60, 'Turtle.\'.', '2022-10-06 00:55:36', 1, 'So she began: \'O Mouse, do.', 'https://via.placeholder.com/640x480.png/001199?text=voluptates', 4),
(221, 32, 'Alice.', '2023-07-19 17:16:10', 1, 'I never was so ordered about.', 'https://via.placeholder.com/640x480.png/00bb22?text=blanditiis', 4),
(222, 33, 'Gryphon.', '2023-08-29 19:30:38', 0, 'It\'s by far the most curious.', 'https://via.placeholder.com/640x480.png/006666?text=quia', 3),
(223, 45, 'And she.', '2023-02-14 16:16:57', 0, 'Said the mouse to the.', 'https://via.placeholder.com/640x480.png/00ee55?text=nisi', 3),
(224, 41, 'Alice to.', '2023-02-25 07:49:06', 1, 'Alice with one finger; and.', 'https://via.placeholder.com/640x480.png/0000bb?text=quo', 3),
(225, 39, 'All on a.', '2023-04-10 15:23:55', 1, 'Hatter. \'You might just as.', 'https://via.placeholder.com/640x480.png/0022bb?text=debitis', 3),
(226, 44, 'I could.', '2023-03-24 01:13:22', 1, 'After a minute or two to.', 'https://via.placeholder.com/640x480.png/00cc11?text=voluptas', 3),
(227, 41, 'CHAPTER.', '2022-10-15 16:29:48', 1, 'Alice as he came, \'Oh! the.', 'https://via.placeholder.com/640x480.png/005577?text=culpa', 4),
(228, 44, 'I shall.', '2023-11-19 17:24:51', 1, 'Come on!\' So they got thrown.', 'https://via.placeholder.com/640x480.png/00aaee?text=qui', 3),
(229, 55, 'But at.', '2022-08-04 06:10:53', 1, 'For instance, if you cut.', 'https://via.placeholder.com/640x480.png/00aaaa?text=repellendus', 4),
(230, 54, 'Duchess.', '2022-02-02 12:06:04', 1, 'I am! But I\'d better take.', 'https://via.placeholder.com/640x480.png/00ddff?text=molestiae', 4),
(231, 41, 'Though.', '2022-10-20 18:53:06', 1, 'Alice and all must have a.', 'https://via.placeholder.com/640x480.png/0066ee?text=velit', 3),
(232, 41, 'Alice.', '2023-01-07 12:51:49', 1, 'Queen to play with, and oh!.', 'https://via.placeholder.com/640x480.png/006677?text=velit', 3),
(233, 32, 'Please.', '2023-02-27 12:31:35', 0, 'Mabel, for I know all the.', 'https://via.placeholder.com/640x480.png/0011dd?text=voluptatum', 4),
(234, 36, 'Queen.', '2023-05-04 14:53:32', 0, 'I am now? That\'ll be a.', 'https://via.placeholder.com/640x480.png/0033ee?text=nihil', 4),
(235, 52, 'The.', '2023-05-28 05:28:41', 1, 'White Rabbit, who was.', 'https://via.placeholder.com/640x480.png/005566?text=eveniet', 3),
(236, 56, 'Alice.', '2023-03-07 22:27:01', 1, 'Alice looked at it, and on.', 'https://via.placeholder.com/640x480.png/00ff00?text=a', 3),
(237, 38, 'Mock.', '2022-08-24 10:25:38', 1, 'Queen. \'It proves nothing of.', 'https://via.placeholder.com/640x480.png/002255?text=facilis', 4),
(238, 58, 'I give.', '2022-09-26 16:35:05', 1, 'Gryphon said, in a wondering.', 'https://via.placeholder.com/640x480.png/004466?text=sit', 3),
(239, 56, 'Alice\'s.', '2022-10-05 05:16:08', 1, 'Sir, With no jury or judge.', 'https://via.placeholder.com/640x480.png/005500?text=et', 4),
(240, 40, 'And I.', '2022-05-07 10:22:42', 1, 'Dormouse. \'Write that down,\'.', 'https://via.placeholder.com/640x480.png/001100?text=quasi', 3),
(241, 34, 'I\'ve had.', '2023-08-20 13:48:23', 1, 'CHAPTER XII. Alice\'s.', 'https://via.placeholder.com/640x480.png/004499?text=saepe', 3),
(242, 34, 'I shall.', '2022-01-05 11:40:43', 1, 'Alice thought this must be.', 'https://via.placeholder.com/640x480.png/0022dd?text=neque', 3),
(243, 35, 'Alice.', '2023-03-09 09:56:00', 1, 'The Cat\'s head with great.', 'https://via.placeholder.com/640x480.png/002211?text=aut', 4),
(244, 45, 'Alice.', '2022-08-29 23:23:04', 0, 'Duchess and the baby was.', 'https://via.placeholder.com/640x480.png/005566?text=optio', 4),
(245, 32, 'I hadn\'t.', '2023-08-23 03:08:42', 1, 'Caterpillar. \'I\'m afraid I.', 'https://via.placeholder.com/640x480.png/0033cc?text=mollitia', 3),
(246, 46, 'Alice.', '2022-05-17 23:43:09', 1, 'Pat, what\'s that in some.', 'https://via.placeholder.com/640x480.png/005555?text=laudantium', 3),
(247, 57, 'Gryphon.', '2022-05-23 23:02:13', 0, 'Queen\'s absence, and were.', 'https://via.placeholder.com/640x480.png/00ff99?text=sed', 4),
(248, 32, 'Alice.', '2022-10-09 06:37:15', 1, 'The Antipathies, I think--\'.', 'https://via.placeholder.com/640x480.png/00dd77?text=animi', 4),
(249, 55, 'Lizard).', '2022-07-06 17:53:58', 1, 'When she got back to them.', 'https://via.placeholder.com/640x480.png/00cc44?text=quia', 3),
(250, 33, 'Mock.', '2022-02-27 00:45:04', 1, 'However, at last the.', 'https://via.placeholder.com/640x480.png/007799?text=omnis', 4),
(251, 43, 'She had.', '2023-09-28 07:50:50', 1, 'No, it\'ll never do to hold.', 'https://via.placeholder.com/640x480.png/00bb77?text=eligendi', 4),
(252, 33, 'The.', '2022-10-28 22:14:59', 0, 'Queen. \'Well, I hardly.', 'https://via.placeholder.com/640x480.png/00bb88?text=non', 4),
(253, 38, 'The Cat.', '2022-11-21 18:34:27', 1, 'Alice aloud, addressing.', 'https://via.placeholder.com/640x480.png/0000cc?text=aut', 4),
(254, 47, 'I can.', '2023-03-10 05:57:08', 0, 'I could let you out, you.', 'https://via.placeholder.com/640x480.png/00eeee?text=odio', 3),
(255, 41, 'Alice to.', '2022-08-07 06:50:38', 0, 'Alice. \'Why, there they lay.', 'https://via.placeholder.com/640x480.png/00bbee?text=earum', 4),
(256, 44, 'Bill,\'.', '2023-04-21 14:30:38', 1, 'Alice was so long since she.', 'https://via.placeholder.com/640x480.png/005544?text=corrupti', 3),
(257, 43, 'Soup, so.', '2022-07-19 16:50:23', 1, 'Rabbit asked. \'No, I give it.', 'https://via.placeholder.com/640x480.png/00ee33?text=doloribus', 4),
(258, 59, 'CHAPTER.', '2022-11-21 12:09:09', 1, 'The judge, by the carrier,\'.', 'https://via.placeholder.com/640x480.png/008833?text=assumenda', 4),
(259, 49, 'I\'ll get.', '2022-11-16 08:44:29', 1, 'So they went up to her head.', 'https://via.placeholder.com/640x480.png/00bb44?text=sint', 3),
(260, 38, 'Why.', '2022-03-12 02:41:35', 0, 'Alice, \'to pretend to be.', 'https://via.placeholder.com/640x480.png/00bb00?text=ducimus', 4),
(261, 54, 'Canary.', '2022-04-01 15:31:13', 0, 'Majesty,\' said the Gryphon.', 'https://via.placeholder.com/640x480.png/007733?text=et', 4),
(262, 50, 'Gryphon.', '2022-07-02 21:03:18', 1, 'I almost wish I hadn\'t to.', 'https://via.placeholder.com/640x480.png/0022ff?text=a', 4),
(263, 36, 'Mock.', '2021-12-27 20:01:56', 1, 'They all made of solid.', 'https://via.placeholder.com/640x480.png/0022cc?text=cumque', 4),
(264, 51, 'I see\"!\'.', '2022-05-24 19:45:07', 1, 'Dormouse. \'Fourteenth of.', 'https://via.placeholder.com/640x480.png/00eeee?text=sed', 3),
(265, 56, 'Was.', '2023-08-13 12:24:54', 0, 'Alice in a very truthful.', 'https://via.placeholder.com/640x480.png/0088cc?text=omnis', 4),
(266, 55, 'THEIR.', '2022-08-30 05:30:41', 1, 'Between yourself and me.\'.', 'https://via.placeholder.com/640x480.png/0000aa?text=quisquam', 4),
(267, 41, 'March.', '2022-04-30 19:20:51', 1, 'Dormouse into the wood.', 'https://via.placeholder.com/640x480.png/0000ee?text=ratione', 4),
(268, 31, 'HERE.\'.', '2021-12-07 11:36:29', 0, 'Queen, the royal children.', 'https://via.placeholder.com/640x480.png/007788?text=magni', 3),
(269, 50, 'I can\'t.', '2023-10-21 16:42:42', 1, 'Alice began to repeat it.', 'https://via.placeholder.com/640x480.png/0099ff?text=necessitatibus', 3),
(270, 50, 'While.', '2023-01-16 00:29:16', 0, 'Time, and round the table.', 'https://via.placeholder.com/640x480.png/00ff00?text=culpa', 3),
(271, 45, 'So they.', '2022-08-02 19:34:01', 1, 'Alice had begun to think to.', 'https://via.placeholder.com/640x480.png/00ccbb?text=numquam', 4),
(272, 51, 'Why, I.', '2022-07-22 12:32:04', 1, 'Bill\'s place for a minute or.', 'https://via.placeholder.com/640x480.png/006633?text=eos', 4),
(273, 47, 'Gryphon.', '2022-05-21 21:27:41', 0, 'Hatter said, tossing his.', 'https://via.placeholder.com/640x480.png/005533?text=molestias', 3),
(274, 43, 'The.', '2022-03-21 16:35:24', 1, 'And he added looking angrily.', 'https://via.placeholder.com/640x480.png/00ccbb?text=dolor', 4),
(275, 32, 'HIS time.', '2023-02-01 21:00:02', 0, 'Alice could only see her.', 'https://via.placeholder.com/640x480.png/000099?text=quaerat', 3),
(276, 41, 'I like.', '2022-08-06 14:10:01', 1, 'Our family always HATED.', 'https://via.placeholder.com/640x480.png/002200?text=est', 4),
(277, 44, 'She had.', '2023-11-17 12:16:38', 0, 'William\'s conduct at first.', 'https://via.placeholder.com/640x480.png/00ddee?text=ullam', 4),
(278, 42, 'So she.', '2022-12-26 13:05:35', 0, 'She was moving them about as.', 'https://via.placeholder.com/640x480.png/00aa77?text=labore', 3),
(279, 48, 'I get.', '2022-04-02 19:03:06', 0, 'Normans--\" How are you.', 'https://via.placeholder.com/640x480.png/00aaff?text=earum', 4),
(280, 39, 'Then she.', '2022-10-29 19:43:35', 1, 'She soon got it out loud.', 'https://via.placeholder.com/640x480.png/007799?text=itaque', 3),
(281, 37, 'I\'ll.', '2023-08-21 22:33:58', 1, 'And yet I don\'t want to see.', 'https://via.placeholder.com/640x480.png/002266?text=modi', 4),
(282, 32, 'She soon.', '2022-11-04 19:53:41', 0, 'Alice said to herself, \'I.', 'https://via.placeholder.com/640x480.png/004455?text=ea', 3),
(283, 41, 'Queen.', '2023-06-13 19:33:13', 1, 'I sleep\" is the same age as.', 'https://via.placeholder.com/640x480.png/007766?text=sed', 4),
(284, 33, 'Alice.', '2023-10-27 07:01:50', 1, 'Gryphon. \'We can do no more.', 'https://via.placeholder.com/640x480.png/004433?text=est', 3),
(285, 40, 'Alice.', '2022-05-28 12:28:40', 0, 'Mouse heard this, it turned.', 'https://via.placeholder.com/640x480.png/0066ff?text=rerum', 3),
(286, 59, 'I don\'t.', '2022-04-03 05:34:07', 0, 'She soon got it out to sea.', 'https://via.placeholder.com/640x480.png/00ee11?text=quasi', 4),
(287, 57, 'King.', '2022-10-26 06:54:15', 0, 'Mock Turtle. \'Hold your.', 'https://via.placeholder.com/640x480.png/0088ff?text=repellat', 4),
(288, 44, 'Oh dear!.', '2023-02-03 23:08:20', 1, 'It was the first to break.', 'https://via.placeholder.com/640x480.png/00ee99?text=sint', 3),
(289, 42, 'Queen.', '2022-04-10 01:16:09', 1, 'ME\' were beautifully marked.', 'https://via.placeholder.com/640x480.png/00ee99?text=sapiente', 4),
(290, 38, 'Mabel!.', '2022-12-03 00:01:31', 1, 'Alice\'s side as she fell.', 'https://via.placeholder.com/640x480.png/006622?text=et', 4),
(291, 47, 'THAT.', '2023-12-01 11:32:25', 1, 'Alice was silent. The.', 'https://via.placeholder.com/640x480.png/00eeaa?text=ea', 4),
(292, 35, 'If I or.', '2022-03-02 20:14:26', 0, 'I\'ll just see what would.', 'https://via.placeholder.com/640x480.png/0099aa?text=dignissimos', 4),
(293, 37, 'Alice.', '2023-01-18 15:37:28', 1, 'Alice gently remarked.', 'https://via.placeholder.com/640x480.png/00ccbb?text=facere', 3),
(294, 52, 'I!\' he.', '2023-09-30 17:13:30', 1, 'I\'ll have you executed on.', 'https://via.placeholder.com/640x480.png/0044ee?text=sint', 3),
(295, 36, 'King.', '2022-02-27 01:58:22', 1, 'There was not here before,\'.', 'https://via.placeholder.com/640x480.png/00bbee?text=at', 4),
(296, 58, 'Alice.', '2023-05-04 00:55:16', 1, 'Jack-in-the-box, and up the.', 'https://via.placeholder.com/640x480.png/007711?text=ducimus', 4),
(297, 36, 'I hadn\'t.', '2023-11-12 14:00:02', 1, 'Alice a good opportunity for.', 'https://via.placeholder.com/640x480.png/00cc77?text=et', 3),
(298, 39, 'Hatter.', '2023-03-09 03:33:33', 1, 'Alice said very politely.', 'https://via.placeholder.com/640x480.png/00dd66?text=deserunt', 4),
(299, 42, 'However.', '2022-08-15 12:30:41', 1, 'Hatter; \'so I can\'t tell you.', 'https://via.placeholder.com/640x480.png/0088ee?text=beatae', 4),
(300, 60, 'Alice.', '2022-01-15 08:10:57', 0, 'It\'s high time to hear his.', 'https://via.placeholder.com/640x480.png/00eeaa?text=magnam', 4),
(301, 55, 'I ever.', '2021-12-13 18:09:52', 0, 'DON\'T know,\' said the Hatter.', 'https://via.placeholder.com/640x480.png/00ff33?text=non', 3),
(302, 31, 'test', '2023-12-07 06:45:41', 1, 'test', '10-65716a15943a1.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `article_theater`
--

DROP TABLE IF EXISTS `article_theater`;
CREATE TABLE IF NOT EXISTS `article_theater` (
  `article_id` int NOT NULL,
  `theater_id` int NOT NULL,
  PRIMARY KEY (`article_id`,`theater_id`),
  KEY `IDX_AB0FC5E37294869C` (`article_id`),
  KEY `IDX_AB0FC5E3D70E4479` (`theater_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_theater`
--

INSERT INTO `article_theater` (`article_id`, `theater_id`) VALUES
(152, 31),
(302, 32);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(31, 'So she.'),
(32, 'White.'),
(33, 'I hadn\'t.'),
(34, 'I am.'),
(35, 'Her.'),
(36, 'Alice.'),
(37, 'Cat.'),
(38, 'Gryphon.'),
(39, 'Dodo.'),
(40, 'The.'),
(41, 'Alice to.'),
(42, 'Alice.'),
(43, 'I did.'),
(44, 'How.'),
(45, 'So she.'),
(46, 'Twinkle.'),
(47, 'The.'),
(48, 'He got.'),
(49, 'I begin.'),
(50, 'You\'re.'),
(51, 'Alice.'),
(52, 'I BEG.'),
(53, 'Pigeon.'),
(54, 'I should.'),
(55, 'Mock.'),
(56, 'HE was.\'.'),
(57, 'Lobster.'),
(58, 'Footman.'),
(59, 'Rabbit.'),
(60, 'King.');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231205103107', '2023-12-05 11:09:42', 298),
('DoctrineMigrations\\Version20231205110910', '2023-12-05 14:32:47', 284),
('DoctrineMigrations\\Version20231205143643', '2023-12-05 14:36:55', 143),
('DoctrineMigrations\\Version20231210083527', '2023-12-10 08:36:19', 115);

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL,
  `subscribed_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `is_subscribed`, `subscribed_date`) VALUES
(1, 'hristinastankova89@gmail.com', 1, '2023-12-10');

-- --------------------------------------------------------

--
-- Structure de la table `theater`
--

DROP TABLE IF EXISTS `theater`;
CREATE TABLE IF NOT EXISTS `theater` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `theater`
--

INSERT INTO `theater` (`id`, `name`) VALUES
(31, 'Alice.'),
(32, 'Alice.'),
(33, 'All this.'),
(34, 'I\'d only.'),
(35, 'Hatter.'),
(36, 'It was.'),
(37, 'Queen.'),
(38, 'King in.'),
(39, 'Alice.'),
(40, 'Dormouse.'),
(41, 'The.'),
(42, 'Queen.'),
(43, 'They\'re.'),
(44, 'I dare.'),
(45, 'CHAPTER.'),
(46, 'Alice.'),
(47, 'The.'),
(48, 'Alice.'),
(49, 'While.'),
(50, 'Quick.'),
(51, 'So they.'),
(52, 'Alice!.'),
(53, 'Queen.'),
(54, 'I think.'),
(55, 'Let me.'),
(56, 'I never.'),
(57, 'For, you.'),
(58, 'SHE, of.'),
(59, 'Alice.'),
(60, 'Alice.');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(3, 'test@example.com', '[\"ROLE_USER\"]', '$2y$13$O.R6try1YdgFEbnpCNesGeaVVI4.ULwNWhwlLbFT/neTb0toKq34S'),
(4, 'admin@example.com', '[\"ROLE_ADMIN\"]', '$2y$13$L7v6fG/V3XaMiFsoXjl52Og.yqILmFIUpa3ifA01u8D3NJ2JJXl2u');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `article_theater`
--
ALTER TABLE `article_theater`
  ADD CONSTRAINT `FK_AB0FC5E37294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB0FC5E3D70E4479` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
