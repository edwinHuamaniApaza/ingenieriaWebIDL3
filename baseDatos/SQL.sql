-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para laravel
CREATE DATABASE IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel`;

-- Volcando estructura para tabla laravel.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel.migrations: ~8 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2023_01_13_190402_create_categorias_table', 1),
	(13, '2014_10_12_000000_create_users_table', 2),
	(14, '2014_10_12_100000_create_password_resets_table', 2),
	(15, '2019_08_19_000000_create_failed_jobs_table', 2),
	(16, '2021_06_21_142644_create_person_table', 2),
	(17, '2023_01_13_182834_create_productos_table', 2),
	(18, '2023_01_13_190402_create_tareas_table', 2),
	(19, '2023_01_13_191450_create_pedidos_table', 2);

-- Volcando estructura para tabla laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel.password_resets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla laravel.tareas
CREATE TABLE IF NOT EXISTS `tareas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completado` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel.tareas: ~13 rows (aproximadamente)
INSERT INTO `tareas` (`id`, `titulo`, `descripcion`, `completado`, `created_at`, `updated_at`) VALUES
	(5, 'Aprender JavaScript Básico', 'Estudiar los conceptos fundamentales de JavaScript, como variables, estructuras de control y funciones.', 0, '2023-11-05 13:32:17', '2023-11-07 08:52:50'),
	(8, 'Desarrollar una Aplicación Web en React', 'Crear una aplicación web utilizando el marco de trabajo React para mejorar las habilidades de desarrollo front-end.', 0, '2023-11-05 20:46:59', '2023-11-07 08:36:12'),
	(10, 'Optimizar el Rendimiento de una Aplicación Android en Kotlin', 'dentificar y resolver cuellos de botella de rendimiento en una aplicación Android escrita en Kotlin.', 1, '2023-11-05 21:12:54', '2023-11-07 08:36:14'),
	(11, 'Explorar Conceptos Avanzados de Python', 'rofundizar en temas avanzados de Python, como programación orientada a objetos y manipulación de datos.', 1, '2023-11-05 21:30:36', '2023-11-07 09:29:05'),
	(12, 'Crear una API RESTful con Node.js y Express', 'Diseñar y desarrollar una API RESTful utilizando Node.js y el marco de trabajo Express.', 1, '2023-11-06 00:14:41', '2023-11-07 09:29:03'),
	(13, 'Investigar Nuevas Características de C# en .NET Core', 'Explorar las últimas características de C# en el contexto de .NET Core para desarrollar aplicaciones multiplataforma.', 1, '2023-11-06 03:49:36', '2023-11-07 08:40:06'),
	(14, 'Habilidades de Resolución de Problemas en Algoritmos', 'Practicar la resolución de problemas de algoritmos y estructuras de datos para fortalecer tus habilidades de programación.', 1, '2023-11-06 04:17:13', '2023-11-07 08:56:45'),
	(15, 'Automatizar Tareas Repetitivas con PowerShell', 'rear scripts en PowerShell para automatizar tareas comunes en sistemas Windows.', 1, '2023-11-06 04:42:44', '2023-11-07 08:56:26'),
	(16, 'Crear una Aplicación de Juegos en Unity', 'Desarrollar un juego interactivo en Unity utilizando C# y aprovechar las capacidades de la plataforma.', 1, '2023-11-06 05:16:29', '2023-11-07 08:56:08'),
	(17, 'Proyecto de Código Abierto', 'Colaborar en un proyecto de código abierto relacionado con lenguajes de programación para ganar experiencia y ayudar a la comunidad.', 1, '2023-11-06 07:02:21', '2023-11-07 08:40:01'),
	(18, 'Tendencias en el Desarrollo de Lenguajes de Programación', 'Realizar una investigación sobre las tendencias actuales en el desarrollo de lenguajes de programación, como nuevos lenguajes, paradigmas emergentes y su relevancia en la industria.', 1, '2023-11-06 07:38:36', '2023-11-07 08:39:57'),
	(19, 'Tendencias en el Desarrollo de Lenguajes de Programación 2', 'Realizar una investigación sobre las tendencias actuales en el desarrollo de lenguajes de programación, como nuevos lenguajes, paradigmas emergentes y su relevancia en la industria.', 1, '2023-11-07 09:20:40', '2023-11-07 09:32:21'),
	(20, 'Tendencias en el Desarrollo de Lenguajes de Programación 3', 'Realizar una investigación sobre las tendencias actuales en el desarrollo de lenguajes de programación, como nuevos lenguajes, paradigmas emergentes y su relevancia en la industria.', 1, '2023-11-07 09:27:58', '2023-11-07 09:32:22');

-- Volcando estructura para tabla laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel.users: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
