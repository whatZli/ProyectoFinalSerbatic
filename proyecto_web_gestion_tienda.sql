-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2020 a las 01:37:34
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_web_gestion_tienda`
--
CREATE DATABASE IF NOT EXISTS `proyecto_web_gestion_tienda` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `proyecto_web_gestion_tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabecera_pedido`
--

CREATE TABLE `cabecera_pedido` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `num_pedido` int(11) NOT NULL,
  `importe_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `cabecera_pedido`
--

INSERT INTO `cabecera_pedido` (`id`, `id_cliente`, `num_pedido`, `importe_total`) VALUES
(116, 2, 1, 36),
(117, 1, 1, 88),
(119, 1, 1, 72),
(120, 1, 1, 46),
(121, 1, 1, 11),
(122, 1, 1, 50),
(123, 2, 1, 77),
(124, 2, 1, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_producto`
--

CREATE TABLE `categorias_producto` (
  `id` int(11) NOT NULL,
  `categoria` varchar(150) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `categorias_producto`
--

INSERT INTO `categorias_producto` (`id`, `categoria`) VALUES
(1, 'Hombre'),
(2, 'Mujer'),
(3, 'Unisex'),
(4, 'Niño'),
(5, 'Niña');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `puntos` int(11) NOT NULL,
  `saldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `id_persona`, `puntos`, `saldo`) VALUES
(1, 1, 94, 4938),
(2, 2, 52, 6896),
(3, 3, 43, 5466),
(4, 4, 100, 8144),
(5, 5, 39, 2748),
(6, 6, 68, 8515),
(7, 7, 63, 3991),
(8, 8, 38, 3662),
(9, 9, 38, 8156),
(10, 10, 54, 5335),
(11, 11, 88, 705),
(12, 12, 91, 49),
(13, 13, 35, 9129),
(14, 14, 48, 6104),
(15, 15, 46, 354),
(16, 16, 10, 6706),
(17, 17, 1, 5223),
(18, 18, 33, 4943),
(19, 19, 85, 6108),
(20, 20, 89, 4013),
(21, 21, 30, 6394),
(22, 22, 12, 860),
(23, 23, 53, 9274),
(24, 24, 18, 3656),
(25, 25, 57, 3389),
(26, 26, 53, 6572),
(27, 27, 91, 1047),
(28, 28, 32, 6031),
(29, 29, 89, 9560),
(30, 30, 25, 3089),
(31, 31, 5, 4170),
(32, 32, 83, 1159),
(33, 33, 74, 6365),
(34, 34, 36, 467),
(35, 35, 30, 1885),
(36, 36, 48, 4483),
(37, 37, 41, 1051),
(38, 38, 47, 5457),
(39, 39, 92, 1697),
(40, 40, 81, 8713),
(41, 41, 20, 3820),
(42, 42, 19, 364),
(43, 43, 61, 1367),
(44, 44, 100, 6468),
(45, 45, 22, 452),
(46, 46, 50, 2735),
(47, 47, 70, 1020),
(48, 48, 52, 5606),
(49, 49, 37, 3546),
(50, 50, 85, 18),
(51, 51, 11, 3518),
(52, 52, 8, 3223),
(53, 53, 22, 4385),
(54, 54, 6, 8701),
(55, 55, 11, 1513),
(56, 56, 51, 3108),
(57, 57, 46, 1282),
(58, 58, 1, 9722),
(59, 59, 85, 835),
(60, 60, 96, 863),
(61, 61, 67, 5440),
(62, 62, 96, 8663),
(63, 63, 11, 2853),
(64, 64, 9, 1309),
(65, 65, 28, 5656),
(66, 66, 35, 164),
(67, 67, 23, 4998),
(68, 68, 88, 1337),
(69, 69, 75, 2735),
(70, 70, 60, 4960),
(71, 71, 84, 5248),
(72, 72, 86, 4901),
(73, 73, 10, 5477),
(74, 74, 20, 1221),
(75, 75, 63, 6669),
(76, 76, 21, 9098),
(77, 77, 25, 5325),
(78, 78, 37, 9720),
(79, 79, 43, 8144),
(80, 80, 95, 4782),
(81, 81, 11, 1088),
(82, 82, 18, 6433),
(83, 83, 81, 2958),
(84, 84, 40, 1627),
(85, 85, 1, 6679),
(86, 86, 11, 6563),
(87, 87, 80, 8726),
(88, 88, 41, 3565),
(89, 89, 21, 8515),
(90, 90, 11, 6430),
(91, 91, 6, 7906),
(92, 92, 16, 6701),
(93, 93, 18, 1780),
(94, 94, 41, 7974),
(95, 95, 44, 8844),
(96, 96, 17, 4249),
(97, 97, 59, 8424),
(98, 98, 28, 6335),
(99, 99, 31, 6219),
(100, 100, 48, 2156);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total_linea` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `id_pedido`, `id_producto`, `cantidad`, `total_linea`) VALUES
(18, 116, 6, 1, 11),
(19, 116, 7, 1, 25),
(21, 117, 8, 1, 42),
(22, 117, 9, 1, 21),
(24, 119, 108, 1, 30),
(25, 119, 8, 1, 42),
(26, 120, 9, 1, 21),
(27, 120, 106, 1, 25),
(28, 121, 6, 1, 11),
(29, 122, 6, 1, 11),
(30, 122, 10, 1, 39),
(32, 123, 8, 1, 42),
(33, 124, 7, 1, 25),
(34, 124, 6, 1, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajeria`
--

CREATE TABLE `mensajeria` (
  `id` int(11) NOT NULL,
  `id_destinatario` int(11) NOT NULL,
  `id_origen` int(11) NOT NULL,
  `adjunto` blob DEFAULT NULL,
  `asunto` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `cuerpo` varchar(500) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_envio` varchar(20) COLLATE latin1_spanish_ci DEFAULT current_timestamp(),
  `leido` tinyint(1) NOT NULL,
  `contestado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `mensajeria`
--

INSERT INTO `mensajeria` (`id`, `id_destinatario`, `id_origen`, `adjunto`, `asunto`, `cuerpo`, `fecha_envio`, `leido`, `contestado`) VALUES
(36, 4, 4, NULL, '3', '3', NULL, 0, 0),
(37, 4, 3, NULL, 'Respuesta', 'Vale', NULL, 0, 0),
(38, 4, 3, NULL, 'Prueba mensaje', 'aaaa', NULL, 1, 1),
(39, 3, 4, NULL, 'Respuesta', 'vale', NULL, 1, 1),
(40, 4, 3, NULL, 'ook', 'ok', NULL, 0, 0),
(41, 4, 3, NULL, 'mensaje de prueba', 'mensaje de prueba', NULL, 1, 1),
(42, 3, 4, NULL, 'Vale', 'vale', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellido1` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellido2` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `dni` varchar(9) COLLATE latin1_spanish_ci NOT NULL,
  `pass` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `mail` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `tipo_persona` varchar(2) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_alta` date NOT NULL,
  `fecha_baja` date NOT NULL,
  `baja_logica` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido1`, `apellido2`, `dni`, `pass`, `mail`, `sexo`, `edad`, `tipo_persona`, `fecha_alta`, `fecha_baja`, `baja_logica`) VALUES
(1, 'Barclay', 'Reid', 'Howell', 'cn', 'p', 'ipsum.cursus@ante.ca', 'M', 36, 'CN', '2008-03-21', '2030-06-21', 1),
(2, 'Brody', 'Barker', 'Bartlett', 'cp', 'p', 'enim.Etiam.gravida@ante.ca', 'H', 56, 'CP', '2004-04-21', '2020-04-20', 1),
(3, 'Carla', 'Nicholson', 'Underwood', 'tc', 'p', 'Sed@sodaleselit.ca', 'H', 34, 'TC', '2005-03-20', '2010-05-21', 1),
(4, 'Adara', 'Whitley', 'Evans', 'tv', 'p', 'eu@ut.com', 'M', 59, 'TV', '2026-12-20', '2014-02-21', 1),
(5, 'Vaughan', 'Dunn', 'Atkinson', 'Q8K 6L3', '0', 'Donec.nibh@Aliquam.edu', 'H', 37, 'CN', '2012-05-20', '2004-07-20', 0),
(6, 'Omar', 'Dennis', 'Graham', 'L5F 3H2', '1', 'blandit.at@odioauctor.co.uk', ' ', 43, ' A', '2008-11-19', '2012-06-21', 0),
(7, 'Mara', 'Manning', 'Navarro', 'X2D 6Q9', '0', 'mi@tellusfaucibusleo.org', 'H', 44, ' T', '2006-07-21', '2001-12-19', 0),
(8, 'Jin', 'Clay', 'Koch', 'N0D 6E6', '1', 'mattis@aliquetmagna.com', ' ', 46, ' T', '2020-05-20', '2001-10-20', 1),
(9, 'Valentine', 'Floyd', 'Bolton', 'Y1Q 7O9', '0', 'sodales.at@mollisIntegertincidunt.ca', 'H', 58, ' A', '2007-12-19', '2028-08-20', 1),
(10, 'Darrel', 'Waters', 'Merrill', 'S0B 6W1', '0', 'amet.luctus.vulputate@nonantebibendum.net', ' ', 32, ' C', '2013-05-21', '2024-08-20', 0),
(11, 'Ivy', 'Perry', 'Briggs', 'F1V 9T0', '0', 'Aenean@sem.com', ' ', 26, ' T', '2022-09-20', '2009-02-21', 1),
(12, 'Rooney', 'Dale', 'Arnold', 'L5M 5M6', '0', 'Praesent.interdum@pellentesque.com', 'H', 43, ' A', '2016-12-19', '2030-08-19', 0),
(13, 'Clayton', 'Dillon', 'Howell', 'I6Y 2K8', '1', 'Nunc.sollicitudin@nuncacmattis.net', 'H', 33, 'CN', '2002-12-19', '2014-04-20', 0),
(14, 'Alisa', 'Chapman', 'Snider', 'M0C 8M0', '1', 'Cras@Donecfeugiat.edu', ' ', 49, ' T', '2008-06-20', '2015-09-20', 0),
(15, 'Benjamin', 'Blackwell', 'Holloway', 'U4B 7C0', '0', 'convallis.est@Donec.net', ' ', 50, ' C', '2019-08-19', '2015-03-21', 0),
(16, 'Zachary', 'Lara', 'Valencia', 'F7R 1Z5', '1', 'ipsum.leo.elementum@augueeutellus.com', 'H', 45, ' C', '2025-12-19', '2001-08-20', 0),
(17, 'Amal', 'Griffin', 'Whitehead', 'Z6J 9M7', '0', 'ligula.consectetuer@posuereatvelit.org', ' ', 69, 'CN', '2004-07-21', '2018-10-19', 0),
(18, 'Breanna', 'Jennings', 'Wong', 'V8Z 7M5', '0', 'orci@Fuscediam.net', 'H', 53, ' T', '2017-01-20', '2008-12-19', 1),
(19, 'Ronan', 'Lucas', 'Castro', 'M3Z 0B6', '0', 'Pellentesque.habitant.morbi@liberoest.org', 'H', 52, ' T', '2021-09-20', '2025-06-21', 0),
(20, 'Palmer', 'Mcpherson', 'Fernandez', 'V7Z 8I9', '1', 'orci.luctus.et@urna.edu', 'H', 43, ' C', '2020-01-21', '2017-12-19', 1),
(21, 'Fritz', 'Madden', 'Dejesus', 'W4C 1D2', '1', 'fermentum.metus@rutrum.net', 'H', 64, ' T', '2025-11-20', '2026-02-20', 1),
(22, 'Tallulah', 'Burnett', 'Kinney', 'M2P 1J5', '0', 'augue.ut@accumsan.ca', ' ', 53, ' C', '2020-09-20', '2009-06-20', 0),
(23, 'Hyatt', 'Ross', 'Sheppard', 'A7V 0E9', '1', 'Curabitur@hendreritaarcu.net', 'H', 56, 'CN', '2006-03-21', '2028-03-20', 1),
(24, 'Cody', 'Cline', 'Orr', 'A1A 2H4', '1', 'nec.mollis@lacusMaurisnon.edu', ' ', 34, ' T', '2018-02-20', '2023-03-20', 1),
(25, 'Clinton', 'Foreman', 'Odonnell', 'P4R 4U5', '1', 'laoreet.libero@sodalespurus.edu', 'H', 48, ' A', '2003-02-21', '2018-04-21', 1),
(26, 'Hadley', 'Nixon', 'Dennis', 'Y5K 3W9', '1', 'a.purus.Duis@enim.co.uk', 'H', 25, ' T', '2005-05-21', '2027-11-20', 1),
(27, 'Rahim', 'Estes', 'Pitts', 'R3A 4R9', '0', 'dictum@Etiamvestibulum.co.uk', 'H', 21, ' T', '2015-02-20', '2026-03-20', 1),
(28, 'Natalie', 'Harrell', 'Herring', 'K0J 3M6', '0', 'Fusce.feugiat@Craseget.ca', ' ', 59, ' A', '2005-03-20', '2010-10-20', 1),
(29, 'Phelan', 'Roth', 'Wright', 'S0B 3W7', '1', 'nonummy@Sed.co.uk', ' ', 46, ' T', '2020-09-20', '2030-07-19', 1),
(30, 'Alec', 'Mann', 'Moses', 'A6Q 2P0', '1', 'sapien.cursus.in@nuncestmollis.com', ' ', 62, ' T', '2014-06-20', '2004-09-20', 1),
(31, 'Martena', 'Gallagher', 'Day', 'T0N 2F7', '0', 'facilisis.eget@orci.net', ' ', 51, ' A', '2013-08-19', '2011-11-19', 1),
(32, 'Denton', 'Benton', 'Cannon', 'K3L 4P0', '0', 'iaculis.lacus@utmiDuis.org', 'H', 62, ' C', '2030-11-19', '2030-04-20', 1),
(33, 'Clarke', 'Hayden', 'Delgado', 'W9C 6B9', '1', 'Donec@diamdictum.org', 'H', 32, ' C', '2012-08-19', '2002-11-20', 0),
(34, 'Fuller', 'Bass', 'Foreman', 'Q2Q 7W9', '1', 'gravida@liberoMorbi.ca', ' ', 47, ' A', '2030-09-19', '2019-03-20', 1),
(35, 'Jermaine', 'Rivers', 'Whitfield', 'D6N 9U4', '1', 'Vivamus.euismod@varius.ca', 'H', 43, 'CN', '2005-12-19', '2011-04-20', 1),
(36, 'Nichole', 'Joyce', 'Clemons', 'L4D 7P7', '0', 'tempor@Phasellusin.edu', ' ', 28, ' A', '2027-06-20', '2013-06-21', 0),
(37, 'Maia', 'Dickson', 'Johns', 'O1P 4E8', '0', 'In.scelerisque@Utnecurna.co.uk', 'H', 41, ' A', '2022-04-21', '2013-05-21', 1),
(38, 'Harrison', 'Roy', 'Olson', 'K1A 7K2', '0', 'egestas.ligula.Nullam@scelerisquescelerisque.net', ' ', 62, 'CN', '2027-01-20', '2016-02-20', 0),
(39, 'Uta', 'Sampson', 'Wolfe', 'Q3H 1S1', '0', 'id.enim@ligula.ca', ' ', 23, ' A', '2001-02-20', '2015-11-19', 1),
(40, 'Nina', 'Delgado', 'William', 'D1Y 7Q3', '0', 'sem.consequat.nec@aliquetmagna.co.uk', 'H', 23, 'CN', '2005-10-19', '2021-04-21', 1),
(41, 'Hunter', 'Moses', 'Cross', 'D7N 2I2', '0', 'gravida.sit.amet@et.co.uk', 'H', 58, ' C', '2001-02-20', '2001-10-20', 1),
(42, 'Amery', 'Murray', 'Mckee', 'Y7U 6Y0', '1', 'magna.Ut.tincidunt@eget.org', ' ', 64, 'CN', '2030-05-21', '2002-06-21', 0),
(43, 'Noel', 'Cook', 'Faulkner', 'K4T 6N6', '1', 'fringilla.porttitor.vulputate@lorem.co.uk', ' ', 59, ' T', '2029-08-20', '2008-04-21', 1),
(44, 'Maia', 'Skinner', 'Dawson', 'L4T 2D7', '0', 'ante.lectus@Fuscemi.co.uk', ' ', 50, ' T', '2015-01-21', '2002-06-20', 0),
(45, 'Noelle', 'Montgomery', 'Bryan', 'J7F 5W6', '1', 'augue.Sed.molestie@nislelementum.ca', 'H', 31, 'CN', '2017-09-20', '2019-04-20', 0),
(46, 'Maggy', 'Stein', 'Fisher', 'F0Q 4T9', '1', 'Nullam.velit.dui@sodalesatvelit.net', ' ', 60, ' T', '2029-11-19', '2012-09-19', 1),
(47, 'Coby', 'Gomez', 'Fry', 'M4Y 7S1', '0', 'mauris.aliquam@dolor.net', 'H', 48, ' A', '2006-07-21', '2011-02-21', 1),
(48, 'Gage', 'Caldwell', 'Bolton', 'Q2F 7E4', '1', 'malesuada.fames.ac@velsapienimperdiet.org', 'H', 20, ' A', '2026-05-21', '2006-07-20', 1),
(49, 'April', 'Garrison', 'Frank', 'K3I 2F6', '0', 'accumsan.neque@Proinvel.com', ' ', 18, ' C', '2027-02-20', '2026-03-21', 0),
(50, 'Reed', 'Cannon', 'Faulkner', 'W0W 2S1', '0', 'leo.Vivamus.nibh@ultricesVivamusrhoncus.co.uk', ' ', 61, ' C', '2015-11-19', '2004-08-20', 1),
(51, 'Kane', 'Wade', 'Ruiz', 'N1P 4R7', '0', 'fermentum.convallis@molestieorci.ca', 'H', 51, ' C', '2006-01-20', '2030-07-19', 0),
(52, 'Joshua', 'Owens', 'Mayo', 'S2N 3H5', '1', 'pede.blandit@elitafeugiat.org', ' ', 24, ' T', '2014-09-20', '2004-03-20', 0),
(53, 'Amelia', 'Vargas', 'Crawford', 'C1U 8B6', '0', 'luctus.lobortis@nulla.ca', 'H', 51, 'CN', '2012-03-20', '2019-07-20', 1),
(54, 'Nayda', 'Acevedo', 'Cash', 'D5I 3A9', '0', 'dui@pharetra.com', 'H', 37, 'CN', '2008-10-19', '2017-01-21', 0),
(55, 'Stacy', 'Mcleod', 'Jacobson', 'G5N 3D9', '1', 'nonummy.ultricies@Suspendissenon.ca', 'H', 41, ' A', '2007-06-20', '2016-03-20', 1),
(56, 'Lamar', 'Boyd', 'Adkins', 'N5S 5U9', '0', 'nec.malesuada.ut@sit.net', ' ', 42, ' A', '2018-11-20', '2002-09-20', 1),
(57, 'Leonard', 'Patrick', 'Walton', 'O7Z 6P1', '1', 'Suspendisse.commodo.tincidunt@indolor.co.uk', ' ', 36, 'CN', '2011-07-20', '2024-12-20', 1),
(58, 'Dara', 'Perkins', 'Harmon', 'H5I 6G3', '0', 'Mauris.vel.turpis@egestasrhoncus.ca', 'H', 34, ' T', '2030-12-19', '2021-10-20', 1),
(59, 'Edan', 'Sampson', 'Rollins', 'K5Q 3M5', '1', 'lacus@metus.net', ' ', 69, ' T', '2031-07-20', '2030-10-19', 0),
(60, 'Vaughan', 'Howard', 'Gilmore', 'C3N 9V9', '0', 'molestie@Intinciduntcongue.net', ' ', 21, ' T', '2026-08-20', '2026-12-19', 1),
(61, 'Colby', 'Watson', 'Talley', 'M6J 2C4', '0', 'fringilla.Donec@suscipitnonummy.org', ' ', 59, ' A', '2029-10-20', '2020-08-19', 0),
(62, 'Mia', 'Mckenzie', 'Hansen', 'W1W 3B7', '0', 'adipiscing@leoCras.edu', ' ', 45, ' T', '2023-12-19', '2030-12-20', 1),
(63, 'Basia', 'Mcintyre', 'Francis', 'X6J 9B4', '0', 'Phasellus.dolor@ProinvelitSed.edu', 'H', 56, ' A', '2027-01-20', '2019-07-20', 0),
(64, 'Timon', 'Moody', 'Guerrero', 'G2B 7Z2', '0', 'Fusce.mi@urna.org', ' ', 48, 'CN', '2001-06-20', '2029-09-19', 0),
(65, 'Quintessa', 'Mcguire', 'Pate', 'U5V 5W7', '1', 'lectus@adipiscingligula.com', 'H', 29, ' T', '2021-04-20', '2031-05-21', 0),
(66, 'Jerry', 'Nixon', 'Winters', 'D2K 1X5', '0', 'vehicula.risus@sitametrisus.ca', ' ', 27, ' T', '2015-05-20', '2029-05-21', 1),
(67, 'Shaine', 'Oneal', 'Gillespie', 'B6H 0N5', '0', 'cursus.a@Morbinequetellus.com', ' ', 46, ' C', '2029-03-20', '2030-05-20', 1),
(68, 'Victor', 'Park', 'Pena', 'Z5H 1B4', '0', 'justo.nec.ante@Etiam.net', 'H', 19, ' T', '2031-05-21', '2028-11-19', 0),
(69, 'Joelle', 'Terry', 'Massey', 'D9S 1V7', '0', 'gravida.sit.amet@elementumdui.edu', 'H', 39, 'CN', '2012-08-20', '2023-06-21', 1),
(70, 'Shaine', 'Guerrero', 'Miranda', 'Q4K 5R0', '1', 'montes.nascetur.ridiculus@massaMaurisvestibulum.co', 'H', 59, ' T', '2006-10-19', '2012-01-21', 1),
(71, 'Illiana', 'Garner', 'Langley', 'C6L 9O9', '0', 'placerat.velit.Quisque@amet.ca', ' ', 27, ' T', '2021-11-20', '2030-10-20', 1),
(72, 'Gwendolyn', 'Doyle', 'Ware', 'U6G 8G3', '0', 'Nullam@loremeget.com', ' ', 67, ' T', '2018-07-19', '2025-01-21', 1),
(73, 'Renee', 'Colon', 'Pollard', 'H9Z 0Z6', '0', 'mi@etultricesposuere.edu', 'H', 34, ' C', '2006-11-20', '2014-03-21', 0),
(74, 'Valentine', 'Mckay', 'Fischer', 'M1O 1Q8', '1', 'erat@egetipsum.net', ' ', 62, ' C', '2017-06-20', '2006-03-21', 0),
(75, 'Daria', 'Wong', 'Johnston', 'P2X 9O9', '0', 'Praesent.eu@Duiselementumdui.net', 'H', 29, ' T', '2024-06-21', '2006-06-21', 1),
(76, 'Stone', 'Atkinson', 'Joseph', 'S2X 5T9', '0', 'lectus.pede@dictummi.ca', 'H', 58, 'CN', '2015-03-20', '2017-10-19', 0),
(77, 'Erin', 'Chan', 'Gillespie', 'Z1I 9G5', '0', 'fermentum@sedleo.co.uk', ' ', 43, ' C', '2011-07-19', '2026-02-20', 1),
(78, 'Jack', 'Gonzales', 'Hardin', 'V1O 7X7', '0', 'et@Lorem.com', 'H', 59, 'CN', '2029-03-21', '2007-07-21', 0),
(79, 'Bernard', 'Sullivan', 'Medina', 'D9X 5V9', '0', 'Mauris.ut@accumsaninterdumlibero.edu', 'H', 42, ' A', '2005-01-20', '2014-06-21', 0),
(80, 'Nora', 'Logan', 'Mathews', 'W6S 6M9', '1', 'eleifend@netusetmalesuada.edu', 'H', 18, ' T', '2001-07-20', '2018-09-20', 1),
(81, 'Uriel', 'Williamson', 'Robinson', 'L3X 5Y9', '0', 'pellentesque.a.facilisis@malesuadafringillaest.org', 'H', 68, 'CN', '2003-01-20', '2011-02-21', 1),
(82, 'Noah', 'Horne', 'Ball', 'F1O 2X5', '0', 'Donec.fringilla.Donec@duinec.org', ' ', 62, ' A', '2019-12-19', '2007-07-20', 0),
(83, 'Raymond', 'Salas', 'Pratt', 'N2H 6S2', '1', 'Donec.est.Nunc@Donec.co.uk', ' ', 38, 'CN', '2013-06-21', '2030-05-21', 0),
(84, 'Allen', 'Cruz', 'Mathis', 'X6B 3T4', '0', 'dis.parturient@amet.net', ' ', 56, ' A', '2021-04-20', '2029-07-20', 0),
(85, 'Freya', 'Logan', 'Horn', 'H3Q 2B0', '1', 'nisi.a@inmolestie.org', 'H', 26, 'CN', '2010-02-20', '2008-11-20', 0),
(86, 'Sybil', 'Mann', 'Lawson', 'R7K 5B3', '1', 'Quisque.imperdiet@magna.org', 'H', 39, 'CN', '2018-11-19', '2001-07-21', 1),
(87, 'Leila', 'Robles', 'Brown', 'P8Z 6G3', '1', 'tincidunt.pede.ac@egestasadui.com', 'H', 33, ' T', '2013-02-21', '2026-12-20', 0),
(88, 'Sean', 'White', 'Weeks', 'T6O 0W0', '0', 'velit.eu.sem@vulputate.org', 'H', 54, ' T', '2001-09-19', '2029-06-20', 0),
(89, 'Dillon', 'Rollins', 'Madden', 'C1M 5Q8', '0', 'vitae.semper.egestas@rutrumnon.net', ' ', 28, ' C', '2004-03-21', '2010-06-20', 1),
(90, 'Fulton', 'Hill', 'Hendricks', 'W5T 8S2', '1', 'Aenean.eget@fringillaDonec.net', 'H', 58, ' T', '2023-05-20', '2022-10-20', 1),
(91, 'Eleanor', 'Keith', 'Craig', 'M1A 5Z7', '1', 'dapibus@nunc.co.uk', ' ', 42, ' C', '2007-05-20', '2031-07-20', 0),
(92, 'Yen', 'Durham', 'Atkinson', 'D1U 9O8', '0', 'feugiat.placerat@dolornonummyac.net', 'H', 66, 'CN', '2011-01-20', '2007-07-20', 0),
(93, 'Connor', 'Richard', 'Schultz', 'A9U 5B3', '1', 'faucibus.leo@ultrices.org', ' ', 60, ' T', '2010-04-21', '2002-02-21', 1),
(94, 'Barclay', 'Booker', 'Blackwell', 'U8W 2E7', '0', 'Donec@malesuadafamesac.com', 'H', 47, ' T', '2024-03-21', '2007-06-21', 0),
(95, 'Savannah', 'Clements', 'Lester', 'V7S 8I0', '1', 'Aenean.gravida@faucibusorci.org', 'H', 19, ' T', '2015-12-19', '2013-06-20', 0),
(96, 'Wilma', 'Sampson', 'Higgins', 'S7E 8E1', '1', 'ullamcorper.viverra@arcu.co.uk', ' ', 45, ' C', '2029-12-19', '2019-09-19', 1),
(97, 'McKenzie', 'James', 'Houston', 'D3X 7H1', '0', 'placerat.velit@Nunclectuspede.org', 'H', 34, 'CN', '2030-06-21', '2004-10-20', 0),
(98, 'Kenneth', 'Villarreal', 'Thornton', 'I4Z 2C4', '1', 'elit.a@orciPhasellusdapibus.co.uk', 'H', 38, 'CN', '2027-10-19', '2029-05-20', 1),
(99, 'Ima', 'Sellers', 'Bennett', 'Z1G 6I7', '1', 'lorem.ipsum.sodales@Nullamlobortisquam.co.uk', ' ', 67, ' C', '2010-07-19', '2013-11-20', 0),
(100, 'Lucius', 'Burks', 'Mcmillan', 'G4N 1C3', '0', 'ac.fermentum@congueInscelerisque.net', ' ', 24, ' T', '2024-11-20', '2025-05-21', 0),
(102, 'admin', 'admin', 'admin', 'admin', 'p', 'admin@gmail.com', 'H', 22, 'AD', '2020-07-24', '2020-07-24', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio_unitario_sin_iva` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `canjeable` tinyint(1) NOT NULL,
  `descuento` tinyint(4) NOT NULL,
  `ruta_imagen` varchar(500) COLLATE latin1_spanish_ci NOT NULL,
  `borrado_logico` tinyint(1) NOT NULL,
  `categorias_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `descripcion`, `precio_unitario_sin_iva`, `stock`, `canjeable`, `descuento`, `ruta_imagen`, `borrado_logico`, `categorias_producto`) VALUES
(6, 'Jordan camiseta Jumpman Air\r\n', 11, 88, 0, 55, 'https://i8.amplience.net/i/jpl/jd_354271_a?qlt=92&w=750&h=957&v=1&fmt=webp', 1, 4),
(7, 'Nike camiseta NBA\r\n', 25, 22, 0, 1, 'https://i8.amplience.net/i/jpl/jd_354267_a?qlt=92&w=750&h=957&v=1&fmt=webp', 1, 4),
(8, 'Adidas pantalón corto Basketball Dri-FIT\r\n', 42, 29, 0, 12, 'https://i8.amplience.net/i/jpl/jd_165732_a?qlt=92&w=750&h=957&v=1&fmt=webp', 0, 1),
(9, 'The North Face camiseta Simple Dome\r\n', 21, 66, 1, 1, 'https://i8.amplience.net/i/jpl/jd_340536_a?qlt=92&w=750&h=957&v=1&fmt=webp', 0, 3),
(10, 'Nike pantalón corto Basketball Dri-FIT\r\n', 39, 54, 0, 20, 'https://i8.amplience.net/i/jpl/jd_370535_a?qlt=92&w=750&h=957&v=1&fmt=webp', 1, 2),
(105, 'Nike camiseta NBA', 35, 3, 0, 14, 'https://i8.amplience.net/i/jpl/jd_131980_a?qlt=92&w=750&h=957&v=1&fmt=webp', 0, 2),
(106, 'Jordan camiseta Jumpman Air', 25, 1, 0, 24, 'https://i8.amplience.net/i/jpl/jd_369841_c?qlt=92&w=750&h=957&v=1&fmt=webp', 0, 3),
(107, 'Jordan camiseta Jumpman Air', 35, 3, 0, 26, 'https://i8.amplience.net/i/jpl/jd_369844_a?qlt=92&w=750&h=957&v=1&fmt=webp', 0, 3),
(108, 'Nike pantalón de chándal Hybrid', 30, 4, 0, 50, 'https://i8.amplience.net/i/jpl/jd_340758_a?qlt=92&w=750&h=957&v=1&fmt=webp', 0, 1),
(114, 'Fila pantalón corto Mesh Basketball', 33, 122, 0, 15, 'https://i8.amplience.net/i/jpl/jd_363408_a?qlt=92&w=750&h=957&v=1&fmt=webp', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `id` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `user` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`id`, `id_persona`, `user`, `salario`) VALUES
(1, 1, 'user', 1717),
(2, 2, 'user', 1134),
(3, 3, 'user', 1133),
(4, 4, 'user', 1137),
(5, 5, 'user', 1055),
(6, 6, 'user', 1862),
(7, 7, 'user', 2433),
(8, 8, 'user', 2617),
(9, 9, 'user', 1865),
(10, 10, 'user', 2841),
(11, 11, 'user', 1825),
(12, 12, 'user', 3013),
(13, 13, 'user', 3014),
(14, 14, 'user', 3054),
(15, 15, 'user', 1863),
(16, 16, 'user', 1489),
(17, 17, 'user', 1626),
(18, 18, 'user', 2754),
(19, 19, 'user', 1408),
(20, 20, 'user', 3340),
(21, 21, 'user', 1912),
(22, 22, 'user', 2693),
(23, 23, 'user', 3081),
(24, 24, 'user', 3499),
(25, 25, 'user', 2396),
(26, 26, 'user', 2579),
(27, 27, 'user', 1011),
(28, 28, 'user', 1941),
(29, 29, 'user', 3331),
(30, 30, 'user', 2093),
(31, 31, 'user', 1958),
(32, 32, 'user', 1729),
(33, 33, 'user', 2072),
(34, 34, 'user', 2526),
(35, 35, 'user', 2649),
(36, 36, 'user', 1195),
(37, 37, 'user', 1929),
(38, 38, 'user', 2195),
(39, 39, 'user', 1057),
(40, 40, 'user', 3371),
(41, 41, 'user', 1131),
(42, 42, 'user', 1301),
(43, 43, 'user', 2260),
(44, 44, 'user', 2679),
(45, 45, 'user', 2663),
(46, 46, 'user', 1460),
(47, 47, 'user', 1128),
(48, 48, 'user', 1540),
(49, 49, 'user', 3254),
(50, 50, 'user', 2156),
(51, 51, 'user', 1067),
(52, 52, 'user', 1293),
(53, 53, 'user', 2976),
(54, 54, 'user', 2794),
(55, 55, 'user', 3400),
(56, 56, 'user', 3112),
(57, 57, 'user', 2842),
(58, 58, 'user', 3250),
(59, 59, 'user', 2075),
(60, 60, 'user', 2030),
(61, 61, 'user', 2614),
(62, 62, 'user', 2442),
(63, 63, 'user', 1737),
(64, 64, 'user', 3355),
(65, 65, 'user', 2940),
(66, 66, 'user', 2112),
(67, 67, 'user', 2842),
(68, 68, 'user', 2875),
(69, 69, 'user', 2161),
(70, 70, 'user', 3309),
(71, 71, 'user', 1257),
(72, 72, 'user', 2172),
(73, 73, 'user', 2509),
(74, 74, 'user', 3051),
(75, 75, 'user', 1073),
(76, 76, 'user', 3467),
(77, 77, 'user', 2056),
(78, 78, 'user', 3208),
(79, 79, 'user', 2215),
(80, 80, 'user', 2368),
(81, 81, 'user', 1721),
(82, 82, 'user', 3461),
(83, 83, 'user', 2714),
(84, 84, 'user', 2099),
(85, 85, 'user', 1586),
(86, 86, 'user', 2984),
(87, 87, 'user', 1944),
(88, 88, 'user', 2085),
(89, 89, 'user', 2725),
(90, 90, 'user', 2909),
(91, 91, 'user', 3122),
(92, 92, 'user', 2505),
(93, 93, 'user', 1774),
(94, 94, 'user', 1039),
(95, 95, 'user', 3227),
(96, 96, 'user', 2337),
(97, 97, 'user', 3062),
(98, 98, 'user', 2236),
(99, 99, 'user', 1985),
(100, 100, 'user', 2703);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones_productos`
--

CREATE TABLE `valoraciones_productos` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `valoracion` enum('1','2','3','4','5','6','7','8','9','10') COLLATE latin1_spanish_ci NOT NULL,
  `comentarios` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `valoraciones_productos`
--

INSERT INTO `valoraciones_productos` (`id`, `id_producto`, `valoracion`, `comentarios`) VALUES
(0, 6, '9', 'Producto de primera calidad'),
(7, 6, '4', 'asdasdasdasd'),
(8, 8, '6', 'aaaaa'),
(9, 8, '8', 'Muy buen pantalón'),
(10, 8, '8', 'Muy buen pantalón'),
(11, 9, '10', 'Perfecto!!'),
(12, 7, '6', 'Calidad regular');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cabecera_pedido`
--
ALTER TABLE `cabecera_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `categorias_producto`
--
ALTER TABLE `categorias_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `mensajeria`
--
ALTER TABLE `mensajeria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_origen` (`id_origen`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_persona` (`tipo_persona`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `valoraciones_productos`
--
ALTER TABLE `valoraciones_productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cabecera_pedido`
--
ALTER TABLE `cabecera_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `categorias_producto`
--
ALTER TABLE `categorias_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `mensajeria`
--
ALTER TABLE `mensajeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `valoraciones_productos`
--
ALTER TABLE `valoraciones_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cabecera_pedido`
--
ALTER TABLE `cabecera_pedido`
  ADD CONSTRAINT `cabecera_pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `cabecera_pedido` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mensajeria`
--
ALTER TABLE `mensajeria`
  ADD CONSTRAINT `mensajeria_ibfk_1` FOREIGN KEY (`id_origen`) REFERENCES `personas` (`id`);

--
-- Filtros para la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD CONSTRAINT `trabajadores_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
