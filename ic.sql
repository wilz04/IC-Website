-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 04, 2013 at 11:45 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ic`
--

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_clients`
--

CREATE TABLE IF NOT EXISTS `ic_tb_clients` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_company` varchar(64) DEFAULT NULL,
  `_url` varchar(45) DEFAULT NULL,
  `_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `_contact_idx` (`_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ic_tb_clients`
--

INSERT INTO `ic_tb_clients` (`_id`, `_company`, `_url`, `_user`) VALUES
(1, 'MedSurgical', 'http://medsurgical.com', 1),
(2, 'Repuestos Nacionales', 'http://repuestosnacionales.com', 1),
(3, 'Partes de Camion S.A.', 'http://partesdecamionsa.com', NULL),
(4, 'Aerocasillas S.A.', 'http://aerocasillassa.com', 1),
(5, 'US / Audio Laser', 'http://usaudiolaser.com', 1),
(6, 'Corpeco S.A.', 'http://corpecosa.com', 1),
(7, 'Grupo 3c / Cococo', 'http://grupo3ccococo.com', 1),
(8, 'Grupo Prisma Dental', 'http://grupoprismadental.com', 1),
(9, NULL, NULL, NULL),
(10, 'Grupo Asesor en Inform&aacute;tica S.A.', 'http://grupoasesoreninformaticasa.com', 1),
(11, 'Eurodise&ntilde;os S.A.', 'http://eurodisenossa.com', 1),
(12, 'Grupo Cinepolis', 'http://grupocinepolis.com', 1),
(13, 'Avicultores Unidos S.A.', 'http://avicultoresunidossa.com', 1),
(14, 'Rosejo Comercial S.A.', 'http://rosejocomercialsa.com', 1),
(15, 'BTC', 'http://btc.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_comments`
--

CREATE TABLE IF NOT EXISTS `ic_tb_comments` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_subject` varchar(128) DEFAULT NULL,
  `_message` varchar(1024) DEFAULT NULL,
  `_author` int(11) DEFAULT NULL,
  `_thread` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `ic_fk_authorofcomment` (`_author`),
  KEY `ic_fk_threadofcomment` (`_thread`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_downloads`
--

CREATE TABLE IF NOT EXISTS `ic_tb_downloads` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_description` varchar(128) DEFAULT NULL,
  `_product` int(11) DEFAULT NULL,
  `_url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `ic_fk_productfordownload_idx` (`_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `ic_tb_downloads`
--

INSERT INTO `ic_tb_downloads` (`_id`, `_description`, `_product`, `_url`) VALUES
(10, 'Trial', 1, 'IntelcompCRMSetup.exe'),
(11, 'Manual de Instalaci&oacute;n y Configuraci&oacute;n', 1, 'IntelcompCRMSetup.pdf'),
(12, 'Manual de Uso', 1, 'IntelcompCRM.pdf'),
(13, 'Trial', 2, 'IntelcompERPSetup.exe'),
(14, 'Manual de Instalaci&oacute;n y Configuraci&oacute;n', 2, 'IntelcompERPSetup.pdf'),
(15, 'Manual de Uso', 2, 'IntelcompERP.pdf'),
(16, 'Trial', 3, 'IntelcompBPMSetup.exe'),
(17, 'Manual de Instalaci&oacute;n y Configuraci&oacute;n', 3, 'IntelcompBPMSetup.pdf'),
(18, 'Manual de Uso', 3, 'IntelcompBPM.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_matches`
--

CREATE TABLE IF NOT EXISTS `ic_tb_matches` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_player1` int(11) NOT NULL,
  `_player2` int(11) NOT NULL,
  `_status` int(11) NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `ic_fk_player1ofmatch` (`_player1`),
  KEY `ic_fk_player2ofmatch` (`_player2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_news`
--

CREATE TABLE IF NOT EXISTS `ic_tb_news` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_title` varchar(128) NOT NULL,
  `_link` varchar(128) DEFAULT NULL,
  `_description` varchar(1024) DEFAULT NULL,
  `_author` int(11) DEFAULT NULL,
  `_pubdate` datetime NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `ic_fk_authorofnew_idx` (`_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ic_tb_news`
--

INSERT INTO `ic_tb_news` (`_id`, `_title`, `_link`, `_description`, `_author`, `_pubdate`) VALUES
(1, 'DDS .Net Coding Standards', '/news.php#1', 'Elaborado por Mario Barquero.', 1, '2013-04-04 00:00:00'),
(2, '.Net Coding Standarts', '/news.php#2', NULL, 1, '2013-04-04 00:00:00'),
(3, 'Como revisar el funcionamiento del WS', '/news.php#3', 'Este documento indica los pasos a seguir para verificar el buen funcionamiento del WS.', 1, '2013-04-04 00:00:00'),
(4, 'Compramos nuevos componentes web para desarrollo: DHTMLX 2.1', '/news.php#4', 'oScaR  encontr&#243; un set de componentes web que nos resuelven muchos dolores de cabeza que tenemos actualmente.', 1, '2013-04-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_products`
--

CREATE TABLE IF NOT EXISTS `ic_tb_products` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` varchar(64) NOT NULL,
  `_description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_name_UNIQUE` (`_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ic_tb_products`
--

INSERT INTO `ic_tb_products` (`_id`, `_name`, `_description`) VALUES
(1, 'Intelcomp CRM', 'Intelcomp CRM se basa en la idea de que la administraci&oacute;n de sus recursos empresariales puede ser m&aacute;s intuitiva, eficaz y &uacute;til. Quiz&aacute;s hasta divertida despu&eacute;s de todo.'),
(2, 'Intelcomp ERP', 'Intelcomp ERP se basa en la idea de que la administraci&oacute;n de sus recursos empresariales puede ser m&aacute;s intuitiva, eficaz y &uacute;til. Quiz&aacute;s hasta divertida despu&eacute;s de todo.'),
(3, 'Intelcomp BPM', 'Intelcomp BPM se basa en la idea de que la administraci&oacute;n de procesos de negocio puede ser m&aacute;s intuitiva, eficaz y &uacute;til. Quiz&aacute;s hasta divertida despu&eacute;s de todo.');

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_roles`
--

CREATE TABLE IF NOT EXISTS `ic_tb_roles` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_description` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_description_UNIQUE` (`_description`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ic_tb_roles`
--

INSERT INTO `ic_tb_roles` (`_id`, `_description`) VALUES
(1, 'Administrador'),
(3, 'Cliente'),
(2, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_threads`
--

CREATE TABLE IF NOT EXISTS `ic_tb_threads` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_title` varchar(128) DEFAULT NULL,
  `_description` varchar(1024) DEFAULT NULL,
  `_author` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `ic_fk_authorofthread` (`_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ic_tb_threads`
--

INSERT INTO `ic_tb_threads` (`_id`, `_title`, `_description`, `_author`) VALUES
(1, 'Tecnolog&iacute;a', 'Tecnolog&iacute;a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ic_tb_users`
--

CREATE TABLE IF NOT EXISTS `ic_tb_users` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_firstname` varchar(32) DEFAULT NULL,
  `_lastname` varchar(32) DEFAULT NULL,
  `_email` varchar(64) DEFAULT NULL,
  `_password` varchar(64) DEFAULT NULL,
  `_role` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_email_UNIQUE` (`_email`),
  KEY `ic_fk_roleofuser_idx` (`_role`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Tabla para la autenticacion de usuarios.' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ic_tb_users`
--

INSERT INTO `ic_tb_users` (`_id`, `_firstname`, `_lastname`, `_email`, `_password`, `_role`) VALUES
(1, 'Wil', 'Castro', 'wilz04@gmail.com', '1234', 1),
(2, 'Jes&#250;s', 'Bejarano', 'jbejarano@intelcomp.ru', '1234', 1),
(3, 'Oscar', 'Jimenez', 'ojimenez@intelcomp.ru', '1234', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ic_vw_clients`
--
CREATE TABLE IF NOT EXISTS `ic_vw_clients` (
`_id` int(11)
,`_company` varchar(64)
,`_url` varchar(45)
,`_user` varchar(65)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ic_vw_downloads`
--
CREATE TABLE IF NOT EXISTS `ic_vw_downloads` (
`_id` int(11)
,`_product` varchar(194)
,`_url` varchar(139)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ic_vw_news`
--
CREATE TABLE IF NOT EXISTS `ic_vw_news` (
`_id` int(11)
,`_title` varchar(128)
,`_link` varchar(21)
,`_description` varchar(1024)
,`_author` varchar(65)
,`_pubdate` datetime
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ic_vw_users`
--
CREATE TABLE IF NOT EXISTS `ic_vw_users` (
`_id` int(11)
,`_fullname` varchar(65)
,`_alias` varchar(64)
,`_email` varchar(64)
,`_role` varchar(64)
);
-- --------------------------------------------------------

--
-- Structure for view `ic_vw_clients`
--
DROP TABLE IF EXISTS `ic_vw_clients`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ic_vw_clients` AS select `c`.`_id` AS `_id`,`c`.`_company` AS `_company`,`c`.`_url` AS `_url`,`u`.`_fullname` AS `_user` from (`ic_tb_clients` `c` join `ic_vw_users` `u` on((`u`.`_id` = `c`.`_user`)));

-- --------------------------------------------------------

--
-- Structure for view `ic_vw_downloads`
--
DROP TABLE IF EXISTS `ic_vw_downloads`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ic_vw_downloads` AS select `d`.`_id` AS `_id`,concat(`p`.`_name`,', ',`d`.`_description`) AS `_product`,concat('/downloads/',`d`.`_url`) AS `_url` from (`ic_tb_downloads` `d` join `ic_tb_products` `p` on((`p`.`_id` = `d`.`_product`)));

-- --------------------------------------------------------

--
-- Structure for view `ic_vw_news`
--
DROP TABLE IF EXISTS `ic_vw_news`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ic_vw_news` AS select `n`.`_id` AS `_id`,`n`.`_title` AS `_title`,concat('/news.php#',`n`.`_id`) AS `_link`,`n`.`_description` AS `_description`,`u`.`_fullname` AS `_author`,`n`.`_pubdate` AS `_pubdate` from (`ic_tb_news` `n` join `ic_vw_users` `u` on((`u`.`_id` = `n`.`_author`)));

-- --------------------------------------------------------

--
-- Structure for view `ic_vw_users`
--
DROP TABLE IF EXISTS `ic_vw_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ic_vw_users` AS select `u`.`_id` AS `_id`,concat(`u`.`_firstname`,' ',`u`.`_lastname`) AS `_fullname`,`u`.`_email` AS `_alias`,`u`.`_email` AS `_email`,`r`.`_description` AS `_role` from (`ic_tb_users` `u` join `ic_tb_roles` `r` on((`r`.`_id` = `u`.`_role`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ic_tb_clients`
--
ALTER TABLE `ic_tb_clients`
  ADD CONSTRAINT `_contact` FOREIGN KEY (`_user`) REFERENCES `ic_tb_users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ic_tb_comments`
--
ALTER TABLE `ic_tb_comments`
  ADD CONSTRAINT `ic_fk_authorofcomment` FOREIGN KEY (`_author`) REFERENCES `ic_tb_users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ic_fk_threadofcomment` FOREIGN KEY (`_thread`) REFERENCES `ic_tb_threads` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ic_tb_downloads`
--
ALTER TABLE `ic_tb_downloads`
  ADD CONSTRAINT `ic_fk_productfordownload` FOREIGN KEY (`_product`) REFERENCES `ic_tb_products` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ic_tb_matches`
--
ALTER TABLE `ic_tb_matches`
  ADD CONSTRAINT `ic_fk_player1ofmatch` FOREIGN KEY (`_player1`) REFERENCES `ic_tb_users` (`_id`),
  ADD CONSTRAINT `ic_fk_player2ofmatch` FOREIGN KEY (`_player2`) REFERENCES `ic_tb_users` (`_id`);

--
-- Constraints for table `ic_tb_news`
--
ALTER TABLE `ic_tb_news`
  ADD CONSTRAINT `ic_fk_authorofnew` FOREIGN KEY (`_author`) REFERENCES `ic_tb_users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ic_tb_threads`
--
ALTER TABLE `ic_tb_threads`
  ADD CONSTRAINT `ic_fk_authorofthread` FOREIGN KEY (`_author`) REFERENCES `ic_tb_users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ic_tb_users`
--
ALTER TABLE `ic_tb_users`
  ADD CONSTRAINT `ic_fk_roleofuser` FOREIGN KEY (`_role`) REFERENCES `ic_tb_roles` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
