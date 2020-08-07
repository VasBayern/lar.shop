/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : shop_dt

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 20/06/2020 21:57:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Máy Tính', 'Máy Tính', 1, '2019-06-13 04:15:03', '2019-08-01 05:47:11');
INSERT INTO `category` VALUES (2, 'Phụ Kiện', 'Phụ Kiện', 1, '2019-06-14 08:29:42', '2019-06-25 07:30:03');
INSERT INTO `category` VALUES (3, 'Điện Thoại', 'Điện Thoại', 1, '2019-06-14 08:30:43', '2019-08-01 05:47:22');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'Đặng Thị Dung', 'nguyentribao1998@gmail.com', 'đẹp quá bạn', 6, '2019-08-28 04:33:02', '2019-08-28 04:33:02');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (2, 'Nguyễn Chí Bảo', 'nguyentribao40@gmail.com', 'hi shop, mình là Bảo, Hiện tại mình mua hàng bên bạn', '2019-07-17 06:58:06', '2019-07-17 06:58:06');
INSERT INTO `contacts` VALUES (3, 'Nguyễn Chí Bảo', 'nguyentribao40@gmail.com', 'mk', '2019-07-17 06:59:31', '2019-07-17 06:59:31');
INSERT INTO `contacts` VALUES (4, 'Nguyễn Chí Bảo', 'nguyentribao40@gmail.com', 'mk', '2019-07-17 07:01:06', '2019-07-17 07:01:06');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (51, 9, 'nguyentribao40@gmail.com', 'Hải Dương', '0347488111', 1, '2019-08-31 09:29:40', '2019-08-31 09:29:40');
INSERT INTO `customers` VALUES (52, 27, 'nguyentribao1998@gmail.com', 'Hà Nội', '1664872279', 1, '2019-08-31 09:32:56', '2019-08-31 09:32:56');
INSERT INTO `customers` VALUES (53, 30, 'vastb98@gmail.com', 'Ha noi', '0346741998', 1, '2020-06-20 06:37:50', '2020-06-20 06:37:50');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_06_14_025820_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_06_14_025932_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_06_14_030458_create_orders_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_06_14_030530_create_orders_details', 1);
INSERT INTO `migrations` VALUES (5, '2019_06_14_030613_create_contacts', 1);
INSERT INTO `migrations` VALUES (6, '2019_06_14_030641_create_customers', 1);
INSERT INTO `migrations` VALUES (7, '2019_06_14_030710_create_category', 1);
INSERT INTO `migrations` VALUES (8, '2019_06_14_030733_create_product', 1);
INSERT INTO `migrations` VALUES (9, '2019_06_14_031207_product_types', 1);
INSERT INTO `migrations` VALUES (10, '2019_06_15_091607_create_product_table', 2);
INSERT INTO `migrations` VALUES (11, '2019_06_15_092004_create_product_table', 3);
INSERT INTO `migrations` VALUES (12, '2019_06_15_092150_create_product_table', 4);
INSERT INTO `migrations` VALUES (13, '2019_08_27_035623_create_comment', 5);

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idOder` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (10, 15, 6, 1, 2000000, '2019-07-09 09:02:42', '2019-07-09 09:02:42');
INSERT INTO `order_details` VALUES (11, 16, 6, 1, 2000000, '2019-07-09 09:08:01', '2019-07-09 09:08:01');
INSERT INTO `order_details` VALUES (12, 17, 6, 1, 2000000, '2019-07-09 09:14:37', '2019-07-09 09:14:37');
INSERT INTO `order_details` VALUES (13, 18, 6, 2, 2000000, '2019-07-11 07:28:35', '2019-07-11 07:28:35');
INSERT INTO `order_details` VALUES (14, 19, 6, 2, 2000000, '2019-07-11 07:28:48', '2019-07-11 07:28:48');
INSERT INTO `order_details` VALUES (15, 20, 6, 2, 2000000, '2019-07-16 10:16:16', '2019-07-16 10:16:16');
INSERT INTO `order_details` VALUES (16, 20, 7, 1, 24000000, '2019-07-16 10:16:16', '2019-07-16 10:16:16');
INSERT INTO `order_details` VALUES (17, 21, 6, 2, 2000000, '2019-07-16 10:55:08', '2019-07-16 10:55:08');
INSERT INTO `order_details` VALUES (18, 21, 2, 1, 20000000, '2019-07-16 10:55:08', '2019-07-16 10:55:08');
INSERT INTO `order_details` VALUES (19, 22, 7, 1, 24000000, '2019-07-31 10:36:59', '2019-07-31 10:36:59');
INSERT INTO `order_details` VALUES (20, 23, 7, 1, 24000000, '2019-07-31 10:37:06', '2019-07-31 10:37:06');
INSERT INTO `order_details` VALUES (21, 24, 6, 1, 2000000, '2019-07-31 10:38:13', '2019-07-31 10:38:13');
INSERT INTO `order_details` VALUES (22, 25, 6, 1, 2000000, '2019-08-07 03:51:19', '2019-08-07 03:51:19');
INSERT INTO `order_details` VALUES (23, 26, 7, 1, 24000000, '2019-08-17 16:14:39', '2019-08-17 16:14:39');
INSERT INTO `order_details` VALUES (24, 29, 6, 1, 2000000, '2019-08-30 04:20:44', '2019-08-30 04:20:44');
INSERT INTO `order_details` VALUES (25, 30, 6, 1, 2000000, '2019-08-31 09:30:05', '2019-08-31 09:30:05');
INSERT INTO `order_details` VALUES (26, 31, 6, 1, 2000000, '2019-08-31 09:30:12', '2019-08-31 09:30:12');
INSERT INTO `order_details` VALUES (27, 32, 2, 1, 20000000, '2019-08-31 09:33:13', '2019-08-31 09:33:13');
INSERT INTO `order_details` VALUES (28, 32, 11, 1, 24500000, '2019-08-31 09:33:13', '2019-08-31 09:33:13');
INSERT INTO `order_details` VALUES (29, 33, 12, 1, 9500000, '2019-09-01 09:26:35', '2019-09-01 09:26:35');
INSERT INTO `order_details` VALUES (30, 34, 7, 1, 24000000, '2019-09-05 02:55:02', '2019-09-05 02:55:02');
INSERT INTO `order_details` VALUES (31, 34, 8, 1, 10000000, '2019-09-05 02:55:02', '2019-09-05 02:55:02');
INSERT INTO `order_details` VALUES (32, 34, 15, 1, 15000, '2019-09-05 02:55:02', '2019-09-05 02:55:02');
INSERT INTO `order_details` VALUES (33, 35, 6, 3, 2000000, '2019-09-05 08:48:22', '2019-09-05 08:48:22');
INSERT INTO `order_details` VALUES (34, 36, 11, 1, 24500000, '2019-09-18 09:44:18', '2019-09-18 09:44:18');
INSERT INTO `order_details` VALUES (35, 37, 7, 2, 24000000, '2019-09-27 09:22:33', '2019-09-27 09:22:33');
INSERT INTO `order_details` VALUES (36, 38, 10, 3, 15000000, '2020-06-20 06:38:04', '2020-06-20 06:38:04');
INSERT INTO `order_details` VALUES (37, 39, 10, 3, 15000000, '2020-06-20 06:38:07', '2020-06-20 06:38:07');
INSERT INTO `order_details` VALUES (38, 40, 10, 3, 15000000, '2020-06-20 06:38:08', '2020-06-20 06:38:08');
INSERT INTO `order_details` VALUES (39, 41, 10, 3, 15000000, '2020-06-20 06:38:08', '2020-06-20 06:38:08');
INSERT INTO `order_details` VALUES (40, 42, 10, 3, 15000000, '2020-06-20 06:38:08', '2020-06-20 06:38:08');
INSERT INTO `order_details` VALUES (41, 43, 10, 3, 15000000, '2020-06-20 06:38:09', '2020-06-20 06:38:09');
INSERT INTO `order_details` VALUES (42, 44, 10, 3, 15000000, '2020-06-20 06:38:19', '2020-06-20 06:38:19');
INSERT INTO `order_details` VALUES (43, 45, 10, 3, 15000000, '2020-06-20 06:38:20', '2020-06-20 06:38:20');
INSERT INTO `order_details` VALUES (44, 46, 10, 3, 15000000, '2020-06-20 06:38:20', '2020-06-20 06:38:20');
INSERT INTO `order_details` VALUES (45, 47, 10, 3, 15000000, '2020-06-20 06:38:20', '2020-06-20 06:38:20');
INSERT INTO `order_details` VALUES (46, 48, 10, 3, 15000000, '2020-06-20 06:38:20', '2020-06-20 06:38:20');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUser` int(11) NOT NULL,
  `code_order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (31, 'nguyentribao40@gmail.com', '0347488111', 'Hải Dương', NULL, 'Nguyễn Chí Bảo', 9, 'orders1241718860', 1, '2019-08-31 09:30:12', '2019-08-31 09:30:12');
INSERT INTO `orders` VALUES (33, 'nguyentribao40@gmail.com', '0347488111', 'Hải Dương', 'chào shop, hàng mình đã mua, mong shop gửi cho mình nhanh nha, mk cảm ơn bạn', 'Nguyễn Chí Bảo', 9, 'orders304367570', 0, '2019-09-01 09:26:35', '2019-09-01 09:26:35');
INSERT INTO `orders` VALUES (34, 'nguyentribao40@gmail.com', '0347488111', 'Hải Dương', 'chào bạn', 'Nguyễn Chí Bảo', 9, 'orders67863772', 0, '2019-09-05 02:55:02', '2019-09-05 02:55:02');
INSERT INTO `orders` VALUES (35, 'nguyentribao40@gmail.com', '0347488111', 'Hải Dương', 'chào hiển. rất vui đồng hàng vs bạn', 'Nguyễn Chí Bảo', 9, 'orders1415874891', 0, '2019-09-05 08:48:22', '2019-09-05 08:48:22');
INSERT INTO `orders` VALUES (36, 'nguyentribao40@gmail.com', '0347488111', 'Hải Dương', 'giao hàng cho mình nhanh nha', 'Nguyễn Chí Bảo', 9, 'orders1931624742', 0, '2019-09-18 09:44:18', '2019-09-18 09:44:18');
INSERT INTO `orders` VALUES (38, 'vastb98@gmail.com', '0346741998', 'Ha noi', 'nhanh', 'Nguyễn Việt Anh', 30, 'orders708091015', 0, '2020-06-20 06:38:04', '2020-06-20 06:38:04');
INSERT INTO `orders` VALUES (39, 'vastb98@gmail.com', '0346741998', 'Ha noi', 'nhanh', 'Nguyễn Việt Anh', 30, 'orders328642314', 0, '2020-06-20 06:38:07', '2020-06-20 06:38:07');
INSERT INTO `orders` VALUES (40, 'vastb98@gmail.com', '0346741998', 'Ha noi', 'nhanh', 'Nguyễn Việt Anh', 30, 'orders1928451126', 0, '2020-06-20 06:38:08', '2020-06-20 06:38:08');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `promotional` float NOT NULL,
  `idCategory` int(11) NOT NULL,
  `idProductType` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Warranty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (3, 'gậy tự sướng 2019', 'gậy tự sướng 2019', '<p>Tay cầm bọc lớp cao su để hạn chế trơn trượt khi d&ugrave;ng.</p>\r\n\r\n<p>Thiết kế nhỏ gọn chỉ 16 cm, dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh.</p>\r\n\r\n<p>Kh&ocirc;ng cần hẹn giờ, chỉ cần ấn n&uacute;t tr&ecirc;n th&acirc;n gậy để chụp ảnh.</p>\r\n\r\n<p>Độ d&agrave;i gậy c&oacute; thể k&eacute;o d&agrave;i l&ecirc;n đến 60 cm.</p>\r\n\r\n<p>Đầu gậy c&oacute; thể gập mở g&oacute;c 270 độ t&ugrave;y bạn lựa chọn.</p>\r\n\r\n<p>Xuất xứ sản phẩm: Trung Quốc.</p>\r\n\r\n<p><strong>Kiểm tra c&oacute; h&agrave;ng tại nơi bạn ở kh&ocirc;ng?</strong></p>\r\n\r\n<p>Sản phẩm kh&ocirc;ng &aacute;p dụng bảo h&agrave;nh.&nbsp;<a href=\"https://www.thegioididong.com/chinh-sach-bao-hanh-san-pham#phu-kien\">Xem chi tiết</a></p>\r\n\r\n<p>Ph&iacute; giao h&agrave;ng&nbsp;<strong>10.000đ</strong>&nbsp;(&Aacute;p dụng đơn h&agrave;ng dưới&nbsp;<strong>200.000đ</strong>)</p>', 1, 18000, 15000, 2, 5, 'Sat-Jun-2019-2142796758-gay.jpg', 'Bảo hành 1 năm', 1, '2019-06-15 10:02:23', '2019-08-23 08:55:04');
INSERT INTO `product` VALUES (4, 'Ốp điện thoại', 'Ốp điện thoại', '<ul>\r\n	<li>Chất liệu nhựa, kiểu d&aacute;ng thời trang v&agrave; đẹp mắt</li>\r\n	<li>Thiết kế vừa vặn v&agrave; &ocirc;m s&aacute;t th&acirc;n m&aacute;y</li>\r\n	<li>&nbsp;Dễ d&agrave;ng th&aacute;o/lắp ốp v&agrave;o m&aacute;y</li>\r\n</ul>', 1, 20000, 1000, 2, 7, 'Sun-Jun-2019-915457482-ôp.jpg', 'Bảo hành 1 năm', 1, '2019-06-16 09:18:12', '2019-06-29 08:57:46');
INSERT INTO `product` VALUES (5, 'máy tính dell 2019', 'máy tính dell 2019', '<ul>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron\" target=\"_blank\">Intel Celeron</a>, N4000, 1.10 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/ram-ddr4-la-gi-882173\" target=\"_blank\">DDR4 (1 khe)</a>, 2400 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB SATA3,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cac-chuan-toc-do-cua-o-cung-ssd-tren-1115453\" target=\"_blank\">Hỗ trợ khe cắm SSD M.2 SATA3</a></p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch, HD (1366 x 768)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/card-do-hoa-tich-hop-la-gi-950047\" target=\"_blank\">Card đồ họa t&iacute;ch hợp</a>, Intel&reg; UHD Graphics 600</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/cong-giao-tiep-usb-la-gi--590168\" target=\"_blank\">2 x USB 2.0</a>,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/hdmi-la-gi--590061\" target=\"_blank\">HDMI</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/usb-30-la-gi-926737\" target=\"_blank\">USB 3.0</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/windows-10-co-tot-khong-953411\" target=\"_blank\">Windows 10 Home SL</a></p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 21.9 mm, 1.8 kg</p>\r\n	</li>\r\n</ul>', 1, 18000000, 17500000, 1, 6, 'Sat-Jun-2019-120443425-maytinh.jpg', 'Bảo hành 1 năm', 1, '2019-06-29 08:53:30', '2019-08-22 08:35:25');
INSERT INTO `product` VALUES (6, 'SamSung', 'SamSung', '<p>Samsung 2019</p>', 1, 2500000, 2000000, 3, 3, 'Sat-Jun-2019-524774864-ss.jpg', 'Bảo hành 1 năm', 1, '2019-06-29 09:30:57', '2019-06-29 09:30:57');
INSERT INTO `product` VALUES (7, 'SamSung 2013', 'SamSung 2013', '<p>SamSung 2013</p>', 1, 25000000, 24000000, 3, 3, 'Sat-Jun-2019-1298170497-ss10.jpg', 'Bảo hành 1 năm', 1, '2019-06-29 09:31:41', '2019-06-29 09:31:41');
INSERT INTO `product` VALUES (8, 'máy tính bảng', 'máy tính bảng', '<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752\" target=\"_blank\">IPS LCD</a>, 10.5&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>Android 8.0</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>CPU 8 nh&acirc;n, 1.8 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>5 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p><a href=\"http://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">Nano Sim</a></p>\r\n	</li>\r\n</ul>', 1, 18000000, 10000000, 1, 8, 'Thu-Jul-2019-1262696821-images.jpg', 'Bảo hành 1 năm', 1, '2019-07-11 07:43:04', '2019-07-11 07:43:04');
INSERT INTO `product` VALUES (10, 'Máy tính bảng Asus2019', 'Máy tính bảng Asus2019', '<p>m&aacute;y t&iacute;nh asus</p>', 1, 25000000, 15000000, 1, 6, 'Mon-Aug-2019-1501504301-asus.jpg', 'Bảo hành 1 năm', 1, '2019-08-12 03:47:53', '2019-08-12 03:47:53');
INSERT INTO `product` VALUES (11, 'ipX 64G', 'ipX 64G', '<ul>\r\n	<li>M&agrave;n Retina tai thỏ 6.5&quot;, tr&agrave;n m&agrave;n h&igrave;nh, HDR sắc n&eacute;t</li>\r\n	<li>Chuẩn chống nước v&agrave; chống bụi IP68</li>\r\n	<li>Face ID nhanh nhạy hơn, 1 Nano SIM v&agrave; 1 eSIM</li>\r\n</ul>', 1, 25000000, 24500000, 3, 1, 'Thu-Aug-2019-403207484-ipX.jpg', 'Bảo hành 1 năm', 1, '2019-08-22 08:41:35', '2019-08-22 08:41:35');
INSERT INTO `product` VALUES (12, 'điện thoại ip6 plus', 'điện thoại ip6 plus', '<p>điện thoại ip6 plus</p>', 1, 10000000, 9500000, 3, 1, 'Sun-Sep-2019-1721252164-ip6.jpg', NULL, 1, '2019-09-01 09:25:19', '2019-09-01 09:25:19');
INSERT INTO `product` VALUES (14, 'Cạp sạc điện thoại', 'Cạp sạc điện thoại', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Jack cắm:Micro USB</li>\r\n	<li>T&iacute;nh năng:Truyền dữ liệu, Sạc</li>\r\n	<li>D&ograve;ng sạc tối đa:2.1A</li>\r\n	<li>Độ d&agrave;i d&acirc;y:2 m</li>\r\n	<li>Xuất xứTrung Quốc</li>\r\n</ul>', 10, 100000, 55000, 2, 7, 'Wed-Sep-2019-1363356724-cáp sạc.jpg', NULL, 1, '2019-09-04 04:29:41', '2019-09-04 04:29:41');
INSERT INTO `product` VALUES (15, 'Dây cáp USB', 'Dây cáp USB', '<p>Đặc điểm nổi bật</p>\r\n\r\n<p>D&ugrave;ng được cho c&aacute;c thiết bị d&ugrave;ng cổng Micro USB.</p>\r\n\r\n<p>Chất lượng tương đương với h&agrave;ng ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p>D&ugrave;ng để ch&eacute;p dữ liệu hay sạc pin (d&ugrave;ng với adapter ri&ecirc;ng)</p>\r\n\r\n<p>D&acirc;y ngắn 20 cm th&iacute;ch hợp để d&ugrave;ng với pin sạc dự ph&ograve;ng hay kết nối m&aacute;y t&iacute;nh...</p>', 10, 18000, 15000, 2, 7, 'Wed-Sep-2019-1226862843-dây cáp usb.jpg', NULL, 1, '2019-09-04 04:32:06', '2019-09-04 04:32:06');
INSERT INTO `product` VALUES (16, 'Lý Xuân Tú', 'Lý Xuân Tú', '<p>L&yacute; giống shiba. Loại ch&oacute; xuất sứ từ nhật bản</p>', 10, 1000, 500, 1, 1, 'Wed-Sep-2019-1612606441-FRAPAR08-3384-1400871098.jpg', NULL, 1, '2019-09-18 09:42:31', '2019-09-18 09:42:31');

-- ----------------------------
-- Table structure for product_types
-- ----------------------------
DROP TABLE IF EXISTS `product_types`;
CREATE TABLE `product_types`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `idCategory` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_types
-- ----------------------------
INSERT INTO `product_types` VALUES (1, 'ipX', 'ipX', 1, 3, '2019-06-14 08:41:52', '2019-06-14 08:41:52');
INSERT INTO `product_types` VALUES (3, 'SamSung', 'SamSung', 1, 3, '2019-06-14 08:42:35', '2019-06-14 08:42:35');
INSERT INTO `product_types` VALUES (5, 'gậy tự sướng', 'gậy tự sướng', 1, 2, '2019-06-14 15:14:53', '2019-06-14 15:14:53');
INSERT INTO `product_types` VALUES (6, 'máy tính dell', 'máy tính dell', 1, 1, '2019-06-14 15:15:27', '2019-06-14 15:15:27');
INSERT INTO `product_types` VALUES (7, 'Ốp lưng điện thoại và Kính cường lực', 'Ốp lưng điện thoại và Kính cường lực', 1, 2, '2019-06-14 15:15:57', '2019-06-14 15:15:57');
INSERT INTO `product_types` VALUES (8, 'máy tính bảng', 'máy tính bảng', 1, 1, '2019-07-11 07:42:26', '2019-07-11 07:42:26');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `social_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (8, 'Đặng Thị Dung', 'dangthidung027@gmail.com', '$2y$10$8OOEVNA4f26ViDw..143N.KKtmI/nYHTAFrqHeNjLeQ3OholXDODm', NULL, NULL, 1, 0, NULL, NULL, '2019-06-28 09:09:06', '2019-06-28 09:10:06');
INSERT INTO `users` VALUES (9, 'Nguyễn Chí Bảo', 'nguyentribao40@gmail.com', '$2y$10$Rk2HEDySnbYkupPQZo3eHe5oDrnPENNu4WC.EFE0Ah13i/DEMcEDG', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (27, 'Chí Bảo', 'nguyentribao1998@gmail.com', '$2y$10$ug8eCMKaFCZ3aJW2rfhBWOTjowniD4mulhIyyqr4WbiDvwK4zj0ci', '1514864605341173', 'https://graph.facebook.com/v3.0/1514864605341173/picture?type=normal', 0, 0, NULL, NULL, '2019-07-31 07:25:12', '2019-07-31 07:25:29');
INSERT INTO `users` VALUES (28, 'Lê Bá Dương', 'lebaduong12@gmail.com', '$2y$10$F2.tg5Kju/on9tD36jnOJOSVWkKvM/Tj43ilK.8BZQ0LjTbwYjLlC', NULL, NULL, 2, 0, NULL, NULL, '2019-08-20 04:01:52', '2019-08-20 04:01:52');
INSERT INTO `users` VALUES (29, 'Lê Bá Dương', 'lebaduong12@gmail.com', '$2y$10$SOhZK7D5Va5RtbmraqLMZObXcBZiEmmzl.qTDRN6redxAO97lJyN2', NULL, NULL, 0, 0, NULL, NULL, '2019-08-30 04:19:54', '2019-08-30 04:19:54');
INSERT INTO `users` VALUES (30, 'Nguyễn Việt Anh', 'vastb98@gmail.com', '$2y$10$3YxXDcnf8MZU27QZ2cBXLOSg5s0t/z1.BMZ0Es4VWOHYFCXNYqL.i', NULL, NULL, 1, 0, NULL, NULL, '2020-03-14 09:17:12', '2020-03-14 09:17:12');

SET FOREIGN_KEY_CHECKS = 1;
