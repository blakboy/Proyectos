-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2018 a las 04:57:20
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `misperris`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add mascota', 7, 'add_mascota'),
(26, 'Can change mascota', 7, 'change_mascota'),
(27, 'Can delete mascota', 7, 'delete_mascota'),
(28, 'Can view mascota', 7, 'view_mascota'),
(29, 'Can add persona', 8, 'add_persona'),
(30, 'Can change persona', 8, 'change_persona'),
(31, 'Can delete persona', 8, 'delete_persona'),
(32, 'Can view persona', 8, 'view_persona'),
(33, 'Can add solicitud', 9, 'add_solicitud'),
(34, 'Can change solicitud', 9, 'change_solicitud'),
(35, 'Can delete solicitud', 9, 'delete_solicitud'),
(36, 'Can view solicitud', 9, 'view_solicitud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$120000$u0QkU1k3uHm6$CHU12dUktQSfrdvRKV6sILS1xaLDUFHjGobMK9uUxIE=', '2018-11-24 05:07:11.669327', 0, 'vferrada', '', '', 'vicneakl@fkan.com', 0, 1, '2018-11-24 05:06:41.839214'),
(3, 'pbkdf2_sha256$120000$Roa2EIJGiOLT$YoKoglx9e0vPYc2XAn8sJym7s2G9yTQMDGZXptGPJPA=', '2018-11-24 05:13:23.613269', 0, 'vpinto', '', '', 'vicentepinfer@gmail.com', 1, 1, '2018-11-24 05:11:44.114704');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Sistema', 'mascota'),
(8, 'Sistema', 'persona'),
(9, 'Sistema', 'solicitud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-24 04:36:55.934352'),
(2, 'auth', '0001_initial', '2018-11-24 04:37:07.133398'),
(3, 'Sistema', '0001_initial', '2018-11-24 04:37:08.092860'),
(4, 'Sistema', '0002_auto_20181027_1847', '2018-11-24 04:37:08.954600'),
(5, 'Sistema', '0003_auto_20181027_1849', '2018-11-24 04:37:09.477787'),
(6, 'Sistema', '0004_solicitud', '2018-11-24 04:37:11.231884'),
(7, 'Sistema', '0005_auto_20181028_1929', '2018-11-24 04:37:13.499481'),
(8, 'Sistema', '0006_mascota_fotomascota', '2018-11-24 04:37:14.523568'),
(9, 'Sistema', '0007_auto_20181106_1221', '2018-11-24 04:37:14.568960'),
(10, 'Sistema', '0008_auto_20181106_1229', '2018-11-24 04:37:14.614838'),
(11, 'Sistema', '0009_auto_20181106_1240', '2018-11-24 04:37:14.661914'),
(12, 'Sistema', '0010_auto_20181106_1312', '2018-11-24 04:37:14.702134'),
(13, 'Sistema', '0011_auto_20181106_1314', '2018-11-24 04:37:14.748008'),
(14, 'Sistema', '0012_auto_20181106_1323', '2018-11-24 04:37:14.795227'),
(15, 'Sistema', '0013_auto_20181107_1123', '2018-11-24 04:37:16.066968'),
(16, 'Sistema', '0014_persona_tipopersona', '2018-11-24 04:37:16.573804'),
(17, 'Sistema', '0015_persona_correo', '2018-11-24 04:37:17.466209'),
(18, 'Sistema', '0016_auto_20181108_0025', '2018-11-24 04:37:18.666406'),
(19, 'Sistema', '0017_remove_persona_correo', '2018-11-24 04:37:20.216616'),
(20, 'Sistema', '0018_auto_20181108_1054', '2018-11-24 04:37:20.391341'),
(21, 'Sistema', '0019_auto_20181108_1852', '2018-11-24 04:37:20.527488'),
(22, 'Sistema', '0020_auto_20181108_1855', '2018-11-24 04:37:20.605788'),
(23, 'Sistema', '0021_auto_20181108_2208', '2018-11-24 04:37:20.784311'),
(24, 'Sistema', '0022_auto_20181108_2251', '2018-11-24 04:37:20.951131'),
(25, 'Sistema', '0023_auto_20181108_2255', '2018-11-24 04:37:21.005984'),
(26, 'admin', '0001_initial', '2018-11-24 04:37:25.122884'),
(27, 'admin', '0002_logentry_remove_auto_add', '2018-11-24 04:37:25.176740'),
(28, 'admin', '0003_logentry_add_action_flag_choices', '2018-11-24 04:37:25.270268'),
(29, 'contenttypes', '0002_remove_content_type_name', '2018-11-24 04:37:26.568502'),
(30, 'auth', '0002_alter_permission_name_max_length', '2018-11-24 04:37:27.499819'),
(31, 'auth', '0003_alter_user_email_max_length', '2018-11-24 04:37:28.578382'),
(32, 'auth', '0004_alter_user_username_opts', '2018-11-24 04:37:28.666816'),
(33, 'auth', '0005_alter_user_last_login_null', '2018-11-24 04:37:30.459658'),
(34, 'auth', '0006_require_contenttypes_0002', '2018-11-24 04:37:30.559400'),
(35, 'auth', '0007_alter_validators_add_error_messages', '2018-11-24 04:37:30.638189'),
(36, 'auth', '0008_alter_user_username_max_length', '2018-11-24 04:37:32.436938'),
(37, 'auth', '0009_alter_user_last_name_max_length', '2018-11-24 04:37:33.468179'),
(38, 'sessions', '0001_initial', '2018-11-24 04:37:34.312154');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('emtplwkzgjb49gkclourzu84md10aor8', 'OGJlZGY4YzgwMjIwOTdjNDZmZDQ4N2M0Nzk3NGFlYmM3ZGNiZDJiNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MjYzNjNiNmNmZTczYmQyZTE3OWM3Y2E0NWNiN2M1N2MxNjAzYWIyIn0=', '2018-12-08 05:13:23.777656');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_mascota`
--

CREATE TABLE `sistema_mascota` (
  `id` int(11) NOT NULL,
  `nombreMascota` varchar(30) NOT NULL,
  `razaMascota` varchar(30) NOT NULL,
  `descMascota` longtext,
  `estadoMascota` varchar(30) NOT NULL,
  `fotoMascota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sistema_mascota`
--

INSERT INTO `sistema_mascota` (`id`, `nombreMascota`, `razaMascota`, `descMascota`, `estadoMascota`, `fotoMascota`) VALUES
(1, 'Alba', 'Poodle', 'Perra pequeña', 'Disponible', 'mascotas/10892016_10205589090145887_5575948040738710484_n.jpg'),
(2, 'Tostada', 'Beagle', 'Perrita joven', 'Disponible', 'mascotas/10897027_10205589079785628_8382992544210806478_n.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_persona`
--

CREATE TABLE `sistema_persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tipoPersona` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sistema_persona`
--

INSERT INTO `sistema_persona` (`id`, `nombre`, `apellido`, `user_id`, `tipoPersona`) VALUES
(1, 'Vicente', 'Pinto', 2, 'Usuario'),
(2, 'Vicente', 'Pinto', 3, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_solicitud`
--

CREATE TABLE `sistema_solicitud` (
  `id` int(11) NOT NULL,
  `numero_mascotas` int(11) NOT NULL,
  `razones` longtext NOT NULL,
  `persona_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `sistema_mascota`
--
ALTER TABLE `sistema_mascota`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistema_persona`
--
ALTER TABLE `sistema_persona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `sistema_solicitud`
--
ALTER TABLE `sistema_solicitud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sistema_solicitud_persona_id_1d65e73b_fk_Sistema_persona_id` (`persona_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `sistema_mascota`
--
ALTER TABLE `sistema_mascota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sistema_persona`
--
ALTER TABLE `sistema_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sistema_solicitud`
--
ALTER TABLE `sistema_solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `sistema_persona`
--
ALTER TABLE `sistema_persona`
  ADD CONSTRAINT `Sistema_persona_user_id_fc2ac9d1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `sistema_solicitud`
--
ALTER TABLE `sistema_solicitud`
  ADD CONSTRAINT `Sistema_solicitud_persona_id_1d65e73b_fk_Sistema_persona_id` FOREIGN KEY (`persona_id`) REFERENCES `sistema_persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
