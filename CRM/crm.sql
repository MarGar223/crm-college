-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2020 at 12:27 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `irasai`
--

DROP TABLE IF EXISTS `irasai`;
CREATE TABLE IF NOT EXISTS `irasai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_laikas` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `klientas_id` int(11) NOT NULL,
  `vadybininkas` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `irasas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipas` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `irasai`
--

INSERT INTO `irasai` (`id`, `data_laikas`, `klientas_id`, `vadybininkas`, `irasas`, `tipas`) VALUES
(1, '2020-12-02 13:10:04', 15, 'Tadas Alisauskas', ' Viverra orci sagittis eu volutpat odio', 'Užklausa'),
(2, '2020-12-02 13:10:04', 16, 'Saulius Pilkauskas', ' Leo duis ut diam quam nulla porttitor massa id neque', 'Atsakymas'),
(3, '2020-12-02 13:10:04', 27, 'Tomas Zizas', ' Etiam erat velit scelerisque in dictum non consectetur a erat', 'Užklausa'),
(4, '2020-12-02 13:10:04', 25, 'Tomas Zizas', ' Justo nec ultrices dui sapien eget mi proin sed libero', 'Užklausa'),
(5, '2020-12-02 13:10:04', 0, 'Tadas Alisauskas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'Užklausa'),
(6, '2020-12-02 13:10:04', 15, 'Tomas Zizas', ' Eget nunc lobortis mattis aliquam faucibus purus in massa', 'Užklausa'),
(7, '2020-12-02 13:10:04', 15, 'Gytis Žukas', ' Tellus integer feugiat scelerisque varius morbi enim nunc faucibus', 'Atsakymas'),
(8, '2020-12-02 13:10:04', 3, 'Tadas Alisauskas', ' Consectetur lorem donec massa sapien faucibus et molestie ac feugiat', 'Atsakymas'),
(9, '2020-12-02 13:10:04', 23, 'Saulius Pilkauskas', ' Pretium nibh ipsum consequat nisl vel', 'Užklausa'),
(10, '2020-12-02 13:10:04', 30, 'Tomas Zizas', ' Tortor condimentum lacinia quis vel', 'Atsakymas'),
(11, '2020-12-02 13:10:04', 10, 'Gytis Žukas', ' Amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan', 'Užklausa'),
(12, '2020-12-02 13:10:04', 5, 'Tomas Zizas', ' Arcu cursus euismod quis viverra nibh cras pulvinar mattis', 'Užklausa'),
(13, '2020-12-02 13:10:04', 24, 'Tadas Alisauskas', ' Amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan', 'Užklausa'),
(14, '2020-12-02 13:10:04', 18, 'Tadas Alisauskas', ' Arcu cursus euismod quis viverra nibh cras pulvinar mattis', 'Užklausa'),
(15, '2020-12-02 13:10:04', 9, 'Saulius Pilkauskas', ' Etiam erat velit scelerisque in dictum non consectetur a erat', 'Užklausa'),
(16, '2020-12-02 13:10:04', 16, 'Tomas Zizas', ' Ipsum dolor sit amet consectetur adipiscing elit', 'Atsakymas'),
(17, '2020-12-02 13:10:04', 17, 'Gytis Žukas', ' Sed nisi lacus sed viverra tellus', 'Atsakymas'),
(18, '2020-12-02 13:10:04', 7, 'Tomas Zizas', ' Eget nunc lobortis mattis aliquam faucibus purus in massa', 'Užklausa'),
(19, '2020-12-02 13:10:04', 17, 'Tadas Alisauskas', ' Egestas pretium aenean pharetra magna ac placerat vestibulum', 'Užklausa'),
(20, '2020-12-02 13:10:04', 14, 'Gytis Žukas', ' Ipsum dolor sit amet consectetur adipiscing elit', 'Atsakymas'),
(21, '2020-12-02 13:10:04', 13, 'Tomas Zizas', ' Sed nisi lacus sed viverra tellus', 'Atsakymas'),
(22, '2020-12-02 13:10:04', 2, 'Tadas Alisauskas', ' Fringilla urna porttitor rhoncus dolor purus non', 'Atsakymas'),
(23, '2020-12-02 13:10:04', 7, 'Gytis Žukas', ' Justo nec ultrices dui sapien eget mi proin sed libero', 'Atsakymas'),
(24, '2020-12-02 13:10:04', 28, 'Gytis Žukas', ' Vel orci porta non pulvinar neque laoreet suspendisse interdum', 'Atsakymas'),
(25, '2020-12-02 13:10:04', 22, 'Saulius Pilkauskas', ' Nulla posuere sollicitudin aliquam ultrices', 'Atsakymas'),
(26, '2020-12-02 13:10:04', 20, 'Tomas Zizas', ' Leo duis ut diam quam nulla porttitor massa id neque', 'Užklausa'),
(27, '2020-12-02 13:10:04', 30, 'Tadas Alisauskas', ' Ut sem viverra aliquet eget sit amet tellus', 'Užklausa'),
(28, '2020-12-02 13:10:04', 16, 'Gytis Žukas', ' Etiam erat velit scelerisque in dictum non consectetur a erat', 'Atsakymas'),
(29, '2020-12-02 13:10:04', 25, 'Tadas Alisauskas', ' Etiam erat velit scelerisque in dictum non consectetur a erat', 'Užklausa'),
(30, '2020-12-02 13:10:04', 24, 'Tadas Alisauskas', ' Lobortis elementum nibh tellus molestie nunc', 'Atsakymas'),
(31, '2020-12-02 13:10:04', 15, 'Tomas Zizas', ' Justo nec ultrices dui sapien eget mi proin sed libero', 'Užklausa'),
(32, '2020-12-02 13:10:04', 19, 'Gytis Žukas', ' Pretium nibh ipsum consequat nisl vel', 'Atsakymas'),
(33, '2020-12-02 13:10:04', 16, 'Tomas Zizas', ' Egestas pretium aenean pharetra magna ac placerat vestibulum', 'Atsakymas'),
(34, '2020-12-02 13:10:04', 27, 'Tomas Zizas', ' Etiam erat velit scelerisque in dictum non consectetur a erat', 'Atsakymas'),
(35, '2020-12-02 13:10:04', 1, 'Saulius Pilkauskas', ' Vel orci porta non pulvinar neque laoreet suspendisse interdum', 'Užklausa'),
(36, '2020-12-02 13:10:04', 9, 'Tadas Alisauskas', ' Eget nunc lobortis mattis aliquam faucibus purus in massa', 'Užklausa'),
(37, '2020-12-02 13:10:04', 11, 'Saulius Pilkauskas', ' Fringilla urna porttitor rhoncus dolor purus non', 'Atsakymas'),
(38, '2020-12-02 13:10:04', 23, 'Saulius Pilkauskas', ' Commodo odio aenean sed adipiscing diam donec', 'Užklausa'),
(39, '2020-12-02 13:10:04', 24, 'Gytis Žukas', ' Tortor condimentum lacinia quis vel', 'Atsakymas'),
(40, '2020-12-02 13:10:04', 17, 'Tadas Alisauskas', ' Nulla posuere sollicitudin aliquam ultrices', 'Atsakymas'),
(41, '2020-12-02 13:10:04', 17, 'Saulius Pilkauskas', ' Pretium nibh ipsum consequat nisl vel', 'Užklausa'),
(42, '2020-12-02 13:10:04', 17, 'Saulius Pilkauskas', ' Arcu cursus euismod quis viverra nibh cras pulvinar mattis', 'Užklausa'),
(43, '2020-12-02 13:10:04', 5, 'Saulius Pilkauskas', ' Justo nec ultrices dui sapien eget mi proin sed libero', 'Atsakymas'),
(44, '2020-12-02 13:10:04', 19, 'Saulius Pilkauskas', ' Lobortis elementum nibh tellus molestie nunc', 'Atsakymas'),
(45, '2020-12-02 13:10:04', 20, 'Saulius Pilkauskas', ' Nulla posuere sollicitudin aliquam ultrices', 'Atsakymas'),
(46, '2020-12-02 13:10:04', 4, 'Gytis Žukas', ' Amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan', 'Atsakymas'),
(47, '2020-12-02 13:10:04', 8, 'Tadas Alisauskas', ' Amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan', 'Atsakymas'),
(48, '2020-12-02 13:10:04', 5, 'Saulius Pilkauskas', ' Egestas pretium aenean pharetra magna ac placerat vestibulum', 'Atsakymas'),
(49, '2020-12-02 13:10:04', 25, 'Tadas Alisauskas', ' Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam', 'Atsakymas'),
(50, '2020-12-02 13:10:04', 19, 'Gytis Žukas', ' Viverra orci sagittis eu volutpat odio', 'Užklausa'),
(51, '2020-12-02 13:10:16', 1, 'Tomas Zizas', 'nu nu', 'Atsakymas'),
(52, '2020-12-02 13:10:42', 1, 'Gytis Å½ukas', '123', 'Uzklausa'),
(53, '2020-12-02 13:11:22', 11, 'Gytis Å½ukas', 'testas', 'Uzklausa'),
(54, '2020-12-02 13:13:20', 1, 'Saulius Pilkauskas', '234', 'Atsakymas'),
(55, '2020-12-02 13:16:19', 9, 'Gytis Å½ukas', 'testas', 'Uzklausa'),
(56, '2020-12-02 13:16:28', 9, 'Saulius Pilkauskas', 'vienas vienas', 'Atsakymas'),
(57, '2020-12-02 13:18:04', 22, 'Saulius Pilkauskas', 'testas', 'Uzklausa'),
(58, '2020-12-02 13:18:11', 22, 'Tomas Zizas', '123', 'Atsakymas');

-- --------------------------------------------------------

--
-- Table structure for table `klientai`
--

DROP TABLE IF EXISTS `klientai`;
CREATE TABLE IF NOT EXISTS `klientai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vardas` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pavarde` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `elPastas` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `telefonas` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `miestas` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `klientai`
--

INSERT INTO `klientai` (`id`, `vardas`, `pavarde`, `elPastas`, `telefonas`, `miestas`) VALUES
(1, 'Gabija', 'Valaitytė', 'Gabija606@gmail.com', '865728369', 'Vilnius'),
(3, 'Emilija', 'Stonkutė', 'Emilija34@gmail.com', '862422855', 'Kaunas'),
(4, 'Rokas', 'Baranauskas', 'Rokas774@gmail.com', '864839263', 'Šiauliai'),
(5, 'Emilija', 'Petrulytė', 'Emilija624@gmail.com', '861841872', 'Palanga'),
(6, 'Kamilė', 'Petrulytė', 'Kamilė321@gmail.com', '868207295', 'Šiauliai'),
(7, 'Dovydas', 'Žiūkas', 'Dovydas589@gmail.com', '861082877', 'Šiauliai'),
(8, 'Lukas', 'Stankevičius', 'Lukas860@gmail.com', '868982810', 'Palanga'),
(10, 'Ieva', 'Valaitytė', 'Ieva808@gmail.com', '861841872', 'Vilnius'),
(12, 'Ieva', 'Petrulytė', 'Ieva808@gmail.com', '861872785', 'Klaipėda'),
(13, 'Emilija', 'Petrulytė', 'Emilija36@gmail.com', '862929789', 'Kaunas'),
(14, 'Kamilė', 'Valaitytė', 'Kamilė321@gmail.com', '868982810', 'Šiauliai'),
(15, 'Lukas', 'Baranauskas', 'Lukas790@gmail.com', '868096477', 'Alytus'),
(16, 'Dovydas', 'Žukauskas', 'Dovydas481@gmail.com', '861412595', 'Alytus'),
(17, 'Rokas', 'Žukauskas', 'Rokas975@gmail.com', '864839263', 'Panevėžys'),
(18, 'Austėja', 'Valaitytė', 'Austėja692@gmail.com', '863986789', 'Šiauliai'),
(20, 'Rokas', 'Baranauskas', 'Rokas86@gmail.com', '868743593', 'Klaipėda'),
(21, 'Emilija', 'Stonkutė', 'Emilija758@gmail.com', '869773813', 'Panevėžys'),
(22, 'Matas', 'Gricius', 'Matas26@gmail.com', '868111006', 'Vilnius'),
(23, 'Lukas', 'Baranauskas', 'Lukas826@gmail.com', '868207295', 'Alytus'),
(24, 'Dominykas', 'Gricius', 'Dominykas795@gmail.com', '866897258', 'Šiauliai'),
(25, 'Gabija', 'Stonkutė', 'Gabija189@gmail.com', '864839263', 'Palanga'),
(26, 'Rokas', 'Žukauskas', 'Rokas933@gmail.com', '861082877', 'Šiauliai'),
(27, 'Rokas', 'Baranauskas', 'Rokas998@gmail.com', '862422855', 'Palanga'),
(28, 'Emilija', 'Petrulytė', 'Emilija34@gmail.com', '869504283', 'Kaunas'),
(30, 'Dominykas', 'Žiūkas', 'Dominykas795@gmail.com', '862084981', 'Panevėžys'),
(31, 'Kamilė', 'Stonkutė', 'Kamilė571@gmail.com', '865728369', 'Klaipėda');

-- --------------------------------------------------------

--
-- Table structure for table `vadybininkai`
--

DROP TABLE IF EXISTS `vadybininkai`;
CREATE TABLE IF NOT EXISTS `vadybininkai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vardas` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pavarde` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `vadybininkai`
--

INSERT INTO `vadybininkai` (`id`, `vardas`, `pavarde`) VALUES
(1, 'Saulius', 'Pilkauskas'),
(2, 'Tomas', 'Zizas'),
(3, 'Gytis', 'Žukas'),
(4, 'Tadas', 'Alisauskas');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
