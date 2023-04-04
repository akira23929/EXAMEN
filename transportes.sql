-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2023 a las 03:56:31
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transportes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro`
--

CREATE TABLE `carro` (
  `id_auto` int(11) NOT NULL,
  `modelo` varchar(20) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `anio` date NOT NULL,
  `pasajeros` int(1) NOT NULL,
  `color` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carro`
--

INSERT INTO `carro` (`id_auto`, `modelo`, `anio`, `pasajeros`, `color`) VALUES
(1, 'Aveo', '2020-03-28', 5, 'Rojo'),
(2, 'Sedan', '0000-00-00', 5, 'Gris'),
(3, 'Chevy', '2014-03-08', 4, 'Rojo'),
(4, 'Sedan', '2022-03-08', 5, 'Negro'),
(5, 'Yaris', '2022-03-08', 4, 'Azul'),
(6, 'March', '2023-01-08', 5, 'blanco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chofer`
--

CREATE TABLE `chofer` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `transporte` int(11) NOT NULL,
  `turno` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `chofer`
--

INSERT INTO `chofer` (`id`, `nombre`, `apellido`, `fecha`, `transporte`, `turno`) VALUES
(1, 'Alfredo', 'Benites', '2019-03-08 17:02:32', 1, 1),
(2, 'Alberto', 'Caceres', '2021-03-08 17:02:32', 1, 0),
(3, 'Gustavo', 'Pérez', '2023-03-08 17:05:00', 2, 0),
(4, 'Gabriel', 'Polanco', '2023-03-08 17:05:00', 2, 1),
(5, 'Gerardo', 'Peña', '2020-06-08 17:06:12', 3, 1),
(6, 'José', 'Pérez', '2020-11-10 17:06:12', 3, 0),
(7, 'Gerardo', 'Ancona', '2023-03-08 17:08:03', 4, 1),
(8, 'Santiago', 'Dávila', '2023-03-08 17:08:03', 4, 0),
(9, 'Erick', 'Munguía', '2018-11-18 17:08:56', 5, 0),
(10, 'Fernando', 'Poot', '2017-05-22 17:08:56', 5, 1),
(11, 'Huan', 'Euan', '0000-00-00 00:00:00', 0, 0),
(13, 'Jesus', 'Chacon', '0000-00-00 00:00:00', 0, 0),
(15, 'Miguel', 'Quijano', '2023-02-27 00:00:00', 5, 1),
(16, '', '', '0000-00-00 00:00:00', 0, 0),
(17, 'erika', 'franco', '0000-00-00 00:00:00', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carro`
--
ALTER TABLE `carro`
  ADD UNIQUE KEY `id_auto` (`id_auto`);

--
-- Indices de la tabla `chofer`
--
ALTER TABLE `chofer`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carro`
--
ALTER TABLE `carro`
  MODIFY `id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `chofer`
--
ALTER TABLE `chofer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
