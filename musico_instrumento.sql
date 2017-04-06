-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2017 a las 04:26:38
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musico_instrumento`
--

CREATE TABLE IF NOT EXISTS `musico_instrumento` (
  `id_musico` int(11) NOT NULL,
  `id_instrumento` int(11) NOT NULL,
  KEY `id_musico` (`id_musico`,`id_instrumento`),
  KEY `id_instrumento` (`id_instrumento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `musico_instrumento`
--
ALTER TABLE `musico_instrumento`
  ADD CONSTRAINT `musico_instrumento_ibfk_2` FOREIGN KEY (`id_musico`) REFERENCES `musico` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `musico_instrumento_ibfk_1` FOREIGN KEY (`id_instrumento`) REFERENCES `instrumento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
