-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2025 a las 19:04:48
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
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `observacion`) VALUES
(1, 'Escolar', 'Contiene utiles'),
(2, 'Viveres', 'Rubros'),
(3, 'Aseo personal', 'Aseos personales'),
(4, 'Bebidas', 'Bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `marca` varchar(25) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_base` double(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `marca`, `id_categoria`, `proveedor`, `fecha_vencimiento`, `cantidad`, `precio_base`) VALUES
(1001, 'Marcador', 'Pointer', 1, 'j-4040', NULL, 10, 57.50),
(1002, 'Harina Maiz', 'PAN', 2, 'j-4533', '2025-10-12', 15, 63.78),
(1003, 'Jabon Baño', NULL, 3, 'j-2025', '2026-11-12', 10, 27.50),
(1004, 'Lapiz', NULL, 1, 'j-4040', NULL, 150, 1.50),
(1005, 'Jabon liquido', NULL, 3, 'j-2025', '2030-05-14', 50, 36.00),
(1006, 'Malta', 'Maltin Polar', 4, 'j-4533', '2025-04-10', 60, 89.80),
(1007, 'Cafe', 'Amanecer', 1, 'j-2030', '2027-08-09', 400, 1.80),
(1008, 'Cereal', 'Maizoritos', 2, 'j-2031', '2025-10-02', 200, 2.50),
(1009, 'Enjuague bucal', 'Colgate', 3, 'j-4533', '2027-08-07', 340, 3.50),
(1010, 'Crema dental', 'Colgate', 3, 'j-4533', '2027-08-17', 640, 4.50),
(1011, 'Crema dental', 'Colgate', 3, 'j-4533', '2027-10-14', 640, 2.50),
(1012, 'Hilo dental', 'Colgate', 3, 'j-4533', '2026-06-09', 1540, 3.00),
(1013, 'Cepillo dental', 'Colgate', 3, 'j-4533', '2028-09-12', 154, 1.55),
(1014, 'Mortadela', 'El corral', 2, 'j-6253', '2026-07-08', 160, 4.50),
(1015, 'Nuggets de pollo', 'El corral', 2, 'j-6253', '2027-11-23', 190, 8.20),
(1016, 'Pollo', 'El corral', 2, 'j-6253', '2027-07-22', 340, 12.00),
(1017, 'Jamon', 'El corral', 2, 'j-6253', '2027-07-13', 140, 9.00),
(1018, 'Chorizo', 'El corral', 2, 'j-6253', '2025-12-12', 167, 9.80),
(1019, 'Mortadela', 'El corral', 2, 'j-6253', '2027-02-11', 65, 5.30),
(1020, 'Salchicha', 'El corral', 2, 'j-6253', '2026-02-21', 650, 5.20),
(1021, 'Salchicha de pollo', 'El corral', 2, 'j-6253', '2026-02-21', 350, 6.00),
(1022, 'Milanesa de pollo', 'El corral', 2, 'j-6253', '2026-10-24', 650, 10.50),
(1023, 'Boligrafo', 'Pointer', 1, 'j-4040', NULL, 2900, 0.80),
(1024, 'Caja colores', 'Marfil', 1, 'j-6255', NULL, 100, 12.20),
(1025, 'Mantequilla', 'Mavesa', 2, 'J-4533', '2026-11-15', 800, 2.50),
(1026, 'Mayonesa', 'Mavesa', 2, 'J-4533', '2026-03-12', 850, 1.20),
(1027, 'Aceite', 'Mazeite', 2, 'J-4533', '2026-04-15', 600, 3.20),
(1028, 'Arroz', 'Primor', 2, 'J-4533', '2026-06-15', 630, 1.40),
(1029, 'Margarina', 'Primor', 2, 'J-4533', '2026-06-15', 630, 2.30),
(1030, 'Pasta', 'Primor', 2, 'J-4533', '2027-12-15', 130, 3.30),
(1031, 'Salsa de tomate', 'Pampero', 2, 'J-4533', '2027-10-26', 140, 2.70),
(1032, 'Avena', 'Quaker', 2, 'j-4533', '2027-03-25', 740, 2.30),
(1033, 'Crema de arroz', 'Primor', 2, 'J-4533', '2027-11-15', 160, 4.30),
(1034, 'Atun', 'Margarita', 2, 'J-4533', '2027-11-15', 167, 6.20),
(1035, 'Vinagre', 'Mavesa', 2, 'J-4533', '2027-02-25', 160, 8.90),
(1036, 'Riquesa queso original', 'Riquesa', 2, 'J-4533', '2027-12-25', 300, 10.00),
(1037, 'Mezcla de cachapas', 'Pan', 2, 'J-4533', '2027-02-25', 100, 11.00),
(1038, 'Sardinas', 'Margarita', 2, 'J-4533', '2027-01-25', 145, 5.00),
(1039, 'Cerveza', 'Cerveza polar', 4, 'J-4533', '2027-11-04', 145, 16.50),
(1040, 'Jabon', 'Las llaves', 3, 'J-4533', '2030-11-12', 445, 1.30),
(1041, 'Suavizante', 'Las llaves', 2, 'J-4533', '2030-11-11', 455, 2.70),
(1042, 'Cereal', 'Choco Crispies', 2, 'J-1325', '2026-12-06', 200, 1.88),
(1043, 'Crema dental', 'Alive', 3, 'j-2025', '2030-11-11', 465, 1.70),
(1044, 'Jabon en polvo', 'Alive', 3, 'j-2025', '2030-03-11', 465, 3.60),
(1045, 'Desorodante', 'Alive', 3, 'j-2025', '2035-03-11', 405, 1.15),
(1046, 'Shampoo', 'Alive', 3, 'j-2025', '2035-05-11', 45, 7.00),
(1047, 'Acondicionador', 'Alive', 3, 'j-2025', '2033-05-11', 405, 7.10),
(1048, 'Crema corporal', 'Alive', 3, 'j-2025', '2027-05-11', 445, 3.10),
(1049, 'Toallas', 'Alive', 3, 'j-2025', '2027-11-11', 145, 2.10),
(1050, 'Cepillo dental', 'Alive', 3, 'j-2025', '2026-05-05', 225, 1.10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `rif` varchar(50) NOT NULL,
  `nombre_proveedor` varchar(25) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`rif`, `nombre_proveedor`, `direccion`) VALUES
('j-0023', 'DellaNonna', NULL),
('j-0235', 'La Pampa', NULL),
('j-1325', 'Kellogs company', NULL),
('j-2025', 'alive company internation', NULL),
('j-2030', 'Amanecer', NULL),
('j-2031', 'Alfonso Rivas & cia', NULL),
('j-2125', 'Palmolive', NULL),
('j-4040', 'Pointer', NULL),
('j-4533', 'Polar', NULL),
('j-6253', 'Protinal', NULL),
('j-6255', 'Marfil', NULL),
('j-8346', 'Doña Belen', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `proveedor` (`proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`rif`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`rif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
