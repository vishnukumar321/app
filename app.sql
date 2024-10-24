-- Adminer 4.8.1 MySQL 10.4.32-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `vishnukumar_1`;
CREATE DATABASE `vishnukumar_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `vishnukumar_1`;

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(1024) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `bio` varchar(1024) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `facebook` varchar(1024) DEFAULT NULL,
  `insta` varchar(1024) DEFAULT NULL,
  `linkedin` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`id`) REFERENCES `signup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `profile` (`id`, `avatar`, `first_name`, `last_name`, `bio`, `date`, `facebook`, `insta`, `linkedin`) VALUES
(1,	NULL,	'jagna',	'Doe',	'manasilayo',	'2301-02-22',	'',	'',	''),
(130,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(133,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(138,	NULL,	'jagna',	'Doe',	'njan',	'2003-09-04',	'',	'',	''),
(141,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(142,	NULL,	'vishnukumar',	'E',	'manasilayo enne ninakk .ennal enikk ninne manasilayi.karanam ni ane',	'0022-04-03',	'',	'',	''),
(143,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(145,	NULL,	'vishnu',	'E',	'ni enne kanumbol .njan ninne nokkilla .ennal adhinartham njan ninne sradhikkunnilla ennalla,ni ariyadhe njan ninne nokkunnundakum.',	'2002-10-27',	'https://facebook.com',	'https://instagram.com',	'https://linkedin.com'),
(146,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(147,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(148,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(149,	NULL,	'kannan',	'E',	'ni enne kanumbol .njan ninne nokkilla .ennal adhinartham njan ninne sradhikkunnilla ennalla,ni ariyadhe njan ninne nokkunnundakum.',	'2002-10-27',	'https://facebook.com',	'https://instagram.com',	'https://linkedin.com'),
(150,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(151,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(152,	NULL,	'jagna',	'Doe',	'manasilayo',	'1111-01-01',	'https://facebook.com',	'https://instagram.com',	'https://linkedin.com'),
(153,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(155,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(156,	NULL,	'kannan',	'E',	'ni enne kanumbol .njan ninne nokkilla .ennal adhinartham njan ninne sradhikkunnilla ennalla,ni ariyadhe njan ninne nokkunnundakum.',	'2001-04-25',	'https://facebook.com',	'https://instagram.com',	'https://linkedin.com'),
(157,	NULL,	'jagna',	'Doe',	'manasilayo',	'2222-02-22',	'',	'',	''),
(158,	NULL,	'vishnukumar',	'E',	'ni enne kanumbol .njan ninne nokkilla .ennal adhinartham njan ninne sradhikkunnilla ennalla,ni ariyadhe njan ninne nokkunnundakum.',	'2002-10-27',	'https://facebook.com',	'https://instagram.com',	'https://linkedin.com'),
(159,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(160,	NULL,	'jagna',	'E',	'ni enne kanumbol .njan ninne nokkilla .ennal adhinartham njan ninne sradhikkunnilla ennalla,ni ariyadhe njan ninne nokkunnundakum.',	'0031-02-27',	'',	'',	''),
(162,	NULL,	'jagna',	'E',	'ni enne kanumbol .njan ninne nokkilla .ennal adhinartham njan ninne sradhikkunnilla ennalla,ni ariyadhe njan ninne nokkunnundakum.',	'2002-02-11',	'https://facebook.com',	'https://instagram.com',	'https://linkedin.com');

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `agent` varchar(256) NOT NULL,
  `token` varchar(256) NOT NULL,
  `time` datetime NOT NULL,
  `finger` varchar(64) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  CONSTRAINT `session_ibfk_1` FOREIGN KEY (`id`) REFERENCES `signup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` tinytext NOT NULL,
  `blocked` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `signup` (`id`, `username`, `email`, `phone`, `password`, `blocked`, `active`) VALUES
(1,	'',	'',	'',	'',	NULL,	NULL),
(127,	'photogram',	'kannan1@gmail.com',	'8798765432',	'$2y$10$ZJt1J85Ce.ZjjZWNZssmSeKqD3VQ7Hmhi6zH2mG5dNL5YsW4ehZt.',	NULL,	NULL),
(130,	'funny videos',	'vishnu2@gmail.com',	'8798765432',	'$2y$10$B2ydLvGu2rrM6DlapmKE5uDb/V3VSDewtqy2kA2XvR8zSZMrlntfC',	NULL,	NULL),
(133,	'signup3',	'vishnu3@gmail.com',	'8798765432',	'$2y$10$.xjy3Hi3zPJu7yRgSXfD1uaVw3lyixP16SfecrsA8whjQnyEOZ65K',	NULL,	NULL),
(134,	'signup4',	'vishnu4@gmail.com',	'8798765432',	'$2y$10$nQANdqBxwyiX3UmS1oXsQu7HtCKJFxpvqVauppwtn8HyiQ0a2JrK.',	NULL,	NULL),
(135,	'session',	'vishnu12345@gmail.com',	'8798765432',	'$2y$10$J4MNM61F8gvnJv/dmVgkR.oYfWrCfho0G4L3Fmvya6RYOp9g.43Pm',	NULL,	NULL),
(137,	'vishnu',	'vishnu12@gmail.com',	'8798765432',	'$2y$10$u3lARXM5QdsykgEezK7woeHCuKPwZigyXRwnCJcLXfbUDG2WMjS7G',	NULL,	NULL),
(138,	'signup5',	'vishnu5@gmail.com',	'9999999999',	'$2y$10$Sh1/t/rNc/M4TBKTFpjS0.ZtnmKurm012/u.kavNvDT0leuEXOxM.',	NULL,	NULL),
(139,	'vishnu6',	'vishnu6@gmail.com',	'8798765432',	'$2y$10$NxKs2x39B5jyZC1ogtJHs.1qt8OhkPhM4cNQMP/pLTTmb1TCx4B1q',	NULL,	NULL),
(141,	'vishnu7',	'vishnu7@gmail.com',	'3333333333',	'$2y$10$Si64SDwqQhn2I7DELY8ChumESUcVdQ.NkYYgB5xpkcaI6UCCLNGZi',	NULL,	NULL),
(142,	'vishnu8',	'vishnu8@gmail.com',	'8798765432',	'$2y$10$G15iBM4BppjZO3e1URMDTu5ePAbB67x.Nuxmo/Yg66MM71lXLK74.',	NULL,	NULL),
(143,	'vishnu10',	'vishnu10@gmail.com',	'3333333333',	'$2y$10$p7Mxw7C77voFCCW.3DTFw.jzDwiqyd1f7zpOjxfpxjNPZh3DVvxhi',	NULL,	NULL),
(145,	'vishnu11',	'vishnu11@gmail.com',	'8798765432',	'$2y$10$XcP07YSLQ6ZestCqYQF37OQ9HMA2QOTL3qf6aI8DUs.vFQODwHv9e',	NULL,	NULL),
(146,	'vishnu13',	'vishnu13@gmail.com',	'3333333333',	'$2y$10$6vmGj8YqFI4st/dqbGxjPe1do5g6pnLAn7GYQ/tgdQOtQJ6pF7ji.',	NULL,	NULL),
(147,	'vishnu14',	'vishnu14@gmail.com',	'8798765432',	'$2y$10$xF1Ufcg1aZQs7V7euobvCuqEGhWruAbVOM8Sji0cOCfKL.Aqo8zM.',	NULL,	NULL),
(148,	'vishnu15',	'vishnu15@gmail.com',	'9999999999',	'$2y$10$bFwa479v.hTX12s8deierufcwqxEuDuF.9d.8xBrxrZq8uxKsXJzW',	NULL,	NULL),
(149,	'vishnu16',	'vishnu16@gmail.com',	'3333333333',	'$2y$10$VnTklzl2ovxkkrdathL9yuOdfl7MW30kPot6H8pG2CE44Nvusbnr6',	NULL,	NULL),
(150,	'vishnu17',	'vishnu17@gmail.com',	'8798765437',	'$2y$10$0nIaZF5wsuIKSnqAZicxCeeq07dMoVOfWi7c9EweZC/aTjcyTgUrO',	NULL,	NULL),
(151,	'vishnu18',	'vishnu18@gmail.com',	'8798765437',	'$2y$10$HGE5iGzz4OcDIEPg57RlD.hAiUVPV7wauyEQKqnUWcpzelLQ2eMm2',	NULL,	NULL),
(152,	'vishnu19',	'vishnu19@gmail.com',	'3333333333',	'$2y$10$FuwpMaqzmhIKvN95GW/Jgu3YVoFWJGxkGOQ6lt//VauA0rWA6bWlW',	NULL,	NULL),
(153,	'vishnu20',	'vishnu20@gmail.com',	'8798765432',	'$2y$10$Kx.xQeg2LGCBLIIgGcPywOWZhh65kCI4OgDnU0nnRuc8CzBx47WpC',	NULL,	NULL),
(155,	'vishnu21',	'vishnu21@gmail.com',	'8798765432',	'$2y$10$Sf.zmVC9HzcKdgr1Ho.Ij.uh8/w4pVFE7wtUB4zZG3s8DdcmgrGnK',	NULL,	NULL),
(156,	'vishnu22',	'vishnu22@gmail.com',	'8798765432',	'$2y$10$BvQzgVfA8YN.vvNQKnsGuuUWv4aERdcfuU29TkkKy0mCA01fD473a',	NULL,	NULL),
(157,	'vishnu23',	'vishnu23@gmail.com',	'9999999999',	'$2y$10$KvXyF9V7PzXbhmrvzIerzu498tG2LUYzQkmMIa8lI8Ms8.BjEdHOe',	NULL,	NULL),
(158,	'vishnu24',	'vishnu24@gmail.com',	'8798765432',	'$2y$10$hrvUIC3GdaoOqYAPX4dBy.QgrnaTWd6ajQjjeSxcFko9VFjwzhEcC',	NULL,	NULL),
(159,	'vishnu25',	'vishnu25@gmail.com',	'8798765437',	'$2y$10$MthADvFkIFq1HjgTp3YQ7ueAoa8JDhPDFRFz0ZMQIN8wSpkbsHEaK',	NULL,	NULL),
(160,	'vishnu26',	'vishnu26@gmail.com',	'0888888888',	'$2y$10$00HYZ/m7hrrj9QTAILtCvehFF6v1L20y6Inb1CTvUCmlYo1C8WCkC',	NULL,	NULL),
(162,	'vishnu29',	'vishnu29@gmail.com',	'9999999999',	'$2y$10$xsTNdjJG6/DxlzR6iHP3n.RgEuKW4iCzwbW0ykguxzCi1n/DWFM7u',	NULL,	NULL),
(166,	'vishnu30',	'vishnu30@gmail.com',	'8798765432',	'$2y$10$RDCK7j9bw/VHnGb6U64mcOan0Uz5DJ72ycEFb.Z1PWvt6WNH6P6Tm',	NULL,	NULL);

-- 2024-10-23 09:04:00