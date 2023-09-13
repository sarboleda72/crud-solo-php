-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2023 a las 02:10:06
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adso2613934`
--
CREATE DATABASE IF NOT EXISTS `adso2613934` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adso2613934`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `documento` int(11) NOT NULL,
  `nombres` varchar(35) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `foto` longblob DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `rol` varchar(29) DEFAULT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`documento`, `nombres`, `correo`, `clave`, `telefono`, `ciudad`, `foto`, `genero`, `rol`) VALUES
(111122223, 'María López', 'maria@example.com', 'contrasena5', '111-222-3333', 'Ciudad E', NULL, 'Femenino', 'Usuario Normal'),
(123456789, 'Juan Perez', 'juan@example.com', 'contrasena1', '123-456-7890', 'Ciudad A', NULL, 'Masculino', 'Usuario Normal'),
(222233334, 'Eduardo Vega', 'eduardo@example.com', 'contrasena10', '222-333-4444', 'Ciudad J', NULL, 'Masculino', 'Usuario Normal'),
(444433332, 'Pedro Ramirez', 'pedro@example.com', 'contrasena6', '444-333-2222', 'Ciudad F', NULL, 'Masculino', 'Usuario Normal'),
(555555555, 'Carlos Rodriguez', 'carlos@example.com', 'contrasena3', '555-555-5555', 'Ciudad C', NULL, 'Masculino', 'Usuario Normal'),
(666699991, 'Javier Martinez', 'javier@example.com', 'contrasena8', '666-999-9111', 'Ciudad H', NULL, 'Masculino', 'Usuario Normal'),
(777788889, 'Sofia Hernandez', 'sofia@example.com', 'contrasena9', '777-888-8999', 'Ciudad I', NULL, 'Femenino', 'Usuario Normal'),
(888877776, 'Laura Castro', 'laura@example.com', 'contrasena7', '888-777-6666', 'Ciudad G', NULL, 'Femenino', 'Usuario Normal'),
(987654321, 'Ana García', 'ana@example.com', 'contrasena2', '987-654-3210', 'Ciudad B', NULL, 'Femenino', 'Usuario Normal'),
(999999999, 'Luisa Torres', 'luisa@example.com', 'contrasena4', '999-999-9999', 'Ciudad D', NULL, 'Femenino', 'Usuario Normal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
