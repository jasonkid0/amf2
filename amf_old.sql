/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : amf_old

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-01-31 14:53:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------

-- ----------------------------
-- Table structure for `contact_numbers`
-- ----------------------------
DROP TABLE IF EXISTS `contact_numbers`;
CREATE TABLE `contact_numbers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_id` int(11) NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contact_numbers
-- ----------------------------
INSERT INTO `contact_numbers` VALUES ('1', '1', '0936-9897754', '2018-01-30 10:50:30', '2018-01-30 10:50:35');
INSERT INTO `contact_numbers` VALUES ('2', '1', '0915-5987319', '2018-01-31 09:29:23', '2018-01-31 09:29:30');

-- ----------------------------
-- Table structure for `mechanics`
-- ----------------------------
DROP TABLE IF EXISTS `mechanics`;
CREATE TABLE `mechanics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mechanics_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of mechanics
-- ----------------------------
INSERT INTO `mechanics` VALUES ('1', 'Mechanic 1', 'mechanic.one@mec.com', 'Blk 23 Lot 45 Pearl St. Citihomes Molino 4, Bacoor Cavite', '4102', '1', '1', '$2y$10$j5AP9npxMVYNZzIYRx7/mev34Nn78.jS5cch/cQyKwlJrmtRGjKUC', 'syUVqhtN4Q', '2018-01-30 09:39:20', '2018-01-30 09:39:20');
INSERT INTO `mechanics` VALUES ('2', 'Mechanic 2', 'mechanic.two@mec.com', 'Blk 1 Lot 21 Kamias St. Barangay Fairgrounds Molino 4, Bacoor Cavite', '4102', '1', '0', '$2y$10$8PP.A56OoMVwmOTPWFC.5.fkkv24/qM3FUqhmK6TzAnMgq.kj1uSe', 'rGYSIQzwB0', '2018-01-30 09:39:20', '2018-01-30 09:39:20');
INSERT INTO `mechanics` VALUES ('3', 'Mechanic 3', 'mechanic.three@mec.com', 'Blk 22 Lot 56 Mabuhay St. Country Homes Molino 4, Bacoor Cavite', '4102', '1', '0', '$2y$10$uwu9FhPuVWAagmw3L9dRdOzrOl9anyrvZBsV4ITFT/yZjPWTSoh.S', 'YqIKH3pCcE', '2018-01-30 09:39:20', '2018-01-30 09:39:20');
INSERT INTO `mechanics` VALUES ('4', 'Mechanic 4', 'mechanic.four@mec.com', 'Blk 45 Lot 1 Maytama St. Barangay Habol Molino 4, Bacoor Cavite', '4102', '0', '1', '$2y$10$zAMo9Vy1dGOxBldap75Y7e00e/7/WjQe726Ig9zlAClFvoAqZR10O', 'gvqjM3Mw0L', '2018-01-30 09:39:20', '2018-01-30 09:39:20');
INSERT INTO `mechanics` VALUES ('5', 'Mechanic 5', 'mechanic.five@mec.com', 'Blk 34 Lot 49 Lavander St. Barangay Vallejo Molino 4, Bacoor Cavite', '4102', '0', '1', '$2y$10$9Nmm17YaQv117QtvkXvkx.izDFUchnWfgoRPwhv78iKM/EzT1Wflm', 'anyuF6NZK0', '2018-01-30 09:39:20', '2018-01-30 09:39:20');
INSERT INTO `mechanics` VALUES ('6', 'Mechanic 6', 'mechanic.six@mec.com', 'Blk 9 Lot 20 Primero St. Barangay Sibol Molino 4, Bacoor Cavite', '4102', '0', '1', '$2y$10$aDpwjrZgTIZFCeSTN6O7fOifZ6/vYDwkes6MeFtdGbmU45kolcOTi', 'rU9qy2RS6a', '2018-01-30 09:39:20', '2018-01-30 09:39:20');
INSERT INTO `mechanics` VALUES ('7', 'Mechanic 7', 'mechanic.seven@mec.com', 'Blk 12 Lot 33 Kinchay St. Barangay Firenze Molino 4, Bacoor Cavite', '4102', '0', '1', '$2y$10$XNhE3gYZorAuhS.St4XQ5usIjn9EmiZhm.UPJfN27h9mrzHgIQsNu', 'aNEZBwWfyR', '2018-01-30 09:39:20', '2018-01-30 09:39:20');
INSERT INTO `mechanics` VALUES ('8', 'Mechanic 8', 'mechanic.eight@mec.com', 'Blk 44 Lot 45 Kenon St. Barangay La Joya Molino 4, Bacoor Cavite', '4102', '0', '1', '$2y$10$AuMuoOPCQi6hrmTsh6/pwuHLJBbm6EJ43PQk1UXCRwOFVvsPuP.fa', 'DDdRkMVdPe', '2018-01-30 09:39:21', '2018-01-30 09:39:21');
INSERT INTO `mechanics` VALUES ('9', 'Mechanic 9', 'mechanic.nine@mec.com', 'Blk 44 Lot 22 Mayon St. Lipat Molino 4, Bacoor Cavite', '4102', '1', '1', '$2y$10$9vt6Zv5gOXVV3FbSzTvFJ.lA3olxKQONwwDvnZQmsuzSDs8nbU2X.', 'Eqq6rNttcQ', '2018-01-30 09:39:21', '2018-01-30 09:39:21');
INSERT INTO `mechanics` VALUES ('10', 'Mechanic 10', 'mechanic.ten@mec.com', 'Blk 20 Lot 32 Apo St. BNT Molino 4, Bacoor Cavite', '4102', '1', '1', '$2y$10$U0Yw99n0TBDk7rtG8kNRSOaa0foby8/cn92iGy4Km1k6u8ds4gmM.', '3wEOvCEHGh', '2018-01-30 09:39:21', '2018-01-30 09:39:21');
INSERT INTO `mechanics` VALUES ('11', 'Mechanic 11', 'mechanic.eleven@mec.com', 'Blk 51 Lot 28 Bucandala St. Town & Country Molino 4, Bacoor Cavite', '4102', '1', '0', '$2y$10$.x2kBgzIFJ6MQ8UKNaAd8uiXTlKBZj5qnkeLDIMx6eGFDTvBKkzie', '4enJfpOjPU', '2018-01-30 09:39:21', '2018-01-30 09:39:21');
INSERT INTO `mechanics` VALUES ('12', 'Mechanic 12', 'mechanic.twelve@mec.com', 'Blk 23 Lot 45 Pearl St. Citihomes Molino 4, Bacoor Cavite', '4102', '1', '0', '$2y$10$e3vjYGkj/5z9ATZTqhLZZuEL1xBj2v3R6wUdtelyCI5RMCMwFoZCG', 'KUoyvd6V2X', '2018-01-30 09:39:21', '2018-01-30 09:39:21');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_11_08_015059_create_tasks_table', '1');
INSERT INTO `migrations` VALUES ('4', '2017_11_08_015931_create_admins_table', '1');
INSERT INTO `migrations` VALUES ('5', '2017_11_08_020112_create_mechanics_table', '1');
INSERT INTO `migrations` VALUES ('6', '2017_11_08_020229_create_shop_owners_table', '1');
INSERT INTO `migrations` VALUES ('7', '2017_11_08_085720_create_votes_table', '1');
INSERT INTO `migrations` VALUES ('8', '2017_11_08_104730_create_testimonials_table', '1');
INSERT INTO `migrations` VALUES ('9', '2017_11_10_134347_create_contact_numbers_table', '1');
INSERT INTO `migrations` VALUES ('10', '2017_11_13_170225_create_skills_table', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_owners`
-- ----------------------------
DROP TABLE IF EXISTS `shop_owners`;
CREATE TABLE `shop_owners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_owners_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_owners
-- ----------------------------

-- ----------------------------
-- Table structure for `skills`
-- ----------------------------
DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `skill` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of skills
-- ----------------------------
INSERT INTO `skills` VALUES ('1', '1', '1', 'Mechanical', '0.00', '2018-01-30 09:49:39', '2018-01-30 09:49:47');
INSERT INTO `skills` VALUES ('2', '2', '0', 'Change Engine', '0.00', '2018-01-29 09:50:21', '2018-01-29 09:50:25');
INSERT INTO `skills` VALUES ('3', '1', '0', 'Electrical', '0.00', '2018-01-15 09:53:22', '2018-01-15 09:53:26');
INSERT INTO `skills` VALUES ('4', '2', '0', 'Electrical', '0.00', null, null);

-- ----------------------------
-- Table structure for `tasks`
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tasks
-- ----------------------------

-- ----------------------------
-- Table structure for `testimonials`
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `mechanic_id` int(11) NOT NULL,
  `testimonial` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of testimonials
-- ----------------------------
INSERT INTO `testimonials` VALUES ('1', '1', '1', 'Pretty good mehcanic', '5', '2018-01-30 10:14:01', '2018-01-30 10:14:01');
INSERT INTO `testimonials` VALUES ('2', '3', '1', 'not so good mechanic', '1', '2018-01-31 11:46:29', '2018-01-31 11:46:29');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Jason Casas', 'jason_kid0@yahoo.com', '$2y$10$wTQZzZhMFD9VOsxEcpCU7elLFr22csf5f0nTelPoCFMoP2OKO7rsi', 'qGMARjXyZeNFMATbaCFdtC13HoucHnUAiwtgMKQJB4YzulgBiifyCXxJouoT', '2018-01-30 09:37:50', '2018-01-30 09:37:50');
INSERT INTO `users` VALUES ('2', 'VehicleOwner', 'user@mec.com', '$2y$10$qR0VYk15mwgdXWM.WC3HXeuE776NpH6bBSBhEkYO2BnQ.3PHNvHBq', 'fW18bEh5GD', '2018-01-30 09:39:20', '2018-01-30 09:39:20');
INSERT INTO `users` VALUES ('3', 'Van Fajut', 'van@gmail.com', '$2y$10$vWmaTP23e9oRbHLirj1PwuJ4s1kvCElhZTHwK.R8DeGPwlPZhF8oq', null, '2018-01-31 11:46:04', '2018-01-31 11:46:04');

-- ----------------------------
-- Table structure for `votes`
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of votes
-- ----------------------------
