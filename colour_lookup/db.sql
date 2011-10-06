DROP TABLE IF EXISTS `colour`;
CREATE TABLE `colour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `colour` tinytext NOT NULL,
  `abbr` text,
  PRIMARY KEY (`id`)
);

INSERT INTO `colour` VALUES (1,'Beige','bg');
INSERT INTO `colour` VALUES (2,'Black','blk,bk');
INSERT INTO `colour` VALUES (3,'Blue','blu');
INSERT INTO `colour` VALUES (4,'Blue/White','b/w,bw');
INSERT INTO `colour` VALUES (5,'Brown','brn,bn');
INSERT INTO `colour` VALUES (6,'Features','ft');
INSERT INTO `colour` VALUES (7,'Green','gren,grn,gn');
INSERT INTO `colour` VALUES (8,'Grey','gray,gry,gy');
INSERT INTO `colour` VALUES (9,'Mushroom',NULL);
INSERT INTO `colour` VALUES (10,'Orange',NULL);
INSERT INTO `colour` VALUES (11,'Pink/Black','p/b,pb');
INSERT INTO `colour` VALUES (12,'Pink','pk');
INSERT INTO `colour` VALUES (13,'Pink/Purple','p/p,pp');
INSERT INTO `colour` VALUES (14,'Purple','pp');
INSERT INTO `colour` VALUES (15,'Purple/White','p/w,pw');
INSERT INTO `colour` VALUES (16,'Red','rd');
INSERT INTO `colour` VALUES (17,'Red/White','r/w,rw');
INSERT INTO `colour` VALUES (18,'Tiger','tg');
INSERT INTO `colour` VALUES (19,'Turquoise','tq,tr');
INSERT INTO `colour` VALUES (20,'White',NULL);
INSERT INTO `colour` VALUES (21,'Yellow','yl');
INSERT INTO `colour` VALUES (22,'Wood','wd');

