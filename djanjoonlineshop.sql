-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-01-2023 a las 00:06:17
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `djanjoonlineshop`
--
CREATE DATABASE IF NOT EXISTS `djanjoonlineshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `djanjoonlineshop`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
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
(25, 'Can add carrito', 7, 'add_carrito'),
(26, 'Can change carrito', 7, 'change_carrito'),
(27, 'Can delete carrito', 7, 'delete_carrito'),
(28, 'Can view carrito', 7, 'view_carrito'),
(29, 'Can add perfil', 8, 'add_perfil'),
(30, 'Can change perfil', 8, 'change_perfil'),
(31, 'Can delete perfil', 8, 'delete_perfil'),
(32, 'Can view perfil', 8, 'view_perfil'),
(33, 'Can add carrito products', 9, 'add_carritoproducts'),
(34, 'Can change carrito products', 9, 'change_carritoproducts'),
(35, 'Can delete carrito products', 9, 'delete_carritoproducts'),
(36, 'Can view carrito products', 9, 'view_carritoproducts'),
(37, 'Can add categorias', 10, 'add_categorias'),
(38, 'Can change categorias', 10, 'change_categorias'),
(39, 'Can delete categorias', 10, 'delete_categorias'),
(40, 'Can view categorias', 10, 'view_categorias'),
(41, 'Can add productos', 11, 'add_productos'),
(42, 'Can change productos', 11, 'change_productos'),
(43, 'Can delete productos', 11, 'delete_productos'),
(44, 'Can view productos', 11, 'view_productos');

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
  `first_name` varchar(150) NOT NULL,
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
(1, 'pbkdf2_sha256$260000$563ERslECkhqvkuinUs2bR$atZTjQjDhZyZA9vQ7aq0jXci42j8q1Lo/ihu7Dy8f6o=', '2022-12-31 20:36:45.424600', 1, 'Pedro', '', '', 'medinapedrito2@gmail.com', 1, 1, '2022-12-31 05:09:17.606600');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
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

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-12-31 05:12:35.959600', '1', 'Computadoras', 1, '[{\"added\": {}}]', 10, 1),
(2, '2022-12-31 05:13:03.863600', '2', 'Deportes y Fitness', 1, '[{\"added\": {}}]', 10, 1),
(3, '2022-12-31 05:13:17.170600', '3', 'Electrodomésticos', 1, '[{\"added\": {}}]', 10, 1),
(4, '2022-12-31 05:13:25.392600', '4', 'Juegos', 1, '[{\"added\": {}}]', 10, 1),
(5, '2022-12-31 05:13:39.771600', '5', 'Hogar y Muebles', 1, '[{\"added\": {}}]', 10, 1),
(6, '2022-12-31 05:13:51.388600', '6', 'Moda', 1, '[{\"added\": {}}]', 10, 1),
(7, '2022-12-31 05:15:13.545600', '7', 'Pantallas', 1, '[{\"added\": {}}]', 10, 1),
(8, '2022-12-31 05:15:25.318600', '8', 'CPU', 1, '[{\"added\": {}}]', 10, 1),
(9, '2022-12-31 05:15:41.083600', '9', 'Accesorios', 1, '[{\"added\": {}}]', 10, 1),
(10, '2022-12-31 05:15:56.450600', '10', 'Impresoras', 1, '[{\"added\": {}}]', 10, 1),
(11, '2022-12-31 05:16:05.536600', '11', 'Tarjetas', 1, '[{\"added\": {}}]', 10, 1),
(12, '2022-12-31 05:16:15.801600', '12', 'Laptos', 1, '[{\"added\": {}}]', 10, 1),
(13, '2022-12-31 05:16:28.459600', '13', 'Disco Duro', 1, '[{\"added\": {}}]', 10, 1),
(14, '2022-12-31 05:17:07.413600', '14', 'Procesador', 1, '[{\"added\": {}}]', 10, 1),
(15, '2022-12-31 05:18:24.334600', '15', 'Equipo', 1, '[{\"added\": {}}]', 10, 1),
(16, '2022-12-31 05:18:37.427600', '16', 'Ropa Deportiva', 1, '[{\"added\": {}}]', 10, 1),
(17, '2022-12-31 05:18:48.310600', '17', 'Suplementos', 1, '[{\"added\": {}}]', 10, 1),
(18, '2022-12-31 05:19:57.999600', '18', 'Cocción', 1, '[{\"added\": {}}]', 10, 1),
(19, '2022-12-31 05:20:12.599600', '19', 'Refrigeración', 1, '[{\"added\": {}}]', 10, 1),
(20, '2022-12-31 05:20:21.984600', '20', 'Lavado y secado', 1, '[{\"added\": {}}]', 10, 1),
(21, '2022-12-31 05:20:38.149600', '21', 'Uso Personal', 1, '[{\"added\": {}}]', 10, 1),
(22, '2022-12-31 05:20:45.829600', '22', 'Cocina', 1, '[{\"added\": {}}]', 10, 1),
(23, '2022-12-31 05:23:32.572600', '23', 'Muñecos', 1, '[{\"added\": {}}]', 10, 1),
(24, '2022-12-31 05:23:45.596600', '24', 'Gaming', 1, '[{\"added\": {}}]', 10, 1),
(25, '2022-12-31 05:23:55.759600', '25', 'Juegos de Mesa', 1, '[{\"added\": {}}]', 10, 1),
(26, '2022-12-31 05:24:10.031600', '26', 'Juegos de Construcción', 1, '[{\"added\": {}}]', 10, 1),
(27, '2022-12-31 05:24:26.137600', '27', 'Juguetes de Oficio', 1, '[{\"added\": {}}]', 10, 1),
(28, '2022-12-31 05:24:37.174600', '28', 'Vehículos', 1, '[{\"added\": {}}]', 10, 1),
(29, '2022-12-31 05:25:36.854600', '29', 'Ropa de Hombre', 1, '[{\"added\": {}}]', 10, 1),
(30, '2022-12-31 05:25:44.342600', '30', 'Ropa de Mujer', 1, '[{\"added\": {}}]', 10, 1),
(31, '2022-12-31 05:26:35.890600', '31', 'Calzado', 1, '[{\"added\": {}}]', 10, 1),
(32, '2022-12-31 05:26:50.726600', '32', 'Joyeria', 1, '[{\"added\": {}}]', 10, 1),
(33, '2022-12-31 05:27:00.578600', '33', 'Bolsos y Mochilas', 1, '[{\"added\": {}}]', 10, 1),
(34, '2022-12-31 05:28:37.224600', '34', 'Camas', 1, '[{\"added\": {}}]', 10, 1),
(35, '2022-12-31 05:28:47.208600', '35', 'Muebles', 1, '[{\"added\": {}}]', 10, 1),
(36, '2022-12-31 05:28:56.417600', '36', 'Adornos', 1, '[{\"added\": {}}]', 10, 1),
(37, '2022-12-31 05:29:05.871600', '37', 'Iluminación', 1, '[{\"added\": {}}]', 10, 1),
(38, '2022-12-31 05:31:57.977600', '20', 'Lavado y Secado', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 10, 1),
(39, '2022-12-31 16:44:27.767600', '1', 'Audifonos Gamer Komc G312 - Yidro Online', 1, '[{\"added\": {}}]', 11, 1),
(40, '2022-12-31 16:45:51.712600', '2', 'KOORUI Monitor de computadora 24 pulgadas Full HD 1920 x 1080p, pantalla VA de 75 Hz 3000', 1, '[{\"added\": {}}]', 11, 1),
(41, '2022-12-31 16:46:39.294600', '3', 'Mouse Gamer Tinji Tj-11 Optico 1600 Dpi Usb Led 6 Botones', 1, '[{\"added\": {}}]', 11, 1),
(42, '2022-12-31 16:47:28.621600', '4', 'Memoria Ram Gamer Ddr4 Kingston 8gb Fury Best 3200mhz Rgb', 1, '[{\"added\": {}}]', 11, 1),
(43, '2022-12-31 16:48:06.081600', '5', 'Audifono Gamer Kotion Each G2000 - TECNO STORE', 1, '[{\"added\": {}}]', 11, 1),
(44, '2022-12-31 16:50:02.166600', '6', 'Cpu Gamer Tarjeta Gigabyte I5 11vagen 16gb Ram M.2 250gb', 1, '[{\"added\": {}}]', 11, 1),
(45, '2022-12-31 16:50:51.504600', '7', 'Teclado Gamer Delux Usb K9600 RGB 5 Macros Alámbrico', 1, '[{\"added\": {}}]', 11, 1),
(46, '2022-12-31 16:51:27.883600', '8', 'Bits Mouse Gamer Pink 6 Botones Rgb Shipadoo', 1, '[{\"added\": {}}]', 11, 1),
(47, '2022-12-31 16:52:17.356600', '9', 'Impresora Epson L1210 Tinta Continua Full Color', 1, '[{\"added\": {}}]', 11, 1),
(48, '2022-12-31 16:53:13.453600', '10', 'Impresora Epson Multifuncional L4160 Ecotank Wifi Duplex', 1, '[{\"added\": {}}]', 11, 1),
(49, '2022-12-31 16:56:19.845600', '11', 'Tarjeta De Video Msi Gt 710 Ddr3 2gb Pci Expres Hdmi Dvi', 1, '[{\"added\": {}}]', 11, 1),
(50, '2022-12-31 16:57:07.649600', '12', 'Tarjeta De Video Evga Gearforce Rtx 2060 Ko Ultra 6gb', 1, '[{\"added\": {}}]', 11, 1),
(51, '2022-12-31 17:16:03.774600', '13', 'Disco Solido Kingston 480gb Ssd A400', 1, '[{\"added\": {}}]', 11, 1),
(52, '2022-12-31 17:17:03.780600', '14', 'Disco Solido Kingston 240gb Ssd A400', 1, '[{\"added\": {}}]', 11, 1),
(53, '2022-12-31 17:21:16.593600', '15', 'Laptop Hp Core I5 8gb Ram 2000gb Nueva En Caja 15.6', 1, '[{\"added\": {}}]', 11, 1),
(54, '2022-12-31 17:23:57.721600', '16', 'Laptop Hp 15.6 Intel Core I5-113g7 8gb 256 Gb Negro Barata', 1, '[{\"added\": {}}]', 11, 1),
(55, '2022-12-31 17:25:48.645600', '17', 'Silla Gaming S Racer Ergonomica', 1, '[{\"added\": {}}]', 11, 1),
(56, '2022-12-31 17:26:33.022600', '18', 'Silla Gamer Con Altavoces Bluetooth Y Masajeador De Cintura', 1, '[{\"added\": {}}]', 11, 1),
(57, '2022-12-31 17:27:18.570600', '19', 'Escritorio Gamer Casaottima Tipo L Ergonomico Metal Mdf Bagc', 1, '[{\"added\": {}}]', 11, 1),
(58, '2022-12-31 17:28:24.297600', '20', 'Escritorio Gamer', 1, '[{\"added\": {}}]', 11, 1),
(59, '2022-12-31 17:29:15.694600', '21', 'Procesador Amd Ryzen 7 5700g Grafico Integrados 8core/16hilo', 1, '[{\"added\": {}}]', 11, 1),
(60, '2022-12-31 17:30:18.566600', '22', 'Procesador Amd Ryzen 5 5600g Grafico Integrados 6core/12hilo', 1, '[{\"added\": {}}]', 11, 1),
(61, '2022-12-31 17:31:18.388600', '21', 'Procesador Amd Ryzen 7 5700g Grafico Integrados 8core/16hilo', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 11, 1),
(62, '2022-12-31 17:32:06.912600', '23', 'Impresora Epson De Sublimación De Tinta Surecolor F170', 1, '[{\"added\": {}}]', 11, 1),
(63, '2022-12-31 17:33:03.675600', '24', 'Cpu Gaming Asus Amd Ryzen 5 5600 G Ssd 480 16gb De Ram', 1, '[{\"added\": {}}]', 11, 1),
(64, '2022-12-31 17:34:11.934600', '25', 'Licras Deportiva Caballero Pro Combat Running Crossfit Surf', 1, '[{\"added\": {}}]', 11, 1),
(65, '2022-12-31 17:34:50.771600', '26', 'Franela Camiseta Deportiva Wilson Polyspun 73169 Caballero', 1, '[{\"added\": {}}]', 11, 1),
(66, '2022-12-31 17:35:36.453600', '27', 'Jogger Mono Wilson French Terry Para Caballero', 1, '[{\"added\": {}}]', 11, 1),
(67, '2022-12-31 17:36:54.858600', '28', 'Franela Camiseta Deportiva Wilson Polyspun 73186 Para Dama', 1, '[{\"added\": {}}]', 11, 1),
(68, '2022-12-31 17:37:34.752600', '29', 'Medias Deportivas Tobilleras Dama Y Caballeros 6 Pares', 1, '[{\"added\": {}}]', 11, 1),
(69, '2022-12-31 17:38:28.306600', '30', 'Jersey Deportivo Para Ciclismo Mtb Camisa Manga Larga Licra', 1, '[{\"added\": {}}]', 11, 1),
(70, '2022-12-31 17:39:13.502600', '31', 'Balón De Basket #3 Caucho Boc3 Tamanaco', 1, '[{\"added\": {}}]', 11, 1),
(71, '2022-12-31 17:39:52.341600', '32', 'Tubo Pote De 3 Pelotas Tennis Penn Originales Tenis Sellados', 1, '[{\"added\": {}}]', 11, 1),
(72, '2022-12-31 17:40:33.469600', '33', 'Balon O Pelota De Futbol Numero 5', 1, '[{\"added\": {}}]', 11, 1),
(73, '2022-12-31 17:41:25.455600', '34', 'Balón De Futbolito Nº3 Tamanaco', 1, '[{\"added\": {}}]', 11, 1),
(74, '2022-12-31 17:42:03.589600', '35', 'Kit De Natación', 1, '[{\"added\": {}}]', 11, 1),
(75, '2022-12-31 17:42:53.681600', '36', 'Balón Volleyball Mikasa. V200w Oficial', 1, '[{\"added\": {}}]', 11, 1),
(76, '2022-12-31 17:50:48.744600', '37', 'Raquetas Playeras', 1, '[{\"added\": {}}]', 11, 1),
(77, '2022-12-31 17:51:36.397600', '38', 'Proteina Mass Tech Muscletech 7 Lbs Ganador De Peso', 1, '[{\"added\": {}}]', 11, 1),
(78, '2022-12-31 17:52:31.826600', '39', 'L-carnitina 3000 De Nutrex Amino Acido', 1, '[{\"added\": {}}]', 11, 1),
(79, '2022-12-31 17:53:12.279600', '40', 'Proteina Body Fortress Whey Proteína En Polvo, 2lbs', 1, '[{\"added\": {}}]', 11, 1),
(80, '2022-12-31 17:54:07.242600', '41', 'Citrato De Magnesio 250mg Nature\'s Made Cápsulas', 1, '[{\"added\": {}}]', 11, 1),
(81, '2022-12-31 17:55:03.749600', '42', 'Hydroxycut Elite Capsulas 100 Muscletech', 1, '[{\"added\": {}}]', 11, 1),
(82, '2022-12-31 17:56:03.649600', '43', 'Testosterone Booster Alpha Test Muscletech 120cap Usa Import', 1, '[{\"added\": {}}]', 11, 1),
(83, '2022-12-31 17:56:51.357600', '44', 'Chaqueta Deportiva New Balance Optiks Windbreaker', 1, '[{\"added\": {}}]', 11, 1),
(84, '2022-12-31 17:57:57.780600', '45', 'Conjunto Deportivo Algodón Suéter Y Mono', 1, '[{\"added\": {}}]', 11, 1),
(85, '2022-12-31 17:58:20.384600', '44', 'Chaqueta Deportiva New Balance Optiks Windbreaker', 2, '[]', 11, 1),
(86, '2022-12-31 17:59:54.749600', '46', 'Zapatos Deportivos Para Niños Chrcter Grey', 1, '[{\"added\": {}}]', 11, 1),
(87, '2022-12-31 18:02:22.641600', '47', 'Nevera LG 28 Pies Door-in-door Multi Air Flow Acero Inox', 1, '[{\"added\": {}}]', 11, 1),
(88, '2022-12-31 18:03:14.690600', '48', 'Congelador Horizontal 7.0 199 Litros Bottom Mount', 1, '[{\"added\": {}}]', 11, 1),
(89, '2022-12-31 18:03:53.826600', '49', 'Congelador Horizontal Dual Ghbs-510 Ti M. Gelopar Xavi', 1, '[{\"added\": {}}]', 11, 1),
(90, '2022-12-31 18:04:46.008600', '50', 'Cocina Eléctrica De Dos Hornillas Holstein', 1, '[{\"added\": {}}]', 11, 1),
(91, '2022-12-31 18:06:28.254600', '51', 'Horno Freidor De Aire 25 Lts, Puertas Francesas Kalorik', 1, '[{\"added\": {}}]', 11, 1),
(92, '2022-12-31 18:07:10.371600', '52', 'Microondas Frigilux Horno Eléctrico Digital 45 Litros 110v', 1, '[{\"added\": {}}]', 11, 1),
(93, '2022-12-31 18:07:59.532600', '53', 'Horno Smart 30* Whirlpool Wos51ec0hs Sw. Xavi', 1, '[{\"added\": {}}]', 11, 1),
(94, '2022-12-31 18:08:48.917600', '54', 'Secadora Royal 8 Kg Rse-80', 1, '[{\"added\": {}}]', 11, 1),
(95, '2022-12-31 18:11:18.693600', '55', 'Lavadora Secadora Morocha Whirlpool Wet4027hw 20 Kg', 1, '[{\"added\": {}}]', 11, 1),
(96, '2022-12-31 18:11:57.968600', '56', 'Lavadora Premium 12 Kg Semi-automatica', 1, '[{\"added\": {}}]', 11, 1),
(97, '2022-12-31 18:13:09.131600', '57', 'Lavadora Doble Tina Blanca 10kg Acros Ald1025dp Sw. Xavi', 1, '[{\"added\": {}}]', 11, 1),
(98, '2022-12-31 18:14:20.356600', '56', 'Lavadora Premium 12 Kg Semi-automatica', 2, '[{\"changed\": {\"fields\": [\"Img\"]}}]', 11, 1),
(99, '2022-12-31 18:15:06.657600', '56', 'Lavadora Premium 12 Kg Semi-automatica', 2, '[{\"changed\": {\"fields\": [\"Img\"]}}]', 11, 1),
(100, '2022-12-31 18:17:04.477600', '58', 'Lavadora Automática Frigilux 12kg 110v Digital 16 Ciclos', 1, '[{\"added\": {}}]', 11, 1),
(101, '2022-12-31 18:18:07.603600', '59', 'Televisor 32 Aiwa Smart Tv Hd', 1, '[{\"added\": {}}]', 11, 1),
(102, '2022-12-31 18:40:18.655600', '60', 'Televisor 32´ Aiwa Smart Tv Hd', 1, '[{\"added\": {}}]', 11, 1),
(103, '2022-12-31 18:41:18.723600', '61', 'Batidora Electrica Manual 7 Velocidades Plastico Torta Mixer', 1, '[{\"added\": {}}]', 11, 1),
(104, '2022-12-31 18:42:47.883600', '62', 'Batidora Eléctrica De Pedestal + 7 Velocidades + Taza Acero', 1, '[{\"added\": {}}]', 11, 1),
(105, '2022-12-31 18:43:44.231600', '63', 'Secador Profesional Supermegaturbo De Cabello Pelo Original', 1, '[{\"added\": {}}]', 11, 1),
(106, '2022-12-31 18:44:27.278600', '64', 'Plancha Seca Oste9', 1, '[{\"added\": {}}]', 11, 1),
(107, '2022-12-31 18:45:07.465600', '65', 'Plancha Remington De Cabello Original 455 ºf Silk Gruesa', 1, '[{\"added\": {}}]', 11, 1),
(108, '2022-12-31 18:46:03.593600', '66', 'Plancha Digital Aeroceramic 1600 Watts Negro Oste', 1, '[{\"added\": {}}]', 11, 1),
(109, '2022-12-31 18:46:49.870600', '67', 'Licuadora Premium 4 Vel 1.5 Litros Vaso De Vidrio Negro', 1, '[{\"added\": {}}]', 11, 1),
(110, '2022-12-31 18:47:37.510600', '68', 'Cafetera Oster 12 Tazas 1000 Watts Filtro Permanente Negro', 1, '[{\"added\": {}}]', 11, 1),
(111, '2022-12-31 18:48:15.213600', '69', 'Sandwichera Vita Gr-789 2 Rebanadas Blanco', 1, '[{\"added\": {}}]', 11, 1),
(112, '2022-12-31 18:49:01.654600', '70', 'Balanza Peso Digital De Cocina Hasta 7kg X 1g Model Sf - 400', 1, '[{\"added\": {}}]', 11, 1),
(113, '2022-12-31 18:56:11.044600', '71', 'Consola Nintendo Switch Incluye Juego Mario Kart Deluxe', 1, '[{\"added\": {}}]', 11, 1),
(114, '2022-12-31 18:56:56.566600', '72', 'Hot Wheels Paquete De 5 Carritos, Escala 1/64', 1, '[{\"added\": {}}]', 11, 1),
(115, '2022-12-31 18:57:34.008600', '73', 'Carro Control Remoto Acrobático 4wd 2,4ghz Giros 360° Stunt', 1, '[{\"added\": {}}]', 11, 1),
(116, '2022-12-31 18:58:01.245600', '74', 'Pulpos Reversibles', 1, '[{\"added\": {}}]', 11, 1),
(117, '2022-12-31 18:58:38.572600', '75', 'Peluches Star Bellys. Peluches Que Alumbran. Star Bellys', 1, '[{\"added\": {}}]', 11, 1),
(118, '2022-12-31 18:59:14.460600', '76', 'Stitch Muñeco Peluche Pequeño 20cm X 20cm', 1, '[{\"added\": {}}]', 11, 1),
(119, '2022-12-31 18:59:54.770600', '77', 'Carro Rc Monster Jam Control Remoto Megalodon 1:15 Original', 1, '[{\"added\": {}}]', 11, 1),
(120, '2022-12-31 19:00:46.972600', '78', 'Monopolio Deluxe Original Hasbro', 1, '[{\"added\": {}}]', 11, 1),
(121, '2022-12-31 19:01:31.537600', '79', 'Cartas Uno Juego De Mesa', 1, '[{\"added\": {}}]', 11, 1),
(122, '2022-12-31 19:02:19.042600', '80', 'Dinosaurio Spinosaurus Espinosaurio Jurassic World', 1, '[{\"added\": {}}]', 11, 1),
(123, '2022-12-31 19:03:01.807600', '81', 'Pokebolas Lanzadoras + 1 Pokémon Surtido Nuevp Pikachu/eevee', 1, '[{\"added\": {}}]', 11, 1),
(124, '2022-12-31 19:03:30.193600', '82', 'Muñecas Barbie Fashionista 100% Original', 1, '[{\"added\": {}}]', 11, 1),
(125, '2022-12-31 19:04:21.931600', '83', 'Jenga Clasico Juego De Mesa Madera 100% Original De Hasbro', 1, '[{\"added\": {}}]', 11, 1),
(126, '2022-12-31 19:05:19.569600', '84', 'Rompecabezas Puzzle 1000 Piezas Marca Educa De Jardín', 1, '[{\"added\": {}}]', 11, 1),
(127, '2022-12-31 19:06:09.951600', '85', 'Nerf Fortnite B-ar Motorizada + 10 Dardos Hasbro Original', 1, '[{\"added\": {}}]', 11, 1),
(128, '2022-12-31 19:06:48.468600', '86', 'Lego Classic 11717 Original 1500 Piezas Somos Tienda Fisica', 1, '[{\"added\": {}}]', 11, 1),
(129, '2022-12-31 19:07:38.994600', '87', 'Lego Minecraft The Abandoned Mine Zombie Cave 21166 248 Pzas', 1, '[{\"added\": {}}]', 11, 1),
(130, '2022-12-31 19:08:20.169600', '88', 'Cocina De Juguete Plegable Para Niñas Tipo Maleta', 1, '[{\"added\": {}}]', 11, 1),
(131, '2022-12-31 19:09:23.276600', '89', 'Nerf Fortnite Gl + 6 Dardos Grandes Juguete Original', 1, '[{\"added\": {}}]', 11, 1),
(132, '2022-12-31 19:10:17.316600', '90', 'Juguete Anti Estrés Pop It Fidget Sensorial Silicon Push', 1, '[{\"added\": {}}]', 11, 1),
(133, '2022-12-31 19:10:57.352600', '91', 'Lego Star Wars Baby Yoda The Mandalorian - 1073 Pzs Original', 1, '[{\"added\": {}}]', 11, 1),
(134, '2022-12-31 19:11:40.463600', '92', 'Lego Technic 42096 Porsche 911 Rsr 1580 Pzs', 1, '[{\"added\": {}}]', 11, 1),
(135, '2022-12-31 19:12:18.374600', '93', 'Set Maquillaje Para Niña Juguete', 1, '[{\"added\": {}}]', 11, 1),
(136, '2022-12-31 19:13:11.119600', '94', 'Cocina Juguete 3 En 1 Con Accesorios Para Niñas', 1, '[{\"added\": {}}]', 11, 1),
(137, '2022-12-31 19:13:59.386600', '95', 'Cocina My Very Own Gourmet De American Plastic Toys En 80vrd', 1, '[{\"added\": {}}]', 11, 1),
(138, '2022-12-31 19:14:35.364600', '96', 'Kit Doctora Y Médico Dentista Para Niñas De 35 Piezas, Rosa', 1, '[{\"added\": {}}]', 11, 1),
(139, '2022-12-31 19:15:10.677600', '97', 'Dinosaurio De Juguete Grande En Blister Niños Triceraptor', 1, '[{\"added\": {}}]', 11, 1),
(140, '2022-12-31 19:16:21.806600', '98', 'Lego, Thor Y Pantera Negra, Marvel, Avengers, 226 Piezas', 1, '[{\"added\": {}}]', 11, 1),
(141, '2022-12-31 19:17:01.203600', '99', 'Lego Minecraft 21167 201 Piezas Nuevo Original', 1, '[{\"added\": {}}]', 11, 1),
(142, '2022-12-31 19:19:03.039600', '100', 'Lego Minions Imparable Bike Chase 75549 Minions Toy Set', 1, '[{\"added\": {}}]', 11, 1),
(143, '2022-12-31 19:36:01.294600', '101', 'Zapatos Deportivos', 1, '[{\"added\": {}}]', 11, 1),
(144, '2022-12-31 19:37:21.892600', '102', 'Moda casual para hombres Ropa-Chaqueta con capucha Moda Chaque', 1, '[{\"added\": {}}]', 11, 1),
(145, '2022-12-31 19:37:42.490600', '101', 'Zapatos Deportivos', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 11, 1),
(146, '2022-12-31 19:38:08.628600', '46', 'Zapatos Deportivos Para Niños Chrcter Grey', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 11, 1),
(147, '2022-12-31 19:38:46.956600', '103', 'Vestido Vinotinto', 1, '[{\"added\": {}}]', 11, 1),
(148, '2022-12-31 19:39:31.441600', '104', 'Camisa Moose Caballero Xl', 1, '[{\"added\": {}}]', 11, 1),
(149, '2022-12-31 19:40:24.376600', '105', 'Camisa De Vestir Para Caballero Manga Larga', 1, '[{\"added\": {}}]', 11, 1),
(150, '2022-12-31 19:41:09.798600', '106', 'Tacones', 1, '[{\"added\": {}}]', 11, 1),
(151, '2022-12-31 19:41:56.360600', '107', 'Pillama de Oso', 1, '[{\"added\": {}}]', 11, 1),
(152, '2022-12-31 19:42:33.140600', '108', 'Zapato De Damas', 1, '[{\"added\": {}}]', 11, 1),
(153, '2022-12-31 19:47:31.776200', '109', 'Zapatos Casuales', 1, '[{\"added\": {}}]', 11, 1),
(154, '2022-12-31 19:48:46.905200', '110', 'Calzado De Seguridad Sicura Tipo Zapator', 1, '[{\"added\": {}}]', 11, 1),
(155, '2022-12-31 19:49:25.505200', '111', 'Botines Casuales Para Dama', 1, '[{\"added\": {}}]', 11, 1),
(156, '2022-12-31 19:57:02.181600', '112', 'Bolso Morral Para Damas Mujer Doble Uso', 1, '[{\"added\": {}}]', 11, 1),
(157, '2022-12-31 19:57:47.428600', '113', 'Morral Antirrobo Impermeable Bolso Mochila', 1, '[{\"added\": {}}]', 11, 1),
(158, '2022-12-31 19:58:28.541600', '114', 'Carteras Para Damas Bandolero', 1, '[{\"added\": {}}]', 11, 1),
(159, '2022-12-31 19:59:06.961600', '115', 'Koala Bolso Mochila Bandolero Ajustable Yacambú Ecology', 1, '[{\"added\": {}}]', 11, 1),
(160, '2022-12-31 20:00:01.836600', '116', 'Reloj Táctico Inteligente Spovan Digital Caballero Deportivo', 1, '[{\"added\": {}}]', 11, 1),
(161, '2022-12-31 20:00:31.729600', '117', 'Reloj Digital Original Tactico Militar Con Luz Led', 1, '[{\"added\": {}}]', 11, 1),
(162, '2022-12-31 20:01:08.962600', '118', 'Reloj G-shock 1027 Doble Hora Analogico Digital Contra Agua', 1, '[{\"added\": {}}]', 11, 1),
(163, '2022-12-31 20:01:49.290600', '119', 'Reloj Fossil Original Nuevo En Caja', 1, '[{\"added\": {}}]', 11, 1),
(164, '2022-12-31 20:02:49.091600', '120', 'Collar Péndulo Piedra Natural', 1, '[{\"added\": {}}]', 11, 1),
(165, '2022-12-31 20:03:20.193600', '121', 'Collar Giratiempo Replica Harry Potter Dorado', 1, '[{\"added\": {}}]', 11, 1),
(166, '2022-12-31 20:04:03.251600', '122', 'Lentes Sol Rectangulares Moda Fashion Unisex Gafas Vintage', 1, '[{\"added\": {}}]', 11, 1),
(167, '2022-12-31 20:04:38.158600', '123', 'Lentes Sol  Moda Fashion Unisex Gafas Vintage', 1, '[{\"added\": {}}]', 11, 1),
(168, '2022-12-31 20:12:23.690600', '124', 'Muebles Modular Piscis Chaise Longue Alta Calidad Fabrica', 1, '[{\"added\": {}}]', 11, 1),
(169, '2022-12-31 20:13:07.264600', '125', 'Muebles Modular Chaise Longue Alta Calidad Fabrica', 1, '[{\"added\": {}}]', 11, 1),
(170, '2022-12-31 20:13:37.132600', '126', 'Colchón Ortopédico Matrimonial Ondaflex 27 Aniversario', 1, '[{\"added\": {}}]', 11, 1),
(171, '2022-12-31 20:14:17.459600', '127', 'Cama Duplex Individual', 1, '[{\"added\": {}}]', 11, 1),
(172, '2022-12-31 20:14:36.125600', '126', 'Colchón Ortopédico Matrimonial Ondaflex 27 Aniversario', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 11, 1),
(173, '2022-12-31 20:15:11.589600', '128', 'Edredon - Colcha Individual Con Juego De Sabana Tienda', 1, '[{\"added\": {}}]', 11, 1),
(174, '2022-12-31 20:15:58.741600', '129', 'Espejo Con Marco De Madera', 1, '[{\"added\": {}}]', 11, 1),
(175, '2022-12-31 20:16:38.783600', '130', 'Bombillo Led 40w Emergencia Recargable USB', 1, '[{\"added\": {}}]', 11, 1),
(176, '2022-12-31 20:17:49.358600', '131', 'Lampara Panel Ojos De Buey Spot Led Super Slim De 6w Oferta', 1, '[{\"added\": {}}]', 11, 1),
(177, '2022-12-31 20:18:55.937600', '132', 'Cuadros Modernos, Minimalistas Y Decorativos', 1, '[{\"added\": {}}]', 11, 1),
(178, '2022-12-31 20:22:43.385600', '122', 'Lentes Sol Rectangulares Moda Fashion Unisex Gafas Vintage', 2, '[{\"changed\": {\"fields\": [\"Img\"]}}]', 11, 1),
(179, '2022-12-31 20:23:32.430600', '133', 'Collar Giratiempo Replica Harry Potter Dorado', 1, '[{\"added\": {}}]', 11, 1),
(180, '2022-12-31 20:25:26.484600', '134', 'Litera De Madera', 1, '[{\"added\": {}}]', 11, 1),
(181, '2022-12-31 20:26:22.270600', '135', 'Silla Chicago Ejecutiva, Oficina Sala Pcnolimit Mx', 1, '[{\"added\": {}}]', 11, 1),
(182, '2022-12-31 20:28:16.270600', '136', 'Silla Eames Moderna Para Comedor Sala Cocina Plastico Moda', 1, '[{\"added\": {}}]', 11, 1),
(183, '2022-12-31 20:29:07.459600', '137', 'Silla Presidencial P880', 1, '[{\"added\": {}}]', 11, 1),
(184, '2022-12-31 20:29:43.692600', '138', 'Luces De Navidad Lineales 10m 100 Bombillos Multicolor', 1, '[{\"added\": {}}]', 11, 1),
(185, '2022-12-31 20:30:20.563600', '139', 'Bombillo Led Multicolor Corneta Altavoz Bluetooth + Control', 1, '[{\"added\": {}}]', 11, 1),
(186, '2022-12-31 20:30:53.220600', '140', 'Bombillo Led Multicolor Corneta Altavoz Bluetooth + Control', 1, '[{\"added\": {}}]', 11, 1),
(187, '2022-12-31 20:31:31.405600', '141', 'Cortina Moderna Sala O Cuarto, 1,45 Ancho X 2,35 Alto', 1, '[{\"added\": {}}]', 11, 1),
(188, '2022-12-31 20:32:10.804600', '142', 'Juego De Recibo Palet En Madera De Pino', 1, '[{\"added\": {}}]', 11, 1),
(189, '2022-12-31 20:32:45.427600', '143', 'Muebles Recibo Piscis S2+p2. Precio Fábrica. Alta Calidad', 1, '[{\"added\": {}}]', 11, 1),
(190, '2022-12-31 20:33:17.436600', '144', 'Box Spring Queem Con Copete De Semi Cuero', 1, '[{\"added\": {}}]', 11, 1),
(191, '2022-12-31 20:37:12.709600', '1', 'Audifonos Gamer Komc G312 - Yidro Online', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(192, '2022-12-31 20:37:35.756600', '11', 'Tarjeta De Video Msi Gt 710 Ddr3 2gb Pci Expres Hdmi Dvi', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(193, '2022-12-31 20:37:54.732600', '3', 'Mouse Gamer Tinji Tj-11 Optico 1600 Dpi Usb Led 6 Botones', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(194, '2022-12-31 20:38:35.342600', '4', 'Memoria Ram Gamer Ddr4 Kingston 8gb Fury Best 3200mhz Rgb', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(195, '2022-12-31 20:38:57.998600', '5', 'Audifono Gamer Kotion Each G2000 - TECNO STORE', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(196, '2022-12-31 20:39:16.129600', '6', 'Cpu Gamer Tarjeta Gigabyte I5 11vagen 16gb Ram M.2 250gb', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(197, '2022-12-31 20:39:33.120600', '7', 'Teclado Gamer Delux Usb K9600 RGB 5 Macros Alámbrico', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(198, '2022-12-31 20:39:55.073600', '8', 'Bits Mouse Gamer Pink 6 Botones Rgb Shipadoo', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(199, '2022-12-31 20:41:06.721600', '101', 'Zapatos Deportivos', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(200, '2022-12-31 20:43:24.386600', '102', 'Moda casual para hombres Ropa-Chaqueta con capucha Moda Chaque', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(201, '2022-12-31 20:43:46.269600', '103', 'Vestido Vinotinto', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(202, '2022-12-31 20:44:21.108600', '104', 'Camisa Moose Caballero Xl', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(203, '2022-12-31 20:44:41.823600', '105', 'Camisa De Vestir Para Caballero Manga Larga', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(204, '2022-12-31 20:44:59.881600', '106', 'Tacones', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(205, '2022-12-31 20:45:19.382600', '107', 'Pillama de Oso', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1),
(206, '2022-12-31 20:45:37.813600', '108', 'Zapato De Damas', 2, '[{\"changed\": {\"fields\": [\"Principal\"]}}]', 11, 1);

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
(10, 'home', 'categorias'),
(11, 'home', 'productos'),
(7, 'login', 'carrito'),
(9, 'login', 'carritoproducts'),
(8, 'login', 'perfil'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-31 03:55:45.366600'),
(2, 'auth', '0001_initial', '2022-12-31 03:56:04.560400'),
(3, 'admin', '0001_initial', '2022-12-31 03:56:09.788800'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-31 03:56:09.898000'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-31 03:56:10.062200'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-31 03:56:11.302800'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-31 03:56:13.463200'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-31 03:56:23.884200'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-31 03:56:25.084200'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-31 03:56:29.865200'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-31 03:56:30.011200'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-31 03:56:30.189200'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-31 03:56:31.891200'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-31 03:56:34.953200'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-31 03:56:36.869200'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-31 03:56:37.036200'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-31 03:56:39.295200'),
(18, 'home', '0001_initial', '2022-12-31 03:56:45.138200'),
(19, 'home', '0002_auto_20221218_1934', '2022-12-31 03:56:47.903200'),
(20, 'home', '0003_alter_productos_description', '2022-12-31 03:56:48.644200'),
(21, 'home', '0004_auto_20221219_1833', '2022-12-31 03:56:49.915200'),
(22, 'home', '0005_alter_productos_img', '2022-12-31 03:56:50.317200'),
(23, 'home', '0006_alter_productos_categoria', '2022-12-31 03:56:50.392200'),
(24, 'home', '0007_alter_productos_categoria', '2022-12-31 03:56:50.536200'),
(25, 'login', '0001_initial', '2022-12-31 03:56:55.015200'),
(26, 'login', '0002_alter_perfil_img', '2022-12-31 03:56:55.144200'),
(27, 'login', '0003_alter_perfil_img', '2022-12-31 03:56:55.278200'),
(28, 'login', '0004_carritoproducts', '2022-12-31 03:57:01.582200'),
(29, 'login', '0005_carrito_productos', '2022-12-31 03:57:01.641200'),
(30, 'login', '0006_carritoproducts_fecha', '2022-12-31 03:57:02.444200'),
(31, 'login', '0007_remove_perfil_img', '2022-12-31 03:57:03.230200'),
(32, 'sessions', '0001_initial', '2022-12-31 03:57:04.171200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_categorias`
--

CREATE TABLE `home_categorias` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_categorias`
--

INSERT INTO `home_categorias` (`id`, `nombre`) VALUES
(1, 'Computadoras'),
(2, 'Deportes y Fitness'),
(3, 'Electrodomésticos'),
(4, 'Juegos'),
(5, 'Hogar y Muebles'),
(6, 'Moda'),
(7, 'Pantallas'),
(8, 'CPU'),
(9, 'Accesorios'),
(10, 'Impresoras'),
(11, 'Tarjetas'),
(12, 'Laptos'),
(13, 'Disco Duro'),
(14, 'Procesador'),
(15, 'Equipo'),
(16, 'Ropa Deportiva'),
(17, 'Suplementos'),
(18, 'Cocción'),
(19, 'Refrigeración'),
(20, 'Lavado y Secado'),
(21, 'Uso Personal'),
(22, 'Cocina'),
(23, 'Muñecos'),
(24, 'Gaming'),
(25, 'Juegos de Mesa'),
(26, 'Juegos de Construcción'),
(27, 'Juguetes de Oficio'),
(28, 'Vehículos'),
(29, 'Ropa de Hombre'),
(30, 'Ropa de Mujer'),
(31, 'Calzado'),
(32, 'Joyeria'),
(33, 'Bolsos y Mochilas'),
(34, 'Camas'),
(35, 'Muebles'),
(36, 'Adornos'),
(37, 'Iluminación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_productos`
--

CREATE TABLE `home_productos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `precio` decimal(15,2) NOT NULL,
  `oferta` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `principal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_productos`
--

INSERT INTO `home_productos` (`id`, `nombre`, `description`, `precio`, `oferta`, `img`, `principal`) VALUES
(1, 'Audifonos Gamer Komc G312 - Yidro Online', NULL, '15.00', NULL, 'home/imgs/Computadora-1.jpg', 1),
(2, 'KOORUI Monitor de computadora 24 pulgadas Full HD 1920 x 1080p, pantalla VA de 75 Hz 3000', NULL, '160.00', 20, 'home/imgs/Computadora-2.jpg', 0),
(3, 'Mouse Gamer Tinji Tj-11 Optico 1600 Dpi Usb Led 6 Botones', NULL, '7.20', NULL, 'home/imgs/Computadora-3.jpg', 1),
(4, 'Memoria Ram Gamer Ddr4 Kingston 8gb Fury Best 3200mhz Rgb', NULL, '75.00', NULL, 'home/imgs/Computadora-4.jpg', 1),
(5, 'Audifono Gamer Kotion Each G2000 - TECNO STORE', NULL, '30.00', NULL, 'home/imgs/Computadora-5.jpg', 1),
(6, 'Cpu Gamer Tarjeta Gigabyte I5 11vagen 16gb Ram M.2 250gb', NULL, '1200.00', 25, 'home/imgs/Computadora-6.jpg', 1),
(7, 'Teclado Gamer Delux Usb K9600 RGB 5 Macros Alámbrico', NULL, '25.00', NULL, 'home/imgs/Computadora-7.jpg', 1),
(8, 'Bits Mouse Gamer Pink 6 Botones Rgb Shipadoo', NULL, '25.00', NULL, 'home/imgs/Computadora-8.jpg', 1),
(9, 'Impresora Epson L1210 Tinta Continua Full Color', NULL, '250.00', 16, 'home/imgs/Computadora-9.jpg', 0),
(10, 'Impresora Epson Multifuncional L4160 Ecotank Wifi Duplex', NULL, '370.00', 10, 'home/imgs/Computadora-10.jpg', 0),
(11, 'Tarjeta De Video Msi Gt 710 Ddr3 2gb Pci Expres Hdmi Dvi', NULL, '120.00', NULL, 'home/imgs/Computadora-11.jpg', 1),
(12, 'Tarjeta De Video Evga Gearforce Rtx 2060 Ko Ultra 6gb', NULL, '500.00', NULL, 'home/imgs/Computadora-12.jpg', 0),
(13, 'Disco Solido Kingston 480gb Ssd A400', NULL, '30.00', NULL, 'home/imgs/Computadora-13.jpg', 0),
(14, 'Disco Solido Kingston 240gb Ssd A400', NULL, '20.00', NULL, 'home/imgs/Computadora-14.jpg', 0),
(15, 'Laptop Hp Core I5 8gb Ram 2000gb Nueva En Caja 15.6', NULL, '750.00', NULL, 'home/imgs/Computadora-15.jpg', 0),
(16, 'Laptop Hp 15.6 Intel Core I5-113g7 8gb 256 Gb Negro Barata', NULL, '630.00', NULL, 'home/imgs/Computadora-16.jpg', 0),
(17, 'Silla Gaming S Racer Ergonomica', NULL, '200.00', 10, 'home/imgs/Computadora-17.jpg', 0),
(18, 'Silla Gamer Con Altavoces Bluetooth Y Masajeador De Cintura', NULL, '230.00', NULL, 'home/imgs/Computadora-18.jpg', 0),
(19, 'Escritorio Gamer Casaottima Tipo L Ergonomico Metal Mdf Bagc', NULL, '800.00', NULL, 'home/imgs/Computadora-19.jpg', 0),
(20, 'Escritorio Gamer', NULL, '500.00', 27, 'home/imgs/Computadora-20.jpg', 0),
(21, 'Procesador Amd Ryzen 7 5700g Grafico Integrados 8core/16hilo', NULL, '345.00', NULL, 'home/imgs/Computadora-21.jpg', 0),
(22, 'Procesador Amd Ryzen 5 5600g Grafico Integrados 6core/12hilo', NULL, '230.00', NULL, 'home/imgs/Computadora-22.jpg', 0),
(23, 'Impresora Epson De Sublimación De Tinta Surecolor F170', NULL, '280.00', NULL, 'home/imgs/Computadora-23.jpg', 0),
(24, 'Cpu Gaming Asus Amd Ryzen 5 5600 G Ssd 480 16gb De Ram', NULL, '838.00', NULL, 'home/imgs/Computadora-24.jpg', 0),
(25, 'Licras Deportiva Caballero Pro Combat Running Crossfit Surf', NULL, '16.00', NULL, 'home/imgs/Deporte-1.jpg', 0),
(26, 'Franela Camiseta Deportiva Wilson Polyspun 73169 Caballero', NULL, '8.00', NULL, 'home/imgs/Deporte-2.webp', 0),
(27, 'Jogger Mono Wilson French Terry Para Caballero', NULL, '35.00', 20, 'home/imgs/Deporte-3.webp', 0),
(28, 'Franela Camiseta Deportiva Wilson Polyspun 73186 Para Dama', NULL, '6.20', NULL, 'home/imgs/Deporte-4.webp', 0),
(29, 'Medias Deportivas Tobilleras Dama Y Caballeros 6 Pares', NULL, '5.00', NULL, 'home/imgs/Deporte-5.webp', 0),
(30, 'Jersey Deportivo Para Ciclismo Mtb Camisa Manga Larga Licra', NULL, '14.00', NULL, 'home/imgs/Deporte-6.webp', 0),
(31, 'Balón De Basket #3 Caucho Boc3 Tamanaco', NULL, '16.00', NULL, 'home/imgs/Deporte-7.webp', 0),
(32, 'Tubo Pote De 3 Pelotas Tennis Penn Originales Tenis Sellados', NULL, '7.00', NULL, 'home/imgs/Deporte-8.webp', 0),
(33, 'Balon O Pelota De Futbol Numero 5', NULL, '9.00', NULL, 'home/imgs/Deporte-9.webp', 0),
(34, 'Balón De Futbolito Nº3 Tamanaco', NULL, '35.00', NULL, 'home/imgs/Deporte-10.webp', 0),
(35, 'Kit De Natación', NULL, '25.00', NULL, 'home/imgs/Deporte-11.webp', 0),
(36, 'Balón Volleyball Mikasa. V200w Oficial', NULL, '100.00', 25, 'home/imgs/Deporte-12.webp', 0),
(37, 'Raquetas Playeras', NULL, '20.00', NULL, 'home/imgs/Deporte-13.webp', 0),
(38, 'Proteina Mass Tech Muscletech 7 Lbs Ganador De Peso', NULL, '70.00', NULL, 'home/imgs/Deporte-14.webp', 0),
(39, 'L-carnitina 3000 De Nutrex Amino Acido', NULL, '18.00', NULL, 'home/imgs/Deporte-15.webp', 0),
(40, 'Proteina Body Fortress Whey Proteína En Polvo, 2lbs', NULL, '40.00', NULL, 'home/imgs/Deporte-16.webp', 0),
(41, 'Citrato De Magnesio 250mg Nature\'s Made Cápsulas', NULL, '30.00', 5, 'home/imgs/Deporte-17.webp', 0),
(42, 'Hydroxycut Elite Capsulas 100 Muscletech', NULL, '25.00', NULL, 'home/imgs/Deporte-18.webp', 0),
(43, 'Testosterone Booster Alpha Test Muscletech 120cap Usa Import', NULL, '29.00', NULL, 'home/imgs/Deporte-19.webp', 0),
(44, 'Chaqueta Deportiva New Balance Optiks Windbreaker', NULL, '50.00', 10, 'home/imgs/Deporte-20.webp', 0),
(45, 'Conjunto Deportivo Algodón Suéter Y Mono', NULL, '20.00', NULL, 'home/imgs/Deporte-21.webp', 0),
(46, 'Zapatos Deportivos Para Niños Chrcter Grey', NULL, '8.00', 25, 'home/imgs/Moda-12.jpg', 0),
(47, 'Nevera LG 28 Pies Door-in-door Multi Air Flow Acero Inox', NULL, '2000.00', 10, 'home/imgs/Electrodomesticos-1.webp', 0),
(48, 'Congelador Horizontal 7.0 199 Litros Bottom Mount', NULL, '422.00', NULL, 'home/imgs/Electrodomesticos-2.webp', 0),
(49, 'Congelador Horizontal Dual Ghbs-510 Ti M. Gelopar Xavi', NULL, '2290.00', NULL, 'home/imgs/Electrodomesticos-3.webp', 0),
(50, 'Cocina Eléctrica De Dos Hornillas Holstein', NULL, '30.00', NULL, 'home/imgs/Electrodomesticos-4.webp', 0),
(51, 'Horno Freidor De Aire 25 Lts, Puertas Francesas Kalorik', NULL, '230.00', NULL, 'home/imgs/Electrodomesticos-5.webp', 0),
(52, 'Microondas Frigilux Horno Eléctrico Digital 45 Litros 110v', NULL, '234.00', 10, 'home/imgs/Electrodomesticos-6.webp', 0),
(53, 'Horno Smart 30* Whirlpool Wos51ec0hs Sw. Xavi', NULL, '9999.00', 25, 'home/imgs/Electrodomesticos-7.webp', 0),
(54, 'Secadora Royal 8 Kg Rse-80', NULL, '480.00', NULL, 'home/imgs/Electrodomesticos-8.webp', 0),
(55, 'Lavadora Secadora Morocha Whirlpool Wet4027hw 20 Kg', NULL, '1300.00', NULL, 'home/imgs/Electrodomesticos-9.webp', 0),
(56, 'Lavadora Premium 12 Kg Semi-automatica', NULL, '309.00', NULL, 'home/imgs/Electrodomesticos-10.webp', 0),
(57, 'Lavadora Doble Tina Blanca 10kg Acros Ald1025dp Sw. Xavi', NULL, '1000.00', 20, 'home/imgs/Electrodomesticos-11.webp', 0),
(58, 'Lavadora Automática Frigilux 12kg 110v Digital 16 Ciclos', NULL, '660.00', 20, 'home/imgs/Electrodomesticos-12.webp', 0),
(59, 'Televisor 32 Aiwa Smart Tv Hd', NULL, '180.00', NULL, 'home/imgs/Electrodomesticos-13.webp', 0),
(60, 'Televisor 32´ Aiwa Smart Tv Hd', NULL, '343.00', NULL, 'home/imgs/Electrodomesticos-14.webp', 0),
(61, 'Batidora Electrica Manual 7 Velocidades Plastico Torta Mixer', NULL, '8.00', NULL, 'home/imgs/Electrodomesticos-15.webp', 0),
(62, 'Batidora Eléctrica De Pedestal + 7 Velocidades + Taza Acero', NULL, '28.00', NULL, 'home/imgs/Electrodomesticos-16.webp', 0),
(63, 'Secador Profesional Supermegaturbo De Cabello Pelo Original', NULL, '27.00', NULL, 'home/imgs/Electrodomesticos-17.webp', 0),
(64, 'Plancha Seca Oste9', NULL, '20.00', NULL, 'home/imgs/Electrodomesticos-18.webp', 0),
(65, 'Plancha Remington De Cabello Original 455 ºf Silk Gruesa', NULL, '29.00', NULL, 'home/imgs/Electrodomesticos-19.webp', 0),
(66, 'Plancha Digital Aeroceramic 1600 Watts Negro Oste', NULL, '40.00', 5, 'home/imgs/Electrodomesticos-20.webp', 0),
(67, 'Licuadora Premium 4 Vel 1.5 Litros Vaso De Vidrio Negro', NULL, '22.00', NULL, 'home/imgs/Electrodomesticos-21.webp', 0),
(68, 'Cafetera Oster 12 Tazas 1000 Watts Filtro Permanente Negro', NULL, '37.00', NULL, 'home/imgs/Electrodomesticos-22.webp', 0),
(69, 'Sandwichera Vita Gr-789 2 Rebanadas Blanco', NULL, '13.00', NULL, 'home/imgs/Electrodomesticos-23.webp', 0),
(70, 'Balanza Peso Digital De Cocina Hasta 7kg X 1g Model Sf - 400', NULL, '6.00', NULL, 'home/imgs/Electrodomesticos-24.webp', 0),
(71, 'Consola Nintendo Switch Incluye Juego Mario Kart Deluxe', NULL, '500.00', 20, 'home/imgs/Juegos-1.webp', 0),
(72, 'Hot Wheels Paquete De 5 Carritos, Escala 1/64', NULL, '10.00', NULL, 'home/imgs/Juegos-2.webp', 0),
(73, 'Carro Control Remoto Acrobático 4wd 2,4ghz Giros 360° Stunt', NULL, '40.00', NULL, 'home/imgs/Juegos-3.webp', 0),
(74, 'Pulpos Reversibles', NULL, '5.00', NULL, 'home/imgs/Juegos-4.webp', 0),
(75, 'Peluches Star Bellys. Peluches Que Alumbran. Star Bellys', NULL, '20.00', NULL, 'home/imgs/Juegos-5.webp', 0),
(76, 'Stitch Muñeco Peluche Pequeño 20cm X 20cm', NULL, '20.00', 10, 'home/imgs/Juegos-6.webp', 0),
(77, 'Carro Rc Monster Jam Control Remoto Megalodon 1:15 Original', NULL, '130.00', NULL, 'home/imgs/Juegos-7.webp', 0),
(78, 'Monopolio Deluxe Original Hasbro', NULL, '25.00', NULL, 'home/imgs/Juegos-8.webp', 0),
(79, 'Cartas Uno Juego De Mesa', NULL, '3.00', NULL, 'home/imgs/Juegos-9.webp', 0),
(80, 'Dinosaurio Spinosaurus Espinosaurio Jurassic World', NULL, '75.00', 20, 'home/imgs/Juegos-10.webp', 0),
(81, 'Pokebolas Lanzadoras + 1 Pokémon Surtido Nuevp Pikachu/eevee', NULL, '8.00', NULL, 'home/imgs/Juegos-11.webp', 0),
(82, 'Muñecas Barbie Fashionista 100% Original', NULL, '20.00', NULL, 'home/imgs/Juegos-12.webp', 0),
(83, 'Jenga Clasico Juego De Mesa Madera 100% Original De Hasbro', NULL, '40.00', NULL, 'home/imgs/Juegos-13.webp', 0),
(84, 'Rompecabezas Puzzle 1000 Piezas Marca Educa De Jardín', NULL, '40.00', NULL, 'home/imgs/Juegos-14.webp', 0),
(85, 'Nerf Fortnite B-ar Motorizada + 10 Dardos Hasbro Original', NULL, '75.00', NULL, 'home/imgs/Juegos-15.webp', 0),
(86, 'Lego Classic 11717 Original 1500 Piezas Somos Tienda Fisica', NULL, '110.00', NULL, 'home/imgs/Juegos-16.webp', 0),
(87, 'Lego Minecraft The Abandoned Mine Zombie Cave 21166 248 Pzas', NULL, '44.00', NULL, 'home/imgs/Juegos-17.webp', 0),
(88, 'Cocina De Juguete Plegable Para Niñas Tipo Maleta', NULL, '54.00', 10, 'home/imgs/Juegos-18.webp', 0),
(89, 'Nerf Fortnite Gl + 6 Dardos Grandes Juguete Original', NULL, '110.00', NULL, 'home/imgs/Juegos-19.webp', 0),
(90, 'Juguete Anti Estrés Pop It Fidget Sensorial Silicon Push', NULL, '5.00', NULL, 'home/imgs/Juegos-20.webp', 0),
(91, 'Lego Star Wars Baby Yoda The Mandalorian - 1073 Pzs Original', NULL, '149.00', 5, 'home/imgs/Juegos-21.webp', 0),
(92, 'Lego Technic 42096 Porsche 911 Rsr 1580 Pzs', NULL, '322.00', 8, 'home/imgs/Juegos-22.webp', 0),
(93, 'Set Maquillaje Para Niña Juguete', NULL, '17.00', NULL, 'home/imgs/Juegos-23.webp', 0),
(94, 'Cocina Juguete 3 En 1 Con Accesorios Para Niñas', NULL, '75.00', NULL, 'home/imgs/Juegos-24.webp', 0),
(95, 'Cocina My Very Own Gourmet De American Plastic Toys En 80vrd', NULL, '75.00', NULL, 'home/imgs/Juegos-25.webp', 0),
(96, 'Kit Doctora Y Médico Dentista Para Niñas De 35 Piezas, Rosa', NULL, '45.00', NULL, 'home/imgs/Juegos-26.webp', 0),
(97, 'Dinosaurio De Juguete Grande En Blister Niños Triceraptor', NULL, '20.00', NULL, 'home/imgs/Juegos-27.webp', 0),
(98, 'Lego, Thor Y Pantera Negra, Marvel, Avengers, 226 Piezas', NULL, '35.00', NULL, 'home/imgs/Juegos-29.webp', 0),
(99, 'Lego Minecraft 21167 201 Piezas Nuevo Original', NULL, '30.00', NULL, 'home/imgs/Juegos-30.webp', 0),
(100, 'Lego Minions Imparable Bike Chase 75549 Minions Toy Set', NULL, '15.00', NULL, 'home/imgs/Juegos-28.webp', 0),
(101, 'Zapatos Deportivos', NULL, '15.00', NULL, 'home/imgs/Moda-1.jpg', 1),
(102, 'Moda casual para hombres Ropa-Chaqueta con capucha Moda Chaque', NULL, '42.00', NULL, 'home/imgs/Moda-2.jpeg', 1),
(103, 'Vestido Vinotinto', NULL, '13.00', NULL, 'home/imgs/Moda-3.jpg', 1),
(104, 'Camisa Moose Caballero Xl', NULL, '15.00', NULL, 'home/imgs/Moda-4.jpg', 1),
(105, 'Camisa De Vestir Para Caballero Manga Larga', NULL, '16.00', NULL, 'home/imgs/Moda-5.jpg', 1),
(106, 'Tacones', NULL, '25.00', NULL, 'home/imgs/Moda-6.jpg', 1),
(107, 'Pillama de Oso', NULL, '15.00', NULL, 'home/imgs/Moda-7.jpg', 1),
(108, 'Zapato De Damas', NULL, '15.00', NULL, 'home/imgs/Moda-8.jpg', 1),
(109, 'Zapatos Casuales', NULL, '44.00', NULL, 'home/imgs/Moda-9.webp', 0),
(110, 'Calzado De Seguridad Sicura Tipo Zapator', NULL, '40.00', NULL, 'home/imgs/Moda-10.webp', 0),
(111, 'Botines Casuales Para Dama', NULL, '28.00', NULL, 'home/imgs/Moda-11.webp', 0),
(112, 'Bolso Morral Para Damas Mujer Doble Uso', NULL, '14.00', NULL, 'home/imgs/Moda-13.webp', 0),
(113, 'Morral Antirrobo Impermeable Bolso Mochila', NULL, '12.00', NULL, 'home/imgs/Moda-14.webp', 0),
(114, 'Carteras Para Damas Bandolero', NULL, '11.00', NULL, 'home/imgs/Moda-15.webp', 0),
(115, 'Koala Bolso Mochila Bandolero Ajustable Yacambú Ecology', NULL, '9.00', NULL, 'home/imgs/Moda-16.jpg', 0),
(116, 'Reloj Táctico Inteligente Spovan Digital Caballero Deportivo', NULL, '20.00', NULL, 'home/imgs/Moda-17.webp', 0),
(117, 'Reloj Digital Original Tactico Militar Con Luz Led', NULL, '10.00', NULL, 'home/imgs/Moda-18.webp', 0),
(118, 'Reloj G-shock 1027 Doble Hora Analogico Digital Contra Agua', NULL, '15.00', NULL, 'home/imgs/Moda-19.webp', 0),
(119, 'Reloj Fossil Original Nuevo En Caja', NULL, '3.55', NULL, 'home/imgs/Moda-20.webp', 0),
(120, 'Collar Péndulo Piedra Natural', NULL, '8.00', NULL, 'home/imgs/Moda-21.webp', 0),
(121, 'Collar Giratiempo Replica Harry Potter Dorado', NULL, '5.00', NULL, 'home/imgs/Moda-23.webp', 0),
(122, 'Lentes Sol Rectangulares Moda Fashion Unisex Gafas Vintage', NULL, '10.00', NULL, 'home/imgs/Moda-23.webp', 0),
(123, 'Lentes Sol  Moda Fashion Unisex Gafas Vintage', NULL, '30.00', 10, 'home/imgs/Moda-24.webp', 0),
(124, 'Muebles Modular Piscis Chaise Longue Alta Calidad Fabrica', NULL, '800.00', NULL, 'home/imgs/Muebles-1.webp', 0),
(125, 'Muebles Modular Chaise Longue Alta Calidad Fabrica', NULL, '530.00', NULL, 'home/imgs/Muebles-2.webp', 0),
(126, 'Colchón Ortopédico Matrimonial Ondaflex 27 Aniversario', NULL, '176.00', 20, 'home/imgs/Muebles-3.webp', 0),
(127, 'Cama Duplex Individual', NULL, '275.00', NULL, 'home/imgs/Muebles-4.webp', 0),
(128, 'Edredon - Colcha Individual Con Juego De Sabana Tienda', NULL, '25.00', NULL, 'home/imgs/Muebles-5.webp', 0),
(129, 'Espejo Con Marco De Madera', NULL, '40.00', NULL, 'home/imgs/Muebles-6.webp', 0),
(130, 'Bombillo Led 40w Emergencia Recargable USB', NULL, '4.00', NULL, 'home/imgs/Muebles-7.webp', 0),
(131, 'Lampara Panel Ojos De Buey Spot Led Super Slim De 6w Oferta', NULL, '4.00', NULL, 'home/imgs/Muebles-8.webp', 0),
(132, 'Cuadros Modernos, Minimalistas Y Decorativos', NULL, '87.00', 30, 'home/imgs/Muebles-9.webp', 0),
(133, 'Collar Giratiempo Replica Harry Potter Dorado', NULL, '5.00', NULL, 'home/imgs/Moda-22.webp', 0),
(134, 'Litera De Madera', NULL, '230.00', NULL, 'home/imgs/Muebles-10.webp', 0),
(135, 'Silla Chicago Ejecutiva, Oficina Sala Pcnolimit Mx', NULL, '60.00', NULL, 'home/imgs/Muebles-11.webp', 0),
(136, 'Silla Eames Moderna Para Comedor Sala Cocina Plastico Moda', NULL, '34.00', NULL, 'home/imgs/Muebles-12.webp', 0),
(137, 'Silla Presidencial P880', NULL, '150.00', 30, 'home/imgs/Muebles-13.webp', 0),
(138, 'Luces De Navidad Lineales 10m 100 Bombillos Multicolor', NULL, '5.00', NULL, 'home/imgs/Muebles-14.webp', 0),
(139, 'Bombillo Led Multicolor Corneta Altavoz Bluetooth + Control', NULL, '8.00', NULL, 'home/imgs/Muebles-15.webp', 0),
(140, 'Bombillo Led Multicolor Corneta Altavoz Bluetooth + Control', NULL, '20.00', NULL, 'home/imgs/Muebles-16.webp', 0),
(141, 'Cortina Moderna Sala O Cuarto, 1,45 Ancho X 2,35 Alto', NULL, '22.00', NULL, 'home/imgs/Muebles-17.webp', 0),
(142, 'Juego De Recibo Palet En Madera De Pino', NULL, '120.00', NULL, 'home/imgs/Muebles-18.webp', 0),
(143, 'Muebles Recibo Piscis S2+p2. Precio Fábrica. Alta Calidad', NULL, '420.00', NULL, 'home/imgs/Muebles-19.webp', 0),
(144, 'Box Spring Queem Con Copete De Semi Cuero', NULL, '120.00', 30, 'home/imgs/Muebles-20.webp', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_productos_categoria`
--

CREATE TABLE `home_productos_categoria` (
  `id` bigint(20) NOT NULL,
  `productos_id` bigint(20) NOT NULL,
  `categorias_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_productos_categoria`
--

INSERT INTO `home_productos_categoria` (`id`, `productos_id`, `categorias_id`) VALUES
(2, 1, 1),
(1, 1, 8),
(3, 1, 9),
(5, 2, 1),
(7, 2, 7),
(4, 2, 8),
(6, 2, 9),
(8, 3, 1),
(9, 3, 9),
(11, 4, 1),
(10, 4, 8),
(12, 4, 11),
(13, 5, 1),
(14, 5, 9),
(16, 6, 1),
(15, 6, 8),
(18, 7, 1),
(17, 7, 8),
(19, 7, 9),
(20, 8, 1),
(21, 8, 9),
(22, 9, 1),
(23, 9, 10),
(24, 10, 1),
(25, 10, 10),
(26, 11, 1),
(27, 11, 11),
(28, 12, 1),
(29, 12, 11),
(31, 13, 1),
(30, 13, 8),
(32, 13, 13),
(34, 14, 1),
(33, 14, 8),
(35, 14, 13),
(36, 15, 1),
(37, 15, 12),
(38, 16, 1),
(39, 16, 12),
(40, 17, 1),
(42, 17, 5),
(43, 17, 9),
(41, 17, 35),
(44, 18, 1),
(46, 18, 5),
(47, 18, 9),
(45, 18, 35),
(48, 19, 1),
(50, 19, 5),
(51, 19, 9),
(49, 19, 35),
(52, 20, 1),
(54, 20, 5),
(55, 20, 9),
(53, 20, 35),
(56, 21, 1),
(62, 21, 14),
(60, 22, 1),
(61, 22, 14),
(63, 23, 1),
(64, 23, 10),
(66, 24, 1),
(65, 24, 8),
(68, 25, 2),
(69, 25, 6),
(67, 25, 16),
(71, 26, 2),
(72, 26, 6),
(70, 26, 16),
(74, 27, 2),
(75, 27, 6),
(73, 27, 16),
(77, 28, 2),
(78, 28, 6),
(76, 28, 16),
(80, 29, 2),
(81, 29, 6),
(79, 29, 16),
(83, 30, 2),
(84, 30, 6),
(82, 30, 16),
(85, 31, 2),
(86, 31, 15),
(87, 32, 2),
(88, 32, 15),
(89, 33, 2),
(90, 33, 15),
(91, 34, 2),
(92, 34, 15),
(93, 35, 2),
(94, 35, 15),
(95, 36, 2),
(96, 36, 15),
(97, 37, 2),
(98, 37, 15),
(100, 38, 2),
(99, 38, 17),
(102, 39, 2),
(101, 39, 17),
(104, 40, 2),
(103, 40, 17),
(106, 41, 2),
(105, 41, 17),
(108, 42, 2),
(107, 42, 17),
(110, 43, 2),
(109, 43, 17),
(112, 44, 2),
(113, 44, 6),
(111, 44, 16),
(115, 45, 2),
(116, 45, 6),
(114, 45, 16),
(118, 46, 2),
(119, 46, 6),
(117, 46, 16),
(242, 46, 31),
(121, 47, 3),
(120, 47, 19),
(123, 48, 3),
(122, 48, 19),
(125, 49, 3),
(124, 49, 19),
(127, 50, 3),
(126, 50, 18),
(128, 50, 22),
(130, 51, 3),
(129, 51, 18),
(132, 52, 3),
(131, 52, 18),
(134, 53, 3),
(133, 53, 18),
(135, 53, 22),
(136, 54, 3),
(137, 54, 20),
(138, 55, 3),
(139, 55, 20),
(140, 56, 3),
(141, 56, 20),
(142, 57, 3),
(143, 57, 20),
(144, 58, 3),
(145, 58, 20),
(146, 59, 3),
(147, 59, 21),
(148, 60, 3),
(149, 60, 21),
(150, 61, 3),
(151, 61, 21),
(152, 62, 3),
(153, 62, 21),
(154, 63, 3),
(155, 63, 21),
(156, 64, 3),
(157, 64, 21),
(158, 65, 3),
(159, 65, 21),
(160, 66, 3),
(161, 66, 21),
(162, 67, 3),
(163, 67, 21),
(164, 68, 3),
(165, 68, 21),
(166, 69, 3),
(167, 69, 21),
(168, 70, 3),
(169, 70, 21),
(170, 71, 4),
(171, 72, 4),
(172, 72, 28),
(173, 73, 4),
(174, 73, 28),
(175, 74, 4),
(176, 74, 23),
(177, 75, 4),
(178, 75, 23),
(179, 76, 4),
(180, 76, 23),
(181, 77, 4),
(182, 77, 28),
(185, 78, 4),
(183, 78, 24),
(184, 78, 25),
(188, 79, 4),
(186, 79, 24),
(187, 79, 25),
(189, 80, 4),
(190, 80, 23),
(191, 81, 4),
(192, 81, 23),
(193, 82, 4),
(194, 82, 23),
(197, 83, 4),
(195, 83, 25),
(196, 83, 26),
(200, 84, 4),
(198, 84, 25),
(199, 84, 26),
(202, 85, 4),
(201, 85, 27),
(204, 86, 4),
(203, 86, 26),
(206, 87, 4),
(205, 87, 26),
(208, 88, 4),
(207, 88, 27),
(210, 89, 4),
(209, 89, 27),
(212, 90, 4),
(213, 90, 23),
(211, 90, 27),
(215, 91, 4),
(214, 91, 26),
(217, 92, 4),
(216, 92, 26),
(219, 93, 4),
(218, 93, 27),
(221, 94, 4),
(222, 94, 22),
(220, 94, 27),
(224, 95, 4),
(225, 95, 22),
(223, 95, 27),
(227, 96, 4),
(226, 96, 27),
(228, 97, 4),
(229, 97, 23),
(231, 98, 4),
(230, 98, 26),
(233, 99, 4),
(232, 99, 26),
(235, 100, 4),
(234, 100, 26),
(237, 101, 2),
(238, 101, 6),
(236, 101, 16),
(241, 101, 31),
(240, 102, 6),
(239, 102, 29),
(243, 103, 6),
(244, 103, 30),
(246, 104, 6),
(245, 104, 29),
(248, 105, 6),
(247, 105, 29),
(250, 106, 6),
(251, 106, 30),
(249, 106, 31),
(252, 107, 6),
(254, 108, 6),
(255, 108, 30),
(253, 108, 31),
(256, 109, 6),
(257, 109, 31),
(258, 110, 6),
(259, 110, 31),
(261, 111, 6),
(262, 111, 30),
(260, 111, 31),
(264, 112, 6),
(263, 112, 33),
(266, 113, 6),
(265, 113, 33),
(268, 114, 6),
(267, 114, 33),
(270, 115, 6),
(269, 115, 33),
(272, 116, 6),
(271, 116, 32),
(274, 117, 6),
(273, 117, 32),
(276, 118, 6),
(275, 118, 32),
(278, 119, 6),
(277, 119, 32),
(280, 120, 6),
(279, 120, 32),
(282, 121, 6),
(281, 121, 32),
(284, 122, 6),
(283, 122, 32),
(286, 123, 6),
(285, 123, 32),
(288, 124, 5),
(287, 124, 35),
(290, 125, 5),
(289, 125, 35),
(292, 126, 5),
(295, 126, 34),
(294, 127, 5),
(293, 127, 34),
(297, 128, 5),
(296, 128, 34),
(299, 129, 5),
(298, 129, 36),
(301, 130, 5),
(300, 130, 37),
(303, 131, 5),
(302, 131, 37),
(305, 132, 5),
(304, 132, 36),
(307, 133, 6),
(306, 133, 32),
(310, 134, 5),
(308, 134, 34),
(309, 134, 35),
(312, 135, 5),
(311, 135, 35),
(314, 136, 5),
(313, 136, 35),
(316, 137, 5),
(315, 137, 35),
(318, 138, 5),
(317, 138, 37),
(320, 139, 5),
(319, 139, 37),
(322, 140, 5),
(321, 140, 37),
(324, 141, 5),
(323, 141, 36),
(326, 142, 5),
(325, 142, 36),
(328, 143, 5),
(327, 143, 35),
(330, 144, 5),
(329, 144, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_carrito`
--

CREATE TABLE `login_carrito` (
  `usuario_id` int(11) NOT NULL,
  `cantidad_Productos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_carritoproducts`
--

CREATE TABLE `login_carritoproducts` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `carrito_id` int(11) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `fecha` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_perfil`
--

CREATE TABLE `login_perfil` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_creacion` date NOT NULL
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
-- Indices de la tabla `home_categorias`
--
ALTER TABLE `home_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_productos`
--
ALTER TABLE `home_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_productos_categoria`
--
ALTER TABLE `home_productos_categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_productos_categoria_productos_id_categorias__7fac9d3e_uniq` (`productos_id`,`categorias_id`),
  ADD KEY `home_productos_categ_categorias_id_7df86e6b_fk_home_cate` (`categorias_id`);

--
-- Indices de la tabla `login_carrito`
--
ALTER TABLE `login_carrito`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `login_carritoproducts`
--
ALTER TABLE `login_carritoproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_carritoproduct_carrito_id_b0a0d2dc_fk_login_car` (`carrito_id`),
  ADD KEY `login_carritoproducts_producto_id_5cd7830b_fk_home_productos_id` (`producto_id`);

--
-- Indices de la tabla `login_perfil`
--
ALTER TABLE `login_perfil`
  ADD PRIMARY KEY (`usuario_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `home_categorias`
--
ALTER TABLE `home_categorias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `home_productos`
--
ALTER TABLE `home_productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT de la tabla `home_productos_categoria`
--
ALTER TABLE `home_productos_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT de la tabla `login_carritoproducts`
--
ALTER TABLE `login_carritoproducts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `home_productos_categoria`
--
ALTER TABLE `home_productos_categoria`
  ADD CONSTRAINT `home_productos_categ_categorias_id_7df86e6b_fk_home_cate` FOREIGN KEY (`categorias_id`) REFERENCES `home_categorias` (`id`),
  ADD CONSTRAINT `home_productos_categ_productos_id_55108bc4_fk_home_prod` FOREIGN KEY (`productos_id`) REFERENCES `home_productos` (`id`);

--
-- Filtros para la tabla `login_carrito`
--
ALTER TABLE `login_carrito`
  ADD CONSTRAINT `login_carrito_usuario_id_be3487be_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `login_carritoproducts`
--
ALTER TABLE `login_carritoproducts`
  ADD CONSTRAINT `login_carritoproduct_carrito_id_b0a0d2dc_fk_login_car` FOREIGN KEY (`carrito_id`) REFERENCES `login_carrito` (`usuario_id`),
  ADD CONSTRAINT `login_carritoproducts_producto_id_5cd7830b_fk_home_productos_id` FOREIGN KEY (`producto_id`) REFERENCES `home_productos` (`id`);

--
-- Filtros para la tabla `login_perfil`
--
ALTER TABLE `login_perfil`
  ADD CONSTRAINT `login_perfil_usuario_id_8cfa6ed3_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
