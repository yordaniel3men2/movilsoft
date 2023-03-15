-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2023 a las 05:26:26
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundomovil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(10, 'Celulares'),
(11, 'Accesorios'),
(12, 'Bocinas'),
(13, 'Computadoras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(11, '►iPhone 11 Pro Max', 'Pantalla	\r\n6,5 pulgadas\r\n\r\nResolución	1242x2688 píxeles\r\nBatería	3.500 mAh \r\nMemoria RAM	6 GB\r\nMemoria interna	64/256/512 GB\r\nProcesador	A13 Bionic\r\nSistema operativo	iOS 13\r\nCámara principal (triple) 	12 MP +12 MP + 12 MP\r\nCámara frontal	12 MP', '30000.00', '28000.00', 25, '20220916083337.jpg', 10),
(12, '►Xiaomi Redmi Note 8 Pro', 'Pantalla	6,53 pulgadas\r\nResolución	\r\n1080 x 2340 píxeles\r\nBatería	4.500 mAh\r\nMemoria RAM	6 / 8 GB\r\nAlmacenamiento	64 / 128 GB\r\nProcesador	\r\nMediatek Helio G90T\r\nChip de video	Mali-G76MC4\r\nSistema operativo	Android 9.0\r\nCámara principal	64 + 8 + 2 + 2 MP\r\nCámara frontal	20 MP', '16000.00', '15000.00', 25, '20220916083753.jpg', 10),
(13, '►Samsung Galaxy S10+', 'Pantalla	6,4 pulgadas\r\nResolución	\r\n1440 x 3040 píxeles\r\nBatería	4.100 mAh\r\nMemoria RAM	8 / 12 GB\r\nAlmacenamiento	\r\n128 / 512 / 1.000 GB\r\nProcesador	\r\nExynos 9820 / Snapdragon 855\r\nChip de video	\r\nMali-G76 MP12 / Adreno 640\r\nSistema operativo	Android 9.0\r\nCámara principal	12 + 12 + 16 MP\r\nCámara frontal	10 + 8 MP', '15000.00', '14000.00', 15, '20220916083920.jpg', 10),
(15, 'Laptop Tecnomaster', 'M/XPS15R5B 15.6\" AMD Ryzen 5 3500U\r\nMemoria RAM\r\n8 GB\r\nVelocidad: 2400 MHz\r\nTipo de Disco Duro\r\nSSD\r\nAlmacenamiento en disco\r\n256 GB\r\nEntradas\r\nJack 3,5mm\r\nMemoria Micro SD\r\nMini HDMI\r\nUSB\r\nConectividad\r\nBluetooth\r\nWifi', '25000.00', '22000.00', 3, '20220916084454.jpg', 13),
(18, 'BOCINA COBY RECARGABLE 15\"', '+1.5,60W RMS, BLUETOOH, USB, INCLUYE - 001', '10000.00', '0.00', 15, '20220921073118.jpg', 12),
(19, 'BOCINA AIWA, DE 10\"', 'DE 10\", AMPLIFICADA, INCLUYE MICRÓFONO INALÁMBRICO, LUZ LED, BATERIA RECARGABLE, KARAOKE, BLUETOOTH, 200W RMS,, MP3, ENTRADA SD, RADIO FM', '15000.00', '13000.00', 10, '20220921073920.jpg', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Jordani peña', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
