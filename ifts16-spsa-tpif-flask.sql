-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-10-2022 a las 16:06:35
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ifts16-spsa-tpif-flask`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `dni` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ususario` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `contrasenia` char(16) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `dni`, `direccion`, `ususario`, `contrasenia`, `email`) VALUES
(1, 'Admininstrador', 'DoneDeal', '123456789', 'sarasa123', 'admin', '1234', 'administrador@dondeal.com'),
(10, 'elimina', 'usuario', '00000', 'sarasadsda 12311', 'user4', '1234', 'elimina@usuario.com'),
(9, 'nuevo', 'test', '00000', 'sarasadsda 12311', 'testListado', '1234', 'test@listado.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
