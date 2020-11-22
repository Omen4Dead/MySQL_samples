-- 1. Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице)

DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Фамиль',
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='юзеры';

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('101', 'Reva', 'Willms', 'lbuckridge@example.org', '82d70d891b1e180673623a3c8041ef440c1842f9', '815609');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('102', 'Sim', 'Ortiz', 'wisozk.pierce@example.org', 'c9628a42890beca5f76b64bb58adab06a22261ac', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('105', 'Myah', 'Stiedemann', 'bdavis@example.com', 'e41206847f3ea2ca990418f3cdea714c1cc6549b', '868749');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('106', 'Maya', 'Upton', 'kira.jenkins@example.org', '855881765c93747d72b21d663881b6e9ba82e702', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('107', 'Nora', 'Yundt', 'dereck39@example.org', '670e34d6cc86d946946b831a9a7d749fcbc5f068', '15513');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('108', 'Shemar', 'Bogan', 'emard.letha@example.org', 'a91ebe83ce56c2fc3bb62628553ff81069b5a4ee', '893603');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('110', 'Easter', 'Thiel', 'rdurgan@example.net', 'c7d3550df6b62932bd0485415daafd1af659c3e9', '78972');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('111', 'Roxanne', 'Considine', 'tess.lemke@example.com', '98adba6a369c7fc2f55a3115f1dd43c20da0b52b', '75');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('113', 'Creola', 'Klein', 'beverly48@example.org', '609fd0ee3061954e77bf35f424ee8a7ce1e8cb5d', '237');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('114', 'Estell', 'Quitzon', 'sschmeler@example.net', 'eee5c0480c6a31dcd7c618ed4ab4e151c957d2bf', '7796776885');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('115', 'Zoe', 'Lebsack', 'karson.ullrich@example.org', '7679b90d244886a2de38d6e3fbcc686b73d693cb', '85470');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('117', 'Aubrey', 'Leuschke', 'alaina.stokes@example.com', 'ece88a8af6250b1ecdfc3a1787dbf926f1638151', '92');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('119', 'Jerald', 'Pollich', 'hegmann.gonzalo@example.org', '97c768b2ce067689d7cbdef839ca2cbc93c506f2', '711810');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('121', 'Kasey', 'Price', 'laurie74@example.com', '9a7ae18e626856482c970a7f80b686a348aae004', '64');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('122', 'Bernhard', 'Farrell', 'green.muller@example.com', 'ce2a0fa751ec07a100e63a89d02b587ef16bdf72', '848');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('124', 'Buddy', 'Schuppe', 'avis.lang@example.org', '4f1fadee5e31893841d2f293aadfd15b7a924870', '5188207439');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('126', 'Alek', 'Christiansen', 'cassandra.thompson@example.com', 'd7106ed6c1eb969a3e08249864da225bb9f1dbcf', '79');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('127', 'Isaiah', 'Robel', 'tpowlowski@example.com', '48433c4fa93ba070b8a9cca8ef3200bc22941f22', '26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('128', 'Patience', 'Connelly', 'sporer.bernard@example.net', 'cdf360c8d29055d9e94695394dc9a499b3b7d374', '23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('129', 'Alexandra', 'Prohaska', 'elvis.bailey@example.com', 'b179b3051b739e13a0a9961e3b2547626f5ca0f9', '719');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('130', 'Arielle', 'Weimann', 'abbey.turner@example.com', '1da3c5e4fb698394b711df3051c20c4d845a1420', '683784');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('133', 'Isom', 'Dach', 'rosenbaum.sigmund@example.com', 'f4d627589b57b4019977f253df9e7b603593f46a', '288377');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('135', 'Armando', 'Torp', 'nils.kuhn@example.org', 'd52cb37d32682ccb4c2c477ab5e79829b06f303c', '77');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('136', 'Alva', 'Stanton', 'kshlerin.margret@example.net', '603f181d938c206a4da603b913e434e6e6c4446e', '489154');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('141', 'Trystan', 'Robel', 'mcglynn.rowena@example.org', 'd61a3f53807aee95574fd9b01cbc37dd98bd7b98', '757');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('142', 'Dorris', 'Davis', 'virgil49@example.org', '25b5a8756aaa0a0dd94b9af70c37302e644dfca9', '18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('143', 'Name', 'Marvin', 'jaylin38@example.org', '52ebd24aa24c250fac8d2ba2eadfc6e1e9b62cd1', '7259208590');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('144', 'Muhammad', 'Zulauf', 'nbauch@example.com', '4f9e6f73af2fff7637ecc488f410d0f40c54d7e4', '202');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('145', 'Elta', 'Streich', 'augustine.welch@example.net', '1b1b819ae5d64bb516dcd9ca6f63f4a0957e66ec', '51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('146', 'Horacio', 'Cummings', 'euna.doyle@example.org', '9a6b3a24942bbf4eccb3bce084b22f0beec478cd', '6732563525');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('149', 'Morris', 'Ondricka', 'wpacocha@example.org', '875a484feae09aa7b29b37c52659155b9390799e', '522106');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('150', 'Sherwood', 'Feeney', 'marcelle51@example.net', 'a67186e2b9d88840cce85c085ac31ebacbd75311', '318258');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('152', 'Susie', 'McLaughlin', 'king.dusty@example.org', '66b2c0b1163d6106c69832667287aa0e2e95188c', '195');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('153', 'Carole', 'Tillman', 'kendra15@example.net', '05714a993ab36c51e97d4ac5bead63c602e0cad2', '40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('155', 'Lelia', 'Spinka', 'gloria.blick@example.org', 'a45182e9aeb6dde1aa4e2dad609c94e092c1d86b', '810');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('156', 'Leonardo', 'Huels', 'jana.turner@example.com', '91137b48cec79c29afb0bfe26dc462b04c675f4c', '452');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('158', 'Alfreda', 'Cummings', 'semard@example.com', 'feb424e699515fd39568b45f71cb8bcea4fd4330', '388');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('159', 'Zoe', 'Kuvalis', 'lschamberger@example.net', '76b37ac795ee4c93587475f03c61e8fc05e93bf1', '38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('160', 'Cale', 'Thiel', 'brisa.wolff@example.com', '473098d8bd10340f744430cc90ecb1bc8d3629f0', '8214757968');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('161', 'Eunice', 'Huels', 'domenick.o\'connell@example.com', 'e4f5fe2ea704c4520afb47b2fce28ad0fc7f7a2b', '992376');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('162', 'Maverick', 'Hirthe', 'deven82@example.org', 'b81d0b577fc6cedc0f55278c37ff0a5b078090b4', '86');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('163', 'Asha', 'Farrell', 'elna73@example.com', '679f7021f7bfd99f064e43d0884d800dc189d321', '522220');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('164', 'Jesus', 'Miller', 'champlin.vincent@example.org', '3bdd7bf8fe589b1443e16a253e717620fcbb0636', '475');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('165', 'Theron', 'Braun', 'predovic.kacie@example.org', 'bd7759f5d612b36332f928ac24664ff71987ceb3', '539068');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('166', 'Rod', 'Keeling', 'hhudson@example.net', 'fa220b29d55637c0e81d8bb295bb305aea8d208e', '535794402');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('167', 'Skyla', 'Mosciski', 'arely53@example.net', 'cd4ced2799e17d28ea263abd753e95e36a40b3c1', '3950241466');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('168', 'Aniyah', 'Thiel', 'andrew66@example.com', '2bcb8f0d78a784f1e2fcf0a4db20da7fb79a35c1', '220');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('169', 'Desiree', 'Walker', 'jcummings@example.com', '1a938907a65d36088befd64c7aca1c20405d19eb', '694');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('171', 'Diamond', 'Schimmel', 'niko77@example.com', 'fd88fbd65513ef203a49724e5818e3ed0185009a', '823048');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('174', 'Darby', 'Lind', 'laurianne.crona@example.com', '51562f019f972046a78011fa8f4529cea5b1ac44', '1335182300');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('176', 'Dale', 'Wiza', 'pklein@example.com', '8f2bf1d45eeb7142326b67ca8177f5d9e3f0ee25', '960');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('177', 'Matteo', 'Ondricka', 'wkub@example.com', '881f114d63ad84d861b6d54ff9150f65d52b71eb', '377');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('181', 'Tressa', 'Botsford', 'hhuel@example.net', '56f9cb4ad88f27d84e32b363bedd22178da601f0', '749842');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('182', 'Myah', 'Hessel', 'yterry@example.net', 'd6c8834bbace8180475e80107ce5184764a522f6', '176052');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('184', 'Dawson', 'Feil', 'cledner@example.com', '218f1d195b61890207b62e1010890075a1ccd2a0', '712676');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('185', 'Keegan', 'Hahn', 'delia73@example.org', 'a944be3348b899ef283fc7cea920f41633560724', '573158');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('189', 'Kattie', 'Heaney', 'stefanie67@example.org', '0956c9d97ae4a02c95feb855b3c5ba1e95c901d4', '209271');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('190', 'Keagan', 'Weber', 'ikrajcik@example.com', '43e1bf9d00c19c128560973098bdb6cf5d1e934f', '833');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('191', 'Odell', 'Blick', 'kub.tiffany@example.org', '9c365bf8360c614751281f7f2a7f926b95fa92f7', '173183');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('193', 'Marco', 'Goyette', 'rhett99@example.org', '1b6d8d9ec3d0ed8a9f6675c9e5002dac6b41bf4c', '495');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('194', 'Hayley', 'Leuschke', 'lucie.kunde@example.net', '3d4f6aa3ce2e02de7cb344f0228a7df11219fa4c', '566806190');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('196', 'Raphaelle', 'Hansen', 'mable.hagenes@example.org', 'b9eabbaed397f895acafa2d45827830ff8304ebd', '64606');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('198', 'Golden', 'Ruecker', 'bernhard.elinor@example.org', '26e94810af0ae815a4e5eee68fa557f5dcb08792', '324');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('199', 'Amos', 'Keebler', 'megane96@example.net', '9d36bcabfce68d6b312ee967c8ae5d9d52009431', '283');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('200', 'Bernhard', 'Roob', 'parker43@example.com', '720a5e3ce9fd33369f082063ad3187dd81047f64', '356540');

#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_user_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`),
  KEY `admin_user_id` (`admin_user_id`),
  CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('1', 'nihil', '101');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('2', 'ea', '102');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('3', 'dicta', '105');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('4', 'dolor', '106');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('5', 'aut', '107');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('6', 'nemo', '108');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('7', 'sint', '110');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('8', 'rerum', '111');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('9', 'quod', '113');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('10', 'aut', '114');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('11', 'repellendus', '115');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('12', 'vel', '117');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('13', 'optio', '119');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('14', 'qui', '121');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('15', 'qui', '122');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('16', 'necessitatibus', '124');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('17', 'laudantium', '126');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('18', 'quis', '127');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('19', 'aut', '128');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('20', 'mollitia', '129');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('21', 'veritatis', '130');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('22', 'officiis', '133');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('23', 'temporibus', '135');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('24', 'fugiat', '136');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('25', 'beatae', '141');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('26', 'eveniet', '142');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('27', 'aut', '143');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('28', 'accusantium', '144');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('29', 'quaerat', '145');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('30', 'blanditiis', '146');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('31', 'incidunt', '149');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('32', 'numquam', '150');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('33', 'quidem', '152');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('34', 'minus', '153');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('35', 'dolores', '155');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('36', 'et', '156');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('37', 'placeat', '158');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('38', 'quia', '159');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('39', 'pariatur', '160');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('40', 'tempora', '161');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('41', 'occaecati', '162');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('42', 'laborum', '163');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('43', 'fuga', '164');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('44', 'tempore', '165');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('45', 'nemo', '166');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('46', 'cum', '167');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('47', 'sit', '168');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('48', 'nemo', '169');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('49', 'aut', '171');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('50', 'ut', '174');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('51', 'earum', '176');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('52', 'amet', '177');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('53', 'accusantium', '181');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('54', 'ut', '182');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('55', 'ea', '184');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('56', 'facilis', '185');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('57', 'quia', '189');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('58', 'quo', '190');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('59', 'quia', '191');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('60', 'earum', '193');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('61', 'maxime', '194');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('62', 'totam', '196');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('63', 'iusto', '198');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('64', 'eaque', '199');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('65', 'repellendus', '200');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('66', 'eius', '101');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('67', 'explicabo', '102');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('68', 'enim', '105');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('69', 'enim', '106');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('70', 'atque', '107');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('71', 'quasi', '108');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('72', 'quibusdam', '110');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('73', 'ex', '111');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('74', 'aliquid', '113');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('75', 'qui', '114');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('76', 'doloribus', '115');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('77', 'ea', '117');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('78', 'aliquam', '119');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('79', 'eum', '121');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('80', 'necessitatibus', '122');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('81', 'mollitia', '124');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('82', 'ducimus', '126');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('83', 'sunt', '127');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('84', 'vitae', '128');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('85', 'labore', '129');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('86', 'accusantium', '130');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('87', 'magni', '133');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('88', 'mollitia', '135');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('89', 'aut', '136');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('90', 'quia', '141');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('91', 'iste', '142');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('92', 'cupiditate', '143');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('93', 'aut', '144');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('94', 'et', '145');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('95', 'enim', '146');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('96', 'pariatur', '149');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('97', 'cum', '150');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('98', 'eius', '152');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('99', 'id', '153');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('100', 'et', '155');


#
# TABLE STRUCTURE FOR: friend_requests
#

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') COLLATE utf8_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('101', '101', 'requested', '1977-02-26 05:35:09', '1997-07-19 15:26:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('102', '102', 'unfriended', '1979-08-15 12:38:56', '1986-10-28 02:23:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('105', '105', 'approved', '1996-06-15 04:00:01', '2009-05-09 00:40:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('106', '106', 'unfriended', '2018-10-03 03:37:50', '1991-11-28 12:49:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('107', '107', 'unfriended', '1992-09-08 23:00:13', '2012-07-02 12:00:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('108', '108', 'declined', '2011-03-23 00:44:13', '2013-02-21 18:44:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('110', '110', 'requested', '2015-06-10 06:22:58', '1972-09-29 16:39:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('111', '111', 'declined', '1989-09-19 07:19:10', '2019-10-25 12:04:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('113', '113', 'approved', '1975-08-21 00:08:47', '2002-12-05 08:47:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('114', '114', 'declined', '1971-05-16 15:42:49', '1981-01-02 11:41:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('115', '115', 'declined', '1999-08-20 20:30:00', '2005-10-11 10:34:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('117', '117', 'approved', '2007-08-04 04:53:03', '1987-02-12 08:40:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('119', '119', 'declined', '1973-10-18 08:44:32', '1975-07-15 09:59:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('121', '121', 'approved', '1989-03-29 09:54:09', '2002-02-01 07:12:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('122', '122', 'requested', '1977-10-04 15:25:35', '1992-03-19 14:38:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('124', '124', 'requested', '2019-08-26 10:40:55', '2018-08-10 15:03:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('126', '126', 'unfriended', '2014-11-05 07:26:25', '1972-01-30 22:25:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('127', '127', 'unfriended', '1990-05-04 01:29:40', '1980-02-03 02:24:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('128', '128', 'declined', '1987-09-19 11:44:57', '1972-06-12 13:49:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('129', '129', 'requested', '2013-06-20 04:54:57', '2010-04-17 16:06:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('130', '130', 'approved', '1999-10-08 06:47:20', '1979-01-31 17:13:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('133', '133', 'approved', '2017-03-07 07:50:56', '1979-02-09 08:25:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('135', '135', 'approved', '2013-11-30 04:07:50', '1997-05-27 19:48:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('136', '136', 'approved', '1988-06-16 12:56:00', '1977-06-16 19:40:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('141', '141', 'requested', '1994-08-24 08:26:10', '1990-05-09 13:50:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('142', '142', 'requested', '2005-03-15 13:36:18', '2015-09-05 09:16:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('143', '143', 'requested', '2004-12-20 18:03:00', '2006-08-31 01:45:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('144', '144', 'requested', '1987-11-17 02:26:41', '2002-05-19 21:23:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('145', '145', 'approved', '2005-05-23 13:29:43', '1982-11-23 00:52:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('146', '146', 'declined', '1991-03-26 07:30:00', '1970-08-22 05:02:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('149', '149', 'approved', '2010-06-04 17:36:17', '1993-06-04 01:36:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('150', '150', 'requested', '1984-08-20 02:30:25', '2004-06-11 09:34:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('152', '152', 'declined', '1989-09-20 01:59:30', '1987-12-21 19:48:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('153', '153', 'declined', '1984-06-14 14:01:52', '1989-04-13 21:46:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('155', '155', 'approved', '1977-06-20 08:17:10', '2000-11-30 17:30:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('156', '156', 'unfriended', '1976-07-29 10:53:43', '1972-12-08 08:31:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('158', '158', 'requested', '2018-01-17 02:52:15', '1972-12-15 14:36:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('159', '159', 'approved', '1976-06-13 12:11:11', '1982-06-28 03:03:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('160', '160', 'requested', '1982-01-13 17:35:58', '1972-12-21 10:01:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('161', '161', 'declined', '2002-02-21 23:50:25', '1986-01-21 12:36:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('162', '162', 'approved', '1981-06-06 21:07:35', '2004-04-23 17:38:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('163', '163', 'declined', '1981-11-09 00:04:55', '1982-04-21 19:47:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('164', '164', 'declined', '1975-11-18 07:20:23', '2005-04-25 00:29:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('165', '165', 'declined', '1975-06-01 19:52:16', '2008-03-23 17:25:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('166', '166', 'requested', '1988-02-23 06:05:42', '2007-02-24 12:30:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('167', '167', 'unfriended', '2012-03-13 08:33:55', '1980-09-22 02:09:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('168', '168', 'unfriended', '2019-05-26 22:52:16', '1996-10-01 14:50:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('169', '169', 'declined', '1976-04-11 20:23:29', '1978-01-15 02:01:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('171', '171', 'approved', '1978-04-19 21:22:49', '2015-02-02 07:26:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('174', '174', 'unfriended', '1993-12-03 01:18:08', '1983-08-21 07:34:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('176', '176', 'declined', '2019-04-15 07:16:06', '1996-03-29 16:48:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('177', '177', 'unfriended', '1985-12-19 22:54:58', '2004-11-24 06:50:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('181', '181', 'requested', '1978-08-06 12:01:42', '1998-07-01 03:24:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('182', '182', 'requested', '1980-03-12 17:28:04', '1979-02-18 17:49:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('184', '184', 'approved', '2010-02-13 15:23:46', '2013-08-10 05:04:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('185', '185', 'approved', '2015-07-13 13:12:42', '2004-09-29 18:00:10');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('189', '189', 'approved', '1980-03-04 15:13:54', '1997-11-29 00:04:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('190', '190', 'requested', '1995-04-29 22:30:22', '2010-09-20 01:35:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('191', '191', 'requested', '1976-11-14 06:20:00', '1970-01-31 06:37:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('193', '193', 'approved', '1980-07-15 00:52:17', '1989-01-15 15:54:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('194', '194', 'requested', '1982-03-30 21:45:44', '1987-01-24 10:40:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('196', '196', 'declined', '1975-08-27 06:38:46', '1974-02-26 10:12:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('198', '198', 'declined', '1976-08-08 20:04:43', '1989-09-23 00:06:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('199', '199', 'requested', '2019-01-21 08:17:29', '1975-05-20 04:28:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('200', '200', 'declined', '1990-02-27 00:31:01', '1995-04-25 20:36:33');


#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '101', '1', '2020-04-10 18:26:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '102', '2', '1997-01-03 01:19:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '105', '3', '1984-02-06 07:20:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '106', '4', '2000-11-14 21:09:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '107', '5', '2016-06-10 19:33:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '108', '6', '1972-06-03 17:57:43');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '110', '7', '1999-01-22 00:30:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '111', '8', '1991-12-13 14:35:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '113', '9', '2007-04-18 12:13:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '114', '10', '1984-03-24 07:17:42');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('11', '115', '11', '1981-10-29 17:36:33');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('12', '117', '12', '2001-07-28 07:13:58');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('13', '119', '13', '1996-10-22 10:01:49');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('14', '121', '14', '2019-01-13 14:26:11');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('15', '122', '15', '1989-10-29 05:00:50');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('16', '124', '16', '2010-09-01 15:55:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('17', '126', '17', '1983-09-14 02:30:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('18', '127', '18', '1978-05-20 07:39:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('19', '128', '19', '2004-11-12 20:43:25');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('20', '129', '20', '1981-05-17 23:24:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('21', '130', '21', '1991-06-14 01:45:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('22', '133', '22', '1986-06-12 11:16:42');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('23', '135', '23', '2002-11-11 20:34:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('24', '136', '24', '1972-02-12 04:25:23');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('25', '141', '25', '1984-03-23 12:54:23');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('26', '142', '26', '1971-03-05 13:11:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('27', '143', '27', '2017-02-28 12:59:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('28', '144', '28', '2020-07-31 14:41:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('29', '145', '29', '1987-11-30 00:26:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('30', '146', '30', '1992-07-15 10:11:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('31', '149', '31', '2004-06-27 07:53:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('32', '150', '32', '2017-10-14 19:48:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('33', '152', '33', '1977-03-17 09:41:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('34', '153', '34', '1981-03-29 12:02:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('35', '155', '35', '1984-10-23 18:42:04');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('36', '156', '36', '1981-11-29 04:47:23');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('37', '158', '37', '1970-07-22 08:30:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('38', '159', '38', '2020-07-03 15:18:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('39', '160', '39', '1990-05-28 02:33:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('40', '161', '40', '1979-02-26 08:09:10');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('41', '162', '41', '2002-05-27 11:01:58');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('42', '163', '42', '1972-02-02 21:48:42');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('43', '164', '43', '1979-11-24 16:03:32');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('44', '165', '44', '1986-03-02 08:16:16');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('45', '166', '45', '1970-07-07 17:28:53');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('46', '167', '46', '2010-02-18 20:37:53');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('47', '168', '47', '2010-11-28 12:32:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('48', '169', '48', '2020-09-02 11:18:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('49', '171', '49', '2012-09-01 17:10:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('50', '174', '50', '1990-04-05 06:00:37');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('51', '176', '51', '2008-08-24 03:58:36');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('52', '177', '52', '2016-11-27 22:34:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('53', '181', '53', '1973-09-18 06:30:43');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('54', '182', '54', '2005-11-13 23:29:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('55', '184', '55', '2005-01-19 15:37:24');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('56', '185', '56', '1999-06-16 07:13:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('57', '189', '57', '2012-01-06 04:30:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('58', '190', '58', '1983-06-07 07:56:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('59', '191', '59', '2020-09-25 00:43:18');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('60', '193', '60', '2012-01-23 16:40:24');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('61', '194', '61', '1971-03-06 10:28:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('62', '196', '62', '2002-12-22 17:14:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('63', '198', '63', '2017-01-31 17:37:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('64', '199', '64', '2018-01-20 09:14:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('65', '200', '65', '1998-02-15 16:41:06');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('66', '101', '66', '2013-10-21 18:02:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('67', '102', '67', '1985-04-18 00:08:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('68', '105', '68', '1985-06-26 04:19:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('69', '106', '69', '1979-05-23 11:15:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('70', '107', '70', '1993-12-21 22:34:40');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('71', '108', '71', '1995-06-13 02:50:49');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('72', '110', '72', '2013-07-26 23:50:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('73', '111', '73', '2019-08-21 07:46:56');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('74', '113', '74', '1971-06-01 03:02:41');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('75', '114', '75', '1978-10-31 06:09:19');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('76', '115', '76', '1998-07-22 03:08:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('77', '117', '77', '1996-10-31 03:19:23');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('78', '119', '78', '1987-01-29 03:33:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('79', '121', '79', '1989-02-08 21:24:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('80', '122', '80', '1991-02-22 23:09:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('81', '124', '81', '2005-05-27 17:50:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('82', '126', '82', '1970-12-03 04:12:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('83', '127', '83', '2011-11-28 10:47:50');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('84', '128', '84', '1989-05-16 11:48:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('85', '129', '85', '2014-01-20 12:12:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('86', '130', '86', '1992-03-09 11:33:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('87', '133', '87', '2020-04-06 11:22:25');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('88', '135', '88', '1979-06-06 03:31:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('89', '136', '89', '1998-08-10 11:52:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('90', '141', '90', '2009-11-17 13:35:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('91', '142', '91', '1990-07-22 22:55:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('92', '143', '92', '2002-02-08 09:40:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('93', '144', '93', '2004-09-02 20:02:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('94', '145', '94', '2006-10-03 00:42:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('95', '146', '95', '2016-11-21 16:14:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('96', '149', '96', '1975-08-02 00:32:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('97', '150', '97', '2007-01-25 21:36:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('98', '152', '98', '2012-01-16 02:08:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('99', '153', '99', '1999-10-29 03:10:40');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('100', '155', '100', '1988-10-24 01:20:50');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'rem', '2009-09-20 19:02:04', '1973-08-24 00:49:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'perferendis', '2012-05-23 16:06:50', '2010-11-07 01:02:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'itaque', '1997-11-09 07:34:39', '1989-04-17 16:25:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'porro', '2012-12-11 01:27:02', '1972-01-22 15:50:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'fugiat', '2009-03-28 20:20:51', '2016-04-17 20:50:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'quia', '1989-08-25 14:33:23', '1998-06-29 07:18:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'id', '2001-01-05 05:57:34', '1989-09-02 09:52:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'quia', '1983-12-28 20:07:21', '2000-12-27 13:52:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'ad', '2012-01-06 12:56:25', '2020-04-03 21:17:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'aut', '1998-10-24 11:00:45', '1990-04-20 11:13:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'et', '1984-06-06 12:35:40', '2014-11-22 22:07:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'est', '2019-12-23 09:40:12', '2006-09-28 13:06:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'aliquam', '1974-08-13 07:31:50', '1994-12-16 18:50:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'est', '1989-07-16 22:15:23', '2006-06-11 02:34:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'quis', '1989-05-29 19:35:09', '1989-04-26 03:56:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'rerum', '1987-11-09 19:06:53', '2016-04-04 09:25:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'aut', '2015-01-09 13:54:52', '2020-02-08 08:57:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'enim', '1989-09-11 11:03:12', '1979-07-04 14:28:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'sunt', '1986-12-29 05:58:53', '1987-06-24 12:38:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'harum', '1987-12-20 13:24:25', '2008-03-07 14:10:53');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '101', 'Quos voluptatem temporibus distinctio et eius dolores qui et. Dicta perspiciatis soluta eum voluptatum aliquid vel adipisci. Voluptas labore voluptates quam tenetur. Quae nemo architecto dicta est.', 'et', 4805317, NULL, '2016-01-09 00:27:29', '1994-05-13 04:38:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '102', 'Rerum dolores alias fugiat autem est. Molestiae id voluptate repellat ut in qui.', 'error', 9442593, NULL, '1979-10-20 04:49:42', '2019-04-11 12:41:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '105', 'Provident consequuntur tenetur adipisci. Fugiat est quia nostrum placeat sit optio. Debitis ex vero ducimus perferendis velit.', 'harum', 451824, NULL, '1997-02-08 13:42:40', '2018-11-08 20:40:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '106', 'Modi sit ea consequatur. Omnis laboriosam quaerat consequatur qui. Sequi sed optio magnam occaecati officiis modi blanditiis.', 'ut', 51, NULL, '2008-05-11 07:57:28', '2006-11-04 00:06:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '107', 'Minus voluptates aut dolorem laudantium quis incidunt. Consequuntur sunt cum doloremque placeat cum sed. Qui eum nulla vero nam rerum distinctio illo.', 'fugiat', 926299, NULL, '2001-09-12 16:09:43', '2013-05-16 17:30:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '108', 'Nam quod autem qui omnis nobis ex. A enim iste voluptatem repellendus iusto. Dolorem provident nulla reprehenderit dignissimos eius. Est magnam tenetur maiores voluptas non consequatur aut.', 'voluptates', 556736, NULL, '1993-08-22 23:34:15', '2011-03-10 03:12:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '110', 'Sit expedita ipsam et quaerat. Sunt voluptates dolorum exercitationem quo. Repellat cupiditate dolores quos ea deleniti laborum nihil voluptatem. Placeat quod doloremque eum cumque cum vitae et.', 'recusandae', 54802352, NULL, '1997-10-31 14:58:53', '1996-06-12 16:43:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '111', 'Mollitia labore quaerat dolore assumenda. Quaerat consectetur quas aut quia deleniti et cupiditate. Illum quia et voluptas.', 'possimus', 11261, NULL, '1978-08-25 19:03:29', '2009-12-08 10:08:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '113', 'Eligendi molestias nihil veritatis mollitia. Eos est ut est autem perspiciatis quas. Quia aspernatur quia accusamus assumenda.', 'dolorem', 0, NULL, '2019-03-23 01:21:30', '1998-03-28 17:47:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '114', 'Rerum aut itaque rem harum expedita. Enim totam voluptatem odit aut magni voluptatibus minima ipsam. Voluptatem cumque ut amet delectus aut molestiae. Nostrum amet laborum commodi impedit magnam voluptatem assumenda.', 'consequatur', 437, NULL, '1985-06-12 12:13:21', '2019-05-20 19:44:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '11', '115', 'Dolorem aut officiis et ut totam veniam. Et sequi excepturi cum corrupti atque. Ratione autem molestiae provident culpa velit at praesentium molestiae.', 'fuga', 41, NULL, '2009-10-20 09:27:46', '1976-01-20 00:54:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '12', '117', 'Consectetur sit aliquam repudiandae ullam saepe et aspernatur. Sed maxime accusamus numquam repellendus. Rem dolores velit et reprehenderit. Non nostrum tempora voluptatem est rerum aut.', 'voluptatibus', 0, NULL, '2007-02-25 12:51:52', '2014-01-16 05:10:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '13', '119', 'Iure animi omnis autem perspiciatis. Sequi non mollitia fugiat nemo ut minus. Non aut at eum non aliquid nihil quibusdam.', 'nulla', 3, NULL, '1989-10-22 16:23:48', '1980-04-02 15:44:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '14', '121', 'Est aut occaecati pariatur non. Et eligendi qui dolore dicta animi excepturi cupiditate. Magni nihil omnis possimus consectetur dolore expedita.', 'rerum', 762780741, NULL, '1974-04-19 17:08:46', '1998-05-21 00:03:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '15', '122', 'Accusantium corporis ipsam sunt sed iste sed. Occaecati eum consectetur consequatur minus tempora laboriosam veritatis. Quidem sequi impedit voluptatem nam molestias rerum ipsum. Rerum repellat et sunt quisquam natus consequatur.', 'minima', 0, NULL, '2012-09-03 13:42:34', '2019-08-26 17:13:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '16', '124', 'Rerum consequuntur ut aspernatur ab ullam architecto possimus. Dolor sapiente quam unde nihil dicta ducimus. Laudantium maiores sit recusandae voluptatem nulla ut natus nobis.', 'est', 866, NULL, '1983-08-09 01:30:18', '1973-04-08 08:31:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '17', '126', 'Autem eveniet reprehenderit possimus. Nam deleniti quidem exercitationem vel eaque. Quibusdam incidunt voluptatibus amet.', 'accusamus', 26, NULL, '2016-02-24 05:42:56', '2012-11-20 08:18:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '18', '127', 'Ut nisi vero iste quis voluptatem. Rerum voluptatem rerum delectus id. Aliquam fuga laudantium qui odio consequatur nisi. Sit blanditiis et esse debitis at.', 'quae', 941097, NULL, '2001-04-20 02:11:48', '2012-03-03 11:53:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '19', '128', 'Sapiente cum provident nihil et quos est ipsam. Sit qui repellendus est.', 'cumque', 10798873, NULL, '1999-08-14 23:55:00', '2020-03-12 07:05:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '20', '129', 'Necessitatibus aut qui velit. Voluptatem eligendi ut est temporibus maxime fugit ad aut. Minima adipisci a omnis esse iure. Earum consectetur consequatur deleniti qui.', 'dolorem', 15733456, NULL, '2005-08-10 12:49:13', '1977-09-07 23:53:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '1', '130', 'Sint nobis ullam et voluptatibus. Ipsam aperiam autem voluptatem hic. Qui sit et voluptatem sit dolorem dolorem.', 'aliquam', 84663418, NULL, '1992-12-23 14:35:36', '2018-12-11 06:03:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '133', 'Iure id nemo molestiae soluta esse dolor fugit sunt. Ut vel explicabo ut est. Et vero eum qui nemo laborum minus. Maxime nobis modi dolorem quisquam odio aspernatur.', 'quae', 677917, NULL, '2002-04-17 08:58:12', '1980-09-18 04:08:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '135', 'Est natus quod perspiciatis omnis corporis fugiat est quia. Cum est ratione quo et id vitae consectetur. Possimus cumque est incidunt. Voluptate earum excepturi aspernatur odio sed adipisci.', 'sit', 70, NULL, '1980-11-02 02:51:16', '1991-09-09 12:00:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '4', '136', 'Sunt ea repudiandae reiciendis odit illum vel inventore aliquid. Eveniet expedita perferendis inventore laudantium consequatur occaecati aut nam. Qui quia dolores odio quo soluta dignissimos.', 'quod', 172, NULL, '1975-09-23 14:27:53', '2008-12-13 08:05:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '5', '141', 'Rerum qui est sed vitae dolor maxime iste. Qui et sed placeat aperiam iusto dolorem. Iure est quaerat officiis occaecati nam. Cupiditate fugiat sapiente iure sit accusamus esse.', 'officia', 0, NULL, '2014-03-11 18:09:50', '2009-09-04 10:06:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '6', '142', 'Molestias voluptatem rem neque asperiores. Repellendus quibusdam non commodi quibusdam quaerat illo eos. Omnis id quae impedit harum est temporibus voluptatem quam.', 'ut', 44840, NULL, '2010-01-01 06:09:11', '1994-08-09 19:57:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '7', '143', 'Odio maxime suscipit perferendis natus odio non natus. Qui ratione quam cumque numquam ut totam tempora.', 'aliquam', 45997216, NULL, '2006-01-21 15:03:08', '1980-04-03 02:14:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '8', '144', 'Velit aliquid qui architecto. Qui provident dolorum iure porro sed porro recusandae. Adipisci perspiciatis dignissimos dolor rem placeat similique. Qui a a reprehenderit. Impedit quae mollitia ullam quod qui qui adipisci.', 'qui', 12715516, NULL, '1983-01-07 19:06:40', '2013-05-03 09:53:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '9', '145', 'Perspiciatis vel voluptas et quidem. Hic dolor qui mollitia dignissimos ea neque consequatur. Veniam vel rem eum asperiores iusto saepe sed.', 'molestias', 3804, NULL, '2000-09-26 19:10:16', '2020-03-23 17:32:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '10', '146', 'Quia ipsum rerum voluptatem nam et. Et rerum dolores nisi aut. Architecto officia provident eius voluptas tempora quam mollitia ut. Magni ratione rerum voluptatibus a vero enim.', 'ut', 0, NULL, '1974-09-08 15:47:21', '2010-01-03 20:15:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '11', '149', 'Omnis eius iusto dolor vel dolores facere molestiae. Omnis sunt ea et et et eaque modi consequatur. Minus fugit laborum aspernatur rerum. Quisquam tempore distinctio veritatis et maiores dolor optio. Aut voluptatum id iste molestiae sit autem qui.', 'dicta', 686849, NULL, '2002-08-31 01:14:57', '2015-05-05 23:45:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '12', '150', 'Quia velit doloribus optio in minus dolores. Amet dolorem cupiditate est. Cum omnis provident officia voluptatibus culpa. Voluptatibus qui soluta ut autem recusandae mollitia fuga. Similique ut quia sint velit et.', 'alias', 0, NULL, '1988-09-08 17:06:55', '2004-01-11 03:18:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '13', '152', 'Quibusdam sit incidunt laudantium distinctio debitis. Labore molestiae tempore voluptatem delectus deleniti explicabo. Molestiae autem corrupti voluptates. Quasi recusandae adipisci modi eaque. Eaque sint officia architecto rerum.', 'odit', 0, NULL, '2008-07-19 11:12:01', '1988-10-19 07:14:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '14', '153', 'Sed aperiam qui omnis non fuga corrupti. Qui veniam natus et ut quos. Ipsam amet velit maiores qui dignissimos tenetur.', 'velit', 417466, NULL, '2019-05-24 20:50:21', '1970-06-18 04:54:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '15', '155', 'Omnis quos et optio a quia. Optio sint ea totam quia a. Optio possimus neque modi non assumenda voluptatem.', 'tempora', 0, NULL, '1988-04-15 22:26:27', '1982-12-08 11:13:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '16', '156', 'Voluptatem impedit ipsum dicta et aut. Non molestiae harum porro et possimus numquam ut. Voluptate cum consequatur est perspiciatis voluptas. Sit aut temporibus quis dolores exercitationem.', 'sequi', 858493, NULL, '1983-03-08 01:00:25', '2012-03-10 07:39:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '17', '158', 'Laboriosam aut numquam provident possimus rem architecto esse. Quia quam molestias temporibus aut cupiditate quo. Error quo dolorem suscipit dolor corrupti nihil sint.', 'dolor', 477648899, NULL, '1981-03-08 17:42:32', '2000-09-26 22:46:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '18', '159', 'Necessitatibus neque at quae iusto maxime dolorem. Voluptatum assumenda fugiat aut et. Nostrum exercitationem voluptas excepturi voluptatem. Optio maxime ab eum.', 'et', 2642, NULL, '2002-02-08 15:08:22', '2017-05-27 23:07:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '19', '160', 'Ut dolore ducimus et modi quos modi alias. Cupiditate aperiam assumenda eos sapiente porro blanditiis provident. Porro doloribus sint quia mollitia. Itaque nemo eum aut ut aliquid rerum eius. Nobis deserunt ut eaque voluptas voluptatibus sapiente autem sed.', 'iure', 827287, NULL, '2017-06-04 18:04:50', '1983-06-11 23:11:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '20', '161', 'Modi in eius omnis aperiam assumenda. Facilis voluptate molestiae quisquam repellendus. Velit deleniti qui aliquid nihil id voluptate.', 'nesciunt', 6, NULL, '1978-12-29 19:03:37', '1996-10-16 01:36:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '162', 'Magni quia quia illum qui voluptas amet soluta. Beatae eos minus repellat. Incidunt facilis itaque impedit sunt magni non. Vero ratione laborum ut ut voluptas.', 'quo', 0, NULL, '1989-11-09 20:14:00', '2010-04-08 09:16:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '2', '163', 'Labore nesciunt doloremque aperiam mollitia voluptatibus molestias ducimus. Quis laudantium dolore voluptas voluptatibus est. Voluptatem cum officiis veniam voluptas vel nostrum.', 'architecto', 1, NULL, '1995-11-10 00:13:46', '1996-10-07 19:15:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '3', '164', 'Enim minima soluta esse voluptatum et eos velit. Iste deleniti quidem delectus nulla consequatur. Officiis qui vel sed a illum. Eaque adipisci est alias nihil.', 'est', 716220225, NULL, '2017-05-01 17:57:04', '1982-01-07 17:11:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '4', '165', 'Sunt ut iusto et nam odit. Et amet odio rerum quia doloribus officia velit. Est quia sequi quas sit. Quo error ut occaecati modi.', 'consectetur', 0, NULL, '2005-08-03 19:33:28', '1983-06-27 02:05:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '5', '166', 'Doloribus modi exercitationem ea velit. Numquam non expedita ea sit. Aut qui suscipit sint quasi et sed quo.', 'perspiciatis', 14581031, NULL, '2014-03-19 00:20:36', '2019-08-29 16:46:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '6', '167', 'Vitae culpa exercitationem ducimus animi qui id. Esse tempora in quia saepe nesciunt. Qui deleniti cum aut vel eius. Dolores et eos unde cum.', 'aut', 874869, NULL, '2005-04-10 23:26:03', '1977-04-23 08:27:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '7', '168', 'Ea fugit consectetur ullam quas qui in. Totam maiores quae est eveniet rem labore. Optio fugiat illum distinctio recusandae numquam voluptas accusamus. Voluptates molestias in minus ratione est. Aliquid corrupti voluptatem illo minima.', 'itaque', 7, NULL, '1996-02-11 00:28:21', '2012-04-28 00:28:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '8', '169', 'Consequuntur eveniet doloremque non placeat eos corrupti alias. Eos voluptatem illo laborum numquam non dolor vitae. Necessitatibus amet libero voluptatem consequuntur.', 'velit', 518781, NULL, '1991-03-29 04:55:44', '1990-04-21 12:55:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '9', '171', 'Mollitia quidem officiis voluptas autem non rerum veritatis. Non est repudiandae et non ea quo quas. Ex dicta et dolorem magnam. Delectus doloribus fuga sint reprehenderit.', 'aut', 0, NULL, '2005-08-24 09:19:01', '1980-07-14 09:39:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '10', '174', 'Veritatis quasi a voluptatem voluptatibus rerum. Minima nisi aspernatur officiis est. Et dicta enim hic ut hic aspernatur ex voluptas. Aut voluptatem iste sint ea.', 'aspernatur', 517107913, NULL, '2020-07-03 22:39:07', '1985-02-17 13:25:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '11', '176', 'Ut ut totam molestiae ipsum et doloremque suscipit quis. Neque nisi quia et et ipsa in veniam ipsa. Harum praesentium magnam voluptatem eveniet eos saepe.', 'alias', 60709, NULL, '2013-10-18 17:52:55', '2003-10-16 10:17:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '12', '177', 'Est aut laboriosam nemo. Nam nemo cum similique explicabo placeat. Omnis voluptas atque quia omnis necessitatibus assumenda iusto.', 'ut', 43077, NULL, '2008-09-29 00:00:42', '1997-02-03 02:54:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '13', '181', 'Dicta aperiam necessitatibus omnis eum. Ratione tenetur modi quo est quaerat. Et et perferendis iure temporibus animi delectus dicta. Asperiores quisquam maiores ea consequuntur non nulla.', 'quod', 71898, NULL, '2014-09-28 20:12:10', '1974-05-23 01:34:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '14', '182', 'Possimus sed culpa suscipit temporibus numquam officia odit ut. Optio dolore nemo voluptatem eum. Illum laborum et aliquid reprehenderit. Eos voluptatem voluptatum magnam deserunt.', 'non', 8, NULL, '2014-02-16 20:05:08', '2012-12-31 13:47:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '15', '184', 'Error provident nisi sunt nobis laudantium. Optio dolore maiores hic sint ut et. Reprehenderit dolore est officia dolorem.', 'accusamus', 0, NULL, '2018-11-12 08:18:13', '2012-06-11 03:36:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '16', '185', 'Consectetur praesentium in ut aspernatur. Et sint officiis ab excepturi ut dignissimos. Et voluptas earum non et dolores soluta at.', 'itaque', 10608003, NULL, '2015-02-25 05:45:46', '2014-03-05 19:52:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '17', '189', 'Itaque tenetur sit ducimus quaerat omnis deleniti. Totam nostrum qui maiores consectetur quidem. Sit omnis facere omnis ut recusandae aut.', 'voluptatibus', 4, NULL, '1995-08-14 00:40:04', '1971-08-21 12:20:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '18', '190', 'Ut explicabo officiis itaque id. Pariatur consequuntur doloribus quae pariatur ut vel et. Consequatur voluptatem unde enim exercitationem quas officiis.', 'accusantium', 768, NULL, '1987-10-03 08:34:43', '1990-06-24 23:30:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '19', '191', 'Ab dolor aut temporibus eum cumque sit nulla. Rerum ipsum pariatur in voluptatibus. Debitis doloribus necessitatibus nihil iste.', 'animi', 6556, NULL, '1995-12-23 05:13:12', '1999-11-07 14:41:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '20', '193', 'Sequi autem esse vitae. Quidem eligendi et et. Eum sit culpa minima aut.', 'voluptatibus', 7, NULL, '1972-10-07 08:11:38', '1987-07-14 09:31:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '1', '194', 'Cupiditate quia quaerat dolorem. Quae sit non est error exercitationem accusantium et aut. Non consequatur non eveniet reiciendis odio ratione qui.', 'voluptates', 4, NULL, '1995-12-01 13:58:08', '2012-06-10 23:20:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '2', '196', 'Magnam expedita ut quia sequi. Molestiae ea laudantium aliquid laudantium.', 'autem', 58658298, NULL, '2002-06-05 00:13:24', '1985-02-09 20:33:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '3', '198', 'A occaecati enim enim qui est qui. Dignissimos nostrum atque est esse enim eos molestias. Error consectetur esse nesciunt voluptatem perspiciatis illum eos placeat. Cumque accusantium illo ut non facere maxime labore.', 'harum', 75668, NULL, '2005-04-11 18:25:45', '1983-06-08 21:02:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '4', '199', 'Cupiditate accusantium in consequuntur quisquam. Est et ut rerum autem nostrum. Qui quaerat et inventore.', 'dolor', 69246, NULL, '2006-06-27 19:29:45', '2000-04-10 12:21:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '5', '200', 'Porro quia error aut rerum officiis. Et nihil quis quis quo ea et voluptas. Minus distinctio ut modi sequi quia aliquam ratione.', 'amet', 9231925, NULL, '1984-11-23 18:27:49', '2001-12-14 10:30:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '6', '101', 'Vel quas ab officia nesciunt sapiente aut delectus. Soluta numquam assumenda nulla occaecati sed.', 'earum', 13, NULL, '2017-12-03 22:09:07', '2011-06-23 11:15:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '7', '102', 'Consectetur dolor est laborum nam dolores. Enim dolores culpa et minima voluptas enim placeat. At eum qui nemo facilis iusto quisquam suscipit. Nobis iste quia quibusdam totam veritatis fugiat velit.', 'labore', 5701919, NULL, '1998-11-22 09:01:03', '1989-08-19 05:33:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '8', '105', 'Quam autem accusamus aut id et et sunt. Itaque eum sit sed. Eos autem iure odio itaque impedit consectetur. Dolore et quia rerum reprehenderit.', 'voluptatem', 86747, NULL, '1993-01-12 09:18:52', '1998-06-29 04:34:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '9', '106', 'Voluptatibus alias dolorum est ipsum sunt totam id. Aperiam error delectus aut magni. Aliquam velit reprehenderit nulla et. Modi est voluptas dolorem ipsa autem.', 'quis', 4910, NULL, '2003-09-20 16:35:53', '1982-10-04 22:37:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '10', '107', 'Laborum dolore repellendus dicta tempora quia. Adipisci odit accusamus quia. Facere dolore odio ipsum illum ut rem eveniet. Ullam nulla laudantium ut.', 'voluptatum', 8785, NULL, '1987-08-19 12:20:03', '2006-07-26 11:42:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '11', '108', 'Ea in molestiae amet eos pariatur rerum qui. Est eum et molestiae. In est quam consequatur omnis.', 'accusamus', 6313473, NULL, '2002-06-09 14:07:32', '2010-08-02 16:20:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '12', '110', 'Ut at eum doloribus minus et similique perferendis. At fugiat quia velit blanditiis dolorum rem repudiandae maiores.', 'sunt', 23923638, NULL, '1984-12-06 13:04:12', '1985-01-21 04:27:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '13', '111', 'Et deleniti magnam accusantium et. Quis dolorem molestiae rerum velit. Itaque reprehenderit sapiente reprehenderit illum aut aut similique. Ullam officiis laudantium voluptas reprehenderit repudiandae pariatur.', 'sit', 650565402, NULL, '1983-05-21 19:21:46', '2013-11-14 21:45:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '14', '113', 'Dolores accusantium voluptatem aut ducimus nemo. Possimus ipsum sit officia illo corporis. Enim adipisci dolores quos non ut omnis et. Ipsam harum et et ut voluptatem.', 'est', 0, NULL, '1984-06-10 18:33:26', '2009-04-15 09:20:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '15', '114', 'Quidem voluptate ratione aperiam vero dolorem odit. Laudantium vero quo quae autem maxime alias. Eos qui consequatur tempora aspernatur.', 'fugiat', 88, NULL, '1973-03-24 01:42:42', '1988-07-05 08:03:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '16', '115', 'Dolor qui vel quibusdam debitis modi. Veniam et ut ipsa. Quasi et ex sint. Nesciunt natus ut porro optio necessitatibus animi.', 'dolores', 2571, NULL, '2001-06-05 16:09:19', '2013-08-09 15:31:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '17', '117', 'Tenetur nihil aperiam ut ut inventore non. Earum qui deserunt cum rerum nulla. Autem ut amet laborum nihil debitis ut facere. Et placeat nemo aut odio sequi cum quo ut.', 'esse', 0, NULL, '2018-01-07 13:55:51', '1989-10-01 08:34:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '18', '119', 'Cupiditate incidunt et aut eum et. Ipsum ut a quo laborum id laborum et. Quia ipsa voluptatibus consequatur ut. Nemo aut necessitatibus et voluptatem harum enim et laborum.', 'dolore', 23929, NULL, '2004-08-03 04:35:11', '2003-02-27 10:25:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '19', '121', 'Corporis reprehenderit omnis veritatis alias cumque. Earum quia voluptate porro mollitia ea. Natus nihil laborum rerum temporibus dolorem voluptas.', 'aut', 82, NULL, '2020-01-20 05:11:27', '1978-10-03 10:05:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '20', '122', 'Reprehenderit aspernatur possimus pariatur in similique. Eaque ipsa excepturi est est ad deleniti tenetur. Dolorum repellat nesciunt harum et. Nostrum cum rerum dolorem.', 'alias', 34511, NULL, '2015-06-25 15:39:01', '1974-10-08 12:13:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '124', 'Laudantium voluptas quos aut aut possimus nesciunt voluptatem totam. Necessitatibus aut dolor voluptates et nobis. Consequatur hic laudantium ut. Voluptatum est quisquam molestias enim.', 'pariatur', 139468, NULL, '1977-09-09 07:49:26', '1992-07-31 00:39:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '2', '126', 'Eaque voluptatibus qui et asperiores totam est eum. Nobis dolores neque nobis occaecati temporibus minima magni. Omnis quis esse expedita laboriosam ut beatae distinctio.', 'quaerat', 9567768, NULL, '1980-02-12 12:43:36', '2001-05-17 15:20:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '3', '127', 'Et occaecati est nisi veritatis assumenda. Blanditiis ipsam quam quasi quod. Quia iure enim vero architecto. Velit cupiditate ea adipisci animi reprehenderit.', 'voluptas', 326120941, NULL, '2015-07-23 05:40:46', '1998-04-15 09:51:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '4', '128', 'Aut doloremque nihil non minima eaque. Atque deserunt in adipisci beatae corporis cumque natus. Excepturi odio et optio itaque. Porro consectetur soluta repellat exercitationem voluptas dolor.', 'laborum', 690480559, NULL, '1979-06-19 11:12:59', '1994-12-15 03:35:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '5', '129', 'Nulla suscipit quia maxime dolorum et quos. Sunt neque repellendus rerum rerum. Doloremque animi eaque ducimus reiciendis et adipisci consequatur magni. Inventore ut non animi hic laborum aut.', 'veniam', 0, NULL, '1998-11-13 03:44:38', '1994-07-26 06:01:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '6', '130', 'Laborum nisi totam ut labore eligendi consequatur. Quis et ipsa repellendus optio provident.', 'nesciunt', 40964531, NULL, '2017-08-20 06:03:02', '1979-08-12 01:34:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '7', '133', 'Labore beatae alias similique consequatur quia veniam dolorem. Autem ullam impedit autem autem. Non a aliquam voluptates deserunt suscipit.', 'ut', 0, NULL, '1977-08-31 22:54:02', '1999-12-05 08:31:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '8', '135', 'Nobis tempore culpa nesciunt. Fugiat amet unde modi tenetur. Dolor quod quidem nostrum corrupti perspiciatis magni est. Dolores reiciendis et quaerat commodi ut laborum ducimus.', 'veniam', 31, NULL, '1981-12-22 09:01:24', '1984-03-09 04:56:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '9', '136', 'Maiores commodi vel error et hic repellat. Iste et aliquam nostrum repellendus aliquam placeat velit. Totam natus atque et corporis ut ea.', 'impedit', 7383, NULL, '1981-03-12 06:48:01', '1992-05-21 03:07:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '10', '141', 'Libero est aliquid hic et vel ducimus neque. Eum voluptatem reiciendis porro deserunt eum quasi blanditiis. Perspiciatis quis quaerat quae vero consectetur. Enim dolorem omnis cumque et neque fugit ut ad.', 'dolor', 502200439, NULL, '1979-01-16 04:58:54', '1994-05-31 05:00:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '11', '142', 'Iste quidem blanditiis nisi reiciendis ea. Nulla quisquam ullam incidunt nemo iure. Consectetur laborum exercitationem facere est asperiores expedita atque distinctio.', 'rem', 60491484, NULL, '1977-08-09 19:01:56', '1985-04-29 00:25:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '12', '143', 'Rerum ea blanditiis architecto saepe optio. Et sunt saepe animi harum et numquam molestiae. Aut quia esse aliquid pariatur ducimus aut dolores voluptas.', 'pariatur', 922, NULL, '2012-01-05 15:38:53', '2017-06-13 21:03:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '13', '144', 'Vero quas eveniet aut ea ad. Sed deserunt perferendis corrupti expedita facere eum quia. Molestiae nemo iusto aut nostrum id debitis velit quae. Iure omnis quas ab voluptatum provident qui eaque.', 'rerum', 59943, NULL, '1991-02-14 05:22:35', '2016-09-27 23:11:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '14', '145', 'Deserunt odio amet quia est quis quam. Aliquam quod earum aliquam aut est. Est quidem blanditiis numquam.', 'aut', 7, NULL, '2001-10-10 23:03:36', '2006-09-28 03:42:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '15', '146', 'Commodi sapiente at commodi ut est. Labore aliquid ut dolorem consequatur. Aut corrupti et repellat voluptas. Vitae voluptas quas autem hic et aut.', 'ut', 381, NULL, '2020-09-27 07:18:24', '2013-08-04 22:55:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '16', '149', 'Illo delectus eveniet in. Tempore dicta hic sed qui. Ea officiis dolorum illum.', 'et', 386562, NULL, '2015-09-01 11:34:19', '1982-04-14 12:19:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '17', '150', 'Et modi natus perspiciatis sint ea suscipit voluptatem. Adipisci omnis beatae suscipit quis molestias eum. Est dicta possimus esse eum labore quaerat in. Id accusamus at impedit est id quae. Temporibus vero ea dolorum quaerat ut ipsum.', 'voluptatem', 0, NULL, '2006-07-22 04:24:20', '1995-01-27 18:42:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '18', '152', 'Corrupti ea laborum voluptatem dolorum hic. Totam aut nulla ipsa voluptas quasi aut. Voluptatem aperiam ut est a quos dignissimos. Eum fugit quo aut adipisci.', 'expedita', 53074046, NULL, '2017-10-30 23:25:12', '1994-02-14 12:01:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '19', '153', 'Magnam autem sint veritatis odio. Rerum in voluptate deserunt necessitatibus vero. Adipisci qui mollitia vero enim autem non iusto. Laboriosam temporibus dignissimos molestias qui et asperiores magni et.', 'eveniet', 6, NULL, '1999-05-08 14:47:45', '1990-08-16 03:48:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '20', '155', 'Quia quo sed assumenda voluptatem facere. Doloremque quia ullam molestiae consequatur eos dolor. Expedita labore ratione et consequatur molestiae quia aliquid.', 'iusto', 0, NULL, '2012-08-04 23:06:58', '2005-10-13 17:16:21');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '101', '101', 'Eum incidunt labore officiis quam optio architecto. Et totam quam dolor sunt ex. Earum at dolor dolor illo adipisci explicabo ad.', '1981-11-02 23:23:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '102', '102', 'Dignissimos dicta architecto quod quisquam sint suscipit. In illo et dolorum eligendi explicabo quis voluptatem. Molestiae quibusdam accusantium beatae corrupti amet. Aspernatur eum quas ea id eveniet voluptate voluptatem.', '1998-10-23 23:13:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '105', '105', 'Qui vitae excepturi necessitatibus optio error vitae sequi. Sint quas maiores accusantium voluptas rerum minus. Laborum sit praesentium laborum quae.', '1986-06-29 10:04:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '106', '106', 'Dolore a aliquam sit minus itaque iste omnis. Dolore incidunt aut sint quae ut.', '2019-11-05 18:34:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '107', '107', 'Repellendus odit est architecto quod. Repudiandae odio temporibus sed quia. Quibusdam et praesentium in quam eos.', '2000-02-15 11:26:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '108', '108', 'A maiores optio suscipit officiis et. Impedit qui ratione non autem assumenda laborum porro.', '1975-01-18 22:30:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '110', '110', 'Magnam facere officiis ipsa quod ducimus dolorem libero. Eius cumque accusamus culpa aut. Dolore harum iure accusantium culpa. Laboriosam voluptatem est odio facilis quia minima consectetur.', '1979-05-28 10:13:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '111', '111', 'Saepe atque velit qui iure quidem et ducimus a. Et voluptatem non dolorum nobis iure et illo. Enim blanditiis eum dolores perferendis.', '2014-06-16 23:22:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '113', '113', 'Sit odio quam est at consequatur corporis. Et quia commodi mollitia itaque voluptatem. Quasi aut vitae maiores quos excepturi sint hic. Dignissimos laudantium temporibus occaecati porro eos consequatur ratione.', '1975-07-05 10:47:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '114', '114', 'Doloribus impedit et repellendus est sint enim culpa ut. Est in repellat dignissimos distinctio nulla. Corporis aut vel nihil quo mollitia. At est voluptates nobis laborum.', '1996-03-04 13:24:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '115', '115', 'Et adipisci commodi blanditiis veniam possimus quaerat officiis excepturi. Itaque officia perferendis totam consequuntur eum quia ex. Et enim repudiandae et facilis praesentium omnis officia. Rem ex minus itaque quo ipsa dolor neque numquam.', '1979-07-13 16:50:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '117', '117', 'Repudiandae consequatur fugit officiis voluptatibus. Sit explicabo modi omnis et est. Eos reiciendis fugit velit aspernatur provident. Quidem id omnis quibusdam dicta labore rerum accusamus. Qui saepe voluptatem qui rerum.', '1987-04-25 11:19:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '119', '119', 'Voluptas atque veritatis libero in rem aut architecto. Praesentium dolores aperiam non et a unde. Illo dolore laborum officiis voluptatem. Itaque dolores sit tempora et.', '1989-06-26 00:23:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '121', '121', 'In odio iste ut molestiae sint voluptatum fugit cumque. Accusantium nulla ad asperiores maxime. Repellat mollitia quibusdam unde voluptas.', '2016-07-04 09:13:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '122', '122', 'Eveniet omnis labore excepturi fuga assumenda. Quis sapiente sed et rerum. A a sit unde ipsa sit incidunt in eligendi.', '1994-02-08 08:52:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '124', '124', 'Autem sunt amet aut ducimus sapiente deleniti sunt. Quasi adipisci ut quibusdam. Ea aut accusantium molestiae sint.', '1988-04-21 18:22:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '126', '126', 'Natus tempora quam dolor possimus officia eos cumque. Animi itaque est ducimus. Voluptas saepe odit est sunt dolorem quasi sit.', '2004-01-22 04:21:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '127', '127', 'Ipsa dicta error voluptatum nesciunt ut veniam dolores suscipit. Maiores sed aut vel laudantium qui. Esse omnis autem et consectetur vel et sunt.', '2001-04-29 07:09:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '128', '128', 'Consequuntur ipsam adipisci voluptatibus earum laudantium omnis. Ut et omnis eum voluptate. Aliquam dolore velit ut iusto sunt nihil. Minima suscipit porro sit quos.', '2010-06-12 11:18:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '129', '129', 'Similique qui velit nihil sequi mollitia. Sit qui eos temporibus et ad. Dicta est tenetur sed sint.', '1984-05-14 12:47:46');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'alias', '101');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'iste', '102');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'molestiae', '105');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'quisquam', '106');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'quibusdam', '107');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'dolor', '108');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'corporis', '110');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'ratione', '111');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'velit', '113');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'libero', '114');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'veritatis', '115');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'quo', '117');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'reiciendis', '119');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'est', '121');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'et', '122');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'quidem', '124');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'alias', '126');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'illo', '127');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'quibusdam', '128');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'nisi', '129');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'dolorem', '130');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'est', '133');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'impedit', '135');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'mollitia', '136');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'in', '141');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'eligendi', '142');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'quia', '143');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'dolores', '144');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'sint', '145');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'maxime', '146');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'non', '149');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'odit', '150');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'eius', '152');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'voluptatem', '153');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'hic', '155');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'quo', '156');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'adipisci', '158');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'magni', '159');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'tenetur', '160');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'ipsam', '161');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'eius', '162');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'illo', '163');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'voluptatem', '164');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'repellendus', '165');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'rerum', '166');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'vel', '167');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'impedit', '168');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'quo', '169');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'adipisci', '171');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'id', '174');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'quia', '176');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'nisi', '177');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'voluptas', '181');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'eligendi', '182');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'est', '184');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'nisi', '185');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'quia', '189');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'et', '190');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'voluptas', '191');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'voluptatem', '193');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'dignissimos', '194');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'praesentium', '196');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'explicabo', '198');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'eligendi', '199');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'qui', '200');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'rem', '101');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'quidem', '102');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'officiis', '105');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'similique', '106');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'sit', '107');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'deserunt', '108');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'molestiae', '110');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'corporis', '111');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'voluptatem', '113');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'veritatis', '114');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'recusandae', '115');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'laborum', '117');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'et', '119');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'quis', '121');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'reprehenderit', '122');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'itaque', '124');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'illum', '126');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'voluptatem', '127');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'officia', '128');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'quia', '129');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'tempora', '130');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'aperiam', '133');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'officiis', '135');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'aperiam', '136');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'dignissimos', '141');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'officia', '142');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'facere', '143');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'dolore', '144');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'sint', '145');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'accusamus', '146');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'nesciunt', '149');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'illum', '150');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'dolor', '152');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'culpa', '153');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'assumenda', '155');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`),
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '3', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '5', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '6', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '7', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '10', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '11', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '12', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '13', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '14', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '15', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '16', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '17', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '18', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '19', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '20', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '21', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '22', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '23', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '24', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '25', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '26', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '27', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '28', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '29', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '30', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '31', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '32', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '33', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '34', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '35', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '36', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '37', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '38', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '39', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '40', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '41', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '42', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '43', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '44', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '45', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '46', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '47', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '48', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '49', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '50', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '51', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '52', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '53', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '54', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '55', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '56', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '57', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '58', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '59', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '60', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '61', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '62', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '63', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '64', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '65', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '66', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '67', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '68', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '69', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '70', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '71', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '72', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '73', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '74', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '75', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '76', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '77', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '78', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '79', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '80', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '81', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '82', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '83', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '84', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '85', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '86', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '87', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '88', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '89', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '90', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '91', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '92', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '93', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '94', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '95', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '96', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '97', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '98', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '99', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '100', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('101', NULL, '1977-02-13', NULL, '2005-11-10 05:30:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('102', NULL, '1983-01-25', NULL, '1992-08-21 00:47:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('105', NULL, '2007-08-31', NULL, '2005-12-01 10:28:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('106', NULL, '1974-07-22', NULL, '1978-01-03 04:41:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('107', NULL, '1988-07-11', NULL, '1973-06-21 10:21:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('108', NULL, '2000-11-24', NULL, '2005-09-01 04:41:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('110', NULL, '1985-05-28', NULL, '2015-09-27 04:13:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('111', NULL, '2003-02-01', NULL, '2009-10-27 11:33:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('113', NULL, '2005-09-30', NULL, '1973-09-08 22:01:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('114', NULL, '1987-09-26', NULL, '1995-11-03 11:46:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('115', NULL, '2007-10-03', NULL, '1977-09-13 15:35:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('117', NULL, '2017-10-03', NULL, '2018-10-17 09:41:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('119', NULL, '2012-11-06', NULL, '2010-06-13 06:45:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('121', NULL, '2009-03-19', NULL, '1989-10-20 18:22:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('122', NULL, '2002-03-08', NULL, '2009-12-09 20:16:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('124', NULL, '2007-04-02', NULL, '2018-07-02 23:35:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('126', NULL, '1986-01-22', NULL, '1974-09-15 18:33:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('127', NULL, '1995-11-05', NULL, '2015-08-28 18:50:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('128', NULL, '2012-03-14', NULL, '2007-07-17 06:57:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('129', NULL, '1987-06-27', NULL, '2001-07-12 20:04:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('130', NULL, '2007-02-13', NULL, '2008-07-10 18:46:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('133', NULL, '1990-10-27', NULL, '2004-06-29 18:02:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('135', NULL, '2016-03-04', NULL, '1974-11-17 21:53:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('136', NULL, '1997-08-26', NULL, '1978-06-28 22:15:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('141', NULL, '1991-04-03', NULL, '2006-12-11 05:17:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('142', NULL, '1996-10-25', NULL, '2014-05-25 16:00:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('143', NULL, '2019-04-26', NULL, '1974-01-17 17:26:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('144', NULL, '1986-04-06', NULL, '1991-01-30 10:29:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('145', NULL, '2014-01-18', NULL, '2002-12-02 08:23:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('146', NULL, '1988-11-10', NULL, '2019-08-12 21:00:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('149', NULL, '1989-05-05', NULL, '1995-01-25 05:41:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('150', NULL, '2018-09-16', NULL, '1986-07-02 13:47:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('152', NULL, '1972-03-14', NULL, '2002-08-19 23:05:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('153', NULL, '1989-12-18', NULL, '1978-10-22 17:58:57', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('155', NULL, '1999-10-14', NULL, '1971-10-18 00:15:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('156', NULL, '1996-05-11', NULL, '2019-02-13 01:46:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('158', NULL, '1976-04-26', NULL, '1996-02-16 12:59:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('159', NULL, '1980-03-19', NULL, '1989-10-10 10:08:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('160', NULL, '1975-01-20', NULL, '1970-05-01 17:41:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('161', NULL, '1998-03-13', NULL, '1970-02-02 02:03:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('162', NULL, '2018-05-15', NULL, '1980-10-22 22:38:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('163', NULL, '1973-06-09', NULL, '1995-12-30 17:23:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('164', NULL, '2009-08-01', NULL, '1989-07-08 10:02:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('165', NULL, '1989-03-30', NULL, '2006-01-10 21:43:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('166', NULL, '1979-04-15', NULL, '1997-07-18 15:07:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('167', NULL, '2017-09-04', NULL, '2014-01-29 23:33:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('168', NULL, '1999-12-13', NULL, '2012-06-11 02:51:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('169', NULL, '1987-08-16', NULL, '1998-10-13 15:05:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('171', NULL, '1976-03-19', NULL, '2013-05-24 14:07:43', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('174', NULL, '2003-10-29', NULL, '1972-05-25 09:03:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('176', NULL, '1999-12-13', NULL, '2018-06-11 09:14:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('177', NULL, '2008-07-08', NULL, '2006-04-02 17:19:57', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('181', NULL, '1992-01-17', NULL, '2011-10-30 20:52:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('182', NULL, '2002-03-31', NULL, '1993-06-20 05:03:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('184', NULL, '1970-04-17', NULL, '1975-06-17 09:20:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('185', NULL, '1980-10-10', NULL, '2012-09-20 03:56:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('189', NULL, '1985-10-14', NULL, '1983-12-16 12:41:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('190', NULL, '1988-04-18', NULL, '1979-07-27 12:12:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('191', NULL, '2002-05-09', NULL, '1993-04-22 23:09:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('193', NULL, '1988-07-19', NULL, '1986-12-11 03:09:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('194', NULL, '1971-01-17', NULL, '2007-04-20 12:32:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('196', NULL, '2005-05-09', NULL, '2016-12-15 15:08:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('198', NULL, '2008-12-26', NULL, '1974-01-04 09:18:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('199', NULL, '2020-04-22', NULL, '1999-09-03 17:54:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('200', NULL, '1985-10-05', NULL, '2013-10-10 22:00:01', NULL);



#
# TABLE STRUCTURE FOR: users_communities
#

DROP TABLE IF EXISTS `users_communities`;

CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('101', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('101', '66');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('102', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('102', '67');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('105', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('105', '68');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('106', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('106', '69');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('107', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('107', '70');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('108', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('108', '71');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('110', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('110', '72');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('111', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('111', '73');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('113', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('113', '74');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('114', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('114', '75');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('115', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('115', '76');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('117', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('117', '77');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('119', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('119', '78');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('121', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('121', '79');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('122', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('122', '80');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('124', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('124', '81');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('126', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('126', '82');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('127', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('127', '83');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('128', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('128', '84');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('129', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('129', '85');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('130', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('130', '86');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('133', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('133', '87');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('135', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('135', '88');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('136', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('136', '89');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('141', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('141', '90');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('142', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('142', '91');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('143', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('143', '92');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('144', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('144', '93');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('145', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('145', '94');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('146', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('146', '95');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('149', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('149', '96');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('150', '32');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('150', '97');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('152', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('152', '98');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('153', '34');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('153', '99');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('155', '35');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('155', '100');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('156', '36');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('158', '37');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('159', '38');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('160', '39');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('161', '40');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('162', '41');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('163', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('164', '43');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('165', '44');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('166', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('167', '46');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('168', '47');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('169', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('171', '49');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('174', '50');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('176', '51');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('177', '52');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('181', '53');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('182', '54');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('184', '55');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('185', '56');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('189', '57');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('190', '58');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('191', '59');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('193', '60');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('194', '61');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('196', '62');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('198', '63');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('199', '64');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('200', '65');



