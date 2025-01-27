-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-07-2013 a las 04:16:32
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_clients`
--

DROP TABLE IF EXISTS `ic_tb_clients`;
CREATE TABLE IF NOT EXISTS `ic_tb_clients` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_company` varchar(64) DEFAULT NULL,
  `_url` varchar(45) DEFAULT NULL,
  `_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `_contact_idx` (`_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `ic_tb_clients`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_comments`
--

DROP TABLE IF EXISTS `ic_tb_comments`;
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

--
-- Volcar la base de datos para la tabla `ic_tb_comments`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_downloads`
--

DROP TABLE IF EXISTS `ic_tb_downloads`;
CREATE TABLE IF NOT EXISTS `ic_tb_downloads` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_url` varchar(128) NOT NULL,
  `_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_url_UNIQUE` (`_url`),
  KEY `ic_fk_productfordownload_idx` (`_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `ic_tb_downloads`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_matches`
--

DROP TABLE IF EXISTS `ic_tb_matches`;
CREATE TABLE IF NOT EXISTS `ic_tb_matches` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_player1` int(11) NOT NULL,
  `_player2` int(11) NOT NULL,
  `_status` int(11) NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `ic_fk_player1ofmatch` (`_player1`),
  KEY `ic_fk_player2ofmatch` (`_player2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `ic_tb_matches`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_news`
--

DROP TABLE IF EXISTS `ic_tb_news`;
CREATE TABLE IF NOT EXISTS `ic_tb_news` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_title` varchar(128) NOT NULL,
  `_link` varchar(128) DEFAULT NULL,
  `_description` varchar(1024) DEFAULT NULL,
  `_author` int(11) DEFAULT NULL,
  `_pubdate` datetime NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `ic_fk_authorofnew_idx` (`_author`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `ic_tb_news`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_products`
--

DROP TABLE IF EXISTS `ic_tb_products`;
CREATE TABLE IF NOT EXISTS `ic_tb_products` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` varchar(64) NOT NULL,
  `_description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_name_UNIQUE` (`_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `ic_tb_products`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_roles`
--

DROP TABLE IF EXISTS `ic_tb_roles`;
CREATE TABLE IF NOT EXISTS `ic_tb_roles` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_description` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_description_UNIQUE` (`_description`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `ic_tb_roles`
--

INSERT INTO `ic_tb_roles` (`_id`, `_description`) VALUES
(1, 'Admin'),
(3, 'Client'),
(2, 'Manager');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_threads`
--

DROP TABLE IF EXISTS `ic_tb_threads`;
CREATE TABLE IF NOT EXISTS `ic_tb_threads` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_title` varchar(128) DEFAULT NULL,
  `_description` varchar(1024) DEFAULT NULL,
  `_author` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `ic_fk_authorofthread` (`_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcar la base de datos para la tabla `ic_tb_threads`
--

INSERT INTO `ic_tb_threads` (`_id`, `_title`, `_description`, `_author`) VALUES
(1, 'Tecnolog&iacute;a', 'Tecnolog&iacute;a', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ic_tb_users`
--

DROP TABLE IF EXISTS `ic_tb_users`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Tabla para la autenticacion de usuarios.' AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `ic_tb_users`
--

INSERT INTO `ic_tb_users` (`_id`, `_firstname`, `_lastname`, `_email`, `_password`, `_role`) VALUES
(1, 'Wil', 'Castro', 'wilz04@gmail.com', '1234', 1);

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `ic_tb_clients`
--
ALTER TABLE `ic_tb_clients`
  ADD CONSTRAINT `_contact` FOREIGN KEY (`_user`) REFERENCES `ic_tb_users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ic_tb_comments`
--
ALTER TABLE `ic_tb_comments`
  ADD CONSTRAINT `ic_fk_authorofcomment` FOREIGN KEY (`_author`) REFERENCES `ic_tb_users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ic_fk_threadofcomment` FOREIGN KEY (`_thread`) REFERENCES `ic_tb_threads` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ic_tb_downloads`
--
ALTER TABLE `ic_tb_downloads`
  ADD CONSTRAINT `ic_fk_productfordownload` FOREIGN KEY (`_product`) REFERENCES `ic_tb_products` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ic_tb_matches`
--
ALTER TABLE `ic_tb_matches`
  ADD CONSTRAINT `ic_fk_player1ofmatch` FOREIGN KEY (`_player1`) REFERENCES `ic_tb_users` (`_id`),
  ADD CONSTRAINT `ic_fk_player2ofmatch` FOREIGN KEY (`_player2`) REFERENCES `ic_tb_users` (`_id`);

--
-- Filtros para la tabla `ic_tb_news`
--
ALTER TABLE `ic_tb_news`
  ADD CONSTRAINT `ic_fk_authorofnew` FOREIGN KEY (`_author`) REFERENCES `ic_tb_users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ic_tb_threads`
--
ALTER TABLE `ic_tb_threads`
  ADD CONSTRAINT `ic_fk_authorofthread` FOREIGN KEY (`_author`) REFERENCES `ic_tb_users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ic_tb_users`
--
ALTER TABLE `ic_tb_users`
  ADD CONSTRAINT `ic_fk_roleofuser` FOREIGN KEY (`_role`) REFERENCES `ic_tb_roles` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
