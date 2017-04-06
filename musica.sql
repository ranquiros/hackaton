-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2017 a las 03:32:54
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumento`
--

CREATE TABLE `instrumento` (
  `id` int(10) NOT NULL,
  `nombre_instrumento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `instrumento`
--

INSERT INTO `instrumento` (`id`, `nombre_instrumento`) VALUES
(1, 'Guitarra'),
(2, 'Violin'),
(4, 'piano'),
(5, 'piano'),
(6, 'arpa'),
(7, 'arpa'),
(8, 'bateria'),
(9, 'bateria'),
(10, 'bajo'),
(11, 'bajo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musico`
--

CREATE TABLE `musico` (
  `Id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `genero` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `musico`
--
ALTER TABLE `musico`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `musico`
--
ALTER TABLE `musico`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
