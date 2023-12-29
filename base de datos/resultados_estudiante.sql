-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2023 a las 00:01:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `resultados_estudiante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'hola@configuroweb.com', '05ad4dee203d86dd468b83a74c13bdb6', '2022-09-04 16:30:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Primer Año', 1, 'A', '2022-09-04 14:31:45', NULL),
(63, 'Segundo Año', 2, 'A', '2022-09-04 15:55:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(3, 'Estimado Estudiante', 'Se debe leer y aprobar el examen relacionado del manual de convivencia.', '2022-10-22 23:27:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 1, 2, 89, '2022-09-04 14:41:18', NULL),
(2, 1, 1, 3, 87, '2022-09-04 14:41:18', NULL),
(3, 1, 1, 5, 90, '2022-09-04 14:41:18', NULL),
(4, 1, 1, 1, 90, '2022-09-04 14:41:18', NULL),
(5, 1, 1, 4, 90, '2022-09-04 14:41:18', NULL),
(6, 3, 1, 2, 80, '2022-09-04 15:56:54', NULL),
(7, 3, 1, 3, 66, '2022-09-04 15:56:54', NULL),
(8, 3, 1, 5, 87, '2022-09-04 15:56:54', NULL),
(9, 3, 1, 1, 76, '2022-09-04 15:56:54', NULL),
(10, 3, 1, 4, 55, '2022-09-04 15:56:54', NULL),
(11, 4, 1, 2, 85, '2022-10-20 03:21:47', NULL),
(12, 4, 1, 3, 90, '2022-10-20 03:21:47', NULL),
(13, 4, 1, 5, 85, '2022-10-20 03:21:47', NULL),
(14, 4, 1, 1, 80, '2022-10-20 03:21:47', NULL),
(15, 4, 1, 4, 75, '2022-10-20 03:21:47', NULL),
(16, 5, 63, 6, 98, '2022-10-22 04:29:10', NULL),
(17, 5, 63, 7, 97, '2022-10-22 04:29:10', NULL),
(18, 5, 63, 6, 98, '2022-10-22 04:29:42', NULL),
(19, 5, 63, 7, 97, '2022-10-22 04:29:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Juan Estudiante', '12125', 'jestudiante@cweb.com', 'Male', '1991-09-06', 1, '2022-09-04 14:38:05', NULL, 1),
(2, 'Patricia Cruz', '12124', 'pcruz@cweb.com', 'Female', '1992-08-31', 1, '2022-09-04 14:38:32', NULL, 1),
(3, 'Andrea Valencia', '12123', 'avalencia@cweb.com', 'Male', '1998-09-02', 1, '2022-09-04 15:56:15', NULL, 1),
(4, 'Pedro Estudiante', '12121', 'pestudiante@cweb.com', 'Male', '2000-06-06', 1, '2022-10-20 03:21:16', NULL, 1),
(5, 'Pedro Molina', '12122', 'pmolina@cweb.com', 'Male', '1999-06-16', 63, '2022-10-21 03:24:19', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 1, '2022-09-04 14:37:16', '2022-10-21 20:57:29'),
(2, 1, 2, 1, '2022-09-04 14:40:16', NULL),
(3, 1, 3, 1, '2022-09-04 14:40:25', NULL),
(4, 1, 4, 1, '2022-09-04 14:40:32', NULL),
(5, 1, 5, 1, '2022-09-04 14:40:40', NULL),
(6, 63, 6, 1, '2022-09-04 15:55:40', NULL),
(7, 63, 7, 1, '2022-10-22 04:25:52', NULL),
(8, 63, 7, 0, '2022-10-22 04:26:25', '2022-10-22 04:27:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Ingeniería de Software', 'IS', '2022-09-04 14:36:08', NULL),
(2, 'Ciencia de Datos Introducción', 'CDI', '2022-09-04 14:39:32', NULL),
(3, 'Inglés Conversacional', 'ICL', '2022-09-04 14:39:44', NULL),
(4, 'Domótica', 'DMT', '2022-09-04 14:39:53', NULL),
(5, 'Sistemas Operativos Avanzados', 'SOA', '2022-09-04 14:40:03', NULL),
(6, 'Diseño UX', 'DUX', '2022-09-04 15:55:25', NULL),
(7, 'Fonética y Morfología Aplicada', 'FFMA', '2022-10-22 04:25:02', NULL),
(8, 'Fonética y Morfología Aplicada', 'FFMA', '2022-10-22 04:25:24', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indices de la tabla `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
