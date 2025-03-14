-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2025 a las 19:20:35
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`codigo`, `nombre`, `apellido`) VALUES
(1, 'Stephen', 'King'),
(2, 'William', 'Stallings'),
(3, 'Jesus', 'Carretero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `residencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cedula`, `nombre`, `apellido`, `telefono`, `correo_electronico`, `residencia`) VALUES
(31395567, 'Daniela', 'torres', NULL, NULL, 'valencia'),
(31456422, 'Jesus', 'Marin', NULL, NULL, 'valencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `rif` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `fecha_publicacion` date NOT NULL,
  `direccion_fiscal` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`rif`, `nombre`, `telefono`, `correo_electronico`, `fecha_publicacion`, `direccion_fiscal`) VALUES
('j-1111', 'Herder MX', '512-654', NULL, '2002-12-14', '2001'),
('j-1234', 'PEARSON', '512-456', 'pearson@gmail.com', '2002-02-25', '2000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `codigo` int(11) NOT NULL,
  `cedula_cliente` int(11) DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`codigo`, `cedula_cliente`, `fecha_emision`) VALUES
(1, 31456422, '2025-02-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_libro`
--

CREATE TABLE `factura_libro` (
  `codigo_libro` int(11) NOT NULL,
  `codigo_factura` int(11) NOT NULL,
  `forma_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura_libro`
--

INSERT INTO `factura_libro` (`codigo_libro`, `codigo_factura`, `forma_pago`) VALUES
(1, 1, 3),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE `forma_pago` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `forma_pago`
--

INSERT INTO `forma_pago` (`codigo`, `nombre`) VALUES
(1, 'Efectivo Bolivares'),
(2, 'Pago Movil'),
(3, 'Divisa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `codigo` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `codigo_seccion` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double(5,2) NOT NULL,
  `fecha_llegada` date NOT NULL,
  `rif_editorial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`codigo`, `titulo`, `descripcion`, `codigo_seccion`, `cantidad`, `precio`, `fecha_llegada`, `rif_editorial`) VALUES
(1, 'Redes de computadoras', 'aprendizaje sobre la comunicacion entre los dispos', 1, 8, 20.70, '2020-05-06', 'j-1234'),
(2, 'resplandor', NULL, 2, 5, 15.70, '2015-02-15', 'j-1111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_autor`
--

CREATE TABLE `libro_autor` (
  `codigo` int(11) NOT NULL,
  `codigo_autor` int(11) NOT NULL,
  `codigo_libro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro_autor`
--

INSERT INTO `libro_autor` (`codigo`, `codigo_autor`, `codigo_libro`) VALUES
(1, 2, 1),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`codigo`, `nombre`) VALUES
(1, 'Tecnologia'),
(2, 'Suspenso'),
(3, 'Educacion'),
(4, 'Fantasia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`rif`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_cliente` (`cedula_cliente`);

--
-- Indices de la tabla `factura_libro`
--
ALTER TABLE `factura_libro`
  ADD KEY `codigo_libro` (`codigo_libro`),
  ADD KEY `codigo_factura` (`codigo_factura`),
  ADD KEY `fk_forma_pago` (`forma_pago`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `rif_editorial` (`rif_editorial`),
  ADD KEY `codigo_seccion` (`codigo_seccion`);

--
-- Indices de la tabla `libro_autor`
--
ALTER TABLE `libro_autor`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `codigo_autor` (`codigo_autor`),
  ADD KEY `codigo_libro` (`codigo_libro`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`codigo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`cedula_cliente`) REFERENCES `cliente` (`cedula`);

--
-- Filtros para la tabla `factura_libro`
--
ALTER TABLE `factura_libro`
  ADD CONSTRAINT `factura_libro_ibfk_1` FOREIGN KEY (`codigo_libro`) REFERENCES `libro` (`codigo`),
  ADD CONSTRAINT `factura_libro_ibfk_2` FOREIGN KEY (`codigo_factura`) REFERENCES `factura` (`codigo`),
  ADD CONSTRAINT `fk_forma_pago` FOREIGN KEY (`forma_pago`) REFERENCES `forma_pago` (`codigo`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`rif_editorial`) REFERENCES `editorial` (`rif`),
  ADD CONSTRAINT `libro_ibfk_4` FOREIGN KEY (`codigo_seccion`) REFERENCES `seccion` (`codigo`);

--
-- Filtros para la tabla `libro_autor`
--
ALTER TABLE `libro_autor`
  ADD CONSTRAINT `libro_autor_ibfk_2` FOREIGN KEY (`codigo_autor`) REFERENCES `autores` (`codigo`),
  ADD CONSTRAINT `libro_autor_ibfk_3` FOREIGN KEY (`codigo_libro`) REFERENCES `libro` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
