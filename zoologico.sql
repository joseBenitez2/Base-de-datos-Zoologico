-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2024 a las 01:48:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zoologico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidadores`
--

CREATE TABLE `cuidadores` (
  `ID_cuidadores` int(5) NOT NULL,
  `Nombre_cuidadores` varchar(100) DEFAULT NULL,
  `Direccion_cuidadores` varchar(100) DEFAULT NULL,
  `Telefono_cuidadores` varchar(100) DEFAULT NULL,
  `Fecha_ingreso` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuidadores`
--

INSERT INTO `cuidadores` (`ID_cuidadores`, `Nombre_cuidadores`, `Direccion_cuidadores`, `Telefono_cuidadores`, `Fecha_ingreso`) VALUES
(1, 'María Pérez', 'Carrera 7 #45-89, Bogotá', '3133350948', '2021-06-15 00:00:00'),
(2, 'Juan Rodríguez', 'Calle 100 #15-30, Bogotá', '3153443997', '2020-03-10 00:00:00'),
(3, 'Luisa Gómez', 'Avenida Suba #127-45, Bogotá', '3215869742', '2019-12-01 00:00:00'),
(4, 'Ana Morales', 'Carrera 13 #93-56, Bogotá', '3218567495', '2023-02-14 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `ID_especies` int(5) NOT NULL,
  `Nombre_cientifico` varchar(100) DEFAULT NULL,
  `Descripcion_general` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`ID_especies`, `Nombre_cientifico`, `Descripcion_general`) VALUES
(1, 'Panthera leo', 'Un gran felino conocido como el rey de la selva.'),
(2, 'Balaenoptera musculus', 'El animal más grande del planeta, conocido como la ballena azul.'),
(3, 'Elephas maximus', 'El elefante asiático, un mamífero terrestre de gran tamaño con una trompa larga.'),
(4, 'Ailuropoda melanoleuca', 'El panda gigante, conocido por su pelaje blanco y negro y su dieta a base de bambú.'),
(5, 'Chelonia mydas', 'La tortuga verde, una especie marina que habita en aguas tropicales y subtropicales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies_cuidadores`
--

CREATE TABLE `especies_cuidadores` (
  `ID_cuidadores3` int(5) DEFAULT NULL,
  `ID_especies3` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies_habitats`
--

CREATE TABLE `especies_habitats` (
  `ID_especies1` int(5) DEFAULT NULL,
  `ID_habitats1` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies_zonas`
--

CREATE TABLE `especies_zonas` (
  `ID_zonas2` int(5) DEFAULT NULL,
  `ID_especies2` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias`
--

CREATE TABLE `guias` (
  `ID_Guias` int(5) NOT NULL,
  `Nombre_guia` varchar(100) DEFAULT NULL,
  `Direccion_guia` varchar(100) DEFAULT NULL,
  `Telefono_guia` varchar(100) DEFAULT NULL,
  `Fecha_ingreso_G` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guias`
--

INSERT INTO `guias` (`ID_Guias`, `Nombre_guia`, `Direccion_guia`, `Telefono_guia`, `Fecha_ingreso_G`) VALUES
(1, 'Laura', 'Calle 72', '3201234567', '2021-05-20 08:00:00'),
(2, 'Pedro', 'Carrera 15', '3102345678', '2020-07-15 09:30:00'),
(3, 'Sofia', 'Avenida Suba', '3003456789', '2019-10-01 07:45:00'),
(4, 'Luis', 'Calle 26', '3204567890', '2022-02-25 10:15:00'),
(5, 'Ana', 'Carrera 10', '3105678901', '2023-03-10 11:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitats`
--

CREATE TABLE `habitats` (
  `ID_habitats` int(5) NOT NULL,
  `Nombre_habitats` varchar(100) DEFAULT NULL,
  `Clima_habitats` varchar(100) DEFAULT NULL,
  `tipo_vegetacion` varchar(100) DEFAULT NULL,
  `Continente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitats`
--

INSERT INTO `habitats` (`ID_habitats`, `Nombre_habitats`, `Clima_habitats`, `tipo_vegetacion`, `Continente`) VALUES
(1, 'Sabana', 'tropical humedo/seco', 'predominantemente herbácea, con gramíneas perennes que tienen tallos huecos y flores simples dispues', ' África, Asia, Australia y América del Sur'),
(2, 'Bosque Boreal', 'subártico frío', 'coníferas como pinos, abetos y abedules', 'América del Norte, Europa, Asia'),
(3, 'Desierto', 'árido', 'escasa vegetación como cactus y arbustos espinosos', 'África, Asia, América del Norte, Australia'),
(4, 'Tundra', 'polar', 'musgos, líquenes y pequeños arbustos adaptados al frío extremo', 'Ártico, Antártico, Siberia, Canadá'),
(5, 'Selva Tropical', 'tropical húmedo', 'densa vegetación con árboles altos, lianas y epífitas', 'América del Sur, África, Asia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerarios`
--

CREATE TABLE `itinerarios` (
  `ID_itinerarios` int(5) NOT NULL,
  `Duracion_recorrido` datetime DEFAULT NULL,
  `longitud_recorrido` varchar(100) DEFAULT NULL,
  `Num_visitantes_autorizados` int(5) DEFAULT NULL,
  `Num_especies_recorridas` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `itinerarios`
--

INSERT INTO `itinerarios` (`ID_itinerarios`, `Duracion_recorrido`, `longitud_recorrido`, `Num_visitantes_autorizados`, `Num_especies_recorridas`) VALUES
(1, '2024-01-01 02:00:00', '120 M', 30, 50),
(2, '2024-01-01 03:30:00', '150 M', 25, 40),
(3, '2024-01-01 01:00:00', '200 M', 35, 60),
(4, '2024-01-01 05:30:00', '100 M', 20, 30),
(5, '2024-01-01 04:00:00', '250 M', 40, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerarios_cuidadores`
--

CREATE TABLE `itinerarios_cuidadores` (
  `ID_cuidadores4` int(5) DEFAULT NULL,
  `ID_itinerarios4` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerarios_guias`
--

CREATE TABLE `itinerarios_guias` (
  `ID_itinerarios5` int(5) DEFAULT NULL,
  `ID_Guias5` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `ID_zonas` int(5) NOT NULL,
  `Nombre_zona` varchar(100) DEFAULT NULL,
  `Extencion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`ID_zonas`, `Nombre_zona`, `Extencion`) VALUES
(1, 'Sabana Africana', '25,000 metros cuadrados'),
(2, 'Bosque Tropical', '30,000 metros cuadrados'),
(3, 'Zona de Reptiles', '15,000 metros cuadrados'),
(4, 'Aviario Amazónico', '20,000 metros cuadrados'),
(5, 'Pabellón Ártico', '18,000 metros cuadrados');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  ADD PRIMARY KEY (`ID_cuidadores`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`ID_especies`);

--
-- Indices de la tabla `especies_cuidadores`
--
ALTER TABLE `especies_cuidadores`
  ADD KEY `fk_id5` (`ID_especies3`),
  ADD KEY `fk_id6` (`ID_cuidadores3`);

--
-- Indices de la tabla `especies_habitats`
--
ALTER TABLE `especies_habitats`
  ADD KEY `fk_id1` (`ID_especies1`),
  ADD KEY `fk_id2` (`ID_habitats1`);

--
-- Indices de la tabla `especies_zonas`
--
ALTER TABLE `especies_zonas`
  ADD KEY `fk_id3` (`ID_zonas2`),
  ADD KEY `fk_id4` (`ID_especies2`);

--
-- Indices de la tabla `guias`
--
ALTER TABLE `guias`
  ADD PRIMARY KEY (`ID_Guias`);

--
-- Indices de la tabla `habitats`
--
ALTER TABLE `habitats`
  ADD PRIMARY KEY (`ID_habitats`);

--
-- Indices de la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  ADD PRIMARY KEY (`ID_itinerarios`);

--
-- Indices de la tabla `itinerarios_cuidadores`
--
ALTER TABLE `itinerarios_cuidadores`
  ADD KEY `fk_id7` (`ID_cuidadores4`),
  ADD KEY `fk_id8` (`ID_itinerarios4`);

--
-- Indices de la tabla `itinerarios_guias`
--
ALTER TABLE `itinerarios_guias`
  ADD KEY `fk_id9` (`ID_itinerarios5`),
  ADD KEY `fk_id10` (`ID_Guias5`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`ID_zonas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  MODIFY `ID_cuidadores` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `ID_especies` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `guias`
--
ALTER TABLE `guias`
  MODIFY `ID_Guias` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `habitats`
--
ALTER TABLE `habitats`
  MODIFY `ID_habitats` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  MODIFY `ID_itinerarios` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `ID_zonas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `especies_cuidadores`
--
ALTER TABLE `especies_cuidadores`
  ADD CONSTRAINT `fk_id5` FOREIGN KEY (`ID_especies3`) REFERENCES `especies` (`ID_especies`),
  ADD CONSTRAINT `fk_id6` FOREIGN KEY (`ID_cuidadores3`) REFERENCES `cuidadores` (`ID_cuidadores`);

--
-- Filtros para la tabla `especies_habitats`
--
ALTER TABLE `especies_habitats`
  ADD CONSTRAINT `fk_id1` FOREIGN KEY (`ID_especies1`) REFERENCES `especies` (`ID_especies`),
  ADD CONSTRAINT `fk_id2` FOREIGN KEY (`ID_habitats1`) REFERENCES `habitats` (`ID_habitats`);

--
-- Filtros para la tabla `especies_zonas`
--
ALTER TABLE `especies_zonas`
  ADD CONSTRAINT `fk_id3` FOREIGN KEY (`ID_zonas2`) REFERENCES `zonas` (`ID_zonas`),
  ADD CONSTRAINT `fk_id4` FOREIGN KEY (`ID_especies2`) REFERENCES `especies` (`ID_especies`);

--
-- Filtros para la tabla `itinerarios_cuidadores`
--
ALTER TABLE `itinerarios_cuidadores`
  ADD CONSTRAINT `fk_id7` FOREIGN KEY (`ID_cuidadores4`) REFERENCES `cuidadores` (`ID_cuidadores`),
  ADD CONSTRAINT `fk_id8` FOREIGN KEY (`ID_itinerarios4`) REFERENCES `itinerarios` (`ID_itinerarios`);

--
-- Filtros para la tabla `itinerarios_guias`
--
ALTER TABLE `itinerarios_guias`
  ADD CONSTRAINT `fk_id10` FOREIGN KEY (`ID_Guias5`) REFERENCES `guias` (`ID_Guias`),
  ADD CONSTRAINT `fk_id9` FOREIGN KEY (`ID_itinerarios5`) REFERENCES `itinerarios` (`ID_itinerarios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
