# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: authentication
# Generation Time: 2017-11-12 07:10:25 +0000
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `num_code` smallint(6) DEFAULT NULL,
  `phone_code` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `iso`, `name`, `iso3`, `num_code`, `phone_code`)
VALUES
	(1,'AF','Afghanistan','AFG',4,93),
	(2,'AL','Albania','ALB',8,355),
	(3,'DZ','Algeria','DZA',12,213),
	(4,'AS','American Samoa','ASM',16,1684),
	(5,'AD','Andorra','AND',20,376),
	(6,'AO','Angola','AGO',24,244),
	(7,'AI','Anguilla','AIA',660,1264),
	(8,'AQ','Antarctica',NULL,NULL,0),
	(9,'AG','Antigua and Barbuda','ATG',28,1268),
	(10,'AR','Argentina','ARG',32,54),
	(11,'AM','Armenia','ARM',51,374),
	(12,'AW','Aruba','ABW',533,297),
	(13,'AU','Australia','AUS',36,61),
	(14,'AT','Austria','AUT',40,43),
	(15,'AZ','Azerbaijan','AZE',31,994),
	(16,'BS','Bahamas','BHS',44,1242),
	(17,'BH','Bahrain','BHR',48,973),
	(18,'BD','Bangladesh','BGD',50,880),
	(19,'BB','Barbados','BRB',52,1246),
	(20,'BY','Belarus','BLR',112,375),
	(21,'BE','Belgium','BEL',56,32),
	(22,'BZ','Belize','BLZ',84,501),
	(23,'BJ','Benin','BEN',204,229),
	(24,'BM','Bermuda','BMU',60,1441),
	(25,'BT','Bhutan','BTN',64,975),
	(26,'BO','Bolivia','BOL',68,591),
	(27,'BA','Bosnia and Herzegovina','BIH',70,387),
	(28,'BW','Botswana','BWA',72,267),
	(29,'BV','Bouvet Island',NULL,NULL,0),
	(30,'BR','Brazil','BRA',76,55),
	(31,'IO','British Indian Ocean Territory',NULL,NULL,246),
	(32,'BN','Brunei Darussalam','BRN',96,673),
	(33,'BG','Bulgaria','BGR',100,359),
	(34,'BF','Burkina Faso','BFA',854,226),
	(35,'BI','Burundi','BDI',108,257),
	(36,'KH','Cambodia','KHM',116,855),
	(37,'CM','Cameroon','CMR',120,237),
	(38,'CA','Canada','CAN',124,1),
	(39,'CV','Cape Verde','CPV',132,238),
	(40,'KY','Cayman Islands','CYM',136,1345),
	(41,'CF','Central African Republic','CAF',140,236),
	(42,'TD','Chad','TCD',148,235),
	(43,'CL','Chile','CHL',152,56),
	(44,'CN','China','CHN',156,86),
	(45,'CX','Christmas Island',NULL,NULL,61),
	(46,'CC','Cocos (Keeling) Islands',NULL,NULL,672),
	(47,'CO','Colombia','COL',170,57),
	(48,'KM','Comoros','COM',174,269),
	(49,'CG','Congo','COG',178,242),
	(50,'CD','Congo, the Democratic Republic of the','COD',180,242),
	(51,'CK','Cook Islands','COK',184,682),
	(52,'CR','Costa Rica','CRI',188,506),
	(53,'CI','Cote D\'Ivoire','CIV',384,225),
	(54,'HR','Croatia','HRV',191,385),
	(55,'CU','Cuba','CUB',192,53),
	(56,'CY','Cyprus','CYP',196,357),
	(57,'CZ','Czech Republic','CZE',203,420),
	(58,'DK','Denmark','DNK',208,45),
	(59,'DJ','Djibouti','DJI',262,253),
	(60,'DM','Dominica','DMA',212,1767),
	(61,'DO','Dominican Republic','DOM',214,1809),
	(62,'EC','Ecuador','ECU',218,593),
	(63,'EG','Egypt','EGY',818,20),
	(64,'SV','El Salvador','SLV',222,503),
	(65,'GQ','Equatorial Guinea','GNQ',226,240),
	(66,'ER','Eritrea','ERI',232,291),
	(67,'EE','Estonia','EST',233,372),
	(68,'ET','Ethiopia','ETH',231,251),
	(69,'FK','Falkland Islands (Malvinas)','FLK',238,500),
	(70,'FO','Faroe Islands','FRO',234,298),
	(71,'FJ','Fiji','FJI',242,679),
	(72,'FI','Finland','FIN',246,358),
	(73,'FR','France','FRA',250,33),
	(74,'GF','French Guiana','GUF',254,594),
	(75,'PF','French Polynesia','PYF',258,689),
	(76,'TF','French Southern Territories',NULL,NULL,0),
	(77,'GA','Gabon','GAB',266,241),
	(78,'GM','Gambia','GMB',270,220),
	(79,'GE','Georgia','GEO',268,995),
	(80,'DE','Germany','DEU',276,49),
	(81,'GH','Ghana','GHA',288,233),
	(82,'GI','Gibraltar','GIB',292,350),
	(83,'GR','Greece','GRC',300,30),
	(84,'GL','Greenland','GRL',304,299),
	(85,'GD','Grenada','GRD',308,1473),
	(86,'GP','Guadeloupe','GLP',312,590),
	(87,'GU','Guam','GUM',316,1671),
	(88,'GT','Guatemala','GTM',320,502),
	(89,'GN','Guinea','GIN',324,224),
	(90,'GW','Guinea-Bissau','GNB',624,245),
	(91,'GY','Guyana','GUY',328,592),
	(92,'HT','Haiti','HTI',332,509),
	(93,'HM','Heard Island and Mcdonald Islands',NULL,NULL,0),
	(94,'VA','Holy See (Vatican City State)','VAT',336,39),
	(95,'HN','Honduras','HND',340,504),
	(96,'HK','Hong Kong','HKG',344,852),
	(97,'HU','Hungary','HUN',348,36),
	(98,'IS','Iceland','ISL',352,354),
	(99,'IN','India','IND',356,91),
	(100,'ID','Indonesia','IDN',360,62),
	(101,'IR','Iran, Islamic Republic of','IRN',364,98),
	(102,'IQ','Iraq','IRQ',368,964),
	(103,'IE','Ireland','IRL',372,353),
	(104,'IL','Israel','ISR',376,972),
	(105,'IT','Italy','ITA',380,39),
	(106,'JM','Jamaica','JAM',388,1876),
	(107,'JP','Japan','JPN',392,81),
	(108,'JO','Jordan','JOR',400,962),
	(109,'KZ','Kazakhstan','KAZ',398,7),
	(110,'KE','Kenya','KEN',404,254),
	(111,'KI','Kiribati','KIR',296,686),
	(112,'KP','Korea, Democratic People\'s Republic of','PRK',408,850),
	(113,'KR','Korea, Republic of','KOR',410,82),
	(114,'KW','Kuwait','KWT',414,965),
	(115,'KG','Kyrgyzstan','KGZ',417,996),
	(116,'LA','Lao People\'s Democratic Republic','LAO',418,856),
	(117,'LV','Latvia','LVA',428,371),
	(118,'LB','Lebanon','LBN',422,961),
	(119,'LS','Lesotho','LSO',426,266),
	(120,'LR','Liberia','LBR',430,231),
	(121,'LY','Libyan Arab Jamahiriya','LBY',434,218),
	(122,'LI','Liechtenstein','LIE',438,423),
	(123,'LT','Lithuania','LTU',440,370),
	(124,'LU','Luxembourg','LUX',442,352),
	(125,'MO','Macao','MAC',446,853),
	(126,'MK','Macedonia, the Former Yugoslav Republic of','MKD',807,389),
	(127,'MG','Madagascar','MDG',450,261),
	(128,'MW','Malawi','MWI',454,265),
	(129,'MY','Malaysia','MYS',458,60),
	(130,'MV','Maldives','MDV',462,960),
	(131,'ML','Mali','MLI',466,223),
	(132,'MT','Malta','MLT',470,356),
	(133,'MH','Marshall Islands','MHL',584,692),
	(134,'MQ','Martinique','MTQ',474,596),
	(135,'MR','Mauritania','MRT',478,222),
	(136,'MU','Mauritius','MUS',480,230),
	(137,'YT','Mayotte',NULL,NULL,269),
	(138,'MX','Mexico','MEX',484,52),
	(139,'FM','Micronesia, Federated States of','FSM',583,691),
	(140,'MD','Moldova, Republic of','MDA',498,373),
	(141,'MC','Monaco','MCO',492,377),
	(142,'MN','Mongolia','MNG',496,976),
	(143,'MS','Montserrat','MSR',500,1664),
	(144,'MA','Morocco','MAR',504,212),
	(145,'MZ','Mozambique','MOZ',508,258),
	(146,'MM','Myanmar','MMR',104,95),
	(147,'NA','Namibia','NAM',516,264),
	(148,'NR','Nauru','NRU',520,674),
	(149,'NP','Nepal','NPL',524,977),
	(150,'NL','Netherlands','NLD',528,31),
	(151,'AN','Netherlands Antilles','ANT',530,599),
	(152,'NC','New Caledonia','NCL',540,687),
	(153,'NZ','New Zealand','NZL',554,64),
	(154,'NI','Nicaragua','NIC',558,505),
	(155,'NE','Niger','NER',562,227),
	(156,'NG','Nigeria','NGA',566,234),
	(157,'NU','Niue','NIU',570,683),
	(158,'NF','Norfolk Island','NFK',574,672),
	(159,'MP','Northern Mariana Islands','MNP',580,1670),
	(160,'NO','Norway','NOR',578,47),
	(161,'OM','Oman','OMN',512,968),
	(162,'PK','Pakistan','PAK',586,92),
	(163,'PW','Palau','PLW',585,680),
	(164,'PS','Palestinian Territory, Occupied',NULL,NULL,970),
	(165,'PA','Panama','PAN',591,507),
	(166,'PG','Papua New Guinea','PNG',598,675),
	(167,'PY','Paraguay','PRY',600,595),
	(168,'PE','Peru','PER',604,51),
	(169,'PH','Philippines','PHL',608,63),
	(170,'PN','Pitcairn','PCN',612,0),
	(171,'PL','Poland','POL',616,48),
	(172,'PT','Portugal','PRT',620,351),
	(173,'PR','Puerto Rico','PRI',630,1787),
	(174,'QA','Qatar','QAT',634,974),
	(175,'RE','Reunion','REU',638,262),
	(176,'RO','Romania','ROM',642,40),
	(177,'RU','Russian Federation','RUS',643,70),
	(178,'RW','Rwanda','RWA',646,250),
	(179,'SH','Saint Helena','SHN',654,290),
	(180,'KN','Saint Kitts and Nevis','KNA',659,1869),
	(181,'LC','Saint Lucia','LCA',662,1758),
	(182,'PM','Saint Pierre and Miquelon','SPM',666,508),
	(183,'VC','Saint Vincent and the Grenadines','VCT',670,1784),
	(184,'WS','Samoa','WSM',882,684),
	(185,'SM','San Marino','SMR',674,378),
	(186,'ST','Sao Tome and Principe','STP',678,239),
	(187,'SA','Saudi Arabia','SAU',682,966),
	(188,'SN','Senegal','SEN',686,221),
	(189,'CS','Serbia and Montenegro',NULL,NULL,381),
	(190,'SC','Seychelles','SYC',690,248),
	(191,'SL','Sierra Leone','SLE',694,232),
	(192,'SG','Singapore','SGP',702,65),
	(193,'SK','Slovakia','SVK',703,421),
	(194,'SI','Slovenia','SVN',705,386),
	(195,'SB','Solomon Islands','SLB',90,677),
	(196,'SO','Somalia','SOM',706,252),
	(197,'ZA','South Africa','ZAF',710,27),
	(198,'GS','South Georgia and the South Sandwich Islands',NULL,NULL,0),
	(199,'ES','Spain','ESP',724,34),
	(200,'LK','Sri Lanka','LKA',144,94),
	(201,'SD','Sudan','SDN',736,249),
	(202,'SR','Suriname','SUR',740,597),
	(203,'SJ','Svalbard and Jan Mayen','SJM',744,47),
	(204,'SZ','Swaziland','SWZ',748,268),
	(205,'SE','Sweden','SWE',752,46),
	(206,'CH','Switzerland','CHE',756,41),
	(207,'SY','Syrian Arab Republic','SYR',760,963),
	(208,'TW','Taiwan, Province of China','TWN',158,886),
	(209,'TJ','Tajikistan','TJK',762,992),
	(210,'TZ','Tanzania, United Republic of','TZA',834,255),
	(211,'TH','Thailand','THA',764,66),
	(212,'TL','Timor-Leste',NULL,NULL,670),
	(213,'TG','Togo','TGO',768,228),
	(214,'TK','Tokelau','TKL',772,690),
	(215,'TO','Tonga','TON',776,676),
	(216,'TT','Trinidad and Tobago','TTO',780,1868),
	(217,'TN','Tunisia','TUN',788,216),
	(218,'TR','Turkey','TUR',792,90),
	(219,'TM','Turkmenistan','TKM',795,7370),
	(220,'TC','Turks and Caicos Islands','TCA',796,1649),
	(221,'TV','Tuvalu','TUV',798,688),
	(222,'UG','Uganda','UGA',800,256),
	(223,'UA','Ukraine','UKR',804,380),
	(224,'AE','United Arab Emirates','ARE',784,971),
	(225,'GB','United Kingdom','GBR',826,44),
	(226,'US','United States','USA',840,1),
	(227,'UM','United States Minor Outlying Islands',NULL,NULL,1),
	(228,'UY','Uruguay','URY',858,598),
	(229,'UZ','Uzbekistan','UZB',860,998),
	(230,'VU','Vanuatu','VUT',548,678),
	(231,'VE','Venezuela','VEN',862,58),
	(232,'VN','Viet Nam','VNM',704,84),
	(233,'VG','Virgin Islands, British','VGB',92,1284),
	(234,'VI','Virgin Islands, U.s.','VIR',850,1340),
	(235,'WF','Wallis and Futuna','WLF',876,681),
	(236,'EH','Western Sahara','ESH',732,212),
	(237,'YE','Yemen','YEM',887,967),
	(238,'ZM','Zambia','ZMB',894,260),
	(239,'ZW','Zimbabwe','ZWE',716,263);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table email_verifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `email_verifications`;

CREATE TABLE `email_verifications` (
  `email_verification_uuid` varchar(36) NOT NULL DEFAULT '' COMMENT 'internal id',
  `user_uuid` varchar(36) DEFAULT NULL COMMENT 'user unix id',
  `verification_key` varchar(100) DEFAULT NULL COMMENT 'verification key',
  `email` varchar(100) DEFAULT NULL COMMENT 'emaill address',
  `verify_date` datetime DEFAULT NULL COMMENT 'Is email address verified',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`email_verification_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Project email verifications';

LOCK TABLES `email_verifications` WRITE;
/*!40000 ALTER TABLE `email_verifications` DISABLE KEYS */;

INSERT INTO `email_verifications` (`email_verification_uuid`, `user_uuid`, `verification_key`, `email`, `verify_date`, `create_date`)
VALUES
	('2472f405-a125-4a45-af36-0dca957e0421','d320edc7-851f-a9cf-6ef9-e61382bae051','832bf6b4-2854-1735-9e2f-1ec8545ee42c','abem@tds.net','2015-07-14 15:29:06','2015-07-14 15:28:41'),
	('e502566c-f86d-4e69-8604-0d0977a95033','356d6275-bae4-430f-8da6-b1cebee9ffcd','303b998d-b306-497a-9df2-9a3065f630b5','abem@tds.net','2014-04-04 12:00:00','2014-04-04 12:00:00'),
	('f66137ce-cfcb-44f1-be56-e9ddf9835b00','d092f21f-c41e-f072-7611-2ac015b23213','8c45f58f-2a10-df30-1c7a-994e3403bbbf','abem@tds.net','2017-01-04 06:11:51','2017-01-04 06:09:19');

/*!40000 ALTER TABLE `email_verifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `password_reset_uuid` varchar(36) NOT NULL DEFAULT '',
  `password_reset_key` varchar(100) DEFAULT NULL,
  `user_uuid` varchar(36) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `delete_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`password_reset_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payload` text,
  `last_activity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`id`, `payload`, `last_activity`)
VALUES
	(34,'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRnU3cmV2NTRZSjUwU1lVOTNrRVlMR3BPT1puNk42TWJteE9ZNXpkdyI7czo0OiJzYWx0IjtzOjMyOiIyMGQ1M2UyZDNhZGJkYTM4YmU2YjNkODZhNzUxMmU4NiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDUzNTc4MTE7czoxOiJjIjtpOjE0NDUzNTc4MTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1445357811),
	(35,'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicVNkZGFYSVRmYUlLOHY4NVpjbUxsSWpmZGRPak53RHJCNmxvOEJCWCI7czo0OiJzYWx0IjtzOjMyOiJiOGFhYzg2NWIwZDgxMDA1NTEzYjhkNjE4YmU1NGEyZiI7czo5OiJ0aW1lc3RhbXAiO2k6MTQ0NTM1NzgxNjtzOjg6InVzZXJfdWlkIjtzOjM2OiIzNTZkNjI3NS1iYWU0LTQzMGYtOGRhNi1iMWNlYmVlOWZmY2QiO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDQ1MzU3ODE2O3M6MToiYyI7aToxNDQ1MzU3ODE2O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1445357816),
	(36,'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidHNyMWhmVFpGVXRMUTVIWGdaaGtnbmRTalFOMzZGQURhaWdRSUZqTCI7czo0OiJzYWx0IjtzOjMyOiJkNjA4ZWMwODFiNzhmNzA5NmNlZDk4N2NiNWFkMTRkNCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDUzNTc4MTY7czoxOiJjIjtpOjE0NDUzNTc4MTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1445357816),
	(37,'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0dKRklmbVR2WW1IM1A4MHJhM3dKYXJTbWtCNlExUWw0blFONUVtUyI7czo0OiJzYWx0IjtzOjMyOiI1ZWVlMTI3ZjY4NjYwYzQyMTZjNTgzMGQzYjMwMWQ3YyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDUzNTc4NjM7czoxOiJjIjtpOjE0NDUzNTc4NjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1445357863),
	(38,'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMHMzeDZaa3dsYVQxdUZab01HVlBHQkxxdGY2cmpQcnVHd1phSjEwVyI7czo0OiJzYWx0IjtzOjMyOiJjMmU3MTQ4ODk2NDNmYjIyNjJhNTkyNTlkNGQzMDg2ZiI7czo5OiJ0aW1lc3RhbXAiO2k6MTQ0NTM1Nzg2OTtzOjg6InVzZXJfdWlkIjtzOjM2OiIzNTZkNjI3NS1iYWU0LTQzMGYtOGRhNi1iMWNlYmVlOWZmY2QiO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDQ1MzU3ODY5O3M6MToiYyI7aToxNDQ1MzU3ODY5O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1445357869),
	(39,'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTjl2TGw5YjR0eGxaUTV0QnF1eGtuaE55bmJVRHppM241UUhUcEhtZSI7czo0OiJzYWx0IjtzOjMyOiI5ZWQxYWQ2MmFmOGE0MGQxZTY4ZjZhYTFhZmEzNWQwYyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDUzNTc4Njk7czoxOiJjIjtpOjE0NDUzNTc4Njk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1445357869);

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_accounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_accounts`;

CREATE TABLE `user_accounts` (
  `user_account_uuid` varchar(36) NOT NULL DEFAULT '',
  `user_uuid` varchar(36) NOT NULL DEFAULT '',
  `enabled_flag` tinyint(1) DEFAULT '0',
  `email_verified_flag` tinyint(1) DEFAULT '0',
  `admin_flag` tinyint(1) DEFAULT '0',
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `delete_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_accounts` WRITE;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;

INSERT INTO `user_accounts` (`user_account_uuid`, `user_uuid`, `enabled_flag`, `email_verified_flag`, `admin_flag`, `create_date`, `update_date`, `delete_date`)
VALUES
	('45327670-caf0-4eb9-b222-b0bf66f1a7f2','356d6275-bae4-430f-8da6-b1cebee9ffcd',1,1,0,'2014-04-04 12:00:00',NULL,NULL),
	('19626719-00eb-4f64-8363-d045c8cb7689','500',1,1,1,NULL,NULL,NULL),
	('107bd53c-7c14-4ebd-a48d-df9dae7dc288','d092f21f-c41e-f072-7611-2ac015b23213',1,1,1,'2017-01-04 06:09:19','2017-01-04 06:11:53',NULL),
	('1b8f580e-597e-480b-a070-22bb6330688c','d320edc7-851f-a9cf-6ef9-e61382bae051',1,1,0,'2015-07-14 15:28:41','2015-07-14 15:29:07',NULL);

/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_uuid` varchar(36) NOT NULL DEFAULT '',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `preferred_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `affiliation` varchar(255) DEFAULT NULL,
  `logged_in` tinyint(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`user_uuid`, `username`, `password`, `first_name`, `last_name`, `preferred_name`, `email`, `address`, `phone`, `affiliation`, `logged_in`, `create_date`, `update_date`, `delete_date`)
VALUES
	('356d6275-bae4-430f-8da6-b1cebee9ffcd','ltorvalds','linus123','Linus','Torvalds',NULL,'linus@tds.net','123 Linux Way$$Helsinki$Uusimaa$12345$United States','1 123 123-4567','Linux Mark Institute for Research',0,'2014-04-04 12:00:00','2017-10-12 03:43:45',NULL),
	('500','admin','admin','admin','admin',NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-01-08 09:26:06',NULL),
	('d092f21f-c41e-f072-7611-2ac015b23213','aeinstein','relative123','Albert','Einstein',NULL,'aeinstein@tds.net',NULL,NULL,NULL,0,'2017-01-04 06:09:19','2017-01-04 06:14:40',NULL),
	('d320edc7-851f-a9cf-6ef9-e61382bae051','amegahed','AbeMegahed123','Abe','Megahed',NULL,'abem@tds.net','2010 Monroe Street$$Madison$WI$53711$United States','1  ','Morgridge Institute for Research',0,'2015-07-14 15:28:41','2017-10-13 03:49:06',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
