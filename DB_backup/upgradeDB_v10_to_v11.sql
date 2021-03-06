
--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventory` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `id_item_exchange` int(11) DEFAULT NULL,
  `done` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_item_exchange` (`id_item_exchange`),
  KEY `id_inventory` (`id_inventory`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id_inventory`) REFERENCES `inventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`id_item_exchange`) REFERENCES `item` (`id`);

ALTER TABLE `item` CHANGE `price` `money` INT(11) NOT NULL DEFAULT '0';
ALTER TABLE `transaction` CHANGE `price` `money` INT(11) NOT NULL;

INSERT INTO `soluche`.`item` (`id`, `internal_name`, `nom`, `description`, `permanent`, `notoriete`, `alcoolemie`, `alcoolemie_optimum`, `alcoolemie_max`, `fatigue`, `fatigue_max`, `sex_appeal`, `image`, `item_type`, `remaining_time`, `money`) VALUES
(NULL, 'paillardier', 'paillardier', 'recueil de paillardes (utile pour chanter)', '1', '0', '0', '0', '0', '0', '0', '0', 'images/item/book.png', 'badge', '0', '-20'),
(NULL, 'tardis', 'TARDIS', 'voyage dans le temps', '0', '0', '0', '0', '0', '0', '0', '0', 'images/items/tardis.png', 'badge', '4', '-100');



UPDATE `item` SET `id` = 1,`internal_name` = 'poule',`nom` = 'poule',`description` = 'personne chaude',`permanent` = 1,`notoriete` = 1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = -1,`sex_appeal` = 3,`image` = 'images/items/poule.png',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 1;
UPDATE `item` SET `id` = 2,`internal_name` = 'pachi',`nom` = 'pachi',`description` = 'personne lourde',`permanent` = 1,`notoriete` = 1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = -1,`image` = 'images/items/pachi.png',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 2;
UPDATE `item` SET `id` = 3,`internal_name` = 'bacchus',`nom` = 'bacchus',`description` = 'Dignité dans l''ivresse',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 2,`alcoolemie_max` = 2,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/bacchus.png',`item_type` = 'level',`remaining_time` = 0,`money` = 3 WHERE `item`.`id` = 3;
UPDATE `item` SET `id` = 4,`internal_name` = 'redbull',`nom` = 'Redbull',`description` = 'Caféine froide',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = -2,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/redbull.png',`item_type` = 'drink',`remaining_time` = -1,`money` = -6 WHERE `item`.`id` = 4;
UPDATE `item` SET `id` = 5,`internal_name` = 'test_plus_1_all',`nom` = 'test+1 all',`description` = '',`permanent` = 0,`notoriete` = 1,`alcoolemie` = 1,`alcoolemie_optimum` = 1,`alcoolemie_max` = 1,`fatigue` = 1,`fatigue_max` = 1,`sex_appeal` = 1,`image` = 'images/items/pouce-haut.png',`item_type` = 'test',`remaining_time` = 1,`money` = 1 WHERE `item`.`id` = 5;
UPDATE `item` SET `id` = 6,`internal_name` = 'test_moins_1_all',`nom` = 'test-1 all',`description` = '',`permanent` = 0,`notoriete` = -1,`alcoolemie` = -1,`alcoolemie_optimum` = -1,`alcoolemie_max` = -1,`fatigue` = -1,`fatigue_max` = -1,`sex_appeal` = -1,`image` = 'images/items/pouce-bas.png',`item_type` = 'test',`remaining_time` = -1,`money` = -1 WHERE `item`.`id` = 6;
UPDATE `item` SET `id` = 7,`internal_name` = 'cafe',`nom` = 'Café',`description` = 'Caféine chaude',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = -2,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/cafe.png',`item_type` = 'drink',`remaining_time` = -1,`money` = -6 WHERE `item`.`id` = 7;
UPDATE `item` SET `id` = 8,`internal_name` = 'sandwish',`nom` = 'Sandwish',`description` = 'sudo make me a sandwish',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = -3,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/sandwich.png',`item_type` = 'food',`remaining_time` = -2,`money` = -10 WHERE `item`.`id` = 8;
UPDATE `item` SET `id` = 9,`internal_name` = 'vomit',`nom` = 'vomit',`description` = 'hé t''as mangé des pâtes hier!',`permanent` = 0,`notoriete` = -8,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = -1,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/vomi.png',`item_type` = 'food',`remaining_time` = -1,`money` = 0 WHERE `item`.`id` = 9;
UPDATE `item` SET `id` = 10,`internal_name` = 'poulet',`nom` = 'Poulet',`description` = 'Poulet poulet piou piou piou!',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = -3,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/poulet.png',`item_type` = 'food',`remaining_time` = -2,`money` = -14 WHERE `item`.`id` = 10;
UPDATE `item` SET `id` = 11,`internal_name` = 'chartreuse',`nom` = 'treuse',`description` = 'Chartreuse',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 2,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 1,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/treuse.png',`item_type` = 'alcohol',`remaining_time` = -1,`money` = -18 WHERE `item`.`id` = 11;
UPDATE `item` SET `id` = 12,`internal_name` = 'biere',`nom` = 'bière',`description` = 'Bière',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 1,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 1,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/biere.png',`item_type` = 'alcohol',`remaining_time` = -1,`money` = -4 WHERE `item`.`id` = 12;
UPDATE `item` SET `id` = 13,`internal_name` = '1_pins',`nom` = 'pin''s',`description` = 'un pin''s',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/pins.png',`item_type` = 'pins',`remaining_time` = 0,`money` = -3 WHERE `item`.`id` = 13;
UPDATE `item` SET `id` = 353,`internal_name` = '2_sexes',`nom` = '2 sexes',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/2 sexes.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 353;
UPDATE `item` SET `id` = 355,`internal_name` = '69',`nom` = '69',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/69.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 355;
UPDATE `item` SET `id` = 356,`internal_name` = 'abeille',`nom` = 'abeille',`description` = 'cursus examplaire',`permanent` = 1,`notoriete` = 1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/abeille.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 356;
UPDATE `item` SET `id` = 357,`internal_name` = 'aigle_germain',`nom` = 'aigle germain',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/aigle germain.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 357;
UPDATE `item` SET `id` = 358,`internal_name` = 'alambic',`nom` = 'alambic',`description` = 'prépare ses propre alcool (valeur)',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 1,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/alambic.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 358;
UPDATE `item` SET `id` = 359,`internal_name` = 'palette_vernie',`nom` = 'Palette vernie',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/palette vernie.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 359;
UPDATE `item` SET `id` = 360,`internal_name` = 'ancre',`nom` = 'ancre',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/ancre.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 360;
UPDATE `item` SET `id` = 361,`internal_name` = 'ane',`nom` = 'âne',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/ane.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 361;
UPDATE `item` SET `id` = 362,`internal_name` = 'anneaux_olympiques',`nom` = 'anneaux olympiques',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 2,`sex_appeal` = 1,`image` = 'images/badges/anneaux olympiques.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 362;
UPDATE `item` SET `id` = 364,`internal_name` = 'balance_romaine',`nom` = 'balance romaine',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/balance romaine.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 364;
UPDATE `item` SET `id` = 365,`internal_name` = 'ballon_de_foot',`nom` = 'ballon de foot',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/ballon de foot.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 365;
UPDATE `item` SET `id` = 366,`internal_name` = 'beta',`nom` = 'beta',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/beta.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 366;
UPDATE `item` SET `id` = 367,`internal_name` = 'betterave',`nom` = 'betterave',`description` = 'cuni',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/betterave.jpg',`item_type` = 'potager',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 367;
UPDATE `item` SET `id` = 368,`internal_name` = 'bobine_et_eclairs',`nom` = 'bobine et éclairs',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/bobine et eclairs.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 368;
UPDATE `item` SET `id` = 369,`internal_name` = 'bobine',`nom` = 'bobine',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/bobine.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 369;
UPDATE `item` SET `id` = 370,`internal_name` = 'boulon_argente',`nom` = 'boulon argenté',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/boulon argente.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 370;
UPDATE `item` SET `id` = 371,`internal_name` = 'bourse',`nom` = 'bourse',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/bourse.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 371;
UPDATE `item` SET `id` = 372,`internal_name` = 'bouteille_de_champagne',`nom` = 'bouteille de champagne',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/bouteille de champagne.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 372;
UPDATE `item` SET `id` = 373,`internal_name` = 'caducee_medecine_2',`nom` = 'caducée médecine 2',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/caducee medecine 2.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 373;
UPDATE `item` SET `id` = 374,`internal_name` = 'caducee_medecine',`nom` = 'caducée médecine',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/caducee medecine.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 374;
UPDATE `item` SET `id` = 375,`internal_name` = 'caducee_mercure',`nom` = 'caducée Mercure',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/caducee mercure.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 375;
UPDATE `item` SET `id` = 376,`internal_name` = 'caducee_pharmacie',`nom` = 'caducée pharmacie',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/caducee pharmacie.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 376;
UPDATE `item` SET `id` = 377,`internal_name` = 'caducee_psychologie_belge',`nom` = 'caducée psychologie belge',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/caducee psychologie belge.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 377;
UPDATE `item` SET `id` = 378,`internal_name` = 'caducee_psychologie',`nom` = 'caducée psychologie',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/caducee psychologie.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 378;
UPDATE `item` SET `id` = 379,`internal_name` = 'caducee_veterinaire',`nom` = 'caducée veterinaire',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/caducee veterinaire.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 379;
UPDATE `item` SET `id` = 380,`internal_name` = 'calice',`nom` = 'calice',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/calice.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 380;
UPDATE `item` SET `id` = 381,`internal_name` = 'carotte',`nom` = 'carotte',`description` = 'copulation',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/carotte.jpg',`item_type` = 'potager',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 381;
UPDATE `item` SET `id` = 382,`internal_name` = 'cartes_a_jouer',`nom` = 'cartes à jouer',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/cartes a jouer.jpg',`item_type` = 'objet',`remaining_time` = 0,`money` = -25 WHERE `item`.`id` = 382;
UPDATE `item` SET `id` = 383,`internal_name` = 'cerf',`nom` = 'cerf',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/cerf.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 383;
UPDATE `item` SET `id` = 384,`internal_name` = 'chameau_a_2_bosses',`nom` = 'chameau a 2 bosses',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/chameau a 2 bosses.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 384;
UPDATE `item` SET `id` = 385,`internal_name` = 'chameau',`nom` = 'chameau',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/chameau.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 385;
UPDATE `item` SET `id` = 386,`internal_name` = 'chardon_lorrain',`nom` = 'chardon lorrain',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/chardon lorrain.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 386;
UPDATE `item` SET `id` = 387,`internal_name` = 'chauve_souris',`nom` = 'chauve souris',`description` = 'Nuit blanche',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 2,`sex_appeal` = 0,`image` = 'images/badges/chauve souris.jpg',`item_type` = 'level',`remaining_time` = 0,`money` = 2 WHERE `item`.`id` = 387;
UPDATE `item` SET `id` = 388,`internal_name` = 'chope',`nom` = 'chope',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 1,`alcoolemie_max` = 1,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/chope.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 388;
UPDATE `item` SET `id` = 389,`internal_name` = 'chou_fleur',`nom` = 'chou fleur',`description` = 'partouze',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/chou fleur.jpg',`item_type` = 'potager',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 389;
UPDATE `item` SET `id` = 390,`internal_name` = 'chouette_a_deux_faces',`nom` = 'chouette à deux faces',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/chouette a deux faces.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 390;
UPDATE `item` SET `id` = 391,`internal_name` = 'chouette',`nom` = 'chouette',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/chouette.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 391;
UPDATE `item` SET `id` = 392,`internal_name` = 'cigogne',`nom` = 'cigogne',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/cigogne.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 392;
UPDATE `item` SET `id` = 393,`internal_name` = 'ciseaux',`nom` = 'ciseaux',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/ciseaux.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 393;
UPDATE `item` SET `id` = 394,`internal_name` = 'cle_de_sol',`nom` = 'clé de sol',`description` = 'digne chanteur de paillardes',`permanent` = 1,`notoriete` = 2,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/cle de sol.png',`item_type` = 'level',`remaining_time` = 0,`money` = 2 WHERE `item`.`id` = 394;
UPDATE `item` SET `id` = 395,`internal_name` = 'cle',`nom` = 'clé',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/cle.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 395;
UPDATE `item` SET `id` = 396,`internal_name` = 'cochon',`nom` = 'cochon',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/cochon.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 396;
UPDATE `item` SET `id` = 397,`internal_name` = 'cocotte_en_papier',`nom` = 'cocotte en papier',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/cocotte en papier.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 397;
UPDATE `item` SET `id` = 398,`internal_name` = 'coq_wallon',`nom` = 'coq wallon',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/coq wallon.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 398;
UPDATE `item` SET `id` = 399,`internal_name` = 'coq',`nom` = 'coq',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/coq.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 399;
UPDATE `item` SET `id` = 400,`internal_name` = 'cor_de_chasse',`nom` = 'cor de chasse',`description` = 'Grand chasseur',`permanent` = 1,`notoriete` = 1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 1,`image` = 'images/badges/cor de chasse.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 400;
UPDATE `item` SET `id` = 401,`internal_name` = 'cornue_et_ballon',`nom` = 'cornue et ballon',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 1,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/cornue et ballon.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = -50 WHERE `item`.`id` = 401;
UPDATE `item` SET `id` = 402,`internal_name` = 'couronne_argentee',`nom` = 'couronne argentée',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/couronne argentee.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 402;
UPDATE `item` SET `id` = 403,`internal_name` = 'couronne_doree',`nom` = 'couronne dorée',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/couronne doree.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 403;
UPDATE `item` SET `id` = 404,`internal_name` = 'crabe',`nom` = 'crabe',`description` = 'a un MST',`permanent` = 1,`notoriete` = -3,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = -3,`image` = 'images/items/crabe.png',`item_type` = 'malus',`remaining_time` = 0,`money` = 50 WHERE `item`.`id` = 404;
UPDATE `item` SET `id` = 405,`internal_name` = 'croissant_de_lune',`nom` = 'croissant de lune',`description` = 'GC à la retraite',`permanent` = 1,`notoriete` = 5,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/croissant de lune.jpg',`item_type` = 'cros',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 405;
UPDATE `item` SET `id` = 406,`internal_name` = 'croix_de_grand_chambellan',`nom` = 'croix de grand chambellan',`description` = 'Grand Chambellan',`permanent` = 1,`notoriete` = 5,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/croix de grand chambellan.jpg',`item_type` = 'cros',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 406;
UPDATE `item` SET `id` = 407,`internal_name` = 'croix_de_grand_maitre',`nom` = 'croix de grand maître',`description` = 'Grand Maistre',`permanent` = 1,`notoriete` = 5,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/croix de grand maitre.jpg',`item_type` = 'cros',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 407;
UPDATE `item` SET `id` = 408,`internal_name` = 'croix_d_ankh',`nom` = 'croix d''ankh',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/croix egyptienne.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 408;
UPDATE `item` SET `id` = 409,`internal_name` = 'de_a_jouer',`nom` = 'de à jouer',`description` = 'dé dé!',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/de a jouer.jpg',`item_type` = 'objet',`remaining_time` = 0,`money` = -30 WHERE `item`.`id` = 409;
UPDATE `item` SET `id` = 410,`internal_name` = 'ecureuil',`nom` = 'écureuil',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/ecureuil.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 410;
UPDATE `item` SET `id` = 411,`internal_name` = 'epee',`nom` = 'épée',`description` = 'fin baiseur',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 2,`image` = 'images/badges/epee.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 411;
UPDATE `item` SET `id` = 412,`internal_name` = 'epi_de_ble',`nom` = 'épi de ble',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/epi de ble.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 412;
UPDATE `item` SET `id` = 413,`internal_name` = 'epi_et_faucille',`nom` = 'épi et faucille',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/epi et faucille.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 413;
UPDATE `item` SET `id` = 414,`internal_name` = 'epsilon',`nom` = 'epsilon',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/epsilon.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 414;
UPDATE `item` SET `id` = 415,`internal_name` = 'equerre_et_compas',`nom` = 'équerre et compas',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/equerre et compas.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 415;
UPDATE `item` SET `id` = 416,`internal_name` = 'escargot',`nom` = 'escargot',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/escargot.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 416;
UPDATE `item` SET `id` = 417,`internal_name` = 'grande_etoile_argentee',`nom` = 'grande étoile argentée ',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/etoile argent grande.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 417;
UPDATE `item` SET `id` = 418,`internal_name` = 'petite_etoile_argentee',`nom` = 'petite étoile argentée',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/etoile argent petite.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 418;
UPDATE `item` SET `id` = 419,`internal_name` = 'etoile_argentee_belge',`nom` = 'étoile argentée belge',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/etoile argentee belge.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 419;
UPDATE `item` SET `id` = 420,`internal_name` = 'etoile_argentee2',`nom` = 'étoile argentée 2',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/etoile argentee2.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 420;
UPDATE `item` SET `id` = 421,`internal_name` = 'etoile_doree_belge',`nom` = 'étoile dorée belge',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/etoile doree belge.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 421;
UPDATE `item` SET `id` = 422,`internal_name` = 'etoile_et_foudre',`nom` = 'étoile et foudre',`description` = '',`permanent` = 1,`notoriete` = 1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/etoile et foudre.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 422;
UPDATE `item` SET `id` = 423,`internal_name` = 'grande_etoile_doree',`nom` = 'grande étoile dorée',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/etoile or grande.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 423;
UPDATE `item` SET `id` = 424,`internal_name` = 'etoile_or_petite',`nom` = 'petite étoile dorée',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/etoile or petite.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 424;
UPDATE `item` SET `id` = 425,`internal_name` = 'faux',`nom` = 'faux',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/faux.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 425;
UPDATE `item` SET `id` = 426,`internal_name` = 'fer_a_cheval',`nom` = 'fer à cheval',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/fer a cheval.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 426;
UPDATE `item` SET `id` = 427,`internal_name` = 'feuille_de_vigne',`nom` = 'feuille de vigne',`description` = 'perte de la virginité masculine',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 1,`image` = 'images/badges/feuille de vigne.jpg',`item_type` = 'level',`remaining_time` = 0,`money` = 1 WHERE `item`.`id` = 427;
UPDATE `item` SET `id` = 428,`internal_name` = 'flambeaux_entrecroises',`nom` = 'flambeaux entrecroisés',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/flambeaux entrecroises.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 428;
UPDATE `item` SET `id` = 429,`internal_name` = 'fleche',`nom` = 'flèche',`description` = 'éjaculateur précoce',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = -2,`image` = 'images/badges/fleche.jpg',`item_type` = 'malus',`remaining_time` = 0,`money` = 50 WHERE `item`.`id` = 429;
UPDATE `item` SET `id` = 430,`internal_name` = 'fleur_de_lys',`nom` = 'fleur de lys',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/fleur de lys.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 430;
UPDATE `item` SET `id` = 431,`internal_name` = 'flying_foufoune',`nom` = 'flying foufoune',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/flying foufoune.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 431;
UPDATE `item` SET `id` = 432,`internal_name` = 'flying_penis',`nom` = 'flying pénis',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/flying penis.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 432;
UPDATE `item` SET `id` = 433,`internal_name` = 'fourchette_et_epi_de_ble',`nom` = 'fourchette et épi de blé',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/fourchette & epi de ble.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 433;
UPDATE `item` SET `id` = 434,`internal_name` = 'fourchette',`nom` = 'fourchette',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/fourchette.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 434;
UPDATE `item` SET `id` = 435,`internal_name` = 'fourchettes_croisees',`nom` = 'fourchettes croisées',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/fourchettes croisees.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 435;
UPDATE `item` SET `id` = 436,`internal_name` = 'gazelles',`nom` = 'gazelles',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/gazelles.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 436;
UPDATE `item` SET `id` = 437,`internal_name` = 'girafe',`nom` = 'girafe',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/girafe.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 437;
UPDATE `item` SET `id` = 438,`internal_name` = 'globe',`nom` = 'globe',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/globe.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 438;
UPDATE `item` SET `id` = 439,`internal_name` = 'grappe_de_raisin',`nom` = 'grappe de raisin',`description` = 'amour du bon vin',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 2,`alcoolemie_max` = 2,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/grappe de raisin.jpg',`item_type` = 'level',`remaining_time` = 0,`money` = 2 WHERE `item`.`id` = 439;
UPDATE `item` SET `id` = 440,`internal_name` = 'grenouille_argentee',`nom` = 'grenouille argentée',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/grenouille argent.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 440;
UPDATE `item` SET `id` = 441,`internal_name` = 'grenouille_doree',`nom` = 'grenouille dorée',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/grenouille or.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 441;
UPDATE `item` SET `id` = 443,`internal_name` = 'hache',`nom` = 'hache',`description` = 'prise de guerre',`permanent` = 1,`notoriete` = 1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/hache.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 443;
UPDATE `item` SET `id` = 444,`internal_name` = 'hermine',`nom` = 'hermine',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/hermine.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 444;
UPDATE `item` SET `id` = 445,`internal_name` = 'homard',`nom` = 'homard',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/homard.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 445;
UPDATE `item` SET `id` = 446,`internal_name` = 'hure',`nom` = 'hure',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/hure.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 446;
UPDATE `item` SET `id` = 447,`internal_name` = 'kangourou',`nom` = 'kangourou',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/kangourou.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 447;
UPDATE `item` SET `id` = 448,`internal_name` = 'koala',`nom` = 'koala',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/koala.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 448;
UPDATE `item` SET `id` = 449,`internal_name` = 'lime',`nom` = 'lime',`description` = 'Acte laborieux et difficile',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = -2,`image` = 'images/badges/lime.jpg',`item_type` = 'malus',`remaining_time` = 0,`money` = 50 WHERE `item`.`id` = 449;
UPDATE `item` SET `id` = 450,`internal_name` = 'lion_dresse',`nom` = 'lion dressé',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/lion dresse.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 450;
UPDATE `item` SET `id` = 451,`internal_name` = 'livre_ouvert_et_plume',`nom` = 'livre ouvert et plume',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/livre ouvert et plume.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 451;
UPDATE `item` SET `id` = 452,`internal_name` = 'locomotive',`nom` = 'locomotive',`description` = 'très lourd, pachy au cube',`permanent` = 1,`notoriete` = -2,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/locomotive.jpg',`item_type` = 'malus',`remaining_time` = 0,`money` = 50 WHERE `item`.`id` = 452;
UPDATE `item` SET `id` = 453,`internal_name` = 'lyre',`nom` = 'lyre',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/lyre.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 453;
UPDATE `item` SET `id` = 454,`internal_name` = 'mammouth',`nom` = 'mammouth',`description` = 'Gardien des traditions',`permanent` = 1,`notoriete` = 3,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/mammouth.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 454;
UPDATE `item` SET `id` = 455,`internal_name` = 'marteau_et_maillet',`nom` = 'marteau et maillet',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/marteau et maillet.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 455;
UPDATE `item` SET `id` = 456,`internal_name` = 'molaire',`nom` = 'molaire',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 2,`sex_appeal` = 0,`image` = 'images/badges/molaire.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 456;
UPDATE `item` SET `id` = 457,`internal_name` = 'nounours',`nom` = 'nounours',`description` = 'Gros dormeur',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 2,`sex_appeal` = 0,`image` = 'images/badges/nounours.jpg',`item_type` = 'level',`remaining_time` = 0,`money` = 3 WHERE `item`.`id` = 457;
UPDATE `item` SET `id` = 458,`internal_name` = 'orchidee',`nom` = 'orchidée',`description` = 'experte, fine baisseuse',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 2,`image` = 'images/badges/orchidee.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 458;
UPDATE `item` SET `id` = 460,`internal_name` = 'pachyderme',`nom` = 'pachyderme',`description` = 'personne lourde',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/pachyderme.jpg',`item_type` = 'badge',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 460;
UPDATE `item` SET `id` = 461,`internal_name` = 'paire_de_ski',`nom` = 'paire de ski',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/paire de ski.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 461;
UPDATE `item` SET `id` = 462,`internal_name` = 'palette_et_pinceau',`nom` = 'palette et pinceau',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/palette et pinceau.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 462;
UPDATE `item` SET `id` = 463,`internal_name` = 'palme_double',`nom` = 'palme double',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/palme double.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 463;
UPDATE `item` SET `id` = 464,`internal_name` = 'grande_palme_simple',`nom` = 'grande palme simple',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/palme simple grande.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 464;
UPDATE `item` SET `id` = 465,`internal_name` = 'palmes_croisees',`nom` = 'palmes croisées',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/palmes croisees.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 465;
UPDATE `item` SET `id` = 466,`internal_name` = 'palmier',`nom` = 'palmier',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/palmier.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 466;
UPDATE `item` SET `id` = 467,`internal_name` = 'papillon',`nom` = 'papillon',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/papillon.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 467;
UPDATE `item` SET `id` = 468,`internal_name` = 'parapluie_ferme',`nom` = 'parapluie ferme',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/parapluie ferme.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 468;
UPDATE `item` SET `id` = 469,`internal_name` = 'parapluie_ouvert',`nom` = 'parapluie ouvert',`description` = 'a vomi dans sa faluche',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/parapluie ouvert.jpg',`item_type` = 'malus',`remaining_time` = 0,`money` = 50 WHERE `item`.`id` = 469;
UPDATE `item` SET `id` = 470,`internal_name` = 'pendu',`nom` = 'pendu',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/pendu.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 470;
UPDATE `item` SET `id` = 471,`internal_name` = 'pericles',`nom` = 'pericles',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/pericles.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 471;
UPDATE `item` SET `id` = 472,`internal_name` = 'perron_liegeois',`nom` = 'perron liegeois',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/perron liegeois.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 472;
UPDATE `item` SET `id` = 473,`internal_name` = 'perroquet_sur_perchoir',`nom` = 'perroquet sur perchoir',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/perroquet sur perchoir.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 473;
UPDATE `item` SET `id` = 474,`internal_name` = 'phi',`nom` = 'phi',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/phi.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 474;
UPDATE `item` SET `id` = 475,`internal_name` = 'plume',`nom` = 'plume',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/plume.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 475;
UPDATE `item` SET `id` = 476,`internal_name` = 'poireau',`nom` = 'poireau',`description` = 'fellation',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/poireau.jpg',`item_type` = 'potager',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 476;
UPDATE `item` SET `id` = 477,`internal_name` = 'polytechnique_argente',`nom` = 'polytechnique argenté',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/polytechnique argente.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 477;
UPDATE `item` SET `id` = 478,`internal_name` = 'polytechnique_dore',`nom` = 'polytechnique doré',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/polytechnique dore.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 478;
UPDATE `item` SET `id` = 479,`internal_name` = 'navet',`nom` = 'navet',`description` = 'sodomie',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/potager navet.jpg',`item_type` = 'potager',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 479;
UPDATE `item` SET `id` = 481,`internal_name` = 'president',`nom` = 'président',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/president.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 481;
UPDATE `item` SET `id` = 482,`internal_name` = 'psi',`nom` = 'psi',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/psi.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 482;
UPDATE `item` SET `id` = 483,`internal_name` = 'raquette_de_tennis',`nom` = 'raquette de tennis',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/raquette de tennis.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 483;
UPDATE `item` SET `id` = 484,`internal_name` = 'rose',`nom` = 'rose',`description` = 'perte de la viginité féminine',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 1,`image` = 'images/badges/rose.jpg',`item_type` = 'level',`remaining_time` = 0,`money` = 1 WHERE `item`.`id` = 484;
UPDATE `item` SET `id` = 485,`internal_name` = 'sabot',`nom` = 'sabot',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/sabot.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 485;
UPDATE `item` SET `id` = 486,`internal_name` = 'sanglier',`nom` = 'sanglier',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/sanglier.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 486;
UPDATE `item` SET `id` = 487,`internal_name` = 'secretaire',`nom` = 'secrétaire',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/secretaire.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 487;
UPDATE `item` SET `id` = 488,`internal_name` = 'singe_du_grand_garde',`nom` = 'singe du grand garde',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/singe du grand garde.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 488;
UPDATE `item` SET `id` = 489,`internal_name` = 'singe',`nom` = 'singe',`description` = 'quémandeur d''insignes',`permanent` = 1,`notoriete` = -1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/singe.jpg',`item_type` = 'malus',`remaining_time` = 0,`money` = 50 WHERE `item`.`id` = 489;
UPDATE `item` SET `id` = 490,`internal_name` = 'soleil',`nom` = 'soleil',`description` = 'GM à la retraite',`permanent` = 1,`notoriete` = 5,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/soleil.jpg',`item_type` = 'cros',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 490;
UPDATE `item` SET `id` = 491,`internal_name` = 'solvay',`nom` = 'solvay',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/solvay.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 491;
UPDATE `item` SET `id` = 492,`internal_name` = 'sou_troue',`nom` = 'sou troué',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/sou troue.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 492;
UPDATE `item` SET `id` = 493,`internal_name` = 'sphinx',`nom` = 'sphinx',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/sphinx.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 493;
UPDATE `item` SET `id` = 494,`internal_name` = 'squelette',`nom` = 'squelette',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/squelette.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 494;
UPDATE `item` SET `id` = 495,`internal_name` = 'tambour',`nom` = 'tambour',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tambour.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 495;
UPDATE `item` SET `id` = 496,`internal_name` = 'taste_vin',`nom` = 'taste vin',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/taste vin.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 496;
UPDATE `item` SET `id` = 497,`internal_name` = 'telephone',`nom` = 'téléphone',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/telephone.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 497;
UPDATE `item` SET `id` = 498,`internal_name` = 'tete_d_indien',`nom` = 'tête d''indien',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tete d''indien.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 498;
UPDATE `item` SET `id` = 499,`internal_name` = 'tete_de_cheval',`nom` = 'tête de cheval',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tete de cheval.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 499;
UPDATE `item` SET `id` = 500,`internal_name` = 'tete_de_loup_vue_de_face',`nom` = 'tête de loup vue de face',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tete de loup vue de face.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 500;
UPDATE `item` SET `id` = 501,`internal_name` = 'tete_de_loup_vue_de_profil',`nom` = 'tête de loup vue de profil',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tete de loup vue de profil.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 501;
UPDATE `item` SET `id` = 502,`internal_name` = 'tete_de_mort_sur_femurs',`nom` = 'tête de mort sur femurs',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tete de mort sur femurs.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 502;
UPDATE `item` SET `id` = 503,`internal_name` = 'tete_de_mort',`nom` = 'tête de mort',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tete de mort.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 503;
UPDATE `item` SET `id` = 504,`internal_name` = 'tete_de_vache',`nom` = 'tête de vache',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tete de vache.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 504;
UPDATE `item` SET `id` = 505,`internal_name` = 'tomate',`nom` = 'tomate',`description` = 'cuni pendant les règles',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tomate.jpg',`item_type` = 'potager',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 505;
UPDATE `item` SET `id` = 506,`internal_name` = 'tore',`nom` = 'tore',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tore.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 506;
UPDATE `item` SET `id` = 507,`internal_name` = 'tortue_doree',`nom` = 'tortue dorée',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tortue or.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 507;
UPDATE `item` SET `id` = 508,`internal_name` = 'trefle_a_4_feuilles',`nom` = 'trèfle à 4 feuilles',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/trefle a 4 feuilles.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 508;
UPDATE `item` SET `id` = 509,`internal_name` = 'tresorier',`nom` = 'trésorier',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/tresorier.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 509;
UPDATE `item` SET `id` = 510,`internal_name` = 'valise',`nom` = 'valise',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/valise.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 510;
UPDATE `item` SET `id` = 511,`internal_name` = 'vice_president',`nom` = 'vice président',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/vice president.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 511;
UPDATE `item` SET `id` = 512,`internal_name` = 'voilier',`nom` = 'voilier',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/voilier.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 512;
UPDATE `item` SET `id` = 513,`internal_name` = 'volant',`nom` = 'volant',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/volant.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 513;
UPDATE `item` SET `id` = 514,`internal_name` = 'zodiaque_balance',`nom` = 'zodiaque balance',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque balance.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 514;
UPDATE `item` SET `id` = 515,`internal_name` = 'zodiaque_belier',`nom` = 'zodiaque bélier',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque belier.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 515;
UPDATE `item` SET `id` = 516,`internal_name` = 'zodiaque_capricorne',`nom` = 'zodiaque capricorne',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque capricorne.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 516;
UPDATE `item` SET `id` = 517,`internal_name` = 'zodiaque_gemeaux',`nom` = 'zodiaque gémeaux',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque gemeaux.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 517;
UPDATE `item` SET `id` = 518,`internal_name` = 'zodiaque_lion',`nom` = 'zodiaque lion',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque lion.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 518;
UPDATE `item` SET `id` = 519,`internal_name` = 'zodiaque_poisson',`nom` = 'zodiaque poisson',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque poisson.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 519;
UPDATE `item` SET `id` = 520,`internal_name` = 'zodiaque_sagittaire',`nom` = 'zodiaque sagittaire',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque sagittaire.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 520;
UPDATE `item` SET `id` = 521,`internal_name` = 'zodiaque_scorpion',`nom` = 'zodiaque scorpion',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque scorpion.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 521;
UPDATE `item` SET `id` = 522,`internal_name` = 'zodiaque_taureau',`nom` = 'zodiaque taureau',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque taureau.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 522;
UPDATE `item` SET `id` = 523,`internal_name` = 'zodiaque_vierge',`nom` = 'zodiaque vierge',`description` = '',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/badges/zodiaque vierge.jpg',`item_type` = 'test',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 523;
UPDATE `item` SET `id` = 524,`internal_name` = 'pins_exigeons_la_dignite',`nom` = 'pins exigeons la dignité',`description` = 'dignitruc',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/pin-s-exigeons-la-dignité.png',`item_type` = 'pins',`remaining_time` = 0,`money` = 0 WHERE `item`.`id` = 524;
UPDATE `item` SET `id` = 525,`internal_name` = 'condom',`nom` = 'condom',`description` = 'Capote, permet d''éviter les MST',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/condom.png',`item_type` = 'objet',`remaining_time` = 0,`money` = -5 WHERE `item`.`id` = 525;
UPDATE `item` SET `id` = 526,`internal_name` = 'vin',`nom` = 'vin',`description` = 'gros rouge qui tache',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 1,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 1,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/vin rouge.png',`item_type` = 'alcohol',`remaining_time` = -1,`money` = -6 WHERE `item`.`id` = 526;
UPDATE `item` SET `id` = 527,`internal_name` = 'pastaga',`nom` = 'pastaga',`description` = 'pastis 51',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 1,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 1,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/51.png',`item_type` = 'alcohol',`remaining_time` = -1,`money` = -6 WHERE `item`.`id` = 527;
UPDATE `item` SET `id` = 528,`internal_name` = 'reblochon',`nom` = 'reblochon',`description` = 'valeur, fromage de Savoie',`permanent` = 0,`notoriete` = 1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = -2,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/reblochon.png',`item_type` = 'valeur',`remaining_time` = -2,`money` = -18 WHERE `item`.`id` = 528;
UPDATE `item` SET `id` = 533,`internal_name` = 'saucisson',`nom` = 'saucisson',`description` = 'saucisson (valeur)',`permanent` = 0,`notoriete` = 1,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = -2,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/saucisson.png',`item_type` = 'valeur',`remaining_time` = -2,`money` = -18 WHERE `item`.`id` = 533;
UPDATE `item` SET `id` = 534,`internal_name` = 'cle_de_fa',`nom` = 'clé de fa',`description` = 'digne chanteur de paillardes',`permanent` = 1,`notoriete` = 2,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/cle de fa.png',`item_type` = 'level',`remaining_time` = 0,`money` = 3 WHERE `item`.`id` = 534;
UPDATE `item` SET `id` = 535,`internal_name` = 'panda',`nom` = 'panda',`description` = 'se laisse traqunarder facilement',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/panda.png',`item_type` = 'badge',`remaining_time` = 0,`money` = -50 WHERE `item`.`id` = 535;
UPDATE `item` SET `id` = 536,`internal_name` = 'eau_evian',`nom` = 'Eau Evian',`description` = 'de l''eau d''Evian',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = -1,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/evian.png',`item_type` = 'alcohol',`remaining_time` = 0,`money` = -5 WHERE `item`.`id` = 536;
UPDATE `item` SET `id` = 539,`internal_name` = 'bambou',`nom` = 'bambou',`description` = 'grand traquenardeur de pandas',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 1,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/bambou.png',`item_type` = 'badge',`remaining_time` = 0,`money` = -40 WHERE `item`.`id` = 539;
UPDATE `item` SET `id` = 540,`internal_name` = 'paillardier',`nom` = 'paillardier',`description` = 'recueil de paillardes (utile pour chanter)',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/book.png',`item_type` = 'objet',`remaining_time` = 0,`money` = -20 WHERE `item`.`id` = 540;
UPDATE `item` SET `id` = 541,`internal_name` = 'tardis',`nom` = 'TARDIS',`description` = 'voyage dans le temps',`permanent` = 0,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/tardis.png',`item_type` = 'objet',`remaining_time` = 4,`money` = -100 WHERE `item`.`id` = 541;
UPDATE `item` SET `id` = 542,`internal_name` = 'pins_fal',`nom` = 'pin''s fal',`description` = 'un pin''s FALUS',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 0,`image` = 'images/items/pins_fal.png',`item_type` = 'pins',`remaining_time` = 0,`money` = -5 WHERE `item`.`id` = 542;
UPDATE `item` SET `id` = 543,`internal_name` = 'eco_cup',`nom` = 'eco cup',`description` = 'verre à glouglou',`permanent` = 1,`notoriete` = 0,`alcoolemie` = 0,`alcoolemie_optimum` = 0,`alcoolemie_max` = 0,`fatigue` = 0,`fatigue_max` = 0,`sex_appeal` = 1,`image` = 'images/items/eco cup.png',`item_type` = 'level',`remaining_time` = 0,`money` = 1 WHERE `item`.`id` = 543;




INSERT INTO `item` (`id`, `internal_name`, `nom`, `description`, `permanent`, `notoriete`, `alcoolemie`, `alcoolemie_optimum`, `alcoolemie_max`, `fatigue`, `fatigue_max`, `sex_appeal`, `image`, `item_type`, `remaining_time`, `money`) VALUES
(552, 'verre_de_vin', 'verre de vin', 'verre de vin', 0, 0, 1, 0, 0, 0, 0, 0, 'images/items/verre de vin.png', 'alcohol', 0, -5),
(551, 'verre_de_biere', 'verre de bière', 'verre de bière', 0, 0, 1, 0, 0, 0, 0, 0, 'images/items/verre de biere.png', 'alcohol', 0, -5),
(550, 'soupe_a_l_oignon', 'soupe à l''oignon', 'soupe à l''oignon', 0, 0, 0, 0, 0, -1, 0, 0, 'images/items/soupe a l oignon.png', 'food', 0, -5),
(549, 'saucisse', 'saucisse', 'coucou tu veux voir ma saucisse', 0, 0, 0, 0, 0, -2, 0, 0, 'images/items/saucisse.png', 'food', 0, -14),
(548, 'salade', 'salade', 'salade', 0, 0, 0, 0, 0, -1, 0, 0, 'images/items/salade.png', 'food', 0, -4),
(547, 'salade_de_riz', 'salade de riz', 'salade de riz', 0, 0, 0, 0, 0, -2, 0, 0, 'images/items/salade de riz.png', 'food', 0, -8),
(546, 'salade_de_fruits', 'salade de fruits', 'salade de fruits', 0, 0, 0, 0, 0, -2, 0, 0, 'images/items/salade de fruits.png', 'food', 0, -10),
(545, 'macedoine_de_legumes', 'macédoine de légumes', 'macédoine de légumes', 0, 0, 0, 0, 0, -2, 0, 0, 'images/items/macedoine de legumes.png', 'food', 0, -8),
(544, 'cotes_de_porc', 'côtes de porc', 'Humm côtes de porc', 0, 0, 0, 0, 0, -2, 0, 0, 'images/items/cotes de porc.png', 'food', -2, -12),
(553 , 'pins_fal', 'pin''s FAL', 'pin''s du week-end FAL', '1', '0', '0', '0', '0', '0', '0', '0', 'images/items/pins_fal.png', 'pins', '0', '-5');

INSERT INTO `item` (`id`, `internal_name`, `nom`, `description`, `permanent`, `notoriete`, `alcoolemie`, `alcoolemie_optimum`, `alcoolemie_max`, `fatigue`, `fatigue_max`, `sex_appeal`, `image`, `item_type`, `remaining_time`, `money`) VALUES
(554, 'cactus', 'cactus', 'pratique la biffle [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/cactus.png', 'test', 0, 0),
(555, 'kitten', 'chatton', 'amour des câlins [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/cat.png', 'test', 0, 0),
(556, 'cle_de_fa_argent', 'cle de fa argent', 'cle de fa argent', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/cle de fa argent.png', 'test', 0, 0),
(557, 'etoiles_de_mer', 'étoiles de mer', 'fait l''étoiles de mer [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/etoiles de mer.png', 'test', 0, 0),
(558, 'hippo', 'hippo', 'pachy honorifique [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/hippo.png', 'test', 0, 0),
(559, 'icter', 'icter', 'icter', 0, 0, 1, 0, 0, 0, 0, 0, 'images/items/icter.png', 'alcohol', 0, -5),
(560, 'langue', 'langue', 'pro du cuni/pipe [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/langue.png', 'test', 0, 0),
(561, 'levrette', 'lévrier femelle', 'amour de la levrette', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/levrette.png', 'test', 0, 0),
(562, 'licorne', 'licorne', 'licorne', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/licorne.png', 'test', 0, 0),
(563, 'loutre', 'loutre', 'amour de le charcuterie', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/loutre.png', 'test', 0, 0),
(564, 'pins_ornithorynque', 'pin''s ornithorynque', '', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/ornithorynque.png', 'pins', 0, -5),
(565, 'pelle_mecanique', 'pelle mécanique', 'pelle mécanique', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/pelle mecanique.png', 'test', 0, 0),
(566, 'pelle', 'pelle', 'aime rouler des pelles [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/pelle.png', 'test', 0, 0),
(568, 'pins_panda', 'pins panda.png', 'pins panda', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/pins panda.png', 'pins', 0, -6),
(569, 'ornithorynque', 'ornithorynque', 'coopulation dans un lieux tres original [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/platypus.png', 'test', 0, 0),
(570, 'rateau', 'rateau', 'droit pour : se prend plein de rateau et à 45 degres, aime mettre des rateaux [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/rateau.png', 'test', 0, 0),
(571, 'robinet', 'robinet', 'Douche dorée [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/robinet.png', 'test', 0, 0),
(572, 'shooter_vert', 'shooter vert', 'shooter vert', 0, 0, 1, 0, 0, 0, 0, 0, 'images/items/shooter vert.png', 'test', 0, -5),
(573, 'tetine', 'tétine', 'tétine [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/tetine.png', 'test', 0, 0),
(574, 'tnt', 'TNT', 'tip n top', 0, 0, 1, 0, 0, 0, 0, 0, 'images/items/tnt.png', 'alcohol', 0, -5),
(575, 'panthere', 'panthère', 'aime griffer mordre [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/panthere.png', 'test', 0, 0),
(576, 'rose plamplemouse.png', 'rosé', 'rosé', 0, 0, 2, 0, 0, 0, 0, 0, 'images/items/rose plamplemouse.png', 'alcohol', 0, -10),
(577, 'bebe', 'bébé', 'amour de l´humour déplacé [troll]', 1, 0, 0, 0, 0, 0, 0, 0, 'images/items/bebe.png', 'test', 0, 0);




--
-- Dumping data for table `item`
--

UPDATE `item` SET `id` = 1,`image` = 'images/items/poule.png' WHERE `item`.`id` = 1;
UPDATE `item` SET `id` = 2,`image` = 'images/items/pachi.png' WHERE `item`.`id` = 2;
UPDATE `item` SET `id` = 3,`image` = 'images/items/bacchus.png' WHERE `item`.`id` = 3;
UPDATE `item` SET `id` = 4,`image` = 'images/items/redbull.png' WHERE `item`.`id` = 4;
UPDATE `item` SET `id` = 5,`image` = 'images/items/pouce-haut.png' WHERE `item`.`id` = 5;
UPDATE `item` SET `id` = 6,`image` = 'images/items/pouce-bas.png' WHERE `item`.`id` = 6;
UPDATE `item` SET `id` = 7,`image` = 'images/items/cafe.png' WHERE `item`.`id` = 7;
UPDATE `item` SET `id` = 8,`image` = 'images/items/sandwich.png' WHERE `item`.`id` = 8;
UPDATE `item` SET `id` = 9,`image` = 'images/items/vomi.png' WHERE `item`.`id` = 9;
UPDATE `item` SET `id` = 10,`image` = 'images/items/poulet.png' WHERE `item`.`id` = 10;
UPDATE `item` SET `id` = 11,`image` = 'images/items/treuse.png' WHERE `item`.`id` = 11;
UPDATE `item` SET `id` = 12,`image` = 'images/items/biere.png' WHERE `item`.`id` = 12;
UPDATE `item` SET `id` = 13,`image` = 'images/items/pins.png' WHERE `item`.`id` = 13;
UPDATE `item` SET `id` = 353,`image` = 'images/badges/2 sexes.jpg' WHERE `item`.`id` = 353;
UPDATE `item` SET `id` = 355,`image` = 'images/badges/69.jpg' WHERE `item`.`id` = 355;
UPDATE `item` SET `id` = 356,`image` = 'images/items/abeille.png' WHERE `item`.`id` = 356;
UPDATE `item` SET `id` = 357,`image` = 'images/badges/aigle germain.jpg' WHERE `item`.`id` = 357;
UPDATE `item` SET `id` = 358,`image` = 'images/items/alambic.png' WHERE `item`.`id` = 358;
UPDATE `item` SET `id` = 359,`image` = 'images/badges/palette vernie.jpg' WHERE `item`.`id` = 359;
UPDATE `item` SET `id` = 360,`image` = 'images/badges/ancre.jpg' WHERE `item`.`id` = 360;
UPDATE `item` SET `id` = 361,`image` = 'images/badges/ane.jpg' WHERE `item`.`id` = 361;
UPDATE `item` SET `id` = 362,`image` = 'images/badges/anneaux olympiques.jpg' WHERE `item`.`id` = 362;
UPDATE `item` SET `id` = 364,`image` = 'images/badges/balance romaine.jpg' WHERE `item`.`id` = 364;
UPDATE `item` SET `id` = 365,`image` = 'images/badges/ballon de foot.jpg' WHERE `item`.`id` = 365;
UPDATE `item` SET `id` = 366,`image` = 'images/badges/beta.jpg' WHERE `item`.`id` = 366;
UPDATE `item` SET `id` = 367,`image` = 'images/items/betterave.png' WHERE `item`.`id` = 367;
UPDATE `item` SET `id` = 368,`image` = 'images/badges/bobine et eclairs.jpg' WHERE `item`.`id` = 368;
UPDATE `item` SET `id` = 369,`image` = 'images/badges/bobine.jpg' WHERE `item`.`id` = 369;
UPDATE `item` SET `id` = 370,`image` = 'images/badges/boulon argente.jpg' WHERE `item`.`id` = 370;
UPDATE `item` SET `id` = 371,`image` = 'images/badges/bourse.jpg' WHERE `item`.`id` = 371;
UPDATE `item` SET `id` = 372,`image` = 'images/badges/bouteille de champagne.jpg' WHERE `item`.`id` = 372;
UPDATE `item` SET `id` = 373,`image` = 'images/badges/caducee medecine 2.jpg' WHERE `item`.`id` = 373;
UPDATE `item` SET `id` = 374,`image` = 'images/badges/caducee medecine.jpg' WHERE `item`.`id` = 374;
UPDATE `item` SET `id` = 375,`image` = 'images/badges/caducee mercure.jpg' WHERE `item`.`id` = 375;
UPDATE `item` SET `id` = 376,`image` = 'images/badges/caducee pharmacie.jpg' WHERE `item`.`id` = 376;
UPDATE `item` SET `id` = 377,`image` = 'images/badges/caducee psychologie belge.jpg' WHERE `item`.`id` = 377;
UPDATE `item` SET `id` = 378,`image` = 'images/badges/caducee psychologie.jpg' WHERE `item`.`id` = 378;
UPDATE `item` SET `id` = 379,`image` = 'images/badges/caducee veterinaire.jpg' WHERE `item`.`id` = 379;
UPDATE `item` SET `id` = 380,`image` = 'images/badges/calice.jpg' WHERE `item`.`id` = 380;
UPDATE `item` SET `id` = 381,`image` = 'images/items/carotte.png' WHERE `item`.`id` = 381;
UPDATE `item` SET `id` = 382,`image` = 'images/items/cartes a jouer.png' WHERE `item`.`id` = 382;
UPDATE `item` SET `id` = 383,`image` = 'images/badges/cerf.jpg' WHERE `item`.`id` = 383;
UPDATE `item` SET `id` = 384,`image` = 'images/badges/chameau a 2 bosses.jpg' WHERE `item`.`id` = 384;
UPDATE `item` SET `id` = 385,`image` = 'images/badges/chameau.jpg' WHERE `item`.`id` = 385;
UPDATE `item` SET `id` = 386,`image` = 'images/badges/chardon lorrain.jpg' WHERE `item`.`id` = 386;
UPDATE `item` SET `id` = 387,`image` = 'images/items/chauve souris.png' WHERE `item`.`id` = 387;
UPDATE `item` SET `id` = 388,`image` = 'images/badges/chope.jpg' WHERE `item`.`id` = 388;
UPDATE `item` SET `id` = 389,`image` = 'images/items/chou fleur.png' WHERE `item`.`id` = 389;
UPDATE `item` SET `id` = 390,`image` = 'images/badges/chouette a deux faces.jpg' WHERE `item`.`id` = 390;
UPDATE `item` SET `id` = 391,`image` = 'images/badges/chouette.jpg' WHERE `item`.`id` = 391;
UPDATE `item` SET `id` = 392,`image` = 'images/badges/cigogne.jpg' WHERE `item`.`id` = 392;
UPDATE `item` SET `id` = 393,`image` = 'images/badges/ciseaux.jpg' WHERE `item`.`id` = 393;
UPDATE `item` SET `id` = 394,`image` = 'images/badges/cle de sol.png' WHERE `item`.`id` = 394;
UPDATE `item` SET `id` = 395,`image` = 'images/badges/cle.jpg' WHERE `item`.`id` = 395;
UPDATE `item` SET `id` = 396,`image` = 'images/badges/cochon.jpg' WHERE `item`.`id` = 396;
UPDATE `item` SET `id` = 397,`image` = 'images/badges/cocotte en papier.jpg' WHERE `item`.`id` = 397;
UPDATE `item` SET `id` = 398,`image` = 'images/badges/coq wallon.jpg' WHERE `item`.`id` = 398;
UPDATE `item` SET `id` = 399,`image` = 'images/badges/coq.jpg' WHERE `item`.`id` = 399;
UPDATE `item` SET `id` = 400,`image` = 'images/items/cor de chasse.png' WHERE `item`.`id` = 400;
UPDATE `item` SET `id` = 401,`image` = 'images/items/cornue et ballon.png' WHERE `item`.`id` = 401;
UPDATE `item` SET `id` = 402,`image` = 'images/badges/couronne argentee.jpg' WHERE `item`.`id` = 402;
UPDATE `item` SET `id` = 403,`image` = 'images/badges/couronne doree.jpg' WHERE `item`.`id` = 403;
UPDATE `item` SET `id` = 404,`image` = 'images/items/crabe.png' WHERE `item`.`id` = 404;
UPDATE `item` SET `id` = 405,`image` = 'images/items/croissant de lune.png' WHERE `item`.`id` = 405;
UPDATE `item` SET `id` = 406,`image` = 'images/items/croix de grand chambellan.png' WHERE `item`.`id` = 406;
UPDATE `item` SET `id` = 407,`image` = 'images/items/croix de grand maitre.png' WHERE `item`.`id` = 407;
UPDATE `item` SET `id` = 408,`image` = 'images/badges/croix egyptienne.jpg' WHERE `item`.`id` = 408;
UPDATE `item` SET `id` = 409,`image` = 'images/items/de a jouer.png' WHERE `item`.`id` = 409;
UPDATE `item` SET `id` = 410,`image` = 'images/badges/ecureuil.jpg' WHERE `item`.`id` = 410;
UPDATE `item` SET `id` = 411,`image` = 'images/items/epee.png' WHERE `item`.`id` = 411;
UPDATE `item` SET `id` = 412,`image` = 'images/badges/epi de ble.jpg' WHERE `item`.`id` = 412;
UPDATE `item` SET `id` = 413,`image` = 'images/badges/epi et faucille.jpg' WHERE `item`.`id` = 413;
UPDATE `item` SET `id` = 414,`image` = 'images/badges/epsilon.jpg' WHERE `item`.`id` = 414;
UPDATE `item` SET `id` = 415,`image` = 'images/badges/equerre et compas.jpg' WHERE `item`.`id` = 415;
UPDATE `item` SET `id` = 416,`image` = 'images/badges/escargot.jpg' WHERE `item`.`id` = 416;
UPDATE `item` SET `id` = 417,`image` = 'images/badges/etoile argent grande.jpg' WHERE `item`.`id` = 417;
UPDATE `item` SET `id` = 418,`image` = 'images/badges/etoile argent petite.jpg' WHERE `item`.`id` = 418;
UPDATE `item` SET `id` = 419,`image` = 'images/badges/etoile argentee belge.jpg' WHERE `item`.`id` = 419;
UPDATE `item` SET `id` = 420,`image` = 'images/badges/etoile argentee2.jpg' WHERE `item`.`id` = 420;
UPDATE `item` SET `id` = 421,`image` = 'images/badges/etoile doree belge.jpg' WHERE `item`.`id` = 421;
UPDATE `item` SET `id` = 422,`image` = 'images/badges/etoile et foudre.jpg' WHERE `item`.`id` = 422;
UPDATE `item` SET `id` = 423,`image` = 'images/badges/etoile or grande.jpg' WHERE `item`.`id` = 423;
UPDATE `item` SET `id` = 424,`image` = 'images/badges/etoile or petite.jpg' WHERE `item`.`id` = 424;
UPDATE `item` SET `id` = 425,`image` = 'images/badges/faux.jpg' WHERE `item`.`id` = 425;
UPDATE `item` SET `id` = 426,`image` = 'images/badges/fer a cheval.jpg' WHERE `item`.`id` = 426;
UPDATE `item` SET `id` = 427,`image` = 'images/items/feuille de vigne.png' WHERE `item`.`id` = 427;
UPDATE `item` SET `id` = 428,`image` = 'images/badges/flambeaux entrecroises.jpg' WHERE `item`.`id` = 428;
UPDATE `item` SET `id` = 429,`image` = 'images/items/fleche.png' WHERE `item`.`id` = 429;
UPDATE `item` SET `id` = 430,`image` = 'images/badges/fleur de lys.jpg' WHERE `item`.`id` = 430;
UPDATE `item` SET `id` = 431,`image` = 'images/badges/flying foufoune.jpg' WHERE `item`.`id` = 431;
UPDATE `item` SET `id` = 432,`image` = 'images/badges/flying penis.jpg' WHERE `item`.`id` = 432;
UPDATE `item` SET `id` = 433,`image` = 'images/badges/fourchette & epi de ble.jpg' WHERE `item`.`id` = 433;
UPDATE `item` SET `id` = 434,`image` = 'images/badges/fourchette.jpg' WHERE `item`.`id` = 434;
UPDATE `item` SET `id` = 435,`image` = 'images/badges/fourchettes croisees.jpg' WHERE `item`.`id` = 435;
UPDATE `item` SET `id` = 436,`image` = 'images/badges/gazelles.jpg' WHERE `item`.`id` = 436;
UPDATE `item` SET `id` = 437,`image` = 'images/badges/girafe.jpg' WHERE `item`.`id` = 437;
UPDATE `item` SET `id` = 438,`image` = 'images/badges/globe.jpg' WHERE `item`.`id` = 438;
UPDATE `item` SET `id` = 439,`image` = 'images/items/grappe de raisin.png' WHERE `item`.`id` = 439;
UPDATE `item` SET `id` = 440,`image` = 'images/badges/grenouille argent.jpg' WHERE `item`.`id` = 440;
UPDATE `item` SET `id` = 441,`image` = 'images/badges/grenouille or.jpg' WHERE `item`.`id` = 441;
UPDATE `item` SET `id` = 443,`image` = 'images/items/hache.png' WHERE `item`.`id` = 443;
UPDATE `item` SET `id` = 444,`image` = 'images/badges/hermine.jpg' WHERE `item`.`id` = 444;
UPDATE `item` SET `id` = 445,`image` = 'images/badges/homard.jpg' WHERE `item`.`id` = 445;
UPDATE `item` SET `id` = 446,`image` = 'images/badges/hure.jpg' WHERE `item`.`id` = 446;
UPDATE `item` SET `id` = 447,`image` = 'images/badges/kangourou.jpg' WHERE `item`.`id` = 447;
UPDATE `item` SET `id` = 448,`image` = 'images/badges/koala.jpg' WHERE `item`.`id` = 448;
UPDATE `item` SET `id` = 449,`image` = 'images/items/lime.png' WHERE `item`.`id` = 449;
UPDATE `item` SET `id` = 450,`image` = 'images/badges/lion dresse.jpg' WHERE `item`.`id` = 450;
UPDATE `item` SET `id` = 451,`image` = 'images/badges/livre ouvert et plume.jpg' WHERE `item`.`id` = 451;
UPDATE `item` SET `id` = 452,`image` = 'images/items/locomotive.png' WHERE `item`.`id` = 452;
UPDATE `item` SET `id` = 453,`image` = 'images/badges/lyre.jpg' WHERE `item`.`id` = 453;
UPDATE `item` SET `id` = 454,`image` = 'images/items/mammouth.png' WHERE `item`.`id` = 454;
UPDATE `item` SET `id` = 455,`image` = 'images/badges/marteau et maillet.jpg' WHERE `item`.`id` = 455;
UPDATE `item` SET `id` = 456,`image` = 'images/badges/molaire.jpg' WHERE `item`.`id` = 456;
UPDATE `item` SET `id` = 457,`image` = 'images/items/nounours.png' WHERE `item`.`id` = 457;
UPDATE `item` SET `id` = 458,`image` = 'images/items/orchidee.png' WHERE `item`.`id` = 458;
UPDATE `item` SET `id` = 460,`image` = 'images/items/pachyderme.png' WHERE `item`.`id` = 460;
UPDATE `item` SET `id` = 461,`image` = 'images/badges/paire de ski.jpg' WHERE `item`.`id` = 461;
UPDATE `item` SET `id` = 462,`image` = 'images/badges/palette et pinceau.jpg' WHERE `item`.`id` = 462;
UPDATE `item` SET `id` = 463,`image` = 'images/badges/palme double.jpg' WHERE `item`.`id` = 463;
UPDATE `item` SET `id` = 464,`image` = 'images/badges/palme simple grande.jpg' WHERE `item`.`id` = 464;
UPDATE `item` SET `id` = 465,`image` = 'images/badges/palmes croisees.jpg' WHERE `item`.`id` = 465;
UPDATE `item` SET `id` = 466,`image` = 'images/badges/palmier.jpg' WHERE `item`.`id` = 466;
UPDATE `item` SET `id` = 467,`image` = 'images/badges/papillon.jpg' WHERE `item`.`id` = 467;
UPDATE `item` SET `id` = 468,`image` = 'images/badges/parapluie ferme.jpg' WHERE `item`.`id` = 468;
UPDATE `item` SET `id` = 469,`image` = 'images/items/parapluie ouvert.png' WHERE `item`.`id` = 469;
UPDATE `item` SET `id` = 470,`image` = 'images/badges/pendu.jpg' WHERE `item`.`id` = 470;
UPDATE `item` SET `id` = 471,`image` = 'images/badges/pericles.jpg' WHERE `item`.`id` = 471;
UPDATE `item` SET `id` = 472,`image` = 'images/badges/perron liegeois.jpg' WHERE `item`.`id` = 472;
UPDATE `item` SET `id` = 473,`image` = 'images/badges/perroquet sur perchoir.jpg' WHERE `item`.`id` = 473;
UPDATE `item` SET `id` = 474,`image` = 'images/badges/phi.jpg' WHERE `item`.`id` = 474;
UPDATE `item` SET `id` = 475,`image` = 'images/badges/plume.jpg' WHERE `item`.`id` = 475;
UPDATE `item` SET `id` = 476,`image` = 'images/items/poireau.png' WHERE `item`.`id` = 476;
UPDATE `item` SET `id` = 477,`image` = 'images/badges/polytechnique argente.jpg' WHERE `item`.`id` = 477;
UPDATE `item` SET `id` = 478,`image` = 'images/badges/polytechnique dore.jpg' WHERE `item`.`id` = 478;
UPDATE `item` SET `id` = 479,`image` = 'images/items/potager navet.png' WHERE `item`.`id` = 479;
UPDATE `item` SET `id` = 481,`image` = 'images/badges/president.jpg' WHERE `item`.`id` = 481;
UPDATE `item` SET `id` = 482,`image` = 'images/badges/psi.jpg' WHERE `item`.`id` = 482;
UPDATE `item` SET `id` = 483,`image` = 'images/badges/raquette de tennis.jpg' WHERE `item`.`id` = 483;
UPDATE `item` SET `id` = 484,`image` = 'images/items/rose.png' WHERE `item`.`id` = 484;
UPDATE `item` SET `id` = 485,`image` = 'images/badges/sabot.jpg' WHERE `item`.`id` = 485;
UPDATE `item` SET `id` = 486,`image` = 'images/badges/sanglier.jpg' WHERE `item`.`id` = 486;
UPDATE `item` SET `id` = 487,`image` = 'images/badges/secretaire.jpg' WHERE `item`.`id` = 487;
UPDATE `item` SET `id` = 488,`image` = 'images/badges/singe du grand garde.jpg' WHERE `item`.`id` = 488;
UPDATE `item` SET `id` = 489,`image` = 'images/items/singe.png' WHERE `item`.`id` = 489;
UPDATE `item` SET `id` = 490,`image` = 'images/items/soleil.png' WHERE `item`.`id` = 490;
UPDATE `item` SET `id` = 491,`image` = 'images/badges/solvay.jpg' WHERE `item`.`id` = 491;
UPDATE `item` SET `id` = 492,`image` = 'images/badges/sou troue.jpg' WHERE `item`.`id` = 492;
UPDATE `item` SET `id` = 493,`image` = 'images/badges/sphinx.jpg' WHERE `item`.`id` = 493;
UPDATE `item` SET `id` = 494,`image` = 'images/badges/squelette.jpg' WHERE `item`.`id` = 494;
UPDATE `item` SET `id` = 495,`image` = 'images/badges/tambour.jpg' WHERE `item`.`id` = 495;
UPDATE `item` SET `id` = 496,`image` = 'images/badges/taste vin.jpg' WHERE `item`.`id` = 496;
UPDATE `item` SET `id` = 497,`image` = 'images/badges/telephone.jpg' WHERE `item`.`id` = 497;
UPDATE `item` SET `id` = 498,`image` = 'images/badges/tete d''indien.jpg' WHERE `item`.`id` = 498;
UPDATE `item` SET `id` = 499,`image` = 'images/badges/tete de cheval.jpg' WHERE `item`.`id` = 499;
UPDATE `item` SET `id` = 500,`image` = 'images/badges/tete de loup vue de face.jpg' WHERE `item`.`id` = 500;
UPDATE `item` SET `id` = 501,`image` = 'images/badges/tete de loup vue de profil.jpg' WHERE `item`.`id` = 501;
UPDATE `item` SET `id` = 502,`image` = 'images/badges/tete de mort sur femurs.jpg' WHERE `item`.`id` = 502;
UPDATE `item` SET `id` = 503,`image` = 'images/badges/tete de mort.jpg' WHERE `item`.`id` = 503;
UPDATE `item` SET `id` = 504,`image` = 'images/badges/tete de vache.jpg' WHERE `item`.`id` = 504;
UPDATE `item` SET `id` = 505,`image` = 'images/items/tomate.png' WHERE `item`.`id` = 505;
UPDATE `item` SET `id` = 506,`image` = 'images/badges/tore.jpg' WHERE `item`.`id` = 506;
UPDATE `item` SET `id` = 507,`image` = 'images/badges/tortue or.jpg' WHERE `item`.`id` = 507;
UPDATE `item` SET `id` = 508,`image` = 'images/badges/trefle a 4 feuilles.jpg' WHERE `item`.`id` = 508;
UPDATE `item` SET `id` = 509,`image` = 'images/badges/tresorier.jpg' WHERE `item`.`id` = 509;
UPDATE `item` SET `id` = 510,`image` = 'images/badges/valise.jpg' WHERE `item`.`id` = 510;
UPDATE `item` SET `id` = 511,`image` = 'images/badges/vice president.jpg' WHERE `item`.`id` = 511;
UPDATE `item` SET `id` = 512,`image` = 'images/badges/voilier.jpg' WHERE `item`.`id` = 512;
UPDATE `item` SET `id` = 513,`image` = 'images/badges/volant.jpg' WHERE `item`.`id` = 513;
UPDATE `item` SET `id` = 514,`image` = 'images/badges/zodiaque balance.jpg' WHERE `item`.`id` = 514;
UPDATE `item` SET `id` = 515,`image` = 'images/badges/zodiaque belier.jpg' WHERE `item`.`id` = 515;
UPDATE `item` SET `id` = 516,`image` = 'images/badges/zodiaque capricorne.jpg' WHERE `item`.`id` = 516;
UPDATE `item` SET `id` = 517,`image` = 'images/badges/zodiaque gemeaux.jpg' WHERE `item`.`id` = 517;
UPDATE `item` SET `id` = 518,`image` = 'images/badges/zodiaque lion.jpg' WHERE `item`.`id` = 518;
UPDATE `item` SET `id` = 519,`image` = 'images/badges/zodiaque poisson.jpg' WHERE `item`.`id` = 519;
UPDATE `item` SET `id` = 520,`image` = 'images/badges/zodiaque sagittaire.jpg' WHERE `item`.`id` = 520;
UPDATE `item` SET `id` = 521,`image` = 'images/badges/zodiaque scorpion.jpg' WHERE `item`.`id` = 521;
UPDATE `item` SET `id` = 522,`image` = 'images/badges/zodiaque taureau.jpg' WHERE `item`.`id` = 522;
UPDATE `item` SET `id` = 523,`image` = 'images/badges/zodiaque vierge.jpg' WHERE `item`.`id` = 523;
UPDATE `item` SET `id` = 524,`image` = 'images/items/pin-s-exigeons-la-dignité.png' WHERE `item`.`id` = 524;
UPDATE `item` SET `id` = 525,`image` = 'images/items/condom.png' WHERE `item`.`id` = 525;
UPDATE `item` SET `id` = 526,`image` = 'images/items/vin rouge.png' WHERE `item`.`id` = 526;
UPDATE `item` SET `id` = 527,`image` = 'images/items/51.png' WHERE `item`.`id` = 527;
UPDATE `item` SET `id` = 528,`image` = 'images/items/reblochon.png' WHERE `item`.`id` = 528;
UPDATE `item` SET `id` = 533,`image` = 'images/items/saucisson.png' WHERE `item`.`id` = 533;
UPDATE `item` SET `id` = 534,`image` = 'images/items/cle de fa.png' WHERE `item`.`id` = 534;
UPDATE `item` SET `id` = 535,`image` = 'images/items/panda.png' WHERE `item`.`id` = 535;
UPDATE `item` SET `id` = 536,`image` = 'images/items/evian.png' WHERE `item`.`id` = 536;
UPDATE `item` SET `id` = 539,`image` = 'images/items/bambou.png' WHERE `item`.`id` = 539;
UPDATE `item` SET `id` = 540,`image` = 'images/items/book.png' WHERE `item`.`id` = 540;
UPDATE `item` SET `id` = 541,`image` = 'images/items/tardis.png' WHERE `item`.`id` = 541;
UPDATE `item` SET `id` = 542,`image` = 'images/items/pins_fal.png' WHERE `item`.`id` = 542;
UPDATE `item` SET `id` = 543,`image` = 'images/items/eco cup.png' WHERE `item`.`id` = 543;
UPDATE `item` SET `id` = 544,`image` = 'images/items/cotes de porc.png' WHERE `item`.`id` = 544;
UPDATE `item` SET `id` = 545,`image` = 'images/items/macedoine de legumes.png' WHERE `item`.`id` = 545;
UPDATE `item` SET `id` = 546,`image` = 'images/items/salade de fruits.png' WHERE `item`.`id` = 546;
UPDATE `item` SET `id` = 547,`image` = 'images/items/salade de riz.png' WHERE `item`.`id` = 547;
UPDATE `item` SET `id` = 548,`image` = 'images/items/salade.png' WHERE `item`.`id` = 548;
UPDATE `item` SET `id` = 549,`image` = 'images/items/saucisse.png' WHERE `item`.`id` = 549;
UPDATE `item` SET `id` = 550,`image` = 'images/items/soupe a l oignon.png' WHERE `item`.`id` = 550;
UPDATE `item` SET `id` = 551,`image` = 'images/items/verre de biere.png' WHERE `item`.`id` = 551;
UPDATE `item` SET `id` = 552,`image` = 'images/items/verre de vin.png' WHERE `item`.`id` = 552;
UPDATE `item` SET `id` = 553,`image` = 'images/items/bebe.png' WHERE `item`.`id` = 553;
UPDATE `item` SET `id` = 554,`image` = 'images/items/cactus.png' WHERE `item`.`id` = 554;
UPDATE `item` SET `id` = 555,`image` = 'images/items/cat.png' WHERE `item`.`id` = 555;
UPDATE `item` SET `id` = 556,`image` = 'images/items/cle de fa argent.png' WHERE `item`.`id` = 556;
UPDATE `item` SET `id` = 557,`image` = 'images/items/etoiles de mer.png' WHERE `item`.`id` = 557;
UPDATE `item` SET `id` = 558,`image` = 'images/items/hippo.png' WHERE `item`.`id` = 558;
UPDATE `item` SET `id` = 559,`image` = 'images/items/icter.png' WHERE `item`.`id` = 559;
UPDATE `item` SET `id` = 560,`image` = 'images/items/langue.png' WHERE `item`.`id` = 560;
UPDATE `item` SET `id` = 561,`image` = 'images/items/levrette.png' WHERE `item`.`id` = 561;
UPDATE `item` SET `id` = 562,`image` = 'images/items/licorne.png' WHERE `item`.`id` = 562;
UPDATE `item` SET `id` = 563,`image` = 'images/items/loutre.png' WHERE `item`.`id` = 563;
UPDATE `item` SET `id` = 564,`image` = 'images/items/ornithorynque.png' WHERE `item`.`id` = 564;
UPDATE `item` SET `id` = 565,`image` = 'images/items/pelle mecanique.png' WHERE `item`.`id` = 565;
UPDATE `item` SET `id` = 566,`image` = 'images/items/pelle.png' WHERE `item`.`id` = 566;
UPDATE `item` SET `id` = 568,`image` = 'images/items/pins panda.png' WHERE `item`.`id` = 568;
UPDATE `item` SET `id` = 569,`image` = 'images/items/platypus.png' WHERE `item`.`id` = 569;
UPDATE `item` SET `id` = 570,`image` = 'images/items/rateau.png' WHERE `item`.`id` = 570;
UPDATE `item` SET `id` = 571,`image` = 'images/items/robinet.png' WHERE `item`.`id` = 571;
UPDATE `item` SET `id` = 572,`image` = 'images/items/shooter vert.png' WHERE `item`.`id` = 572;
UPDATE `item` SET `id` = 573,`image` = 'images/items/tetine.png' WHERE `item`.`id` = 573;
UPDATE `item` SET `id` = 574,`image` = 'images/items/tnt.png' WHERE `item`.`id` = 574;
UPDATE `item` SET `id` = 575,`image` = 'images/items/panthere.png' WHERE `item`.`id` = 575;
UPDATE `item` SET `id` = 576,`image` = 'images/items/rose plamplemouse.png' WHERE `item`.`id` = 576;

