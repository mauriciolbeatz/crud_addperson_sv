-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2022 a las 19:41:18
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `relation_person`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISOCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `name`, `ISOCode`) VALUES
(1, 'Ahuachapán', 'SV-AH'),
(2, 'Santa Ana', 'SV-SA'),
(3, 'Sonsonate', 'SV-SO'),
(4, 'La Libertad', 'SV-LI'),
(5, 'Chalatenango', 'SV-CH'),
(6, 'San Salvador', 'SV-SS'),
(7, 'Cuscatlán', 'SV-CU'),
(8, 'La Paz', 'SV-PA'),
(9, 'Cabañas', 'SV-CA'),
(10, 'San Vicente', 'SV-SV'),
(11, 'Usulután', 'SV-US'),
(12, 'Morazán', 'SV-MO'),
(13, 'San Miguel', 'SV-SM'),
(14, 'La Unión', 'SV-UN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_28_151615_departamentos', 1),
(6, '2022_03_28_151616_municipios', 1),
(7, '2022_03_28_151617_personas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dep_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `dep_id`, `name`) VALUES
(1, 1, 'Ahuachapán'),
(2, 1, 'Jujutla'),
(3, 1, 'Atiquizaya'),
(4, 1, 'Concepción de Ataco'),
(5, 1, 'El Refugio'),
(6, 1, 'Guaymango'),
(7, 1, 'Apaneca'),
(8, 1, 'San Francisco Menéndez'),
(9, 1, 'San Lorenzo'),
(10, 1, 'San Pedro Puxtla'),
(11, 1, 'Tacuba'),
(12, 1, 'Turín'),
(13, 2, 'Candelaria de la Frontera'),
(14, 2, 'Chalchuapa'),
(15, 2, 'Coatepeque'),
(16, 2, 'El Congo'),
(17, 2, 'El Porvenir'),
(18, 2, 'Masahuat'),
(19, 2, 'Metapán'),
(20, 2, 'San Antonio Pajonal'),
(21, 2, 'San Sebastián Salitrillo'),
(22, 2, 'Santa Ana'),
(23, 2, 'Santa Rosa Guachipilín'),
(24, 2, 'Santiago de la Frontera'),
(25, 2, 'Texistepeque'),
(26, 3, 'Acajutla'),
(27, 3, 'Armenia'),
(28, 3, 'Caluco'),
(29, 3, 'Cuisnahuat'),
(30, 3, 'Izalco'),
(31, 3, 'Juayúa'),
(32, 3, 'Nahuizalco'),
(33, 3, 'Nahulingo'),
(34, 3, 'Salcoatitán'),
(35, 3, 'San Antonio del Monte'),
(36, 3, 'San Julián'),
(37, 3, 'Santa Catarina Masahuat'),
(38, 3, 'Santa Isabel Ishuatán'),
(39, 3, 'Santo Domingo de Guzmán'),
(40, 3, 'Sonsonate'),
(41, 3, 'Sonzacate'),
(42, 11, 'Alegría'),
(43, 11, 'Berlín'),
(44, 11, 'California'),
(45, 11, 'Concepción Batres'),
(46, 11, 'El Triunfo'),
(47, 11, 'Ereguayquín'),
(48, 11, 'Estanzuelas'),
(49, 11, 'Jiquilisco'),
(50, 11, 'Jucuapa'),
(51, 11, 'Jucuarán'),
(52, 11, 'Mercedes Umaña'),
(53, 11, 'Nueva Granada'),
(54, 11, 'Ozatlán'),
(55, 11, 'Puerto El Triunfo'),
(56, 11, 'San Agustín'),
(57, 11, 'San Buenaventura'),
(58, 11, 'San Dionisio'),
(59, 11, 'San Francisco Javier'),
(60, 11, 'Santa Elena'),
(61, 11, 'Santa María'),
(62, 11, 'Santiago de María'),
(63, 11, 'Tecapán'),
(64, 11, 'Usulután'),
(65, 13, 'Carolina'),
(66, 13, 'Chapeltique'),
(67, 13, 'Chinameca'),
(68, 13, 'Chirilagua'),
(69, 13, 'Ciudad Barrios'),
(70, 13, 'Comacarán'),
(71, 13, 'El Tránsito'),
(72, 13, 'Lolotique'),
(73, 13, 'Moncagua'),
(74, 13, 'Nueva Guadalupe'),
(75, 13, 'Nuevo Edén de San Juan'),
(76, 13, 'Quelepa'),
(77, 13, 'San Antonio del Mosco'),
(78, 13, 'San Gerardo'),
(79, 13, 'San Jorge'),
(80, 13, 'San Luis de la Reina'),
(81, 13, 'San Miguel'),
(82, 13, 'San Rafael Oriente'),
(83, 13, 'Sesori'),
(84, 13, 'Uluazapa'),
(85, 12, 'Arambala'),
(86, 12, 'Cacaopera'),
(87, 12, 'Chilanga'),
(88, 12, 'Corinto'),
(89, 12, 'Delicias de Concepción'),
(90, 12, 'El Divisadero'),
(91, 12, 'El Rosario (Morazán)'),
(92, 12, 'Gualococti'),
(93, 12, 'Guatajiagua'),
(94, 12, 'Joateca'),
(95, 12, 'Jocoaitique'),
(96, 12, 'Jocoro'),
(97, 12, 'Lolotiquillo'),
(98, 12, 'Meanguera'),
(99, 12, 'Osicala'),
(100, 12, 'Perquín'),
(101, 12, 'San Carlos'),
(102, 12, 'San Fernando (Morazán)'),
(103, 12, 'San Francisco Gotera'),
(104, 12, 'San Isidro (Morazán)'),
(105, 12, 'San Simón'),
(106, 12, 'Sensembra'),
(107, 12, 'Sociedad'),
(108, 12, 'Torola'),
(109, 12, 'Yamabal'),
(110, 12, 'Yoloaiquín'),
(111, 14, 'La Unión'),
(112, 14, 'San Alejo'),
(113, 14, 'Yucuaiquín'),
(114, 14, 'Conchagua'),
(115, 14, 'Intipucá'),
(116, 14, 'San José'),
(117, 14, 'El Carmen (La Unión)'),
(118, 14, 'Yayantique'),
(119, 14, 'Bolívar'),
(120, 14, 'Meanguera del Golfo'),
(121, 14, 'Santa Rosa de Lima'),
(122, 14, 'Pasaquina'),
(123, 14, 'Anamoros'),
(124, 14, 'Nueva Esparta'),
(125, 14, 'El Sauce'),
(126, 14, 'Concepción de Oriente'),
(127, 14, 'Polorós'),
(128, 14, 'Lislique'),
(129, 4, 'Antiguo Cuscatlán'),
(130, 4, 'Chiltiupán'),
(131, 4, 'Ciudad Arce'),
(132, 4, 'Colón'),
(133, 4, 'Comasagua'),
(134, 4, 'Huizúcar'),
(135, 4, 'Jayaque'),
(136, 4, 'Jicalapa'),
(137, 4, 'La Libertad'),
(138, 4, 'Santa Tecla'),
(139, 4, 'Nuevo Cuscatlán'),
(140, 4, 'San Juan Opico'),
(141, 4, 'Quezaltepeque'),
(142, 4, 'Sacacoyo'),
(143, 4, 'San José Villanueva'),
(144, 4, 'San Matías'),
(145, 4, 'San Pablo Tacachico'),
(146, 4, 'Talnique'),
(147, 4, 'Tamanique'),
(148, 4, 'Teotepeque'),
(149, 4, 'Tepecoyo'),
(150, 4, 'Zaragoza'),
(151, 5, 'Agua Caliente'),
(152, 5, 'Arcatao'),
(153, 5, 'Azacualpa'),
(154, 5, 'Cancasque'),
(155, 5, 'Chalatenango'),
(156, 5, 'Citalá'),
(157, 5, 'Comapala'),
(158, 5, 'Concepción Quezaltepeque'),
(159, 5, 'Dulce Nombre de María'),
(160, 5, 'El Carrizal'),
(161, 5, 'El Paraíso'),
(162, 5, 'La Laguna'),
(163, 5, 'La Palma'),
(164, 5, 'La Reina'),
(165, 5, 'Las Vueltas'),
(166, 5, 'Nueva Concepción'),
(167, 5, 'Nueva Trinidad'),
(168, 5, 'Nombre de Jesús'),
(169, 5, 'Ojos de Agua'),
(170, 5, 'Potonico'),
(171, 5, 'San Antonio de la Cruz'),
(172, 5, 'San Antonio Los Ranchos'),
(173, 5, 'San Fernando (Chalatenango)'),
(174, 5, 'San Francisco Lempa'),
(175, 5, 'San Francisco Morazán'),
(176, 5, 'San Ignacio'),
(177, 5, 'San Isidro Labrador'),
(178, 5, 'Las Flores'),
(179, 5, 'San Luis del Carmen'),
(180, 5, 'San Miguel de Mercedes'),
(181, 5, 'San Rafael'),
(182, 5, 'Santa Rita'),
(183, 5, 'Tejutla'),
(184, 7, 'Cojutepeque'),
(185, 7, 'Candelaria'),
(186, 7, 'El Carmen (Cuscatlán)'),
(187, 7, 'El Rosario (Cuscatlán)'),
(188, 7, 'Monte San Juan'),
(189, 7, 'Oratorio de Concepción'),
(190, 7, 'San Bartolomé Perulapía'),
(191, 7, 'San Cristóbal'),
(192, 7, 'San José Guayabal'),
(193, 7, 'San Pedro Perulapán'),
(194, 7, 'San Rafael Cedros'),
(195, 7, 'San Ramón'),
(196, 7, 'Santa Cruz Analquito'),
(197, 7, 'Santa Cruz Michapa'),
(198, 7, 'Suchitoto'),
(199, 7, 'Tenancingo'),
(200, 6, 'Aguilares'),
(201, 6, 'Apopa'),
(202, 6, 'Ayutuxtepeque'),
(203, 6, 'Cuscatancingo'),
(204, 6, 'Ciudad Delgado'),
(205, 6, 'El Paisnal'),
(206, 6, 'Guazapa'),
(207, 6, 'Ilopango'),
(208, 6, 'Mejicanos'),
(209, 6, 'Nejapa'),
(210, 6, 'Panchimalco'),
(211, 6, 'Rosario de Mora'),
(212, 6, 'San Marcos'),
(213, 6, 'San Martín'),
(214, 6, 'San Salvador'),
(215, 6, 'Santiago Texacuangos'),
(216, 6, 'Santo Tomás'),
(217, 6, 'Soyapango'),
(218, 6, 'Tonacatepeque'),
(219, 8, 'Zacatecoluca'),
(220, 8, 'Cuyultitán'),
(221, 8, 'El Rosario (La Paz)'),
(222, 8, 'Jerusalén'),
(223, 8, 'Mercedes La Ceiba'),
(224, 8, 'Olocuilta'),
(225, 8, 'Paraíso de Osorio'),
(226, 8, 'San Antonio Masahuat'),
(227, 8, 'San Emigdio'),
(228, 8, 'San Francisco Chinameca'),
(229, 8, 'San Pedro Masahuat'),
(230, 8, 'San Juan Nonualco'),
(231, 8, 'San Juan Talpa'),
(232, 8, 'San Juan Tepezontes'),
(233, 8, 'San Luis La Herradura'),
(234, 8, 'San Luis Talpa'),
(235, 8, 'San Miguel Tepezontes'),
(236, 8, 'San Pedro Nonualco'),
(237, 8, 'San Rafael Obrajuelo'),
(238, 8, 'Santa María Ostuma'),
(239, 8, 'Santiago Nonualco'),
(240, 8, 'Tapalhuaca'),
(241, 9, 'Cinquera'),
(242, 9, 'Dolores'),
(243, 9, 'Guacotecti'),
(244, 9, 'Ilobasco'),
(245, 9, 'Jutiapa'),
(246, 9, 'San Isidro (Cabañas)'),
(247, 9, 'Sensuntepeque'),
(248, 9, 'Tejutepeque'),
(249, 9, 'Victoria'),
(250, 10, 'Apastepeque'),
(251, 10, 'Guadalupe'),
(252, 10, 'San Cayetano Istepeque'),
(253, 10, 'San Esteban Catarina'),
(254, 10, 'San Ildefonso'),
(255, 10, 'San Lorenzo'),
(256, 10, 'San Sebastián'),
(257, 10, 'San Vicente'),
(258, 10, 'Santa Clara'),
(259, 10, 'Santo Domingo'),
(260, 10, 'Tecoluca'),
(261, 10, 'Tepetitán'),
(262, 10, 'Verapaz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `municipio_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `municipio_id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 256, 'Mauricio Rosales', '75018915', '2022-03-28 22:28:13', '2022-03-28 22:44:04'),
(2, 259, 'Carlos Rosales', '77879007', '2022-03-28 23:00:26', '2022-03-28 23:00:26'),
(4, 9, 'prueba', '7501-8915', '2022-03-28 23:36:37', '2022-03-28 23:36:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mauricio Rosales', 'mauricio.rosales@beenet.email', NULL, '$2y$10$bB/1KWS6Fm3DZPuRNvBvs.U6wOc6/qEzgysjl70fHtBcYfU9RuF16', NULL, '2022-03-28 22:25:15', '2022-03-28 22:25:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipios_dep_id_foreign` (`dep_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personas_municipio_id_foreign` (`municipio_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_dep_id_foreign` FOREIGN KEY (`dep_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
