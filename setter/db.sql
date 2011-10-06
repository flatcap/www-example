DROP TABLE IF EXISTS `setter`;
CREATE TABLE `setter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initials` tinytext NOT NULL,
  `first_name` text,
  `surname` text,
  PRIMARY KEY (`id`)
);

INSERT INTO `setter` VALUES (1,'','Features','');
INSERT INTO `setter` VALUES (2,'mc','Mark','Croxall');
INSERT INTO `setter` VALUES (3,'rr','Rich','Russon');
INSERT INTO `setter` VALUES (4,'nk','Nina','Kersey');
INSERT INTO `setter` VALUES (5,'br','Ben','Read');
INSERT INTO `setter` VALUES (6,'gh','Graeme','Harwood');
INSERT INTO `setter` VALUES (7,'jc','Joe','Coverley');
INSERT INTO `setter` VALUES (8,'ds','Dom','Sutcliffe');
INSERT INTO `setter` VALUES (9,'mh','Mike','Hadcocks');
INSERT INTO `setter` VALUES (10,'rm','Rob','Mitchell');

