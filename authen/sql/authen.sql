/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : authen

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 07/05/2020 19:56:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admins_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'Việt Anh', 'vastb98@gmail.com', NULL, '$2y$10$UxI44Rlo/3g.vgHIpB90Xu825Nd8ONHNte/mLX8lhbukPluAOOc5K', '1yH0qMoQ7UrmAmAD3wL6Ho11puHiN9Yh0yHwsLHF8U8hWpVWFeo0tIkowhhw', '2019-12-22 11:49:22', '2019-12-22 11:49:22');
INSERT INTO `admins` VALUES (3, 'Việt', 'vastb1998@gmail.com', NULL, '$2y$10$AxI6xXI38IxKlAzdQScZNOB0biPWKPollWKi8ci5QrW26qXl6f57.', NULL, '2020-01-02 08:20:14', '2020-01-02 08:20:14');
INSERT INTO `admins` VALUES (4, 'Boss', 'user1@gmail.com', NULL, '$2y$10$uGEUDgqCJ1BKxYtGVmK0PuKlvYCHgNq6GRgo1N8hJvIZpA8UiSk5m', NULL, '2020-01-02 08:20:56', '2020-01-02 08:20:56');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (1, 'Main Banner', 1, '/files/1/banner2.jpg', '<h2>WELCOME TO</h2>\r\n<h3>FASHION CLUB</h3>\r\n<p>Suspendisse sed tellus id libero pretium interdum. Suspendisse potenti. Quisque consectetur elit sit amet vehicula tristique.</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -60px; top: 120.524px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '<h2>WELCOME TO</h2>\r\n<h3>FASHION CLUB</h3>\r\n<p>Suspendisse sed tellus id libero pretium interdum. Suspendisse potenti. Quisque consectetur elit sit amet vehicula tristique.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -60px; top: 120.524px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2019-12-30 14:08:54', '2020-01-01 15:03:03', '#');
INSERT INTO `banners` VALUES (2, 'Sale 1', 2, '/files/1/bb1.jpg', '', '<h3>SALE</h3>\r\n<h4>upto<span style=\"font-size: 50px; font-weight: bold;\">75%</span></h4>', '2019-12-30 14:11:15', '2020-01-01 15:08:28', '#');
INSERT INTO `banners` VALUES (3, 'Sale 2', 3, '/files/1/bb2.jpg', '', '<h3>SALE</h3>\r\n<h4>upto<span style=\"font-size: 50px; font-weight: bold;\">55%</span></h4>', '2020-01-01 14:18:26', '2020-01-01 15:09:05', '#');
INSERT INTO `banners` VALUES (4, 'Sale 3', 4, '/files/1/bb4.jpg', '', '<h3>SALE</h3>\r\n<h4>upto<span style=\"font-size: 50px; font-weight: bold;\">65%</span></h4>', '2020-01-01 14:20:58', '2020-01-01 15:09:43', '#');
INSERT INTO `banners` VALUES (5, 'Sale 4', 5, '/files/1/bb3.jpg', '', '<h3>SALE</h3>\r\n<h4>upto<span style=\"font-size: 50px; font-weight: bold;\">50%</span></h4>', '2020-01-01 14:21:18', '2020-01-01 15:10:10', '#');
INSERT INTO `banners` VALUES (6, 'Sale 5', 6, '/files/1/a1.jpg', '', '<h3>SALE</h3>\r\n<h4>upto<span style=\"font-size: 50px; font-weight: bold;\">60%</span></h4>', '2020-01-01 14:21:40', '2020-01-01 15:10:31', '#');

-- ----------------------------
-- Table structure for content_category
-- ----------------------------
DROP TABLE IF EXISTS `content_category`;
CREATE TABLE `content_category`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_category
-- ----------------------------
INSERT INTO `content_category` VALUES (2, 'Thời trang', 'thoi-trang', '/files/1/a2.jpg', '<p>Thời trang</p>', '<p>Thời trang</p>', '2019-12-24 06:17:40', '2019-12-31 11:19:39');
INSERT INTO `content_category` VALUES (3, 'Điện thoại', 'dien-thoai', '/files/1/5.png', '<p>Điện thoại</p>', '<p>Điện thoại</p>', '2019-12-24 06:18:00', '2019-12-31 11:19:49');
INSERT INTO `content_category` VALUES (4, 'Công nghệ số', 'cong-nghe-so', '/files/1/a1.jpg', '<p>C&ocirc;ng nghệ số</p>', '<p>C&ocirc;ng nghệ số</p>', '2019-12-24 06:18:12', '2019-12-31 11:19:59');

-- ----------------------------
-- Table structure for content_pages
-- ----------------------------
DROP TABLE IF EXISTS `content_pages`;
CREATE TABLE `content_pages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_pages
-- ----------------------------
INSERT INTO `content_pages` VALUES (1, 'Giới thiệu shop', 'gioi-thieu-shop', '/files/1/a2.jpg', '<p>Giới thiệu shop</p>', '<p>Giới thiệu shop</p>', 0, 0, '2019-12-24 07:51:44', '2019-12-31 10:58:53');
INSERT INTO `content_pages` VALUES (3, 'Giới thiệu shop 1', 'gioi-thieu-shop-2', '/files/1/4.png', '<p>&aacute;d</p>', '<p>&aacute;d</p>', 0, 0, '2019-12-31 10:57:32', '2019-12-31 10:57:49');

-- ----------------------------
-- Table structure for content_posts
-- ----------------------------
DROP TABLE IF EXISTS `content_posts`;
CREATE TABLE `content_posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `tag_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_posts
-- ----------------------------
INSERT INTO `content_posts` VALUES (1, 'Thời trang hè 2018', 'thoi-trang-he-2018', '/files/1/a2.jpg', '<p>Thời trang h&egrave; 2018</p>', '<p>Thời trang h&egrave; 2018&nbsp;&nbsp;<img src=\"/lar.tuto/authen/public/files/1/a2.jpg\" alt=\"\" width=\"666\" height=\"442\" /></p>', 0, 0, 2, '2019-12-24 06:45:43', '2020-01-01 16:53:18', 1);
INSERT INTO `content_posts` VALUES (2, 'Thời trang hè 2019', 'thoi-trang', '/files/1/a3.jpg', '<p>Thời trang h&egrave; 2019</p>', '<p>Thời trang h&egrave; 2019</p>', 0, 0, 2, '2019-12-24 06:47:44', '2020-01-01 16:53:00', 1);

-- ----------------------------
-- Table structure for content_tags
-- ----------------------------
DROP TABLE IF EXISTS `content_tags`;
CREATE TABLE `content_tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_tags
-- ----------------------------
INSERT INTO `content_tags` VALUES (1, 'Xiaomi', 'xiaomi', '/files/1/a3.jpg', '<h2><strong>Xiaomi xoaomi xiaomi xiaomi</strong></h2>', 0, 0, '2019-12-24 08:13:29', '2020-01-01 17:02:38');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for global_settings
-- ----------------------------
DROP TABLE IF EXISTS `global_settings`;
CREATE TABLE `global_settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `global_settings_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of global_settings
-- ----------------------------
INSERT INTO `global_settings` VALUES (1, 'web_name', 'FASHION<span>CLUB</span>', '', '2019-12-30 13:02:54', '2019-12-31 10:40:40');
INSERT INTO `global_settings` VALUES (5, 'header_logo', '/files/1/logo2.png', '', '2019-12-30 13:07:51', '2019-12-31 10:38:46');
INSERT INTO `global_settings` VALUES (6, 'footer_logo', '/files/1/logo2.png', '', '2019-12-30 13:07:51', '2019-12-31 10:43:07');
INSERT INTO `global_settings` VALUES (7, 'intro', '<p>Fashion Shop</p>', '', '2019-12-30 13:07:51', '2019-12-30 13:07:51');
INSERT INTO `global_settings` VALUES (8, 'desc', '<p>Fashion Shop</p>', '', '2019-12-30 13:07:51', '2019-12-30 13:07:51');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `menu_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES (1, 'Shop category', '1', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/shop/category/1', '', '<p>Footer Menu 3</p>', 9, '2019-12-30 10:40:24', '2020-01-05 08:46:26', 1, 1, 0);
INSERT INTO `menu_items` VALUES (2, 'Shop Product', '2', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/shop/product/1', '', '<p>Footer Menu 3</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -97px; top: 32.7708px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 9, '2019-12-30 10:41:38', '2019-12-30 10:56:00', 1, 0, 0);
INSERT INTO `menu_items` VALUES (3, 'Content Category', '3', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/content/category/2', '', '<p>Footer Menu 3</p>', 9, '2019-12-30 10:42:43', '2020-01-05 08:54:54', 1, 0, 0);
INSERT INTO `menu_items` VALUES (4, 'Custom Link', '7', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"https:\\/\\/www.google.com\\/\"}', 'https://www.google.com/', '', '<p>Footer Menu 3</p>', 9, '2019-12-30 10:44:04', '2019-12-30 10:56:25', 1, 2, 0);
INSERT INTO `menu_items` VALUES (5, 'Content Post', '4', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/content/post/1', '', '<p>Content Post</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -245px; top: 32.7708px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 9, '2019-12-30 10:44:45', '2019-12-30 10:56:39', 1, 0, 0);
INSERT INTO `menu_items` VALUES (6, 'Content Page', '5', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"3\",\"params_6\":\"1\",\"params_7\":\"\"}', '/page/3', '', '<p>Footer Menu 3</p>', 9, '2019-12-30 10:45:15', '2020-01-04 07:29:46', 1, 0, 0);
INSERT INTO `menu_items` VALUES (7, 'Trang chủ', '7', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"http:\\/\\/localhost\\/lar.shop\\/authen\\/public\\/\"}', 'http://localhost/lar.shop/authen/public/', '', '<p>Footer Menu 3</p>', 0, '2019-12-30 10:45:48', '2020-01-01 18:22:20', 1, 0, 0);
INSERT INTO `menu_items` VALUES (8, 'Content Tag', '6', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/content/tag/1', '', '<p>Content Tag</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -299px; top: -14.0069px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 9, '2019-12-30 10:46:45', '2019-12-30 10:57:04', 1, 0, 0);
INSERT INTO `menu_items` VALUES (9, 'Demo', '7', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '', '', '<p>Footer Menu 3</p>', 0, '2019-12-30 10:49:40', '2020-01-05 08:06:25', 1, 0, 7);
INSERT INTO `menu_items` VALUES (10, 'Shop', '1', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/shop/category/1', '', '<p>Shop</p>', 0, '2019-12-30 10:58:58', '2019-12-30 11:01:53', 1, 0, 3);
INSERT INTO `menu_items` VALUES (11, 'Women\'s Clothing', '1', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/shop/category/1', '', '<p>Women\'s Clothing</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -131px; top: 32.7708px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 10, '2019-12-30 10:59:29', '2019-12-30 11:00:44', 1, 0, 0);
INSERT INTO `menu_items` VALUES (12, 'Men\'s Clothing', '1', '{\"params_1\":\"2\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/shop/category/2', '', '<p>Men\'s Clothing</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -107px; top: 32.7708px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 10, '2019-12-30 11:00:04', '2019-12-30 11:00:31', 1, 3, 0);
INSERT INTO `menu_items` VALUES (13, 'Kid\'s Wear', '1', '{\"params_1\":\"3\",\"params_2\":\"1\",\"params_3\":\"2\",\"params_4\":\"1\",\"params_5\":\"1\",\"params_6\":\"1\",\"params_7\":\"\"}', '/shop/category/3', '', '<p>Footer Menu 3</p>', 10, '2019-12-30 11:01:37', '2019-12-30 11:01:53', 1, 3, 0);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'Header menu', 'menu', '<p>Header menu</p>', 1, '2019-12-24 08:41:57', '2019-12-28 15:59:44');
INSERT INTO `menus` VALUES (2, 'Footer Menu 1', 'menu', '<p>Footer Menu</p>', 2, '2019-12-24 08:42:32', '2019-12-28 15:59:53');
INSERT INTO `menus` VALUES (5, 'Footer Menu 2', 'footer menu', '<p>Footer Menu 2</p>', 3, '2019-12-28 16:00:32', '2019-12-28 16:00:32');
INSERT INTO `menus` VALUES (6, 'Footer Menu 3', 'footer menu', '<p>Footer Menu 3</p>', 4, '2019-12-28 16:00:52', '2019-12-28 16:00:52');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_22_094021_create_admins', 2);
INSERT INTO `migrations` VALUES (5, '2019_12_22_134340_create_sellers', 3);
INSERT INTO `migrations` VALUES (6, '2019_12_22_143204_create_shippers', 4);
INSERT INTO `migrations` VALUES (7, '2019_12_23_144247_create_shop_category', 5);
INSERT INTO `migrations` VALUES (8, '2019_12_23_162324_create_shop_products', 6);
INSERT INTO `migrations` VALUES (9, '2019_12_24_054946_create_content_category', 7);
INSERT INTO `migrations` VALUES (10, '2019_12_24_055019_create_content_posts', 7);
INSERT INTO `migrations` VALUES (11, '2019_12_24_055047_create_content_pages', 7);
INSERT INTO `migrations` VALUES (12, '2019_12_24_055100_create_content_tags', 7);
INSERT INTO `migrations` VALUES (13, '2019_12_24_075835_create_content_tags', 8);
INSERT INTO `migrations` VALUES (14, '2019_12_24_082014_create_menus', 9);
INSERT INTO `migrations` VALUES (15, '2019_12_24_082029_create_menu_items', 9);
INSERT INTO `migrations` VALUES (16, '2019_12_24_084817_add_menu_id_to_table_menu_items', 10);
INSERT INTO `migrations` VALUES (17, '2019_12_24_144749_create_global_settings', 11);
INSERT INTO `migrations` VALUES (18, '2019_12_25_073159_create_shop_brands', 12);
INSERT INTO `migrations` VALUES (19, '2019_12_29_113603_add_sort_and_total_menu_items', 13);
INSERT INTO `migrations` VALUES (20, '2019_12_30_131815_create_banners', 14);
INSERT INTO `migrations` VALUES (21, '2019_12_30_132857_add_link_field_to_banners', 15);
INSERT INTO `migrations` VALUES (22, '2019_12_30_133130_create_newletters', 16);
INSERT INTO `migrations` VALUES (23, '2019_12_30_134257_create_newsletters', 17);
INSERT INTO `migrations` VALUES (24, '2019_12_31_100914_add_four_fields_to_products', 18);
INSERT INTO `migrations` VALUES (31, '2020_01_01_131543_create_orders', 19);
INSERT INTO `migrations` VALUES (32, '2020_01_01_131553_create_orders_detail', 19);
INSERT INTO `migrations` VALUES (35, '2014_10_12_000000_create_users_table', 20);
INSERT INTO `migrations` VALUES (36, '2014_10_12_100000_create_password_resets_table', 20);
INSERT INTO `migrations` VALUES (37, '2020_01_01_131720_create_orders', 21);
INSERT INTO `migrations` VALUES (38, '2020_01_01_131735_create_orders_detail', 22);
INSERT INTO `migrations` VALUES (39, '2020_01_01_152351_add_homepage_to_shop_categories', 22);
INSERT INTO `migrations` VALUES (40, '2020_01_01_152439_add_homepage_to_shop_products', 22);
INSERT INTO `migrations` VALUES (41, '2020_01_01_155205_add_ship_info_to_products', 23);
INSERT INTO `migrations` VALUES (42, '2020_01_01_165927_add_tag_to_content_posts', 24);

-- ----------------------------
-- Table structure for newsletters
-- ----------------------------
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsletters
-- ----------------------------
INSERT INTO `newsletters` VALUES (1, 'vastb98@gmail.com', '2019-12-30 14:44:50', '2019-12-30 14:44:50');
INSERT INTO `newsletters` VALUES (2, 'user2@gmail.com', '2019-12-30 14:44:55', '2019-12-30 14:45:01');
INSERT INTO `newsletters` VALUES (3, 'user1@gmail.com', '2020-01-01 17:54:33', '2020-01-01 17:54:33');
INSERT INTO `newsletters` VALUES (4, 'vas@gmail.com', '2020-01-01 17:54:38', '2020-01-01 17:54:38');
INSERT INTO `newsletters` VALUES (5, 'shipper1@gmail.com', '2020-01-01 17:54:41', '2020-01-01 17:54:41');
INSERT INTO `newsletters` VALUES (6, 'vastb98@gmail.com', '2020-01-01 17:54:44', '2020-01-01 17:54:44');
INSERT INTO `newsletters` VALUES (7, 'nva@gmail.com', '2020-01-01 17:57:37', '2020-01-01 17:57:37');
INSERT INTO `newsletters` VALUES (8, 'va122s@gmail.com', '2020-01-01 18:03:08', '2020-01-01 18:03:08');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'Nguyễn Việt Anh', '0346741998', 'vastb98@gmail.com', '<p>Giao h&agrave;ng nhanh nha</p>', 'cầu giấy', 'Hà Nội', 'Vietnam', '48000000', '1', '2020-01-01 15:36:12', '2020-01-01 15:36:50');
INSERT INTO `orders` VALUES (2, 'Nguyễn Việt Anh', '0346741998', 'vastb98@gmail.com', 'ssss', 'cầu giấy', 'Hà Nội', 'Vietnam', '8000000', '0', '2020-01-01 18:06:09', '2020-01-01 18:06:09');
INSERT INTO `orders` VALUES (3, 'Nguyễn Việt Anh', '0346741998', 'vastb98@gmail.com', '<p>aa</p>', 'cầu giấy', 'Hà Nội', 'Vietnam', '72000000', '1', '2020-02-13 10:25:39', '2020-02-13 10:26:13');
INSERT INTO `orders` VALUES (4, 'Viêt Anh', '0346741998', 'vastb98@gmail.com', 'abc', 'ádf', 'qw', 'VN', '18000000', '0', '2020-05-07 12:49:04', '2020-05-07 12:49:04');

-- ----------------------------
-- Table structure for orders_detail
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------
INSERT INTO `orders_detail` VALUES (1, 1, 1, 3, 8000000, 24000000, '0', '2020-01-01 15:36:12', '2020-01-01 15:36:12');
INSERT INTO `orders_detail` VALUES (2, 1, 4, 3, 8000000, 24000000, '0', '2020-01-01 15:36:12', '2020-01-01 15:36:12');
INSERT INTO `orders_detail` VALUES (3, 2, 8, 1, 8000000, 8000000, '0', '2020-01-01 18:06:09', '2020-01-01 18:06:09');
INSERT INTO `orders_detail` VALUES (4, 3, 2, 4, 18000000, 72000000, '0', '2020-02-13 10:25:39', '2020-02-13 10:25:39');
INSERT INTO `orders_detail` VALUES (5, 4, 2, 1, 18000000, 18000000, '0', '2020-05-07 12:49:04', '2020-05-07 12:49:04');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sellers
-- ----------------------------
DROP TABLE IF EXISTS `sellers`;
CREATE TABLE `sellers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sellers_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sellers
-- ----------------------------
INSERT INTO `sellers` VALUES (1, 'seller1', 'seller1@gmail.com', NULL, '$2y$10$NNoYJu6RgrrzFKbnDDQtl.vp.ZVEc7OzTaFi2zECGH0lDliF5OfoS', NULL, '2019-12-22 14:26:46', '2019-12-22 14:26:46');

-- ----------------------------
-- Table structure for shippers
-- ----------------------------
DROP TABLE IF EXISTS `shippers`;
CREATE TABLE `shippers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shippers_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shippers
-- ----------------------------
INSERT INTO `shippers` VALUES (1, 'shipper1', 'shipper1@gmail.com', NULL, '$2y$10$O/pP6oG2Nm37GQlrwZnmsOsLglw39BFq.W7xx5xeIvSUMreE5P1IW', NULL, '2019-12-22 15:25:36', '2019-12-22 15:25:36');

-- ----------------------------
-- Table structure for shop_brands
-- ----------------------------
DROP TABLE IF EXISTS `shop_brands`;
CREATE TABLE `shop_brands`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_brands
-- ----------------------------
INSERT INTO `shop_brands` VALUES (1, 'Brand 1', '/files/1/4.png', '#', '', '', '2019-12-30 14:57:15', '2020-01-01 15:15:57');
INSERT INTO `shop_brands` VALUES (2, 'Brand 2', '/files/1/46.jpg', '#', '', '', '2019-12-30 15:01:11', '2020-01-01 15:16:12');
INSERT INTO `shop_brands` VALUES (3, 'Brand 3', '/files/1/5.png', '#', '', '', '2020-01-01 15:16:24', '2020-01-01 15:22:18');
INSERT INTO `shop_brands` VALUES (4, 'Brand 4', '/files/1/6.png', '#', '', '', '2020-01-01 15:16:39', '2020-01-01 15:20:31');
INSERT INTO `shop_brands` VALUES (5, 'Brand 5', '/files/1/7.png', '#', '', '', '2020-01-01 15:16:54', '2020-01-01 15:16:54');

-- ----------------------------
-- Table structure for shop_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES (1, 'Women\'s Clothing 123', 'womens-clothing', '/files/1/clothsbanner.jpg', '<p>Women\'s Clothing</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -279px; top: -14.0069px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '<p>Women\'s Clothing</p>\r\n<p>&nbsp;</p>', '2019-12-23 15:43:29', '2020-01-02 11:50:11', 1);
INSERT INTO `shop_category` VALUES (2, 'Men\'s Clothing', 'mens-clothing', '/files/1/clothsbanner.jpg', '<p>Men\'s Clothing</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -244px; top: -14.0069px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '<p>Men\'s Clothing</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -154px; top: -14.0069px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2019-12-23 15:44:21', '2020-01-01 15:59:56', 1);
INSERT INTO `shop_category` VALUES (3, 'Kid\'s Wear', 'kids-wear', '/files/1/clothsbanner.jpg', '<p>Kid\'s Wear</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -323px; top: 32.7708px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '<p>Kid\'s Wear</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -126px; top: -14.0069px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2019-12-23 15:44:54', '2020-01-01 16:01:32', 1);
INSERT INTO `shop_category` VALUES (4, 'Party Wear', 'party-wear', '/files/1/clothsbanner.jpg', '<p>Party Wear</p>', '<p>Party Wear</p>', '2019-12-30 10:20:06', '2020-01-01 16:01:39', 1);
INSERT INTO `shop_category` VALUES (5, 'Casuals', 'casuals', '/files/1/clothsbanner.jpg', '<p>Casuals</p>', '<p>Casuals</p>', '2019-12-30 10:20:49', '2020-01-02 13:55:13', 1);
INSERT INTO `shop_category` VALUES (6, 'Night Wear', 'night-wear', '/files/1/clothsbanner.jpg', '<p>Night Wear</p>', '<p>Night Wear</p>', '2019-12-30 10:21:11', '2019-12-30 11:39:16', 0);
INSERT INTO `shop_category` VALUES (7, 'Formals', 'formals', '/files/1/clothsbanner.jpg', '<p>Formals</p>', '<p>Formals</p>', '2019-12-30 10:21:32', '2019-12-30 11:39:22', 0);
INSERT INTO `shop_category` VALUES (8, 'Inner Wear', 'inner-wear', '/files/1/clothsbanner.jpg', '<p>Inner Wear</p>', '<p>Inner Wear</p>', '2019-12-30 10:22:29', '2019-12-30 11:39:29', 0);
INSERT INTO `shop_category` VALUES (9, 'Jewellery', 'jewellery', '/files/1/clothsbanner.jpg', '<p>Jewellery</p>', '<p>Jewellery</p>', '2019-12-30 10:24:08', '2019-12-30 11:39:36', 0);
INSERT INTO `shop_category` VALUES (10, 'Watches', 'watches', '/files/1/clothsbanner.jpg', '<p>Watches</p>', '<p>Watches</p>', '2019-12-30 10:24:46', '2019-12-30 11:39:44', 0);
INSERT INTO `shop_category` VALUES (11, 'Cometics', 'cometics', '/files/1/clothsbanner.jpg', '<p>Cometics</p>', '<p>Cometics</p>', '2019-12-30 10:24:46', '2019-12-30 11:39:52', 0);
INSERT INTO `shop_category` VALUES (12, 'Deo & Perfumes', 'deo-perfumes', '/files/1/clothsbanner.jpg', '<p>Deo &amp; Perfumes</p>', '<p>Deo &amp; Perfumes</p>', '2019-12-30 10:28:07', '2019-12-30 11:40:05', 0);
INSERT INTO `shop_category` VALUES (13, 'Hair Care', 'hair-care', '/files/1/clothsbanner.jpg', '<p>Hair Care</p>', '<p>Hair Care</p>', '2019-12-30 10:28:42', '2019-12-30 11:40:13', 0);
INSERT INTO `shop_category` VALUES (14, 'Shoes', 'shoes', '/files/1/clothsbanner.jpg', '<p>Shoes</p>', '<p>Shoes</p>', '2019-12-30 10:28:57', '2019-12-30 11:40:21', 0);
INSERT INTO `shop_category` VALUES (15, 'Handbags', 'handbags', '/files/1/clothsbanner.jpg', '<p>Handbags</p>', '<p>Handbags</p>', '2019-12-30 10:29:16', '2019-12-30 11:40:30', 0);
INSERT INTO `shop_category` VALUES (16, 'Skin care', 'skin-care', '/files/1/clothsbanner.jpg', '<p>Skin care 123</p>', '<p>Skin care</p>', '2019-12-30 10:29:32', '2019-12-30 11:40:39', 0);

-- ----------------------------
-- Table structure for shop_products
-- ----------------------------
DROP TABLE IF EXISTS `shop_products`;
CREATE TABLE `shop_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `priceCore` int(11) NOT NULL,
  `priceSale` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `additional_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `help` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  `ship_info` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_products
-- ----------------------------
INSERT INTO `shop_products` VALUES (1, 'Laptop dell i5', 'laptop-dell-i5', '[\"\\/files\\/1\\/ip2.jpg\",\"\\/files\\/1\\/kp4.jpg\",\"\\/files\\/1\\/a3.jpg\"]', '<p>Bền đẹp</p>', '<p>Bền đẹp</p>', 10000000, 8000000, 0, 1, '2019-12-23 17:00:20', '2020-01-01 15:53:33', '<p>Bền đẹp</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -100px; top: -14.0069px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '<p>Bền đẹp</p>', '<p>Bền đẹp</p>', 1, 'Được vận chuyển trong 2-3 ngày');
INSERT INTO `shop_products` VALUES (2, 'Điện thoại iphone', 'iphone', '[\"\\/files\\/1\\/ip5.jpg\",\"\\/files\\/1\\/a3.jpg\"]', '<p>Điện thoại iphone</p>', '<p>Điện thoại iphone</p>', 23000000, 18000000, 100, 1, '2019-12-23 17:01:15', '2020-01-01 15:53:17', '', '', '', 1, '');
INSERT INTO `shop_products` VALUES (3, 'Tã em bé', 'ta-em-be', '[\"\\/files\\/1\\/ip9.jpg\",\"\\/files\\/1\\/a2.jpg\",\"\\/files\\/1\\/a3.jpg\"]', '<p>T&atilde; em b&eacute;</p>', '<p>T&atilde; em b&eacute;</p>', 100000, 80000, 200, 1, '2019-12-23 17:01:45', '2020-01-01 15:53:49', '', '', '', 1, '');
INSERT INTO `shop_products` VALUES (4, 'Điều hòa LG', 'dieu-hoa-lg', '[\"\\/files\\/1\\/cap1.jpg\",\"\\/files\\/1\\/a2.jpg\",\"\\/files\\/1\\/a3.jpg\"]', '<p>Điều h&ograve;a LG</p>', '<p>Điều h&ograve;a LG</p>', 10000000, 8000000, 100, 1, '2019-12-23 17:02:30', '2020-01-01 15:53:58', '', '', '', 1, '');
INSERT INTO `shop_products` VALUES (5, 'PC gaming', 'pc', '[\"\\/files\\/1\\/ip7.jpg\",\"\\/files\\/1\\/a2.jpg\",\"\\/files\\/1\\/a3.jpg\"]', '<p>PC gaming</p>', '<p>PC gaming</p>', 46000000, 32000000, 200, 2, '2019-12-23 17:02:59', '2020-01-01 16:03:33', '', '', '', 1, '');
INSERT INTO `shop_products` VALUES (6, 'Casual Dres', 'casual-dress', '[\"\\/files\\/1\\/wp1.jpg\"]', '<p>V&aacute;y si&ecirc;u đẹp</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -494px; top: 32.7708px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '<p>V&aacute;y si&ecirc;u đẹp</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -177px; top: 32.7708px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 600000, 500000, 100, 2, '2019-12-23 17:04:22', '2020-01-01 06:32:06', '<p>V&aacute;y si&ecirc;u đẹp</p>', '', '<p>V&aacute;y si&ecirc;u đẹp</p>', 1, '');
INSERT INTO `shop_products` VALUES (7, 'Casuals Clothing', 'casuals-clothing', '[\"\\/files\\/1\\/wp3.jpg\"]', '<p>V&aacute;y si&ecirc;u đẹp</p>', '<p>V&aacute;y si&ecirc;u đẹp</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -232px; top: 32.7708px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 800000, 750000, 100, 2, '2019-12-23 17:04:39', '2020-01-01 06:31:25', '<p>V&aacute;y si&ecirc;u đẹp</p>', '<p>V&aacute;y si&ecirc;u đẹp</p>', '<p>V&aacute;y si&ecirc;u đẹp</p>', 0, '');
INSERT INTO `shop_products` VALUES (8, 'Casuals Dress', 'dien-tu-cong-nghe', '[\"\\/files\\/1\\/wp9.jpg\"]', '<p>Laptop dell i5</p>', '<p>Laptop dell i5</p>', 10000000, 8000000, 100, 2, '2019-12-23 17:04:50', '2020-01-01 06:26:45', '', '', '', 0, '');
INSERT INTO `shop_products` VALUES (9, 'iPhone 11', 'iphone-11', '[\"\\/files\\/1\\/a1.jpg\",\"\\/files\\/1\\/a2.jpg\",\"\\/files\\/1\\/a3.jpg\"]', '<p>Laptop dell i5</p>', '<p>Laptop dell i5</p>', 10000000, 8000000, 100, 1, '2019-12-23 17:05:16', '2020-01-01 06:32:42', '', '', '', 1, '');
INSERT INTO `shop_products` VALUES (10, 'Laptop dell i5', 'Điện tử công nghệ', '[\"\\/files\\/1\\/a1.jpg\",\"\\/files\\/1\\/a2.jpg\",\"\\/files\\/1\\/a3.jpg\"]', 'Laptop dell i5', 'Laptop dell i5', 10000000, 8000000, 100, 1, '2019-12-23 17:05:30', '2019-12-23 17:05:30', '', '', '', 1, '');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Việt', 'vastb98@gmail.com', NULL, '$2y$10$uUKAMBtbQibhOEJBvorso.ka1RXTTx3fe5XLGOqyTUuX8bDYkEP9C', NULL, '2020-01-02 08:27:11', '2020-01-02 08:27:11');
INSERT INTO `users` VALUES (2, 'Anh', 'vastb1998@gmail.com', NULL, '$2y$10$0bdS7qlHqR7SC7yrKafw8.O3TEVi.fjqqa6AYSWHToPofj.uQDBsi', NULL, '2020-05-07 12:47:12', '2020-05-07 12:47:12');

SET FOREIGN_KEY_CHECKS = 1;
