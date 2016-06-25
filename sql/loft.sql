/*
Navicat MySQL Data Transfer

Source Server         : main_connect
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : loft

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-06-25 19:27:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '40', '5', '1');
INSERT INTO `cart` VALUES ('2', '40', '68', '1');

-- ----------------------------
-- Table structure for category_products
-- ----------------------------
DROP TABLE IF EXISTS `category_products`;
CREATE TABLE `category_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_products
-- ----------------------------
INSERT INTO `category_products` VALUES ('1', 'Ноутбуки');
INSERT INTO `category_products` VALUES ('2', 'Планшеты');
INSERT INTO `category_products` VALUES ('3', 'Компьютеры');
INSERT INTO `category_products` VALUES ('4', 'Электронные книги');
INSERT INTO `category_products` VALUES ('5', 'Видеокамеры');
INSERT INTO `category_products` VALUES ('6', 'Программное обеспечение');
INSERT INTO `category_products` VALUES ('7', 'Радиотелефоны');
INSERT INTO `category_products` VALUES ('8', 'Игры');
INSERT INTO `category_products` VALUES ('9', 'Фотоаппараты');
INSERT INTO `category_products` VALUES ('10', 'Samrt TV');

-- ----------------------------
-- Table structure for managers
-- ----------------------------
DROP TABLE IF EXISTS `managers`;
CREATE TABLE `managers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `town` varchar(50) NOT NULL,
  `icq` int(11) unsigned NOT NULL,
  `tel` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of managers
-- ----------------------------
INSERT INTO `managers` VALUES ('1', 'Иван', 'Иванов', '/images/content/manager.png', 'Ивановск', '4294967295', '8 (499) 123-45-67');
INSERT INTO `managers` VALUES ('2', 'Петр', 'Петрович', '/images/content/manger2.png', 'Петровск', '4294967295', '8 (499) 123-45-67');
INSERT INTO `managers` VALUES ('3', 'Николай', 'Николаев', '/images/content/manager3.jpg', 'Николаев', '1231231231', '8 (499) 123-45-67');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'В ожидании',
  `date_order` date NOT NULL,
  `payment_methot` varchar(100) NOT NULL,
  `delivery_service` varchar(100) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for order_products
-- ----------------------------
DROP TABLE IF EXISTS `order_products`;
CREATE TABLE `order_products` (
  `id_order` int(10) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_products
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `mark` varchar(50) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text,
  `id_catalog` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_catalog` (`id_catalog`),
  KEY `price` (`price`),
  FULLTEXT KEY `mark` (`mark`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('82', 'LG 47LB720V', '/images/products/smart_tv/record_148893332.jpg', 'LG', '9', '20499', 'Диагональ экрана: 47\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\nЧастота развертки панели: 200 Гц\nЧастота обновления: 800 Гц (MCI)\nWi-Fi: Да\n\"', '10');
INSERT INTO `products` VALUES ('81', 'LG 42LB582V', '/images/products/smart_tv/record_92805984.jpg', 'LG', '5', '12499', 'Диагональ экрана: 42\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2, DVB-T\nЧастота развертки панели: 50 Гц\nЧастота обновления: 100 Гц (MCI)\nWi-Fi: Да\n\"', '10');
INSERT INTO `products` VALUES ('80', 'LG 22LB491U', '/images/products/smart_tv/record_157102597.jpg', 'LG', '43', '5499', 'Диагональ экрана: 22\"\nРазрешение: 1366x768\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\nЧастота развертки панели: 50 Гц\nЧастота обновления: 100 Гц (MCI)\n\nWi-Fi: Да\n\"', '10');
INSERT INTO `products` VALUES ('79', 'LG 32LB582V', '/images/products/smart_tv/record_90085904.jpg', 'LG', '3', '9299', 'иагональ экрана: 32\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\nЧастота развертки панели: 50 Гц\nЧастота обновления: 100 Гц (MCI)\nWi-Fi: Да\n\"', '10');
INSERT INTO `products` VALUES ('78', 'LG 22LB491U', '', 'LG', '43', '5499', 'Диагональ экрана: 22\"\nРазрешение: 1366x768\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\nЧастота развертки панели: 50 Гц\nЧастота обновления: 100 Гц (MCI)\nWi-Fi: Да\n', '10');
INSERT INTO `products` VALUES ('77', 'LG 32LB582V', '/images/products/smart_tv/record_92805984.jpg', 'LG', '3', '9299', 'иагональ экрана: 32\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\nЧастота развертки панели: 50 Гц\nЧастота обновления: 100 Гц (MCI)\nWi-Fi: Да\n\"', '10');
INSERT INTO `products` VALUES ('76', 'Sony Alpha 6000 Kit 16-50mm Black', '/images/products/foto/record_89613119.jpg', 'Sony', '7', '1749', 'Матрица 23.5 x 15.6 мм, 24.3 Мп / Объектив Sony E PZ 16-50 mm F3.5-5.6 OSS / поддержка карт памяти MS PRO Duo/MS PRO-HG Duo/MS XC-HG Duo/SD/SDHC/SDXC / наклонный ЖК-дисплей 3\" / Full HD-видео / Wi-Fi / NFC / питание от литий-ионного аккумулятора / 120 x 75 x 66.9 мм, 460 г / черный\n\"', '9');
INSERT INTO `products` VALUES ('75', 'Canon EOS 700D 18-55mm STM', '/images/products/foto/canon_eos_700d_18_55_stm_official_warranty_8539757.jpg', 'Canon', '4', '14799', 'атрица 22.3 x 14.9 мм, 18 Мп / объектив 18-55 IS STM / поддержка карт памяти SD/SDHC/SDXC / Сенсорный ЖК-экран с переменным углом наклона Clear View II TFT 3\" / FullHD-видео / питание от литий-ионного аккумулятора / 133.1 x 99.8 x 154.0 мм, 785 г\n\"', '9');
INSERT INTO `products` VALUES ('74', 'Sony Alpha 6000 Kit 16-50mm Black', '/images/products/foto/canon_eos_700d_18_55_stm_official_warranty_8539757.jpg', 'Sony', '7', '1749', 'Матрица 23.5 x 15.6 мм, 24.3 Мп / Объектив Sony E PZ 16-50 mm F3.5-5.6 OSS / поддержка карт памяти MS PRO Duo/MS PRO-HG Duo/MS XC-HG Duo/SD/SDHC/SDXC / наклонный ЖК-дисплей 3\" / Full HD-видео / Wi-Fi / NFC / питание от литий-ионного аккумулятора / 120 x 75 x 66.9 мм, 460 г / черный\n\"', '9');
INSERT INTO `products` VALUES ('73', 'Canon EOS 700D 18-55mm STM ', '/images/products/foto/canon_eos_700d_18_55_stm_official_warranty_8539757.jpg', 'Canon', '4', '14799', 'атрица 22.3 x 14.9 мм, 18 Мп / объектив 18-55 IS STM / поддержка карт памяти SD/SDHC/SDXC / Сенсорный ЖК-экран с переменным углом наклона Clear View II TFT 3\" / FullHD-видео / питание от литий-ионного аккумулятора / 133.1 x 99.8 x 154.0 мм, 785 г\n', '9');
INSERT INTO `products` VALUES ('72', 'Canon EOS 700D 18-55mm DC III ', '', 'Canon', '32', '11999', 'атрица 22.3 x 14.9 мм, 18 Мп / объектив 18-55DC III / поддержка карт памяти SD/SDHC/SDXC / Сенсорный ЖК-экран с переменным углом наклона Clear View II TFT 3\" / FullHD-видео / питание от литий-ионного аккумулятора / 133.1 x 99.8 x 154.0 мм, 785 г\n', '9');
INSERT INTO `products` VALUES ('71', 'Canon PowerShot SX400 IS Black \n', '/images/products/foto/record_189578172.jpg', 'Canon', '43', '3699', 'Матрица 1/2.3\", 16 Мп / Зум: 30х (оптический), 4х (цифровой) / поддержка карт памяти SD, SDHC, SDXC / LCD-дисплей 3\" / HD-видео / питание от литий-ионнного аккумулятора / 104.4 x 69.1 x 80.1 мм, 313 г / черный', '9');
INSERT INTO `products` VALUES ('70', 'Canon EOS 700D 18-55mm DC III ', '', 'Canon', '32', '11999', 'атрица 22.3 x 14.9 мм, 18 Мп / объектив 18-55DC III / поддержка карт памяти SD/SDHC/SDXC / Сенсорный ЖК-экран с переменным углом наклона Clear View II TFT 3\" / FullHD-видео / питание от литий-ионного аккумулятора / 133.1 x 99.8 x 154.0 мм, 785 г\n', '9');
INSERT INTO `products` VALUES ('69', 'Canon PowerShot SX400 IS Black \n', '', 'Canon', '43', '3699', 'Матрица 1/2.3\", 16 Мп / Зум: 30х (оптический), 4х (цифровой) / поддержка карт памяти SD, SDHC, SDXC / LCD-дисплей 3\" / HD-видео / питание от литий-ионнного аккумулятора / 104.4 x 69.1 x 80.1 мм, 313 г / черный', '9');
INSERT INTO `products` VALUES ('68', 'tarCraft II: Heart of the Swarm (дополнение) (PC, Jewel, русская версия)', '/images/products/games/record_417873372.jpg', 'Blizzard', '34', '450', 'В Heart of the Swarm получает продолжение сюжетная линия StarCraft II: Wings of Liberty. Сара Керриган решила возродить Рой и отомстить Арктуру Менгску. На протяжении сюжетной кампании игрокам предстоит следовать за Керриган через всю галактику в поисках необычных разновидностей зергов, которые могут пополнить ее войско.', '8');
INSERT INTO `products` VALUES ('67', 'StarCraft II: Wings of Liberty (PC, Jewel, русская версия)', '/images/products/games/record_417873372.jpg', 'Blizzard', '54', '445', 'Продолжение эпической научно-фантастической саги о трех могущественных расах — протоссах, терранах и зергах — им предстоит снова сойтись в бою.', '8');
INSERT INTO `products` VALUES ('66', 'tarCraft II: Heart of the Swarm (дополнение) (PC, Jewel, русская версия)', '/images/products/games/record_417873372.jpg', 'Blizzard', '34', '450', 'В Heart of the Swarm получает продолжение сюжетная линия StarCraft II: Wings of Liberty. Сара Керриган решила возродить Рой и отомстить Арктуру Менгску. На протяжении сюжетной кампании игрокам предстоит следовать за Керриган через всю галактику в поисках необычных разновидностей зергов, которые могут пополнить ее войско.', '8');
INSERT INTO `products` VALUES ('65', 'StarCraft II: Wings of Liberty (PC, Jewel, русская версия)', '/images/products/games/record_417873372.jpg', 'Blizzard', '54', '445', 'Продолжение эпической научно-фантастической саги о трех могущественных расах — протоссах, терранах и зергах — им предстоит снова сойтись в бою.', '8');
INSERT INTO `products` VALUES ('64', 'The Elder Scrolls Online (PC, английская версия)\n', '/images/products/games/record_77240039.jpg', 'Valve', '43', '799', 'первые за свою двадцатилетнюю историю знаменитая фэнтезийная ролевая игра The Elder Scrolls выходит в онлайн. Отправляйтесь в грандиозное путешествие в одиночку или вместе с друзьями, собратьями по гильдиям и тысячами союзников. К вашим услугам богатства Тамриэля, тайны Морровинда, необъятные каменные джунгли Даггерфолла и многое другое. Впишите свое имя на скрижали истории и вступайте в грандиозные битвы между игроками, ведь в них решается судьба целого мира.', '8');
INSERT INTO `products` VALUES ('63', 'World of Warcraft: Карта оплаты игрового времени (60 дней) (русская версия)\n\n', '/images/products/games/record_416227517.jpg', 'Blizzard', '4', '399', 'Карта оплаты игрового времени позволяет продлить время игры на 60 дней.\n', '8');
INSERT INTO `products` VALUES ('61', 'World of Warcraft: Карта оплаты игрового времени (60 дней) (русская версия)\n', '/images/products/games/record_416227517.jpg', 'Blizzard', '4', '399', 'Карта оплаты игрового времени позволяет продлить время игры на 60 дней.\n', '8');
INSERT INTO `products` VALUES ('62', 'The Elder Scrolls Online (PC, английская версия)\n', '/images/products/games/record_77240039.jpg', 'Valve', '43', '799', 'первые за свою двадцатилетнюю историю знаменитая фэнтезийная ролевая игра The Elder Scrolls выходит в онлайн. Отправляйтесь в грандиозное путешествие в одиночку или вместе с друзьями, собратьями по гильдиям и тысячами союзников. К вашим услугам богатства Тамриэля, тайны Морровинда, необъятные каменные джунгли Даггерфолла и многое другое. Впишите свое имя на скрижали истории и вступайте в грандиозные битвы между игроками, ведь в них решается судьба целого мира.', '8');
INSERT INTO `products` VALUES ('60', 'World of Warcraft: Warlords of Draenor', '/images/products/games/record_180372132.jpg', 'Blizzard', '3', '599', 'Идет эра старой Орды, закаленной железом, а не кровью демонов. Тяжелая поступь союза великих орочьих кланов и грохота ужасающих боевых машин сотрясает Дренор. Скоро падет Азерот. А за ним – тысячи других миров…\r\n\"\"', '8');
INSERT INTO `products` VALUES ('59', 'Heroes of the Storm (PC, Jewel, Русская версия)\n', '/images/products/games/record_586573892.jpg', 'Blizzard', '6', '459', 'Heroes of the Storm – потрясающе динамичная командная игра, в которой вы сможете встретить своих любимых персонажей из игр Blizzard. \nВыберите способности и облик героев и разработайте свою уникальную игровую тактику. Объединитесь с друзьями и примите участие в стремительных битвах.\nИ помните: от выбора поля боя будет напрямую зависеть стратегия и стиль игры!\n', '8');
INSERT INTO `products` VALUES ('58', 'World of Warcraft: Warlords of Draenor', '/images/products/games/record_180372132.jpg', 'Blizzard', '3', '599', 'Идет эра старой Орды, закаленной железом, а не кровью демонов. Тяжелая поступь союза великих орочьих кланов и грохота ужасающих боевых машин сотрясает Дренор. Скоро падет Азерот. А за ним – тысячи других миров…\r\n\"\"', '8');
INSERT INTO `products` VALUES ('55', 'Panasonic KX-TG2511UAM Metallic\n', '/images/products/radio_phone/2059845.jpg', 'Panasonic', '7', '769', 'Тип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный, голубая ', '7');
INSERT INTO `products` VALUES ('56', 'Panasonic KX-TG2512UAT Titan', '', 'Panasonic', '5', '1199', 'Тип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный, голубая ', '7');
INSERT INTO `products` VALUES ('57', 'Heroes of the Storm (PC, Jewel, Русская версия)\n', '', 'Blizzard', '6', '459', 'Heroes of the Storm – потрясающе динамичная командная игра, в которой вы сможете встретить своих любимых персонажей из игр Blizzard. \nВыберите способности и облик героев и разработайте свою уникальную игровую тактику. Объединитесь с друзьями и примите участие в стремительных битвах.\nИ помните: от выбора поля боя будет напрямую зависеть стратегия и стиль игры!\n', '8');
INSERT INTO `products` VALUES ('54', 'Panasonic KX-TG2512UAT Titan', '/images/products/radio_phone/2059845.jpg', 'Panasonic', '5', '1199', 'Тип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный, голубая ', '7');
INSERT INTO `products` VALUES ('51', 'Panasonic KX-TG6461UAT Titan', '/images/products/radio_phone/record_416102672.jpg', 'Panasonic', '6', '2099', 'ип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: 20 мин\nЖК-дисплей: Монохромный, с подсветкой\n', '7');
INSERT INTO `products` VALUES ('52', 'Gigaset A120 Black', '/images/products/radio_phone/record_417178982.jpg', 'Gigaset', '65', '559', 'ип трубки: Беспроводной\nОпределение номера: Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный с оранжевой ', '7');
INSERT INTO `products` VALUES ('53', 'Panasonic KX-TG2511UAM Metallic\n', '', 'Panasonic', '7', '769', 'Тип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный, голубая ', '7');
INSERT INTO `products` VALUES ('49', 'Panasonic KX-TG6461UAT Titan', '', 'Panasonic', '6', '2099', 'ип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: 20 мин\nЖК-дисплей: Монохромный, с подсветкой\n', '7');
INSERT INTO `products` VALUES ('50', 'Gigaset A120 Black', '', 'Gigaset', '65', '559', 'ип трубки: Беспроводной\nОпределение номера: Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный с оранжевой ', '7');
INSERT INTO `products` VALUES ('48', 'Panasonic KX-TG2511UAT Titan', '/images/products/radio_phone/record_416237047.jpg', 'Panasonic', '65', '769', 'Тип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный, голубая подсветка\n', '7');
INSERT INTO `products` VALUES ('46', 'Panasonic KX-TG2511UAT Titan', '', 'Panasonic', '65', '769', 'Тип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный, голубая подсветка\n', '7');
INSERT INTO `products` VALUES ('47', 'Panasonic KX-TG1711UAB Black', '', 'Panasonic', '54', '699', 'ип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный с голубой подсветкой\n', '7');
INSERT INTO `products` VALUES ('45', 'Panasonic KX-TG1711UAB Black', '', 'Panasonic', '54', '699', 'ип трубки: Беспроводной\nОпределение номера: АОН + Caller ID\nАвтоответчик: Нет\nЖК-дисплей: Монохромный с голубой подсветкой\n', '7');
INSERT INTO `products` VALUES ('44', 'Microsoft Office для дома и бизнеса 2013 32/ 64 Russian \n', '/images/products/soft/record_872629947.jpg', 'Microsoft', '43', '4839', 'В пакет входят следующие программы:\n\nMicrosoft Office Word 2013\nMicrosoft Office Excel 2013\nMicrosoft Office PowerPoint 2013\nMicrosoft Office Outlook 2013\nMicrosoft Office OneNote 2013\n\nОдна лицензия, допускается установка на 1 ПК.\n', '6');
INSERT INTO `products` VALUES ('43', 'Microsoft Office 365 для дома 32/ 64 Russian Subscr 1YR Medialess BOX ', '/images/products/soft/record_872629947.jpg', 'Microsoft', '56', '1399', '    Подписка 1 год\n·        5 пользователей х 3 устройства (PC/Mac+iPad+смартфон)\n·        Полный пакет программ Office\n·        1 ТБ хранилища OneDrive (каждый пользователь)\n·        60 мин. ежемесячных международных звонков Skype (1 пользователь)\nДля некоммерческого использования\n', '6');
INSERT INTO `products` VALUES ('42', 'Microsoft Office для дома и бизнеса 2013 32/ 64 Russian \n', '/images/products/soft/record_872629947.jpg', 'Microsoft', '43', '4839', 'В пакет входят следующие программы:\n\nMicrosoft Office Word 2013\nMicrosoft Office Excel 2013\nMicrosoft Office PowerPoint 2013\nMicrosoft Office Outlook 2013\nMicrosoft Office OneNote 2013\n\nОдна лицензия, допускается установка на 1 ПК.\n', '6');
INSERT INTO `products` VALUES ('41', 'Microsoft Office 365 для дома 32/ 64 Russian Subscr 1YR Medialess BOX ', '/images/products/soft/record_872629947.jpg', 'Microsoft', '56', '1399', '    Подписка 1 год\n·        5 пользователей х 3 устройства (PC/Mac+iPad+смартфон)\n·        Полный пакет программ Office\n·        1 ТБ хранилища OneDrive (каждый пользователь)\n·        60 мин. ежемесячных международных звонков Skype (1 пользователь)\nДля некоммерческого использования\n', '6');
INSERT INTO `products` VALUES ('40', 'Microsoft Windows 7 Home Premium Russian VUP DVD Family Pack BOX\n', '/images/products/soft/record_413182557.jpg', 'Microsoft', '5', '3625', 'нимание! Данная коробка включает только лицензии на ОБНОВЛЕНИЕ с Windows Vista/Windows XP до Windows 7. Продукт не предназначен для легализации ОС или установки на новый ПК !\nСпециальное предложение для всей семьи: три лицензии Windows 7 Домашняя расширенная по привлекательной цене\n', '6');
INSERT INTO `products` VALUES ('39', 'Windows 7 SP1 Professional 64-bit Russian 1pk OEM DVD \n', '/images/products/soft/record_413182557.jpg', 'Microsoft', '4', '3455', 'Windows 7 Professional позволяет устранить преграды на пути к успеху. Windows 7 Профессиональная обеспечивает запуск многих программ для Windows XP в режиме Windows XP и быстро восстанавливает данные с помощью автоматических архиваций в домашней или корпоративной сети.\n', '6');
INSERT INTO `products` VALUES ('38', 'Microsoft Windows 7 Home Premium Russian VUP DVD Family Pack BOX\n', '/images/products/soft/record_416087897.png', 'Microsoft', '5', '3625', 'нимание! Данная коробка включает только лицензии на ОБНОВЛЕНИЕ с Windows Vista/Windows XP до Windows 7. Продукт не предназначен для легализации ОС или установки на новый ПК !\nСпециальное предложение для всей семьи: три лицензии Windows 7 Домашняя расширенная по привлекательной цене\n', '6');
INSERT INTO `products` VALUES ('37', 'Windows 7 SP1 Professional 64-bit Russian 1pk OEM DVD \n', '', 'Microsoft', '4', '3455', 'Windows 7 Professional позволяет устранить преграды на пути к успеху. Windows 7 Профессиональная обеспечивает запуск многих программ для Windows XP в режиме Windows XP и быстро восстанавливает данные с помощью автоматических архиваций в домашней или корпоративной сети.\n', '6');
INSERT INTO `products` VALUES ('36', 'Windows LE 8.1 32-bit/64-bit All Lng PK Lic Online DwnLd NR\n', '', 'Microsoft', '3', '2699', 'Windows 8.1 — усовершенствованная и построенная на базе Windows 8. В центре внимания остаются приложения, они поддерживают новые способы взаимодействия с системой и дают пользователям более широкие возможности погружения в содержимое.\nПолная электронная лицензия ESD на 1 пользователя\n', '6');
INSERT INTO `products` VALUES ('35', 'Windows 8.1 Professional 64-bit Russian 1 License 1pk OEM DVD \n', '/images/products/soft/record_23151150.jpg', 'Microsoft', '5', '3529', 'Windows 8.1 Professional 64-bit Russian — усовершенствованная и построенная на базе Windows 8. В центре внимания остаются приложения, они поддерживают новые способы взаимодействия с системой и дают пользователям более широкие возможности погружения в содержимое.', '6');
INSERT INTO `products` VALUES ('33', 'Windows 8.1 Professional 64-bit Russian 1 License 1pk OEM DVD \n', '/images/products/soft/record_23151150.jpg', 'Microsoft', '5', '3529', 'Windows 8.1 Professional 64-bit Russian — усовершенствованная и построенная на базе Windows 8. В центре внимания остаются приложения, они поддерживают новые способы взаимодействия с системой и дают пользователям более широкие возможности погружения в содержимое.', '6');
INSERT INTO `products` VALUES ('34', 'Windows LE 8.1 32-bit/64-bit All Lng PK Lic Online DwnLd NR\n', '', 'Microsoft', '3', '2699', 'Windows 8.1 — усовершенствованная и построенная на базе Windows 8. В центре внимания остаются приложения, они поддерживают новые способы взаимодействия с системой и дают пользователям более широкие возможности погружения в содержимое.\nПолная электронная лицензия ESD на 1 пользователя\n', '6');
INSERT INTO `products` VALUES ('32', 'Sony HDR-AS200V', '/images/products/video_camera/record_738960563.jpg', 'Sony', '8', '8999', 'Матрица (светочувствительный элемент): 1/2.3” (7.76 мм) матрица Exmor R CMOS с обратной засветкой Число пикселей: 8.8 Мп\nТип носителя: Flash память\nРазрешение видео: Full HD (1920x1080)\n', '5');
INSERT INTO `products` VALUES ('30', 'Panasonic HC-V530EE', '/images/products/video_camera/record_143998713.jpg', 'Panasonic', '4', '6799', 'Матрица (светочувствительный элемент): 1/5.8’’ MOП-матрица BSI\nОбщее количество пикселей: 2.51 Мп\nЭффективное число пикселей: 2.2 Мп [16:9]\nТип носителя: Flash память\nРазрешение видео: Full HD (1920x1080)\nЗум: Оптический зум: 50x\nИнтеллектуальный зум: 90x\nЦифровой зум: 150х / 3000x (максимальное значение увеличения)\n', '5');
INSERT INTO `products` VALUES ('31', 'GoPro HERO3+ Silver Edition ', '/images/products/video_camera/record_14357744.jpg', 'GoPro', '5', '8099', 'Матрица (светочувствительный элемент): 10 Мпикс, CMOS\nТип носителя: Flash память\nРазрешение видео: Full HD (1920x1080)\n', '5');
INSERT INTO `products` VALUES ('29', 'GoPro HERO3+ Silver Edition ', '/images/products/video_camera/record_14357744.jpg', 'GoPro', '5', '8099', 'Матрица (светочувствительный элемент): 10 Мпикс, CMOS\nТип носителя: Flash память\nРазрешение видео: Full HD (1920x1080)\n', '5');
INSERT INTO `products` VALUES ('28', 'Panasonic HC-V530EE', '', 'Panasonic', '4', '6799', 'Матрица (светочувствительный элемент): 1/5.8’’ MOП-матрица BSI\nОбщее количество пикселей: 2.51 Мп\nЭффективное число пикселей: 2.2 Мп [16:9]\nТип носителя: Flash память\nРазрешение видео: Full HD (1920x1080)\nЗум: Оптический зум: 50x\nИнтеллектуальный зум: 90x\nЦифровой зум: 150х / 3000x (максимальное значение увеличения)\n', '5');
INSERT INTO `products` VALUES ('27', 'Sony HDR-CX405B Black ', '', 'Sony', '6', '8999', 'Матрица (светочувствительный элемент): 1/5.8\" (3.1 мм) Exmor R CMOS с обратной засветкой\nТип носителя: Flash память\nРазрешение видео: Full HD (1920x1080)\nЗум: Оптический - 30x\nЦифровой - 350x\n', '5');
INSERT INTO `products` VALUES ('25', 'Sony HDR-CX405B Black ', '/images/products/video_camera/record_398744132.png', 'Sony', '6', '8999', 'Матрица (светочувствительный элемент): 1/5.8\" (3.1 мм) Exmor R CMOS с обратной засветкой\nТип носителя: Flash память\nРазрешение видео: Full HD (1920x1080)\nЗум: Оптический - 30x\nЦифровой - 350x\n', '5');
INSERT INTO `products` VALUES ('26', 'GoPro HERO4 Black Standard Edition', '', 'GoPro', '11', '13699', 'Матрица (светочувствительный элемент): 12 Мп, CMOS\nТип носителя: Flash память\nРазрешение видео: 4K (3840x2160)\n', '5');
INSERT INTO `products` VALUES ('23', 'Texet TB-166', '', 'Texet', '43', '3089', 'Диагональ дисплея: 6\"\nРазрешение: 800х600\nТип матрицы: E Ink Pearl\nКоличество градаций серого: 16\nВстроенная память: 4 ГБ\nВес: 226 г\n', '4');
INSERT INTO `products` VALUES ('24', 'GoPro HERO4 Black Standard Edition', '/images/products/video_camera/record_188208757.jpg', 'GoPro', '11', '13699', 'Матрица (светочувствительный элемент): 12 Мп, CMOS\nТип носителя: Flash память\nРазрешение видео: 4K (3840x2160)\n', '5');
INSERT INTO `products` VALUES ('22', 'PocketBook 640 Aqua ', '/images/products/elektro_book/record_106585704.jpg', 'PocketBook', '17', '2999', 'Диагональ дисплея: 6\"\nРазрешение: 800х600\nТип матрицы: E Ink Pearl\nКоличество градаций серого: 16\nВстроенная память: 4 ГБ\nВес: 170 г\n', '4');
INSERT INTO `products` VALUES ('21', 'PocketBook 624 Basic Touch Grey\n', '', 'PocketBook', '32', '3039', 'Диагональ дисплея: 6\"\nРазрешение: 800х600\nТип матрицы: E Ink\nКоличество градаций серого: 16\nВстроенная память: 4 ГБ\nВес: 191 г\n', '4');
INSERT INTO `products` VALUES ('19', 'PocketBook 624 Basic Touch Grey\n', '/images/products/elektro_book/copy_pocketbook_624_basic_touch_g_9637951.jpg', 'PocketBook', '32', '3039', 'Диагональ дисплея: 6\"\nРазрешение: 800х600\nТип матрицы: E Ink\nКоличество градаций серого: 16\nВстроенная память: 4 ГБ\nВес: 191 г\n', '4');
INSERT INTO `products` VALUES ('20', 'PocketBook 626 Touch Lux2 White ', '/images/products/elektro_book/record_19349864.jpg', 'PocketBook', '123', '4179', 'иагональ дисплея: 6\"\nРазрешение: 1024х758\nТип матрицы: E Ink Pearl\nКоличество градаций серого: 16\nВстроенная память: 4 ГБ\nВес: 208 г\n', '4');
INSERT INTO `products` VALUES ('18', 'PocketBook 626 Touch Lux2 White ', '/images/products/elektro_book/record_19349864.jpg', 'PocketBook', '123', '4179', 'иагональ дисплея: 6\"\nРазрешение: 1024х758\nТип матрицы: E Ink Pearl\nКоличество градаций серого: 16\nВстроенная память: 4 ГБ\nВес: 208 г\n', '4');
INSERT INTO `products` VALUES ('16', 'Asus BM6820', '', 'Asus', '3', '7323', 'Intel Pentium Dual Core G2020 (2.9 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без OД / LAN / Без ОС\nПодробнее: ', '3');
INSERT INTO `products` VALUES ('17', 'Acer Aspire TC-100 ', '/images/products/computer/record_183641202.jpg', 'Acer', '7', '5950', 'AMD E1-2500 (1.4 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon HD 8240 / DVD Super Multi / LAN / кардридер / DOS\n', '3');
INSERT INTO `products` VALUES ('14', 'Персональный компьютер Lenovo ThinkStation E31\n', '/images/products/computer/sx212ru_9971201.jpg', 'Lenovo', '4', '19624.9', 'Intel Xeon E3-1225V2 (3.2 ГГц) / 2 x RAM 2 ГБ / HDD 1 ТБ / LAN / DVD-RW / кард-ридер / Windows 7 Professional 64bit + клавиатура и мышь\n', '3');
INSERT INTO `products` VALUES ('15', 'Asus BM1AD1-I54440047F (90PF00F1-M00470)', '', 'Asus', '6', '17605', 'ntel Core i5-4430S (2.7 - 3.2 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics 4600 / DVD Super Multi / LAN / Windows 8.1 Pro / клавиатура + мышь\n', '3');
INSERT INTO `products` VALUES ('13', 'Персональный компьютер Lenovo IdeaCentre H535', '/images/products/computer/record_415381712.jpg', 'Lenovo', '5', '7326', 'AMD Trinity A8-5500 (3.2 - 3.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon HD 7560D / DVD±RW / LAN / кардридер / DOS / клавиатура+ мышь\n', '3');
INSERT INTO `products` VALUES ('11', 'Sony Xperia Z3 Tablet Compact 4G 16GB White\n', '/images/products/tablets/record_165499382.jpg', 'Sony', '12', '12471', 'Экран 8\" IPS (1920x1200) емкостный Multi-Touch / Qualcomm Snapdragon MSM8974AB (2.5 ГГц) / RAM 3 ГБ / SSD 16 ГБ + поддержка карт памяти microSD / Wi-Fi / 3G / 4G LTE / Bluetooth 4.0 / NFC / пыле/влагозащищенный / камера основная 8.1 Мп, фронтальная - 2.2 Мп / GPS / ГЛОНАСС / ОС Android 4.4 (Kitkat) / 270 г / белый\n', '2');
INSERT INTO `products` VALUES ('10', 'Apple A1475 iPad Air Wi-Fi 4G 16GB\n', '/images/products/tablets/apple_ip.jpg', 'Apple', '32', '12953', 'Экран 9.7\" (2048 x 1536) Multi-Touch / Apple A7 (1.3 ГГц) / ОЗУ 1 ГБ / Флеш-память 16 ГБ / 3G / 4G / EV-DO / Wi-Fi / Bluetooth 4.0 / основная камера 5Мп, фронтальная 1.2 Мп / GPS / ОС iOS 7 / вес 478 г / серый\n', '2');
INSERT INTO `products` VALUES ('9', 'Apple A1489 iPad mini with Retina display Wi-Fi', '', 'Apple', '12', '7123', 'Экран 7.9\" (2048 x 1536) емкостной Multi-Touch / Apple A7 (1.3 ГГц) / ОЗУ 1 ГБ / Флеш-память 16 ГБ / Wi-Fi / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 1.2 Мп / ОС iOS 7.0 / вес 331 г / серебряный\n', '2');
INSERT INTO `products` VALUES ('8', 'Asus MeMO Pad 7 16GB Black', '/images/products/tablets/record_114017740.jpg', 'Asus', '21', '4904', 'Экран 7\" IPS (1920x1200) емкостный Multi-Touch / Intel Atom Z3560 (1.83 ГГц) / RAM 2 ГБ / 16 ГБ встроенной памяти + поддержка карт памяти microSD / Wi-Fi / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 2 Мп / GPS / ГЛОНАСС / Android 4.4 (KitKat) / 269 г / черный\r\n\"', '2');
INSERT INTO `products` VALUES ('7', 'Asus Transformer Pad TF103C 16GB Doc Black ', '/images/products/tablets/copy_asus_tf103c_1a.jpg', 'Asus', '12', '4578', 'кран 10.1\" (1280x800) емкостной Multi-Touch / Intel Atom Z3745 (1.33 ГГц) / RAM 1 ГБ / флеш память 16 ГБ + поддержка карт памяти MicroSD / Wi-Fi 802.11 a/b/g/n / Bluetooth 4.0 / основная камера 2 Мп + фронтальная 0.3 Мп / GPS + GLONASS / ОС Android 4.4 / 550 г / черный + док-станция (QWERTY-клавиатура, тачпад, USB 2.0)\n', '2');
INSERT INTO `products` VALUES ('6', 'Apple MacBook Pro Retina 13\" ', '/images/products/notebook/record_128681450.jpg', 'Apple MacBook Pro Retina 13\" ', '21', '85531', 'Экран 13.3\" IPS (2560x1600) Retina LED, глянцевый / Intel Core i7 (3.1 ГГц) / RAM 16 ГБ / SSD 1 TБ / Intel Iris Graphics 6100 / без ОД / Wi-Fi / Bluetooth / веб-камера / OS X Yosemite / 1.58 кг\nПодробнее: ', '1');
INSERT INTO `products` VALUES ('5', 'Apple MacBook Air 13\" ', '/images/products/notebook/record_128683725.jpg', 'Apple', '2', '26637', 'Экран 13.3\" (1440x900) WXGA+ LED, глянцевый / Intel Core i5 (1.6 - 2.7 ГГц) / RAM 4 ГБ / SSD 128 ГБ / Intel HD Graphics 6000 / без ОД / Wi-Fi / Bluetooth / веб-камера / OS X Yosemite / 1.35 к', '1');
INSERT INTO `products` VALUES ('3', 'Ноутбук Asus X553MA', '/images/products/notebook/copy_asus_x553ma-sx526b_56054b5fe22c9_images_1242984063.jpg', 'Asus', '4', '6423', 'Экран 15.6\" (1366x768) HD LED, глянцевый / Intel Celeron N2830 (2.16 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / DVD Super Multi / LAN / Bluetooth / Wi-Fi / веб-камера / DOS / 2.2 кг / черный\nПодробнее: ', '1');
INSERT INTO `products` VALUES ('4', 'MSI GT80 2QE Titan SLI', '', 'MSI', '5', '123436', 'Экран 17.3\" (1920x1080) Full HD LED, матовый / Intel Core i7- 5950HQ (2.9 - 3.8 ГГц) / RAM 32 ГБ / SSD 512 ГБ + HDD 1 ТБ / 2 x nVidia GeForce GTX 980M, 8 ГБ / Blu-Ray / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 Single Language Rus 64bit / 4.5 кг / черный / PowerPack\nПодробнее: http://rozetka.com.ua/notebooks/msi/c80004/v109/', '1');
INSERT INTO `products` VALUES ('2', 'Ноутбук HP 255 G3 ', '', 'HP', '3', '5245', 'Экран 15.6” (1366x768) HD LED, матовый / AMD Dual-Core E1-6010 (1.35 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R2 / без ОД / LAN / Bluetooth / Wi-Fi / веб-камера / Windows 8.1 64bit / 2.15 кг / черный', '1');
INSERT INTO `products` VALUES ('1', 'Ноутбук Lenovo Flex 2 15', '/images/products/notebook/record_188211087.jpg', 'Lenovo', '10', '17342.5', 'Экран 15.6\" (1920x1080) Full HD LED, глянцевый IPS Multi-Touch / Intel Core i3-4030U (1.9 ГГц) / RAM 4 ГБ / HDD 1 ТБ / nVidia GeForce 820M, 2 ГБ / DVD Super Multi / Wi-Fi / Bluetooth 4.0 / веб-камера / Windows 8.1 / 2.3 кг / черный\nПодробнее: ', '1');
INSERT INTO `products` VALUES ('83', 'LG 42LB582V', '', 'LG', '5', '12499', 'Диагональ экрана: 42\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2, DVB-T\nЧастота развертки панели: 50 Гц\nЧастота обновления: 100 Гц (MCI)\nWi-Fi: Да\n', '10');
INSERT INTO `products` VALUES ('84', 'LG 47LB720V ', '', 'LG', '9', '20499', 'Диагональ экрана: 47\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\nЧастота развертки панели: 200 Гц\nЧастота обновления: 800 Гц (MCI)\nWi-Fi: Да\n', '10');
INSERT INTO `products` VALUES ('85', 'Samsung UE40J5590 + KinoTV D', '/images/products/smart_tv/samsung_40j5590aux__1029752371.jpg', 'Samsung', '5', '14999', 'Диагональ экрана: 40\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\nЧастота обновления: 100 Гц (CMR)\nWi-Fi: Да\n', '10');
INSERT INTO `products` VALUES ('86', 'Samsung UE48H5500 + Жесткий диск Transcend 1TB в подарок!\n', '', 'Samsung', '4', '16899', 'Диагональ экрана: 48\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-C, DVB-T2\nЧастота развертки панели: 50 Гц\nЧастота обновления: 100 Гц (CMR)\nWi-Fi: Да\n', '10');
INSERT INTO `products` VALUES ('87', 'Samsung UE40J5590 + KinoTV D', '', 'Samsung', '5', '14999', 'Диагональ экрана: 40\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\nЧастота обновления: 100 Гц (CMR)\nWi-Fi: Да\n', '10');
INSERT INTO `products` VALUES ('88', 'Samsung UE48H5500 + Жесткий диск Transcend 1TB в подарок!\n', '', 'Samsung', '4', '16899', 'Диагональ экрана: 48\"\nРазрешение: 1920x1080\nПоддержка Smart TV: Есть\nДиапазоны цифрового тюнера: DVB-C, DVB-T2\nЧастота развертки панели: 50 Гц\nЧастота обновления: 100 Гц (CMR)\nWi-Fi: Да\n', '10');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `role` enum('0','1','2') NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update` date DEFAULT NULL,
  `user_hash` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'Николай', 'Криворучко', '1987-01-03', 'krivoruchko@gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '2', '2015-10-14 19:03:33', '2015-08-19', '816f713961cf0ea563ea6d4188b03536');
INSERT INTO `users` VALUES ('3', 'Ирина', 'Криворучко', '2000-03-11', 'irina-krivorucko', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('4', 'Ирма', 'Киркорова', '1993-05-18', 'irma-kirkorova@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('5', 'Евгений', 'Анегин', '1920-04-18', 'eugen-anegin', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('6', 'Георигий ', 'Жуков', '2001-08-26', 'georgiy-djukov', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('7', 'Барака', 'Обама', '1945-09-11', 'baraka-obama@icloud.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('8', 'Владимир', 'Путин', '1950-03-12', 'vladimir-putin@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('9', 'Джейд', 'Псаки', '1982-08-04', 'djeid-psaki@icloud.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('10', 'Дмитрий', 'Медведев', '1970-03-12', 'dmitriy-medvedev@yandex.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('11', 'Николай', 'Валуев', '1975-08-12', 'nikolay-valuev@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('12', 'Владимир', 'Жириновкий', '1950-08-04', 'vladimir-jirinovskiy@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('13', 'Борис', 'Ельцин', '1942-08-18', 'boris-elicin@icloud.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('14', 'Алексей', 'Дурнев', '1980-08-31', 'alex-durnev', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('15', 'Даша', 'Ши', '1980-08-10', 'dasha-shi@gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-12', '');
INSERT INTO `users` VALUES ('16', 'Иван', 'Петров', '2000-08-10', 'ivan-petrov.gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('17', 'Виктор', 'Шнур', '1965-08-18', 'victor-shnur@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('18', 'Артас', 'Менитил', '1795-08-18', 'artas-menitil@gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('19', 'Адольф', 'Гитлер', '1920-08-18', 'adolf-gitler@icloud.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('20', 'Иван', 'Дорн', '1981-08-10', 'ivan-dorn@gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('21', 'Макс', 'Барских', '1976-08-11', 'max-barskiy@yandex.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-18', '');
INSERT INTO `users` VALUES ('22', 'Ольга', 'Полякова', '1975-08-17', 'olga-polyakova@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('23', 'Кристиан', 'Рональдо', '1985-08-03', 'kristian-ronaldo', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-25', '');
INSERT INTO `users` VALUES ('24', 'Владимир', 'Кличко', '1976-07-21', 'vladimir-klichko@gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('25', 'Арсений', 'Яцунюк', '1969-07-13', 'arseniy-yacenuk@gmai.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-26', '');
INSERT INTO `users` VALUES ('26', 'Виталий ', 'Кличко', '1975-08-18', 'vitaliy-klichko@gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-26', '');
INSERT INTO `users` VALUES ('27', 'Алла', 'Пугачева', '1950-08-10', 'alla-pugacheva@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-26', '');
INSERT INTO `users` VALUES ('28', 'Сергей', 'Безруков', '1976-08-18', 'sergey-bezrukov@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('29', 'Джодж', 'Буш', '1962-05-12', 'joege-bush@icloud.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-26', '');
INSERT INTO `users` VALUES ('30', 'Сергей', 'Зверев', '1985-08-10', 'sergey-zverev@yandex.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-02 12:29:05', '2015-08-19', '');
INSERT INTO `users` VALUES ('40', 'Евгений', 'Васильцов', '1990-02-11', 'eugenevasilsov@gmail.com', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '2', '2015-10-19 23:39:36', null, '3291ad24933ad048903a47c5d1ce7b1b');
INSERT INTO `users` VALUES ('41', 'Екатерина', 'Вторая', '1985-10-02', 'ekaterina-vtoraya@mail.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-19 21:45:03', null, '734598b1415000d4961c3e015aebd294');
INSERT INTO `users` VALUES ('43', 'admin', 'adminov', '1985-10-14', 'admin@bk.ru', 'fb47fde2fbd4931d05aa33dd9b21831c', '1', '2', '2015-10-12 16:53:05', null, 'eb18b002c1041f5c5108d00f30bde7d1');
INSERT INTO `users` VALUES ('44', 'Евгений', 'Гвардий', '1990-12-08', 'jehe4ka@bk.ru', '224cf2b695a5e8ecaecfb9015161fa4b', '1', '0', '2015-10-18 21:09:36', null, '');
