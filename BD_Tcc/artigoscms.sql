-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Nov-2023 às 03:54
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `artigoscms`
--
CREATE DATABASE IF NOT EXISTS `artigoscms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `artigoscms`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-09-25 22:30:04.999000', '2023-09-25 22:30:04.999000', NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-09-25 22:30:05.005000', '2023-09-25 22:30:05.005000', NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-09-25 22:30:05.012000', '2023-09-25 22:30:05.012000', NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-09-25 22:30:05.017000', '2023-09-25 22:30:05.017000', NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-09-25 22:30:05.022000', '2023-09-25 22:30:05.022000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-09-25 22:30:05.026000', '2023-09-25 22:30:05.026000', NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-09-25 22:30:05.032000', '2023-09-25 22:30:05.032000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-09-25 22:30:05.037000', '2023-09-25 22:30:05.037000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-09-25 22:30:05.042000', '2023-09-25 22:30:05.042000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-09-25 22:30:05.046000', '2023-09-25 22:30:05.046000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-09-25 22:30:05.051000', '2023-09-25 22:30:05.051000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-09-25 22:30:05.055000', '2023-09-25 22:30:05.055000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-09-25 22:30:05.078000', '2023-09-25 22:30:05.078000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-09-25 22:30:05.082000', '2023-09-25 22:30:05.082000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-09-25 22:30:05.087000', '2023-09-25 22:30:05.087000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-09-25 22:30:05.092000', '2023-09-25 22:30:05.092000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-09-25 22:30:05.097000', '2023-09-25 22:30:05.097000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-09-25 22:30:05.101000', '2023-09-25 22:30:05.101000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-09-25 22:30:05.108000', '2023-09-25 22:30:05.108000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-09-25 22:30:05.113000', '2023-09-25 22:30:05.113000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-09-25 22:30:05.117000', '2023-09-25 22:30:05.117000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-09-25 22:30:05.121000', '2023-09-25 22:30:05.121000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-09-25 22:30:05.126000', '2023-09-25 22:30:05.126000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-09-25 22:30:05.130000', '2023-09-25 22:30:05.130000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-09-25 22:30:05.135000', '2023-09-25 22:30:05.135000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-09-25 22:30:05.140000', '2023-09-25 22:30:05.140000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-09-25 22:30:05.144000', '2023-09-25 22:30:05.144000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-09-25 22:30:05.150000', '2023-09-25 22:30:05.150000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-09-25 22:30:05.154000', '2023-09-25 22:30:05.154000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-09-25 22:30:05.159000', '2023-09-25 22:30:05.159000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-09-25 22:30:05.164000', '2023-09-25 22:30:05.164000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-09-25 22:30:05.169000', '2023-09-25 22:30:05.169000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-09-25 22:30:05.173000', '2023-09-25 22:30:05.173000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-09-25 22:30:05.179000', '2023-09-25 22:30:05.179000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-09-25 22:30:05.184000', '2023-09-25 22:30:05.184000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-09-25 22:30:05.189000', '2023-09-25 22:30:05.189000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-09-25 22:30:05.194000', '2023-09-25 22:30:05.194000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-09-25 22:30:05.199000', '2023-09-25 22:30:05.199000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-09-25 22:30:05.204000', '2023-09-25 22:30:05.204000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-09-25 22:30:05.208000', '2023-09-25 22:30:05.208000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-09-25 22:30:05.213000', '2023-09-25 22:30:05.213000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-09-25 22:30:05.217000', '2023-09-25 22:30:05.217000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-09-25 22:30:05.222000', '2023-09-25 22:30:05.222000', NULL, NULL),
(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-09-25 22:30:05.226000', '2023-09-25 22:30:05.226000', NULL, NULL),
(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-09-25 22:30:05.232000', '2023-09-25 22:30:05.232000', NULL, NULL),
(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-09-25 22:30:05.236000', '2023-09-25 22:30:05.236000', NULL, NULL),
(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-09-25 22:30:05.241000', '2023-09-25 22:30:05.241000', NULL, NULL),
(48, 'admin::users.create', NULL, '{}', '[]', '2023-09-25 22:30:05.245000', '2023-09-25 22:30:05.245000', NULL, NULL),
(49, 'admin::users.read', NULL, '{}', '[]', '2023-09-25 22:30:05.250000', '2023-09-25 22:30:05.250000', NULL, NULL),
(50, 'admin::users.update', NULL, '{}', '[]', '2023-09-25 22:30:05.254000', '2023-09-25 22:30:05.254000', NULL, NULL),
(51, 'admin::users.delete', NULL, '{}', '[]', '2023-09-25 22:30:05.258000', '2023-09-25 22:30:05.258000', NULL, NULL),
(52, 'admin::roles.create', NULL, '{}', '[]', '2023-09-25 22:30:05.263000', '2023-09-25 22:30:05.263000', NULL, NULL),
(53, 'admin::roles.read', NULL, '{}', '[]', '2023-09-25 22:30:05.268000', '2023-09-25 22:30:05.268000', NULL, NULL),
(54, 'admin::roles.update', NULL, '{}', '[]', '2023-09-25 22:30:05.273000', '2023-09-25 22:30:05.273000', NULL, NULL),
(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-09-25 22:30:05.278000', '2023-09-25 22:30:05.278000', NULL, NULL),
(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-09-25 22:30:05.367000', '2023-09-25 22:30:05.367000', NULL, NULL),
(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-09-25 22:30:05.372000', '2023-09-25 22:30:05.372000', NULL, NULL),
(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-09-25 22:30:05.377000', '2023-09-25 22:30:05.377000', NULL, NULL),
(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-09-25 22:30:05.381000', '2023-09-25 22:30:05.381000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-09-25 22:30:05.386000', '2023-09-25 22:30:05.386000', NULL, NULL),
(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-09-25 22:30:05.390000', '2023-09-25 22:30:05.390000', NULL, NULL),
(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-09-25 22:30:05.395000', '2023-09-25 22:30:05.395000', NULL, NULL),
(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-09-25 22:30:05.399000', '2023-09-25 22:30:05.399000', NULL, NULL),
(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-09-25 22:30:05.404000', '2023-09-25 22:30:05.404000', NULL, NULL),
(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-09-25 22:30:05.410000', '2023-09-25 22:30:05.410000', NULL, NULL),
(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-09-25 22:30:05.414000', '2023-09-25 22:30:05.414000', NULL, NULL),
(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-09-25 22:30:05.418000', '2023-09-25 22:30:05.418000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-09-25 22:30:05.423000', '2023-09-25 22:30:05.423000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-09-25 22:30:05.427000', '2023-09-25 22:30:05.427000', NULL, NULL),
(73, 'plugin::content-manager.explorer.delete', 'api::blog.blog', '{\"locales\":[\"en\"]}', '[]', '2023-09-25 22:42:08.469000', '2023-09-25 22:42:08.469000', NULL, NULL),
(74, 'plugin::content-manager.explorer.publish', 'api::blog.blog', '{\"locales\":[\"en\"]}', '[]', '2023-09-25 22:42:08.474000', '2023-09-25 22:42:08.474000', NULL, NULL),
(75, 'plugin::content-manager.explorer.create', 'api::blog.blog', '{\"fields\":[\"Title\",\"Category\",\"Summary\",\"IsFeatured\",\"Thumbnail\",\"FeaturedImage\",\"Content\",\"Slug\"],\"locales\":[\"en\"]}', '[]', '2023-09-25 22:47:19.653000', '2023-09-25 22:47:19.653000', NULL, NULL),
(76, 'plugin::content-manager.explorer.read', 'api::blog.blog', '{\"fields\":[\"Title\",\"Category\",\"Summary\",\"IsFeatured\",\"Thumbnail\",\"FeaturedImage\",\"Content\",\"Slug\"],\"locales\":[\"en\"]}', '[]', '2023-09-25 22:47:19.660000', '2023-09-25 22:47:19.660000', NULL, NULL),
(77, 'plugin::content-manager.explorer.update', 'api::blog.blog', '{\"fields\":[\"Title\",\"Category\",\"Summary\",\"IsFeatured\",\"Thumbnail\",\"FeaturedImage\",\"Content\",\"Slug\"],\"locales\":[\"en\"]}', '[]', '2023-09-25 22:47:19.762000', '2023-09-25 22:47:19.762000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(73, 73, 1, 61),
(74, 74, 1, 62),
(75, 75, 1, 63),
(76, 76, 1, 64),
(77, 77, 1, 65);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-09-25 22:30:04.984000', '2023-09-25 22:30:04.984000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-09-25 22:30:04.990000', '2023-09-25 22:30:04.990000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-09-25 22:30:04.996000', '2023-09-25 22:30:04.996000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'joao pedro', NULL, NULL, 'joaopedrobaccarin123@gmail.com', '$2a$10$Cc2tlO7IPQS46KiEj/mY5.y/23tP9GdSteXImPb0tHq8VAKAq4UZe', NULL, NULL, 1, 0, NULL, '2023-09-25 22:30:50.021000', '2023-09-25 22:30:50.021000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `category`, `summary`, `is_featured`, `content`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `slug`) VALUES
(6, 'A Revolução Francesa: Uma Transformação Histórica', 'História', 'A Revolução Francesa, ocorrida no final do século XVIII, é um dos eventos mais significativos da história moderna. ', 1, 'A Revolução Francesa, ocorrida no final do século XVIII, é um dos eventos mais significativos da história moderna. Ela teve um profundo impacto não apenas na França, mas também influenciou movimentos revolucionários em todo o mundo. Neste artigo, exploraremos os principais aspectos e fases dessa revolução que moldou o curso da história.\n\n## Contexto Histórico\n\nA França no século XVIII estava sob o regime monárquico dos Bourbon, com Luís XVI no trono. A nação enfrentava uma crise econômica severa devido a gastos extravagantes da monarquia, altos impostos e uma sociedade profundamente dividida em classes sociais. Essa tensão acumulada deu origem à Revolução Francesa.\n\n## Fases da Revolução\n\n### 1. Assembleia Nacional (1789-1791)\n\nO início da Revolução foi marcado pela convocação dos Estados Gerais em 1789, que buscavam solucionar a crise financeira. Isso levou à formação da Assembleia Nacional Constituinte, onde os representantes do Terceiro Estado (a classe comum) clamaram por igualdade e liberdade. Em 1789, a Bastilha foi tomada pelos revolucionários, simbolizando o início da revolta.\n\nDurante esta fase, a Assembleia Nacional aprovou a Declaração dos Direitos do Homem e do Cidadão, um documento fundamental que proclamava os princípios de liberdade, igualdade e fraternidade. Também ocorreram reformas radicais, incluindo a abolição dos privilégios da nobreza e do clero.\n\n### 2. A Convenção Nacional (1792-1795)\n\nA Convenção Nacional foi estabelecida após a queda da monarquia em 1792. Durante esse período, a França enfrentou ameaças externas devido às guerras revolucionárias e viu a execução do rei Luís XVI. A Convenção também testemunhou o Reinado do Terror, liderado pelo Comitê de Salvação Pública, resultando na execução de milhares de pessoas.\n\n![432px-Jacques-Louis_David_-_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_-_Google_Art_Project.jpg](http://localhost:1337/uploads/432px_Jacques_Louis_David_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_Google_Art_Project_1e21290197.jpg)\n\nNo auge do Terror, o líder revolucionário **Maximilien Robespierre** desempenhou um papel crucial. As execuções em massa, conhecidas como a \"**Guilhotina**,\" tornaram-se um símbolo da brutalidade da época. No entanto, o Terror também foi um período de intensas reformas sociais e políticas.\n\n![582px-Robespierre.jpg](http://localhost:1337/uploads/582px_Robespierre_d7333ebf02.jpg)\n\n### 3. O Diretório (1795-1799)\n\nO Diretório foi uma fase de instabilidade política na França. A Constituição de 1795 estabeleceu um governo composto por cinco diretores, mas enfrentou desafios internos e externos, incluindo conspirações e conflitos armados. Durante esse período, as lutas de poder e a corrupção eram comuns.\n\n## Legado da Revolução Francesa\n\nA Revolução Francesa deixou um legado duradouro no mundo. Ela inspirou movimentos revolucionários em outros países, como as Revoluções Haitiana e Latino-americana, e introduziu princípios fundamentais, como liberdade, igualdade e fraternidade. Além disso, levou à abolição do Antigo Regime na França e à disseminação de ideias democráticas.\n\nOs princípios da Revolução também tiveram impacto duradouro na política e na filosofia. Eles influenciaram pensadores como Karl Marx e Friedrich Engels no desenvolvimento das teorias socialistas e comunistas.\n\n## Resumo em Bulletpoints\n\n- **Contexto Histórico:**\n  - Crise econômica devido a gastos excessivos da monarquia.\n  - Sociedade dividida em classes sociais.\n  \n- **Fases da Revolução:**\n  - Assembleia Nacional (1789-1791):\n    - Convocação dos Estados Gerais.\n    - Queda da Bastilha.\n    - Declaração dos Direitos do Homem e do Cidadão.\n    \n  - Convenção Nacional (1792-1795):\n    - Execução do rei Luís XVI.\n    - Reinado do Terror.\n    \n  - O Diretório (1795-1799):\n    - Instabilidade política.\n    - Constituição de 1795.\n    \n- **Legado da Revolução Francesa:**\n  - Inspirou movimentos revolucionários globais.\n  - Introduziu princípios de liberdade, igualdade e fraternidade.\n  - Abolição do Antigo Regime e propagação de ideias democráticas.\n\n## Conclusão\n\nA Revolução Francesa foi um evento complexo e tumultuado que mudou radicalmente a história da França e influenciou o curso da história mundial. Seus ideais e lutas continuam a ressoar nos dias de hoje, lembrando-nos da importância da busca pela justiça, igualdade e liberdade.\n\n\n>\"O homem nasce bom, mas a sociedade o corrompe.\" - Jean-Jacques Rousseau', '2023-09-27 21:18:43.660000', '2023-09-28 09:31:41.825000', '2023-09-27 21:18:44.943000', 1, 1, 'en', 'a-revolucao-francesa-uma-transformacao-historica'),
(7, 'Introdução ao Desenvolvimento Web', 'Programação - Iniciante', 'Neste artigo, vamos dar os primeiros passos no mundo do desenvolvimento web, explorando três tecnologias fundamentais: HTML, CSS e JavaScript.', 0, 'O desenvolvimento web é uma área empolgante e em constante evolução que permite criar páginas e aplicativos para a internet. Neste artigo, vamos dar os primeiros passos no mundo do desenvolvimento web, explorando três tecnologias fundamentais: **HTML, CSS e JavaScript**.\n\n## O que é Desenvolvimento Web?\n\nO desenvolvimento web é o processo de criação de sites e aplicativos que são acessados pela internet. Isso envolve a criação da estrutura, design e funcionalidade de uma página web. **Três tecnologias principais desempenham um papel crucial nesse processo: HTML, CSS e JavaScript**.\n\n## HTML - A Estrutura da Web\n![html.webp](http://localhost:1337/uploads/html_c7abb6ec31.webp)\n**HTML (Hypertext Markup Language)** é a linguagem de marcação usada para estruturar o conteúdo de uma página web. \nEle define os elementos que compõem a página, como cabeçalhos, parágrafos, links e imagens. Aqui está um exemplo simples de um documento HTML:\n\n```\n<!DOCTYPE html>\n<html>\n<head>\n    <title>Minha Página Web</title>\n</head>\n<body>\n    <h1>Olá, Mundo!</h1>\n    <p>Este é um parágrafo simples.</p>\n</body>\n</html>\n```\n\n## CSS - O Estilo da Web\n![creative-css3-tutorials.jpg](http://localhost:1337/uploads/creative_css3_tutorials_02c0eb5c8c.jpg)\nCSS (Cascading Style Sheets) é usado para estilizar a aparência dos elementos HTML. **Com CSS, você pode definir cores, fontes, margens e muito mais**. Isso permite que você crie layouts atraentes e responsivos para suas páginas. Veja um exemplo de regra CSS simples:\n\n```\np {\n    color: blue;\n    font-size: 16px;\n}\n```\n\n## JavaScript - A Interatividade da Web\n![JAVASCRIPT.png](http://localhost:1337/uploads/JAVASCRIPT_3e6edb1591.png)\nJavaScript é uma linguagem de programação que permite adicionar interatividade às suas páginas web. **Com JavaScript, você pode criar animações, validar formulários, interagir com APIs e muito mais**. Aqui está um exemplo simples de um script JavaScript que exibe uma mensagem quando um botão é clicado:\n\n```javascript\ndocument.getElementById(\'meuBotao\').addEventListener(\'click\', function() {\n    alert(\'Botão clicado!\');\n});\n```\n\n## Como Essas Tecnologias se Unem\n\nPara criar uma página web completa, você combina **HTML, CSS e JavaScript**. HTML fornece a estrutura, CSS define o estilo e JavaScript adiciona a interatividade. Ao trabalhar com essas **tecnologias em conjunto**, você pode criar **sites dinâmicos e atraentes**.\n\n## Conclusão\n\nEste foi apenas um breve vislumbre do mundo do desenvolvimento web com HTML, CSS e JavaScript. À medida que você avança, aprenderá a criar páginas mais complexas, interativas e responsivas. Há uma abundância de recursos online, tutoriais e cursos disponíveis para ajudar você a se aprofundar nesse campo emocionante.\n\nComece com projetos simples, experimente e continue aprendendo. **A prática constante é a chave para se tornar um desenvolvedor web habilidoso**.\n\n![flat,750x1000,075,f.jpg](http://localhost:1337/uploads/flat_750x1000_075_f_04244aac1c.jpg)\n\n', '2023-09-28 09:10:47.727000', '2023-09-28 09:10:52.321000', '2023-09-28 09:10:52.318000', 1, 1, 'en', 'introducao-ao-desenvolvimento-web-com-html-css-e-javascript'),
(8, 'As Leis de Newton: Fundamentos da Mecânica Clássica', 'Física', 'As Leis de Newton, formuladas por Sir Isaac Newton no século XVII, são um marco na história da física e continuam sendo a base da mecânica clássica, que descreve o movimento dos objetos em nosso mundo cotidiano.', 0, 'As Leis de Newton, formuladas por **Sir Isaac Newton** no século XVII, são um marco na história da física e continuam sendo a base da mecânica clássica, que descreve o movimento dos objetos em nosso mundo cotidiano. Estas leis fornecem uma estrutura fundamental para entender como as forças afetam o movimento dos objetos.\n\n![598px-Portrait_of_Sir_Isaac_Newton,_1689_(brightened).jpg](http://localhost:1337/uploads/598px_Portrait_of_Sir_Isaac_Newton_1689_brightened_ab8cd068cb.jpg)\n\n## Primeira Lei de Newton - Lei da Inércia\n\n### O Princípio da Inércia\n\nA primeira lei de Newton, também conhecida como a Lei da Inércia, estabelece o seguinte princípio fundamental: \"Um objeto em repouso tende a permanecer em repouso, e um objeto em movimento tende a permanecer em movimento com a mesma velocidade e na mesma direção, a menos que uma força externa atue sobre ele.\"\n\nIsso significa que os objetos têm uma tendência natural de resistir a mudanças em seu estado de movimento. Se nenhumas forças externas estiverem agindo sobre um objeto, ele manterá seu estado de repouso ou de movimento uniforme.\n\n**Questão 1**: Se um carro está viajando a uma velocidade constante de 80 km/h em uma estrada reta e o motorista desliga o motor, qual será o movimento do carro de acordo com a primeira lei de Newton?\n\n## Segunda Lei de Newton - Lei da Força e Aceleração\n\n### A Relação entre Força e Aceleração\n\nA segunda lei de Newton estabelece uma relação quantitativa entre a força aplicada a um objeto, sua massa e a aceleração resultante. A fórmula matemática que representa essa lei é:\n>[F = ma]\nOnde:\n- \\(**F**\\) é a força aplicada ao objeto (em Newtons, **N**).\n- \\(**m**\\) é a massa do objeto (em quilogramas, **kg**).\n- \\(**a**\\) é a aceleração que o objeto experimenta (em metros por segundo ao quadrado, **m/s²**).\n\nEssa lei nos diz que a aceleração de um objeto é diretamente proporcional à força aplicada a ele e inversamente proporcional à sua massa. Em outras palavras, quanto maior a força aplicada a um objeto, maior será a aceleração que ele terá, e quanto maior a massa do objeto, menor será sua aceleração para a mesma força.\n\n**Questão 2:** Se um objeto de massa 5 kg é submetido a uma força de 20 N, qual será a aceleração do objeto de acordo com a segunda lei de Newton?\n\n**Questão 3:** Suponha que você esteja empurrando um carrinho de compras com uma força de 15 N e ele acelera a uma taxa de 2 m/s². Qual é a massa do carrinho de compras?\n\n## Terceira Lei de Newton - Lei da Ação e Reação\n\n### O Princípio da Ação e Reação\n\nA terceira lei de Newton afirma que **\"para cada ação, há uma reação igual e oposta**\". Isso significa que, quando um objeto exerce uma força sobre outro objeto (ação), o segundo objeto exerce uma força igual e oposta sobre o primeiro objeto (reação).\n\n\n## Conclusão\n\nAs Leis de Newton são fundamentais para entender o comportamento dos objetos em movimento e têm amplas aplicações na engenharia, na física e em muitos outros campos. Elas continuam a ser uma base essencial para o estudo do movimento e das forças que o causam.\n\nNeste artigo, exploramos as três leis de Newton em detalhes, desde o princípio da inércia até a relação entre força e aceleração e o princípio da ação e reação. Elas são essenciais para a resolução de problemas complexos de engenharia e para compreender o mundo ao nosso redor.', '2023-09-28 09:30:15.162000', '2023-09-28 09:30:17.256000', '2023-09-28 09:30:17.253000', 1, 1, 'en', 'leis-de-newton'),
(9, 'A Evolução dos Modelos Atômicos: Desvendando a Estrutura do Átomo', 'Química', 'Os modelos atômicos são representações teóricas que descrevem a estrutura e o comportamento dos átomos, as unidades fundamentais da matéria.', 0, 'Os modelos atômicos são representações teóricas que descrevem a estrutura e o comportamento dos átomos, as unidades fundamentais da matéria. Ao longo da história da ciência, vários cientistas contribuíram com modelos atômicos que ajudaram a nossa compreensão do mundo subatômico. Neste artigo, vamos explorar alguns dos modelos atômicos mais influentes.\n\n## Modelo Atômico de Dalton (1803)\n\nO primeiro modelo atômico significativo foi proposto por John Dalton no início do século XIX. O modelo de Dalton postulava que os átomos eram esferas indivisíveis e indestrutíveis, cada uma com uma massa específica. Ele também sugeriu que os átomos se combinavam em proporções fixas para formar compostos químicos. Embora simplista em comparação com os modelos atuais, o modelo de Dalton estabeleceu as bases para a química moderna.\n\n![pasted image 0.png](http://localhost:1337/uploads/pasted_image_0_2aea6e4d6c.png)\n\n## Modelo Atômico de Thomson (1897)\n\nO modelo de Thomson, proposto por J.J. Thomson, introduziu a ideia de que os átomos eram compostos por partículas subatômicas chamadas elétrons, que eram distribuídos em uma esfera de carga positiva. Isso deu origem à imagem do \"pudim de passas\", onde os elétrons eram como passas incrustadas em uma massa de pudim. Este modelo demonstrou a existência de partículas subatômicas e marcou um avanço na compreensão da estrutura atômica.\n\n![modelo-atomico-thomson-quimica.webp](http://localhost:1337/uploads/modelo_atomico_thomson_quimica_d7648f38fa.webp)\n\n## Modelo Atômico de Rutherford (1911)\n\nErnest Rutherford conduziu o famoso experimento da dispersão alfa, que levou ao desenvolvimento do seu modelo atômico. Ele concluiu que a maior parte da massa e carga positiva de um átomo estava concentrada em um núcleo central, enquanto os elétrons orbitavam ao redor desse núcleo. Isso representou uma mudança significativa na visão da estrutura atômica, substituindo o modelo anterior de Thomson.\n\n![modelo-atomico-de-rutheford.webp](http://localhost:1337/uploads/modelo_atomico_de_rutheford_4ca08f3f4a.webp)\n\n## Modelo Atômico de Bohr (1913)\n\nO modelo de Bohr refinou a ideia de órbitas eletrônicas ao redor do núcleo. Ele postulou que os elétrons só podiam ocupar órbitas quantizadas, cada uma com um nível de energia específico. Quando os elétrons saltavam entre essas órbitas, emitiam ou absorviam energia na forma de fótons. O modelo de Bohr explicou com sucesso as linhas espectrais dos átomos, mas foi posteriormente substituído por modelos mais complexos.\n\n![bohr.png](http://localhost:1337/uploads/bohr_e4cb360aa9.png)\n\n## Modelo Atômico Atual: Modelo Quântico de Schrödinger (1926)\n\nO modelo atômico atual é baseado na mecânica quântica e é muito mais complexo do que os modelos anteriores. Ele descreve a probabilidade de encontrar elétrons em regiões específicas ao redor do núcleo, em vez de órbitas definidas. Além disso, envolve a noção de números quânticos, que descrevem as características dos elétrons, como spin e momento angular.\n\n![shcrindg.jpg](http://localhost:1337/uploads/shcrindg_9c1ffb203a.jpg)\n\nOs modelos atômicos evoluíram ao longo do tempo à medida que nossa compreensão da física subatômica se aprofundou. Cada modelo contribuiu para a nossa compreensão atual da estrutura atômica e como os átomos interagem para formar a matéria que nos rodeia.\n\nNeste artigo, exploramos os modelos atômicos de Dalton, Thomson, Rutherford, Bohr e o modelo quântico atual. Cada um desses modelos representou um marco importante na história da química e da física, ajudando-nos a desvendar os segredos do mundo microscópico dos átomos.\n\nA ciência continua avançando, e novas descobertas podem levar a modelos ainda mais precisos no futuro.\n\n![modelos-atomicos.webp](http://localhost:1337/uploads/modelos_atomicos_c547c86583.webp)', '2023-09-28 10:20:30.394000', '2023-09-28 10:20:47.247000', '2023-09-28 10:20:47.244000', 1, 1, 'en', 'evolucao-modelos-atomicos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogs_localizations_links`
--

CREATE TABLE `blogs_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_blog_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(5, '897px-Eugène_Delacroix_-_Le_28_Juillet._La_Liberté_guidant_le_peuple.jpg', NULL, NULL, 897, 720, '{\"thumbnail\":{\"name\":\"thumbnail_897px-Eugène_Delacroix_-_Le_28_Juillet._La_Liberté_guidant_le_peuple.jpg\",\"hash\":\"thumbnail_897px_Eugene_Delacroix_Le_28_Juillet_La_Liberte_guidant_le_peuple_e0b37c1095\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":194,\"height\":156,\"size\":9.7,\"url\":\"/uploads/thumbnail_897px_Eugene_Delacroix_Le_28_Juillet_La_Liberte_guidant_le_peuple_e0b37c1095.jpg\"},\"small\":{\"name\":\"small_897px-Eugène_Delacroix_-_Le_28_Juillet._La_Liberté_guidant_le_peuple.jpg\",\"hash\":\"small_897px_Eugene_Delacroix_Le_28_Juillet_La_Liberte_guidant_le_peuple_e0b37c1095\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":401,\"size\":51.85,\"url\":\"/uploads/small_897px_Eugene_Delacroix_Le_28_Juillet_La_Liberte_guidant_le_peuple_e0b37c1095.jpg\"},\"medium\":{\"name\":\"medium_897px-Eugène_Delacroix_-_Le_28_Juillet._La_Liberté_guidant_le_peuple.jpg\",\"hash\":\"medium_897px_Eugene_Delacroix_Le_28_Juillet_La_Liberte_guidant_le_peuple_e0b37c1095\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":602,\"size\":117.79,\"url\":\"/uploads/medium_897px_Eugene_Delacroix_Le_28_Juillet_La_Liberte_guidant_le_peuple_e0b37c1095.jpg\"}}', '897px_Eugene_Delacroix_Le_28_Juillet_La_Liberte_guidant_le_peuple_e0b37c1095', '.jpg', 'image/jpeg', '177.62', '/uploads/897px_Eugene_Delacroix_Le_28_Juillet_La_Liberte_guidant_le_peuple_e0b37c1095.jpg', NULL, 'local', NULL, '/', '2023-09-27 21:07:38.843000', '2023-09-27 21:07:38.843000', 1, 1),
(6, '432px-Jacques-Louis_David_-_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_-_Google_Art_Project.jpg', NULL, NULL, 432, 720, '{\"thumbnail\":{\"name\":\"thumbnail_432px-Jacques-Louis_David_-_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_-_Google_Art_Project.jpg\",\"hash\":\"thumbnail_432px_Jacques_Louis_David_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_Google_Art_Project_1e21290197\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":94,\"height\":156,\"size\":3.73,\"url\":\"/uploads/thumbnail_432px_Jacques_Louis_David_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_Google_Art_Project_1e21290197.jpg\"},\"small\":{\"name\":\"small_432px-Jacques-Louis_David_-_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_-_Google_Art_Project.jpg\",\"hash\":\"small_432px_Jacques_Louis_David_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_Google_Art_Project_1e21290197\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":300,\"height\":500,\"size\":31.24,\"url\":\"/uploads/small_432px_Jacques_Louis_David_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_Google_Art_Project_1e21290197.jpg\"}}', '432px_Jacques_Louis_David_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_Google_Art_Project_1e21290197', '.jpg', 'image/jpeg', '65.96', '/uploads/432px_Jacques_Louis_David_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_Google_Art_Project_1e21290197.jpg', NULL, 'local', NULL, '/', '2023-09-27 21:11:27.725000', '2023-09-27 21:11:27.725000', 1, 1),
(7, '582px-Robespierre.jpg', NULL, NULL, 582, 720, '{\"thumbnail\":{\"name\":\"thumbnail_582px-Robespierre.jpg\",\"hash\":\"thumbnail_582px_Robespierre_d7333ebf02\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":126,\"height\":156,\"size\":3.19,\"url\":\"/uploads/thumbnail_582px_Robespierre_d7333ebf02.jpg\"},\"small\":{\"name\":\"small_582px-Robespierre.jpg\",\"hash\":\"small_582px_Robespierre_d7333ebf02\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":404,\"height\":500,\"size\":29.01,\"url\":\"/uploads/small_582px_Robespierre_d7333ebf02.jpg\"}}', '582px_Robespierre_d7333ebf02', '.jpg', 'image/jpeg', '71.97', '/uploads/582px_Robespierre_d7333ebf02.jpg', NULL, 'local', NULL, '/', '2023-09-27 21:12:09.049000', '2023-09-27 21:12:09.049000', 1, 1),
(9, 'flat,750x1000,075,f.jpg', NULL, NULL, 750, 920, '{\"thumbnail\":{\"name\":\"thumbnail_flat,750x1000,075,f.jpg\",\"hash\":\"thumbnail_flat_750x1000_075_f_04244aac1c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":127,\"height\":156,\"size\":1.7,\"url\":\"/uploads/thumbnail_flat_750x1000_075_f_04244aac1c.jpg\"},\"medium\":{\"name\":\"medium_flat,750x1000,075,f.jpg\",\"hash\":\"medium_flat_750x1000_075_f_04244aac1c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":611,\"height\":750,\"size\":17.59,\"url\":\"/uploads/medium_flat_750x1000_075_f_04244aac1c.jpg\"},\"small\":{\"name\":\"small_flat,750x1000,075,f.jpg\",\"hash\":\"small_flat_750x1000_075_f_04244aac1c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":408,\"height\":500,\"size\":10.22,\"url\":\"/uploads/small_flat_750x1000_075_f_04244aac1c.jpg\"}}', 'flat_750x1000_075_f_04244aac1c', '.jpg', 'image/jpeg', '22.07', '/uploads/flat_750x1000_075_f_04244aac1c.jpg', NULL, 'local', NULL, '/', '2023-09-28 09:05:54.987000', '2023-09-28 09:05:54.987000', 1, 1),
(10, 'creative-css3-tutorials.jpg', NULL, NULL, 1400, 802, '{\"thumbnail\":{\"name\":\"thumbnail_creative-css3-tutorials.jpg\",\"hash\":\"thumbnail_creative_css3_tutorials_02c0eb5c8c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":140,\"size\":2.64,\"url\":\"/uploads/thumbnail_creative_css3_tutorials_02c0eb5c8c.jpg\"},\"large\":{\"name\":\"large_creative-css3-tutorials.jpg\",\"hash\":\"large_creative_css3_tutorials_02c0eb5c8c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":573,\"size\":16.04,\"url\":\"/uploads/large_creative_css3_tutorials_02c0eb5c8c.jpg\"},\"medium\":{\"name\":\"medium_creative-css3-tutorials.jpg\",\"hash\":\"medium_creative_css3_tutorials_02c0eb5c8c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":430,\"size\":11.36,\"url\":\"/uploads/medium_creative_css3_tutorials_02c0eb5c8c.jpg\"},\"small\":{\"name\":\"small_creative-css3-tutorials.jpg\",\"hash\":\"small_creative_css3_tutorials_02c0eb5c8c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":286,\"size\":6.48,\"url\":\"/uploads/small_creative_css3_tutorials_02c0eb5c8c.jpg\"}}', 'creative_css3_tutorials_02c0eb5c8c', '.jpg', 'image/jpeg', '23.58', '/uploads/creative_css3_tutorials_02c0eb5c8c.jpg', NULL, 'local', NULL, '/', '2023-09-28 09:09:04.465000', '2023-09-28 09:09:04.465000', 1, 1),
(11, '1_l4xICbIIYlz1OTymWCoUTw.jpg', NULL, NULL, 2560, 1420, '{\"thumbnail\":{\"name\":\"thumbnail_1_l4xICbIIYlz1OTymWCoUTw.jpg\",\"hash\":\"thumbnail_1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":136,\"size\":7.13,\"url\":\"/uploads/thumbnail_1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0.jpg\"},\"large\":{\"name\":\"large_1_l4xICbIIYlz1OTymWCoUTw.jpg\",\"hash\":\"large_1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":555,\"size\":33.57,\"url\":\"/uploads/large_1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0.jpg\"},\"medium\":{\"name\":\"medium_1_l4xICbIIYlz1OTymWCoUTw.jpg\",\"hash\":\"medium_1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":416,\"size\":24.89,\"url\":\"/uploads/medium_1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0.jpg\"},\"small\":{\"name\":\"small_1_l4xICbIIYlz1OTymWCoUTw.jpg\",\"hash\":\"small_1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":277,\"size\":16.4,\"url\":\"/uploads/small_1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0.jpg\"}}', '1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0', '.jpg', 'image/jpeg', '91.62', '/uploads/1_l4x_I_Cb_II_Ylz1_O_Tym_W_Co_U_Tw_032d31d3a0.jpg', NULL, 'local', NULL, '/', '2023-09-28 09:09:04.511000', '2023-09-28 09:10:45.408000', 1, 1),
(12, 'html.webp', NULL, NULL, 1800, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_html.webp\",\"hash\":\"thumbnail_html_3af942f9d1\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":136,\"size\":1.47,\"url\":\"/uploads/thumbnail_html_3af942f9d1.webp\"},\"large\":{\"name\":\"large_html.webp\",\"hash\":\"large_html_3af942f9d1\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":1000,\"height\":556,\"size\":5.64,\"url\":\"/uploads/large_html_3af942f9d1.webp\"},\"medium\":{\"name\":\"medium_html.webp\",\"hash\":\"medium_html_3af942f9d1\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":417,\"size\":4.15,\"url\":\"/uploads/medium_html_3af942f9d1.webp\"},\"small\":{\"name\":\"small_html.webp\",\"hash\":\"small_html_3af942f9d1\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":278,\"size\":2.81,\"url\":\"/uploads/small_html_3af942f9d1.webp\"}}', 'html_3af942f9d1', '.webp', 'image/webp', '11.42', '/uploads/html_3af942f9d1.webp', NULL, 'local', NULL, '/', '2023-09-28 09:09:04.633000', '2023-09-28 09:09:04.633000', 1, 1),
(13, 'JAVASCRIPT.png', NULL, NULL, 1536, 864, '{\"thumbnail\":{\"name\":\"thumbnail_JAVASCRIPT.png\",\"hash\":\"thumbnail_JAVASCRIPT_3e6edb1591\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":138,\"size\":29.06,\"url\":\"/uploads/thumbnail_JAVASCRIPT_3e6edb1591.png\"},\"small\":{\"name\":\"small_JAVASCRIPT.png\",\"hash\":\"small_JAVASCRIPT_3e6edb1591\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":281,\"size\":90.16,\"url\":\"/uploads/small_JAVASCRIPT_3e6edb1591.png\"},\"medium\":{\"name\":\"medium_JAVASCRIPT.png\",\"hash\":\"medium_JAVASCRIPT_3e6edb1591\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":422,\"size\":199.17,\"url\":\"/uploads/medium_JAVASCRIPT_3e6edb1591.png\"},\"large\":{\"name\":\"large_JAVASCRIPT.png\",\"hash\":\"large_JAVASCRIPT_3e6edb1591\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":563,\"size\":367.01,\"url\":\"/uploads/large_JAVASCRIPT_3e6edb1591.png\"}}', 'JAVASCRIPT_3e6edb1591', '.png', 'image/png', '136.71', '/uploads/JAVASCRIPT_3e6edb1591.png', NULL, 'local', NULL, '/', '2023-09-28 09:09:04.650000', '2023-09-28 09:09:04.650000', 1, 1),
(14, '598px-Portrait_of_Sir_Isaac_Newton,_1689_(brightened).jpg', NULL, NULL, 598, 720, '{\"thumbnail\":{\"name\":\"thumbnail_598px-Portrait_of_Sir_Isaac_Newton,_1689_(brightened).jpg\",\"hash\":\"thumbnail_598px_Portrait_of_Sir_Isaac_Newton_1689_brightened_ab8cd068cb\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":130,\"height\":156,\"size\":3.33,\"url\":\"/uploads/thumbnail_598px_Portrait_of_Sir_Isaac_Newton_1689_brightened_ab8cd068cb.jpg\"},\"small\":{\"name\":\"small_598px-Portrait_of_Sir_Isaac_Newton,_1689_(brightened).jpg\",\"hash\":\"small_598px_Portrait_of_Sir_Isaac_Newton_1689_brightened_ab8cd068cb\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":415,\"height\":500,\"size\":33.37,\"url\":\"/uploads/small_598px_Portrait_of_Sir_Isaac_Newton_1689_brightened_ab8cd068cb.jpg\"}}', '598px_Portrait_of_Sir_Isaac_Newton_1689_brightened_ab8cd068cb', '.jpg', 'image/jpeg', '86.72', '/uploads/598px_Portrait_of_Sir_Isaac_Newton_1689_brightened_ab8cd068cb.jpg', NULL, 'local', NULL, '/', '2023-09-28 09:23:11.567000', '2023-09-28 09:29:36.007000', 1, 1),
(15, 'modelo-atomico-de-rutheford.webp', NULL, NULL, 360, 360, '{\"thumbnail\":{\"name\":\"thumbnail_modelo-atomico-de-rutheford.webp\",\"hash\":\"thumbnail_modelo_atomico_de_rutheford_4ca08f3f4a\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":156,\"height\":156,\"size\":5.76,\"url\":\"/uploads/thumbnail_modelo_atomico_de_rutheford_4ca08f3f4a.webp\"}}', 'modelo_atomico_de_rutheford_4ca08f3f4a', '.webp', 'image/webp', '14.77', '/uploads/modelo_atomico_de_rutheford_4ca08f3f4a.webp', NULL, 'local', NULL, '/', '2023-09-28 10:17:40.821000', '2023-09-28 10:17:40.821000', 1, 1),
(16, 'shcrindg.jpg', NULL, NULL, 700, 328, '{\"thumbnail\":{\"name\":\"thumbnail_shcrindg.jpg\",\"hash\":\"thumbnail_shcrindg_9c1ffb203a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":115,\"size\":4.4,\"url\":\"/uploads/thumbnail_shcrindg_9c1ffb203a.jpg\"},\"small\":{\"name\":\"small_shcrindg.jpg\",\"hash\":\"small_shcrindg_9c1ffb203a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":234,\"size\":18.13,\"url\":\"/uploads/small_shcrindg_9c1ffb203a.jpg\"}}', 'shcrindg_9c1ffb203a', '.jpg', 'image/jpeg', '32.87', '/uploads/shcrindg_9c1ffb203a.jpg', NULL, 'local', NULL, '/', '2023-09-28 10:17:40.825000', '2023-09-28 10:17:40.825000', 1, 1),
(17, 'modelo-atomico-thomson-quimica.webp', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_modelo-atomico-thomson-quimica.webp\",\"hash\":\"thumbnail_modelo_atomico_thomson_quimica_d7648f38fa\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.02,\"url\":\"/uploads/thumbnail_modelo_atomico_thomson_quimica_d7648f38fa.webp\"}}', 'modelo_atomico_thomson_quimica_d7648f38fa', '.webp', 'image/webp', '12.37', '/uploads/modelo_atomico_thomson_quimica_d7648f38fa.webp', NULL, 'local', NULL, '/', '2023-09-28 10:17:40.834000', '2023-09-28 10:18:27.745000', 1, 1),
(18, 'modelos-atomicos.webp', NULL, NULL, 600, 231, '{\"thumbnail\":{\"name\":\"thumbnail_modelos-atomicos.webp\",\"hash\":\"thumbnail_modelos_atomicos_c547c86583\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":94,\"size\":3.98,\"url\":\"/uploads/thumbnail_modelos_atomicos_c547c86583.webp\"},\"small\":{\"name\":\"small_modelos-atomicos.webp\",\"hash\":\"small_modelos_atomicos_c547c86583\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":192,\"size\":11.61,\"url\":\"/uploads/small_modelos_atomicos_c547c86583.webp\"}}', 'modelos_atomicos_c547c86583', '.webp', 'image/webp', '17.32', '/uploads/modelos_atomicos_c547c86583.webp', NULL, 'local', NULL, '/', '2023-09-28 10:17:40.838000', '2023-09-28 10:20:10.306000', 1, 1),
(19, 'pasted image 0.png', NULL, NULL, 640, 554, '{\"thumbnail\":{\"name\":\"thumbnail_pasted image 0.png\",\"hash\":\"thumbnail_pasted_image_0_2aea6e4d6c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":180,\"height\":156,\"size\":18.44,\"url\":\"/uploads/thumbnail_pasted_image_0_2aea6e4d6c.png\"},\"small\":{\"name\":\"small_pasted image 0.png\",\"hash\":\"small_pasted_image_0_2aea6e4d6c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":433,\"size\":118.56,\"url\":\"/uploads/small_pasted_image_0_2aea6e4d6c.png\"}}', 'pasted_image_0_2aea6e4d6c', '.png', 'image/png', '40.25', '/uploads/pasted_image_0_2aea6e4d6c.png', NULL, 'local', NULL, '/', '2023-09-28 10:17:40.845000', '2023-09-28 10:17:40.845000', 1, 1),
(20, 'bohr.png', NULL, NULL, 1920, 1920, '{\"thumbnail\":{\"name\":\"thumbnail_bohr.png\",\"hash\":\"thumbnail_bohr_e4cb360aa9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":16.45,\"url\":\"/uploads/thumbnail_bohr_e4cb360aa9.png\"},\"medium\":{\"name\":\"medium_bohr.png\",\"hash\":\"medium_bohr_e4cb360aa9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":111.28,\"url\":\"/uploads/medium_bohr_e4cb360aa9.png\"},\"small\":{\"name\":\"small_bohr.png\",\"hash\":\"small_bohr_e4cb360aa9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":65.69,\"url\":\"/uploads/small_bohr_e4cb360aa9.png\"},\"large\":{\"name\":\"large_bohr.png\",\"hash\":\"large_bohr_e4cb360aa9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":157.18,\"url\":\"/uploads/large_bohr_e4cb360aa9.png\"}}', 'bohr_e4cb360aa9', '.png', 'image/png', '59.42', '/uploads/bohr_e4cb360aa9.png', NULL, 'local', NULL, '/', '2023-09-28 10:17:41.113000', '2023-09-28 10:17:41.113000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(35, 11, 7, 'api::blog.blog', 'Thumbnail', 1),
(36, 14, 8, 'api::blog.blog', 'Thumbnail', 1),
(37, 5, 6, 'api::blog.blog', 'Thumbnail', 1),
(38, 18, 9, 'api::blog.blog', 'Thumbnail', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-09-25 22:30:04.962000', '2023-09-25 22:30:04.962000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Token', '', 'full-access', '1d06c0eeb3c8e2b4a294a06b63c51a703329522b892ecb5501824c8b1ed2ff4416486dce337cb94ad64cea9ce333d848940be28016a2b2d77a87280f48b3337d', NULL, NULL, NULL, '2023-09-25 22:48:46.857000', '2023-09-26 14:35:23.884000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"api::blog.blog\":{\"kind\":\"collectionType\",\"collectionName\":\"blogs\",\"info\":{\"singularName\":\"blog\",\"pluralName\":\"blogs\",\"displayName\":\"Blogs\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"Title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":255},\"Category\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"enumeration\",\"enum\":[\"Matemática\",\"Física\",\"História\",\"Química\",\"Programação - Iniciante\",\"Programação - Intermediário\",\"Programação - Avançado\"],\"required\":true},\"Summary\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\",\"required\":true,\"maxLength\":255},\"IsFeatured\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":false,\"required\":true},\"Thumbnail\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"FeaturedImage\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"Content\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"Slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"maxLength\":255,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::blog.blog\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"blogs\",\"info\":{\"singularName\":\"blog\",\"pluralName\":\"blogs\",\"displayName\":\"Blogs\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"Title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":255},\"Category\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"enumeration\",\"enum\":[\"Matemática\",\"Física\",\"História\",\"Química\",\"Programação - Iniciante\",\"Programação - Intermediário\",\"Programação - Avançado\"],\"required\":true},\"Summary\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\",\"required\":true,\"maxLength\":255},\"IsFeatured\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":false,\"required\":true},\"Thumbnail\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"FeaturedImage\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"Content\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"Slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"maxLength\":255,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"blog\",\"connection\":\"default\",\"uid\":\"api::blog.blog\",\"apiName\":\"blog\",\"globalId\":\"Blog\",\"actions\":{},\"lifecycles\":{}},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(6, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"37 0 20 * * 1\",\"lastWeeklyUpdate\":1699311637023}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::blog.blog', '{\"uid\":\"api::blog.blog\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"Summary\":{\"edit\":{\"label\":\"Summary\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Summary\",\"searchable\":true,\"sortable\":true}},\"IsFeatured\":{\"edit\":{\"label\":\"IsFeatured\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsFeatured\",\"searchable\":true,\"sortable\":true}},\"Thumbnail\":{\"edit\":{\"label\":\"Thumbnail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Thumbnail\",\"searchable\":false,\"sortable\":false}},\"FeaturedImage\":{\"edit\":{\"label\":\"FeaturedImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FeaturedImage\",\"searchable\":false,\"sortable\":false}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Category\",\"Summary\"],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Category\",\"size\":6}],[{\"name\":\"Summary\",\"size\":6},{\"name\":\"IsFeatured\",\"size\":4}],[{\"name\":\"Thumbnail\",\"size\":6},{\"name\":\"FeaturedImage\",\"size\":6}],[{\"name\":\"Content\",\"size\":12}],[{\"name\":\"Slug\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(3, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"blogs\",\"indexes\":[{\"name\":\"blogs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"blogs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"blogs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"blogs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"category\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"summary\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_featured\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"blogs_localizations_links\",\"indexes\":[{\"name\":\"blogs_localizations_links_fk\",\"columns\":[\"blog_id\"]},{\"name\":\"blogs_localizations_links_inv_fk\",\"columns\":[\"inv_blog_id\"]},{\"name\":\"blogs_localizations_links_unique\",\"columns\":[\"blog_id\",\"inv_blog_id\"],\"type\":\"unique\"},{\"name\":\"blogs_localizations_links_order_fk\",\"columns\":[\"blog_order\"]}],\"foreignKeys\":[{\"name\":\"blogs_localizations_links_fk\",\"columns\":[\"blog_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"blogs\",\"onDelete\":\"CASCADE\"},{\"name\":\"blogs_localizations_links_inv_fk\",\"columns\":[\"inv_blog_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"blogs\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"blog_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_blog_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"blog_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"],\"type\":null},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"],\"type\":null}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-09-25 22:47:19', '0d8c523b3b9283e8aec872a9003f3469');

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-09-25 22:30:04.928000', '2023-09-25 22:30:04.928000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-09-25 22:30:04.928000', '2023-09-25 22:30:04.928000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-09-25 22:30:04.942000', '2023-09-25 22:30:04.942000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-09-25 22:30:04.942000', '2023-09-25 22:30:04.942000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-09-25 22:30:04.942000', '2023-09-25 22:30:04.942000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-09-25 22:30:04.942000', '2023-09-25 22:30:04.942000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-09-25 22:30:04.942000', '2023-09-25 22:30:04.942000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-09-25 22:30:04.942000', '2023-09-25 22:30:04.942000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-09-25 22:30:04.942000', '2023-09-25 22:30:04.942000', NULL, NULL),
(10, 'api::blog.blog.find', '2023-09-25 23:18:25.605000', '2023-09-25 23:18:25.605000', NULL, NULL),
(11, 'api::blog.blog.findOne', '2023-09-25 23:18:25.605000', '2023-09-25 23:18:25.605000', NULL, NULL),
(12, 'api::blog.blog.create', '2023-09-25 23:18:25.605000', '2023-09-25 23:18:25.605000', NULL, NULL),
(13, 'api::blog.blog.delete', '2023-09-25 23:18:25.605000', '2023-09-25 23:18:25.605000', NULL, NULL),
(14, 'api::blog.blog.createLocalization', '2023-09-25 23:18:25.605000', '2023-09-25 23:18:25.605000', NULL, NULL),
(15, 'api::blog.blog.update', '2023-09-25 23:18:25.605000', '2023-09-25 23:18:25.605000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 1),
(3, 3, 2, 1),
(4, 7, 2, 1),
(5, 4, 2, 2),
(6, 9, 2, 2),
(7, 5, 2, 2),
(8, 8, 2, 2),
(9, 6, 2, 2),
(10, 10, 2, 3),
(11, 14, 2, 3),
(12, 13, 2, 3),
(13, 15, 2, 3),
(14, 11, 2, 3),
(15, 12, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-09-25 22:30:04.920000', '2023-09-25 22:30:04.920000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-09-25 22:30:04.924000', '2023-09-26 14:26:54.199000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Índices para tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Índices para tabela `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_created_by_id_fk` (`created_by_id`),
  ADD KEY `blogs_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `blogs_localizations_links`
--
ALTER TABLE `blogs_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_localizations_links_unique` (`blog_id`,`inv_blog_id`),
  ADD KEY `blogs_localizations_links_fk` (`blog_id`),
  ADD KEY `blogs_localizations_links_inv_fk` (`inv_blog_id`),
  ADD KEY `blogs_localizations_links_order_fk` (`blog_order`);

--
-- Índices para tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Índices para tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Índices para tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Índices para tabela `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Índices para tabela `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Índices para tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Índices para tabela `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `blogs_localizations_links`
--
ALTER TABLE `blogs_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `blogs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `blogs_localizations_links`
--
ALTER TABLE `blogs_localizations_links`
  ADD CONSTRAINT `blogs_localizations_links_fk` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_localizations_links_inv_fk` FOREIGN KEY (`inv_blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
