/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : qr_code

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 04/11/2023 22:24:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO `auth_permission` VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO `auth_permission` VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO `auth_permission` VALUES (4, 'Can view permission', 1, 'view_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (8, 'Can view group', 2, 'view_group');
INSERT INTO `auth_permission` VALUES (9, 'Can add content type', 3, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (10, 'Can change content type', 3, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can delete content type', 3, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can view content type', 3, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 4, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 4, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 4, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can view session', 4, 'view_session');
INSERT INTO `auth_permission` VALUES (17, 'Can add blacklisted token', 5, 'add_blacklistedtoken');
INSERT INTO `auth_permission` VALUES (18, 'Can change blacklisted token', 5, 'change_blacklistedtoken');
INSERT INTO `auth_permission` VALUES (19, 'Can delete blacklisted token', 5, 'delete_blacklistedtoken');
INSERT INTO `auth_permission` VALUES (20, 'Can view blacklisted token', 5, 'view_blacklistedtoken');
INSERT INTO `auth_permission` VALUES (21, 'Can add outstanding token', 6, 'add_outstandingtoken');
INSERT INTO `auth_permission` VALUES (22, 'Can change outstanding token', 6, 'change_outstandingtoken');
INSERT INTO `auth_permission` VALUES (23, 'Can delete outstanding token', 6, 'delete_outstandingtoken');
INSERT INTO `auth_permission` VALUES (24, 'Can view outstanding token', 6, 'view_outstandingtoken');
INSERT INTO `auth_permission` VALUES (25, 'Can add 用户表', 7, 'add_users');
INSERT INTO `auth_permission` VALUES (26, 'Can change 用户表', 7, 'change_users');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 用户表', 7, 'delete_users');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户表', 7, 'view_users');
INSERT INTO `auth_permission` VALUES (29, 'Can add 部门表', 8, 'add_dept');
INSERT INTO `auth_permission` VALUES (30, 'Can change 部门表', 8, 'change_dept');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 部门表', 8, 'delete_dept');
INSERT INTO `auth_permission` VALUES (32, 'Can view 部门表', 8, 'view_dept');
INSERT INTO `auth_permission` VALUES (33, 'Can add 菜单表', 9, 'add_menu');
INSERT INTO `auth_permission` VALUES (34, 'Can change 菜单表', 9, 'change_menu');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 菜单表', 9, 'delete_menu');
INSERT INTO `auth_permission` VALUES (36, 'Can view 菜单表', 9, 'view_menu');
INSERT INTO `auth_permission` VALUES (37, 'Can add 菜单权限表', 10, 'add_menubutton');
INSERT INTO `auth_permission` VALUES (38, 'Can change 菜单权限表', 10, 'change_menubutton');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 菜单权限表', 10, 'delete_menubutton');
INSERT INTO `auth_permission` VALUES (40, 'Can view 菜单权限表', 10, 'view_menubutton');
INSERT INTO `auth_permission` VALUES (41, 'Can add 消息中心', 11, 'add_messagecenter');
INSERT INTO `auth_permission` VALUES (42, 'Can change 消息中心', 11, 'change_messagecenter');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 消息中心', 11, 'delete_messagecenter');
INSERT INTO `auth_permission` VALUES (44, 'Can view 消息中心', 11, 'view_messagecenter');
INSERT INTO `auth_permission` VALUES (45, 'Can add 角色表', 12, 'add_role');
INSERT INTO `auth_permission` VALUES (46, 'Can change 角色表', 12, 'change_role');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 角色表', 12, 'delete_role');
INSERT INTO `auth_permission` VALUES (48, 'Can view 角色表', 12, 'view_role');
INSERT INTO `auth_permission` VALUES (49, 'Can add 岗位表', 13, 'add_post');
INSERT INTO `auth_permission` VALUES (50, 'Can change 岗位表', 13, 'change_post');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 岗位表', 13, 'delete_post');
INSERT INTO `auth_permission` VALUES (52, 'Can view 岗位表', 13, 'view_post');
INSERT INTO `auth_permission` VALUES (53, 'Can add 操作日志', 14, 'add_operationlog');
INSERT INTO `auth_permission` VALUES (54, 'Can change 操作日志', 14, 'change_operationlog');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 操作日志', 14, 'delete_operationlog');
INSERT INTO `auth_permission` VALUES (56, 'Can view 操作日志', 14, 'view_operationlog');
INSERT INTO `auth_permission` VALUES (57, 'Can add 消息中心目标用户表', 15, 'add_messagecentertargetuser');
INSERT INTO `auth_permission` VALUES (58, 'Can change 消息中心目标用户表', 15, 'change_messagecentertargetuser');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 消息中心目标用户表', 15, 'delete_messagecentertargetuser');
INSERT INTO `auth_permission` VALUES (60, 'Can view 消息中心目标用户表', 15, 'view_messagecentertargetuser');
INSERT INTO `auth_permission` VALUES (61, 'Can add 登录日志', 16, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (62, 'Can change 登录日志', 16, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 登录日志', 16, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (64, 'Can view 登录日志', 16, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (65, 'Can add 文件管理', 17, 'add_filelist');
INSERT INTO `auth_permission` VALUES (66, 'Can change 文件管理', 17, 'change_filelist');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 文件管理', 17, 'delete_filelist');
INSERT INTO `auth_permission` VALUES (68, 'Can view 文件管理', 17, 'view_filelist');
INSERT INTO `auth_permission` VALUES (69, 'Can add 字典表', 18, 'add_dictionary');
INSERT INTO `auth_permission` VALUES (70, 'Can change 字典表', 18, 'change_dictionary');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 字典表', 18, 'delete_dictionary');
INSERT INTO `auth_permission` VALUES (72, 'Can view 字典表', 18, 'view_dictionary');
INSERT INTO `auth_permission` VALUES (73, 'Can add 地区表', 19, 'add_area');
INSERT INTO `auth_permission` VALUES (74, 'Can change 地区表', 19, 'change_area');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 地区表', 19, 'delete_area');
INSERT INTO `auth_permission` VALUES (76, 'Can view 地区表', 19, 'view_area');
INSERT INTO `auth_permission` VALUES (77, 'Can add 接口白名单', 20, 'add_apiwhitelist');
INSERT INTO `auth_permission` VALUES (78, 'Can change 接口白名单', 20, 'change_apiwhitelist');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 接口白名单', 20, 'delete_apiwhitelist');
INSERT INTO `auth_permission` VALUES (80, 'Can view 接口白名单', 20, 'view_apiwhitelist');
INSERT INTO `auth_permission` VALUES (81, 'Can add 系统配置表', 21, 'add_systemconfig');
INSERT INTO `auth_permission` VALUES (82, 'Can change 系统配置表', 21, 'change_systemconfig');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 系统配置表', 21, 'delete_systemconfig');
INSERT INTO `auth_permission` VALUES (84, 'Can view 系统配置表', 21, 'view_systemconfig');
INSERT INTO `auth_permission` VALUES (85, 'Can add captcha store', 22, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (86, 'Can change captcha store', 22, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (87, 'Can delete captcha store', 22, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (88, 'Can view captcha store', 22, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (89, 'Can add 二维码数据表', 23, 'add_book');
INSERT INTO `auth_permission` VALUES (90, 'Can change 二维码数据表', 23, 'change_book');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 二维码数据表', 23, 'delete_book');
INSERT INTO `auth_permission` VALUES (92, 'Can view 二维码数据表', 23, 'view_book');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (3, '9-7=', '2', '6a9fa673a830e43bb73eb154b93437e0b956520b', '2023-11-04 17:08:41.464586');
INSERT INTO `captcha_captchastore` VALUES (4, '1+8=', '9', 'b3b4ba491fea4dc1e3d75ee83199b4c4be33a14e', '2023-11-04 17:08:42.226297');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (1, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (23, 'qr', 'qr');
INSERT INTO `django_content_type` VALUES (22, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (3, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (4, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (20, 'system', 'apiwhitelist');
INSERT INTO `django_content_type` VALUES (19, 'system', 'area');
INSERT INTO `django_content_type` VALUES (8, 'system', 'dept');
INSERT INTO `django_content_type` VALUES (18, 'system', 'dictionary');
INSERT INTO `django_content_type` VALUES (17, 'system', 'filelist');
INSERT INTO `django_content_type` VALUES (16, 'system', 'loginlog');
INSERT INTO `django_content_type` VALUES (9, 'system', 'menu');
INSERT INTO `django_content_type` VALUES (10, 'system', 'menubutton');
INSERT INTO `django_content_type` VALUES (11, 'system', 'messagecenter');
INSERT INTO `django_content_type` VALUES (15, 'system', 'messagecentertargetuser');
INSERT INTO `django_content_type` VALUES (14, 'system', 'operationlog');
INSERT INTO `django_content_type` VALUES (13, 'system', 'post');
INSERT INTO `django_content_type` VALUES (12, 'system', 'role');
INSERT INTO `django_content_type` VALUES (21, 'system', 'systemconfig');
INSERT INTO `django_content_type` VALUES (7, 'system', 'users');
INSERT INTO `django_content_type` VALUES (5, 'token_blacklist', 'blacklistedtoken');
INSERT INTO `django_content_type` VALUES (6, 'token_blacklist', 'outstandingtoken');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-11-04 16:44:18.797370');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2023-11-04 16:44:18.830995');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2023-11-04 16:44:18.972402');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2023-11-04 16:44:19.001394');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2023-11-04 16:44:19.008000');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2023-11-04 16:44:19.014538');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2023-11-04 16:44:19.021305');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2023-11-04 16:44:19.024301');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2023-11-04 16:44:19.031396');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2023-11-04 16:44:19.037779');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2023-11-04 16:44:19.043827');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2023-11-04 16:44:19.056061');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2023-11-04 16:44:19.061966');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2023-11-04 16:44:19.068969');
INSERT INTO `django_migrations` VALUES (15, 'system', '0001_initial', '2023-11-04 16:44:20.328909');
INSERT INTO `django_migrations` VALUES (16, 'qr', '0001_initial', '2023-11-04 16:44:20.383551');
INSERT INTO `django_migrations` VALUES (17, 'qr', '0002_auto_20231104_1422', '2023-11-04 16:44:20.429643');
INSERT INTO `django_migrations` VALUES (18, 'qr', '0003_book_root', '2023-11-04 16:44:20.481318');
INSERT INTO `django_migrations` VALUES (19, 'qr', '0004_remove_book_image', '2023-11-04 16:44:20.507742');
INSERT INTO `django_migrations` VALUES (20, 'qr', '0005_auto_20231104_1622', '2023-11-04 16:44:20.572513');
INSERT INTO `django_migrations` VALUES (21, 'qr', '0006_auto_20231104_1623', '2023-11-04 16:44:20.734337');
INSERT INTO `django_migrations` VALUES (22, 'captcha', '0001_initial', '2023-11-04 16:44:20.755083');
INSERT INTO `django_migrations` VALUES (23, 'captcha', '0002_alter_captchastore_id', '2023-11-04 16:44:20.764489');
INSERT INTO `django_migrations` VALUES (24, 'sessions', '0001_initial', '2023-11-04 16:44:20.790633');
INSERT INTO `django_migrations` VALUES (25, 'system', '0002_cruddemomodel', '2023-11-04 16:44:20.846355');
INSERT INTO `django_migrations` VALUES (26, 'system', '0003_delete_cruddemomodel', '2023-11-04 16:44:20.855867');
INSERT INTO `django_migrations` VALUES (27, 'token_blacklist', '0001_initial', '2023-11-04 16:44:20.966122');
INSERT INTO `django_migrations` VALUES (28, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2023-11-04 16:44:20.993383');
INSERT INTO `django_migrations` VALUES (29, 'token_blacklist', '0003_auto_20171017_2007', '2023-11-04 16:44:21.016254');
INSERT INTO `django_migrations` VALUES (30, 'token_blacklist', '0004_auto_20171017_2013', '2023-11-04 16:44:21.079521');
INSERT INTO `django_migrations` VALUES (31, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2023-11-04 16:44:21.120715');
INSERT INTO `django_migrations` VALUES (32, 'token_blacklist', '0006_auto_20171017_2113', '2023-11-04 16:44:21.148518');
INSERT INTO `django_migrations` VALUES (33, 'token_blacklist', '0007_auto_20171017_2214', '2023-11-04 16:44:21.261262');
INSERT INTO `django_migrations` VALUES (34, 'token_blacklist', '0008_migrate_to_bigautofield', '2023-11-04 16:44:21.377672');
INSERT INTO `django_migrations` VALUES (35, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2023-11-04 16:44:21.398720');
INSERT INTO `django_migrations` VALUES (36, 'token_blacklist', '0011_linearizes_history', '2023-11-04 16:44:21.402810');
INSERT INTO `django_migrations` VALUES (37, 'token_blacklist', '0012_alter_outstandingtoken_user', '2023-11-04 16:44:21.420756');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_api_white_list
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_api_white_list`;
CREATE TABLE `dvadmin_api_white_list`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `method` int NULL DEFAULT NULL,
  `enable_datasource` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_api_white_list_creator_id_fd335789`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_api_white_list
-- ----------------------------
INSERT INTO `dvadmin_api_white_list` VALUES (1, NULL, NULL, NULL, '2023-11-04 16:45:03.520195', '2023-11-04 16:45:03.520195', '/api/system/dept_lazy_tree/', 0, 1, NULL);

-- ----------------------------
-- Table structure for dvadmin_book
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_book`;
CREATE TABLE `dvadmin_book`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `path` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `userRoot` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_book_creator_id_852326dc`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_book
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_message_center
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_message_center`;
CREATE TABLE `dvadmin_message_center`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `target_type` int NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_message_center_creator_id_60e2080e`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_message_center
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_message_center_target_dept
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_message_center_target_dept`;
CREATE TABLE `dvadmin_message_center_target_dept`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `messagecenter_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_message_center_t_messagecenter_id_dept_id_d9fb0c77_uniq`(`messagecenter_id` ASC, `dept_id` ASC) USING BTREE,
  INDEX `dvadmin_message_center_target_dept_messagecenter_id_69868c17`(`messagecenter_id` ASC) USING BTREE,
  INDEX `dvadmin_message_center_target_dept_dept_id_616decc4`(`dept_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_message_center_target_dept
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_message_center_target_role
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_message_center_target_role`;
CREATE TABLE `dvadmin_message_center_target_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `messagecenter_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_message_center_t_messagecenter_id_role_id_f5a77970_uniq`(`messagecenter_id` ASC, `role_id` ASC) USING BTREE,
  INDEX `dvadmin_message_center_target_role_messagecenter_id_41a7bd9d`(`messagecenter_id` ASC) USING BTREE,
  INDEX `dvadmin_message_center_target_role_role_id_661a61bb`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_message_center_target_role
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_message_center_target_user
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_message_center_target_user`;
CREATE TABLE `dvadmin_message_center_target_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `messagecenter_id` bigint NOT NULL,
  `users_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_message_center_target_user_creator_id_0a27a561`(`creator_id` ASC) USING BTREE,
  INDEX `dvadmin_message_center_target_user_messagecenter_id_54f35bf8`(`messagecenter_id` ASC) USING BTREE,
  INDEX `dvadmin_message_center_target_user_users_id_9ff81ff5`(`users_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_message_center_target_user
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_system_area
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_area`;
CREATE TABLE `dvadmin_system_area`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `level` bigint NOT NULL,
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `initials` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `pcode_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code` ASC) USING BTREE,
  INDEX `dvadmin_system_area_creator_id_a5046ac0`(`creator_id` ASC) USING BTREE,
  INDEX `dvadmin_system_area_pcode_id_f9b21462`(`pcode_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3446 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_area
-- ----------------------------
INSERT INTO `dvadmin_system_area` VALUES (1, NULL, NULL, NULL, '2023-11-04 16:46:11.202092', '2023-11-04 16:46:11.202092', '北京市', '11', 1, 'beijingshi', 'B', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2, NULL, NULL, NULL, '2023-11-04 16:46:11.202092', '2023-11-04 16:46:11.202092', '市辖区', '1101', 2, 'shixiaqu', 'S', 1, NULL, '11');
INSERT INTO `dvadmin_system_area` VALUES (3, NULL, NULL, NULL, '2023-11-04 16:46:11.202092', '2023-11-04 16:46:11.202092', '东城区', '110101', 3, 'dongchengqu', 'D', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (4, NULL, NULL, NULL, '2023-11-04 16:46:11.202092', '2023-11-04 16:46:11.202092', '西城区', '110102', 3, 'xichengqu', 'X', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (5, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '朝阳区', '110105', 3, 'chaoyangqu', 'C', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (6, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '丰台区', '110106', 3, 'fengtaiqu', 'F', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (7, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '石景山区', '110107', 3, 'shijingshanqu', 'S', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (8, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '海淀区', '110108', 3, 'haidianqu', 'H', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (9, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '门头沟区', '110109', 3, 'mentougouqu', 'M', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (10, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '房山区', '110111', 3, 'fangshanqu', 'F', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (11, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '通州区', '110112', 3, 'tongzhouqu', 'T', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (12, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '顺义区', '110113', 3, 'shunyiqu', 'S', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (13, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '昌平区', '110114', 3, 'changpingqu', 'C', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (14, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '大兴区', '110115', 3, 'daxingqu', 'D', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (15, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '怀柔区', '110116', 3, 'huairouqu', 'H', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (16, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '平谷区', '110117', 3, 'pingguqu', 'P', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (17, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '密云区', '110118', 3, 'miyunqu', 'M', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (18, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '延庆区', '110119', 3, 'yanqingqu', 'Y', 1, NULL, '1101');
INSERT INTO `dvadmin_system_area` VALUES (19, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '天津市', '12', 1, 'tianjinshi', 'T', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (20, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '市辖区', '1201', 2, 'shixiaqu', 'S', 1, NULL, '12');
INSERT INTO `dvadmin_system_area` VALUES (21, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '和平区', '120101', 3, 'hepingqu', 'H', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (22, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '河东区', '120102', 3, 'hedongqu', 'H', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (23, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '河西区', '120103', 3, 'hexiqu', 'H', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (24, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '南开区', '120104', 3, 'nankaiqu', 'N', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (25, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '河北区', '120105', 3, 'hebeiqu', 'H', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (26, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '红桥区', '120106', 3, 'hongqiaoqu', 'H', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (27, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '东丽区', '120110', 3, 'dongliqu', 'D', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (28, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '西青区', '120111', 3, 'xiqingqu', 'X', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (29, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '津南区', '120112', 3, 'jinnanqu', 'J', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (30, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '北辰区', '120113', 3, 'beichenqu', 'B', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (31, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '武清区', '120114', 3, 'wuqingqu', 'W', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (32, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '宝坻区', '120115', 3, 'baodiqu', 'B', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (33, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '滨海新区', '120116', 3, 'binhaixinqu', 'B', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (34, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '宁河区', '120117', 3, 'ninghequ', 'N', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (35, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '静海区', '120118', 3, 'jinghaiqu', 'J', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (36, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '蓟州区', '120119', 3, 'jizhouqu', 'J', 1, NULL, '1201');
INSERT INTO `dvadmin_system_area` VALUES (37, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '河北省', '13', 1, 'hebeisheng', 'H', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (38, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '石家庄市', '1301', 2, 'shijiazhuangshi', 'S', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (39, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '长安区', '130102', 3, 'changanqu', 'C', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (40, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '桥西区', '130104', 3, 'qiaoxiqu', 'Q', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (41, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '新华区', '130105', 3, 'xinhuaqu', 'X', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (42, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '井陉矿区', '130107', 3, 'jingxingkuangqu', 'J', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (43, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '裕华区', '130108', 3, 'yuhuaqu', 'Y', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (44, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '藁城区', '130109', 3, 'gaochengqu', 'G', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (45, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '鹿泉区', '130110', 3, 'luquanqu', 'L', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (46, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '栾城区', '130111', 3, 'luanchengqu', 'L', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (47, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '井陉县', '130121', 3, 'jingxingxian', 'J', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (48, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '正定县', '130123', 3, 'zhengdingxian', 'Z', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (49, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '行唐县', '130125', 3, 'xingtangxian', 'X', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (50, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '灵寿县', '130126', 3, 'lingshouxian', 'L', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (51, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '高邑县', '130127', 3, 'gaoyixian', 'G', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (52, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '深泽县', '130128', 3, 'shenzexian', 'S', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (53, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '赞皇县', '130129', 3, 'zanhuangxian', 'Z', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (54, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '无极县', '130130', 3, 'wujixian', 'W', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (55, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '平山县', '130131', 3, 'pingshanxian', 'P', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (56, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '元氏县', '130132', 3, 'yuanshixian', 'Y', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (57, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '赵县', '130133', 3, 'zhaoxian', 'Z', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (58, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '石家庄高新技术产业开发区', '130171', 3, 'shijiazhuanggaoxinjishuchanyekaifaqu', 'S', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (59, NULL, NULL, NULL, '2023-11-04 16:46:11.203091', '2023-11-04 16:46:11.203091', '石家庄循环化工园区', '130172', 3, 'shijiazhuangxunhuanhuagongyuanqu', 'S', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (60, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '辛集市', '130181', 3, 'xinjishi', 'X', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (61, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '晋州市', '130183', 3, 'jinzhoushi', 'J', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (62, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '新乐市', '130184', 3, 'xinleshi', 'X', 1, NULL, '1301');
INSERT INTO `dvadmin_system_area` VALUES (63, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '唐山市', '1302', 2, 'tangshanshi', 'T', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (64, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '路南区', '130202', 3, 'lunanqu', 'L', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (65, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '路北区', '130203', 3, 'lubeiqu', 'L', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (66, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '古冶区', '130204', 3, 'guyequ', 'G', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (67, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '开平区', '130205', 3, 'kaipingqu', 'K', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (68, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '丰南区', '130207', 3, 'fengnanqu', 'F', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (69, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '丰润区', '130208', 3, 'fengrunqu', 'F', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (70, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '曹妃甸区', '130209', 3, 'caofeidianqu', 'C', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (71, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '滦南县', '130224', 3, 'luannanxian', 'L', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (72, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '乐亭县', '130225', 3, 'letingxian', 'L', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (73, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '迁西县', '130227', 3, 'qianxixian', 'Q', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (74, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '玉田县', '130229', 3, 'yutianxian', 'Y', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (75, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '河北唐山芦台经济开发区', '130271', 3, 'hebeitangshanlutaijingjikaifaqu', 'H', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (76, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '唐山市汉沽管理区', '130272', 3, 'tangshanshihanguguanliqu', 'T', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (77, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '唐山高新技术产业开发区', '130273', 3, 'tangshangaoxinjishuchanyekaifaqu', 'T', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (78, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '河北唐山海港经济开发区', '130274', 3, 'hebeitangshanhaigangjingjikaifaqu', 'H', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (79, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '遵化市', '130281', 3, 'zunhuashi', 'Z', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (80, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '迁安市', '130283', 3, 'qiananshi', 'Q', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (81, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '滦州市', '130284', 3, 'luanzhoushi', 'L', 1, NULL, '1302');
INSERT INTO `dvadmin_system_area` VALUES (82, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '秦皇岛市', '1303', 2, 'qinhuangdaoshi', 'Q', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (83, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '海港区', '130302', 3, 'haigangqu', 'H', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (84, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '山海关区', '130303', 3, 'shanhaiguanqu', 'S', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (85, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '北戴河区', '130304', 3, 'beidaihequ', 'B', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (86, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '抚宁区', '130306', 3, 'funingqu', 'F', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (87, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '青龙满族自治县', '130321', 3, 'qinglongmanzuzizhixian', 'Q', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (88, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '昌黎县', '130322', 3, 'changlixian', 'C', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (89, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '卢龙县', '130324', 3, 'lulongxian', 'L', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (90, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '秦皇岛市经济技术开发区', '130371', 3, 'qinhuangdaoshijingjijishukaifaqu', 'Q', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (91, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '北戴河新区', '130372', 3, 'beidaihexinqu', 'B', 1, NULL, '1303');
INSERT INTO `dvadmin_system_area` VALUES (92, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '邯郸市', '1304', 2, 'handanshi', 'H', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (93, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '邯山区', '130402', 3, 'hanshanqu', 'H', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (94, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '丛台区', '130403', 3, 'congtaiqu', 'C', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (95, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '复兴区', '130404', 3, 'fuxingqu', 'F', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (96, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '峰峰矿区', '130406', 3, 'fengfengkuangqu', 'F', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (97, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '肥乡区', '130407', 3, 'feixiangqu', 'F', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (98, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '永年区', '130408', 3, 'yongnianqu', 'Y', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (99, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '临漳县', '130423', 3, 'linzhangxian', 'L', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (100, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '成安县', '130424', 3, 'chenganxian', 'C', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (101, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '大名县', '130425', 3, 'damingxian', 'D', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (102, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '涉县', '130426', 3, 'shexian', 'S', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (103, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '磁县', '130427', 3, 'cixian', 'C', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (104, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '邱县', '130430', 3, 'qiuxian', 'Q', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (105, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '鸡泽县', '130431', 3, 'jizexian', 'J', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (106, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '广平县', '130432', 3, 'guangpingxian', 'G', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (107, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '馆陶县', '130433', 3, 'guantaoxian', 'G', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (108, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '魏县', '130434', 3, 'weixian', 'W', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (109, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '曲周县', '130435', 3, 'quzhouxian', 'Q', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (110, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '邯郸经济技术开发区', '130471', 3, 'handanjingjijishukaifaqu', 'H', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (111, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '邯郸冀南新区', '130473', 3, 'handanjinanxinqu', 'H', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (112, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '武安市', '130481', 3, 'wuanshi', 'W', 1, NULL, '1304');
INSERT INTO `dvadmin_system_area` VALUES (113, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '邢台市', '1305', 2, 'xingtaishi', 'X', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (114, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '襄都区', '130502', 3, 'xiangdouqu', 'X', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (115, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '信都区', '130503', 3, 'xindouqu', 'X', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (116, NULL, NULL, NULL, '2023-11-04 16:46:11.204089', '2023-11-04 16:46:11.204089', '任泽区', '130505', 3, 'renzequ', 'R', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (117, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '南和区', '130506', 3, 'nanhequ', 'N', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (118, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '临城县', '130522', 3, 'linchengxian', 'L', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (119, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '内丘县', '130523', 3, 'neiqiuxian', 'N', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (120, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '柏乡县', '130524', 3, 'baixiangxian', 'B', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (121, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '隆尧县', '130525', 3, 'longyaoxian', 'L', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (122, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '宁晋县', '130528', 3, 'ningjinxian', 'N', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (123, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '巨鹿县', '130529', 3, 'juluxian', 'J', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (124, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '新河县', '130530', 3, 'xinhexian', 'X', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (125, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '广宗县', '130531', 3, 'guangzongxian', 'G', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (126, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '平乡县', '130532', 3, 'pingxiangxian', 'P', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (127, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '威县', '130533', 3, 'weixian', 'W', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (128, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '清河县', '130534', 3, 'qinghexian', 'Q', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (129, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '临西县', '130535', 3, 'linxixian', 'L', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (130, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '河北邢台经济开发区', '130571', 3, 'hebeixingtaijingjikaifaqu', 'H', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (131, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '南宫市', '130581', 3, 'nangongshi', 'N', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (132, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '沙河市', '130582', 3, 'shaheshi', 'S', 1, NULL, '1305');
INSERT INTO `dvadmin_system_area` VALUES (133, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '保定市', '1306', 2, 'baodingshi', 'B', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (134, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '竞秀区', '130602', 3, 'jingxiuqu', 'J', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (135, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '莲池区', '130606', 3, 'lianchiqu', 'L', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (136, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '满城区', '130607', 3, 'manchengqu', 'M', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (137, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '清苑区', '130608', 3, 'qingyuanqu', 'Q', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (138, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '徐水区', '130609', 3, 'xushuiqu', 'X', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (139, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '涞水县', '130623', 3, 'laishuixian', 'L', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (140, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '阜平县', '130624', 3, 'fupingxian', 'F', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (141, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '定兴县', '130626', 3, 'dingxingxian', 'D', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (142, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '唐县', '130627', 3, 'tangxian', 'T', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (143, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '高阳县', '130628', 3, 'gaoyangxian', 'G', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (144, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '容城县', '130629', 3, 'rongchengxian', 'R', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (145, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '涞源县', '130630', 3, 'laiyuanxian', 'L', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (146, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '望都县', '130631', 3, 'wangdouxian', 'W', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (147, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '安新县', '130632', 3, 'anxinxian', 'A', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (148, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '易县', '130633', 3, 'yixian', 'Y', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (149, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '曲阳县', '130634', 3, 'quyangxian', 'Q', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (150, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '蠡县', '130635', 3, 'lixian', 'L', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (151, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '顺平县', '130636', 3, 'shunpingxian', 'S', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (152, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '博野县', '130637', 3, 'boyexian', 'B', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (153, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '雄县', '130638', 3, 'xiongxian', 'X', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (154, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '保定高新技术产业开发区', '130671', 3, 'baodinggaoxinjishuchanyekaifaqu', 'B', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (155, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '保定白沟新城', '130672', 3, 'baodingbaigouxincheng', 'B', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (156, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '涿州市', '130681', 3, 'zhuozhoushi', 'Z', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (157, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '定州市', '130682', 3, 'dingzhoushi', 'D', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (158, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '安国市', '130683', 3, 'anguoshi', 'A', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (159, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '高碑店市', '130684', 3, 'gaobeidianshi', 'G', 1, NULL, '1306');
INSERT INTO `dvadmin_system_area` VALUES (160, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '张家口市', '1307', 2, 'zhangjiakoushi', 'Z', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (161, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '桥东区', '130702', 3, 'qiaodongqu', 'Q', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (162, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '桥西区', '130703', 3, 'qiaoxiqu', 'Q', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (163, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '宣化区', '130705', 3, 'xuanhuaqu', 'X', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (164, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '下花园区', '130706', 3, 'xiahuayuanqu', 'X', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (165, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '万全区', '130708', 3, 'wanquanqu', 'W', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (166, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '崇礼区', '130709', 3, 'chongliqu', 'C', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (167, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '张北县', '130722', 3, 'zhangbeixian', 'Z', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (168, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '康保县', '130723', 3, 'kangbaoxian', 'K', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (169, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '沽源县', '130724', 3, 'guyuanxian', 'G', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (170, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '尚义县', '130725', 3, 'shangyixian', 'S', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (171, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '蔚县', '130726', 3, 'yuxian', 'Y', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (172, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '阳原县', '130727', 3, 'yangyuanxian', 'Y', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (173, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '怀安县', '130728', 3, 'huaianxian', 'H', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (174, NULL, NULL, NULL, '2023-11-04 16:46:11.205088', '2023-11-04 16:46:11.205088', '怀来县', '130730', 3, 'huailaixian', 'H', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (175, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '涿鹿县', '130731', 3, 'zhuoluxian', 'Z', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (176, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '赤城县', '130732', 3, 'chichengxian', 'C', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (177, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '张家口经济开发区', '130771', 3, 'zhangjiakoujingjikaifaqu', 'Z', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (178, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '张家口市察北管理区', '130772', 3, 'zhangjiakoushichabeiguanliqu', 'Z', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (179, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '张家口市塞北管理区', '130773', 3, 'zhangjiakoushisaibeiguanliqu', 'Z', 1, NULL, '1307');
INSERT INTO `dvadmin_system_area` VALUES (180, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '承德市', '1308', 2, 'chengdeshi', 'C', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (181, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '双桥区', '130802', 3, 'shuangqiaoqu', 'S', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (182, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '双滦区', '130803', 3, 'shuangluanqu', 'S', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (183, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '鹰手营子矿区', '130804', 3, 'yingshouyingzikuangqu', 'Y', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (184, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '承德县', '130821', 3, 'chengdexian', 'C', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (185, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '兴隆县', '130822', 3, 'xinglongxian', 'X', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (186, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '滦平县', '130824', 3, 'luanpingxian', 'L', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (187, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '隆化县', '130825', 3, 'longhuaxian', 'L', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (188, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '丰宁满族自治县', '130826', 3, 'fengningmanzuzizhixian', 'F', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (189, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '宽城满族自治县', '130827', 3, 'kuanchengmanzuzizhixian', 'K', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (190, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '围场满族蒙古族自治县', '130828', 3, 'weichangmanzumengguzuzizhixian', 'W', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (191, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '承德高新技术产业开发区', '130871', 3, 'chengdegaoxinjishuchanyekaifaqu', 'C', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (192, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '平泉市', '130881', 3, 'pingquanshi', 'P', 1, NULL, '1308');
INSERT INTO `dvadmin_system_area` VALUES (193, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '沧州市', '1309', 2, 'cangzhoushi', 'C', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (194, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '新华区', '130902', 3, 'xinhuaqu', 'X', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (195, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '运河区', '130903', 3, 'yunhequ', 'Y', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (196, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '沧县', '130921', 3, 'cangxian', 'C', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (197, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '青县', '130922', 3, 'qingxian', 'Q', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (198, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '东光县', '130923', 3, 'dongguangxian', 'D', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (199, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '海兴县', '130924', 3, 'haixingxian', 'H', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (200, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '盐山县', '130925', 3, 'yanshanxian', 'Y', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (201, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '肃宁县', '130926', 3, 'suningxian', 'S', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (202, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '南皮县', '130927', 3, 'nanpixian', 'N', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (203, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '吴桥县', '130928', 3, 'wuqiaoxian', 'W', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (204, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '献县', '130929', 3, 'xianxian', 'X', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (205, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '孟村回族自治县', '130930', 3, 'mengcunhuizuzizhixian', 'M', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (206, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '河北沧州经济开发区', '130971', 3, 'hebeicangzhoujingjikaifaqu', 'H', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (207, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '沧州高新技术产业开发区', '130972', 3, 'cangzhougaoxinjishuchanyekaifaqu', 'C', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (208, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '沧州渤海新区', '130973', 3, 'cangzhoubohaixinqu', 'C', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (209, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '泊头市', '130981', 3, 'potoushi', 'P', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (210, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '任丘市', '130982', 3, 'renqiushi', 'R', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (211, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '黄骅市', '130983', 3, 'huanghuashi', 'H', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (212, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '河间市', '130984', 3, 'hejianshi', 'H', 1, NULL, '1309');
INSERT INTO `dvadmin_system_area` VALUES (213, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '廊坊市', '1310', 2, 'langfangshi', 'L', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (214, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '安次区', '131002', 3, 'anciqu', 'A', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (215, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '广阳区', '131003', 3, 'guangyangqu', 'G', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (216, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '固安县', '131022', 3, 'guanxian', 'G', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (217, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '永清县', '131023', 3, 'yongqingxian', 'Y', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (218, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '香河县', '131024', 3, 'xianghexian', 'X', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (219, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '大城县', '131025', 3, 'daichengxian', 'D', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (220, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '文安县', '131026', 3, 'wenanxian', 'W', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (221, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '大厂回族自治县', '131028', 3, 'dachanghuizuzizhixian', 'D', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (222, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '廊坊经济技术开发区', '131071', 3, 'langfangjingjijishukaifaqu', 'L', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (223, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '霸州市', '131081', 3, 'bazhoushi', 'B', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (224, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '三河市', '131082', 3, 'sanheshi', 'S', 1, NULL, '1310');
INSERT INTO `dvadmin_system_area` VALUES (225, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '衡水市', '1311', 2, 'hengshuishi', 'H', 1, NULL, '13');
INSERT INTO `dvadmin_system_area` VALUES (226, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '桃城区', '131102', 3, 'taochengqu', 'T', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (227, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '冀州区', '131103', 3, 'jizhouqu', 'J', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (228, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '枣强县', '131121', 3, 'zaoqiangxian', 'Z', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (229, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '武邑县', '131122', 3, 'wuyixian', 'W', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (230, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '武强县', '131123', 3, 'wuqiangxian', 'W', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (231, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '饶阳县', '131124', 3, 'raoyangxian', 'R', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (232, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '安平县', '131125', 3, 'anpingxian', 'A', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (233, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '故城县', '131126', 3, 'guchengxian', 'G', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (234, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '景县', '131127', 3, 'jingxian', 'J', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (235, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '阜城县', '131128', 3, 'fuchengxian', 'F', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (236, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '河北衡水高新技术产业开发区', '131171', 3, 'hebeihengshuigaoxinjishuchanyekaifaqu', 'H', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (237, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '衡水滨湖新区', '131172', 3, 'hengshuibinhuxinqu', 'H', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (238, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '深州市', '131182', 3, 'shenzhoushi', 'S', 1, NULL, '1311');
INSERT INTO `dvadmin_system_area` VALUES (239, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '山西省', '14', 1, 'shanxisheng', 'S', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (240, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '太原市', '1401', 2, 'taiyuanshi', 'T', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (241, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '小店区', '140105', 3, 'xiaodianqu', 'X', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (242, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '迎泽区', '140106', 3, 'yingzequ', 'Y', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (243, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '杏花岭区', '140107', 3, 'xinghualingqu', 'X', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (244, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '尖草坪区', '140108', 3, 'jiancaopingqu', 'J', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (245, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '万柏林区', '140109', 3, 'wanbolinqu', 'W', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (246, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '晋源区', '140110', 3, 'jinyuanqu', 'J', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (247, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '清徐县', '140121', 3, 'qingxuxian', 'Q', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (248, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '阳曲县', '140122', 3, 'yangquxian', 'Y', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (249, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '娄烦县', '140123', 3, 'loufanxian', 'L', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (250, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '山西转型综合改革示范区', '140171', 3, 'shanxizhuanxingzonghegaigeshifanqu', 'S', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (251, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '古交市', '140181', 3, 'gujiaoshi', 'G', 1, NULL, '1401');
INSERT INTO `dvadmin_system_area` VALUES (252, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '大同市', '1402', 2, 'datongshi', 'D', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (253, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '新荣区', '140212', 3, 'xinrongqu', 'X', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (254, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '平城区', '140213', 3, 'pingchengqu', 'P', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (255, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '云冈区', '140214', 3, 'yungangqu', 'Y', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (256, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '云州区', '140215', 3, 'yunzhouqu', 'Y', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (257, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '阳高县', '140221', 3, 'yanggaoxian', 'Y', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (258, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '天镇县', '140222', 3, 'tianzhenxian', 'T', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (259, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '广灵县', '140223', 3, 'guanglingxian', 'G', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (260, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '灵丘县', '140224', 3, 'lingqiuxian', 'L', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (261, NULL, NULL, NULL, '2023-11-04 16:46:11.206088', '2023-11-04 16:46:11.206088', '浑源县', '140225', 3, 'hunyuanxian', 'H', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (262, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '左云县', '140226', 3, 'zuoyunxian', 'Z', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (263, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '山西大同经济开发区', '140271', 3, 'shanxidatongjingjikaifaqu', 'S', 1, NULL, '1402');
INSERT INTO `dvadmin_system_area` VALUES (264, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '阳泉市', '1403', 2, 'yangquanshi', 'Y', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (265, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '城区', '140302', 3, 'chengqu', 'C', 1, NULL, '1403');
INSERT INTO `dvadmin_system_area` VALUES (266, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '矿区', '140303', 3, 'kuangqu', 'K', 1, NULL, '1403');
INSERT INTO `dvadmin_system_area` VALUES (267, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '郊区', '140311', 3, 'jiaoqu', 'J', 1, NULL, '1403');
INSERT INTO `dvadmin_system_area` VALUES (268, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '平定县', '140321', 3, 'pingdingxian', 'P', 1, NULL, '1403');
INSERT INTO `dvadmin_system_area` VALUES (269, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '盂县', '140322', 3, 'yuxian', 'Y', 1, NULL, '1403');
INSERT INTO `dvadmin_system_area` VALUES (270, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '长治市', '1404', 2, 'zhangzhishi', 'Z', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (271, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '潞州区', '140403', 3, 'luzhouqu', 'L', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (272, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '上党区', '140404', 3, 'shangdangqu', 'S', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (273, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '屯留区', '140405', 3, 'tunliuqu', 'T', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (274, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '潞城区', '140406', 3, 'luchengqu', 'L', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (275, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '襄垣县', '140423', 3, 'xiangyuanxian', 'X', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (276, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '平顺县', '140425', 3, 'pingshunxian', 'P', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (277, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '黎城县', '140426', 3, 'lichengxian', 'L', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (278, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '壶关县', '140427', 3, 'huguanxian', 'H', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (279, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '长子县', '140428', 3, 'zhangzixian', 'Z', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (280, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '武乡县', '140429', 3, 'wuxiangxian', 'W', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (281, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '沁县', '140430', 3, 'qinxian', 'Q', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (282, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '沁源县', '140431', 3, 'qinyuanxian', 'Q', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (283, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '山西长治高新技术产业园区', '140471', 3, 'shanxizhangzhigaoxinjishuchanyeyuanqu', 'S', 1, NULL, '1404');
INSERT INTO `dvadmin_system_area` VALUES (284, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '晋城市', '1405', 2, 'jinchengshi', 'J', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (285, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '城区', '140502', 3, 'chengqu', 'C', 1, NULL, '1405');
INSERT INTO `dvadmin_system_area` VALUES (286, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '沁水县', '140521', 3, 'qinshuixian', 'Q', 1, NULL, '1405');
INSERT INTO `dvadmin_system_area` VALUES (287, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '阳城县', '140522', 3, 'yangchengxian', 'Y', 1, NULL, '1405');
INSERT INTO `dvadmin_system_area` VALUES (288, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '陵川县', '140524', 3, 'lingchuanxian', 'L', 1, NULL, '1405');
INSERT INTO `dvadmin_system_area` VALUES (289, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '泽州县', '140525', 3, 'zezhouxian', 'Z', 1, NULL, '1405');
INSERT INTO `dvadmin_system_area` VALUES (290, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '高平市', '140581', 3, 'gaopingshi', 'G', 1, NULL, '1405');
INSERT INTO `dvadmin_system_area` VALUES (291, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '朔州市', '1406', 2, 'shuozhoushi', 'S', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (292, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '朔城区', '140602', 3, 'shuochengqu', 'S', 1, NULL, '1406');
INSERT INTO `dvadmin_system_area` VALUES (293, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '平鲁区', '140603', 3, 'pingluqu', 'P', 1, NULL, '1406');
INSERT INTO `dvadmin_system_area` VALUES (294, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '山阴县', '140621', 3, 'shanyinxian', 'S', 1, NULL, '1406');
INSERT INTO `dvadmin_system_area` VALUES (295, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '应县', '140622', 3, 'yingxian', 'Y', 1, NULL, '1406');
INSERT INTO `dvadmin_system_area` VALUES (296, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '右玉县', '140623', 3, 'youyuxian', 'Y', 1, NULL, '1406');
INSERT INTO `dvadmin_system_area` VALUES (297, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '山西朔州经济开发区', '140671', 3, 'shanxishuozhoujingjikaifaqu', 'S', 1, NULL, '1406');
INSERT INTO `dvadmin_system_area` VALUES (298, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '怀仁市', '140681', 3, 'huairenshi', 'H', 1, NULL, '1406');
INSERT INTO `dvadmin_system_area` VALUES (299, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '晋中市', '1407', 2, 'jinzhongshi', 'J', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (300, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '榆次区', '140702', 3, 'yuciqu', 'Y', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (301, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '太谷区', '140703', 3, 'taiguqu', 'T', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (302, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '榆社县', '140721', 3, 'yushexian', 'Y', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (303, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '左权县', '140722', 3, 'zuoquanxian', 'Z', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (304, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '和顺县', '140723', 3, 'heshunxian', 'H', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (305, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '昔阳县', '140724', 3, 'xiyangxian', 'X', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (306, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '寿阳县', '140725', 3, 'shouyangxian', 'S', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (307, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '祁县', '140727', 3, 'qixian', 'Q', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (308, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '平遥县', '140728', 3, 'pingyaoxian', 'P', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (309, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '灵石县', '140729', 3, 'lingshixian', 'L', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (310, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '介休市', '140781', 3, 'jiexiushi', 'J', 1, NULL, '1407');
INSERT INTO `dvadmin_system_area` VALUES (311, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '运城市', '1408', 2, 'yunchengshi', 'Y', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (312, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '盐湖区', '140802', 3, 'yanhuqu', 'Y', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (313, NULL, NULL, NULL, '2023-11-04 16:46:11.207593', '2023-11-04 16:46:11.207593', '临猗县', '140821', 3, 'linyixian', 'L', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (314, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '万荣县', '140822', 3, 'wanrongxian', 'W', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (315, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '闻喜县', '140823', 3, 'wenxixian', 'W', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (316, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '稷山县', '140824', 3, 'jishanxian', 'J', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (317, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '新绛县', '140825', 3, 'xinjiangxian', 'X', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (318, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '绛县', '140826', 3, 'jiangxian', 'J', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (319, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '垣曲县', '140827', 3, 'yuanquxian', 'Y', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (320, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '夏县', '140828', 3, 'xiaxian', 'X', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (321, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '平陆县', '140829', 3, 'pingluxian', 'P', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (322, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '芮城县', '140830', 3, 'ruichengxian', 'R', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (323, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '永济市', '140881', 3, 'yongjishi', 'Y', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (324, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '河津市', '140882', 3, 'hejinshi', 'H', 1, NULL, '1408');
INSERT INTO `dvadmin_system_area` VALUES (325, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '忻州市', '1409', 2, 'xinzhoushi', 'X', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (326, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '忻府区', '140902', 3, 'xinfuqu', 'X', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (327, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '定襄县', '140921', 3, 'dingxiangxian', 'D', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (328, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '五台县', '140922', 3, 'wutaixian', 'W', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (329, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '代县', '140923', 3, 'daixian', 'D', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (330, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '繁峙县', '140924', 3, 'fanzhixian', 'F', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (331, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '宁武县', '140925', 3, 'ningwuxian', 'N', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (332, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '静乐县', '140926', 3, 'jinglexian', 'J', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (333, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '神池县', '140927', 3, 'shenchixian', 'S', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (334, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '五寨县', '140928', 3, 'wuzhaixian', 'W', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (335, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '岢岚县', '140929', 3, 'kelanxian', 'K', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (336, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '河曲县', '140930', 3, 'hequxian', 'H', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (337, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '保德县', '140931', 3, 'baodexian', 'B', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (338, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '偏关县', '140932', 3, 'pianguanxian', 'P', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (339, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '五台山风景名胜区', '140971', 3, 'wutaishanfengjingmingshengqu', 'W', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (340, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '原平市', '140981', 3, 'yuanpingshi', 'Y', 1, NULL, '1409');
INSERT INTO `dvadmin_system_area` VALUES (341, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '临汾市', '1410', 2, 'linfenshi', 'L', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (342, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '尧都区', '141002', 3, 'yaodouqu', 'Y', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (343, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '曲沃县', '141021', 3, 'quwoxian', 'Q', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (344, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '翼城县', '141022', 3, 'yichengxian', 'Y', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (345, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '襄汾县', '141023', 3, 'xiangfenxian', 'X', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (346, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '洪洞县', '141024', 3, 'hongdongxian', 'H', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (347, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '古县', '141025', 3, 'guxian', 'G', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (348, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '安泽县', '141026', 3, 'anzexian', 'A', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (349, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '浮山县', '141027', 3, 'fushanxian', 'F', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (350, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '吉县', '141028', 3, 'jixian', 'J', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (351, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '乡宁县', '141029', 3, 'xiangningxian', 'X', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (352, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '大宁县', '141030', 3, 'daningxian', 'D', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (353, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '隰县', '141031', 3, 'xixian', 'X', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (354, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '永和县', '141032', 3, 'yonghexian', 'Y', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (355, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '蒲县', '141033', 3, 'puxian', 'P', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (356, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '汾西县', '141034', 3, 'fenxixian', 'F', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (357, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '侯马市', '141081', 3, 'houmashi', 'H', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (358, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '霍州市', '141082', 3, 'huozhoushi', 'H', 1, NULL, '1410');
INSERT INTO `dvadmin_system_area` VALUES (359, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '吕梁市', '1411', 2, 'lvliangshi', 'L', 1, NULL, '14');
INSERT INTO `dvadmin_system_area` VALUES (360, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '离石区', '141102', 3, 'lishiqu', 'L', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (361, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '文水县', '141121', 3, 'wenshuixian', 'W', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (362, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '交城县', '141122', 3, 'jiaochengxian', 'J', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (363, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '兴县', '141123', 3, 'xingxian', 'X', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (364, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '临县', '141124', 3, 'linxian', 'L', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (365, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '柳林县', '141125', 3, 'liulinxian', 'L', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (366, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '石楼县', '141126', 3, 'shilouxian', 'S', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (367, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '岚县', '141127', 3, 'lanxian', 'L', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (368, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '方山县', '141128', 3, 'fangshanxian', 'F', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (369, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '中阳县', '141129', 3, 'zhongyangxian', 'Z', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (370, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '交口县', '141130', 3, 'jiaokouxian', 'J', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (371, NULL, NULL, NULL, '2023-11-04 16:46:11.208620', '2023-11-04 16:46:11.208620', '孝义市', '141181', 3, 'xiaoyishi', 'X', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (372, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '汾阳市', '141182', 3, 'fenyangshi', 'F', 1, NULL, '1411');
INSERT INTO `dvadmin_system_area` VALUES (373, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '内蒙古自治区', '15', 1, 'neimengguzizhiqu', 'N', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (374, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '呼和浩特市', '1501', 2, 'huhehaoteshi', 'H', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (375, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '新城区', '150102', 3, 'xinchengqu', 'X', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (376, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '回民区', '150103', 3, 'huiminqu', 'H', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (377, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '玉泉区', '150104', 3, 'yuquanqu', 'Y', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (378, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '赛罕区', '150105', 3, 'saihanqu', 'S', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (379, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '土默特左旗', '150121', 3, 'tumotezuoqi', 'T', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (380, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '托克托县', '150122', 3, 'tuoketuoxian', 'T', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (381, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '和林格尔县', '150123', 3, 'helingeerxian', 'H', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (382, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '清水河县', '150124', 3, 'qingshuihexian', 'Q', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (383, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '武川县', '150125', 3, 'wuchuanxian', 'W', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (384, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '呼和浩特经济技术开发区', '150172', 3, 'huhehaotejingjijishukaifaqu', 'H', 1, NULL, '1501');
INSERT INTO `dvadmin_system_area` VALUES (385, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '包头市', '1502', 2, 'baotoushi', 'B', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (386, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '东河区', '150202', 3, 'donghequ', 'D', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (387, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '昆都仑区', '150203', 3, 'kundoulunqu', 'K', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (388, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '青山区', '150204', 3, 'qingshanqu', 'Q', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (389, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '石拐区', '150205', 3, 'shiguaiqu', 'S', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (390, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '白云鄂博矿区', '150206', 3, 'baiyunebokuangqu', 'B', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (391, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '九原区', '150207', 3, 'jiuyuanqu', 'J', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (392, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '土默特右旗', '150221', 3, 'tumoteyouqi', 'T', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (393, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '固阳县', '150222', 3, 'guyangxian', 'G', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (394, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '达尔罕茂明安联合旗', '150223', 3, 'daerhanmaominganlianheqi', 'D', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (395, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '包头稀土高新技术产业开发区', '150271', 3, 'baotouxitugaoxinjishuchanyekaifaqu', 'B', 1, NULL, '1502');
INSERT INTO `dvadmin_system_area` VALUES (396, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '乌海市', '1503', 2, 'wuhaishi', 'W', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (397, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '海勃湾区', '150302', 3, 'haibowanqu', 'H', 1, NULL, '1503');
INSERT INTO `dvadmin_system_area` VALUES (398, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '海南区', '150303', 3, 'hainanqu', 'H', 1, NULL, '1503');
INSERT INTO `dvadmin_system_area` VALUES (399, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '乌达区', '150304', 3, 'wudaqu', 'W', 1, NULL, '1503');
INSERT INTO `dvadmin_system_area` VALUES (400, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '赤峰市', '1504', 2, 'chifengshi', 'C', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (401, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '红山区', '150402', 3, 'hongshanqu', 'H', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (402, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '元宝山区', '150403', 3, 'yuanbaoshanqu', 'Y', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (403, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '松山区', '150404', 3, 'songshanqu', 'S', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (404, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '阿鲁科尔沁旗', '150421', 3, 'alukeerqinqi', 'A', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (405, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '巴林左旗', '150422', 3, 'balinzuoqi', 'B', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (406, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '巴林右旗', '150423', 3, 'balinyouqi', 'B', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (407, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '林西县', '150424', 3, 'linxixian', 'L', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (408, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '克什克腾旗', '150425', 3, 'keshenketengqi', 'K', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (409, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '翁牛特旗', '150426', 3, 'wengniuteqi', 'W', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (410, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '喀喇沁旗', '150428', 3, 'kalaqinqi', 'K', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (411, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '宁城县', '150429', 3, 'ningchengxian', 'N', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (412, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '敖汉旗', '150430', 3, 'aohanqi', 'A', 1, NULL, '1504');
INSERT INTO `dvadmin_system_area` VALUES (413, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '通辽市', '1505', 2, 'tongliaoshi', 'T', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (414, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '科尔沁区', '150502', 3, 'keerqinqu', 'K', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (415, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '科尔沁左翼中旗', '150521', 3, 'keerqinzuoyizhongqi', 'K', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (416, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '科尔沁左翼后旗', '150522', 3, 'keerqinzuoyihouqi', 'K', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (417, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '开鲁县', '150523', 3, 'kailuxian', 'K', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (418, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '库伦旗', '150524', 3, 'kulunqi', 'K', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (419, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '奈曼旗', '150525', 3, 'naimanqi', 'N', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (420, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '扎鲁特旗', '150526', 3, 'zhaluteqi', 'Z', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (421, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '通辽经济技术开发区', '150571', 3, 'tongliaojingjijishukaifaqu', 'T', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (422, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '霍林郭勒市', '150581', 3, 'huolinguoleishi', 'H', 1, NULL, '1505');
INSERT INTO `dvadmin_system_area` VALUES (423, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '鄂尔多斯市', '1506', 2, 'eerduosishi', 'E', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (424, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '东胜区', '150602', 3, 'dongshengqu', 'D', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (425, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '康巴什区', '150603', 3, 'kangbashenqu', 'K', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (426, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '达拉特旗', '150621', 3, 'dalateqi', 'D', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (427, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '准格尔旗', '150622', 3, 'zhungeerqi', 'Z', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (428, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '鄂托克前旗', '150623', 3, 'etuokeqianqi', 'E', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (429, NULL, NULL, NULL, '2023-11-04 16:46:11.209627', '2023-11-04 16:46:11.209627', '鄂托克旗', '150624', 3, 'etuokeqi', 'E', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (430, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '杭锦旗', '150625', 3, 'hangjinqi', 'H', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (431, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '乌审旗', '150626', 3, 'wushenqi', 'W', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (432, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '伊金霍洛旗', '150627', 3, 'yijinhuoluoqi', 'Y', 1, NULL, '1506');
INSERT INTO `dvadmin_system_area` VALUES (433, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '呼伦贝尔市', '1507', 2, 'hulunbeiershi', 'H', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (434, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '海拉尔区', '150702', 3, 'hailaerqu', 'H', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (435, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '扎赉诺尔区', '150703', 3, 'zhalainuoerqu', 'Z', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (436, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '阿荣旗', '150721', 3, 'arongqi', 'A', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (437, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '莫力达瓦达斡尔族自治旗', '150722', 3, 'molidawadawoerzuzizhiqi', 'M', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (438, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '鄂伦春自治旗', '150723', 3, 'elunchunzizhiqi', 'E', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (439, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '鄂温克族自治旗', '150724', 3, 'ewenkezuzizhiqi', 'E', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (440, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '陈巴尔虎旗', '150725', 3, 'chenbaerhuqi', 'C', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (441, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '新巴尔虎左旗', '150726', 3, 'xinbaerhuzuoqi', 'X', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (442, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '新巴尔虎右旗', '150727', 3, 'xinbaerhuyouqi', 'X', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (443, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '满洲里市', '150781', 3, 'manzhoulishi', 'M', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (444, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '牙克石市', '150782', 3, 'yakeshishi', 'Y', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (445, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '扎兰屯市', '150783', 3, 'zhalantunshi', 'Z', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (446, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '额尔古纳市', '150784', 3, 'eergunashi', 'E', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (447, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '根河市', '150785', 3, 'genheshi', 'G', 1, NULL, '1507');
INSERT INTO `dvadmin_system_area` VALUES (448, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '巴彦淖尔市', '1508', 2, 'bayannaoershi', 'B', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (449, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '临河区', '150802', 3, 'linhequ', 'L', 1, NULL, '1508');
INSERT INTO `dvadmin_system_area` VALUES (450, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '五原县', '150821', 3, 'wuyuanxian', 'W', 1, NULL, '1508');
INSERT INTO `dvadmin_system_area` VALUES (451, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '磴口县', '150822', 3, 'dengkouxian', 'D', 1, NULL, '1508');
INSERT INTO `dvadmin_system_area` VALUES (452, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '乌拉特前旗', '150823', 3, 'wulateqianqi', 'W', 1, NULL, '1508');
INSERT INTO `dvadmin_system_area` VALUES (453, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '乌拉特中旗', '150824', 3, 'wulatezhongqi', 'W', 1, NULL, '1508');
INSERT INTO `dvadmin_system_area` VALUES (454, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '乌拉特后旗', '150825', 3, 'wulatehouqi', 'W', 1, NULL, '1508');
INSERT INTO `dvadmin_system_area` VALUES (455, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '杭锦后旗', '150826', 3, 'hangjinhouqi', 'H', 1, NULL, '1508');
INSERT INTO `dvadmin_system_area` VALUES (456, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '乌兰察布市', '1509', 2, 'wulanchabushi', 'W', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (457, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '集宁区', '150902', 3, 'jiningqu', 'J', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (458, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '卓资县', '150921', 3, 'zhuozixian', 'Z', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (459, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '化德县', '150922', 3, 'huadexian', 'H', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (460, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '商都县', '150923', 3, 'shangdouxian', 'S', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (461, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '兴和县', '150924', 3, 'xinghexian', 'X', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (462, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '凉城县', '150925', 3, 'liangchengxian', 'L', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (463, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '察哈尔右翼前旗', '150926', 3, 'chahaeryouyiqianqi', 'C', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (464, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '察哈尔右翼中旗', '150927', 3, 'chahaeryouyizhongqi', 'C', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (465, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '察哈尔右翼后旗', '150928', 3, 'chahaeryouyihouqi', 'C', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (466, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '四子王旗', '150929', 3, 'siziwangqi', 'S', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (467, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '丰镇市', '150981', 3, 'fengzhenshi', 'F', 1, NULL, '1509');
INSERT INTO `dvadmin_system_area` VALUES (468, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '兴安盟', '1522', 2, 'xinganmeng', 'X', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (469, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '乌兰浩特市', '152201', 3, 'wulanhaoteshi', 'W', 1, NULL, '1522');
INSERT INTO `dvadmin_system_area` VALUES (470, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '阿尔山市', '152202', 3, 'aershanshi', 'A', 1, NULL, '1522');
INSERT INTO `dvadmin_system_area` VALUES (471, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '科尔沁右翼前旗', '152221', 3, 'keerqinyouyiqianqi', 'K', 1, NULL, '1522');
INSERT INTO `dvadmin_system_area` VALUES (472, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '科尔沁右翼中旗', '152222', 3, 'keerqinyouyizhongqi', 'K', 1, NULL, '1522');
INSERT INTO `dvadmin_system_area` VALUES (473, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '扎赉特旗', '152223', 3, 'zhalaiteqi', 'Z', 1, NULL, '1522');
INSERT INTO `dvadmin_system_area` VALUES (474, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '突泉县', '152224', 3, 'tuquanxian', 'T', 1, NULL, '1522');
INSERT INTO `dvadmin_system_area` VALUES (475, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '锡林郭勒盟', '1525', 2, 'xilinguoleimeng', 'X', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (476, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '二连浩特市', '152501', 3, 'erlianhaoteshi', 'E', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (477, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '锡林浩特市', '152502', 3, 'xilinhaoteshi', 'X', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (478, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '阿巴嘎旗', '152522', 3, 'abagaqi', 'A', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (479, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '苏尼特左旗', '152523', 3, 'sunitezuoqi', 'S', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (480, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '苏尼特右旗', '152524', 3, 'suniteyouqi', 'S', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (481, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '东乌珠穆沁旗', '152525', 3, 'dongwuzhumuqinqi', 'D', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (482, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '西乌珠穆沁旗', '152526', 3, 'xiwuzhumuqinqi', 'X', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (483, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '太仆寺旗', '152527', 3, 'taipusiqi', 'T', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (484, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '镶黄旗', '152528', 3, 'xianghuangqi', 'X', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (485, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '正镶白旗', '152529', 3, 'zhengxiangbaiqi', 'Z', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (486, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.210633', '正蓝旗', '152530', 3, 'zhenglanqi', 'Z', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (487, NULL, NULL, NULL, '2023-11-04 16:46:11.210633', '2023-11-04 16:46:11.211629', '多伦县', '152531', 3, 'duolunxian', 'D', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (488, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '乌拉盖管委会', '152571', 3, 'wulagaiguanweihui', 'W', 1, NULL, '1525');
INSERT INTO `dvadmin_system_area` VALUES (489, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '阿拉善盟', '1529', 2, 'alashanmeng', 'A', 1, NULL, '15');
INSERT INTO `dvadmin_system_area` VALUES (490, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '阿拉善左旗', '152921', 3, 'alashanzuoqi', 'A', 1, NULL, '1529');
INSERT INTO `dvadmin_system_area` VALUES (491, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '阿拉善右旗', '152922', 3, 'alashanyouqi', 'A', 1, NULL, '1529');
INSERT INTO `dvadmin_system_area` VALUES (492, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '额济纳旗', '152923', 3, 'ejinaqi', 'E', 1, NULL, '1529');
INSERT INTO `dvadmin_system_area` VALUES (493, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '内蒙古阿拉善经济开发区', '152971', 3, 'neimenggualashanjingjikaifaqu', 'N', 1, NULL, '1529');
INSERT INTO `dvadmin_system_area` VALUES (494, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '辽宁省', '21', 1, 'liaoningsheng', 'L', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (495, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '沈阳市', '2101', 2, 'shenyangshi', 'S', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (496, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '和平区', '210102', 3, 'hepingqu', 'H', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (497, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '沈河区', '210103', 3, 'shenhequ', 'S', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (498, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '大东区', '210104', 3, 'dadongqu', 'D', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (499, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '皇姑区', '210105', 3, 'huangguqu', 'H', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (500, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '铁西区', '210106', 3, 'tiexiqu', 'T', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (501, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '苏家屯区', '210111', 3, 'sujiatunqu', 'S', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (502, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '浑南区', '210112', 3, 'hunnanqu', 'H', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (503, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '沈北新区', '210113', 3, 'shenbeixinqu', 'S', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (504, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '于洪区', '210114', 3, 'yuhongqu', 'Y', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (505, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '辽中区', '210115', 3, 'liaozhongqu', 'L', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (506, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '康平县', '210123', 3, 'kangpingxian', 'K', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (507, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '法库县', '210124', 3, 'fakuxian', 'F', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (508, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '新民市', '210181', 3, 'xinminshi', 'X', 1, NULL, '2101');
INSERT INTO `dvadmin_system_area` VALUES (509, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '大连市', '2102', 2, 'dalianshi', 'D', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (510, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '中山区', '210202', 3, 'zhongshanqu', 'Z', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (511, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '西岗区', '210203', 3, 'xigangqu', 'X', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (512, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '沙河口区', '210204', 3, 'shahekouqu', 'S', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (513, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '甘井子区', '210211', 3, 'ganjingziqu', 'G', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (514, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '旅顺口区', '210212', 3, 'lvshunkouqu', 'L', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (515, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '金州区', '210213', 3, 'jinzhouqu', 'J', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (516, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '普兰店区', '210214', 3, 'pulandianqu', 'P', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (517, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '长海县', '210224', 3, 'zhanghaixian', 'Z', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (518, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '瓦房店市', '210281', 3, 'wafangdianshi', 'W', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (519, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '庄河市', '210283', 3, 'zhuangheshi', 'Z', 1, NULL, '2102');
INSERT INTO `dvadmin_system_area` VALUES (520, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '鞍山市', '2103', 2, 'anshanshi', 'A', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (521, NULL, NULL, NULL, '2023-11-04 16:46:11.211629', '2023-11-04 16:46:11.211629', '铁东区', '210302', 3, 'tiedongqu', 'T', 1, NULL, '2103');
INSERT INTO `dvadmin_system_area` VALUES (522, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '铁西区', '210303', 3, 'tiexiqu', 'T', 1, NULL, '2103');
INSERT INTO `dvadmin_system_area` VALUES (523, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '立山区', '210304', 3, 'lishanqu', 'L', 1, NULL, '2103');
INSERT INTO `dvadmin_system_area` VALUES (524, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '千山区', '210311', 3, 'qianshanqu', 'Q', 1, NULL, '2103');
INSERT INTO `dvadmin_system_area` VALUES (525, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '台安县', '210321', 3, 'taianxian', 'T', 1, NULL, '2103');
INSERT INTO `dvadmin_system_area` VALUES (526, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '岫岩满族自治县', '210323', 3, 'xiuyanmanzuzizhixian', 'X', 1, NULL, '2103');
INSERT INTO `dvadmin_system_area` VALUES (527, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '海城市', '210381', 3, 'haichengshi', 'H', 1, NULL, '2103');
INSERT INTO `dvadmin_system_area` VALUES (528, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '抚顺市', '2104', 2, 'fushunshi', 'F', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (529, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '新抚区', '210402', 3, 'xinfuqu', 'X', 1, NULL, '2104');
INSERT INTO `dvadmin_system_area` VALUES (530, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '东洲区', '210403', 3, 'dongzhouqu', 'D', 1, NULL, '2104');
INSERT INTO `dvadmin_system_area` VALUES (531, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '望花区', '210404', 3, 'wanghuaqu', 'W', 1, NULL, '2104');
INSERT INTO `dvadmin_system_area` VALUES (532, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '顺城区', '210411', 3, 'shunchengqu', 'S', 1, NULL, '2104');
INSERT INTO `dvadmin_system_area` VALUES (533, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '抚顺县', '210421', 3, 'fushunxian', 'F', 1, NULL, '2104');
INSERT INTO `dvadmin_system_area` VALUES (534, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '新宾满族自治县', '210422', 3, 'xinbinmanzuzizhixian', 'X', 1, NULL, '2104');
INSERT INTO `dvadmin_system_area` VALUES (535, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '清原满族自治县', '210423', 3, 'qingyuanmanzuzizhixian', 'Q', 1, NULL, '2104');
INSERT INTO `dvadmin_system_area` VALUES (536, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '本溪市', '2105', 2, 'benxishi', 'B', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (537, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '平山区', '210502', 3, 'pingshanqu', 'P', 1, NULL, '2105');
INSERT INTO `dvadmin_system_area` VALUES (538, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '溪湖区', '210503', 3, 'xihuqu', 'X', 1, NULL, '2105');
INSERT INTO `dvadmin_system_area` VALUES (539, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '明山区', '210504', 3, 'mingshanqu', 'M', 1, NULL, '2105');
INSERT INTO `dvadmin_system_area` VALUES (540, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '南芬区', '210505', 3, 'nanfenqu', 'N', 1, NULL, '2105');
INSERT INTO `dvadmin_system_area` VALUES (541, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '本溪满族自治县', '210521', 3, 'benximanzuzizhixian', 'B', 1, NULL, '2105');
INSERT INTO `dvadmin_system_area` VALUES (542, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '桓仁满族自治县', '210522', 3, 'huanrenmanzuzizhixian', 'H', 1, NULL, '2105');
INSERT INTO `dvadmin_system_area` VALUES (543, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '丹东市', '2106', 2, 'dandongshi', 'D', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (544, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '元宝区', '210602', 3, 'yuanbaoqu', 'Y', 1, NULL, '2106');
INSERT INTO `dvadmin_system_area` VALUES (545, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '振兴区', '210603', 3, 'zhenxingqu', 'Z', 1, NULL, '2106');
INSERT INTO `dvadmin_system_area` VALUES (546, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '振安区', '210604', 3, 'zhenanqu', 'Z', 1, NULL, '2106');
INSERT INTO `dvadmin_system_area` VALUES (547, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '宽甸满族自治县', '210624', 3, 'kuandianmanzuzizhixian', 'K', 1, NULL, '2106');
INSERT INTO `dvadmin_system_area` VALUES (548, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '东港市', '210681', 3, 'donggangshi', 'D', 1, NULL, '2106');
INSERT INTO `dvadmin_system_area` VALUES (549, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '凤城市', '210682', 3, 'fengchengshi', 'F', 1, NULL, '2106');
INSERT INTO `dvadmin_system_area` VALUES (550, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '锦州市', '2107', 2, 'jinzhoushi', 'J', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (551, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '古塔区', '210702', 3, 'gutaqu', 'G', 1, NULL, '2107');
INSERT INTO `dvadmin_system_area` VALUES (552, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '凌河区', '210703', 3, 'linghequ', 'L', 1, NULL, '2107');
INSERT INTO `dvadmin_system_area` VALUES (553, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '太和区', '210711', 3, 'taihequ', 'T', 1, NULL, '2107');
INSERT INTO `dvadmin_system_area` VALUES (554, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '黑山县', '210726', 3, 'heishanxian', 'H', 1, NULL, '2107');
INSERT INTO `dvadmin_system_area` VALUES (555, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '义县', '210727', 3, 'yixian', 'Y', 1, NULL, '2107');
INSERT INTO `dvadmin_system_area` VALUES (556, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '凌海市', '210781', 3, 'linghaishi', 'L', 1, NULL, '2107');
INSERT INTO `dvadmin_system_area` VALUES (557, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '北镇市', '210782', 3, 'beizhenshi', 'B', 1, NULL, '2107');
INSERT INTO `dvadmin_system_area` VALUES (558, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '营口市', '2108', 2, 'yingkoushi', 'Y', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (559, NULL, NULL, NULL, '2023-11-04 16:46:11.212629', '2023-11-04 16:46:11.212629', '站前区', '210802', 3, 'zhanqianqu', 'Z', 1, NULL, '2108');
INSERT INTO `dvadmin_system_area` VALUES (560, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '西市区', '210803', 3, 'xishiqu', 'X', 1, NULL, '2108');
INSERT INTO `dvadmin_system_area` VALUES (561, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '鲅鱼圈区', '210804', 3, 'bayuquanqu', 'B', 1, NULL, '2108');
INSERT INTO `dvadmin_system_area` VALUES (562, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '老边区', '210811', 3, 'laobianqu', 'L', 1, NULL, '2108');
INSERT INTO `dvadmin_system_area` VALUES (563, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '盖州市', '210881', 3, 'gaizhoushi', 'G', 1, NULL, '2108');
INSERT INTO `dvadmin_system_area` VALUES (564, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '大石桥市', '210882', 3, 'dashiqiaoshi', 'D', 1, NULL, '2108');
INSERT INTO `dvadmin_system_area` VALUES (565, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '阜新市', '2109', 2, 'fuxinshi', 'F', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (566, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '海州区', '210902', 3, 'haizhouqu', 'H', 1, NULL, '2109');
INSERT INTO `dvadmin_system_area` VALUES (567, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '新邱区', '210903', 3, 'xinqiuqu', 'X', 1, NULL, '2109');
INSERT INTO `dvadmin_system_area` VALUES (568, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '太平区', '210904', 3, 'taipingqu', 'T', 1, NULL, '2109');
INSERT INTO `dvadmin_system_area` VALUES (569, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '清河门区', '210905', 3, 'qinghemenqu', 'Q', 1, NULL, '2109');
INSERT INTO `dvadmin_system_area` VALUES (570, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '细河区', '210911', 3, 'xihequ', 'X', 1, NULL, '2109');
INSERT INTO `dvadmin_system_area` VALUES (571, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '阜新蒙古族自治县', '210921', 3, 'fuxinmengguzuzizhixian', 'F', 1, NULL, '2109');
INSERT INTO `dvadmin_system_area` VALUES (572, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '彰武县', '210922', 3, 'zhangwuxian', 'Z', 1, NULL, '2109');
INSERT INTO `dvadmin_system_area` VALUES (573, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '辽阳市', '2110', 2, 'liaoyangshi', 'L', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (574, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '白塔区', '211002', 3, 'baitaqu', 'B', 1, NULL, '2110');
INSERT INTO `dvadmin_system_area` VALUES (575, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '文圣区', '211003', 3, 'wenshengqu', 'W', 1, NULL, '2110');
INSERT INTO `dvadmin_system_area` VALUES (576, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '宏伟区', '211004', 3, 'hongweiqu', 'H', 1, NULL, '2110');
INSERT INTO `dvadmin_system_area` VALUES (577, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '弓长岭区', '211005', 3, 'gongzhanglingqu', 'G', 1, NULL, '2110');
INSERT INTO `dvadmin_system_area` VALUES (578, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '太子河区', '211011', 3, 'taizihequ', 'T', 1, NULL, '2110');
INSERT INTO `dvadmin_system_area` VALUES (579, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '辽阳县', '211021', 3, 'liaoyangxian', 'L', 1, NULL, '2110');
INSERT INTO `dvadmin_system_area` VALUES (580, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '灯塔市', '211081', 3, 'dengtashi', 'D', 1, NULL, '2110');
INSERT INTO `dvadmin_system_area` VALUES (581, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '盘锦市', '2111', 2, 'panjinshi', 'P', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (582, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '双台子区', '211102', 3, 'shuangtaiziqu', 'S', 1, NULL, '2111');
INSERT INTO `dvadmin_system_area` VALUES (583, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '兴隆台区', '211103', 3, 'xinglongtaiqu', 'X', 1, NULL, '2111');
INSERT INTO `dvadmin_system_area` VALUES (584, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '大洼区', '211104', 3, 'dawaqu', 'D', 1, NULL, '2111');
INSERT INTO `dvadmin_system_area` VALUES (585, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '盘山县', '211122', 3, 'panshanxian', 'P', 1, NULL, '2111');
INSERT INTO `dvadmin_system_area` VALUES (586, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '铁岭市', '2112', 2, 'tielingshi', 'T', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (587, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '银州区', '211202', 3, 'yinzhouqu', 'Y', 1, NULL, '2112');
INSERT INTO `dvadmin_system_area` VALUES (588, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '清河区', '211204', 3, 'qinghequ', 'Q', 1, NULL, '2112');
INSERT INTO `dvadmin_system_area` VALUES (589, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '铁岭县', '211221', 3, 'tielingxian', 'T', 1, NULL, '2112');
INSERT INTO `dvadmin_system_area` VALUES (590, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '西丰县', '211223', 3, 'xifengxian', 'X', 1, NULL, '2112');
INSERT INTO `dvadmin_system_area` VALUES (591, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '昌图县', '211224', 3, 'changtuxian', 'C', 1, NULL, '2112');
INSERT INTO `dvadmin_system_area` VALUES (592, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '调兵山市', '211281', 3, 'diaobingshanshi', 'D', 1, NULL, '2112');
INSERT INTO `dvadmin_system_area` VALUES (593, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '开原市', '211282', 3, 'kaiyuanshi', 'K', 1, NULL, '2112');
INSERT INTO `dvadmin_system_area` VALUES (594, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '朝阳市', '2113', 2, 'zhaoyangshi', 'Z', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (595, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '双塔区', '211302', 3, 'shuangtaqu', 'S', 1, NULL, '2113');
INSERT INTO `dvadmin_system_area` VALUES (596, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '龙城区', '211303', 3, 'longchengqu', 'L', 1, NULL, '2113');
INSERT INTO `dvadmin_system_area` VALUES (597, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '朝阳县', '211321', 3, 'zhaoyangxian', 'Z', 1, NULL, '2113');
INSERT INTO `dvadmin_system_area` VALUES (598, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '建平县', '211322', 3, 'jianpingxian', 'J', 1, NULL, '2113');
INSERT INTO `dvadmin_system_area` VALUES (599, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '喀喇沁左翼蒙古族自治县', '211324', 3, 'kalaqinzuoyimengguzuzizhixian', 'K', 1, NULL, '2113');
INSERT INTO `dvadmin_system_area` VALUES (600, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '北票市', '211381', 3, 'beipiaoshi', 'B', 1, NULL, '2113');
INSERT INTO `dvadmin_system_area` VALUES (601, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '凌源市', '211382', 3, 'lingyuanshi', 'L', 1, NULL, '2113');
INSERT INTO `dvadmin_system_area` VALUES (602, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '葫芦岛市', '2114', 2, 'huludaoshi', 'H', 1, NULL, '21');
INSERT INTO `dvadmin_system_area` VALUES (603, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '连山区', '211402', 3, 'lianshanqu', 'L', 1, NULL, '2114');
INSERT INTO `dvadmin_system_area` VALUES (604, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '龙港区', '211403', 3, 'longgangqu', 'L', 1, NULL, '2114');
INSERT INTO `dvadmin_system_area` VALUES (605, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '南票区', '211404', 3, 'nanpiaoqu', 'N', 1, NULL, '2114');
INSERT INTO `dvadmin_system_area` VALUES (606, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '绥中县', '211421', 3, 'suizhongxian', 'S', 1, NULL, '2114');
INSERT INTO `dvadmin_system_area` VALUES (607, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '建昌县', '211422', 3, 'jianchangxian', 'J', 1, NULL, '2114');
INSERT INTO `dvadmin_system_area` VALUES (608, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '兴城市', '211481', 3, 'xingchengshi', 'X', 1, NULL, '2114');
INSERT INTO `dvadmin_system_area` VALUES (609, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '吉林省', '22', 1, 'jilinsheng', 'J', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (610, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '长春市', '2201', 2, 'changchunshi', 'C', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (611, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '南关区', '220102', 3, 'nanguanqu', 'N', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (612, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '宽城区', '220103', 3, 'kuanchengqu', 'K', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (613, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '朝阳区', '220104', 3, 'chaoyangqu', 'C', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (614, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '二道区', '220105', 3, 'erdaoqu', 'E', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (615, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '绿园区', '220106', 3, 'lvyuanqu', 'L', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (616, NULL, NULL, NULL, '2023-11-04 16:46:11.213627', '2023-11-04 16:46:11.213627', '双阳区', '220112', 3, 'shuangyangqu', 'S', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (617, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '九台区', '220113', 3, 'jiutaiqu', 'J', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (618, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '农安县', '220122', 3, 'nonganxian', 'N', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (619, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '长春经济技术开发区', '220171', 3, 'changchunjingjijishukaifaqu', 'C', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (620, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '长春净月高新技术产业开发区', '220172', 3, 'changchunjingyuegaoxinjishuchanyekaifaqu', 'C', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (621, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '长春高新技术产业开发区', '220173', 3, 'changchungaoxinjishuchanyekaifaqu', 'C', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (622, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '长春汽车经济技术开发区', '220174', 3, 'changchunqichejingjijishukaifaqu', 'C', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (623, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '榆树市', '220182', 3, 'yushushi', 'Y', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (624, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '德惠市', '220183', 3, 'dehuishi', 'D', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (625, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '公主岭市', '220184', 3, 'gongzhulingshi', 'G', 1, NULL, '2201');
INSERT INTO `dvadmin_system_area` VALUES (626, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '吉林市', '2202', 2, 'jilinshi', 'J', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (627, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '昌邑区', '220202', 3, 'changyiqu', 'C', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (628, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '龙潭区', '220203', 3, 'longtanqu', 'L', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (629, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '船营区', '220204', 3, 'chuanyingqu', 'C', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (630, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '丰满区', '220211', 3, 'fengmanqu', 'F', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (631, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '永吉县', '220221', 3, 'yongjixian', 'Y', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (632, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '吉林经济开发区', '220271', 3, 'jilinjingjikaifaqu', 'J', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (633, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '吉林高新技术产业开发区', '220272', 3, 'jilingaoxinjishuchanyekaifaqu', 'J', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (634, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '吉林中国新加坡食品区', '220273', 3, 'jilinzhongguoxinjiaposhipinqu', 'J', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (635, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '蛟河市', '220281', 3, 'jiaoheshi', 'J', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (636, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '桦甸市', '220282', 3, 'huadianshi', 'H', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (637, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '舒兰市', '220283', 3, 'shulanshi', 'S', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (638, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '磐石市', '220284', 3, 'panshishi', 'P', 1, NULL, '2202');
INSERT INTO `dvadmin_system_area` VALUES (639, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '四平市', '2203', 2, 'sipingshi', 'S', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (640, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '铁西区', '220302', 3, 'tiexiqu', 'T', 1, NULL, '2203');
INSERT INTO `dvadmin_system_area` VALUES (641, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '铁东区', '220303', 3, 'tiedongqu', 'T', 1, NULL, '2203');
INSERT INTO `dvadmin_system_area` VALUES (642, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '梨树县', '220322', 3, 'lishuxian', 'L', 1, NULL, '2203');
INSERT INTO `dvadmin_system_area` VALUES (643, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '伊通满族自治县', '220323', 3, 'yitongmanzuzizhixian', 'Y', 1, NULL, '2203');
INSERT INTO `dvadmin_system_area` VALUES (644, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '双辽市', '220382', 3, 'shuangliaoshi', 'S', 1, NULL, '2203');
INSERT INTO `dvadmin_system_area` VALUES (645, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '辽源市', '2204', 2, 'liaoyuanshi', 'L', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (646, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '龙山区', '220402', 3, 'longshanqu', 'L', 1, NULL, '2204');
INSERT INTO `dvadmin_system_area` VALUES (647, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '西安区', '220403', 3, 'xianqu', 'X', 1, NULL, '2204');
INSERT INTO `dvadmin_system_area` VALUES (648, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '东丰县', '220421', 3, 'dongfengxian', 'D', 1, NULL, '2204');
INSERT INTO `dvadmin_system_area` VALUES (649, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '东辽县', '220422', 3, 'dongliaoxian', 'D', 1, NULL, '2204');
INSERT INTO `dvadmin_system_area` VALUES (650, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '通化市', '2205', 2, 'tonghuashi', 'T', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (651, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '东昌区', '220502', 3, 'dongchangqu', 'D', 1, NULL, '2205');
INSERT INTO `dvadmin_system_area` VALUES (652, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '二道江区', '220503', 3, 'erdaojiangqu', 'E', 1, NULL, '2205');
INSERT INTO `dvadmin_system_area` VALUES (653, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '通化县', '220521', 3, 'tonghuaxian', 'T', 1, NULL, '2205');
INSERT INTO `dvadmin_system_area` VALUES (654, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '辉南县', '220523', 3, 'huinanxian', 'H', 1, NULL, '2205');
INSERT INTO `dvadmin_system_area` VALUES (655, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '柳河县', '220524', 3, 'liuhexian', 'L', 1, NULL, '2205');
INSERT INTO `dvadmin_system_area` VALUES (656, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '梅河口市', '220581', 3, 'meihekoushi', 'M', 1, NULL, '2205');
INSERT INTO `dvadmin_system_area` VALUES (657, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '集安市', '220582', 3, 'jianshi', 'J', 1, NULL, '2205');
INSERT INTO `dvadmin_system_area` VALUES (658, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '白山市', '2206', 2, 'baishanshi', 'B', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (659, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '浑江区', '220602', 3, 'hunjiangqu', 'H', 1, NULL, '2206');
INSERT INTO `dvadmin_system_area` VALUES (660, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '江源区', '220605', 3, 'jiangyuanqu', 'J', 1, NULL, '2206');
INSERT INTO `dvadmin_system_area` VALUES (661, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '抚松县', '220621', 3, 'fusongxian', 'F', 1, NULL, '2206');
INSERT INTO `dvadmin_system_area` VALUES (662, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '靖宇县', '220622', 3, 'jingyuxian', 'J', 1, NULL, '2206');
INSERT INTO `dvadmin_system_area` VALUES (663, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '长白朝鲜族自治县', '220623', 3, 'zhangbaichaoxianzuzizhixian', 'Z', 1, NULL, '2206');
INSERT INTO `dvadmin_system_area` VALUES (664, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '临江市', '220681', 3, 'linjiangshi', 'L', 1, NULL, '2206');
INSERT INTO `dvadmin_system_area` VALUES (665, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '松原市', '2207', 2, 'songyuanshi', 'S', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (666, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '宁江区', '220702', 3, 'ningjiangqu', 'N', 1, NULL, '2207');
INSERT INTO `dvadmin_system_area` VALUES (667, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '前郭尔罗斯蒙古族自治县', '220721', 3, 'qianguoerluosimengguzuzizhixian', 'Q', 1, NULL, '2207');
INSERT INTO `dvadmin_system_area` VALUES (668, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '长岭县', '220722', 3, 'zhanglingxian', 'Z', 1, NULL, '2207');
INSERT INTO `dvadmin_system_area` VALUES (669, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '乾安县', '220723', 3, 'qiananxian', 'Q', 1, NULL, '2207');
INSERT INTO `dvadmin_system_area` VALUES (670, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '吉林松原经济开发区', '220771', 3, 'jilinsongyuanjingjikaifaqu', 'J', 1, NULL, '2207');
INSERT INTO `dvadmin_system_area` VALUES (671, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '扶余市', '220781', 3, 'fuyushi', 'F', 1, NULL, '2207');
INSERT INTO `dvadmin_system_area` VALUES (672, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '白城市', '2208', 2, 'baichengshi', 'B', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (673, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '洮北区', '220802', 3, 'taobeiqu', 'T', 1, NULL, '2208');
INSERT INTO `dvadmin_system_area` VALUES (674, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '镇赉县', '220821', 3, 'zhenlaixian', 'Z', 1, NULL, '2208');
INSERT INTO `dvadmin_system_area` VALUES (675, NULL, NULL, NULL, '2023-11-04 16:46:11.214628', '2023-11-04 16:46:11.214628', '通榆县', '220822', 3, 'tongyuxian', 'T', 1, NULL, '2208');
INSERT INTO `dvadmin_system_area` VALUES (676, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '吉林白城经济开发区', '220871', 3, 'jilinbaichengjingjikaifaqu', 'J', 1, NULL, '2208');
INSERT INTO `dvadmin_system_area` VALUES (677, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '洮南市', '220881', 3, 'taonanshi', 'T', 1, NULL, '2208');
INSERT INTO `dvadmin_system_area` VALUES (678, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '大安市', '220882', 3, 'daanshi', 'D', 1, NULL, '2208');
INSERT INTO `dvadmin_system_area` VALUES (679, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '延边朝鲜族自治州', '2224', 2, 'yanbianchaoxianzuzizhizhou', 'Y', 1, NULL, '22');
INSERT INTO `dvadmin_system_area` VALUES (680, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '延吉市', '222401', 3, 'yanjishi', 'Y', 1, NULL, '2224');
INSERT INTO `dvadmin_system_area` VALUES (681, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '图们市', '222402', 3, 'tumenshi', 'T', 1, NULL, '2224');
INSERT INTO `dvadmin_system_area` VALUES (682, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '敦化市', '222403', 3, 'dunhuashi', 'D', 1, NULL, '2224');
INSERT INTO `dvadmin_system_area` VALUES (683, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '珲春市', '222404', 3, 'huichunshi', 'H', 1, NULL, '2224');
INSERT INTO `dvadmin_system_area` VALUES (684, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '龙井市', '222405', 3, 'longjingshi', 'L', 1, NULL, '2224');
INSERT INTO `dvadmin_system_area` VALUES (685, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '和龙市', '222406', 3, 'helongshi', 'H', 1, NULL, '2224');
INSERT INTO `dvadmin_system_area` VALUES (686, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '汪清县', '222424', 3, 'wangqingxian', 'W', 1, NULL, '2224');
INSERT INTO `dvadmin_system_area` VALUES (687, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '安图县', '222426', 3, 'antuxian', 'A', 1, NULL, '2224');
INSERT INTO `dvadmin_system_area` VALUES (688, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '黑龙江省', '23', 1, 'heilongjiangsheng', 'H', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (689, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '哈尔滨市', '2301', 2, 'haerbinshi', 'H', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (690, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '道里区', '230102', 3, 'daoliqu', 'D', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (691, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '南岗区', '230103', 3, 'nangangqu', 'N', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (692, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '道外区', '230104', 3, 'daowaiqu', 'D', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (693, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '平房区', '230108', 3, 'pingfangqu', 'P', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (694, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '松北区', '230109', 3, 'songbeiqu', 'S', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (695, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '香坊区', '230110', 3, 'xiangfangqu', 'X', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (696, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '呼兰区', '230111', 3, 'hulanqu', 'H', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (697, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '阿城区', '230112', 3, 'achengqu', 'A', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (698, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '双城区', '230113', 3, 'shuangchengqu', 'S', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (699, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '依兰县', '230123', 3, 'yilanxian', 'Y', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (700, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '方正县', '230124', 3, 'fangzhengxian', 'F', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (701, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '宾县', '230125', 3, 'binxian', 'B', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (702, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '巴彦县', '230126', 3, 'bayanxian', 'B', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (703, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '木兰县', '230127', 3, 'mulanxian', 'M', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (704, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '通河县', '230128', 3, 'tonghexian', 'T', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (705, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '延寿县', '230129', 3, 'yanshouxian', 'Y', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (706, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '尚志市', '230183', 3, 'shangzhishi', 'S', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (707, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '五常市', '230184', 3, 'wuchangshi', 'W', 1, NULL, '2301');
INSERT INTO `dvadmin_system_area` VALUES (708, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '齐齐哈尔市', '2302', 2, 'qiqihaershi', 'Q', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (709, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '龙沙区', '230202', 3, 'longshaqu', 'L', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (710, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '建华区', '230203', 3, 'jianhuaqu', 'J', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (711, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '铁锋区', '230204', 3, 'tiefengqu', 'T', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (712, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '昂昂溪区', '230205', 3, 'angangxiqu', 'A', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (713, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '富拉尔基区', '230206', 3, 'fulaerjiqu', 'F', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (714, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '碾子山区', '230207', 3, 'nianzishanqu', 'N', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (715, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '梅里斯达斡尔族区', '230208', 3, 'meilisidawoerzuqu', 'M', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (716, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '龙江县', '230221', 3, 'longjiangxian', 'L', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (717, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '依安县', '230223', 3, 'yianxian', 'Y', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (718, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '泰来县', '230224', 3, 'tailaixian', 'T', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (719, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '甘南县', '230225', 3, 'gannanxian', 'G', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (720, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '富裕县', '230227', 3, 'fuyuxian', 'F', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (721, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '克山县', '230229', 3, 'keshanxian', 'K', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (722, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '克东县', '230230', 3, 'kedongxian', 'K', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (723, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '拜泉县', '230231', 3, 'baiquanxian', 'B', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (724, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '讷河市', '230281', 3, 'neheshi', 'N', 1, NULL, '2302');
INSERT INTO `dvadmin_system_area` VALUES (725, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '鸡西市', '2303', 2, 'jixishi', 'J', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (726, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '鸡冠区', '230302', 3, 'jiguanqu', 'J', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (727, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '恒山区', '230303', 3, 'hengshanqu', 'H', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (728, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '滴道区', '230304', 3, 'didaoqu', 'D', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (729, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '梨树区', '230305', 3, 'lishuqu', 'L', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (730, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '城子河区', '230306', 3, 'chengzihequ', 'C', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (731, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '麻山区', '230307', 3, 'mashanqu', 'M', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (732, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '鸡东县', '230321', 3, 'jidongxian', 'J', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (733, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '虎林市', '230381', 3, 'hulinshi', 'H', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (734, NULL, NULL, NULL, '2023-11-04 16:46:11.215627', '2023-11-04 16:46:11.215627', '密山市', '230382', 3, 'mishanshi', 'M', 1, NULL, '2303');
INSERT INTO `dvadmin_system_area` VALUES (735, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '鹤岗市', '2304', 2, 'hegangshi', 'H', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (736, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '向阳区', '230402', 3, 'xiangyangqu', 'X', 1, NULL, '2304');
INSERT INTO `dvadmin_system_area` VALUES (737, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '工农区', '230403', 3, 'gongnongqu', 'G', 1, NULL, '2304');
INSERT INTO `dvadmin_system_area` VALUES (738, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '南山区', '230404', 3, 'nanshanqu', 'N', 1, NULL, '2304');
INSERT INTO `dvadmin_system_area` VALUES (739, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '兴安区', '230405', 3, 'xinganqu', 'X', 1, NULL, '2304');
INSERT INTO `dvadmin_system_area` VALUES (740, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '东山区', '230406', 3, 'dongshanqu', 'D', 1, NULL, '2304');
INSERT INTO `dvadmin_system_area` VALUES (741, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '兴山区', '230407', 3, 'xingshanqu', 'X', 1, NULL, '2304');
INSERT INTO `dvadmin_system_area` VALUES (742, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '萝北县', '230421', 3, 'luobeixian', 'L', 1, NULL, '2304');
INSERT INTO `dvadmin_system_area` VALUES (743, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '绥滨县', '230422', 3, 'suibinxian', 'S', 1, NULL, '2304');
INSERT INTO `dvadmin_system_area` VALUES (744, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '双鸭山市', '2305', 2, 'shuangyashanshi', 'S', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (745, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '尖山区', '230502', 3, 'jianshanqu', 'J', 1, NULL, '2305');
INSERT INTO `dvadmin_system_area` VALUES (746, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '岭东区', '230503', 3, 'lingdongqu', 'L', 1, NULL, '2305');
INSERT INTO `dvadmin_system_area` VALUES (747, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '四方台区', '230505', 3, 'sifangtaiqu', 'S', 1, NULL, '2305');
INSERT INTO `dvadmin_system_area` VALUES (748, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '宝山区', '230506', 3, 'baoshanqu', 'B', 1, NULL, '2305');
INSERT INTO `dvadmin_system_area` VALUES (749, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '集贤县', '230521', 3, 'jixianxian', 'J', 1, NULL, '2305');
INSERT INTO `dvadmin_system_area` VALUES (750, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '友谊县', '230522', 3, 'youyixian', 'Y', 1, NULL, '2305');
INSERT INTO `dvadmin_system_area` VALUES (751, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '宝清县', '230523', 3, 'baoqingxian', 'B', 1, NULL, '2305');
INSERT INTO `dvadmin_system_area` VALUES (752, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '饶河县', '230524', 3, 'raohexian', 'R', 1, NULL, '2305');
INSERT INTO `dvadmin_system_area` VALUES (753, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '大庆市', '2306', 2, 'daqingshi', 'D', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (754, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '萨尔图区', '230602', 3, 'saertuqu', 'S', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (755, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '龙凤区', '230603', 3, 'longfengqu', 'L', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (756, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '让胡路区', '230604', 3, 'ranghuluqu', 'R', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (757, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '红岗区', '230605', 3, 'honggangqu', 'H', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (758, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '大同区', '230606', 3, 'datongqu', 'D', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (759, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '肇州县', '230621', 3, 'zhaozhouxian', 'Z', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (760, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '肇源县', '230622', 3, 'zhaoyuanxian', 'Z', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (761, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '林甸县', '230623', 3, 'lindianxian', 'L', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (762, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '杜尔伯特蒙古族自治县', '230624', 3, 'duerbotemengguzuzizhixian', 'D', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (763, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '大庆高新技术产业开发区', '230671', 3, 'daqinggaoxinjishuchanyekaifaqu', 'D', 1, NULL, '2306');
INSERT INTO `dvadmin_system_area` VALUES (764, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '伊春市', '2307', 2, 'yichunshi', 'Y', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (765, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '伊美区', '230717', 3, 'yimeiqu', 'Y', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (766, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '乌翠区', '230718', 3, 'wucuiqu', 'W', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (767, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '友好区', '230719', 3, 'youhaoqu', 'Y', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (768, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '嘉荫县', '230722', 3, 'jiayinxian', 'J', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (769, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '汤旺县', '230723', 3, 'tangwangxian', 'T', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (770, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '丰林县', '230724', 3, 'fenglinxian', 'F', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (771, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '大箐山县', '230725', 3, 'daqingshanxian', 'D', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (772, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '南岔县', '230726', 3, 'nanchaxian', 'N', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (773, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '金林区', '230751', 3, 'jinlinqu', 'J', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (774, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '铁力市', '230781', 3, 'tielishi', 'T', 1, NULL, '2307');
INSERT INTO `dvadmin_system_area` VALUES (775, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '佳木斯市', '2308', 2, 'jiamusishi', 'J', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (776, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '向阳区', '230803', 3, 'xiangyangqu', 'X', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (777, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '前进区', '230804', 3, 'qianjinqu', 'Q', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (778, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '东风区', '230805', 3, 'dongfengqu', 'D', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (779, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '郊区', '230811', 3, 'jiaoqu', 'J', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (780, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '桦南县', '230822', 3, 'huananxian', 'H', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (781, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '桦川县', '230826', 3, 'huachuanxian', 'H', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (782, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '汤原县', '230828', 3, 'tangyuanxian', 'T', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (783, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '同江市', '230881', 3, 'tongjiangshi', 'T', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (784, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '富锦市', '230882', 3, 'fujinshi', 'F', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (785, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '抚远市', '230883', 3, 'fuyuanshi', 'F', 1, NULL, '2308');
INSERT INTO `dvadmin_system_area` VALUES (786, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '七台河市', '2309', 2, 'qitaiheshi', 'Q', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (787, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '新兴区', '230902', 3, 'xinxingqu', 'X', 1, NULL, '2309');
INSERT INTO `dvadmin_system_area` VALUES (788, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '桃山区', '230903', 3, 'taoshanqu', 'T', 1, NULL, '2309');
INSERT INTO `dvadmin_system_area` VALUES (789, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '茄子河区', '230904', 3, 'qiezihequ', 'Q', 1, NULL, '2309');
INSERT INTO `dvadmin_system_area` VALUES (790, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '勃利县', '230921', 3, 'bolixian', 'B', 1, NULL, '2309');
INSERT INTO `dvadmin_system_area` VALUES (791, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '牡丹江市', '2310', 2, 'mudanjiangshi', 'M', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (792, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '东安区', '231002', 3, 'donganqu', 'D', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (793, NULL, NULL, NULL, '2023-11-04 16:46:11.216627', '2023-11-04 16:46:11.216627', '阳明区', '231003', 3, 'yangmingqu', 'Y', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (794, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '爱民区', '231004', 3, 'aiminqu', 'A', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (795, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '西安区', '231005', 3, 'xianqu', 'X', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (796, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '林口县', '231025', 3, 'linkouxian', 'L', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (797, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '牡丹江经济技术开发区', '231071', 3, 'mudanjiangjingjijishukaifaqu', 'M', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (798, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '绥芬河市', '231081', 3, 'suifenheshi', 'S', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (799, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '海林市', '231083', 3, 'hailinshi', 'H', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (800, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '宁安市', '231084', 3, 'ninganshi', 'N', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (801, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '穆棱市', '231085', 3, 'mulengshi', 'M', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (802, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '东宁市', '231086', 3, 'dongningshi', 'D', 1, NULL, '2310');
INSERT INTO `dvadmin_system_area` VALUES (803, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '黑河市', '2311', 2, 'heiheshi', 'H', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (804, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '爱辉区', '231102', 3, 'aihuiqu', 'A', 1, NULL, '2311');
INSERT INTO `dvadmin_system_area` VALUES (805, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '逊克县', '231123', 3, 'xunkexian', 'X', 1, NULL, '2311');
INSERT INTO `dvadmin_system_area` VALUES (806, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '孙吴县', '231124', 3, 'sunwuxian', 'S', 1, NULL, '2311');
INSERT INTO `dvadmin_system_area` VALUES (807, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '北安市', '231181', 3, 'beianshi', 'B', 1, NULL, '2311');
INSERT INTO `dvadmin_system_area` VALUES (808, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '五大连池市', '231182', 3, 'wudalianchishi', 'W', 1, NULL, '2311');
INSERT INTO `dvadmin_system_area` VALUES (809, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '嫩江市', '231183', 3, 'nenjiangshi', 'N', 1, NULL, '2311');
INSERT INTO `dvadmin_system_area` VALUES (810, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '绥化市', '2312', 2, 'suihuashi', 'S', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (811, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '北林区', '231202', 3, 'beilinqu', 'B', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (812, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '望奎县', '231221', 3, 'wangkuixian', 'W', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (813, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '兰西县', '231222', 3, 'lanxixian', 'L', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (814, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '青冈县', '231223', 3, 'qinggangxian', 'Q', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (815, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '庆安县', '231224', 3, 'qinganxian', 'Q', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (816, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '明水县', '231225', 3, 'mingshuixian', 'M', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (817, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '绥棱县', '231226', 3, 'suilengxian', 'S', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (818, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '安达市', '231281', 3, 'andashi', 'A', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (819, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '肇东市', '231282', 3, 'zhaodongshi', 'Z', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (820, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '海伦市', '231283', 3, 'hailunshi', 'H', 1, NULL, '2312');
INSERT INTO `dvadmin_system_area` VALUES (821, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '大兴安岭地区', '2327', 2, 'daxinganlingdiqu', 'D', 1, NULL, '23');
INSERT INTO `dvadmin_system_area` VALUES (822, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '漠河市', '232701', 3, 'moheshi', 'M', 1, NULL, '2327');
INSERT INTO `dvadmin_system_area` VALUES (823, NULL, NULL, NULL, '2023-11-04 16:46:11.217628', '2023-11-04 16:46:11.217628', '呼玛县', '232721', 3, 'humaxian', 'H', 1, NULL, '2327');
INSERT INTO `dvadmin_system_area` VALUES (824, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '塔河县', '232722', 3, 'tahexian', 'T', 1, NULL, '2327');
INSERT INTO `dvadmin_system_area` VALUES (825, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '加格达奇区', '232761', 3, 'jiagedaqiqu', 'J', 1, NULL, '2327');
INSERT INTO `dvadmin_system_area` VALUES (826, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '松岭区', '232762', 3, 'songlingqu', 'S', 1, NULL, '2327');
INSERT INTO `dvadmin_system_area` VALUES (827, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '新林区', '232763', 3, 'xinlinqu', 'X', 1, NULL, '2327');
INSERT INTO `dvadmin_system_area` VALUES (828, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '呼中区', '232764', 3, 'huzhongqu', 'H', 1, NULL, '2327');
INSERT INTO `dvadmin_system_area` VALUES (829, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '上海市', '31', 1, 'shanghaishi', 'S', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (830, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '市辖区', '3101', 2, 'shixiaqu', 'S', 1, NULL, '31');
INSERT INTO `dvadmin_system_area` VALUES (831, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '黄浦区', '310101', 3, 'huangpuqu', 'H', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (832, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '徐汇区', '310104', 3, 'xuhuiqu', 'X', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (833, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '长宁区', '310105', 3, 'zhangningqu', 'Z', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (834, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '静安区', '310106', 3, 'jinganqu', 'J', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (835, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '普陀区', '310107', 3, 'putuoqu', 'P', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (836, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '虹口区', '310109', 3, 'hongkouqu', 'H', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (837, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '杨浦区', '310110', 3, 'yangpuqu', 'Y', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (838, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '闵行区', '310112', 3, 'minxingqu', 'M', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (839, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '宝山区', '310113', 3, 'baoshanqu', 'B', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (840, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '嘉定区', '310114', 3, 'jiadingqu', 'J', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (841, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '浦东新区', '310115', 3, 'pudongxinqu', 'P', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (842, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '金山区', '310116', 3, 'jinshanqu', 'J', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (843, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '松江区', '310117', 3, 'songjiangqu', 'S', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (844, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '青浦区', '310118', 3, 'qingpuqu', 'Q', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (845, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '奉贤区', '310120', 3, 'fengxianqu', 'F', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (846, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '崇明区', '310151', 3, 'chongmingqu', 'C', 1, NULL, '3101');
INSERT INTO `dvadmin_system_area` VALUES (847, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '江苏省', '32', 1, 'jiangsusheng', 'J', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (848, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '南京市', '3201', 2, 'nanjingshi', 'N', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (849, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '玄武区', '320102', 3, 'xuanwuqu', 'X', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (850, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '秦淮区', '320104', 3, 'qinhuaiqu', 'Q', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (851, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '建邺区', '320105', 3, 'jianyequ', 'J', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (852, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '鼓楼区', '320106', 3, 'gulouqu', 'G', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (853, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '浦口区', '320111', 3, 'pukouqu', 'P', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (854, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '栖霞区', '320113', 3, 'qixiaqu', 'Q', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (855, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '雨花台区', '320114', 3, 'yuhuataiqu', 'Y', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (856, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '江宁区', '320115', 3, 'jiangningqu', 'J', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (857, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '六合区', '320116', 3, 'liuhequ', 'L', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (858, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '溧水区', '320117', 3, 'lishuiqu', 'L', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (859, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '高淳区', '320118', 3, 'gaochunqu', 'G', 1, NULL, '3201');
INSERT INTO `dvadmin_system_area` VALUES (860, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '无锡市', '3202', 2, 'wuxishi', 'W', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (861, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '锡山区', '320205', 3, 'xishanqu', 'X', 1, NULL, '3202');
INSERT INTO `dvadmin_system_area` VALUES (862, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '惠山区', '320206', 3, 'huishanqu', 'H', 1, NULL, '3202');
INSERT INTO `dvadmin_system_area` VALUES (863, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '滨湖区', '320211', 3, 'binhuqu', 'B', 1, NULL, '3202');
INSERT INTO `dvadmin_system_area` VALUES (864, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '梁溪区', '320213', 3, 'liangxiqu', 'L', 1, NULL, '3202');
INSERT INTO `dvadmin_system_area` VALUES (865, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '新吴区', '320214', 3, 'xinwuqu', 'X', 1, NULL, '3202');
INSERT INTO `dvadmin_system_area` VALUES (866, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '江阴市', '320281', 3, 'jiangyinshi', 'J', 1, NULL, '3202');
INSERT INTO `dvadmin_system_area` VALUES (867, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '宜兴市', '320282', 3, 'yixingshi', 'Y', 1, NULL, '3202');
INSERT INTO `dvadmin_system_area` VALUES (868, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '徐州市', '3203', 2, 'xuzhoushi', 'X', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (869, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '鼓楼区', '320302', 3, 'gulouqu', 'G', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (870, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '云龙区', '320303', 3, 'yunlongqu', 'Y', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (871, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '贾汪区', '320305', 3, 'jiawangqu', 'J', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (872, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '泉山区', '320311', 3, 'quanshanqu', 'Q', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (873, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '铜山区', '320312', 3, 'tongshanqu', 'T', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (874, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '丰县', '320321', 3, 'fengxian', 'F', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (875, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '沛县', '320322', 3, 'peixian', 'P', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (876, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '睢宁县', '320324', 3, 'suiningxian', 'S', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (877, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '徐州经济技术开发区', '320371', 3, 'xuzhoujingjijishukaifaqu', 'X', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (878, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '新沂市', '320381', 3, 'xinyishi', 'X', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (879, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '邳州市', '320382', 3, 'pizhoushi', 'P', 1, NULL, '3203');
INSERT INTO `dvadmin_system_area` VALUES (880, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '常州市', '3204', 2, 'changzhoushi', 'C', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (881, NULL, NULL, NULL, '2023-11-04 16:46:11.218134', '2023-11-04 16:46:11.218134', '天宁区', '320402', 3, 'tianningqu', 'T', 1, NULL, '3204');
INSERT INTO `dvadmin_system_area` VALUES (882, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '钟楼区', '320404', 3, 'zhonglouqu', 'Z', 1, NULL, '3204');
INSERT INTO `dvadmin_system_area` VALUES (883, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '新北区', '320411', 3, 'xinbeiqu', 'X', 1, NULL, '3204');
INSERT INTO `dvadmin_system_area` VALUES (884, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '武进区', '320412', 3, 'wujinqu', 'W', 1, NULL, '3204');
INSERT INTO `dvadmin_system_area` VALUES (885, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '金坛区', '320413', 3, 'jintanqu', 'J', 1, NULL, '3204');
INSERT INTO `dvadmin_system_area` VALUES (886, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '溧阳市', '320481', 3, 'liyangshi', 'L', 1, NULL, '3204');
INSERT INTO `dvadmin_system_area` VALUES (887, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '苏州市', '3205', 2, 'suzhoushi', 'S', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (888, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '虎丘区', '320505', 3, 'huqiuqu', 'H', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (889, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '吴中区', '320506', 3, 'wuzhongqu', 'W', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (890, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '相城区', '320507', 3, 'xiangchengqu', 'X', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (891, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '姑苏区', '320508', 3, 'gusuqu', 'G', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (892, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '吴江区', '320509', 3, 'wujiangqu', 'W', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (893, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '苏州工业园区', '320571', 3, 'suzhougongyeyuanqu', 'S', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (894, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '常熟市', '320581', 3, 'changshushi', 'C', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (895, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '张家港市', '320582', 3, 'zhangjiagangshi', 'Z', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (896, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '昆山市', '320583', 3, 'kunshanshi', 'K', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (897, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '太仓市', '320585', 3, 'taicangshi', 'T', 1, NULL, '3205');
INSERT INTO `dvadmin_system_area` VALUES (898, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '南通市', '3206', 2, 'nantongshi', 'N', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (899, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '崇川区', '320602', 3, 'chongchuanqu', 'C', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (900, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '港闸区', '320611', 3, 'gangzhaqu', 'G', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (901, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '通州区', '320612', 3, 'tongzhouqu', 'T', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (902, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '如东县', '320623', 3, 'rudongxian', 'R', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (903, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '南通经济技术开发区', '320671', 3, 'nantongjingjijishukaifaqu', 'N', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (904, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '启东市', '320681', 3, 'qidongshi', 'Q', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (905, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '如皋市', '320682', 3, 'rugaoshi', 'R', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (906, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '海门市', '320684', 3, 'haimenshi', 'H', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (907, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '海安市', '320685', 3, 'haianshi', 'H', 1, NULL, '3206');
INSERT INTO `dvadmin_system_area` VALUES (908, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '连云港市', '3207', 2, 'lianyungangshi', 'L', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (909, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '连云区', '320703', 3, 'lianyunqu', 'L', 1, NULL, '3207');
INSERT INTO `dvadmin_system_area` VALUES (910, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '海州区', '320706', 3, 'haizhouqu', 'H', 1, NULL, '3207');
INSERT INTO `dvadmin_system_area` VALUES (911, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '赣榆区', '320707', 3, 'ganyuqu', 'G', 1, NULL, '3207');
INSERT INTO `dvadmin_system_area` VALUES (912, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '东海县', '320722', 3, 'donghaixian', 'D', 1, NULL, '3207');
INSERT INTO `dvadmin_system_area` VALUES (913, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '灌云县', '320723', 3, 'guanyunxian', 'G', 1, NULL, '3207');
INSERT INTO `dvadmin_system_area` VALUES (914, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '灌南县', '320724', 3, 'guannanxian', 'G', 1, NULL, '3207');
INSERT INTO `dvadmin_system_area` VALUES (915, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '连云港经济技术开发区', '320771', 3, 'lianyungangjingjijishukaifaqu', 'L', 1, NULL, '3207');
INSERT INTO `dvadmin_system_area` VALUES (916, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '连云港高新技术产业开发区', '320772', 3, 'lianyunganggaoxinjishuchanyekaifaqu', 'L', 1, NULL, '3207');
INSERT INTO `dvadmin_system_area` VALUES (917, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '淮安市', '3208', 2, 'huaianshi', 'H', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (918, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '淮安区', '320803', 3, 'huaianqu', 'H', 1, NULL, '3208');
INSERT INTO `dvadmin_system_area` VALUES (919, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '淮阴区', '320804', 3, 'huaiyinqu', 'H', 1, NULL, '3208');
INSERT INTO `dvadmin_system_area` VALUES (920, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '清江浦区', '320812', 3, 'qingjiangpuqu', 'Q', 1, NULL, '3208');
INSERT INTO `dvadmin_system_area` VALUES (921, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '洪泽区', '320813', 3, 'hongzequ', 'H', 1, NULL, '3208');
INSERT INTO `dvadmin_system_area` VALUES (922, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '涟水县', '320826', 3, 'lianshuixian', 'L', 1, NULL, '3208');
INSERT INTO `dvadmin_system_area` VALUES (923, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '盱眙县', '320830', 3, 'xuyixian', 'X', 1, NULL, '3208');
INSERT INTO `dvadmin_system_area` VALUES (924, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '金湖县', '320831', 3, 'jinhuxian', 'J', 1, NULL, '3208');
INSERT INTO `dvadmin_system_area` VALUES (925, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '淮安经济技术开发区', '320871', 3, 'huaianjingjijishukaifaqu', 'H', 1, NULL, '3208');
INSERT INTO `dvadmin_system_area` VALUES (926, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '盐城市', '3209', 2, 'yanchengshi', 'Y', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (927, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '亭湖区', '320902', 3, 'tinghuqu', 'T', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (928, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '盐都区', '320903', 3, 'yandouqu', 'Y', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (929, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '大丰区', '320904', 3, 'dafengqu', 'D', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (930, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '响水县', '320921', 3, 'xiangshuixian', 'X', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (931, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '滨海县', '320922', 3, 'binhaixian', 'B', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (932, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '阜宁县', '320923', 3, 'funingxian', 'F', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (933, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '射阳县', '320924', 3, 'sheyangxian', 'S', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (934, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '建湖县', '320925', 3, 'jianhuxian', 'J', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (935, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '盐城经济技术开发区', '320971', 3, 'yanchengjingjijishukaifaqu', 'Y', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (936, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '东台市', '320981', 3, 'dongtaishi', 'D', 1, NULL, '3209');
INSERT INTO `dvadmin_system_area` VALUES (937, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '扬州市', '3210', 2, 'yangzhoushi', 'Y', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (938, NULL, NULL, NULL, '2023-11-04 16:46:11.219139', '2023-11-04 16:46:11.219139', '广陵区', '321002', 3, 'guanglingqu', 'G', 1, NULL, '3210');
INSERT INTO `dvadmin_system_area` VALUES (939, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '邗江区', '321003', 3, 'hanjiangqu', 'H', 1, NULL, '3210');
INSERT INTO `dvadmin_system_area` VALUES (940, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '江都区', '321012', 3, 'jiangduqu', 'J', 1, NULL, '3210');
INSERT INTO `dvadmin_system_area` VALUES (941, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '宝应县', '321023', 3, 'baoyingxian', 'B', 1, NULL, '3210');
INSERT INTO `dvadmin_system_area` VALUES (942, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '扬州经济技术开发区', '321071', 3, 'yangzhoujingjijishukaifaqu', 'Y', 1, NULL, '3210');
INSERT INTO `dvadmin_system_area` VALUES (943, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '仪征市', '321081', 3, 'yizhengshi', 'Y', 1, NULL, '3210');
INSERT INTO `dvadmin_system_area` VALUES (944, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '高邮市', '321084', 3, 'gaoyoushi', 'G', 1, NULL, '3210');
INSERT INTO `dvadmin_system_area` VALUES (945, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '镇江市', '3211', 2, 'zhenjiangshi', 'Z', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (946, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '京口区', '321102', 3, 'jingkouqu', 'J', 1, NULL, '3211');
INSERT INTO `dvadmin_system_area` VALUES (947, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '润州区', '321111', 3, 'runzhouqu', 'R', 1, NULL, '3211');
INSERT INTO `dvadmin_system_area` VALUES (948, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '丹徒区', '321112', 3, 'dantuqu', 'D', 1, NULL, '3211');
INSERT INTO `dvadmin_system_area` VALUES (949, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '镇江新区', '321171', 3, 'zhenjiangxinqu', 'Z', 1, NULL, '3211');
INSERT INTO `dvadmin_system_area` VALUES (950, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '丹阳市', '321181', 3, 'danyangshi', 'D', 1, NULL, '3211');
INSERT INTO `dvadmin_system_area` VALUES (951, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '扬中市', '321182', 3, 'yangzhongshi', 'Y', 1, NULL, '3211');
INSERT INTO `dvadmin_system_area` VALUES (952, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '句容市', '321183', 3, 'jurongshi', 'J', 1, NULL, '3211');
INSERT INTO `dvadmin_system_area` VALUES (953, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '泰州市', '3212', 2, 'taizhoushi', 'T', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (954, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '海陵区', '321202', 3, 'hailingqu', 'H', 1, NULL, '3212');
INSERT INTO `dvadmin_system_area` VALUES (955, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '高港区', '321203', 3, 'gaogangqu', 'G', 1, NULL, '3212');
INSERT INTO `dvadmin_system_area` VALUES (956, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '姜堰区', '321204', 3, 'jiangyanqu', 'J', 1, NULL, '3212');
INSERT INTO `dvadmin_system_area` VALUES (957, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '泰州医药高新技术产业开发区', '321271', 3, 'taizhouyiyaogaoxinjishuchanyekaifaqu', 'T', 1, NULL, '3212');
INSERT INTO `dvadmin_system_area` VALUES (958, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '兴化市', '321281', 3, 'xinghuashi', 'X', 1, NULL, '3212');
INSERT INTO `dvadmin_system_area` VALUES (959, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '靖江市', '321282', 3, 'jingjiangshi', 'J', 1, NULL, '3212');
INSERT INTO `dvadmin_system_area` VALUES (960, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '泰兴市', '321283', 3, 'taixingshi', 'T', 1, NULL, '3212');
INSERT INTO `dvadmin_system_area` VALUES (961, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '宿迁市', '3213', 2, 'suqianshi', 'S', 1, NULL, '32');
INSERT INTO `dvadmin_system_area` VALUES (962, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '宿城区', '321302', 3, 'suchengqu', 'S', 1, NULL, '3213');
INSERT INTO `dvadmin_system_area` VALUES (963, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '宿豫区', '321311', 3, 'suyuqu', 'S', 1, NULL, '3213');
INSERT INTO `dvadmin_system_area` VALUES (964, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '沭阳县', '321322', 3, 'shuyangxian', 'S', 1, NULL, '3213');
INSERT INTO `dvadmin_system_area` VALUES (965, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '泗阳县', '321323', 3, 'siyangxian', 'S', 1, NULL, '3213');
INSERT INTO `dvadmin_system_area` VALUES (966, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '泗洪县', '321324', 3, 'sihongxian', 'S', 1, NULL, '3213');
INSERT INTO `dvadmin_system_area` VALUES (967, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '宿迁经济技术开发区', '321371', 3, 'suqianjingjijishukaifaqu', 'S', 1, NULL, '3213');
INSERT INTO `dvadmin_system_area` VALUES (968, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '浙江省', '33', 1, 'zhejiangsheng', 'Z', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (969, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '杭州市', '3301', 2, 'hangzhoushi', 'H', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (970, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '上城区', '330102', 3, 'shangchengqu', 'S', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (971, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '下城区', '330103', 3, 'xiachengqu', 'X', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (972, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '江干区', '330104', 3, 'jiangganqu', 'J', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (973, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '拱墅区', '330105', 3, 'gongshuqu', 'G', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (974, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '西湖区', '330106', 3, 'xihuqu', 'X', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (975, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '滨江区', '330108', 3, 'binjiangqu', 'B', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (976, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '萧山区', '330109', 3, 'xiaoshanqu', 'X', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (977, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '余杭区', '330110', 3, 'yuhangqu', 'Y', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (978, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '富阳区', '330111', 3, 'fuyangqu', 'F', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (979, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '临安区', '330112', 3, 'linanqu', 'L', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (980, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '桐庐县', '330122', 3, 'tongluxian', 'T', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (981, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '淳安县', '330127', 3, 'chunanxian', 'C', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (982, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '建德市', '330182', 3, 'jiandeshi', 'J', 1, NULL, '3301');
INSERT INTO `dvadmin_system_area` VALUES (983, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '宁波市', '3302', 2, 'ningboshi', 'N', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (984, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '海曙区', '330203', 3, 'haishuqu', 'H', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (985, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '江北区', '330205', 3, 'jiangbeiqu', 'J', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (986, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '北仑区', '330206', 3, 'beilunqu', 'B', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (987, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '镇海区', '330211', 3, 'zhenhaiqu', 'Z', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (988, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '鄞州区', '330212', 3, 'yinzhouqu', 'Y', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (989, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '奉化区', '330213', 3, 'fenghuaqu', 'F', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (990, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '象山县', '330225', 3, 'xiangshanxian', 'X', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (991, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '宁海县', '330226', 3, 'ninghaixian', 'N', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (992, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.220143', '余姚市', '330281', 3, 'yuyaoshi', 'Y', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (993, NULL, NULL, NULL, '2023-11-04 16:46:11.220143', '2023-11-04 16:46:11.221140', '慈溪市', '330282', 3, 'cixishi', 'C', 1, NULL, '3302');
INSERT INTO `dvadmin_system_area` VALUES (994, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '温州市', '3303', 2, 'wenzhoushi', 'W', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (995, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '鹿城区', '330302', 3, 'luchengqu', 'L', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (996, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '龙湾区', '330303', 3, 'longwanqu', 'L', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (997, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '瓯海区', '330304', 3, 'ouhaiqu', 'O', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (998, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '洞头区', '330305', 3, 'dongtouqu', 'D', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (999, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '永嘉县', '330324', 3, 'yongjiaxian', 'Y', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1000, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '平阳县', '330326', 3, 'pingyangxian', 'P', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1001, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '苍南县', '330327', 3, 'cangnanxian', 'C', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1002, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '文成县', '330328', 3, 'wenchengxian', 'W', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1003, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '泰顺县', '330329', 3, 'taishunxian', 'T', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1004, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '温州经济技术开发区', '330371', 3, 'wenzhoujingjijishukaifaqu', 'W', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1005, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '瑞安市', '330381', 3, 'ruianshi', 'R', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1006, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '乐清市', '330382', 3, 'yueqingshi', 'Y', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1007, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '龙港市', '330383', 3, 'longgangshi', 'L', 1, NULL, '3303');
INSERT INTO `dvadmin_system_area` VALUES (1008, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '嘉兴市', '3304', 2, 'jiaxingshi', 'J', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (1009, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '南湖区', '330402', 3, 'nanhuqu', 'N', 1, NULL, '3304');
INSERT INTO `dvadmin_system_area` VALUES (1010, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '秀洲区', '330411', 3, 'xiuzhouqu', 'X', 1, NULL, '3304');
INSERT INTO `dvadmin_system_area` VALUES (1011, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '嘉善县', '330421', 3, 'jiashanxian', 'J', 1, NULL, '3304');
INSERT INTO `dvadmin_system_area` VALUES (1012, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '海盐县', '330424', 3, 'haiyanxian', 'H', 1, NULL, '3304');
INSERT INTO `dvadmin_system_area` VALUES (1013, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '海宁市', '330481', 3, 'hainingshi', 'H', 1, NULL, '3304');
INSERT INTO `dvadmin_system_area` VALUES (1014, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '平湖市', '330482', 3, 'pinghushi', 'P', 1, NULL, '3304');
INSERT INTO `dvadmin_system_area` VALUES (1015, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '桐乡市', '330483', 3, 'tongxiangshi', 'T', 1, NULL, '3304');
INSERT INTO `dvadmin_system_area` VALUES (1016, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '湖州市', '3305', 2, 'huzhoushi', 'H', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (1017, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '吴兴区', '330502', 3, 'wuxingqu', 'W', 1, NULL, '3305');
INSERT INTO `dvadmin_system_area` VALUES (1018, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '南浔区', '330503', 3, 'nanxunqu', 'N', 1, NULL, '3305');
INSERT INTO `dvadmin_system_area` VALUES (1019, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '德清县', '330521', 3, 'deqingxian', 'D', 1, NULL, '3305');
INSERT INTO `dvadmin_system_area` VALUES (1020, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '长兴县', '330522', 3, 'changxingxian', 'C', 1, NULL, '3305');
INSERT INTO `dvadmin_system_area` VALUES (1021, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '安吉县', '330523', 3, 'anjixian', 'A', 1, NULL, '3305');
INSERT INTO `dvadmin_system_area` VALUES (1022, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '绍兴市', '3306', 2, 'shaoxingshi', 'S', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (1023, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '越城区', '330602', 3, 'yuechengqu', 'Y', 1, NULL, '3306');
INSERT INTO `dvadmin_system_area` VALUES (1024, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '柯桥区', '330603', 3, 'keqiaoqu', 'K', 1, NULL, '3306');
INSERT INTO `dvadmin_system_area` VALUES (1025, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '上虞区', '330604', 3, 'shangyuqu', 'S', 1, NULL, '3306');
INSERT INTO `dvadmin_system_area` VALUES (1026, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '新昌县', '330624', 3, 'xinchangxian', 'X', 1, NULL, '3306');
INSERT INTO `dvadmin_system_area` VALUES (1027, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '诸暨市', '330681', 3, 'zhujishi', 'Z', 1, NULL, '3306');
INSERT INTO `dvadmin_system_area` VALUES (1028, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '嵊州市', '330683', 3, 'shengzhoushi', 'S', 1, NULL, '3306');
INSERT INTO `dvadmin_system_area` VALUES (1029, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '金华市', '3307', 2, 'jinhuashi', 'J', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (1030, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '婺城区', '330702', 3, 'wuchengqu', 'W', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1031, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '金东区', '330703', 3, 'jindongqu', 'J', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1032, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '武义县', '330723', 3, 'wuyixian', 'W', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1033, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '浦江县', '330726', 3, 'pujiangxian', 'P', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1034, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '磐安县', '330727', 3, 'pananxian', 'P', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1035, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '兰溪市', '330781', 3, 'lanxishi', 'L', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1036, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '义乌市', '330782', 3, 'yiwushi', 'Y', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1037, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '东阳市', '330783', 3, 'dongyangshi', 'D', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1038, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '永康市', '330784', 3, 'yongkangshi', 'Y', 1, NULL, '3307');
INSERT INTO `dvadmin_system_area` VALUES (1039, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '衢州市', '3308', 2, 'quzhoushi', 'Q', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (1040, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '柯城区', '330802', 3, 'kechengqu', 'K', 1, NULL, '3308');
INSERT INTO `dvadmin_system_area` VALUES (1041, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '衢江区', '330803', 3, 'qujiangqu', 'Q', 1, NULL, '3308');
INSERT INTO `dvadmin_system_area` VALUES (1042, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '常山县', '330822', 3, 'changshanxian', 'C', 1, NULL, '3308');
INSERT INTO `dvadmin_system_area` VALUES (1043, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '开化县', '330824', 3, 'kaihuaxian', 'K', 1, NULL, '3308');
INSERT INTO `dvadmin_system_area` VALUES (1044, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '龙游县', '330825', 3, 'longyouxian', 'L', 1, NULL, '3308');
INSERT INTO `dvadmin_system_area` VALUES (1045, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '江山市', '330881', 3, 'jiangshanshi', 'J', 1, NULL, '3308');
INSERT INTO `dvadmin_system_area` VALUES (1046, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '舟山市', '3309', 2, 'zhoushanshi', 'Z', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (1047, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '定海区', '330902', 3, 'dinghaiqu', 'D', 1, NULL, '3309');
INSERT INTO `dvadmin_system_area` VALUES (1048, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '普陀区', '330903', 3, 'putuoqu', 'P', 1, NULL, '3309');
INSERT INTO `dvadmin_system_area` VALUES (1049, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '岱山县', '330921', 3, 'daishanxian', 'D', 1, NULL, '3309');
INSERT INTO `dvadmin_system_area` VALUES (1050, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '嵊泗县', '330922', 3, 'shengsixian', 'S', 1, NULL, '3309');
INSERT INTO `dvadmin_system_area` VALUES (1051, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '台州市', '3310', 2, 'taizhoushi', 'T', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (1052, NULL, NULL, NULL, '2023-11-04 16:46:11.221140', '2023-11-04 16:46:11.221140', '椒江区', '331002', 3, 'jiaojiangqu', 'J', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1053, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '黄岩区', '331003', 3, 'huangyanqu', 'H', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1054, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '路桥区', '331004', 3, 'luqiaoqu', 'L', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1055, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '三门县', '331022', 3, 'sanmenxian', 'S', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1056, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '天台县', '331023', 3, 'tiantaixian', 'T', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1057, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '仙居县', '331024', 3, 'xianjuxian', 'X', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1058, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '温岭市', '331081', 3, 'wenlingshi', 'W', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1059, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '临海市', '331082', 3, 'linhaishi', 'L', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1060, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '玉环市', '331083', 3, 'yuhuanshi', 'Y', 1, NULL, '3310');
INSERT INTO `dvadmin_system_area` VALUES (1061, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '丽水市', '3311', 2, 'lishuishi', 'L', 1, NULL, '33');
INSERT INTO `dvadmin_system_area` VALUES (1062, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '莲都区', '331102', 3, 'liandouqu', 'L', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1063, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '青田县', '331121', 3, 'qingtianxian', 'Q', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1064, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '缙云县', '331122', 3, 'jinyunxian', 'J', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1065, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '遂昌县', '331123', 3, 'suichangxian', 'S', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1066, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '松阳县', '331124', 3, 'songyangxian', 'S', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1067, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '云和县', '331125', 3, 'yunhexian', 'Y', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1068, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '庆元县', '331126', 3, 'qingyuanxian', 'Q', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1069, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '景宁畲族自治县', '331127', 3, 'jingningshezuzizhixian', 'J', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1070, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '龙泉市', '331181', 3, 'longquanshi', 'L', 1, NULL, '3311');
INSERT INTO `dvadmin_system_area` VALUES (1071, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '安徽省', '34', 1, 'anhuisheng', 'A', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (1072, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '合肥市', '3401', 2, 'hefeishi', 'H', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1073, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '瑶海区', '340102', 3, 'yaohaiqu', 'Y', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1074, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '庐阳区', '340103', 3, 'luyangqu', 'L', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1075, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '蜀山区', '340104', 3, 'shushanqu', 'S', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1076, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '包河区', '340111', 3, 'baohequ', 'B', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1077, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '长丰县', '340121', 3, 'zhangfengxian', 'Z', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1078, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '肥东县', '340122', 3, 'feidongxian', 'F', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1079, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '肥西县', '340123', 3, 'feixixian', 'F', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1080, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '庐江县', '340124', 3, 'lujiangxian', 'L', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1081, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '合肥高新技术产业开发区', '340171', 3, 'hefeigaoxinjishuchanyekaifaqu', 'H', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1082, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '合肥经济技术开发区', '340172', 3, 'hefeijingjijishukaifaqu', 'H', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1083, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '合肥新站高新技术产业开发区', '340173', 3, 'hefeixinzhangaoxinjishuchanyekaifaqu', 'H', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1084, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '巢湖市', '340181', 3, 'chaohushi', 'C', 1, NULL, '3401');
INSERT INTO `dvadmin_system_area` VALUES (1085, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '芜湖市', '3402', 2, 'wuhushi', 'W', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1086, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '镜湖区', '340202', 3, 'jinghuqu', 'J', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1087, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '弋江区', '340203', 3, 'yijiangqu', 'Y', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1088, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '鸠江区', '340207', 3, 'jiujiangqu', 'J', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1089, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '三山区', '340208', 3, 'sanshanqu', 'S', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1090, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '芜湖县', '340221', 3, 'wuhuxian', 'W', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1091, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '繁昌县', '340222', 3, 'fanchangxian', 'F', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1092, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '南陵县', '340223', 3, 'nanlingxian', 'N', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1093, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '芜湖经济技术开发区', '340271', 3, 'wuhujingjijishukaifaqu', 'W', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1094, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '安徽芜湖长江大桥经济开发区', '340272', 3, 'anhuiwuhuchangjiangdaqiaojingjikaifaqu', 'A', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1095, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '无为市', '340281', 3, 'wuweishi', 'W', 1, NULL, '3402');
INSERT INTO `dvadmin_system_area` VALUES (1096, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '蚌埠市', '3403', 2, 'bengbushi', 'B', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1097, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '龙子湖区', '340302', 3, 'longzihuqu', 'L', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1098, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '蚌山区', '340303', 3, 'bangshanqu', 'B', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1099, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '禹会区', '340304', 3, 'yuhuiqu', 'Y', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1100, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '淮上区', '340311', 3, 'huaishangqu', 'H', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1101, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '怀远县', '340321', 3, 'huaiyuanxian', 'H', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1102, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '五河县', '340322', 3, 'wuhexian', 'W', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1103, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '固镇县', '340323', 3, 'guzhenxian', 'G', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1104, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '蚌埠市高新技术开发区', '340371', 3, 'bengbushigaoxinjishukaifaqu', 'B', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1105, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '蚌埠市经济开发区', '340372', 3, 'bengbushijingjikaifaqu', 'B', 1, NULL, '3403');
INSERT INTO `dvadmin_system_area` VALUES (1106, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '淮南市', '3404', 2, 'huainanshi', 'H', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1107, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '大通区', '340402', 3, 'datongqu', 'D', 1, NULL, '3404');
INSERT INTO `dvadmin_system_area` VALUES (1108, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '田家庵区', '340403', 3, 'tianjiaanqu', 'T', 1, NULL, '3404');
INSERT INTO `dvadmin_system_area` VALUES (1109, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '谢家集区', '340404', 3, 'xiejiajiqu', 'X', 1, NULL, '3404');
INSERT INTO `dvadmin_system_area` VALUES (1110, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.222139', '八公山区', '340405', 3, 'bagongshanqu', 'B', 1, NULL, '3404');
INSERT INTO `dvadmin_system_area` VALUES (1111, NULL, NULL, NULL, '2023-11-04 16:46:11.222139', '2023-11-04 16:46:11.223139', '潘集区', '340406', 3, 'panjiqu', 'P', 1, NULL, '3404');
INSERT INTO `dvadmin_system_area` VALUES (1112, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '凤台县', '340421', 3, 'fengtaixian', 'F', 1, NULL, '3404');
INSERT INTO `dvadmin_system_area` VALUES (1113, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '寿县', '340422', 3, 'shouxian', 'S', 1, NULL, '3404');
INSERT INTO `dvadmin_system_area` VALUES (1114, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '马鞍山市', '3405', 2, 'maanshanshi', 'M', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1115, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '花山区', '340503', 3, 'huashanqu', 'H', 1, NULL, '3405');
INSERT INTO `dvadmin_system_area` VALUES (1116, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '雨山区', '340504', 3, 'yushanqu', 'Y', 1, NULL, '3405');
INSERT INTO `dvadmin_system_area` VALUES (1117, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '博望区', '340506', 3, 'bowangqu', 'B', 1, NULL, '3405');
INSERT INTO `dvadmin_system_area` VALUES (1118, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '当涂县', '340521', 3, 'dangtuxian', 'D', 1, NULL, '3405');
INSERT INTO `dvadmin_system_area` VALUES (1119, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '含山县', '340522', 3, 'hanshanxian', 'H', 1, NULL, '3405');
INSERT INTO `dvadmin_system_area` VALUES (1120, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '和县', '340523', 3, 'hexian', 'H', 1, NULL, '3405');
INSERT INTO `dvadmin_system_area` VALUES (1121, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '淮北市', '3406', 2, 'huaibeishi', 'H', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1122, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '杜集区', '340602', 3, 'dujiqu', 'D', 1, NULL, '3406');
INSERT INTO `dvadmin_system_area` VALUES (1123, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '相山区', '340603', 3, 'xiangshanqu', 'X', 1, NULL, '3406');
INSERT INTO `dvadmin_system_area` VALUES (1124, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '烈山区', '340604', 3, 'lieshanqu', 'L', 1, NULL, '3406');
INSERT INTO `dvadmin_system_area` VALUES (1125, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '濉溪县', '340621', 3, 'suixixian', 'S', 1, NULL, '3406');
INSERT INTO `dvadmin_system_area` VALUES (1126, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '铜陵市', '3407', 2, 'tonglingshi', 'T', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1127, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '铜官区', '340705', 3, 'tongguanqu', 'T', 1, NULL, '3407');
INSERT INTO `dvadmin_system_area` VALUES (1128, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '义安区', '340706', 3, 'yianqu', 'Y', 1, NULL, '3407');
INSERT INTO `dvadmin_system_area` VALUES (1129, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '郊区', '340711', 3, 'jiaoqu', 'J', 1, NULL, '3407');
INSERT INTO `dvadmin_system_area` VALUES (1130, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '枞阳县', '340722', 3, 'zongyangxian', 'Z', 1, NULL, '3407');
INSERT INTO `dvadmin_system_area` VALUES (1131, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '安庆市', '3408', 2, 'anqingshi', 'A', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1132, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '迎江区', '340802', 3, 'yingjiangqu', 'Y', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1133, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '大观区', '340803', 3, 'daguanqu', 'D', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1134, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '宜秀区', '340811', 3, 'yixiuqu', 'Y', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1135, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '怀宁县', '340822', 3, 'huainingxian', 'H', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1136, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '太湖县', '340825', 3, 'taihuxian', 'T', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1137, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '宿松县', '340826', 3, 'susongxian', 'S', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1138, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '望江县', '340827', 3, 'wangjiangxian', 'W', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1139, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '岳西县', '340828', 3, 'yuexixian', 'Y', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1140, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '安徽安庆经济开发区', '340871', 3, 'anhuianqingjingjikaifaqu', 'A', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1141, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '桐城市', '340881', 3, 'tongchengshi', 'T', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1142, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '潜山市', '340882', 3, 'qianshanshi', 'Q', 1, NULL, '3408');
INSERT INTO `dvadmin_system_area` VALUES (1143, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '黄山市', '3410', 2, 'huangshanshi', 'H', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1144, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '屯溪区', '341002', 3, 'tunxiqu', 'T', 1, NULL, '3410');
INSERT INTO `dvadmin_system_area` VALUES (1145, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '黄山区', '341003', 3, 'huangshanqu', 'H', 1, NULL, '3410');
INSERT INTO `dvadmin_system_area` VALUES (1146, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '徽州区', '341004', 3, 'huizhouqu', 'H', 1, NULL, '3410');
INSERT INTO `dvadmin_system_area` VALUES (1147, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '歙县', '341021', 3, 'shexian', 'S', 1, NULL, '3410');
INSERT INTO `dvadmin_system_area` VALUES (1148, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '休宁县', '341022', 3, 'xiuningxian', 'X', 1, NULL, '3410');
INSERT INTO `dvadmin_system_area` VALUES (1149, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '黟县', '341023', 3, 'yixian', 'Y', 1, NULL, '3410');
INSERT INTO `dvadmin_system_area` VALUES (1150, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '祁门县', '341024', 3, 'qimenxian', 'Q', 1, NULL, '3410');
INSERT INTO `dvadmin_system_area` VALUES (1151, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '滁州市', '3411', 2, 'chuzhoushi', 'C', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1152, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '琅琊区', '341102', 3, 'langyaqu', 'L', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1153, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '南谯区', '341103', 3, 'nanqiaoqu', 'N', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1154, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '来安县', '341122', 3, 'laianxian', 'L', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1155, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '全椒县', '341124', 3, 'quanjiaoxian', 'Q', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1156, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '定远县', '341125', 3, 'dingyuanxian', 'D', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1157, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '凤阳县', '341126', 3, 'fengyangxian', 'F', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1158, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '苏滁现代产业园', '341171', 3, 'suchuxiandaichanyeyuan', 'S', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1159, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '滁州经济技术开发区', '341172', 3, 'chuzhoujingjijishukaifaqu', 'C', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1160, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '天长市', '341181', 3, 'tianzhangshi', 'T', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1161, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '明光市', '341182', 3, 'mingguangshi', 'M', 1, NULL, '3411');
INSERT INTO `dvadmin_system_area` VALUES (1162, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '阜阳市', '3412', 2, 'fuyangshi', 'F', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1163, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '颍州区', '341202', 3, 'yingzhouqu', 'Y', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1164, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '颍东区', '341203', 3, 'yingdongqu', 'Y', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1165, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '颍泉区', '341204', 3, 'yingquanqu', 'Y', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1166, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '临泉县', '341221', 3, 'linquanxian', 'L', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1167, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '太和县', '341222', 3, 'taihexian', 'T', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1168, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '阜南县', '341225', 3, 'funanxian', 'F', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1169, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '颍上县', '341226', 3, 'yingshangxian', 'Y', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1170, NULL, NULL, NULL, '2023-11-04 16:46:11.223139', '2023-11-04 16:46:11.223139', '阜阳合肥现代产业园区', '341271', 3, 'fuyanghefeixiandaichanyeyuanqu', 'F', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1171, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '阜阳经济技术开发区', '341272', 3, 'fuyangjingjijishukaifaqu', 'F', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1172, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '界首市', '341282', 3, 'jieshoushi', 'J', 1, NULL, '3412');
INSERT INTO `dvadmin_system_area` VALUES (1173, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '宿州市', '3413', 2, 'suzhoushi', 'S', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1174, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '埇桥区', '341302', 3, 'yongqiaoqu', 'Y', 1, NULL, '3413');
INSERT INTO `dvadmin_system_area` VALUES (1175, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '砀山县', '341321', 3, 'dangshanxian', 'D', 1, NULL, '3413');
INSERT INTO `dvadmin_system_area` VALUES (1176, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '萧县', '341322', 3, 'xiaoxian', 'X', 1, NULL, '3413');
INSERT INTO `dvadmin_system_area` VALUES (1177, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '灵璧县', '341323', 3, 'lingbixian', 'L', 1, NULL, '3413');
INSERT INTO `dvadmin_system_area` VALUES (1178, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '泗县', '341324', 3, 'sixian', 'S', 1, NULL, '3413');
INSERT INTO `dvadmin_system_area` VALUES (1179, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '宿州马鞍山现代产业园区', '341371', 3, 'suzhoumaanshanxiandaichanyeyuanqu', 'S', 1, NULL, '3413');
INSERT INTO `dvadmin_system_area` VALUES (1180, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '宿州经济技术开发区', '341372', 3, 'suzhoujingjijishukaifaqu', 'S', 1, NULL, '3413');
INSERT INTO `dvadmin_system_area` VALUES (1181, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '六安市', '3415', 2, 'luanshi', 'L', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1182, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '金安区', '341502', 3, 'jinanqu', 'J', 1, NULL, '3415');
INSERT INTO `dvadmin_system_area` VALUES (1183, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '裕安区', '341503', 3, 'yuanqu', 'Y', 1, NULL, '3415');
INSERT INTO `dvadmin_system_area` VALUES (1184, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '叶集区', '341504', 3, 'yejiqu', 'Y', 1, NULL, '3415');
INSERT INTO `dvadmin_system_area` VALUES (1185, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '霍邱县', '341522', 3, 'huoqiuxian', 'H', 1, NULL, '3415');
INSERT INTO `dvadmin_system_area` VALUES (1186, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '舒城县', '341523', 3, 'shuchengxian', 'S', 1, NULL, '3415');
INSERT INTO `dvadmin_system_area` VALUES (1187, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '金寨县', '341524', 3, 'jinzhaixian', 'J', 1, NULL, '3415');
INSERT INTO `dvadmin_system_area` VALUES (1188, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '霍山县', '341525', 3, 'huoshanxian', 'H', 1, NULL, '3415');
INSERT INTO `dvadmin_system_area` VALUES (1189, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '亳州市', '3416', 2, 'bozhoushi', 'B', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1190, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '谯城区', '341602', 3, 'qiaochengqu', 'Q', 1, NULL, '3416');
INSERT INTO `dvadmin_system_area` VALUES (1191, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '涡阳县', '341621', 3, 'woyangxian', 'W', 1, NULL, '3416');
INSERT INTO `dvadmin_system_area` VALUES (1192, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '蒙城县', '341622', 3, 'mengchengxian', 'M', 1, NULL, '3416');
INSERT INTO `dvadmin_system_area` VALUES (1193, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '利辛县', '341623', 3, 'lixinxian', 'L', 1, NULL, '3416');
INSERT INTO `dvadmin_system_area` VALUES (1194, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '池州市', '3417', 2, 'chizhoushi', 'C', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1195, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '贵池区', '341702', 3, 'guichiqu', 'G', 1, NULL, '3417');
INSERT INTO `dvadmin_system_area` VALUES (1196, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '东至县', '341721', 3, 'dongzhixian', 'D', 1, NULL, '3417');
INSERT INTO `dvadmin_system_area` VALUES (1197, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '石台县', '341722', 3, 'shitaixian', 'S', 1, NULL, '3417');
INSERT INTO `dvadmin_system_area` VALUES (1198, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '青阳县', '341723', 3, 'qingyangxian', 'Q', 1, NULL, '3417');
INSERT INTO `dvadmin_system_area` VALUES (1199, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '宣城市', '3418', 2, 'xuanchengshi', 'X', 1, NULL, '34');
INSERT INTO `dvadmin_system_area` VALUES (1200, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '宣州区', '341802', 3, 'xuanzhouqu', 'X', 1, NULL, '3418');
INSERT INTO `dvadmin_system_area` VALUES (1201, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '郎溪县', '341821', 3, 'langxixian', 'L', 1, NULL, '3418');
INSERT INTO `dvadmin_system_area` VALUES (1202, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '泾县', '341823', 3, 'jingxian', 'J', 1, NULL, '3418');
INSERT INTO `dvadmin_system_area` VALUES (1203, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '绩溪县', '341824', 3, 'jixixian', 'J', 1, NULL, '3418');
INSERT INTO `dvadmin_system_area` VALUES (1204, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '旌德县', '341825', 3, 'jingdexian', 'J', 1, NULL, '3418');
INSERT INTO `dvadmin_system_area` VALUES (1205, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '宣城市经济开发区', '341871', 3, 'xuanchengshijingjikaifaqu', 'X', 1, NULL, '3418');
INSERT INTO `dvadmin_system_area` VALUES (1206, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '宁国市', '341881', 3, 'ningguoshi', 'N', 1, NULL, '3418');
INSERT INTO `dvadmin_system_area` VALUES (1207, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '广德市', '341882', 3, 'guangdeshi', 'G', 1, NULL, '3418');
INSERT INTO `dvadmin_system_area` VALUES (1208, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '福建省', '35', 1, 'fujiansheng', 'F', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (1209, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '福州市', '3501', 2, 'fuzhoushi', 'F', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1210, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '鼓楼区', '350102', 3, 'gulouqu', 'G', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1211, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '台江区', '350103', 3, 'taijiangqu', 'T', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1212, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '仓山区', '350104', 3, 'cangshanqu', 'C', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1213, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '马尾区', '350105', 3, 'mayiqu', 'M', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1214, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '晋安区', '350111', 3, 'jinanqu', 'J', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1215, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '长乐区', '350112', 3, 'changlequ', 'C', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1216, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '闽侯县', '350121', 3, 'minhouxian', 'M', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1217, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '连江县', '350122', 3, 'lianjiangxian', 'L', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1218, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '罗源县', '350123', 3, 'luoyuanxian', 'L', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1219, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '闽清县', '350124', 3, 'minqingxian', 'M', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1220, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '永泰县', '350125', 3, 'yongtaixian', 'Y', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1221, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '平潭县', '350128', 3, 'pingtanxian', 'P', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1222, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '福清市', '350181', 3, 'fuqingshi', 'F', 1, NULL, '3501');
INSERT INTO `dvadmin_system_area` VALUES (1223, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '厦门市', '3502', 2, 'xiamenshi', 'X', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1224, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '思明区', '350203', 3, 'simingqu', 'S', 1, NULL, '3502');
INSERT INTO `dvadmin_system_area` VALUES (1225, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '海沧区', '350205', 3, 'haicangqu', 'H', 1, NULL, '3502');
INSERT INTO `dvadmin_system_area` VALUES (1226, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '湖里区', '350206', 3, 'huliqu', 'H', 1, NULL, '3502');
INSERT INTO `dvadmin_system_area` VALUES (1227, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '集美区', '350211', 3, 'jimeiqu', 'J', 1, NULL, '3502');
INSERT INTO `dvadmin_system_area` VALUES (1228, NULL, NULL, NULL, '2023-11-04 16:46:11.224139', '2023-11-04 16:46:11.224139', '同安区', '350212', 3, 'tonganqu', 'T', 1, NULL, '3502');
INSERT INTO `dvadmin_system_area` VALUES (1229, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '翔安区', '350213', 3, 'xianganqu', 'X', 1, NULL, '3502');
INSERT INTO `dvadmin_system_area` VALUES (1230, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '莆田市', '3503', 2, 'putianshi', 'P', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1231, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '城厢区', '350302', 3, 'chengxiangqu', 'C', 1, NULL, '3503');
INSERT INTO `dvadmin_system_area` VALUES (1232, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '涵江区', '350303', 3, 'hanjiangqu', 'H', 1, NULL, '3503');
INSERT INTO `dvadmin_system_area` VALUES (1233, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '荔城区', '350304', 3, 'lichengqu', 'L', 1, NULL, '3503');
INSERT INTO `dvadmin_system_area` VALUES (1234, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '秀屿区', '350305', 3, 'xiuyuqu', 'X', 1, NULL, '3503');
INSERT INTO `dvadmin_system_area` VALUES (1235, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '仙游县', '350322', 3, 'xianyouxian', 'X', 1, NULL, '3503');
INSERT INTO `dvadmin_system_area` VALUES (1236, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '三明市', '3504', 2, 'sanmingshi', 'S', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1237, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '梅列区', '350402', 3, 'meiliequ', 'M', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1238, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '三元区', '350403', 3, 'sanyuanqu', 'S', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1239, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '明溪县', '350421', 3, 'mingxixian', 'M', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1240, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '清流县', '350423', 3, 'qingliuxian', 'Q', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1241, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '宁化县', '350424', 3, 'ninghuaxian', 'N', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1242, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '大田县', '350425', 3, 'datianxian', 'D', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1243, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '尤溪县', '350426', 3, 'youxixian', 'Y', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1244, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '沙县', '350427', 3, 'shaxian', 'S', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1245, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '将乐县', '350428', 3, 'jianglexian', 'J', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1246, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '泰宁县', '350429', 3, 'tainingxian', 'T', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1247, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '建宁县', '350430', 3, 'jianningxian', 'J', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1248, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '永安市', '350481', 3, 'yonganshi', 'Y', 1, NULL, '3504');
INSERT INTO `dvadmin_system_area` VALUES (1249, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '泉州市', '3505', 2, 'quanzhoushi', 'Q', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1250, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '鲤城区', '350502', 3, 'lichengqu', 'L', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1251, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '丰泽区', '350503', 3, 'fengzequ', 'F', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1252, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '洛江区', '350504', 3, 'luojiangqu', 'L', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1253, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '泉港区', '350505', 3, 'quangangqu', 'Q', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1254, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '惠安县', '350521', 3, 'huianxian', 'H', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1255, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '安溪县', '350524', 3, 'anxixian', 'A', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1256, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '永春县', '350525', 3, 'yongchunxian', 'Y', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1257, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '德化县', '350526', 3, 'dehuaxian', 'D', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1258, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '金门县', '350527', 3, 'jinmenxian', 'J', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1259, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '石狮市', '350581', 3, 'shishishi', 'S', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1260, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '晋江市', '350582', 3, 'jinjiangshi', 'J', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1261, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '南安市', '350583', 3, 'nananshi', 'N', 1, NULL, '3505');
INSERT INTO `dvadmin_system_area` VALUES (1262, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '漳州市', '3506', 2, 'zhangzhoushi', 'Z', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1263, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '芗城区', '350602', 3, 'xiangchengqu', 'X', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1264, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '龙文区', '350603', 3, 'longwenqu', 'L', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1265, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '云霄县', '350622', 3, 'yunxiaoxian', 'Y', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1266, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '漳浦县', '350623', 3, 'zhangpuxian', 'Z', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1267, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '诏安县', '350624', 3, 'zhaoanxian', 'Z', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1268, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '长泰县', '350625', 3, 'zhangtaixian', 'Z', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1269, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '东山县', '350626', 3, 'dongshanxian', 'D', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1270, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '南靖县', '350627', 3, 'nanjingxian', 'N', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1271, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '平和县', '350628', 3, 'pinghexian', 'P', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1272, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '华安县', '350629', 3, 'huaanxian', 'H', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1273, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '龙海市', '350681', 3, 'longhaishi', 'L', 1, NULL, '3506');
INSERT INTO `dvadmin_system_area` VALUES (1274, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '南平市', '3507', 2, 'nanpingshi', 'N', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1275, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '延平区', '350702', 3, 'yanpingqu', 'Y', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1276, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '建阳区', '350703', 3, 'jianyangqu', 'J', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1277, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '顺昌县', '350721', 3, 'shunchangxian', 'S', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1278, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '浦城县', '350722', 3, 'puchengxian', 'P', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1279, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '光泽县', '350723', 3, 'guangzexian', 'G', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1280, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '松溪县', '350724', 3, 'songxixian', 'S', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1281, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '政和县', '350725', 3, 'zhenghexian', 'Z', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1282, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '邵武市', '350781', 3, 'shaowushi', 'S', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1283, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '武夷山市', '350782', 3, 'wuyishanshi', 'W', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1284, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '建瓯市', '350783', 3, 'jianoushi', 'J', 1, NULL, '3507');
INSERT INTO `dvadmin_system_area` VALUES (1285, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '龙岩市', '3508', 2, 'longyanshi', 'L', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1286, NULL, NULL, NULL, '2023-11-04 16:46:11.225139', '2023-11-04 16:46:11.225139', '新罗区', '350802', 3, 'xinluoqu', 'X', 1, NULL, '3508');
INSERT INTO `dvadmin_system_area` VALUES (1287, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '永定区', '350803', 3, 'yongdingqu', 'Y', 1, NULL, '3508');
INSERT INTO `dvadmin_system_area` VALUES (1288, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '长汀县', '350821', 3, 'changtingxian', 'C', 1, NULL, '3508');
INSERT INTO `dvadmin_system_area` VALUES (1289, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '上杭县', '350823', 3, 'shanghangxian', 'S', 1, NULL, '3508');
INSERT INTO `dvadmin_system_area` VALUES (1290, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '武平县', '350824', 3, 'wupingxian', 'W', 1, NULL, '3508');
INSERT INTO `dvadmin_system_area` VALUES (1291, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '连城县', '350825', 3, 'lianchengxian', 'L', 1, NULL, '3508');
INSERT INTO `dvadmin_system_area` VALUES (1292, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '漳平市', '350881', 3, 'zhangpingshi', 'Z', 1, NULL, '3508');
INSERT INTO `dvadmin_system_area` VALUES (1293, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '宁德市', '3509', 2, 'ningdeshi', 'N', 1, NULL, '35');
INSERT INTO `dvadmin_system_area` VALUES (1294, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '蕉城区', '350902', 3, 'jiaochengqu', 'J', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1295, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '霞浦县', '350921', 3, 'xiapuxian', 'X', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1296, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '古田县', '350922', 3, 'gutianxian', 'G', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1297, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '屏南县', '350923', 3, 'pingnanxian', 'P', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1298, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '寿宁县', '350924', 3, 'shouningxian', 'S', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1299, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '周宁县', '350925', 3, 'zhouningxian', 'Z', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1300, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '柘荣县', '350926', 3, 'zherongxian', 'Z', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1301, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '福安市', '350981', 3, 'fuanshi', 'F', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1302, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '福鼎市', '350982', 3, 'fudingshi', 'F', 1, NULL, '3509');
INSERT INTO `dvadmin_system_area` VALUES (1303, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '江西省', '36', 1, 'jiangxisheng', 'J', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (1304, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '南昌市', '3601', 2, 'nanchangshi', 'N', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1305, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '东湖区', '360102', 3, 'donghuqu', 'D', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1306, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '西湖区', '360103', 3, 'xihuqu', 'X', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1307, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '青云谱区', '360104', 3, 'qingyunpuqu', 'Q', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1308, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '青山湖区', '360111', 3, 'qingshanhuqu', 'Q', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1309, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '新建区', '360112', 3, 'xinjianqu', 'X', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1310, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '红谷滩区', '360113', 3, 'honggutanqu', 'H', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1311, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '南昌县', '360121', 3, 'nanchangxian', 'N', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1312, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '安义县', '360123', 3, 'anyixian', 'A', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1313, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '进贤县', '360124', 3, 'jinxianxian', 'J', 1, NULL, '3601');
INSERT INTO `dvadmin_system_area` VALUES (1314, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '景德镇市', '3602', 2, 'jingdezhenshi', 'J', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1315, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '昌江区', '360202', 3, 'changjiangqu', 'C', 1, NULL, '3602');
INSERT INTO `dvadmin_system_area` VALUES (1316, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '珠山区', '360203', 3, 'zhushanqu', 'Z', 1, NULL, '3602');
INSERT INTO `dvadmin_system_area` VALUES (1317, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '浮梁县', '360222', 3, 'fuliangxian', 'F', 1, NULL, '3602');
INSERT INTO `dvadmin_system_area` VALUES (1318, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '乐平市', '360281', 3, 'lepingshi', 'L', 1, NULL, '3602');
INSERT INTO `dvadmin_system_area` VALUES (1319, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '萍乡市', '3603', 2, 'pingxiangshi', 'P', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1320, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '安源区', '360302', 3, 'anyuanqu', 'A', 1, NULL, '3603');
INSERT INTO `dvadmin_system_area` VALUES (1321, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '湘东区', '360313', 3, 'xiangdongqu', 'X', 1, NULL, '3603');
INSERT INTO `dvadmin_system_area` VALUES (1322, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '莲花县', '360321', 3, 'lianhuaxian', 'L', 1, NULL, '3603');
INSERT INTO `dvadmin_system_area` VALUES (1323, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '上栗县', '360322', 3, 'shanglixian', 'S', 1, NULL, '3603');
INSERT INTO `dvadmin_system_area` VALUES (1324, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '芦溪县', '360323', 3, 'luxixian', 'L', 1, NULL, '3603');
INSERT INTO `dvadmin_system_area` VALUES (1325, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '九江市', '3604', 2, 'jiujiangshi', 'J', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1326, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '濂溪区', '360402', 3, 'lianxiqu', 'L', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1327, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '浔阳区', '360403', 3, 'xunyangqu', 'X', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1328, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '柴桑区', '360404', 3, 'chaisangqu', 'C', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1329, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '武宁县', '360423', 3, 'wuningxian', 'W', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1330, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '修水县', '360424', 3, 'xiushuixian', 'X', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1331, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '永修县', '360425', 3, 'yongxiuxian', 'Y', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1332, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '德安县', '360426', 3, 'deanxian', 'D', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1333, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '都昌县', '360428', 3, 'douchangxian', 'D', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1334, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '湖口县', '360429', 3, 'hukouxian', 'H', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1335, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '彭泽县', '360430', 3, 'pengzexian', 'P', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1336, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '瑞昌市', '360481', 3, 'ruichangshi', 'R', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1337, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '共青城市', '360482', 3, 'gongqingchengshi', 'G', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1338, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '庐山市', '360483', 3, 'lushanshi', 'L', 1, NULL, '3604');
INSERT INTO `dvadmin_system_area` VALUES (1339, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '新余市', '3605', 2, 'xinyushi', 'X', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1340, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '渝水区', '360502', 3, 'yushuiqu', 'Y', 1, NULL, '3605');
INSERT INTO `dvadmin_system_area` VALUES (1341, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '分宜县', '360521', 3, 'fenyixian', 'F', 1, NULL, '3605');
INSERT INTO `dvadmin_system_area` VALUES (1342, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '鹰潭市', '3606', 2, 'yingtanshi', 'Y', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1343, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '月湖区', '360602', 3, 'yuehuqu', 'Y', 1, NULL, '3606');
INSERT INTO `dvadmin_system_area` VALUES (1344, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '余江区', '360603', 3, 'yujiangqu', 'Y', 1, NULL, '3606');
INSERT INTO `dvadmin_system_area` VALUES (1345, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '贵溪市', '360681', 3, 'guixishi', 'G', 1, NULL, '3606');
INSERT INTO `dvadmin_system_area` VALUES (1346, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '赣州市', '3607', 2, 'ganzhoushi', 'G', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1347, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '章贡区', '360702', 3, 'zhanggongqu', 'Z', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1348, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '南康区', '360703', 3, 'nankangqu', 'N', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1349, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '赣县区', '360704', 3, 'ganxianqu', 'G', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1350, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '信丰县', '360722', 3, 'xinfengxian', 'X', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1351, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '大余县', '360723', 3, 'dayuxian', 'D', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1352, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '上犹县', '360724', 3, 'shangyouxian', 'S', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1353, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '崇义县', '360725', 3, 'chongyixian', 'C', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1354, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '安远县', '360726', 3, 'anyuanxian', 'A', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1355, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '定南县', '360728', 3, 'dingnanxian', 'D', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1356, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '全南县', '360729', 3, 'quannanxian', 'Q', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1357, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '宁都县', '360730', 3, 'ningdouxian', 'N', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1358, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '于都县', '360731', 3, 'yudouxian', 'Y', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1359, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '兴国县', '360732', 3, 'xingguoxian', 'X', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1360, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '会昌县', '360733', 3, 'huichangxian', 'H', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1361, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '寻乌县', '360734', 3, 'xunwuxian', 'X', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1362, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '石城县', '360735', 3, 'shichengxian', 'S', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1363, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '瑞金市', '360781', 3, 'ruijinshi', 'R', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1364, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '龙南市', '360783', 3, 'longnanshi', 'L', 1, NULL, '3607');
INSERT INTO `dvadmin_system_area` VALUES (1365, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '吉安市', '3608', 2, 'jianshi', 'J', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1366, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '吉州区', '360802', 3, 'jizhouqu', 'J', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1367, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '青原区', '360803', 3, 'qingyuanqu', 'Q', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1368, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '吉安县', '360821', 3, 'jianxian', 'J', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1369, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '吉水县', '360822', 3, 'jishuixian', 'J', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1370, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '峡江县', '360823', 3, 'xiajiangxian', 'X', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1371, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '新干县', '360824', 3, 'xinganxian', 'X', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1372, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '永丰县', '360825', 3, 'yongfengxian', 'Y', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1373, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '泰和县', '360826', 3, 'taihexian', 'T', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1374, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.226139', '遂川县', '360827', 3, 'suichuanxian', 'S', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1375, NULL, NULL, NULL, '2023-11-04 16:46:11.226139', '2023-11-04 16:46:11.227644', '万安县', '360828', 3, 'wananxian', 'W', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1376, NULL, NULL, NULL, '2023-11-04 16:46:11.227644', '2023-11-04 16:46:11.227644', '安福县', '360829', 3, 'anfuxian', 'A', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1377, NULL, NULL, NULL, '2023-11-04 16:46:11.227644', '2023-11-04 16:46:11.227644', '永新县', '360830', 3, 'yongxinxian', 'Y', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1378, NULL, NULL, NULL, '2023-11-04 16:46:11.227644', '2023-11-04 16:46:11.227644', '井冈山市', '360881', 3, 'jinggangshanshi', 'J', 1, NULL, '3608');
INSERT INTO `dvadmin_system_area` VALUES (1379, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '宜春市', '3609', 2, 'yichunshi', 'Y', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1380, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '袁州区', '360902', 3, 'yuanzhouqu', 'Y', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1381, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '奉新县', '360921', 3, 'fengxinxian', 'F', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1382, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '万载县', '360922', 3, 'wanzaixian', 'W', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1383, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '上高县', '360923', 3, 'shanggaoxian', 'S', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1384, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '宜丰县', '360924', 3, 'yifengxian', 'Y', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1385, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '靖安县', '360925', 3, 'jinganxian', 'J', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1386, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '铜鼓县', '360926', 3, 'tongguxian', 'T', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1387, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '丰城市', '360981', 3, 'fengchengshi', 'F', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1388, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '樟树市', '360982', 3, 'zhangshushi', 'Z', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1389, NULL, NULL, NULL, '2023-11-04 16:46:11.227752', '2023-11-04 16:46:11.227752', '高安市', '360983', 3, 'gaoanshi', 'G', 1, NULL, '3609');
INSERT INTO `dvadmin_system_area` VALUES (1390, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '抚州市', '3610', 2, 'fuzhoushi', 'F', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1391, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '临川区', '361002', 3, 'linchuanqu', 'L', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1392, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '东乡区', '361003', 3, 'dongxiangqu', 'D', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1393, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '南城县', '361021', 3, 'nanchengxian', 'N', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1394, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '黎川县', '361022', 3, 'lichuanxian', 'L', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1395, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '南丰县', '361023', 3, 'nanfengxian', 'N', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1396, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '崇仁县', '361024', 3, 'chongrenxian', 'C', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1397, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '乐安县', '361025', 3, 'leanxian', 'L', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1398, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '宜黄县', '361026', 3, 'yihuangxian', 'Y', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1399, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '金溪县', '361027', 3, 'jinxixian', 'J', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1400, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '资溪县', '361028', 3, 'zixixian', 'Z', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1401, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '广昌县', '361030', 3, 'guangchangxian', 'G', 1, NULL, '3610');
INSERT INTO `dvadmin_system_area` VALUES (1402, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '上饶市', '3611', 2, 'shangraoshi', 'S', 1, NULL, '36');
INSERT INTO `dvadmin_system_area` VALUES (1403, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '信州区', '361102', 3, 'xinzhouqu', 'X', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1404, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '广丰区', '361103', 3, 'guangfengqu', 'G', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1405, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '广信区', '361104', 3, 'guangxinqu', 'G', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1406, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '玉山县', '361123', 3, 'yushanxian', 'Y', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1407, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '铅山县', '361124', 3, 'yanshanxian', 'Y', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1408, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '横峰县', '361125', 3, 'hengfengxian', 'H', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1409, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '弋阳县', '361126', 3, 'yiyangxian', 'Y', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1410, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '余干县', '361127', 3, 'yuganxian', 'Y', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1411, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '鄱阳县', '361128', 3, 'poyangxian', 'P', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1412, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '万年县', '361129', 3, 'wannianxian', 'W', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1413, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '婺源县', '361130', 3, 'wuyuanxian', 'W', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1414, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '德兴市', '361181', 3, 'dexingshi', 'D', 1, NULL, '3611');
INSERT INTO `dvadmin_system_area` VALUES (1415, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '山东省', '37', 1, 'shandongsheng', 'S', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (1416, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '济南市', '3701', 2, 'jinanshi', 'J', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1417, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '历下区', '370102', 3, 'lixiaqu', 'L', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1418, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '市中区', '370103', 3, 'shizhongqu', 'S', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1419, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '槐荫区', '370104', 3, 'huaiyinqu', 'H', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1420, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '天桥区', '370105', 3, 'tianqiaoqu', 'T', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1421, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '历城区', '370112', 3, 'lichengqu', 'L', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1422, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '长清区', '370113', 3, 'zhangqingqu', 'Z', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1423, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '章丘区', '370114', 3, 'zhangqiuqu', 'Z', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1424, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '济阳区', '370115', 3, 'jiyangqu', 'J', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1425, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '莱芜区', '370116', 3, 'laiwuqu', 'L', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1426, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '钢城区', '370117', 3, 'gangchengqu', 'G', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1427, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '平阴县', '370124', 3, 'pingyinxian', 'P', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1428, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '商河县', '370126', 3, 'shanghexian', 'S', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1429, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '济南高新技术产业开发区', '370171', 3, 'jinangaoxinjishuchanyekaifaqu', 'J', 1, NULL, '3701');
INSERT INTO `dvadmin_system_area` VALUES (1430, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '青岛市', '3702', 2, 'qingdaoshi', 'Q', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1431, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '市南区', '370202', 3, 'shinanqu', 'S', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1432, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '市北区', '370203', 3, 'shibeiqu', 'S', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1433, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '黄岛区', '370211', 3, 'huangdaoqu', 'H', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1434, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '崂山区', '370212', 3, 'laoshanqu', 'L', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1435, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '李沧区', '370213', 3, 'licangqu', 'L', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1436, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '城阳区', '370214', 3, 'chengyangqu', 'C', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1437, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '即墨区', '370215', 3, 'jimoqu', 'J', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1438, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '青岛高新技术产业开发区', '370271', 3, 'qingdaogaoxinjishuchanyekaifaqu', 'Q', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1439, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '胶州市', '370281', 3, 'jiaozhoushi', 'J', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1440, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '平度市', '370283', 3, 'pingdushi', 'P', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1441, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '莱西市', '370285', 3, 'laixishi', 'L', 1, NULL, '3702');
INSERT INTO `dvadmin_system_area` VALUES (1442, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '淄博市', '3703', 2, 'ziboshi', 'Z', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1443, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '淄川区', '370302', 3, 'zichuanqu', 'Z', 1, NULL, '3703');
INSERT INTO `dvadmin_system_area` VALUES (1444, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '张店区', '370303', 3, 'zhangdianqu', 'Z', 1, NULL, '3703');
INSERT INTO `dvadmin_system_area` VALUES (1445, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '博山区', '370304', 3, 'boshanqu', 'B', 1, NULL, '3703');
INSERT INTO `dvadmin_system_area` VALUES (1446, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '临淄区', '370305', 3, 'linziqu', 'L', 1, NULL, '3703');
INSERT INTO `dvadmin_system_area` VALUES (1447, NULL, NULL, NULL, '2023-11-04 16:46:11.228005', '2023-11-04 16:46:11.228005', '周村区', '370306', 3, 'zhoucunqu', 'Z', 1, NULL, '3703');
INSERT INTO `dvadmin_system_area` VALUES (1448, NULL, NULL, NULL, '2023-11-04 16:46:11.229011', '2023-11-04 16:46:11.229011', '桓台县', '370321', 3, 'huantaixian', 'H', 1, NULL, '3703');
INSERT INTO `dvadmin_system_area` VALUES (1449, NULL, NULL, NULL, '2023-11-04 16:46:11.229011', '2023-11-04 16:46:11.229011', '高青县', '370322', 3, 'gaoqingxian', 'G', 1, NULL, '3703');
INSERT INTO `dvadmin_system_area` VALUES (1450, NULL, NULL, NULL, '2023-11-04 16:46:11.229011', '2023-11-04 16:46:11.229011', '沂源县', '370323', 3, 'yiyuanxian', 'Y', 1, NULL, '3703');
INSERT INTO `dvadmin_system_area` VALUES (1451, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '枣庄市', '3704', 2, 'zaozhuangshi', 'Z', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1452, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '市中区', '370402', 3, 'shizhongqu', 'S', 1, NULL, '3704');
INSERT INTO `dvadmin_system_area` VALUES (1453, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '薛城区', '370403', 3, 'xuechengqu', 'X', 1, NULL, '3704');
INSERT INTO `dvadmin_system_area` VALUES (1454, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '峄城区', '370404', 3, 'yichengqu', 'Y', 1, NULL, '3704');
INSERT INTO `dvadmin_system_area` VALUES (1455, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '台儿庄区', '370405', 3, 'taierzhuangqu', 'T', 1, NULL, '3704');
INSERT INTO `dvadmin_system_area` VALUES (1456, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '山亭区', '370406', 3, 'shantingqu', 'S', 1, NULL, '3704');
INSERT INTO `dvadmin_system_area` VALUES (1457, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '滕州市', '370481', 3, 'tengzhoushi', 'T', 1, NULL, '3704');
INSERT INTO `dvadmin_system_area` VALUES (1458, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '东营市', '3705', 2, 'dongyingshi', 'D', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1459, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '东营区', '370502', 3, 'dongyingqu', 'D', 1, NULL, '3705');
INSERT INTO `dvadmin_system_area` VALUES (1460, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '河口区', '370503', 3, 'hekouqu', 'H', 1, NULL, '3705');
INSERT INTO `dvadmin_system_area` VALUES (1461, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '垦利区', '370505', 3, 'kenliqu', 'K', 1, NULL, '3705');
INSERT INTO `dvadmin_system_area` VALUES (1462, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '利津县', '370522', 3, 'lijinxian', 'L', 1, NULL, '3705');
INSERT INTO `dvadmin_system_area` VALUES (1463, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '广饶县', '370523', 3, 'guangraoxian', 'G', 1, NULL, '3705');
INSERT INTO `dvadmin_system_area` VALUES (1464, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '东营经济技术开发区', '370571', 3, 'dongyingjingjijishukaifaqu', 'D', 1, NULL, '3705');
INSERT INTO `dvadmin_system_area` VALUES (1465, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '东营港经济开发区', '370572', 3, 'dongyinggangjingjikaifaqu', 'D', 1, NULL, '3705');
INSERT INTO `dvadmin_system_area` VALUES (1466, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '烟台市', '3706', 2, 'yantaishi', 'Y', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1467, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '芝罘区', '370602', 3, 'zhifuqu', 'Z', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1468, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '福山区', '370611', 3, 'fushanqu', 'F', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1469, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '牟平区', '370612', 3, 'mupingqu', 'M', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1470, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '莱山区', '370613', 3, 'laishanqu', 'L', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1471, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '蓬莱区', '370614', 3, 'penglaiqu', 'P', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1472, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '烟台高新技术产业开发区', '370671', 3, 'yantaigaoxinjishuchanyekaifaqu', 'Y', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1473, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '烟台经济技术开发区', '370672', 3, 'yantaijingjijishukaifaqu', 'Y', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1474, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '龙口市', '370681', 3, 'longkoushi', 'L', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1475, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '莱阳市', '370682', 3, 'laiyangshi', 'L', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1476, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '莱州市', '370683', 3, 'laizhoushi', 'L', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1477, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '招远市', '370685', 3, 'zhaoyuanshi', 'Z', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1478, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '栖霞市', '370686', 3, 'qixiashi', 'Q', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1479, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '海阳市', '370687', 3, 'haiyangshi', 'H', 1, NULL, '3706');
INSERT INTO `dvadmin_system_area` VALUES (1480, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '潍坊市', '3707', 2, 'weifangshi', 'W', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1481, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '潍城区', '370702', 3, 'weichengqu', 'W', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1482, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '寒亭区', '370703', 3, 'hantingqu', 'H', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1483, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '坊子区', '370704', 3, 'fangziqu', 'F', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1484, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '奎文区', '370705', 3, 'kuiwenqu', 'K', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1485, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '临朐县', '370724', 3, 'linquxian', 'L', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1486, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '昌乐县', '370725', 3, 'changlexian', 'C', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1487, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '潍坊滨海经济技术开发区', '370772', 3, 'weifangbinhaijingjijishukaifaqu', 'W', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1488, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '青州市', '370781', 3, 'qingzhoushi', 'Q', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1489, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '诸城市', '370782', 3, 'zhuchengshi', 'Z', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1490, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '寿光市', '370783', 3, 'shouguangshi', 'S', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1491, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '安丘市', '370784', 3, 'anqiushi', 'A', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1492, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '高密市', '370785', 3, 'gaomishi', 'G', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1493, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '昌邑市', '370786', 3, 'changyishi', 'C', 1, NULL, '3707');
INSERT INTO `dvadmin_system_area` VALUES (1494, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '济宁市', '3708', 2, 'jiningshi', 'J', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1495, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '任城区', '370811', 3, 'renchengqu', 'R', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1496, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '兖州区', '370812', 3, 'yanzhouqu', 'Y', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1497, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '微山县', '370826', 3, 'weishanxian', 'W', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1498, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '鱼台县', '370827', 3, 'yutaixian', 'Y', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1499, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '金乡县', '370828', 3, 'jinxiangxian', 'J', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1500, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '嘉祥县', '370829', 3, 'jiaxiangxian', 'J', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1501, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '汶上县', '370830', 3, 'wenshangxian', 'W', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1502, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '泗水县', '370831', 3, 'sishuixian', 'S', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1503, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '梁山县', '370832', 3, 'liangshanxian', 'L', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1504, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '济宁高新技术产业开发区', '370871', 3, 'jininggaoxinjishuchanyekaifaqu', 'J', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1505, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '曲阜市', '370881', 3, 'qufushi', 'Q', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1506, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '邹城市', '370883', 3, 'zouchengshi', 'Z', 1, NULL, '3708');
INSERT INTO `dvadmin_system_area` VALUES (1507, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '泰安市', '3709', 2, 'taianshi', 'T', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1508, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.229068', '泰山区', '370902', 3, 'taishanqu', 'T', 1, NULL, '3709');
INSERT INTO `dvadmin_system_area` VALUES (1509, NULL, NULL, NULL, '2023-11-04 16:46:11.229068', '2023-11-04 16:46:11.230072', '岱岳区', '370911', 3, 'daiyuequ', 'D', 1, NULL, '3709');
INSERT INTO `dvadmin_system_area` VALUES (1510, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '宁阳县', '370921', 3, 'ningyangxian', 'N', 1, NULL, '3709');
INSERT INTO `dvadmin_system_area` VALUES (1511, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '东平县', '370923', 3, 'dongpingxian', 'D', 1, NULL, '3709');
INSERT INTO `dvadmin_system_area` VALUES (1512, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '新泰市', '370982', 3, 'xintaishi', 'X', 1, NULL, '3709');
INSERT INTO `dvadmin_system_area` VALUES (1513, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '肥城市', '370983', 3, 'feichengshi', 'F', 1, NULL, '3709');
INSERT INTO `dvadmin_system_area` VALUES (1514, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '威海市', '3710', 2, 'weihaishi', 'W', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1515, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '环翠区', '371002', 3, 'huancuiqu', 'H', 1, NULL, '3710');
INSERT INTO `dvadmin_system_area` VALUES (1516, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '文登区', '371003', 3, 'wendengqu', 'W', 1, NULL, '3710');
INSERT INTO `dvadmin_system_area` VALUES (1517, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '威海火炬高技术产业开发区', '371071', 3, 'weihaihuojugaojishuchanyekaifaqu', 'W', 1, NULL, '3710');
INSERT INTO `dvadmin_system_area` VALUES (1518, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '威海经济技术开发区', '371072', 3, 'weihaijingjijishukaifaqu', 'W', 1, NULL, '3710');
INSERT INTO `dvadmin_system_area` VALUES (1519, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '威海临港经济技术开发区', '371073', 3, 'weihailingangjingjijishukaifaqu', 'W', 1, NULL, '3710');
INSERT INTO `dvadmin_system_area` VALUES (1520, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '荣成市', '371082', 3, 'rongchengshi', 'R', 1, NULL, '3710');
INSERT INTO `dvadmin_system_area` VALUES (1521, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '乳山市', '371083', 3, 'rushanshi', 'R', 1, NULL, '3710');
INSERT INTO `dvadmin_system_area` VALUES (1522, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '日照市', '3711', 2, 'rizhaoshi', 'R', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1523, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '东港区', '371102', 3, 'donggangqu', 'D', 1, NULL, '3711');
INSERT INTO `dvadmin_system_area` VALUES (1524, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '岚山区', '371103', 3, 'lanshanqu', 'L', 1, NULL, '3711');
INSERT INTO `dvadmin_system_area` VALUES (1525, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '五莲县', '371121', 3, 'wulianxian', 'W', 1, NULL, '3711');
INSERT INTO `dvadmin_system_area` VALUES (1526, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '莒县', '371122', 3, 'juxian', 'J', 1, NULL, '3711');
INSERT INTO `dvadmin_system_area` VALUES (1527, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '日照经济技术开发区', '371171', 3, 'rizhaojingjijishukaifaqu', 'R', 1, NULL, '3711');
INSERT INTO `dvadmin_system_area` VALUES (1528, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '临沂市', '3713', 2, 'linyishi', 'L', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1529, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '兰山区', '371302', 3, 'lanshanqu', 'L', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1530, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '罗庄区', '371311', 3, 'luozhuangqu', 'L', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1531, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '河东区', '371312', 3, 'hedongqu', 'H', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1532, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '沂南县', '371321', 3, 'yinanxian', 'Y', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1533, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '郯城县', '371322', 3, 'tanchengxian', 'T', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1534, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '沂水县', '371323', 3, 'yishuixian', 'Y', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1535, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '兰陵县', '371324', 3, 'lanlingxian', 'L', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1536, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '费县', '371325', 3, 'feixian', 'F', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1537, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '平邑县', '371326', 3, 'pingyixian', 'P', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1538, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '莒南县', '371327', 3, 'junanxian', 'J', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1539, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '蒙阴县', '371328', 3, 'mengyinxian', 'M', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1540, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '临沭县', '371329', 3, 'linshuxian', 'L', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1541, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '临沂高新技术产业开发区', '371371', 3, 'linyigaoxinjishuchanyekaifaqu', 'L', 1, NULL, '3713');
INSERT INTO `dvadmin_system_area` VALUES (1542, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '德州市', '3714', 2, 'dezhoushi', 'D', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1543, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '德城区', '371402', 3, 'dechengqu', 'D', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1544, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '陵城区', '371403', 3, 'lingchengqu', 'L', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1545, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '宁津县', '371422', 3, 'ningjinxian', 'N', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1546, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '庆云县', '371423', 3, 'qingyunxian', 'Q', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1547, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '临邑县', '371424', 3, 'linyixian', 'L', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1548, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '齐河县', '371425', 3, 'qihexian', 'Q', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1549, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '平原县', '371426', 3, 'pingyuanxian', 'P', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1550, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '夏津县', '371427', 3, 'xiajinxian', 'X', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1551, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '武城县', '371428', 3, 'wuchengxian', 'W', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1552, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '德州经济技术开发区', '371471', 3, 'dezhoujingjijishukaifaqu', 'D', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1553, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '德州运河经济开发区', '371472', 3, 'dezhouyunhejingjikaifaqu', 'D', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1554, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '乐陵市', '371481', 3, 'lelingshi', 'L', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1555, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '禹城市', '371482', 3, 'yuchengshi', 'Y', 1, NULL, '3714');
INSERT INTO `dvadmin_system_area` VALUES (1556, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '聊城市', '3715', 2, 'liaochengshi', 'L', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1557, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '东昌府区', '371502', 3, 'dongchangfuqu', 'D', 1, NULL, '3715');
INSERT INTO `dvadmin_system_area` VALUES (1558, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '茌平区', '371503', 3, 'chipingqu', 'C', 1, NULL, '3715');
INSERT INTO `dvadmin_system_area` VALUES (1559, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '阳谷县', '371521', 3, 'yangguxian', 'Y', 1, NULL, '3715');
INSERT INTO `dvadmin_system_area` VALUES (1560, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '莘县', '371522', 3, 'shenxian', 'S', 1, NULL, '3715');
INSERT INTO `dvadmin_system_area` VALUES (1561, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '东阿县', '371524', 3, 'dongexian', 'D', 1, NULL, '3715');
INSERT INTO `dvadmin_system_area` VALUES (1562, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '冠县', '371525', 3, 'guanxian', 'G', 1, NULL, '3715');
INSERT INTO `dvadmin_system_area` VALUES (1563, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '高唐县', '371526', 3, 'gaotangxian', 'G', 1, NULL, '3715');
INSERT INTO `dvadmin_system_area` VALUES (1564, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '临清市', '371581', 3, 'linqingshi', 'L', 1, NULL, '3715');
INSERT INTO `dvadmin_system_area` VALUES (1565, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '滨州市', '3716', 2, 'binzhoushi', 'B', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1566, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '滨城区', '371602', 3, 'binchengqu', 'B', 1, NULL, '3716');
INSERT INTO `dvadmin_system_area` VALUES (1567, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '沾化区', '371603', 3, 'zhanhuaqu', 'Z', 1, NULL, '3716');
INSERT INTO `dvadmin_system_area` VALUES (1568, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '惠民县', '371621', 3, 'huiminxian', 'H', 1, NULL, '3716');
INSERT INTO `dvadmin_system_area` VALUES (1569, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '阳信县', '371622', 3, 'yangxinxian', 'Y', 1, NULL, '3716');
INSERT INTO `dvadmin_system_area` VALUES (1570, NULL, NULL, NULL, '2023-11-04 16:46:11.230072', '2023-11-04 16:46:11.230072', '无棣县', '371623', 3, 'wudixian', 'W', 1, NULL, '3716');
INSERT INTO `dvadmin_system_area` VALUES (1571, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '博兴县', '371625', 3, 'boxingxian', 'B', 1, NULL, '3716');
INSERT INTO `dvadmin_system_area` VALUES (1572, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '邹平市', '371681', 3, 'zoupingshi', 'Z', 1, NULL, '3716');
INSERT INTO `dvadmin_system_area` VALUES (1573, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '菏泽市', '3717', 2, 'hezeshi', 'H', 1, NULL, '37');
INSERT INTO `dvadmin_system_area` VALUES (1574, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '牡丹区', '371702', 3, 'mudanqu', 'M', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1575, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '定陶区', '371703', 3, 'dingtaoqu', 'D', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1576, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '曹县', '371721', 3, 'caoxian', 'C', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1577, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '单县', '371722', 3, 'danxian', 'D', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1578, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '成武县', '371723', 3, 'chengwuxian', 'C', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1579, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '巨野县', '371724', 3, 'juyexian', 'J', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1580, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '郓城县', '371725', 3, 'yunchengxian', 'Y', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1581, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '鄄城县', '371726', 3, 'juanchengxian', 'J', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1582, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '东明县', '371728', 3, 'dongmingxian', 'D', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1583, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '菏泽经济技术开发区', '371771', 3, 'hezejingjijishukaifaqu', 'H', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1584, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '菏泽高新技术开发区', '371772', 3, 'hezegaoxinjishukaifaqu', 'H', 1, NULL, '3717');
INSERT INTO `dvadmin_system_area` VALUES (1585, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '河南省', '41', 1, 'henansheng', 'H', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (1586, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '郑州市', '4101', 2, 'zhengzhoushi', 'Z', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1587, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '中原区', '410102', 3, 'zhongyuanqu', 'Z', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1588, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '二七区', '410103', 3, 'erqiqu', 'E', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1589, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '管城回族区', '410104', 3, 'guanchenghuizuqu', 'G', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1590, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '金水区', '410105', 3, 'jinshuiqu', 'J', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1591, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '上街区', '410106', 3, 'shangjiequ', 'S', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1592, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '惠济区', '410108', 3, 'huijiqu', 'H', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1593, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '中牟县', '410122', 3, 'zhongmuxian', 'Z', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1594, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '郑州经济技术开发区', '410171', 3, 'zhengzhoujingjijishukaifaqu', 'Z', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1595, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '郑州高新技术产业开发区', '410172', 3, 'zhengzhougaoxinjishuchanyekaifaqu', 'Z', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1596, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '郑州航空港经济综合实验区', '410173', 3, 'zhengzhouhangkonggangjingjizongheshiyanqu', 'Z', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1597, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '巩义市', '410181', 3, 'gongyishi', 'G', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1598, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '荥阳市', '410182', 3, 'xingyangshi', 'X', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1599, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '新密市', '410183', 3, 'xinmishi', 'X', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1600, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '新郑市', '410184', 3, 'xinzhengshi', 'X', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1601, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '登封市', '410185', 3, 'dengfengshi', 'D', 1, NULL, '4101');
INSERT INTO `dvadmin_system_area` VALUES (1602, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '开封市', '4102', 2, 'kaifengshi', 'K', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1603, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '龙亭区', '410202', 3, 'longtingqu', 'L', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1604, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '顺河回族区', '410203', 3, 'shunhehuizuqu', 'S', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1605, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '鼓楼区', '410204', 3, 'gulouqu', 'G', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1606, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '禹王台区', '410205', 3, 'yuwangtaiqu', 'Y', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1607, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '祥符区', '410212', 3, 'xiangfuqu', 'X', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1608, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '杞县', '410221', 3, 'qixian', 'Q', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1609, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '通许县', '410222', 3, 'tongxuxian', 'T', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1610, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '尉氏县', '410223', 3, 'weishixian', 'W', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1611, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '兰考县', '410225', 3, 'lankaoxian', 'L', 1, NULL, '4102');
INSERT INTO `dvadmin_system_area` VALUES (1612, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '洛阳市', '4103', 2, 'luoyangshi', 'L', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1613, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '老城区', '410302', 3, 'laochengqu', 'L', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1614, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '西工区', '410303', 3, 'xigongqu', 'X', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1615, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '瀍河回族区', '410304', 3, 'chanhehuizuqu', 'C', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1616, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '涧西区', '410305', 3, 'jianxiqu', 'J', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1617, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '吉利区', '410306', 3, 'jiliqu', 'J', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1618, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '洛龙区', '410311', 3, 'luolongqu', 'L', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1619, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '孟津县', '410322', 3, 'mengjinxian', 'M', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1620, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '新安县', '410323', 3, 'xinanxian', 'X', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1621, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '栾川县', '410324', 3, 'luanchuanxian', 'L', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1622, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '嵩县', '410325', 3, 'songxian', 'S', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1623, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '汝阳县', '410326', 3, 'ruyangxian', 'R', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1624, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '宜阳县', '410327', 3, 'yiyangxian', 'Y', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1625, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '洛宁县', '410328', 3, 'luoningxian', 'L', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1626, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '伊川县', '410329', 3, 'yichuanxian', 'Y', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1627, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '洛阳高新技术产业开发区', '410371', 3, 'luoyanggaoxinjishuchanyekaifaqu', 'L', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1628, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '偃师市', '410381', 3, 'yanshishi', 'Y', 1, NULL, '4103');
INSERT INTO `dvadmin_system_area` VALUES (1629, NULL, NULL, NULL, '2023-11-04 16:46:11.231126', '2023-11-04 16:46:11.231126', '平顶山市', '4104', 2, 'pingdingshanshi', 'P', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1630, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '新华区', '410402', 3, 'xinhuaqu', 'X', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1631, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '卫东区', '410403', 3, 'weidongqu', 'W', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1632, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '石龙区', '410404', 3, 'shilongqu', 'S', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1633, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '湛河区', '410411', 3, 'zhanhequ', 'Z', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1634, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '宝丰县', '410421', 3, 'baofengxian', 'B', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1635, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '叶县', '410422', 3, 'yexian', 'Y', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1636, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '鲁山县', '410423', 3, 'lushanxian', 'L', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1637, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '郏县', '410425', 3, 'jiaxian', 'J', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1638, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '平顶山高新技术产业开发区', '410471', 3, 'pingdingshangaoxinjishuchanyekaifaqu', 'P', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1639, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '平顶山市城乡一体化示范区', '410472', 3, 'pingdingshanshichengxiangyitihuashifanqu', 'P', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1640, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '舞钢市', '410481', 3, 'wugangshi', 'W', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1641, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '汝州市', '410482', 3, 'ruzhoushi', 'R', 1, NULL, '4104');
INSERT INTO `dvadmin_system_area` VALUES (1642, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '安阳市', '4105', 2, 'anyangshi', 'A', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1643, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '文峰区', '410502', 3, 'wenfengqu', 'W', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1644, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '北关区', '410503', 3, 'beiguanqu', 'B', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1645, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '殷都区', '410505', 3, 'yindouqu', 'Y', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1646, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '龙安区', '410506', 3, 'longanqu', 'L', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1647, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '安阳县', '410522', 3, 'anyangxian', 'A', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1648, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '汤阴县', '410523', 3, 'tangyinxian', 'T', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1649, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '滑县', '410526', 3, 'huaxian', 'H', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1650, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '内黄县', '410527', 3, 'neihuangxian', 'N', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1651, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '安阳高新技术产业开发区', '410571', 3, 'anyanggaoxinjishuchanyekaifaqu', 'A', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1652, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '林州市', '410581', 3, 'linzhoushi', 'L', 1, NULL, '4105');
INSERT INTO `dvadmin_system_area` VALUES (1653, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '鹤壁市', '4106', 2, 'hebishi', 'H', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1654, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '鹤山区', '410602', 3, 'heshanqu', 'H', 1, NULL, '4106');
INSERT INTO `dvadmin_system_area` VALUES (1655, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '山城区', '410603', 3, 'shanchengqu', 'S', 1, NULL, '4106');
INSERT INTO `dvadmin_system_area` VALUES (1656, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '淇滨区', '410611', 3, 'qibinqu', 'Q', 1, NULL, '4106');
INSERT INTO `dvadmin_system_area` VALUES (1657, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '浚县', '410621', 3, 'junxian', 'J', 1, NULL, '4106');
INSERT INTO `dvadmin_system_area` VALUES (1658, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '淇县', '410622', 3, 'qixian', 'Q', 1, NULL, '4106');
INSERT INTO `dvadmin_system_area` VALUES (1659, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '鹤壁经济技术开发区', '410671', 3, 'hebijingjijishukaifaqu', 'H', 1, NULL, '4106');
INSERT INTO `dvadmin_system_area` VALUES (1660, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '新乡市', '4107', 2, 'xinxiangshi', 'X', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1661, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '红旗区', '410702', 3, 'hongqiqu', 'H', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1662, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '卫滨区', '410703', 3, 'weibinqu', 'W', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1663, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '凤泉区', '410704', 3, 'fengquanqu', 'F', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1664, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '牧野区', '410711', 3, 'muyequ', 'M', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1665, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '新乡县', '410721', 3, 'xinxiangxian', 'X', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1666, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '获嘉县', '410724', 3, 'huojiaxian', 'H', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1667, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '原阳县', '410725', 3, 'yuanyangxian', 'Y', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1668, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '延津县', '410726', 3, 'yanjinxian', 'Y', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1669, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '封丘县', '410727', 3, 'fengqiuxian', 'F', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1670, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '新乡高新技术产业开发区', '410771', 3, 'xinxianggaoxinjishuchanyekaifaqu', 'X', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1671, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '新乡经济技术开发区', '410772', 3, 'xinxiangjingjijishukaifaqu', 'X', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1672, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '新乡市平原城乡一体化示范区', '410773', 3, 'xinxiangshipingyuanchengxiangyitihuashifanqu', 'X', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1673, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '卫辉市', '410781', 3, 'weihuishi', 'W', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1674, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '辉县市', '410782', 3, 'huixianshi', 'H', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1675, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '长垣市', '410783', 3, 'zhangyuanshi', 'Z', 1, NULL, '4107');
INSERT INTO `dvadmin_system_area` VALUES (1676, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '焦作市', '4108', 2, 'jiaozuoshi', 'J', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1677, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '解放区', '410802', 3, 'jiefangqu', 'J', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1678, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '中站区', '410803', 3, 'zhongzhanqu', 'Z', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1679, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '马村区', '410804', 3, 'macunqu', 'M', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1680, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '山阳区', '410811', 3, 'shanyangqu', 'S', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1681, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '修武县', '410821', 3, 'xiuwuxian', 'X', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1682, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '博爱县', '410822', 3, 'boaixian', 'B', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1683, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '武陟县', '410823', 3, 'wuzhixian', 'W', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1684, NULL, NULL, NULL, '2023-11-04 16:46:11.232131', '2023-11-04 16:46:11.232131', '温县', '410825', 3, 'wenxian', 'W', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1685, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '焦作城乡一体化示范区', '410871', 3, 'jiaozuochengxiangyitihuashifanqu', 'J', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1686, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '沁阳市', '410882', 3, 'qinyangshi', 'Q', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1687, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '孟州市', '410883', 3, 'mengzhoushi', 'M', 1, NULL, '4108');
INSERT INTO `dvadmin_system_area` VALUES (1688, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '濮阳市', '4109', 2, 'puyangshi', 'P', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1689, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '华龙区', '410902', 3, 'hualongqu', 'H', 1, NULL, '4109');
INSERT INTO `dvadmin_system_area` VALUES (1690, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '清丰县', '410922', 3, 'qingfengxian', 'Q', 1, NULL, '4109');
INSERT INTO `dvadmin_system_area` VALUES (1691, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '南乐县', '410923', 3, 'nanlexian', 'N', 1, NULL, '4109');
INSERT INTO `dvadmin_system_area` VALUES (1692, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '范县', '410926', 3, 'fanxian', 'F', 1, NULL, '4109');
INSERT INTO `dvadmin_system_area` VALUES (1693, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '台前县', '410927', 3, 'taiqianxian', 'T', 1, NULL, '4109');
INSERT INTO `dvadmin_system_area` VALUES (1694, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '濮阳县', '410928', 3, 'puyangxian', 'P', 1, NULL, '4109');
INSERT INTO `dvadmin_system_area` VALUES (1695, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '河南濮阳工业园区', '410971', 3, 'henanpuyanggongyeyuanqu', 'H', 1, NULL, '4109');
INSERT INTO `dvadmin_system_area` VALUES (1696, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '濮阳经济技术开发区', '410972', 3, 'puyangjingjijishukaifaqu', 'P', 1, NULL, '4109');
INSERT INTO `dvadmin_system_area` VALUES (1697, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '许昌市', '4110', 2, 'xuchangshi', 'X', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1698, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '魏都区', '411002', 3, 'weidouqu', 'W', 1, NULL, '4110');
INSERT INTO `dvadmin_system_area` VALUES (1699, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '建安区', '411003', 3, 'jiananqu', 'J', 1, NULL, '4110');
INSERT INTO `dvadmin_system_area` VALUES (1700, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '鄢陵县', '411024', 3, 'yanlingxian', 'Y', 1, NULL, '4110');
INSERT INTO `dvadmin_system_area` VALUES (1701, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '襄城县', '411025', 3, 'xiangchengxian', 'X', 1, NULL, '4110');
INSERT INTO `dvadmin_system_area` VALUES (1702, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '许昌经济技术开发区', '411071', 3, 'xuchangjingjijishukaifaqu', 'X', 1, NULL, '4110');
INSERT INTO `dvadmin_system_area` VALUES (1703, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '禹州市', '411081', 3, 'yuzhoushi', 'Y', 1, NULL, '4110');
INSERT INTO `dvadmin_system_area` VALUES (1704, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '长葛市', '411082', 3, 'zhanggeshi', 'Z', 1, NULL, '4110');
INSERT INTO `dvadmin_system_area` VALUES (1705, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '漯河市', '4111', 2, 'taheshi', 'T', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1706, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '源汇区', '411102', 3, 'yuanhuiqu', 'Y', 1, NULL, '4111');
INSERT INTO `dvadmin_system_area` VALUES (1707, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '郾城区', '411103', 3, 'yanchengqu', 'Y', 1, NULL, '4111');
INSERT INTO `dvadmin_system_area` VALUES (1708, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '召陵区', '411104', 3, 'zhaolingqu', 'Z', 1, NULL, '4111');
INSERT INTO `dvadmin_system_area` VALUES (1709, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '舞阳县', '411121', 3, 'wuyangxian', 'W', 1, NULL, '4111');
INSERT INTO `dvadmin_system_area` VALUES (1710, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '临颍县', '411122', 3, 'linyingxian', 'L', 1, NULL, '4111');
INSERT INTO `dvadmin_system_area` VALUES (1711, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '漯河经济技术开发区', '411171', 3, 'tahejingjijishukaifaqu', 'T', 1, NULL, '4111');
INSERT INTO `dvadmin_system_area` VALUES (1712, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '三门峡市', '4112', 2, 'sanmenxiashi', 'S', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1713, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '湖滨区', '411202', 3, 'hubinqu', 'H', 1, NULL, '4112');
INSERT INTO `dvadmin_system_area` VALUES (1714, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '陕州区', '411203', 3, 'shanzhouqu', 'S', 1, NULL, '4112');
INSERT INTO `dvadmin_system_area` VALUES (1715, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '渑池县', '411221', 3, 'mianchixian', 'M', 1, NULL, '4112');
INSERT INTO `dvadmin_system_area` VALUES (1716, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '卢氏县', '411224', 3, 'lushixian', 'L', 1, NULL, '4112');
INSERT INTO `dvadmin_system_area` VALUES (1717, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '河南三门峡经济开发区', '411271', 3, 'henansanmenxiajingjikaifaqu', 'H', 1, NULL, '4112');
INSERT INTO `dvadmin_system_area` VALUES (1718, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '义马市', '411281', 3, 'yimashi', 'Y', 1, NULL, '4112');
INSERT INTO `dvadmin_system_area` VALUES (1719, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '灵宝市', '411282', 3, 'lingbaoshi', 'L', 1, NULL, '4112');
INSERT INTO `dvadmin_system_area` VALUES (1720, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '南阳市', '4113', 2, 'nanyangshi', 'N', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1721, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '宛城区', '411302', 3, 'wanchengqu', 'W', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1722, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '卧龙区', '411303', 3, 'wolongqu', 'W', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1723, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '南召县', '411321', 3, 'nanzhaoxian', 'N', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1724, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '方城县', '411322', 3, 'fangchengxian', 'F', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1725, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '西峡县', '411323', 3, 'xixiaxian', 'X', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1726, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '镇平县', '411324', 3, 'zhenpingxian', 'Z', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1727, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '内乡县', '411325', 3, 'neixiangxian', 'N', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1728, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '淅川县', '411326', 3, 'xichuanxian', 'X', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1729, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '社旗县', '411327', 3, 'sheqixian', 'S', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1730, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '唐河县', '411328', 3, 'tanghexian', 'T', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1731, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '新野县', '411329', 3, 'xinyexian', 'X', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1732, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '桐柏县', '411330', 3, 'tongbaixian', 'T', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1733, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '南阳高新技术产业开发区', '411371', 3, 'nanyanggaoxinjishuchanyekaifaqu', 'N', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1734, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '南阳市城乡一体化示范区', '411372', 3, 'nanyangshichengxiangyitihuashifanqu', 'N', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1735, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '邓州市', '411381', 3, 'dengzhoushi', 'D', 1, NULL, '4113');
INSERT INTO `dvadmin_system_area` VALUES (1736, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '商丘市', '4114', 2, 'shangqiushi', 'S', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1737, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '梁园区', '411402', 3, 'liangyuanqu', 'L', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1738, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '睢阳区', '411403', 3, 'suiyangqu', 'S', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1739, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '民权县', '411421', 3, 'minquanxian', 'M', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1740, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '睢县', '411422', 3, 'suixian', 'S', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1741, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '宁陵县', '411423', 3, 'ninglingxian', 'N', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1742, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '柘城县', '411424', 3, 'zhechengxian', 'Z', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1743, NULL, NULL, NULL, '2023-11-04 16:46:11.233131', '2023-11-04 16:46:11.233131', '虞城县', '411425', 3, 'yuchengxian', 'Y', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1744, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '夏邑县', '411426', 3, 'xiayixian', 'X', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1745, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '豫东综合物流产业聚集区', '411471', 3, 'yudongzonghewuliuchanyejujiqu', 'Y', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1746, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '河南商丘经济开发区', '411472', 3, 'henanshangqiujingjikaifaqu', 'H', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1747, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '永城市', '411481', 3, 'yongchengshi', 'Y', 1, NULL, '4114');
INSERT INTO `dvadmin_system_area` VALUES (1748, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '信阳市', '4115', 2, 'xinyangshi', 'X', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1749, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '浉河区', '411502', 3, 'shihequ', 'S', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1750, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '平桥区', '411503', 3, 'pingqiaoqu', 'P', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1751, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '罗山县', '411521', 3, 'luoshanxian', 'L', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1752, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '光山县', '411522', 3, 'guangshanxian', 'G', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1753, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '新县', '411523', 3, 'xinxian', 'X', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1754, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '商城县', '411524', 3, 'shangchengxian', 'S', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1755, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '固始县', '411525', 3, 'gushixian', 'G', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1756, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '潢川县', '411526', 3, 'huangchuanxian', 'H', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1757, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '淮滨县', '411527', 3, 'huaibinxian', 'H', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1758, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '息县', '411528', 3, 'xixian', 'X', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1759, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '信阳高新技术产业开发区', '411571', 3, 'xinyanggaoxinjishuchanyekaifaqu', 'X', 1, NULL, '4115');
INSERT INTO `dvadmin_system_area` VALUES (1760, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '周口市', '4116', 2, 'zhoukoushi', 'Z', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1761, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '川汇区', '411602', 3, 'chuanhuiqu', 'C', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1762, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '淮阳区', '411603', 3, 'huaiyangqu', 'H', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1763, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '扶沟县', '411621', 3, 'fugouxian', 'F', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1764, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '西华县', '411622', 3, 'xihuaxian', 'X', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1765, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '商水县', '411623', 3, 'shangshuixian', 'S', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1766, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '沈丘县', '411624', 3, 'shenqiuxian', 'S', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1767, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '郸城县', '411625', 3, 'danchengxian', 'D', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1768, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '太康县', '411627', 3, 'taikangxian', 'T', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1769, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '鹿邑县', '411628', 3, 'luyixian', 'L', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1770, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '河南周口经济开发区', '411671', 3, 'henanzhoukoujingjikaifaqu', 'H', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1771, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '项城市', '411681', 3, 'xiangchengshi', 'X', 1, NULL, '4116');
INSERT INTO `dvadmin_system_area` VALUES (1772, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '驻马店市', '4117', 2, 'zhumadianshi', 'Z', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1773, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '驿城区', '411702', 3, 'yichengqu', 'Y', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1774, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '西平县', '411721', 3, 'xipingxian', 'X', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1775, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '上蔡县', '411722', 3, 'shangcaixian', 'S', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1776, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '平舆县', '411723', 3, 'pingyuxian', 'P', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1777, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '正阳县', '411724', 3, 'zhengyangxian', 'Z', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1778, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '确山县', '411725', 3, 'queshanxian', 'Q', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1779, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '泌阳县', '411726', 3, 'biyangxian', 'B', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1780, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '汝南县', '411727', 3, 'runanxian', 'R', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1781, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '遂平县', '411728', 3, 'suipingxian', 'S', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1782, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '新蔡县', '411729', 3, 'xincaixian', 'X', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1783, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '河南驻马店经济开发区', '411771', 3, 'henanzhumadianjingjikaifaqu', 'H', 1, NULL, '4117');
INSERT INTO `dvadmin_system_area` VALUES (1784, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '省直辖县级行政区划', '4190', 2, 'shengzhixiaxianjixingzhengquhua', 'S', 1, NULL, '41');
INSERT INTO `dvadmin_system_area` VALUES (1785, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '济源市', '419001', 3, 'jiyuanshi', 'J', 1, NULL, '4190');
INSERT INTO `dvadmin_system_area` VALUES (1786, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '湖北省', '42', 1, 'hubeisheng', 'H', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (1787, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '武汉市', '4201', 2, 'wuhanshi', 'W', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1788, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '江岸区', '420102', 3, 'jianganqu', 'J', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1789, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '江汉区', '420103', 3, 'jianghanqu', 'J', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1790, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '硚口区', '420104', 3, 'qiaokouqu', 'Q', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1791, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '汉阳区', '420105', 3, 'hanyangqu', 'H', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1792, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '武昌区', '420106', 3, 'wuchangqu', 'W', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1793, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '青山区', '420107', 3, 'qingshanqu', 'Q', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1794, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '洪山区', '420111', 3, 'hongshanqu', 'H', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1795, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '东西湖区', '420112', 3, 'dongxihuqu', 'D', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1796, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '汉南区', '420113', 3, 'hannanqu', 'H', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1797, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '蔡甸区', '420114', 3, 'caidianqu', 'C', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1798, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '江夏区', '420115', 3, 'jiangxiaqu', 'J', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1799, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '黄陂区', '420116', 3, 'huangpiqu', 'H', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1800, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '新洲区', '420117', 3, 'xinzhouqu', 'X', 1, NULL, '4201');
INSERT INTO `dvadmin_system_area` VALUES (1801, NULL, NULL, NULL, '2023-11-04 16:46:11.234131', '2023-11-04 16:46:11.234131', '黄石市', '4202', 2, 'huangshishi', 'H', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1802, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '黄石港区', '420202', 3, 'huangshigangqu', 'H', 1, NULL, '4202');
INSERT INTO `dvadmin_system_area` VALUES (1803, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '西塞山区', '420203', 3, 'xisaishanqu', 'X', 1, NULL, '4202');
INSERT INTO `dvadmin_system_area` VALUES (1804, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '下陆区', '420204', 3, 'xialuqu', 'X', 1, NULL, '4202');
INSERT INTO `dvadmin_system_area` VALUES (1805, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '铁山区', '420205', 3, 'tieshanqu', 'T', 1, NULL, '4202');
INSERT INTO `dvadmin_system_area` VALUES (1806, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '阳新县', '420222', 3, 'yangxinxian', 'Y', 1, NULL, '4202');
INSERT INTO `dvadmin_system_area` VALUES (1807, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '大冶市', '420281', 3, 'dayeshi', 'D', 1, NULL, '4202');
INSERT INTO `dvadmin_system_area` VALUES (1808, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '十堰市', '4203', 2, 'shiyanshi', 'S', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1809, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '茅箭区', '420302', 3, 'maojianqu', 'M', 1, NULL, '4203');
INSERT INTO `dvadmin_system_area` VALUES (1810, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '张湾区', '420303', 3, 'zhangwanqu', 'Z', 1, NULL, '4203');
INSERT INTO `dvadmin_system_area` VALUES (1811, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '郧阳区', '420304', 3, 'yunyangqu', 'Y', 1, NULL, '4203');
INSERT INTO `dvadmin_system_area` VALUES (1812, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '郧西县', '420322', 3, 'yunxixian', 'Y', 1, NULL, '4203');
INSERT INTO `dvadmin_system_area` VALUES (1813, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '竹山县', '420323', 3, 'zhushanxian', 'Z', 1, NULL, '4203');
INSERT INTO `dvadmin_system_area` VALUES (1814, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '竹溪县', '420324', 3, 'zhuxixian', 'Z', 1, NULL, '4203');
INSERT INTO `dvadmin_system_area` VALUES (1815, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '房县', '420325', 3, 'fangxian', 'F', 1, NULL, '4203');
INSERT INTO `dvadmin_system_area` VALUES (1816, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '丹江口市', '420381', 3, 'danjiangkoushi', 'D', 1, NULL, '4203');
INSERT INTO `dvadmin_system_area` VALUES (1817, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '宜昌市', '4205', 2, 'yichangshi', 'Y', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1818, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '西陵区', '420502', 3, 'xilingqu', 'X', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1819, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '伍家岗区', '420503', 3, 'wujiagangqu', 'W', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1820, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '点军区', '420504', 3, 'dianjunqu', 'D', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1821, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '猇亭区', '420505', 3, 'xiaotingqu', 'X', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1822, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '夷陵区', '420506', 3, 'yilingqu', 'Y', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1823, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '远安县', '420525', 3, 'yuananxian', 'Y', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1824, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '兴山县', '420526', 3, 'xingshanxian', 'X', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1825, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '秭归县', '420527', 3, 'ziguixian', 'Z', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1826, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '长阳土家族自治县', '420528', 3, 'zhangyangtujiazuzizhixian', 'Z', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1827, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '五峰土家族自治县', '420529', 3, 'wufengtujiazuzizhixian', 'W', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1828, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '宜都市', '420581', 3, 'yidushi', 'Y', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1829, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '当阳市', '420582', 3, 'dangyangshi', 'D', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1830, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '枝江市', '420583', 3, 'zhijiangshi', 'Z', 1, NULL, '4205');
INSERT INTO `dvadmin_system_area` VALUES (1831, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '襄阳市', '4206', 2, 'xiangyangshi', 'X', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1832, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '襄城区', '420602', 3, 'xiangchengqu', 'X', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1833, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '樊城区', '420606', 3, 'fanchengqu', 'F', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1834, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '襄州区', '420607', 3, 'xiangzhouqu', 'X', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1835, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '南漳县', '420624', 3, 'nanzhangxian', 'N', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1836, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '谷城县', '420625', 3, 'guchengxian', 'G', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1837, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '保康县', '420626', 3, 'baokangxian', 'B', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1838, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '老河口市', '420682', 3, 'laohekoushi', 'L', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1839, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '枣阳市', '420683', 3, 'zaoyangshi', 'Z', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1840, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '宜城市', '420684', 3, 'yichengshi', 'Y', 1, NULL, '4206');
INSERT INTO `dvadmin_system_area` VALUES (1841, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '鄂州市', '4207', 2, 'ezhoushi', 'E', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1842, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '梁子湖区', '420702', 3, 'liangzihuqu', 'L', 1, NULL, '4207');
INSERT INTO `dvadmin_system_area` VALUES (1843, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '华容区', '420703', 3, 'huarongqu', 'H', 1, NULL, '4207');
INSERT INTO `dvadmin_system_area` VALUES (1844, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '鄂城区', '420704', 3, 'echengqu', 'E', 1, NULL, '4207');
INSERT INTO `dvadmin_system_area` VALUES (1845, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '荆门市', '4208', 2, 'jingmenshi', 'J', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1846, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '东宝区', '420802', 3, 'dongbaoqu', 'D', 1, NULL, '4208');
INSERT INTO `dvadmin_system_area` VALUES (1847, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '掇刀区', '420804', 3, 'duodaoqu', 'D', 1, NULL, '4208');
INSERT INTO `dvadmin_system_area` VALUES (1848, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '沙洋县', '420822', 3, 'shayangxian', 'S', 1, NULL, '4208');
INSERT INTO `dvadmin_system_area` VALUES (1849, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '钟祥市', '420881', 3, 'zhongxiangshi', 'Z', 1, NULL, '4208');
INSERT INTO `dvadmin_system_area` VALUES (1850, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '京山市', '420882', 3, 'jingshanshi', 'J', 1, NULL, '4208');
INSERT INTO `dvadmin_system_area` VALUES (1851, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '孝感市', '4209', 2, 'xiaoganshi', 'X', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1852, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '孝南区', '420902', 3, 'xiaonanqu', 'X', 1, NULL, '4209');
INSERT INTO `dvadmin_system_area` VALUES (1853, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '孝昌县', '420921', 3, 'xiaochangxian', 'X', 1, NULL, '4209');
INSERT INTO `dvadmin_system_area` VALUES (1854, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '大悟县', '420922', 3, 'dawuxian', 'D', 1, NULL, '4209');
INSERT INTO `dvadmin_system_area` VALUES (1855, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '云梦县', '420923', 3, 'yunmengxian', 'Y', 1, NULL, '4209');
INSERT INTO `dvadmin_system_area` VALUES (1856, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '应城市', '420981', 3, 'yingchengshi', 'Y', 1, NULL, '4209');
INSERT INTO `dvadmin_system_area` VALUES (1857, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '安陆市', '420982', 3, 'anlushi', 'A', 1, NULL, '4209');
INSERT INTO `dvadmin_system_area` VALUES (1858, NULL, NULL, NULL, '2023-11-04 16:46:11.235131', '2023-11-04 16:46:11.235131', '汉川市', '420984', 3, 'hanchuanshi', 'H', 1, NULL, '4209');
INSERT INTO `dvadmin_system_area` VALUES (1859, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '荆州市', '4210', 2, 'jingzhoushi', 'J', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1860, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '沙市区', '421002', 3, 'shashiqu', 'S', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1861, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '荆州区', '421003', 3, 'jingzhouqu', 'J', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1862, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '公安县', '421022', 3, 'gonganxian', 'G', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1863, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '监利县', '421023', 3, 'jianlixian', 'J', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1864, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '江陵县', '421024', 3, 'jianglingxian', 'J', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1865, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '荆州经济技术开发区', '421071', 3, 'jingzhoujingjijishukaifaqu', 'J', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1866, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '石首市', '421081', 3, 'shishoushi', 'S', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1867, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '洪湖市', '421083', 3, 'honghushi', 'H', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1868, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '松滋市', '421087', 3, 'songzishi', 'S', 1, NULL, '4210');
INSERT INTO `dvadmin_system_area` VALUES (1869, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '黄冈市', '4211', 2, 'huanggangshi', 'H', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1870, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '黄州区', '421102', 3, 'huangzhouqu', 'H', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1871, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '团风县', '421121', 3, 'tuanfengxian', 'T', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1872, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '红安县', '421122', 3, 'honganxian', 'H', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1873, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '罗田县', '421123', 3, 'luotianxian', 'L', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1874, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '英山县', '421124', 3, 'yingshanxian', 'Y', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1875, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '浠水县', '421125', 3, 'xishuixian', 'X', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1876, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '蕲春县', '421126', 3, 'qichunxian', 'Q', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1877, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '黄梅县', '421127', 3, 'huangmeixian', 'H', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1878, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '龙感湖管理区', '421171', 3, 'longganhuguanliqu', 'L', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1879, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '麻城市', '421181', 3, 'machengshi', 'M', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1880, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '武穴市', '421182', 3, 'wuxueshi', 'W', 1, NULL, '4211');
INSERT INTO `dvadmin_system_area` VALUES (1881, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '咸宁市', '4212', 2, 'xianningshi', 'X', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1882, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '咸安区', '421202', 3, 'xiananqu', 'X', 1, NULL, '4212');
INSERT INTO `dvadmin_system_area` VALUES (1883, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '嘉鱼县', '421221', 3, 'jiayuxian', 'J', 1, NULL, '4212');
INSERT INTO `dvadmin_system_area` VALUES (1884, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '通城县', '421222', 3, 'tongchengxian', 'T', 1, NULL, '4212');
INSERT INTO `dvadmin_system_area` VALUES (1885, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '崇阳县', '421223', 3, 'chongyangxian', 'C', 1, NULL, '4212');
INSERT INTO `dvadmin_system_area` VALUES (1886, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '通山县', '421224', 3, 'tongshanxian', 'T', 1, NULL, '4212');
INSERT INTO `dvadmin_system_area` VALUES (1887, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '赤壁市', '421281', 3, 'chibishi', 'C', 1, NULL, '4212');
INSERT INTO `dvadmin_system_area` VALUES (1888, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '随州市', '4213', 2, 'suizhoushi', 'S', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1889, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '曾都区', '421303', 3, 'cengdouqu', 'C', 1, NULL, '4213');
INSERT INTO `dvadmin_system_area` VALUES (1890, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '随县', '421321', 3, 'suixian', 'S', 1, NULL, '4213');
INSERT INTO `dvadmin_system_area` VALUES (1891, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '广水市', '421381', 3, 'guangshuishi', 'G', 1, NULL, '4213');
INSERT INTO `dvadmin_system_area` VALUES (1892, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '恩施土家族苗族自治州', '4228', 2, 'enshitujiazumiaozuzizhizhou', 'E', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1893, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '恩施市', '422801', 3, 'enshishi', 'E', 1, NULL, '4228');
INSERT INTO `dvadmin_system_area` VALUES (1894, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '利川市', '422802', 3, 'lichuanshi', 'L', 1, NULL, '4228');
INSERT INTO `dvadmin_system_area` VALUES (1895, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '建始县', '422822', 3, 'jianshixian', 'J', 1, NULL, '4228');
INSERT INTO `dvadmin_system_area` VALUES (1896, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '巴东县', '422823', 3, 'badongxian', 'B', 1, NULL, '4228');
INSERT INTO `dvadmin_system_area` VALUES (1897, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '宣恩县', '422825', 3, 'xuanenxian', 'X', 1, NULL, '4228');
INSERT INTO `dvadmin_system_area` VALUES (1898, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '咸丰县', '422826', 3, 'xianfengxian', 'X', 1, NULL, '4228');
INSERT INTO `dvadmin_system_area` VALUES (1899, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '来凤县', '422827', 3, 'laifengxian', 'L', 1, NULL, '4228');
INSERT INTO `dvadmin_system_area` VALUES (1900, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '鹤峰县', '422828', 3, 'hefengxian', 'H', 1, NULL, '4228');
INSERT INTO `dvadmin_system_area` VALUES (1901, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '省直辖县级行政区划', '4290', 2, 'shengzhixiaxianjixingzhengquhua', 'S', 1, NULL, '42');
INSERT INTO `dvadmin_system_area` VALUES (1902, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '仙桃市', '429004', 3, 'xiantaoshi', 'X', 1, NULL, '4290');
INSERT INTO `dvadmin_system_area` VALUES (1903, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '潜江市', '429005', 3, 'qianjiangshi', 'Q', 1, NULL, '4290');
INSERT INTO `dvadmin_system_area` VALUES (1904, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '天门市', '429006', 3, 'tianmenshi', 'T', 1, NULL, '4290');
INSERT INTO `dvadmin_system_area` VALUES (1905, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '神农架林区', '429021', 3, 'shennongjialinqu', 'S', 1, NULL, '4290');
INSERT INTO `dvadmin_system_area` VALUES (1906, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '湖南省', '43', 1, 'hunansheng', 'H', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (1907, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '长沙市', '4301', 2, 'changshashi', 'C', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1908, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '芙蓉区', '430102', 3, 'furongqu', 'F', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1909, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '天心区', '430103', 3, 'tianxinqu', 'T', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1910, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '岳麓区', '430104', 3, 'yueluqu', 'Y', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1911, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '开福区', '430105', 3, 'kaifuqu', 'K', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1912, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '雨花区', '430111', 3, 'yuhuaqu', 'Y', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1913, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '望城区', '430112', 3, 'wangchengqu', 'W', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1914, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '长沙县', '430121', 3, 'changshaxian', 'C', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1915, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '浏阳市', '430181', 3, 'liuyangshi', 'L', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1916, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '宁乡市', '430182', 3, 'ningxiangshi', 'N', 1, NULL, '4301');
INSERT INTO `dvadmin_system_area` VALUES (1917, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '株洲市', '4302', 2, 'zhuzhoushi', 'Z', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1918, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '荷塘区', '430202', 3, 'hetangqu', 'H', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1919, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '芦淞区', '430203', 3, 'lusongqu', 'L', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1920, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '石峰区', '430204', 3, 'shifengqu', 'S', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1921, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '天元区', '430211', 3, 'tianyuanqu', 'T', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1922, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '渌口区', '430212', 3, 'lukouqu', 'L', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1923, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '攸县', '430223', 3, 'youxian', 'Y', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1924, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '茶陵县', '430224', 3, 'chalingxian', 'C', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1925, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '炎陵县', '430225', 3, 'yanlingxian', 'Y', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1926, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '云龙示范区', '430271', 3, 'yunlongshifanqu', 'Y', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1927, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '醴陵市', '430281', 3, 'lilingshi', 'L', 1, NULL, '4302');
INSERT INTO `dvadmin_system_area` VALUES (1928, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '湘潭市', '4303', 2, 'xiangtanshi', 'X', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1929, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '雨湖区', '430302', 3, 'yuhuqu', 'Y', 1, NULL, '4303');
INSERT INTO `dvadmin_system_area` VALUES (1930, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '岳塘区', '430304', 3, 'yuetangqu', 'Y', 1, NULL, '4303');
INSERT INTO `dvadmin_system_area` VALUES (1931, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '湘潭县', '430321', 3, 'xiangtanxian', 'X', 1, NULL, '4303');
INSERT INTO `dvadmin_system_area` VALUES (1932, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '湖南湘潭高新技术产业园区', '430371', 3, 'hunanxiangtangaoxinjishuchanyeyuanqu', 'H', 1, NULL, '4303');
INSERT INTO `dvadmin_system_area` VALUES (1933, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '湘潭昭山示范区', '430372', 3, 'xiangtanzhaoshanshifanqu', 'X', 1, NULL, '4303');
INSERT INTO `dvadmin_system_area` VALUES (1934, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '湘潭九华示范区', '430373', 3, 'xiangtanjiuhuashifanqu', 'X', 1, NULL, '4303');
INSERT INTO `dvadmin_system_area` VALUES (1935, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '湘乡市', '430381', 3, 'xiangxiangshi', 'X', 1, NULL, '4303');
INSERT INTO `dvadmin_system_area` VALUES (1936, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '韶山市', '430382', 3, 'shaoshanshi', 'S', 1, NULL, '4303');
INSERT INTO `dvadmin_system_area` VALUES (1937, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '衡阳市', '4304', 2, 'hengyangshi', 'H', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1938, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '珠晖区', '430405', 3, 'zhuhuiqu', 'Z', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1939, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '雁峰区', '430406', 3, 'yanfengqu', 'Y', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1940, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '石鼓区', '430407', 3, 'shiguqu', 'S', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1941, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '蒸湘区', '430408', 3, 'zhengxiangqu', 'Z', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1942, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '南岳区', '430412', 3, 'nanyuequ', 'N', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1943, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '衡阳县', '430421', 3, 'hengyangxian', 'H', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1944, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '衡南县', '430422', 3, 'hengnanxian', 'H', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1945, NULL, NULL, NULL, '2023-11-04 16:46:11.236132', '2023-11-04 16:46:11.236132', '衡山县', '430423', 3, 'hengshanxian', 'H', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1946, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '衡东县', '430424', 3, 'hengdongxian', 'H', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1947, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '祁东县', '430426', 3, 'qidongxian', 'Q', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1948, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '衡阳综合保税区', '430471', 3, 'hengyangzonghebaoshuiqu', 'H', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1949, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '湖南衡阳高新技术产业园区', '430472', 3, 'hunanhengyanggaoxinjishuchanyeyuanqu', 'H', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1950, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '湖南衡阳松木经济开发区', '430473', 3, 'hunanhengyangsongmujingjikaifaqu', 'H', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1951, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '耒阳市', '430481', 3, 'leiyangshi', 'L', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1952, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '常宁市', '430482', 3, 'changningshi', 'C', 1, NULL, '4304');
INSERT INTO `dvadmin_system_area` VALUES (1953, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '邵阳市', '4305', 2, 'shaoyangshi', 'S', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1954, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '双清区', '430502', 3, 'shuangqingqu', 'S', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1955, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '大祥区', '430503', 3, 'daxiangqu', 'D', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1956, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '北塔区', '430511', 3, 'beitaqu', 'B', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1957, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '新邵县', '430522', 3, 'xinshaoxian', 'X', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1958, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '邵阳县', '430523', 3, 'shaoyangxian', 'S', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1959, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '隆回县', '430524', 3, 'longhuixian', 'L', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1960, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '洞口县', '430525', 3, 'dongkouxian', 'D', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1961, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '绥宁县', '430527', 3, 'suiningxian', 'S', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1962, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '新宁县', '430528', 3, 'xinningxian', 'X', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1963, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '城步苗族自治县', '430529', 3, 'chengbumiaozuzizhixian', 'C', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1964, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '武冈市', '430581', 3, 'wugangshi', 'W', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1965, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '邵东市', '430582', 3, 'shaodongshi', 'S', 1, NULL, '4305');
INSERT INTO `dvadmin_system_area` VALUES (1966, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '岳阳市', '4306', 2, 'yueyangshi', 'Y', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1967, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '岳阳楼区', '430602', 3, 'yueyanglouqu', 'Y', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1968, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '云溪区', '430603', 3, 'yunxiqu', 'Y', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1969, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '君山区', '430611', 3, 'junshanqu', 'J', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1970, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '岳阳县', '430621', 3, 'yueyangxian', 'Y', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1971, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '华容县', '430623', 3, 'huarongxian', 'H', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1972, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '湘阴县', '430624', 3, 'xiangyinxian', 'X', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1973, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '平江县', '430626', 3, 'pingjiangxian', 'P', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1974, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '岳阳市屈原管理区', '430671', 3, 'yueyangshiquyuanguanliqu', 'Y', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1975, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '汨罗市', '430681', 3, 'miluoshi', 'M', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1976, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '临湘市', '430682', 3, 'linxiangshi', 'L', 1, NULL, '4306');
INSERT INTO `dvadmin_system_area` VALUES (1977, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '常德市', '4307', 2, 'changdeshi', 'C', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1978, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '武陵区', '430702', 3, 'wulingqu', 'W', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1979, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '鼎城区', '430703', 3, 'dingchengqu', 'D', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1980, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '安乡县', '430721', 3, 'anxiangxian', 'A', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1981, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '汉寿县', '430722', 3, 'hanshouxian', 'H', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1982, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '澧县', '430723', 3, 'lixian', 'L', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1983, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '临澧县', '430724', 3, 'linlixian', 'L', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1984, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '桃源县', '430725', 3, 'taoyuanxian', 'T', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1985, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '石门县', '430726', 3, 'shimenxian', 'S', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1986, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '常德市西洞庭管理区', '430771', 3, 'changdeshixidongtingguanliqu', 'C', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1987, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '津市市', '430781', 3, 'jinshishi', 'J', 1, NULL, '4307');
INSERT INTO `dvadmin_system_area` VALUES (1988, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '张家界市', '4308', 2, 'zhangjiajieshi', 'Z', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1989, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '永定区', '430802', 3, 'yongdingqu', 'Y', 1, NULL, '4308');
INSERT INTO `dvadmin_system_area` VALUES (1990, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '武陵源区', '430811', 3, 'wulingyuanqu', 'W', 1, NULL, '4308');
INSERT INTO `dvadmin_system_area` VALUES (1991, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '慈利县', '430821', 3, 'cilixian', 'C', 1, NULL, '4308');
INSERT INTO `dvadmin_system_area` VALUES (1992, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '桑植县', '430822', 3, 'sangzhixian', 'S', 1, NULL, '4308');
INSERT INTO `dvadmin_system_area` VALUES (1993, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '益阳市', '4309', 2, 'yiyangshi', 'Y', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (1994, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '资阳区', '430902', 3, 'ziyangqu', 'Z', 1, NULL, '4309');
INSERT INTO `dvadmin_system_area` VALUES (1995, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '赫山区', '430903', 3, 'heshanqu', 'H', 1, NULL, '4309');
INSERT INTO `dvadmin_system_area` VALUES (1996, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '南县', '430921', 3, 'nanxian', 'N', 1, NULL, '4309');
INSERT INTO `dvadmin_system_area` VALUES (1997, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '桃江县', '430922', 3, 'taojiangxian', 'T', 1, NULL, '4309');
INSERT INTO `dvadmin_system_area` VALUES (1998, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '安化县', '430923', 3, 'anhuaxian', 'A', 1, NULL, '4309');
INSERT INTO `dvadmin_system_area` VALUES (1999, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '益阳市大通湖管理区', '430971', 3, 'yiyangshidatonghuguanliqu', 'Y', 1, NULL, '4309');
INSERT INTO `dvadmin_system_area` VALUES (2000, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '湖南益阳高新技术产业园区', '430972', 3, 'hunanyiyanggaoxinjishuchanyeyuanqu', 'H', 1, NULL, '4309');
INSERT INTO `dvadmin_system_area` VALUES (2001, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '沅江市', '430981', 3, 'yuanjiangshi', 'Y', 1, NULL, '4309');
INSERT INTO `dvadmin_system_area` VALUES (2002, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '郴州市', '4310', 2, 'chenzhoushi', 'C', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (2003, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '北湖区', '431002', 3, 'beihuqu', 'B', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2004, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.237636', '苏仙区', '431003', 3, 'suxianqu', 'S', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2005, NULL, NULL, NULL, '2023-11-04 16:46:11.237636', '2023-11-04 16:46:11.238641', '桂阳县', '431021', 3, 'guiyangxian', 'G', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2006, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '宜章县', '431022', 3, 'yizhangxian', 'Y', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2007, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '永兴县', '431023', 3, 'yongxingxian', 'Y', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2008, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '嘉禾县', '431024', 3, 'jiahexian', 'J', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2009, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '临武县', '431025', 3, 'linwuxian', 'L', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2010, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '汝城县', '431026', 3, 'ruchengxian', 'R', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2011, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '桂东县', '431027', 3, 'guidongxian', 'G', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2012, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '安仁县', '431028', 3, 'anrenxian', 'A', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2013, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '资兴市', '431081', 3, 'zixingshi', 'Z', 1, NULL, '4310');
INSERT INTO `dvadmin_system_area` VALUES (2014, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '永州市', '4311', 2, 'yongzhoushi', 'Y', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (2015, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '零陵区', '431102', 3, 'linglingqu', 'L', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2016, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '冷水滩区', '431103', 3, 'lengshuitanqu', 'L', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2017, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '祁阳县', '431121', 3, 'qiyangxian', 'Q', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2018, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '东安县', '431122', 3, 'donganxian', 'D', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2019, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '双牌县', '431123', 3, 'shuangpaixian', 'S', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2020, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '道县', '431124', 3, 'daoxian', 'D', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2021, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '江永县', '431125', 3, 'jiangyongxian', 'J', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2022, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '宁远县', '431126', 3, 'ningyuanxian', 'N', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2023, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '蓝山县', '431127', 3, 'lanshanxian', 'L', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2024, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '新田县', '431128', 3, 'xintianxian', 'X', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2025, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '江华瑶族自治县', '431129', 3, 'jianghuayaozuzizhixian', 'J', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2026, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '永州经济技术开发区', '431171', 3, 'yongzhoujingjijishukaifaqu', 'Y', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2027, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '永州市金洞管理区', '431172', 3, 'yongzhoushijindongguanliqu', 'Y', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2028, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '永州市回龙圩管理区', '431173', 3, 'yongzhoushihuilongweiguanliqu', 'Y', 1, NULL, '4311');
INSERT INTO `dvadmin_system_area` VALUES (2029, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '怀化市', '4312', 2, 'huaihuashi', 'H', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (2030, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '鹤城区', '431202', 3, 'hechengqu', 'H', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2031, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '中方县', '431221', 3, 'zhongfangxian', 'Z', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2032, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '沅陵县', '431222', 3, 'yuanlingxian', 'Y', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2033, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '辰溪县', '431223', 3, 'chenxixian', 'C', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2034, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '溆浦县', '431224', 3, 'xupuxian', 'X', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2035, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '会同县', '431225', 3, 'huitongxian', 'H', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2036, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '麻阳苗族自治县', '431226', 3, 'mayangmiaozuzizhixian', 'M', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2037, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '新晃侗族自治县', '431227', 3, 'xinhuangdongzuzizhixian', 'X', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2038, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '芷江侗族自治县', '431228', 3, 'zhijiangdongzuzizhixian', 'Z', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2039, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '靖州苗族侗族自治县', '431229', 3, 'jingzhoumiaozudongzuzizhixian', 'J', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2040, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '通道侗族自治县', '431230', 3, 'tongdaodongzuzizhixian', 'T', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2041, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '怀化市洪江管理区', '431271', 3, 'huaihuashihongjiangguanliqu', 'H', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2042, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '洪江市', '431281', 3, 'hongjiangshi', 'H', 1, NULL, '4312');
INSERT INTO `dvadmin_system_area` VALUES (2043, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '娄底市', '4313', 2, 'loudishi', 'L', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (2044, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '娄星区', '431302', 3, 'louxingqu', 'L', 1, NULL, '4313');
INSERT INTO `dvadmin_system_area` VALUES (2045, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '双峰县', '431321', 3, 'shuangfengxian', 'S', 1, NULL, '4313');
INSERT INTO `dvadmin_system_area` VALUES (2046, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '新化县', '431322', 3, 'xinhuaxian', 'X', 1, NULL, '4313');
INSERT INTO `dvadmin_system_area` VALUES (2047, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '冷水江市', '431381', 3, 'lengshuijiangshi', 'L', 1, NULL, '4313');
INSERT INTO `dvadmin_system_area` VALUES (2048, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '涟源市', '431382', 3, 'lianyuanshi', 'L', 1, NULL, '4313');
INSERT INTO `dvadmin_system_area` VALUES (2049, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '湘西土家族苗族自治州', '4331', 2, 'xiangxitujiazumiaozuzizhizhou', 'X', 1, NULL, '43');
INSERT INTO `dvadmin_system_area` VALUES (2050, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '吉首市', '433101', 3, 'jishoushi', 'J', 1, NULL, '4331');
INSERT INTO `dvadmin_system_area` VALUES (2051, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '泸溪县', '433122', 3, 'luxixian', 'L', 1, NULL, '4331');
INSERT INTO `dvadmin_system_area` VALUES (2052, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '凤凰县', '433123', 3, 'fenghuangxian', 'F', 1, NULL, '4331');
INSERT INTO `dvadmin_system_area` VALUES (2053, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '花垣县', '433124', 3, 'huayuanxian', 'H', 1, NULL, '4331');
INSERT INTO `dvadmin_system_area` VALUES (2054, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '保靖县', '433125', 3, 'baojingxian', 'B', 1, NULL, '4331');
INSERT INTO `dvadmin_system_area` VALUES (2055, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '古丈县', '433126', 3, 'guzhangxian', 'G', 1, NULL, '4331');
INSERT INTO `dvadmin_system_area` VALUES (2056, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '永顺县', '433127', 3, 'yongshunxian', 'Y', 1, NULL, '4331');
INSERT INTO `dvadmin_system_area` VALUES (2057, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '龙山县', '433130', 3, 'longshanxian', 'L', 1, NULL, '4331');
INSERT INTO `dvadmin_system_area` VALUES (2058, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '广东省', '44', 1, 'guangdongsheng', 'G', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2059, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '广州市', '4401', 2, 'guangzhoushi', 'G', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2060, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '荔湾区', '440103', 3, 'liwanqu', 'L', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2061, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '越秀区', '440104', 3, 'yuexiuqu', 'Y', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2062, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '海珠区', '440105', 3, 'haizhuqu', 'H', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2063, NULL, NULL, NULL, '2023-11-04 16:46:11.238641', '2023-11-04 16:46:11.238641', '天河区', '440106', 3, 'tianhequ', 'T', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2064, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '白云区', '440111', 3, 'baiyunqu', 'B', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2065, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '黄埔区', '440112', 3, 'huangpuqu', 'H', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2066, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '番禺区', '440113', 3, 'panyuqu', 'P', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2067, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '花都区', '440114', 3, 'huadouqu', 'H', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2068, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '南沙区', '440115', 3, 'nanshaqu', 'N', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2069, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '从化区', '440117', 3, 'conghuaqu', 'C', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2070, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '增城区', '440118', 3, 'zengchengqu', 'Z', 1, NULL, '4401');
INSERT INTO `dvadmin_system_area` VALUES (2071, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '韶关市', '4402', 2, 'shaoguanshi', 'S', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2072, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '武江区', '440203', 3, 'wujiangqu', 'W', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2073, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '浈江区', '440204', 3, 'zhenjiangqu', 'Z', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2074, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '曲江区', '440205', 3, 'qujiangqu', 'Q', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2075, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '始兴县', '440222', 3, 'shixingxian', 'S', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2076, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '仁化县', '440224', 3, 'renhuaxian', 'R', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2077, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '翁源县', '440229', 3, 'wengyuanxian', 'W', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2078, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '乳源瑶族自治县', '440232', 3, 'ruyuanyaozuzizhixian', 'R', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2079, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '新丰县', '440233', 3, 'xinfengxian', 'X', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2080, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '乐昌市', '440281', 3, 'lechangshi', 'L', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2081, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '南雄市', '440282', 3, 'nanxiongshi', 'N', 1, NULL, '4402');
INSERT INTO `dvadmin_system_area` VALUES (2082, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '深圳市', '4403', 2, 'shenzhenshi', 'S', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2083, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '罗湖区', '440303', 3, 'luohuqu', 'L', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2084, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '福田区', '440304', 3, 'futianqu', 'F', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2085, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '南山区', '440305', 3, 'nanshanqu', 'N', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2086, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '宝安区', '440306', 3, 'baoanqu', 'B', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2087, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '龙岗区', '440307', 3, 'longgangqu', 'L', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2088, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '盐田区', '440308', 3, 'yantianqu', 'Y', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2089, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '龙华区', '440309', 3, 'longhuaqu', 'L', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2090, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '坪山区', '440310', 3, 'pingshanqu', 'P', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2091, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '光明区', '440311', 3, 'guangmingqu', 'G', 1, NULL, '4403');
INSERT INTO `dvadmin_system_area` VALUES (2092, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '珠海市', '4404', 2, 'zhuhaishi', 'Z', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2093, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '香洲区', '440402', 3, 'xiangzhouqu', 'X', 1, NULL, '4404');
INSERT INTO `dvadmin_system_area` VALUES (2094, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '斗门区', '440403', 3, 'doumenqu', 'D', 1, NULL, '4404');
INSERT INTO `dvadmin_system_area` VALUES (2095, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '金湾区', '440404', 3, 'jinwanqu', 'J', 1, NULL, '4404');
INSERT INTO `dvadmin_system_area` VALUES (2096, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '汕头市', '4405', 2, 'shantoushi', 'S', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2097, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '龙湖区', '440507', 3, 'longhuqu', 'L', 1, NULL, '4405');
INSERT INTO `dvadmin_system_area` VALUES (2098, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '金平区', '440511', 3, 'jinpingqu', 'J', 1, NULL, '4405');
INSERT INTO `dvadmin_system_area` VALUES (2099, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '濠江区', '440512', 3, 'haojiangqu', 'H', 1, NULL, '4405');
INSERT INTO `dvadmin_system_area` VALUES (2100, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '潮阳区', '440513', 3, 'chaoyangqu', 'C', 1, NULL, '4405');
INSERT INTO `dvadmin_system_area` VALUES (2101, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '潮南区', '440514', 3, 'chaonanqu', 'C', 1, NULL, '4405');
INSERT INTO `dvadmin_system_area` VALUES (2102, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '澄海区', '440515', 3, 'chenghaiqu', 'C', 1, NULL, '4405');
INSERT INTO `dvadmin_system_area` VALUES (2103, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '南澳县', '440523', 3, 'nanaoxian', 'N', 1, NULL, '4405');
INSERT INTO `dvadmin_system_area` VALUES (2104, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '佛山市', '4406', 2, 'foshanshi', 'F', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2105, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '禅城区', '440604', 3, 'chanchengqu', 'C', 1, NULL, '4406');
INSERT INTO `dvadmin_system_area` VALUES (2106, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '南海区', '440605', 3, 'nanhaiqu', 'N', 1, NULL, '4406');
INSERT INTO `dvadmin_system_area` VALUES (2107, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '顺德区', '440606', 3, 'shundequ', 'S', 1, NULL, '4406');
INSERT INTO `dvadmin_system_area` VALUES (2108, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '三水区', '440607', 3, 'sanshuiqu', 'S', 1, NULL, '4406');
INSERT INTO `dvadmin_system_area` VALUES (2109, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '高明区', '440608', 3, 'gaomingqu', 'G', 1, NULL, '4406');
INSERT INTO `dvadmin_system_area` VALUES (2110, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '江门市', '4407', 2, 'jiangmenshi', 'J', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2111, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '蓬江区', '440703', 3, 'pengjiangqu', 'P', 1, NULL, '4407');
INSERT INTO `dvadmin_system_area` VALUES (2112, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '江海区', '440704', 3, 'jianghaiqu', 'J', 1, NULL, '4407');
INSERT INTO `dvadmin_system_area` VALUES (2113, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '新会区', '440705', 3, 'xinhuiqu', 'X', 1, NULL, '4407');
INSERT INTO `dvadmin_system_area` VALUES (2114, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '台山市', '440781', 3, 'taishanshi', 'T', 1, NULL, '4407');
INSERT INTO `dvadmin_system_area` VALUES (2115, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '开平市', '440783', 3, 'kaipingshi', 'K', 1, NULL, '4407');
INSERT INTO `dvadmin_system_area` VALUES (2116, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '鹤山市', '440784', 3, 'heshanshi', 'H', 1, NULL, '4407');
INSERT INTO `dvadmin_system_area` VALUES (2117, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '恩平市', '440785', 3, 'enpingshi', 'E', 1, NULL, '4407');
INSERT INTO `dvadmin_system_area` VALUES (2118, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '湛江市', '4408', 2, 'zhanjiangshi', 'Z', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2119, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '赤坎区', '440802', 3, 'chikanqu', 'C', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2120, NULL, NULL, NULL, '2023-11-04 16:46:11.239643', '2023-11-04 16:46:11.239643', '霞山区', '440803', 3, 'xiashanqu', 'X', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2121, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '坡头区', '440804', 3, 'potouqu', 'P', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2122, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '麻章区', '440811', 3, 'mazhangqu', 'M', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2123, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '遂溪县', '440823', 3, 'suixixian', 'S', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2124, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '徐闻县', '440825', 3, 'xuwenxian', 'X', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2125, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '廉江市', '440881', 3, 'lianjiangshi', 'L', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2126, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '雷州市', '440882', 3, 'leizhoushi', 'L', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2127, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '吴川市', '440883', 3, 'wuchuanshi', 'W', 1, NULL, '4408');
INSERT INTO `dvadmin_system_area` VALUES (2128, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '茂名市', '4409', 2, 'maomingshi', 'M', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2129, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '茂南区', '440902', 3, 'maonanqu', 'M', 1, NULL, '4409');
INSERT INTO `dvadmin_system_area` VALUES (2130, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '电白区', '440904', 3, 'dianbaiqu', 'D', 1, NULL, '4409');
INSERT INTO `dvadmin_system_area` VALUES (2131, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '高州市', '440981', 3, 'gaozhoushi', 'G', 1, NULL, '4409');
INSERT INTO `dvadmin_system_area` VALUES (2132, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '化州市', '440982', 3, 'huazhoushi', 'H', 1, NULL, '4409');
INSERT INTO `dvadmin_system_area` VALUES (2133, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '信宜市', '440983', 3, 'xinyishi', 'X', 1, NULL, '4409');
INSERT INTO `dvadmin_system_area` VALUES (2134, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '肇庆市', '4412', 2, 'zhaoqingshi', 'Z', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2135, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '端州区', '441202', 3, 'duanzhouqu', 'D', 1, NULL, '4412');
INSERT INTO `dvadmin_system_area` VALUES (2136, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '鼎湖区', '441203', 3, 'dinghuqu', 'D', 1, NULL, '4412');
INSERT INTO `dvadmin_system_area` VALUES (2137, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '高要区', '441204', 3, 'gaoyaoqu', 'G', 1, NULL, '4412');
INSERT INTO `dvadmin_system_area` VALUES (2138, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '广宁县', '441223', 3, 'guangningxian', 'G', 1, NULL, '4412');
INSERT INTO `dvadmin_system_area` VALUES (2139, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '怀集县', '441224', 3, 'huaijixian', 'H', 1, NULL, '4412');
INSERT INTO `dvadmin_system_area` VALUES (2140, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '封开县', '441225', 3, 'fengkaixian', 'F', 1, NULL, '4412');
INSERT INTO `dvadmin_system_area` VALUES (2141, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '德庆县', '441226', 3, 'deqingxian', 'D', 1, NULL, '4412');
INSERT INTO `dvadmin_system_area` VALUES (2142, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '四会市', '441284', 3, 'sihuishi', 'S', 1, NULL, '4412');
INSERT INTO `dvadmin_system_area` VALUES (2143, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '惠州市', '4413', 2, 'huizhoushi', 'H', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2144, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '惠城区', '441302', 3, 'huichengqu', 'H', 1, NULL, '4413');
INSERT INTO `dvadmin_system_area` VALUES (2145, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '惠阳区', '441303', 3, 'huiyangqu', 'H', 1, NULL, '4413');
INSERT INTO `dvadmin_system_area` VALUES (2146, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '博罗县', '441322', 3, 'boluoxian', 'B', 1, NULL, '4413');
INSERT INTO `dvadmin_system_area` VALUES (2147, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '惠东县', '441323', 3, 'huidongxian', 'H', 1, NULL, '4413');
INSERT INTO `dvadmin_system_area` VALUES (2148, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '龙门县', '441324', 3, 'longmenxian', 'L', 1, NULL, '4413');
INSERT INTO `dvadmin_system_area` VALUES (2149, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '梅州市', '4414', 2, 'meizhoushi', 'M', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2150, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '梅江区', '441402', 3, 'meijiangqu', 'M', 1, NULL, '4414');
INSERT INTO `dvadmin_system_area` VALUES (2151, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '梅县区', '441403', 3, 'meixianqu', 'M', 1, NULL, '4414');
INSERT INTO `dvadmin_system_area` VALUES (2152, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '大埔县', '441422', 3, 'dabuxian', 'D', 1, NULL, '4414');
INSERT INTO `dvadmin_system_area` VALUES (2153, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '丰顺县', '441423', 3, 'fengshunxian', 'F', 1, NULL, '4414');
INSERT INTO `dvadmin_system_area` VALUES (2154, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '五华县', '441424', 3, 'wuhuaxian', 'W', 1, NULL, '4414');
INSERT INTO `dvadmin_system_area` VALUES (2155, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '平远县', '441426', 3, 'pingyuanxian', 'P', 1, NULL, '4414');
INSERT INTO `dvadmin_system_area` VALUES (2156, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '蕉岭县', '441427', 3, 'jiaolingxian', 'J', 1, NULL, '4414');
INSERT INTO `dvadmin_system_area` VALUES (2157, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '兴宁市', '441481', 3, 'xingningshi', 'X', 1, NULL, '4414');
INSERT INTO `dvadmin_system_area` VALUES (2158, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '汕尾市', '4415', 2, 'shanweishi', 'S', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2159, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '城区', '441502', 3, 'chengqu', 'C', 1, NULL, '4415');
INSERT INTO `dvadmin_system_area` VALUES (2160, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '海丰县', '441521', 3, 'haifengxian', 'H', 1, NULL, '4415');
INSERT INTO `dvadmin_system_area` VALUES (2161, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '陆河县', '441523', 3, 'luhexian', 'L', 1, NULL, '4415');
INSERT INTO `dvadmin_system_area` VALUES (2162, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '陆丰市', '441581', 3, 'lufengshi', 'L', 1, NULL, '4415');
INSERT INTO `dvadmin_system_area` VALUES (2163, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '河源市', '4416', 2, 'heyuanshi', 'H', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2164, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '源城区', '441602', 3, 'yuanchengqu', 'Y', 1, NULL, '4416');
INSERT INTO `dvadmin_system_area` VALUES (2165, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '紫金县', '441621', 3, 'zijinxian', 'Z', 1, NULL, '4416');
INSERT INTO `dvadmin_system_area` VALUES (2166, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '龙川县', '441622', 3, 'longchuanxian', 'L', 1, NULL, '4416');
INSERT INTO `dvadmin_system_area` VALUES (2167, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '连平县', '441623', 3, 'lianpingxian', 'L', 1, NULL, '4416');
INSERT INTO `dvadmin_system_area` VALUES (2168, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '和平县', '441624', 3, 'hepingxian', 'H', 1, NULL, '4416');
INSERT INTO `dvadmin_system_area` VALUES (2169, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '东源县', '441625', 3, 'dongyuanxian', 'D', 1, NULL, '4416');
INSERT INTO `dvadmin_system_area` VALUES (2170, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '阳江市', '4417', 2, 'yangjiangshi', 'Y', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2171, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '江城区', '441702', 3, 'jiangchengqu', 'J', 1, NULL, '4417');
INSERT INTO `dvadmin_system_area` VALUES (2172, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '阳东区', '441704', 3, 'yangdongqu', 'Y', 1, NULL, '4417');
INSERT INTO `dvadmin_system_area` VALUES (2173, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '阳西县', '441721', 3, 'yangxixian', 'Y', 1, NULL, '4417');
INSERT INTO `dvadmin_system_area` VALUES (2174, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '阳春市', '441781', 3, 'yangchunshi', 'Y', 1, NULL, '4417');
INSERT INTO `dvadmin_system_area` VALUES (2175, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '清远市', '4418', 2, 'qingyuanshi', 'Q', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2176, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '清城区', '441802', 3, 'qingchengqu', 'Q', 1, NULL, '4418');
INSERT INTO `dvadmin_system_area` VALUES (2177, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '清新区', '441803', 3, 'qingxinqu', 'Q', 1, NULL, '4418');
INSERT INTO `dvadmin_system_area` VALUES (2178, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '佛冈县', '441821', 3, 'fugangxian', 'F', 1, NULL, '4418');
INSERT INTO `dvadmin_system_area` VALUES (2179, NULL, NULL, NULL, '2023-11-04 16:46:11.240642', '2023-11-04 16:46:11.240642', '阳山县', '441823', 3, 'yangshanxian', 'Y', 1, NULL, '4418');
INSERT INTO `dvadmin_system_area` VALUES (2180, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '连山壮族瑶族自治县', '441825', 3, 'lianshanzhuangzuyaozuzizhixian', 'L', 1, NULL, '4418');
INSERT INTO `dvadmin_system_area` VALUES (2181, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '连南瑶族自治县', '441826', 3, 'liannanyaozuzizhixian', 'L', 1, NULL, '4418');
INSERT INTO `dvadmin_system_area` VALUES (2182, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '英德市', '441881', 3, 'yingdeshi', 'Y', 1, NULL, '4418');
INSERT INTO `dvadmin_system_area` VALUES (2183, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '连州市', '441882', 3, 'lianzhoushi', 'L', 1, NULL, '4418');
INSERT INTO `dvadmin_system_area` VALUES (2184, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '东莞市', '4419', 2, 'dongguanshi', 'D', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2185, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '东城街道', '441900003', 3, 'dongchengjiedao', 'D', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2186, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '南城街道', '441900004', 3, 'nanchengjiedao', 'N', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2187, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '万江街道', '441900005', 3, 'wanjiangjiedao', 'W', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2188, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '莞城街道', '441900006', 3, 'guanchengjiedao', 'G', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2189, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '石碣镇', '441900101', 3, 'shijiezhen', 'S', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2190, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '石龙镇', '441900102', 3, 'shilongzhen', 'S', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2191, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '茶山镇', '441900103', 3, 'chashanzhen', 'C', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2192, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '石排镇', '441900104', 3, 'shipaizhen', 'S', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2193, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '企石镇', '441900105', 3, 'qishizhen', 'Q', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2194, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '横沥镇', '441900106', 3, 'henglizhen', 'H', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2195, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '桥头镇', '441900107', 3, 'qiaotouzhen', 'Q', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2196, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '谢岗镇', '441900108', 3, 'xiegangzhen', 'X', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2197, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '东坑镇', '441900109', 3, 'dongkengzhen', 'D', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2198, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '常平镇', '441900110', 3, 'changpingzhen', 'C', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2199, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '寮步镇', '441900111', 3, 'liaobuzhen', 'L', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2200, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '樟木头镇', '441900112', 3, 'zhangmutouzhen', 'Z', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2201, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '大朗镇', '441900113', 3, 'dalangzhen', 'D', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2202, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '黄江镇', '441900114', 3, 'huangjiangzhen', 'H', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2203, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '清溪镇', '441900115', 3, 'qingxizhen', 'Q', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2204, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '塘厦镇', '441900116', 3, 'tangshazhen', 'T', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2205, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '凤岗镇', '441900117', 3, 'fenggangzhen', 'F', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2206, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '大岭山镇', '441900118', 3, 'dalingshanzhen', 'D', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2207, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '长安镇', '441900119', 3, 'changanzhen', 'C', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2208, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '虎门镇', '441900121', 3, 'humenzhen', 'H', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2209, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '厚街镇', '441900122', 3, 'houjiezhen', 'H', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2210, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '沙田镇', '441900123', 3, 'shatianzhen', 'S', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2211, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '道滘镇', '441900124', 3, 'daojiaozhen', 'D', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2212, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '洪梅镇', '441900125', 3, 'hongmeizhen', 'H', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2213, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '麻涌镇', '441900126', 3, 'mayongzhen', 'M', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2214, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '望牛墩镇', '441900127', 3, 'wangniudunzhen', 'W', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2215, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '中堂镇', '441900128', 3, 'zhongtangzhen', 'Z', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2216, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '高埗镇', '441900129', 3, 'gaobuzhen', 'G', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2217, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '松山湖', '441900401', 3, 'songshanhu', 'S', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2218, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '东莞港', '441900402', 3, 'dongguangang', 'D', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2219, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '东莞生态园', '441900403', 3, 'dongguanshengtaiyuan', 'D', 1, NULL, '4419');
INSERT INTO `dvadmin_system_area` VALUES (2220, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '中山市', '4420', 2, 'zhongshanshi', 'Z', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2221, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '石岐街道', '442000001', 3, 'shiqijiedao', 'S', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2222, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '东区街道', '442000002', 3, 'dongqujiedao', 'D', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2223, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '中山港街道', '442000003', 3, 'zhongshangangjiedao', 'Z', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2224, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '西区街道', '442000004', 3, 'xiqujiedao', 'X', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2225, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '南区街道', '442000005', 3, 'nanqujiedao', 'N', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2226, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '五桂山街道', '442000006', 3, 'wuguishanjiedao', 'W', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2227, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '小榄镇', '442000100', 3, 'xiaolanzhen', 'X', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2228, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '黄圃镇', '442000101', 3, 'huangpuzhen', 'H', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2229, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '民众镇', '442000102', 3, 'minzhongzhen', 'M', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2230, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '东凤镇', '442000103', 3, 'dongfengzhen', 'D', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2231, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '东升镇', '442000104', 3, 'dongshengzhen', 'D', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2232, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '古镇镇', '442000105', 3, 'guzhenzhen', 'G', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2233, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '沙溪镇', '442000106', 3, 'shaxizhen', 'S', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2234, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '坦洲镇', '442000107', 3, 'tanzhouzhen', 'T', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2235, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '港口镇', '442000108', 3, 'gangkouzhen', 'G', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2236, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '三角镇', '442000109', 3, 'sanjiaozhen', 'S', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2237, NULL, NULL, NULL, '2023-11-04 16:46:11.241641', '2023-11-04 16:46:11.241641', '横栏镇', '442000110', 3, 'henglanzhen', 'H', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2238, NULL, NULL, NULL, '2023-11-04 16:46:11.242642', '2023-11-04 16:46:11.242642', '南头镇', '442000111', 3, 'nantouzhen', 'N', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2239, NULL, NULL, NULL, '2023-11-04 16:46:11.242642', '2023-11-04 16:46:11.242642', '阜沙镇', '442000112', 3, 'fushazhen', 'F', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2240, NULL, NULL, NULL, '2023-11-04 16:46:11.242642', '2023-11-04 16:46:11.242642', '南朗镇', '442000113', 3, 'nanlangzhen', 'N', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2241, NULL, NULL, NULL, '2023-11-04 16:46:11.242642', '2023-11-04 16:46:11.242642', '三乡镇', '442000114', 3, 'sanxiangzhen', 'S', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2242, NULL, NULL, NULL, '2023-11-04 16:46:11.242642', '2023-11-04 16:46:11.242642', '板芙镇', '442000115', 3, 'banfuzhen', 'B', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2243, NULL, NULL, NULL, '2023-11-04 16:46:11.242642', '2023-11-04 16:46:11.242642', '大涌镇', '442000116', 3, 'dayongzhen', 'D', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2244, NULL, NULL, NULL, '2023-11-04 16:46:11.242642', '2023-11-04 16:46:11.242642', '神湾镇', '442000117', 3, 'shenwanzhen', 'S', 1, NULL, '4420');
INSERT INTO `dvadmin_system_area` VALUES (2245, NULL, NULL, NULL, '2023-11-04 16:46:11.242642', '2023-11-04 16:46:11.242642', '潮州市', '4451', 2, 'chaozhoushi', 'C', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2246, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '湘桥区', '445102', 3, 'xiangqiaoqu', 'X', 1, NULL, '4451');
INSERT INTO `dvadmin_system_area` VALUES (2247, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '潮安区', '445103', 3, 'chaoanqu', 'C', 1, NULL, '4451');
INSERT INTO `dvadmin_system_area` VALUES (2248, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '饶平县', '445122', 3, 'raopingxian', 'R', 1, NULL, '4451');
INSERT INTO `dvadmin_system_area` VALUES (2249, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '揭阳市', '4452', 2, 'jieyangshi', 'J', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2250, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '榕城区', '445202', 3, 'rongchengqu', 'R', 1, NULL, '4452');
INSERT INTO `dvadmin_system_area` VALUES (2251, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '揭东区', '445203', 3, 'jiedongqu', 'J', 1, NULL, '4452');
INSERT INTO `dvadmin_system_area` VALUES (2252, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '揭西县', '445222', 3, 'jiexixian', 'J', 1, NULL, '4452');
INSERT INTO `dvadmin_system_area` VALUES (2253, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '惠来县', '445224', 3, 'huilaixian', 'H', 1, NULL, '4452');
INSERT INTO `dvadmin_system_area` VALUES (2254, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '普宁市', '445281', 3, 'puningshi', 'P', 1, NULL, '4452');
INSERT INTO `dvadmin_system_area` VALUES (2255, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '云浮市', '4453', 2, 'yunfushi', 'Y', 1, NULL, '44');
INSERT INTO `dvadmin_system_area` VALUES (2256, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '云城区', '445302', 3, 'yunchengqu', 'Y', 1, NULL, '4453');
INSERT INTO `dvadmin_system_area` VALUES (2257, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '云安区', '445303', 3, 'yunanqu', 'Y', 1, NULL, '4453');
INSERT INTO `dvadmin_system_area` VALUES (2258, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '新兴县', '445321', 3, 'xinxingxian', 'X', 1, NULL, '4453');
INSERT INTO `dvadmin_system_area` VALUES (2259, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '郁南县', '445322', 3, 'yunanxian', 'Y', 1, NULL, '4453');
INSERT INTO `dvadmin_system_area` VALUES (2260, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '罗定市', '445381', 3, 'luodingshi', 'L', 1, NULL, '4453');
INSERT INTO `dvadmin_system_area` VALUES (2261, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '广西壮族自治区', '45', 1, 'guangxizhuangzuzizhiqu', 'G', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2262, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '南宁市', '4501', 2, 'nanningshi', 'N', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2263, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '兴宁区', '450102', 3, 'xingningqu', 'X', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2264, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '青秀区', '450103', 3, 'qingxiuqu', 'Q', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2265, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '江南区', '450105', 3, 'jiangnanqu', 'J', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2266, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '西乡塘区', '450107', 3, 'xixiangtangqu', 'X', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2267, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '良庆区', '450108', 3, 'liangqingqu', 'L', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2268, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '邕宁区', '450109', 3, 'yongningqu', 'Y', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2269, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '武鸣区', '450110', 3, 'wumingqu', 'W', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2270, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '隆安县', '450123', 3, 'longanxian', 'L', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2271, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '马山县', '450124', 3, 'mashanxian', 'M', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2272, NULL, NULL, NULL, '2023-11-04 16:46:11.242776', '2023-11-04 16:46:11.242776', '上林县', '450125', 3, 'shanglinxian', 'S', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2273, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '宾阳县', '450126', 3, 'binyangxian', 'B', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2274, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '横县', '450127', 3, 'hengxian', 'H', 1, NULL, '4501');
INSERT INTO `dvadmin_system_area` VALUES (2275, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '柳州市', '4502', 2, 'liuzhoushi', 'L', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2276, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '城中区', '450202', 3, 'chengzhongqu', 'C', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2277, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '鱼峰区', '450203', 3, 'yufengqu', 'Y', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2278, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '柳南区', '450204', 3, 'liunanqu', 'L', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2279, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '柳北区', '450205', 3, 'liubeiqu', 'L', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2280, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '柳江区', '450206', 3, 'liujiangqu', 'L', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2281, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '柳城县', '450222', 3, 'liuchengxian', 'L', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2282, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '鹿寨县', '450223', 3, 'luzhaixian', 'L', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2283, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '融安县', '450224', 3, 'ronganxian', 'R', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2284, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '融水苗族自治县', '450225', 3, 'rongshuimiaozuzizhixian', 'R', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2285, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '三江侗族自治县', '450226', 3, 'sanjiangdongzuzizhixian', 'S', 1, NULL, '4502');
INSERT INTO `dvadmin_system_area` VALUES (2286, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '桂林市', '4503', 2, 'guilinshi', 'G', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2287, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '秀峰区', '450302', 3, 'xiufengqu', 'X', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2288, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '叠彩区', '450303', 3, 'diecaiqu', 'D', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2289, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '象山区', '450304', 3, 'xiangshanqu', 'X', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2290, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '七星区', '450305', 3, 'qixingqu', 'Q', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2291, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '雁山区', '450311', 3, 'yanshanqu', 'Y', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2292, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '临桂区', '450312', 3, 'linguiqu', 'L', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2293, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '阳朔县', '450321', 3, 'yangshuoxian', 'Y', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2294, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '灵川县', '450323', 3, 'lingchuanxian', 'L', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2295, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '全州县', '450324', 3, 'quanzhouxian', 'Q', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2296, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '兴安县', '450325', 3, 'xinganxian', 'X', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2297, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '永福县', '450326', 3, 'yongfuxian', 'Y', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2298, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '灌阳县', '450327', 3, 'guanyangxian', 'G', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2299, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '龙胜各族自治县', '450328', 3, 'longshenggezuzizhixian', 'L', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2300, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '资源县', '450329', 3, 'ziyuanxian', 'Z', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2301, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '平乐县', '450330', 3, 'pinglexian', 'P', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2302, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '恭城瑶族自治县', '450332', 3, 'gongchengyaozuzizhixian', 'G', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2303, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '荔浦市', '450381', 3, 'lipushi', 'L', 1, NULL, '4503');
INSERT INTO `dvadmin_system_area` VALUES (2304, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '梧州市', '4504', 2, 'wuzhoushi', 'W', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2305, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '万秀区', '450403', 3, 'wanxiuqu', 'W', 1, NULL, '4504');
INSERT INTO `dvadmin_system_area` VALUES (2306, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '长洲区', '450405', 3, 'zhangzhouqu', 'Z', 1, NULL, '4504');
INSERT INTO `dvadmin_system_area` VALUES (2307, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '龙圩区', '450406', 3, 'longweiqu', 'L', 1, NULL, '4504');
INSERT INTO `dvadmin_system_area` VALUES (2308, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '苍梧县', '450421', 3, 'cangwuxian', 'C', 1, NULL, '4504');
INSERT INTO `dvadmin_system_area` VALUES (2309, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '藤县', '450422', 3, 'tengxian', 'T', 1, NULL, '4504');
INSERT INTO `dvadmin_system_area` VALUES (2310, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '蒙山县', '450423', 3, 'mengshanxian', 'M', 1, NULL, '4504');
INSERT INTO `dvadmin_system_area` VALUES (2311, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '岑溪市', '450481', 3, 'cenxishi', 'C', 1, NULL, '4504');
INSERT INTO `dvadmin_system_area` VALUES (2312, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '北海市', '4505', 2, 'beihaishi', 'B', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2313, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '海城区', '450502', 3, 'haichengqu', 'H', 1, NULL, '4505');
INSERT INTO `dvadmin_system_area` VALUES (2314, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '银海区', '450503', 3, 'yinhaiqu', 'Y', 1, NULL, '4505');
INSERT INTO `dvadmin_system_area` VALUES (2315, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '铁山港区', '450512', 3, 'tieshangangqu', 'T', 1, NULL, '4505');
INSERT INTO `dvadmin_system_area` VALUES (2316, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '合浦县', '450521', 3, 'hepuxian', 'H', 1, NULL, '4505');
INSERT INTO `dvadmin_system_area` VALUES (2317, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '防城港市', '4506', 2, 'fangchenggangshi', 'F', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2318, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '港口区', '450602', 3, 'gangkouqu', 'G', 1, NULL, '4506');
INSERT INTO `dvadmin_system_area` VALUES (2319, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '防城区', '450603', 3, 'fangchengqu', 'F', 1, NULL, '4506');
INSERT INTO `dvadmin_system_area` VALUES (2320, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '上思县', '450621', 3, 'shangsixian', 'S', 1, NULL, '4506');
INSERT INTO `dvadmin_system_area` VALUES (2321, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '东兴市', '450681', 3, 'dongxingshi', 'D', 1, NULL, '4506');
INSERT INTO `dvadmin_system_area` VALUES (2322, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '钦州市', '4507', 2, 'qinzhoushi', 'Q', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2323, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '钦南区', '450702', 3, 'qinnanqu', 'Q', 1, NULL, '4507');
INSERT INTO `dvadmin_system_area` VALUES (2324, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '钦北区', '450703', 3, 'qinbeiqu', 'Q', 1, NULL, '4507');
INSERT INTO `dvadmin_system_area` VALUES (2325, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '灵山县', '450721', 3, 'lingshanxian', 'L', 1, NULL, '4507');
INSERT INTO `dvadmin_system_area` VALUES (2326, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '浦北县', '450722', 3, 'pubeixian', 'P', 1, NULL, '4507');
INSERT INTO `dvadmin_system_area` VALUES (2327, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '贵港市', '4508', 2, 'guigangshi', 'G', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2328, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '港北区', '450802', 3, 'gangbeiqu', 'G', 1, NULL, '4508');
INSERT INTO `dvadmin_system_area` VALUES (2329, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '港南区', '450803', 3, 'gangnanqu', 'G', 1, NULL, '4508');
INSERT INTO `dvadmin_system_area` VALUES (2330, NULL, NULL, NULL, '2023-11-04 16:46:11.243283', '2023-11-04 16:46:11.243283', '覃塘区', '450804', 3, 'tantangqu', 'T', 1, NULL, '4508');
INSERT INTO `dvadmin_system_area` VALUES (2331, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '平南县', '450821', 3, 'pingnanxian', 'P', 1, NULL, '4508');
INSERT INTO `dvadmin_system_area` VALUES (2332, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '桂平市', '450881', 3, 'guipingshi', 'G', 1, NULL, '4508');
INSERT INTO `dvadmin_system_area` VALUES (2333, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '玉林市', '4509', 2, 'yulinshi', 'Y', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2334, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '玉州区', '450902', 3, 'yuzhouqu', 'Y', 1, NULL, '4509');
INSERT INTO `dvadmin_system_area` VALUES (2335, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '福绵区', '450903', 3, 'fumianqu', 'F', 1, NULL, '4509');
INSERT INTO `dvadmin_system_area` VALUES (2336, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '容县', '450921', 3, 'rongxian', 'R', 1, NULL, '4509');
INSERT INTO `dvadmin_system_area` VALUES (2337, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '陆川县', '450922', 3, 'luchuanxian', 'L', 1, NULL, '4509');
INSERT INTO `dvadmin_system_area` VALUES (2338, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '博白县', '450923', 3, 'bobaixian', 'B', 1, NULL, '4509');
INSERT INTO `dvadmin_system_area` VALUES (2339, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '兴业县', '450924', 3, 'xingyexian', 'X', 1, NULL, '4509');
INSERT INTO `dvadmin_system_area` VALUES (2340, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '北流市', '450981', 3, 'beiliushi', 'B', 1, NULL, '4509');
INSERT INTO `dvadmin_system_area` VALUES (2341, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '百色市', '4510', 2, 'baiseshi', 'B', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2342, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '右江区', '451002', 3, 'youjiangqu', 'Y', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2343, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '田阳区', '451003', 3, 'tianyangqu', 'T', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2344, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '田东县', '451022', 3, 'tiandongxian', 'T', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2345, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '德保县', '451024', 3, 'debaoxian', 'D', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2346, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '那坡县', '451026', 3, 'napoxian', 'N', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2347, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '凌云县', '451027', 3, 'lingyunxian', 'L', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2348, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '乐业县', '451028', 3, 'leyexian', 'L', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2349, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '田林县', '451029', 3, 'tianlinxian', 'T', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2350, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '西林县', '451030', 3, 'xilinxian', 'X', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2351, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '隆林各族自治县', '451031', 3, 'longlingezuzizhixian', 'L', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2352, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '靖西市', '451081', 3, 'jingxishi', 'J', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2353, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '平果市', '451082', 3, 'pingguoshi', 'P', 1, NULL, '4510');
INSERT INTO `dvadmin_system_area` VALUES (2354, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '贺州市', '4511', 2, 'hezhoushi', 'H', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2355, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '八步区', '451102', 3, 'babuqu', 'B', 1, NULL, '4511');
INSERT INTO `dvadmin_system_area` VALUES (2356, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '平桂区', '451103', 3, 'pingguiqu', 'P', 1, NULL, '4511');
INSERT INTO `dvadmin_system_area` VALUES (2357, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '昭平县', '451121', 3, 'zhaopingxian', 'Z', 1, NULL, '4511');
INSERT INTO `dvadmin_system_area` VALUES (2358, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '钟山县', '451122', 3, 'zhongshanxian', 'Z', 1, NULL, '4511');
INSERT INTO `dvadmin_system_area` VALUES (2359, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '富川瑶族自治县', '451123', 3, 'fuchuanyaozuzizhixian', 'F', 1, NULL, '4511');
INSERT INTO `dvadmin_system_area` VALUES (2360, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '河池市', '4512', 2, 'hechishi', 'H', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2361, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '金城江区', '451202', 3, 'jinchengjiangqu', 'J', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2362, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '宜州区', '451203', 3, 'yizhouqu', 'Y', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2363, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '南丹县', '451221', 3, 'nandanxian', 'N', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2364, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '天峨县', '451222', 3, 'tianexian', 'T', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2365, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '凤山县', '451223', 3, 'fengshanxian', 'F', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2366, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '东兰县', '451224', 3, 'donglanxian', 'D', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2367, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '罗城仫佬族自治县', '451225', 3, 'luochengmulaozuzizhixian', 'L', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2368, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '环江毛南族自治县', '451226', 3, 'huanjiangmaonanzuzizhixian', 'H', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2369, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '巴马瑶族自治县', '451227', 3, 'bamayaozuzizhixian', 'B', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2370, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '都安瑶族自治县', '451228', 3, 'douanyaozuzizhixian', 'D', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2371, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '大化瑶族自治县', '451229', 3, 'dahuayaozuzizhixian', 'D', 1, NULL, '4512');
INSERT INTO `dvadmin_system_area` VALUES (2372, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '来宾市', '4513', 2, 'laibinshi', 'L', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2373, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '兴宾区', '451302', 3, 'xingbinqu', 'X', 1, NULL, '4513');
INSERT INTO `dvadmin_system_area` VALUES (2374, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '忻城县', '451321', 3, 'xinchengxian', 'X', 1, NULL, '4513');
INSERT INTO `dvadmin_system_area` VALUES (2375, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '象州县', '451322', 3, 'xiangzhouxian', 'X', 1, NULL, '4513');
INSERT INTO `dvadmin_system_area` VALUES (2376, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '武宣县', '451323', 3, 'wuxuanxian', 'W', 1, NULL, '4513');
INSERT INTO `dvadmin_system_area` VALUES (2377, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '金秀瑶族自治县', '451324', 3, 'jinxiuyaozuzizhixian', 'J', 1, NULL, '4513');
INSERT INTO `dvadmin_system_area` VALUES (2378, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '合山市', '451381', 3, 'heshanshi', 'H', 1, NULL, '4513');
INSERT INTO `dvadmin_system_area` VALUES (2379, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '崇左市', '4514', 2, 'chongzuoshi', 'C', 1, NULL, '45');
INSERT INTO `dvadmin_system_area` VALUES (2380, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '江州区', '451402', 3, 'jiangzhouqu', 'J', 1, NULL, '4514');
INSERT INTO `dvadmin_system_area` VALUES (2381, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '扶绥县', '451421', 3, 'fusuixian', 'F', 1, NULL, '4514');
INSERT INTO `dvadmin_system_area` VALUES (2382, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '宁明县', '451422', 3, 'ningmingxian', 'N', 1, NULL, '4514');
INSERT INTO `dvadmin_system_area` VALUES (2383, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '龙州县', '451423', 3, 'longzhouxian', 'L', 1, NULL, '4514');
INSERT INTO `dvadmin_system_area` VALUES (2384, NULL, NULL, NULL, '2023-11-04 16:46:11.244289', '2023-11-04 16:46:11.244289', '大新县', '451424', 3, 'daxinxian', 'D', 1, NULL, '4514');
INSERT INTO `dvadmin_system_area` VALUES (2385, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '天等县', '451425', 3, 'tiandengxian', 'T', 1, NULL, '4514');
INSERT INTO `dvadmin_system_area` VALUES (2386, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '凭祥市', '451481', 3, 'pingxiangshi', 'P', 1, NULL, '4514');
INSERT INTO `dvadmin_system_area` VALUES (2387, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '海南省', '46', 1, 'hainansheng', 'H', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2388, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '海口市', '4601', 2, 'haikoushi', 'H', 1, NULL, '46');
INSERT INTO `dvadmin_system_area` VALUES (2389, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '秀英区', '460105', 3, 'xiuyingqu', 'X', 1, NULL, '4601');
INSERT INTO `dvadmin_system_area` VALUES (2390, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '龙华区', '460106', 3, 'longhuaqu', 'L', 1, NULL, '4601');
INSERT INTO `dvadmin_system_area` VALUES (2391, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '琼山区', '460107', 3, 'qiongshanqu', 'Q', 1, NULL, '4601');
INSERT INTO `dvadmin_system_area` VALUES (2392, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '美兰区', '460108', 3, 'meilanqu', 'M', 1, NULL, '4601');
INSERT INTO `dvadmin_system_area` VALUES (2393, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '三亚市', '4602', 2, 'sanyashi', 'S', 1, NULL, '46');
INSERT INTO `dvadmin_system_area` VALUES (2394, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '海棠区', '460202', 3, 'haitangqu', 'H', 1, NULL, '4602');
INSERT INTO `dvadmin_system_area` VALUES (2395, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '吉阳区', '460203', 3, 'jiyangqu', 'J', 1, NULL, '4602');
INSERT INTO `dvadmin_system_area` VALUES (2396, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '天涯区', '460204', 3, 'tianyaqu', 'T', 1, NULL, '4602');
INSERT INTO `dvadmin_system_area` VALUES (2397, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '崖州区', '460205', 3, 'yazhouqu', 'Y', 1, NULL, '4602');
INSERT INTO `dvadmin_system_area` VALUES (2398, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '三沙市', '4603', 2, 'sanshashi', 'S', 1, NULL, '46');
INSERT INTO `dvadmin_system_area` VALUES (2399, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '西沙群岛', '460321', 3, 'xishaqundao', 'X', 1, NULL, '4603');
INSERT INTO `dvadmin_system_area` VALUES (2400, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '南沙群岛', '460322', 3, 'nanshaqundao', 'N', 1, NULL, '4603');
INSERT INTO `dvadmin_system_area` VALUES (2401, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '中沙群岛的岛礁及其海域', '460323', 3, 'zhongshaqundaodedaojiaojiqihaiyu', 'Z', 1, NULL, '4603');
INSERT INTO `dvadmin_system_area` VALUES (2402, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '儋州市', '4604', 2, 'danzhoushi', 'D', 1, NULL, '46');
INSERT INTO `dvadmin_system_area` VALUES (2403, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '那大镇', '460400100', 3, 'nadazhen', 'N', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2404, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '和庆镇', '460400101', 3, 'heqingzhen', 'H', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2405, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '南丰镇', '460400102', 3, 'nanfengzhen', 'N', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2406, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '大成镇', '460400103', 3, 'dachengzhen', 'D', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2407, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '雅星镇', '460400104', 3, 'yaxingzhen', 'Y', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2408, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '兰洋镇', '460400105', 3, 'lanyangzhen', 'L', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2409, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '光村镇', '460400106', 3, 'guangcunzhen', 'G', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2410, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '木棠镇', '460400107', 3, 'mutangzhen', 'M', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2411, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '海头镇', '460400108', 3, 'haitouzhen', 'H', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2412, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '峨蔓镇', '460400109', 3, 'emanzhen', 'E', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2413, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '王五镇', '460400111', 3, 'wangwuzhen', 'W', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2414, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '白马井镇', '460400112', 3, 'baimajingzhen', 'B', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2415, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '中和镇', '460400113', 3, 'zhonghezhen', 'Z', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2416, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '排浦镇', '460400114', 3, 'paipuzhen', 'P', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2417, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '东成镇', '460400115', 3, 'dongchengzhen', 'D', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2418, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '新州镇', '460400116', 3, 'xinzhouzhen', 'X', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2419, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '洋浦经济开发区', '460400499', 3, 'yangpujingjikaifaqu', 'Y', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2420, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '华南热作学院', '460400500', 3, 'huananrezuoxueyuan', 'H', 1, NULL, '4604');
INSERT INTO `dvadmin_system_area` VALUES (2421, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '省直辖县级行政区划', '4690', 2, 'shengzhixiaxianjixingzhengquhua', 'S', 1, NULL, '46');
INSERT INTO `dvadmin_system_area` VALUES (2422, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '五指山市', '469001', 3, 'wuzhishanshi', 'W', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2423, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '琼海市', '469002', 3, 'qionghaishi', 'Q', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2424, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '文昌市', '469005', 3, 'wenchangshi', 'W', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2425, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '万宁市', '469006', 3, 'wanningshi', 'W', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2426, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '东方市', '469007', 3, 'dongfangshi', 'D', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2427, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '定安县', '469021', 3, 'dinganxian', 'D', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2428, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '屯昌县', '469022', 3, 'tunchangxian', 'T', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2429, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '澄迈县', '469023', 3, 'chengmaixian', 'C', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2430, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '临高县', '469024', 3, 'lingaoxian', 'L', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2431, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '白沙黎族自治县', '469025', 3, 'baishalizuzizhixian', 'B', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2432, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '昌江黎族自治县', '469026', 3, 'changjianglizuzizhixian', 'C', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2433, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '乐东黎族自治县', '469027', 3, 'ledonglizuzizhixian', 'L', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2434, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '陵水黎族自治县', '469028', 3, 'lingshuilizuzizhixian', 'L', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2435, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '保亭黎族苗族自治县', '469029', 3, 'baotinglizumiaozuzizhixian', 'B', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2436, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '琼中黎族苗族自治县', '469030', 3, 'qiongzhonglizumiaozuzizhixian', 'Q', 1, NULL, '4690');
INSERT INTO `dvadmin_system_area` VALUES (2437, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '重庆市', '50', 1, 'chongqingshi', 'C', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2438, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '市辖区', '5001', 2, 'shixiaqu', 'S', 1, NULL, '50');
INSERT INTO `dvadmin_system_area` VALUES (2439, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '万州区', '500101', 3, 'wanzhouqu', 'W', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2440, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '涪陵区', '500102', 3, 'fulingqu', 'F', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2441, NULL, NULL, NULL, '2023-11-04 16:46:11.245291', '2023-11-04 16:46:11.245291', '渝中区', '500103', 3, 'yuzhongqu', 'Y', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2442, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '大渡口区', '500104', 3, 'dadukouqu', 'D', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2443, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '江北区', '500105', 3, 'jiangbeiqu', 'J', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2444, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '沙坪坝区', '500106', 3, 'shapingbaqu', 'S', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2445, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '九龙坡区', '500107', 3, 'jiulongpoqu', 'J', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2446, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '南岸区', '500108', 3, 'nananqu', 'N', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2447, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '北碚区', '500109', 3, 'beibeiqu', 'B', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2448, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '綦江区', '500110', 3, 'qijiangqu', 'Q', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2449, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '大足区', '500111', 3, 'dazuqu', 'D', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2450, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '渝北区', '500112', 3, 'yubeiqu', 'Y', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2451, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '巴南区', '500113', 3, 'bananqu', 'B', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2452, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '黔江区', '500114', 3, 'qianjiangqu', 'Q', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2453, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '长寿区', '500115', 3, 'changshouqu', 'C', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2454, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '江津区', '500116', 3, 'jiangjinqu', 'J', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2455, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '合川区', '500117', 3, 'hechuanqu', 'H', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2456, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '永川区', '500118', 3, 'yongchuanqu', 'Y', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2457, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '南川区', '500119', 3, 'nanchuanqu', 'N', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2458, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '璧山区', '500120', 3, 'bishanqu', 'B', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2459, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '铜梁区', '500151', 3, 'tongliangqu', 'T', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2460, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '潼南区', '500152', 3, 'tongnanqu', 'T', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2461, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '荣昌区', '500153', 3, 'rongchangqu', 'R', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2462, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '开州区', '500154', 3, 'kaizhouqu', 'K', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2463, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '梁平区', '500155', 3, 'liangpingqu', 'L', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2464, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '武隆区', '500156', 3, 'wulongqu', 'W', 1, NULL, '5001');
INSERT INTO `dvadmin_system_area` VALUES (2465, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '县', '5002', 2, 'xian', 'X', 1, NULL, '50');
INSERT INTO `dvadmin_system_area` VALUES (2466, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '城口县', '500229', 3, 'chengkouxian', 'C', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2467, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '丰都县', '500230', 3, 'fengdouxian', 'F', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2468, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '垫江县', '500231', 3, 'dianjiangxian', 'D', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2469, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '忠县', '500233', 3, 'zhongxian', 'Z', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2470, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '云阳县', '500235', 3, 'yunyangxian', 'Y', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2471, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '奉节县', '500236', 3, 'fengjiexian', 'F', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2472, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '巫山县', '500237', 3, 'wushanxian', 'W', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2473, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '巫溪县', '500238', 3, 'wuxixian', 'W', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2474, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '石柱土家族自治县', '500240', 3, 'shizhutujiazuzizhixian', 'S', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2475, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '秀山土家族苗族自治县', '500241', 3, 'xiushantujiazumiaozuzizhixian', 'X', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2476, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '酉阳土家族苗族自治县', '500242', 3, 'youyangtujiazumiaozuzizhixian', 'Y', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2477, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '彭水苗族土家族自治县', '500243', 3, 'pengshuimiaozutujiazuzizhixian', 'P', 1, NULL, '5002');
INSERT INTO `dvadmin_system_area` VALUES (2478, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '四川省', '51', 1, 'sichuansheng', 'S', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2479, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '成都市', '5101', 2, 'chengdushi', 'C', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2480, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '锦江区', '510104', 3, 'jinjiangqu', 'J', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2481, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '青羊区', '510105', 3, 'qingyangqu', 'Q', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2482, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '金牛区', '510106', 3, 'jinniuqu', 'J', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2483, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '武侯区', '510107', 3, 'wuhouqu', 'W', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2484, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '成华区', '510108', 3, 'chenghuaqu', 'C', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2485, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '龙泉驿区', '510112', 3, 'longquanyiqu', 'L', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2486, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '青白江区', '510113', 3, 'qingbaijiangqu', 'Q', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2487, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '新都区', '510114', 3, 'xindouqu', 'X', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2488, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '温江区', '510115', 3, 'wenjiangqu', 'W', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2489, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '双流区', '510116', 3, 'shuangliuqu', 'S', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2490, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '郫都区', '510117', 3, 'pidouqu', 'P', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2491, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '新津区', '510118', 3, 'xinjinqu', 'X', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2492, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '金堂县', '510121', 3, 'jintangxian', 'J', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2493, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '大邑县', '510129', 3, 'dayixian', 'D', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2494, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '蒲江县', '510131', 3, 'pujiangxian', 'P', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2495, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '都江堰市', '510181', 3, 'dujiangyanshi', 'D', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2496, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '彭州市', '510182', 3, 'pengzhoushi', 'P', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2497, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '邛崃市', '510183', 3, 'qionglaishi', 'Q', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2498, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '崇州市', '510184', 3, 'chongzhoushi', 'C', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2499, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '简阳市', '510185', 3, 'jianyangshi', 'J', 1, NULL, '5101');
INSERT INTO `dvadmin_system_area` VALUES (2500, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '自贡市', '5103', 2, 'zigongshi', 'Z', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2501, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '自流井区', '510302', 3, 'ziliujingqu', 'Z', 1, NULL, '5103');
INSERT INTO `dvadmin_system_area` VALUES (2502, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '贡井区', '510303', 3, 'gongjingqu', 'G', 1, NULL, '5103');
INSERT INTO `dvadmin_system_area` VALUES (2503, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '大安区', '510304', 3, 'daanqu', 'D', 1, NULL, '5103');
INSERT INTO `dvadmin_system_area` VALUES (2504, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '沿滩区', '510311', 3, 'yantanqu', 'Y', 1, NULL, '5103');
INSERT INTO `dvadmin_system_area` VALUES (2505, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '荣县', '510321', 3, 'rongxian', 'R', 1, NULL, '5103');
INSERT INTO `dvadmin_system_area` VALUES (2506, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '富顺县', '510322', 3, 'fushunxian', 'F', 1, NULL, '5103');
INSERT INTO `dvadmin_system_area` VALUES (2507, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '攀枝花市', '5104', 2, 'panzhihuashi', 'P', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2508, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '东区', '510402', 3, 'dongqu', 'D', 1, NULL, '5104');
INSERT INTO `dvadmin_system_area` VALUES (2509, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '西区', '510403', 3, 'xiqu', 'X', 1, NULL, '5104');
INSERT INTO `dvadmin_system_area` VALUES (2510, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '仁和区', '510411', 3, 'renhequ', 'R', 1, NULL, '5104');
INSERT INTO `dvadmin_system_area` VALUES (2511, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '米易县', '510421', 3, 'miyixian', 'M', 1, NULL, '5104');
INSERT INTO `dvadmin_system_area` VALUES (2512, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '盐边县', '510422', 3, 'yanbianxian', 'Y', 1, NULL, '5104');
INSERT INTO `dvadmin_system_area` VALUES (2513, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '泸州市', '5105', 2, 'luzhoushi', 'L', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2514, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '江阳区', '510502', 3, 'jiangyangqu', 'J', 1, NULL, '5105');
INSERT INTO `dvadmin_system_area` VALUES (2515, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '纳溪区', '510503', 3, 'naxiqu', 'N', 1, NULL, '5105');
INSERT INTO `dvadmin_system_area` VALUES (2516, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '龙马潭区', '510504', 3, 'longmatanqu', 'L', 1, NULL, '5105');
INSERT INTO `dvadmin_system_area` VALUES (2517, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '泸县', '510521', 3, 'luxian', 'L', 1, NULL, '5105');
INSERT INTO `dvadmin_system_area` VALUES (2518, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '合江县', '510522', 3, 'hejiangxian', 'H', 1, NULL, '5105');
INSERT INTO `dvadmin_system_area` VALUES (2519, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '叙永县', '510524', 3, 'xuyongxian', 'X', 1, NULL, '5105');
INSERT INTO `dvadmin_system_area` VALUES (2520, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '古蔺县', '510525', 3, 'gulinxian', 'G', 1, NULL, '5105');
INSERT INTO `dvadmin_system_area` VALUES (2521, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '德阳市', '5106', 2, 'deyangshi', 'D', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2522, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '旌阳区', '510603', 3, 'jingyangqu', 'J', 1, NULL, '5106');
INSERT INTO `dvadmin_system_area` VALUES (2523, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '罗江区', '510604', 3, 'luojiangqu', 'L', 1, NULL, '5106');
INSERT INTO `dvadmin_system_area` VALUES (2524, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '中江县', '510623', 3, 'zhongjiangxian', 'Z', 1, NULL, '5106');
INSERT INTO `dvadmin_system_area` VALUES (2525, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '广汉市', '510681', 3, 'guanghanshi', 'G', 1, NULL, '5106');
INSERT INTO `dvadmin_system_area` VALUES (2526, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '什邡市', '510682', 3, 'shenfangshi', 'S', 1, NULL, '5106');
INSERT INTO `dvadmin_system_area` VALUES (2527, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '绵竹市', '510683', 3, 'mianzhushi', 'M', 1, NULL, '5106');
INSERT INTO `dvadmin_system_area` VALUES (2528, NULL, NULL, NULL, '2023-11-04 16:46:11.246289', '2023-11-04 16:46:11.246289', '绵阳市', '5107', 2, 'mianyangshi', 'M', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2529, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '涪城区', '510703', 3, 'fuchengqu', 'F', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2530, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '游仙区', '510704', 3, 'youxianqu', 'Y', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2531, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '安州区', '510705', 3, 'anzhouqu', 'A', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2532, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '三台县', '510722', 3, 'santaixian', 'S', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2533, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '盐亭县', '510723', 3, 'yantingxian', 'Y', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2534, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '梓潼县', '510725', 3, 'zitongxian', 'Z', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2535, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '北川羌族自治县', '510726', 3, 'beichuanqiangzuzizhixian', 'B', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2536, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '平武县', '510727', 3, 'pingwuxian', 'P', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2537, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '江油市', '510781', 3, 'jiangyoushi', 'J', 1, NULL, '5107');
INSERT INTO `dvadmin_system_area` VALUES (2538, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '广元市', '5108', 2, 'guangyuanshi', 'G', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2539, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '利州区', '510802', 3, 'lizhouqu', 'L', 1, NULL, '5108');
INSERT INTO `dvadmin_system_area` VALUES (2540, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '昭化区', '510811', 3, 'zhaohuaqu', 'Z', 1, NULL, '5108');
INSERT INTO `dvadmin_system_area` VALUES (2541, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '朝天区', '510812', 3, 'chaotianqu', 'C', 1, NULL, '5108');
INSERT INTO `dvadmin_system_area` VALUES (2542, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '旺苍县', '510821', 3, 'wangcangxian', 'W', 1, NULL, '5108');
INSERT INTO `dvadmin_system_area` VALUES (2543, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '青川县', '510822', 3, 'qingchuanxian', 'Q', 1, NULL, '5108');
INSERT INTO `dvadmin_system_area` VALUES (2544, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '剑阁县', '510823', 3, 'jiangexian', 'J', 1, NULL, '5108');
INSERT INTO `dvadmin_system_area` VALUES (2545, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '苍溪县', '510824', 3, 'cangxixian', 'C', 1, NULL, '5108');
INSERT INTO `dvadmin_system_area` VALUES (2546, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '遂宁市', '5109', 2, 'suiningshi', 'S', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2547, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '船山区', '510903', 3, 'chuanshanqu', 'C', 1, NULL, '5109');
INSERT INTO `dvadmin_system_area` VALUES (2548, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '安居区', '510904', 3, 'anjuqu', 'A', 1, NULL, '5109');
INSERT INTO `dvadmin_system_area` VALUES (2549, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '蓬溪县', '510921', 3, 'pengxixian', 'P', 1, NULL, '5109');
INSERT INTO `dvadmin_system_area` VALUES (2550, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '大英县', '510923', 3, 'dayingxian', 'D', 1, NULL, '5109');
INSERT INTO `dvadmin_system_area` VALUES (2551, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '射洪市', '510981', 3, 'shehongshi', 'S', 1, NULL, '5109');
INSERT INTO `dvadmin_system_area` VALUES (2552, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '内江市', '5110', 2, 'neijiangshi', 'N', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2553, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '市中区', '511002', 3, 'shizhongqu', 'S', 1, NULL, '5110');
INSERT INTO `dvadmin_system_area` VALUES (2554, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '东兴区', '511011', 3, 'dongxingqu', 'D', 1, NULL, '5110');
INSERT INTO `dvadmin_system_area` VALUES (2555, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '威远县', '511024', 3, 'weiyuanxian', 'W', 1, NULL, '5110');
INSERT INTO `dvadmin_system_area` VALUES (2556, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '资中县', '511025', 3, 'zizhongxian', 'Z', 1, NULL, '5110');
INSERT INTO `dvadmin_system_area` VALUES (2557, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '内江经济开发区', '511071', 3, 'neijiangjingjikaifaqu', 'N', 1, NULL, '5110');
INSERT INTO `dvadmin_system_area` VALUES (2558, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '隆昌市', '511083', 3, 'longchangshi', 'L', 1, NULL, '5110');
INSERT INTO `dvadmin_system_area` VALUES (2559, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '乐山市', '5111', 2, 'leshanshi', 'L', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2560, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '市中区', '511102', 3, 'shizhongqu', 'S', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2561, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '沙湾区', '511111', 3, 'shawanqu', 'S', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2562, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '五通桥区', '511112', 3, 'wutongqiaoqu', 'W', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2563, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '金口河区', '511113', 3, 'jinkouhequ', 'J', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2564, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '犍为县', '511123', 3, 'qianweixian', 'Q', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2565, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '井研县', '511124', 3, 'jingyanxian', 'J', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2566, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '夹江县', '511126', 3, 'jiajiangxian', 'J', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2567, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '沐川县', '511129', 3, 'muchuanxian', 'M', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2568, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '峨边彝族自治县', '511132', 3, 'ebianyizuzizhixian', 'E', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2569, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '马边彝族自治县', '511133', 3, 'mabianyizuzizhixian', 'M', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2570, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '峨眉山市', '511181', 3, 'emeishanshi', 'E', 1, NULL, '5111');
INSERT INTO `dvadmin_system_area` VALUES (2571, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '南充市', '5113', 2, 'nanchongshi', 'N', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2572, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '顺庆区', '511302', 3, 'shunqingqu', 'S', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2573, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '高坪区', '511303', 3, 'gaopingqu', 'G', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2574, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '嘉陵区', '511304', 3, 'jialingqu', 'J', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2575, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '南部县', '511321', 3, 'nanbuxian', 'N', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2576, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '营山县', '511322', 3, 'yingshanxian', 'Y', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2577, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '蓬安县', '511323', 3, 'penganxian', 'P', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2578, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '仪陇县', '511324', 3, 'yilongxian', 'Y', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2579, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '西充县', '511325', 3, 'xichongxian', 'X', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2580, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '阆中市', '511381', 3, 'langzhongshi', 'L', 1, NULL, '5113');
INSERT INTO `dvadmin_system_area` VALUES (2581, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '眉山市', '5114', 2, 'meishanshi', 'M', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2582, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '东坡区', '511402', 3, 'dongpoqu', 'D', 1, NULL, '5114');
INSERT INTO `dvadmin_system_area` VALUES (2583, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '彭山区', '511403', 3, 'pengshanqu', 'P', 1, NULL, '5114');
INSERT INTO `dvadmin_system_area` VALUES (2584, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '仁寿县', '511421', 3, 'renshouxian', 'R', 1, NULL, '5114');
INSERT INTO `dvadmin_system_area` VALUES (2585, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '洪雅县', '511423', 3, 'hongyaxian', 'H', 1, NULL, '5114');
INSERT INTO `dvadmin_system_area` VALUES (2586, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '丹棱县', '511424', 3, 'danlengxian', 'D', 1, NULL, '5114');
INSERT INTO `dvadmin_system_area` VALUES (2587, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '青神县', '511425', 3, 'qingshenxian', 'Q', 1, NULL, '5114');
INSERT INTO `dvadmin_system_area` VALUES (2588, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '宜宾市', '5115', 2, 'yibinshi', 'Y', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2589, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '翠屏区', '511502', 3, 'cuipingqu', 'C', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2590, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '南溪区', '511503', 3, 'nanxiqu', 'N', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2591, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '叙州区', '511504', 3, 'xuzhouqu', 'X', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2592, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '江安县', '511523', 3, 'jianganxian', 'J', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2593, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '长宁县', '511524', 3, 'zhangningxian', 'Z', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2594, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '高县', '511525', 3, 'gaoxian', 'G', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2595, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '珙县', '511526', 3, 'gongxian', 'G', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2596, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '筠连县', '511527', 3, 'yunlianxian', 'Y', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2597, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '兴文县', '511528', 3, 'xingwenxian', 'X', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2598, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '屏山县', '511529', 3, 'pingshanxian', 'P', 1, NULL, '5115');
INSERT INTO `dvadmin_system_area` VALUES (2599, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '广安市', '5116', 2, 'guanganshi', 'G', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2600, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '广安区', '511602', 3, 'guanganqu', 'G', 1, NULL, '5116');
INSERT INTO `dvadmin_system_area` VALUES (2601, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '前锋区', '511603', 3, 'qianfengqu', 'Q', 1, NULL, '5116');
INSERT INTO `dvadmin_system_area` VALUES (2602, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '岳池县', '511621', 3, 'yuechixian', 'Y', 1, NULL, '5116');
INSERT INTO `dvadmin_system_area` VALUES (2603, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '武胜县', '511622', 3, 'wushengxian', 'W', 1, NULL, '5116');
INSERT INTO `dvadmin_system_area` VALUES (2604, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '邻水县', '511623', 3, 'linshuixian', 'L', 1, NULL, '5116');
INSERT INTO `dvadmin_system_area` VALUES (2605, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '华蓥市', '511681', 3, 'huayingshi', 'H', 1, NULL, '5116');
INSERT INTO `dvadmin_system_area` VALUES (2606, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '达州市', '5117', 2, 'dazhoushi', 'D', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2607, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '通川区', '511702', 3, 'tongchuanqu', 'T', 1, NULL, '5117');
INSERT INTO `dvadmin_system_area` VALUES (2608, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '达川区', '511703', 3, 'dachuanqu', 'D', 1, NULL, '5117');
INSERT INTO `dvadmin_system_area` VALUES (2609, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '宣汉县', '511722', 3, 'xuanhanxian', 'X', 1, NULL, '5117');
INSERT INTO `dvadmin_system_area` VALUES (2610, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '开江县', '511723', 3, 'kaijiangxian', 'K', 1, NULL, '5117');
INSERT INTO `dvadmin_system_area` VALUES (2611, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '大竹县', '511724', 3, 'dazhuxian', 'D', 1, NULL, '5117');
INSERT INTO `dvadmin_system_area` VALUES (2612, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '渠县', '511725', 3, 'quxian', 'Q', 1, NULL, '5117');
INSERT INTO `dvadmin_system_area` VALUES (2613, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '达州经济开发区', '511771', 3, 'dazhoujingjikaifaqu', 'D', 1, NULL, '5117');
INSERT INTO `dvadmin_system_area` VALUES (2614, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '万源市', '511781', 3, 'wanyuanshi', 'W', 1, NULL, '5117');
INSERT INTO `dvadmin_system_area` VALUES (2615, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '雅安市', '5118', 2, 'yaanshi', 'Y', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2616, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '雨城区', '511802', 3, 'yuchengqu', 'Y', 1, NULL, '5118');
INSERT INTO `dvadmin_system_area` VALUES (2617, NULL, NULL, NULL, '2023-11-04 16:46:11.247793', '2023-11-04 16:46:11.247793', '名山区', '511803', 3, 'mingshanqu', 'M', 1, NULL, '5118');
INSERT INTO `dvadmin_system_area` VALUES (2618, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '荥经县', '511822', 3, 'xingjingxian', 'X', 1, NULL, '5118');
INSERT INTO `dvadmin_system_area` VALUES (2619, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '汉源县', '511823', 3, 'hanyuanxian', 'H', 1, NULL, '5118');
INSERT INTO `dvadmin_system_area` VALUES (2620, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '石棉县', '511824', 3, 'shimianxian', 'S', 1, NULL, '5118');
INSERT INTO `dvadmin_system_area` VALUES (2621, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '天全县', '511825', 3, 'tianquanxian', 'T', 1, NULL, '5118');
INSERT INTO `dvadmin_system_area` VALUES (2622, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '芦山县', '511826', 3, 'lushanxian', 'L', 1, NULL, '5118');
INSERT INTO `dvadmin_system_area` VALUES (2623, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '宝兴县', '511827', 3, 'baoxingxian', 'B', 1, NULL, '5118');
INSERT INTO `dvadmin_system_area` VALUES (2624, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '巴中市', '5119', 2, 'bazhongshi', 'B', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2625, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '巴州区', '511902', 3, 'bazhouqu', 'B', 1, NULL, '5119');
INSERT INTO `dvadmin_system_area` VALUES (2626, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '恩阳区', '511903', 3, 'enyangqu', 'E', 1, NULL, '5119');
INSERT INTO `dvadmin_system_area` VALUES (2627, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '通江县', '511921', 3, 'tongjiangxian', 'T', 1, NULL, '5119');
INSERT INTO `dvadmin_system_area` VALUES (2628, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '南江县', '511922', 3, 'nanjiangxian', 'N', 1, NULL, '5119');
INSERT INTO `dvadmin_system_area` VALUES (2629, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '平昌县', '511923', 3, 'pingchangxian', 'P', 1, NULL, '5119');
INSERT INTO `dvadmin_system_area` VALUES (2630, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '巴中经济开发区', '511971', 3, 'bazhongjingjikaifaqu', 'B', 1, NULL, '5119');
INSERT INTO `dvadmin_system_area` VALUES (2631, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '资阳市', '5120', 2, 'ziyangshi', 'Z', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2632, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '雁江区', '512002', 3, 'yanjiangqu', 'Y', 1, NULL, '5120');
INSERT INTO `dvadmin_system_area` VALUES (2633, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '安岳县', '512021', 3, 'anyuexian', 'A', 1, NULL, '5120');
INSERT INTO `dvadmin_system_area` VALUES (2634, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '乐至县', '512022', 3, 'lezhixian', 'L', 1, NULL, '5120');
INSERT INTO `dvadmin_system_area` VALUES (2635, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '阿坝藏族羌族自治州', '5132', 2, 'abazangzuqiangzuzizhizhou', 'A', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2636, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '马尔康市', '513201', 3, 'maerkangshi', 'M', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2637, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '汶川县', '513221', 3, 'wenchuanxian', 'W', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2638, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '理县', '513222', 3, 'lixian', 'L', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2639, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '茂县', '513223', 3, 'maoxian', 'M', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2640, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '松潘县', '513224', 3, 'songpanxian', 'S', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2641, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '九寨沟县', '513225', 3, 'jiuzhaigouxian', 'J', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2642, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '金川县', '513226', 3, 'jinchuanxian', 'J', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2643, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '小金县', '513227', 3, 'xiaojinxian', 'X', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2644, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '黑水县', '513228', 3, 'heishuixian', 'H', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2645, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '壤塘县', '513230', 3, 'rangtangxian', 'R', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2646, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '阿坝县', '513231', 3, 'abaxian', 'A', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2647, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '若尔盖县', '513232', 3, 'ruoergaixian', 'R', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2648, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '红原县', '513233', 3, 'hongyuanxian', 'H', 1, NULL, '5132');
INSERT INTO `dvadmin_system_area` VALUES (2649, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '甘孜藏族自治州', '5133', 2, 'ganzizangzuzizhizhou', 'G', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2650, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '康定市', '513301', 3, 'kangdingshi', 'K', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2651, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '泸定县', '513322', 3, 'ludingxian', 'L', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2652, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '丹巴县', '513323', 3, 'danbaxian', 'D', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2653, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '九龙县', '513324', 3, 'jiulongxian', 'J', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2654, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '雅江县', '513325', 3, 'yajiangxian', 'Y', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2655, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '道孚县', '513326', 3, 'daofuxian', 'D', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2656, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '炉霍县', '513327', 3, 'luhuoxian', 'L', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2657, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '甘孜县', '513328', 3, 'ganzixian', 'G', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2658, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '新龙县', '513329', 3, 'xinlongxian', 'X', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2659, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '德格县', '513330', 3, 'degexian', 'D', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2660, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '白玉县', '513331', 3, 'baiyuxian', 'B', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2661, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '石渠县', '513332', 3, 'shiquxian', 'S', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2662, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '色达县', '513333', 3, 'sedaxian', 'S', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2663, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '理塘县', '513334', 3, 'litangxian', 'L', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2664, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '巴塘县', '513335', 3, 'batangxian', 'B', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2665, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '乡城县', '513336', 3, 'xiangchengxian', 'X', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2666, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '稻城县', '513337', 3, 'daochengxian', 'D', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2667, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '得荣县', '513338', 3, 'derongxian', 'D', 1, NULL, '5133');
INSERT INTO `dvadmin_system_area` VALUES (2668, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '凉山彝族自治州', '5134', 2, 'liangshanyizuzizhizhou', 'L', 1, NULL, '51');
INSERT INTO `dvadmin_system_area` VALUES (2669, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '西昌市', '513401', 3, 'xichangshi', 'X', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2670, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '木里藏族自治县', '513422', 3, 'mulizangzuzizhixian', 'M', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2671, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '盐源县', '513423', 3, 'yanyuanxian', 'Y', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2672, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '德昌县', '513424', 3, 'dechangxian', 'D', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2673, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '会理县', '513425', 3, 'huilixian', 'H', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2674, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '会东县', '513426', 3, 'huidongxian', 'H', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2675, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '宁南县', '513427', 3, 'ningnanxian', 'N', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2676, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '普格县', '513428', 3, 'pugexian', 'P', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2677, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '布拖县', '513429', 3, 'butuoxian', 'B', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2678, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '金阳县', '513430', 3, 'jinyangxian', 'J', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2679, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '昭觉县', '513431', 3, 'zhaojuexian', 'Z', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2680, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '喜德县', '513432', 3, 'xidexian', 'X', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2681, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '冕宁县', '513433', 3, 'mianningxian', 'M', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2682, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '越西县', '513434', 3, 'yuexixian', 'Y', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2683, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '甘洛县', '513435', 3, 'ganluoxian', 'G', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2684, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '美姑县', '513436', 3, 'meiguxian', 'M', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2685, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '雷波县', '513437', 3, 'leiboxian', 'L', 1, NULL, '5134');
INSERT INTO `dvadmin_system_area` VALUES (2686, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '贵州省', '52', 1, 'guizhousheng', 'G', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2687, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '贵阳市', '5201', 2, 'guiyangshi', 'G', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2688, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '南明区', '520102', 3, 'nanmingqu', 'N', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2689, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '云岩区', '520103', 3, 'yunyanqu', 'Y', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2690, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '花溪区', '520111', 3, 'huaxiqu', 'H', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2691, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '乌当区', '520112', 3, 'wudangqu', 'W', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2692, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '白云区', '520113', 3, 'baiyunqu', 'B', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2693, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '观山湖区', '520115', 3, 'guanshanhuqu', 'G', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2694, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '开阳县', '520121', 3, 'kaiyangxian', 'K', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2695, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '息烽县', '520122', 3, 'xifengxian', 'X', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2696, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '修文县', '520123', 3, 'xiuwenxian', 'X', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2697, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '清镇市', '520181', 3, 'qingzhenshi', 'Q', 1, NULL, '5201');
INSERT INTO `dvadmin_system_area` VALUES (2698, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '六盘水市', '5202', 2, 'liupanshuishi', 'L', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2699, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '钟山区', '520201', 3, 'zhongshanqu', 'Z', 1, NULL, '5202');
INSERT INTO `dvadmin_system_area` VALUES (2700, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '六枝特区', '520203', 3, 'liuzhitequ', 'L', 1, NULL, '5202');
INSERT INTO `dvadmin_system_area` VALUES (2701, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '水城县', '520221', 3, 'shuichengxian', 'S', 1, NULL, '5202');
INSERT INTO `dvadmin_system_area` VALUES (2702, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '盘州市', '520281', 3, 'panzhoushi', 'P', 1, NULL, '5202');
INSERT INTO `dvadmin_system_area` VALUES (2703, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '遵义市', '5203', 2, 'zunyishi', 'Z', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2704, NULL, NULL, NULL, '2023-11-04 16:46:11.249313', '2023-11-04 16:46:11.249313', '红花岗区', '520302', 3, 'honghuagangqu', 'H', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2705, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '汇川区', '520303', 3, 'huichuanqu', 'H', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2706, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '播州区', '520304', 3, 'bozhouqu', 'B', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2707, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '桐梓县', '520322', 3, 'tongzixian', 'T', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2708, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '绥阳县', '520323', 3, 'suiyangxian', 'S', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2709, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '正安县', '520324', 3, 'zhenganxian', 'Z', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2710, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '道真仡佬族苗族自治县', '520325', 3, 'daozhengelaozumiaozuzizhixian', 'D', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2711, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '务川仡佬族苗族自治县', '520326', 3, 'wuchuangelaozumiaozuzizhixian', 'W', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2712, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '凤冈县', '520327', 3, 'fenggangxian', 'F', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2713, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '湄潭县', '520328', 3, 'meitanxian', 'M', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2714, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '余庆县', '520329', 3, 'yuqingxian', 'Y', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2715, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '习水县', '520330', 3, 'xishuixian', 'X', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2716, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '赤水市', '520381', 3, 'chishuishi', 'C', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2717, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '仁怀市', '520382', 3, 'renhuaishi', 'R', 1, NULL, '5203');
INSERT INTO `dvadmin_system_area` VALUES (2718, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '安顺市', '5204', 2, 'anshunshi', 'A', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2719, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '西秀区', '520402', 3, 'xixiuqu', 'X', 1, NULL, '5204');
INSERT INTO `dvadmin_system_area` VALUES (2720, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '平坝区', '520403', 3, 'pingbaqu', 'P', 1, NULL, '5204');
INSERT INTO `dvadmin_system_area` VALUES (2721, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '普定县', '520422', 3, 'pudingxian', 'P', 1, NULL, '5204');
INSERT INTO `dvadmin_system_area` VALUES (2722, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '镇宁布依族苗族自治县', '520423', 3, 'zhenningbuyizumiaozuzizhixian', 'Z', 1, NULL, '5204');
INSERT INTO `dvadmin_system_area` VALUES (2723, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '关岭布依族苗族自治县', '520424', 3, 'guanlingbuyizumiaozuzizhixian', 'G', 1, NULL, '5204');
INSERT INTO `dvadmin_system_area` VALUES (2724, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '紫云苗族布依族自治县', '520425', 3, 'ziyunmiaozubuyizuzizhixian', 'Z', 1, NULL, '5204');
INSERT INTO `dvadmin_system_area` VALUES (2725, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '毕节市', '5205', 2, 'bijieshi', 'B', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2726, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '七星关区', '520502', 3, 'qixingguanqu', 'Q', 1, NULL, '5205');
INSERT INTO `dvadmin_system_area` VALUES (2727, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '大方县', '520521', 3, 'dafangxian', 'D', 1, NULL, '5205');
INSERT INTO `dvadmin_system_area` VALUES (2728, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '黔西县', '520522', 3, 'qianxixian', 'Q', 1, NULL, '5205');
INSERT INTO `dvadmin_system_area` VALUES (2729, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '金沙县', '520523', 3, 'jinshaxian', 'J', 1, NULL, '5205');
INSERT INTO `dvadmin_system_area` VALUES (2730, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '织金县', '520524', 3, 'zhijinxian', 'Z', 1, NULL, '5205');
INSERT INTO `dvadmin_system_area` VALUES (2731, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '纳雍县', '520525', 3, 'nayongxian', 'N', 1, NULL, '5205');
INSERT INTO `dvadmin_system_area` VALUES (2732, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '威宁彝族回族苗族自治县', '520526', 3, 'weiningyizuhuizumiaozuzizhixian', 'W', 1, NULL, '5205');
INSERT INTO `dvadmin_system_area` VALUES (2733, NULL, NULL, NULL, '2023-11-04 16:46:11.250804', '2023-11-04 16:46:11.250804', '赫章县', '520527', 3, 'hezhangxian', 'H', 1, NULL, '5205');
INSERT INTO `dvadmin_system_area` VALUES (2734, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '铜仁市', '5206', 2, 'tongrenshi', 'T', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2735, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '碧江区', '520602', 3, 'bijiangqu', 'B', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2736, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '万山区', '520603', 3, 'wanshanqu', 'W', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2737, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '江口县', '520621', 3, 'jiangkouxian', 'J', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2738, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '玉屏侗族自治县', '520622', 3, 'yupingdongzuzizhixian', 'Y', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2739, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '石阡县', '520623', 3, 'shiqianxian', 'S', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2740, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '思南县', '520624', 3, 'sinanxian', 'S', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2741, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '印江土家族苗族自治县', '520625', 3, 'yinjiangtujiazumiaozuzizhixian', 'Y', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2742, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '德江县', '520626', 3, 'dejiangxian', 'D', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2743, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '沿河土家族自治县', '520627', 3, 'yanhetujiazuzizhixian', 'Y', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2744, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '松桃苗族自治县', '520628', 3, 'songtaomiaozuzizhixian', 'S', 1, NULL, '5206');
INSERT INTO `dvadmin_system_area` VALUES (2745, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '黔西南布依族苗族自治州', '5223', 2, 'qianxinanbuyizumiaozuzizhizhou', 'Q', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2746, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '兴义市', '522301', 3, 'xingyishi', 'X', 1, NULL, '5223');
INSERT INTO `dvadmin_system_area` VALUES (2747, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '兴仁市', '522302', 3, 'xingrenshi', 'X', 1, NULL, '5223');
INSERT INTO `dvadmin_system_area` VALUES (2748, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '普安县', '522323', 3, 'puanxian', 'P', 1, NULL, '5223');
INSERT INTO `dvadmin_system_area` VALUES (2749, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '晴隆县', '522324', 3, 'qinglongxian', 'Q', 1, NULL, '5223');
INSERT INTO `dvadmin_system_area` VALUES (2750, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '贞丰县', '522325', 3, 'zhenfengxian', 'Z', 1, NULL, '5223');
INSERT INTO `dvadmin_system_area` VALUES (2751, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '望谟县', '522326', 3, 'wangmoxian', 'W', 1, NULL, '5223');
INSERT INTO `dvadmin_system_area` VALUES (2752, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '册亨县', '522327', 3, 'cehengxian', 'C', 1, NULL, '5223');
INSERT INTO `dvadmin_system_area` VALUES (2753, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '安龙县', '522328', 3, 'anlongxian', 'A', 1, NULL, '5223');
INSERT INTO `dvadmin_system_area` VALUES (2754, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '黔东南苗族侗族自治州', '5226', 2, 'qiandongnanmiaozudongzuzizhizhou', 'Q', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2755, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '凯里市', '522601', 3, 'kailishi', 'K', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2756, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '黄平县', '522622', 3, 'huangpingxian', 'H', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2757, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '施秉县', '522623', 3, 'shibingxian', 'S', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2758, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '三穗县', '522624', 3, 'sansuixian', 'S', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2759, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '镇远县', '522625', 3, 'zhenyuanxian', 'Z', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2760, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '岑巩县', '522626', 3, 'cengongxian', 'C', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2761, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '天柱县', '522627', 3, 'tianzhuxian', 'T', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2762, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '锦屏县', '522628', 3, 'jinpingxian', 'J', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2763, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '剑河县', '522629', 3, 'jianhexian', 'J', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2764, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '台江县', '522630', 3, 'taijiangxian', 'T', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2765, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '黎平县', '522631', 3, 'lipingxian', 'L', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2766, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '榕江县', '522632', 3, 'rongjiangxian', 'R', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2767, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '从江县', '522633', 3, 'congjiangxian', 'C', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2768, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '雷山县', '522634', 3, 'leishanxian', 'L', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2769, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '麻江县', '522635', 3, 'majiangxian', 'M', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2770, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '丹寨县', '522636', 3, 'danzhaixian', 'D', 1, NULL, '5226');
INSERT INTO `dvadmin_system_area` VALUES (2771, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '黔南布依族苗族自治州', '5227', 2, 'qiannanbuyizumiaozuzizhizhou', 'Q', 1, NULL, '52');
INSERT INTO `dvadmin_system_area` VALUES (2772, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '都匀市', '522701', 3, 'douyunshi', 'D', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2773, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '福泉市', '522702', 3, 'fuquanshi', 'F', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2774, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '荔波县', '522722', 3, 'liboxian', 'L', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2775, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '贵定县', '522723', 3, 'guidingxian', 'G', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2776, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '瓮安县', '522725', 3, 'wenganxian', 'W', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2777, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '独山县', '522726', 3, 'dushanxian', 'D', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2778, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '平塘县', '522727', 3, 'pingtangxian', 'P', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2779, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '罗甸县', '522728', 3, 'luodianxian', 'L', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2780, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '长顺县', '522729', 3, 'zhangshunxian', 'Z', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2781, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '龙里县', '522730', 3, 'longlixian', 'L', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2782, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '惠水县', '522731', 3, 'huishuixian', 'H', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2783, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '三都水族自治县', '522732', 3, 'sandoushuizuzizhixian', 'S', 1, NULL, '5227');
INSERT INTO `dvadmin_system_area` VALUES (2784, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '云南省', '53', 1, 'yunnansheng', 'Y', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2785, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '昆明市', '5301', 2, 'kunmingshi', 'K', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2786, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '五华区', '530102', 3, 'wuhuaqu', 'W', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2787, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '盘龙区', '530103', 3, 'panlongqu', 'P', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2788, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '官渡区', '530111', 3, 'guanduqu', 'G', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2789, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '西山区', '530112', 3, 'xishanqu', 'X', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2790, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '东川区', '530113', 3, 'dongchuanqu', 'D', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2791, NULL, NULL, NULL, '2023-11-04 16:46:11.251308', '2023-11-04 16:46:11.251308', '呈贡区', '530114', 3, 'chenggongqu', 'C', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2792, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '晋宁区', '530115', 3, 'jinningqu', 'J', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2793, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '富民县', '530124', 3, 'fuminxian', 'F', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2794, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '宜良县', '530125', 3, 'yiliangxian', 'Y', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2795, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '石林彝族自治县', '530126', 3, 'shilinyizuzizhixian', 'S', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2796, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '嵩明县', '530127', 3, 'songmingxian', 'S', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2797, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '禄劝彝族苗族自治县', '530128', 3, 'luquanyizumiaozuzizhixian', 'L', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2798, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '寻甸回族彝族自治县', '530129', 3, 'xundianhuizuyizuzizhixian', 'X', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2799, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '安宁市', '530181', 3, 'anningshi', 'A', 1, NULL, '5301');
INSERT INTO `dvadmin_system_area` VALUES (2800, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '曲靖市', '5303', 2, 'qujingshi', 'Q', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2801, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '麒麟区', '530302', 3, 'qilinqu', 'Q', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2802, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '沾益区', '530303', 3, 'zhanyiqu', 'Z', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2803, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '马龙区', '530304', 3, 'malongqu', 'M', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2804, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '陆良县', '530322', 3, 'luliangxian', 'L', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2805, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '师宗县', '530323', 3, 'shizongxian', 'S', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2806, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '罗平县', '530324', 3, 'luopingxian', 'L', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2807, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '富源县', '530325', 3, 'fuyuanxian', 'F', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2808, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '会泽县', '530326', 3, 'huizexian', 'H', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2809, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '宣威市', '530381', 3, 'xuanweishi', 'X', 1, NULL, '5303');
INSERT INTO `dvadmin_system_area` VALUES (2810, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '玉溪市', '5304', 2, 'yuxishi', 'Y', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2811, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '红塔区', '530402', 3, 'hongtaqu', 'H', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2812, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '江川区', '530403', 3, 'jiangchuanqu', 'J', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2813, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '通海县', '530423', 3, 'tonghaixian', 'T', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2814, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '华宁县', '530424', 3, 'huaningxian', 'H', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2815, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '易门县', '530425', 3, 'yimenxian', 'Y', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2816, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '峨山彝族自治县', '530426', 3, 'eshanyizuzizhixian', 'E', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2817, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '新平彝族傣族自治县', '530427', 3, 'xinpingyizudaizuzizhixian', 'X', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2818, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '元江哈尼族彝族傣族自治县', '530428', 3, 'yuanjianghanizuyizudaizuzizhixian', 'Y', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2819, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '澄江市', '530481', 3, 'chengjiangshi', 'C', 1, NULL, '5304');
INSERT INTO `dvadmin_system_area` VALUES (2820, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '保山市', '5305', 2, 'baoshanshi', 'B', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2821, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '隆阳区', '530502', 3, 'longyangqu', 'L', 1, NULL, '5305');
INSERT INTO `dvadmin_system_area` VALUES (2822, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '施甸县', '530521', 3, 'shidianxian', 'S', 1, NULL, '5305');
INSERT INTO `dvadmin_system_area` VALUES (2823, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '龙陵县', '530523', 3, 'longlingxian', 'L', 1, NULL, '5305');
INSERT INTO `dvadmin_system_area` VALUES (2824, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '昌宁县', '530524', 3, 'changningxian', 'C', 1, NULL, '5305');
INSERT INTO `dvadmin_system_area` VALUES (2825, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '腾冲市', '530581', 3, 'tengchongshi', 'T', 1, NULL, '5305');
INSERT INTO `dvadmin_system_area` VALUES (2826, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '昭通市', '5306', 2, 'zhaotongshi', 'Z', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2827, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '昭阳区', '530602', 3, 'zhaoyangqu', 'Z', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2828, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '鲁甸县', '530621', 3, 'ludianxian', 'L', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2829, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '巧家县', '530622', 3, 'qiaojiaxian', 'Q', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2830, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '盐津县', '530623', 3, 'yanjinxian', 'Y', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2831, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '大关县', '530624', 3, 'daguanxian', 'D', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2832, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '永善县', '530625', 3, 'yongshanxian', 'Y', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2833, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '绥江县', '530626', 3, 'suijiangxian', 'S', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2834, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '镇雄县', '530627', 3, 'zhenxiongxian', 'Z', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2835, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '彝良县', '530628', 3, 'yiliangxian', 'Y', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2836, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '威信县', '530629', 3, 'weixinxian', 'W', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2837, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '水富市', '530681', 3, 'shuifushi', 'S', 1, NULL, '5306');
INSERT INTO `dvadmin_system_area` VALUES (2838, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '丽江市', '5307', 2, 'lijiangshi', 'L', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2839, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '古城区', '530702', 3, 'guchengqu', 'G', 1, NULL, '5307');
INSERT INTO `dvadmin_system_area` VALUES (2840, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '玉龙纳西族自治县', '530721', 3, 'yulongnaxizuzizhixian', 'Y', 1, NULL, '5307');
INSERT INTO `dvadmin_system_area` VALUES (2841, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '永胜县', '530722', 3, 'yongshengxian', 'Y', 1, NULL, '5307');
INSERT INTO `dvadmin_system_area` VALUES (2842, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '华坪县', '530723', 3, 'huapingxian', 'H', 1, NULL, '5307');
INSERT INTO `dvadmin_system_area` VALUES (2843, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '宁蒗彝族自治县', '530724', 3, 'ninglangyizuzizhixian', 'N', 1, NULL, '5307');
INSERT INTO `dvadmin_system_area` VALUES (2844, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '普洱市', '5308', 2, 'puershi', 'P', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2845, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '思茅区', '530802', 3, 'simaoqu', 'S', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2846, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '宁洱哈尼族彝族自治县', '530821', 3, 'ningerhanizuyizuzizhixian', 'N', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2847, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '墨江哈尼族自治县', '530822', 3, 'mojianghanizuzizhixian', 'M', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2848, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '景东彝族自治县', '530823', 3, 'jingdongyizuzizhixian', 'J', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2849, NULL, NULL, NULL, '2023-11-04 16:46:11.252313', '2023-11-04 16:46:11.252313', '景谷傣族彝族自治县', '530824', 3, 'jinggudaizuyizuzizhixian', 'J', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2850, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '镇沅彝族哈尼族拉祜族自治县', '530825', 3, 'zhenyuanyizuhanizulahuzuzizhixian', 'Z', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2851, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '江城哈尼族彝族自治县', '530826', 3, 'jiangchenghanizuyizuzizhixian', 'J', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2852, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '孟连傣族拉祜族佤族自治县', '530827', 3, 'mengliandaizulahuzuwazuzizhixian', 'M', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2853, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '澜沧拉祜族自治县', '530828', 3, 'lancanglahuzuzizhixian', 'L', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2854, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '西盟佤族自治县', '530829', 3, 'ximengwazuzizhixian', 'X', 1, NULL, '5308');
INSERT INTO `dvadmin_system_area` VALUES (2855, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '临沧市', '5309', 2, 'lincangshi', 'L', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2856, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '临翔区', '530902', 3, 'linxiangqu', 'L', 1, NULL, '5309');
INSERT INTO `dvadmin_system_area` VALUES (2857, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '凤庆县', '530921', 3, 'fengqingxian', 'F', 1, NULL, '5309');
INSERT INTO `dvadmin_system_area` VALUES (2858, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '云县', '530922', 3, 'yunxian', 'Y', 1, NULL, '5309');
INSERT INTO `dvadmin_system_area` VALUES (2859, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '永德县', '530923', 3, 'yongdexian', 'Y', 1, NULL, '5309');
INSERT INTO `dvadmin_system_area` VALUES (2860, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '镇康县', '530924', 3, 'zhenkangxian', 'Z', 1, NULL, '5309');
INSERT INTO `dvadmin_system_area` VALUES (2861, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '双江拉祜族佤族布朗族傣族自治县', '530925', 3, 'shuangjianglahuzuwazubulangzudaizuzizhixian', 'S', 1, NULL, '5309');
INSERT INTO `dvadmin_system_area` VALUES (2862, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '耿马傣族佤族自治县', '530926', 3, 'gengmadaizuwazuzizhixian', 'G', 1, NULL, '5309');
INSERT INTO `dvadmin_system_area` VALUES (2863, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '沧源佤族自治县', '530927', 3, 'cangyuanwazuzizhixian', 'C', 1, NULL, '5309');
INSERT INTO `dvadmin_system_area` VALUES (2864, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '楚雄彝族自治州', '5323', 2, 'chuxiongyizuzizhizhou', 'C', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2865, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '楚雄市', '532301', 3, 'chuxiongshi', 'C', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2866, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '双柏县', '532322', 3, 'shuangbaixian', 'S', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2867, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '牟定县', '532323', 3, 'moudingxian', 'M', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2868, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '南华县', '532324', 3, 'nanhuaxian', 'N', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2869, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '姚安县', '532325', 3, 'yaoanxian', 'Y', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2870, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '大姚县', '532326', 3, 'dayaoxian', 'D', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2871, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '永仁县', '532327', 3, 'yongrenxian', 'Y', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2872, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '元谋县', '532328', 3, 'yuanmouxian', 'Y', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2873, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '武定县', '532329', 3, 'wudingxian', 'W', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2874, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '禄丰县', '532331', 3, 'lufengxian', 'L', 1, NULL, '5323');
INSERT INTO `dvadmin_system_area` VALUES (2875, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '红河哈尼族彝族自治州', '5325', 2, 'honghehanizuyizuzizhizhou', 'H', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2876, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '个旧市', '532501', 3, 'gejiushi', 'G', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2877, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '开远市', '532502', 3, 'kaiyuanshi', 'K', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2878, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '蒙自市', '532503', 3, 'mengzishi', 'M', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2879, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '弥勒市', '532504', 3, 'mileshi', 'M', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2880, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '屏边苗族自治县', '532523', 3, 'pingbianmiaozuzizhixian', 'P', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2881, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '建水县', '532524', 3, 'jianshuixian', 'J', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2882, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '石屏县', '532525', 3, 'shipingxian', 'S', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2883, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '泸西县', '532527', 3, 'luxixian', 'L', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2884, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '元阳县', '532528', 3, 'yuanyangxian', 'Y', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2885, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '红河县', '532529', 3, 'honghexian', 'H', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2886, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '金平苗族瑶族傣族自治县', '532530', 3, 'jinpingmiaozuyaozudaizuzizhixian', 'J', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2887, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '绿春县', '532531', 3, 'lvchunxian', 'L', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2888, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '河口瑶族自治县', '532532', 3, 'hekouyaozuzizhixian', 'H', 1, NULL, '5325');
INSERT INTO `dvadmin_system_area` VALUES (2889, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '文山壮族苗族自治州', '5326', 2, 'wenshanzhuangzumiaozuzizhizhou', 'W', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2890, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '文山市', '532601', 3, 'wenshanshi', 'W', 1, NULL, '5326');
INSERT INTO `dvadmin_system_area` VALUES (2891, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '砚山县', '532622', 3, 'yanshanxian', 'Y', 1, NULL, '5326');
INSERT INTO `dvadmin_system_area` VALUES (2892, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '西畴县', '532623', 3, 'xichouxian', 'X', 1, NULL, '5326');
INSERT INTO `dvadmin_system_area` VALUES (2893, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '麻栗坡县', '532624', 3, 'malipoxian', 'M', 1, NULL, '5326');
INSERT INTO `dvadmin_system_area` VALUES (2894, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '马关县', '532625', 3, 'maguanxian', 'M', 1, NULL, '5326');
INSERT INTO `dvadmin_system_area` VALUES (2895, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '丘北县', '532626', 3, 'qiubeixian', 'Q', 1, NULL, '5326');
INSERT INTO `dvadmin_system_area` VALUES (2896, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '广南县', '532627', 3, 'guangnanxian', 'G', 1, NULL, '5326');
INSERT INTO `dvadmin_system_area` VALUES (2897, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '富宁县', '532628', 3, 'funingxian', 'F', 1, NULL, '5326');
INSERT INTO `dvadmin_system_area` VALUES (2898, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '西双版纳傣族自治州', '5328', 2, 'xishuangbannadaizuzizhizhou', 'X', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2899, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '景洪市', '532801', 3, 'jinghongshi', 'J', 1, NULL, '5328');
INSERT INTO `dvadmin_system_area` VALUES (2900, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '勐海县', '532822', 3, 'menghaixian', 'M', 1, NULL, '5328');
INSERT INTO `dvadmin_system_area` VALUES (2901, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '勐腊县', '532823', 3, 'menglaxian', 'M', 1, NULL, '5328');
INSERT INTO `dvadmin_system_area` VALUES (2902, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '大理白族自治州', '5329', 2, 'dalibaizuzizhizhou', 'D', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2903, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '大理市', '532901', 3, 'dalishi', 'D', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2904, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '漾濞彝族自治县', '532922', 3, 'yangbiyizuzizhixian', 'Y', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2905, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '祥云县', '532923', 3, 'xiangyunxian', 'X', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2906, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '宾川县', '532924', 3, 'binchuanxian', 'B', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2907, NULL, NULL, NULL, '2023-11-04 16:46:11.253313', '2023-11-04 16:46:11.253313', '弥渡县', '532925', 3, 'miduxian', 'M', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2908, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '南涧彝族自治县', '532926', 3, 'nanjianyizuzizhixian', 'N', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2909, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '巍山彝族回族自治县', '532927', 3, 'weishanyizuhuizuzizhixian', 'W', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2910, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '永平县', '532928', 3, 'yongpingxian', 'Y', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2911, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '云龙县', '532929', 3, 'yunlongxian', 'Y', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2912, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '洱源县', '532930', 3, 'eryuanxian', 'E', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2913, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '剑川县', '532931', 3, 'jianchuanxian', 'J', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2914, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '鹤庆县', '532932', 3, 'heqingxian', 'H', 1, NULL, '5329');
INSERT INTO `dvadmin_system_area` VALUES (2915, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '德宏傣族景颇族自治州', '5331', 2, 'dehongdaizujingpozuzizhizhou', 'D', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2916, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '瑞丽市', '533102', 3, 'ruilishi', 'R', 1, NULL, '5331');
INSERT INTO `dvadmin_system_area` VALUES (2917, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '芒市', '533103', 3, 'mangshi', 'M', 1, NULL, '5331');
INSERT INTO `dvadmin_system_area` VALUES (2918, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '梁河县', '533122', 3, 'lianghexian', 'L', 1, NULL, '5331');
INSERT INTO `dvadmin_system_area` VALUES (2919, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '盈江县', '533123', 3, 'yingjiangxian', 'Y', 1, NULL, '5331');
INSERT INTO `dvadmin_system_area` VALUES (2920, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '陇川县', '533124', 3, 'longchuanxian', 'L', 1, NULL, '5331');
INSERT INTO `dvadmin_system_area` VALUES (2921, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '怒江傈僳族自治州', '5333', 2, 'nujianglisuzuzizhizhou', 'N', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2922, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '泸水市', '533301', 3, 'lushuishi', 'L', 1, NULL, '5333');
INSERT INTO `dvadmin_system_area` VALUES (2923, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '福贡县', '533323', 3, 'fugongxian', 'F', 1, NULL, '5333');
INSERT INTO `dvadmin_system_area` VALUES (2924, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '贡山独龙族怒族自治县', '533324', 3, 'gongshandulongzunuzuzizhixian', 'G', 1, NULL, '5333');
INSERT INTO `dvadmin_system_area` VALUES (2925, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '兰坪白族普米族自治县', '533325', 3, 'lanpingbaizupumizuzizhixian', 'L', 1, NULL, '5333');
INSERT INTO `dvadmin_system_area` VALUES (2926, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '迪庆藏族自治州', '5334', 2, 'diqingzangzuzizhizhou', 'D', 1, NULL, '53');
INSERT INTO `dvadmin_system_area` VALUES (2927, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '香格里拉市', '533401', 3, 'xianggelilashi', 'X', 1, NULL, '5334');
INSERT INTO `dvadmin_system_area` VALUES (2928, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '德钦县', '533422', 3, 'deqinxian', 'D', 1, NULL, '5334');
INSERT INTO `dvadmin_system_area` VALUES (2929, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '维西傈僳族自治县', '533423', 3, 'weixilisuzuzizhixian', 'W', 1, NULL, '5334');
INSERT INTO `dvadmin_system_area` VALUES (2930, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '西藏自治区', '54', 1, 'xizangzizhiqu', 'X', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (2931, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '拉萨市', '5401', 2, 'lasashi', 'L', 1, NULL, '54');
INSERT INTO `dvadmin_system_area` VALUES (2932, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '城关区', '540102', 3, 'chengguanqu', 'C', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2933, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '堆龙德庆区', '540103', 3, 'duilongdeqingqu', 'D', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2934, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '达孜区', '540104', 3, 'daziqu', 'D', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2935, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '林周县', '540121', 3, 'linzhouxian', 'L', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2936, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '当雄县', '540122', 3, 'dangxiongxian', 'D', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2937, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '尼木县', '540123', 3, 'nimuxian', 'N', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2938, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '曲水县', '540124', 3, 'qushuixian', 'Q', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2939, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '墨竹工卡县', '540127', 3, 'mozhugongkaxian', 'M', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2940, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '格尔木藏青工业园区', '540171', 3, 'geermuzangqinggongyeyuanqu', 'G', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2941, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '拉萨经济技术开发区', '540172', 3, 'lasajingjijishukaifaqu', 'L', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2942, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '西藏文化旅游创意园区', '540173', 3, 'xizangwenhualvyouchuangyiyuanqu', 'X', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2943, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '达孜工业园区', '540174', 3, 'dazigongyeyuanqu', 'D', 1, NULL, '5401');
INSERT INTO `dvadmin_system_area` VALUES (2944, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '日喀则市', '5402', 2, 'rikazeshi', 'R', 1, NULL, '54');
INSERT INTO `dvadmin_system_area` VALUES (2945, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '桑珠孜区', '540202', 3, 'sangzhuziqu', 'S', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2946, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '南木林县', '540221', 3, 'nanmulinxian', 'N', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2947, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '江孜县', '540222', 3, 'jiangzixian', 'J', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2948, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '定日县', '540223', 3, 'dingrixian', 'D', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2949, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '萨迦县', '540224', 3, 'sajiaxian', 'S', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2950, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '拉孜县', '540225', 3, 'lazixian', 'L', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2951, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '昂仁县', '540226', 3, 'angrenxian', 'A', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2952, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '谢通门县', '540227', 3, 'xietongmenxian', 'X', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2953, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '白朗县', '540228', 3, 'bailangxian', 'B', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2954, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '仁布县', '540229', 3, 'renbuxian', 'R', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2955, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '康马县', '540230', 3, 'kangmaxian', 'K', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2956, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '定结县', '540231', 3, 'dingjiexian', 'D', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2957, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '仲巴县', '540232', 3, 'zhongbaxian', 'Z', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2958, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '亚东县', '540233', 3, 'yadongxian', 'Y', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2959, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '吉隆县', '540234', 3, 'jilongxian', 'J', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2960, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '聂拉木县', '540235', 3, 'nielamuxian', 'N', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2961, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '萨嘎县', '540236', 3, 'sagaxian', 'S', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2962, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '岗巴县', '540237', 3, 'gangbaxian', 'G', 1, NULL, '5402');
INSERT INTO `dvadmin_system_area` VALUES (2963, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '昌都市', '5403', 2, 'changdushi', 'C', 1, NULL, '54');
INSERT INTO `dvadmin_system_area` VALUES (2964, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '卡若区', '540302', 3, 'karuoqu', 'K', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2965, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '江达县', '540321', 3, 'jiangdaxian', 'J', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2966, NULL, NULL, NULL, '2023-11-04 16:46:11.254313', '2023-11-04 16:46:11.254313', '贡觉县', '540322', 3, 'gongjuexian', 'G', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2967, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '类乌齐县', '540323', 3, 'leiwuqixian', 'L', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2968, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '丁青县', '540324', 3, 'dingqingxian', 'D', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2969, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '察雅县', '540325', 3, 'chayaxian', 'C', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2970, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '八宿县', '540326', 3, 'basuxian', 'B', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2971, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '左贡县', '540327', 3, 'zuogongxian', 'Z', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2972, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '芒康县', '540328', 3, 'mangkangxian', 'M', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2973, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '洛隆县', '540329', 3, 'luolongxian', 'L', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2974, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '边坝县', '540330', 3, 'bianbaxian', 'B', 1, NULL, '5403');
INSERT INTO `dvadmin_system_area` VALUES (2975, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '林芝市', '5404', 2, 'linzhishi', 'L', 1, NULL, '54');
INSERT INTO `dvadmin_system_area` VALUES (2976, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '巴宜区', '540402', 3, 'bayiqu', 'B', 1, NULL, '5404');
INSERT INTO `dvadmin_system_area` VALUES (2977, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '工布江达县', '540421', 3, 'gongbujiangdaxian', 'G', 1, NULL, '5404');
INSERT INTO `dvadmin_system_area` VALUES (2978, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '米林县', '540422', 3, 'milinxian', 'M', 1, NULL, '5404');
INSERT INTO `dvadmin_system_area` VALUES (2979, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '墨脱县', '540423', 3, 'motuoxian', 'M', 1, NULL, '5404');
INSERT INTO `dvadmin_system_area` VALUES (2980, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '波密县', '540424', 3, 'bomixian', 'B', 1, NULL, '5404');
INSERT INTO `dvadmin_system_area` VALUES (2981, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '察隅县', '540425', 3, 'chayuxian', 'C', 1, NULL, '5404');
INSERT INTO `dvadmin_system_area` VALUES (2982, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '朗县', '540426', 3, 'langxian', 'L', 1, NULL, '5404');
INSERT INTO `dvadmin_system_area` VALUES (2983, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '山南市', '5405', 2, 'shannanshi', 'S', 1, NULL, '54');
INSERT INTO `dvadmin_system_area` VALUES (2984, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '乃东区', '540502', 3, 'naidongqu', 'N', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2985, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '扎囊县', '540521', 3, 'zhanangxian', 'Z', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2986, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '贡嘎县', '540522', 3, 'gonggaxian', 'G', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2987, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '桑日县', '540523', 3, 'sangrixian', 'S', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2988, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '琼结县', '540524', 3, 'qiongjiexian', 'Q', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2989, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '曲松县', '540525', 3, 'qusongxian', 'Q', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2990, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '措美县', '540526', 3, 'cuomeixian', 'C', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2991, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '洛扎县', '540527', 3, 'luozhaxian', 'L', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2992, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '加查县', '540528', 3, 'jiachaxian', 'J', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2993, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '隆子县', '540529', 3, 'longzixian', 'L', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2994, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '错那县', '540530', 3, 'cuonaxian', 'C', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2995, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '浪卡子县', '540531', 3, 'langqiazixian', 'L', 1, NULL, '5405');
INSERT INTO `dvadmin_system_area` VALUES (2996, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '那曲市', '5406', 2, 'naqushi', 'N', 1, NULL, '54');
INSERT INTO `dvadmin_system_area` VALUES (2997, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '色尼区', '540602', 3, 'seniqu', 'S', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (2998, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '嘉黎县', '540621', 3, 'jialixian', 'J', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (2999, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '比如县', '540622', 3, 'biruxian', 'B', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3000, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '聂荣县', '540623', 3, 'nierongxian', 'N', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3001, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '安多县', '540624', 3, 'anduoxian', 'A', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3002, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '申扎县', '540625', 3, 'shenzhaxian', 'S', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3003, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '索县', '540626', 3, 'suoxian', 'S', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3004, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '班戈县', '540627', 3, 'bangexian', 'B', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3005, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '巴青县', '540628', 3, 'baqingxian', 'B', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3006, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '尼玛县', '540629', 3, 'nimaxian', 'N', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3007, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '双湖县', '540630', 3, 'shuanghuxian', 'S', 1, NULL, '5406');
INSERT INTO `dvadmin_system_area` VALUES (3008, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '阿里地区', '5425', 2, 'alidiqu', 'A', 1, NULL, '54');
INSERT INTO `dvadmin_system_area` VALUES (3009, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '普兰县', '542521', 3, 'pulanxian', 'P', 1, NULL, '5425');
INSERT INTO `dvadmin_system_area` VALUES (3010, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '札达县', '542522', 3, 'zhadaxian', 'Z', 1, NULL, '5425');
INSERT INTO `dvadmin_system_area` VALUES (3011, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '噶尔县', '542523', 3, 'gaerxian', 'G', 1, NULL, '5425');
INSERT INTO `dvadmin_system_area` VALUES (3012, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '日土县', '542524', 3, 'rituxian', 'R', 1, NULL, '5425');
INSERT INTO `dvadmin_system_area` VALUES (3013, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '革吉县', '542525', 3, 'gejixian', 'G', 1, NULL, '5425');
INSERT INTO `dvadmin_system_area` VALUES (3014, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '改则县', '542526', 3, 'gaizexian', 'G', 1, NULL, '5425');
INSERT INTO `dvadmin_system_area` VALUES (3015, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '措勤县', '542527', 3, 'cuoqinxian', 'C', 1, NULL, '5425');
INSERT INTO `dvadmin_system_area` VALUES (3016, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '陕西省', '61', 1, 'shanxisheng', 'S', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (3017, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '西安市', '6101', 2, 'xianshi', 'X', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3018, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '新城区', '610102', 3, 'xinchengqu', 'X', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3019, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '碑林区', '610103', 3, 'beilinqu', 'B', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3020, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '莲湖区', '610104', 3, 'lianhuqu', 'L', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3021, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '灞桥区', '610111', 3, 'baqiaoqu', 'B', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3022, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '未央区', '610112', 3, 'weiyangqu', 'W', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3023, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '雁塔区', '610113', 3, 'yantaqu', 'Y', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3024, NULL, NULL, NULL, '2023-11-04 16:46:11.255313', '2023-11-04 16:46:11.255313', '阎良区', '610114', 3, 'yanliangqu', 'Y', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3025, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '临潼区', '610115', 3, 'lintongqu', 'L', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3026, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '长安区', '610116', 3, 'changanqu', 'C', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3027, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '高陵区', '610117', 3, 'gaolingqu', 'G', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3028, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '鄠邑区', '610118', 3, 'huyiqu', 'H', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3029, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '蓝田县', '610122', 3, 'lantianxian', 'L', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3030, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '周至县', '610124', 3, 'zhouzhixian', 'Z', 1, NULL, '6101');
INSERT INTO `dvadmin_system_area` VALUES (3031, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '铜川市', '6102', 2, 'tongchuanshi', 'T', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3032, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '王益区', '610202', 3, 'wangyiqu', 'W', 1, NULL, '6102');
INSERT INTO `dvadmin_system_area` VALUES (3033, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '印台区', '610203', 3, 'yintaiqu', 'Y', 1, NULL, '6102');
INSERT INTO `dvadmin_system_area` VALUES (3034, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '耀州区', '610204', 3, 'yaozhouqu', 'Y', 1, NULL, '6102');
INSERT INTO `dvadmin_system_area` VALUES (3035, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '宜君县', '610222', 3, 'yijunxian', 'Y', 1, NULL, '6102');
INSERT INTO `dvadmin_system_area` VALUES (3036, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '宝鸡市', '6103', 2, 'baojishi', 'B', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3037, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '渭滨区', '610302', 3, 'weibinqu', 'W', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3038, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '金台区', '610303', 3, 'jintaiqu', 'J', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3039, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '陈仓区', '610304', 3, 'chencangqu', 'C', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3040, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '凤翔县', '610322', 3, 'fengxiangxian', 'F', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3041, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '岐山县', '610323', 3, 'qishanxian', 'Q', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3042, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '扶风县', '610324', 3, 'fufengxian', 'F', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3043, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '眉县', '610326', 3, 'meixian', 'M', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3044, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '陇县', '610327', 3, 'longxian', 'L', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3045, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '千阳县', '610328', 3, 'qianyangxian', 'Q', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3046, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '麟游县', '610329', 3, 'linyouxian', 'L', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3047, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '凤县', '610330', 3, 'fengxian', 'F', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3048, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '太白县', '610331', 3, 'taibaixian', 'T', 1, NULL, '6103');
INSERT INTO `dvadmin_system_area` VALUES (3049, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '咸阳市', '6104', 2, 'xianyangshi', 'X', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3050, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '秦都区', '610402', 3, 'qindouqu', 'Q', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3051, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '杨陵区', '610403', 3, 'yanglingqu', 'Y', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3052, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '渭城区', '610404', 3, 'weichengqu', 'W', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3053, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '三原县', '610422', 3, 'sanyuanxian', 'S', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3054, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '泾阳县', '610423', 3, 'jingyangxian', 'J', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3055, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '乾县', '610424', 3, 'qianxian', 'Q', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3056, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '礼泉县', '610425', 3, 'liquanxian', 'L', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3057, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '永寿县', '610426', 3, 'yongshouxian', 'Y', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3058, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '长武县', '610428', 3, 'zhangwuxian', 'Z', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3059, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '旬邑县', '610429', 3, 'xunyixian', 'X', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3060, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '淳化县', '610430', 3, 'chunhuaxian', 'C', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3061, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '武功县', '610431', 3, 'wugongxian', 'W', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3062, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '兴平市', '610481', 3, 'xingpingshi', 'X', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3063, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '彬州市', '610482', 3, 'binzhoushi', 'B', 1, NULL, '6104');
INSERT INTO `dvadmin_system_area` VALUES (3064, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '渭南市', '6105', 2, 'weinanshi', 'W', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3065, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '临渭区', '610502', 3, 'linweiqu', 'L', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3066, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '华州区', '610503', 3, 'huazhouqu', 'H', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3067, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '潼关县', '610522', 3, 'tongguanxian', 'T', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3068, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '大荔县', '610523', 3, 'dalixian', 'D', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3069, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '合阳县', '610524', 3, 'heyangxian', 'H', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3070, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '澄城县', '610525', 3, 'chengchengxian', 'C', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3071, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '蒲城县', '610526', 3, 'puchengxian', 'P', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3072, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '白水县', '610527', 3, 'baishuixian', 'B', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3073, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '富平县', '610528', 3, 'fupingxian', 'F', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3074, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '韩城市', '610581', 3, 'hanchengshi', 'H', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3075, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '华阴市', '610582', 3, 'huayinshi', 'H', 1, NULL, '6105');
INSERT INTO `dvadmin_system_area` VALUES (3076, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '延安市', '6106', 2, 'yananshi', 'Y', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3077, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '宝塔区', '610602', 3, 'baotaqu', 'B', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3078, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '安塞区', '610603', 3, 'ansaiqu', 'A', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3079, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '延长县', '610621', 3, 'yanchangxian', 'Y', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3080, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '延川县', '610622', 3, 'yanchuanxian', 'Y', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3081, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '志丹县', '610625', 3, 'zhidanxian', 'Z', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3082, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '吴起县', '610626', 3, 'wuqixian', 'W', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3083, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '甘泉县', '610627', 3, 'ganquanxian', 'G', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3084, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '富县', '610628', 3, 'fuxian', 'F', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3085, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '洛川县', '610629', 3, 'luochuanxian', 'L', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3086, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '宜川县', '610630', 3, 'yichuanxian', 'Y', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3087, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '黄龙县', '610631', 3, 'huanglongxian', 'H', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3088, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '黄陵县', '610632', 3, 'huanglingxian', 'H', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3089, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '子长市', '610681', 3, 'zizhangshi', 'Z', 1, NULL, '6106');
INSERT INTO `dvadmin_system_area` VALUES (3090, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '汉中市', '6107', 2, 'hanzhongshi', 'H', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3091, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '汉台区', '610702', 3, 'hantaiqu', 'H', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3092, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '南郑区', '610703', 3, 'nanzhengqu', 'N', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3093, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '城固县', '610722', 3, 'chengguxian', 'C', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3094, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '洋县', '610723', 3, 'yangxian', 'Y', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3095, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '西乡县', '610724', 3, 'xixiangxian', 'X', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3096, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '勉县', '610725', 3, 'mianxian', 'M', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3097, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '宁强县', '610726', 3, 'ningqiangxian', 'N', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3098, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '略阳县', '610727', 3, 'lveyangxian', 'L', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3099, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '镇巴县', '610728', 3, 'zhenbaxian', 'Z', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3100, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '留坝县', '610729', 3, 'liubaxian', 'L', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3101, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '佛坪县', '610730', 3, 'fupingxian', 'F', 1, NULL, '6107');
INSERT INTO `dvadmin_system_area` VALUES (3102, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '榆林市', '6108', 2, 'yulinshi', 'Y', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3103, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '榆阳区', '610802', 3, 'yuyangqu', 'Y', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3104, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '横山区', '610803', 3, 'hengshanqu', 'H', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3105, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '府谷县', '610822', 3, 'fuguxian', 'F', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3106, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '靖边县', '610824', 3, 'jingbianxian', 'J', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3107, NULL, NULL, NULL, '2023-11-04 16:46:11.256313', '2023-11-04 16:46:11.256313', '定边县', '610825', 3, 'dingbianxian', 'D', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3108, NULL, NULL, NULL, '2023-11-04 16:46:11.257817', '2023-11-04 16:46:11.257817', '绥德县', '610826', 3, 'suidexian', 'S', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3109, NULL, NULL, NULL, '2023-11-04 16:46:11.257817', '2023-11-04 16:46:11.257817', '米脂县', '610827', 3, 'mizhixian', 'M', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3110, NULL, NULL, NULL, '2023-11-04 16:46:11.257817', '2023-11-04 16:46:11.257817', '佳县', '610828', 3, 'jiaxian', 'J', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3111, NULL, NULL, NULL, '2023-11-04 16:46:11.257817', '2023-11-04 16:46:11.257817', '吴堡县', '610829', 3, 'wubuxian', 'W', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3112, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '清涧县', '610830', 3, 'qingjianxian', 'Q', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3113, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '子洲县', '610831', 3, 'zizhouxian', 'Z', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3114, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '神木市', '610881', 3, 'shenmushi', 'S', 1, NULL, '6108');
INSERT INTO `dvadmin_system_area` VALUES (3115, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '安康市', '6109', 2, 'ankangshi', 'A', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3116, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '汉滨区', '610902', 3, 'hanbinqu', 'H', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3117, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '汉阴县', '610921', 3, 'hanyinxian', 'H', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3118, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '石泉县', '610922', 3, 'shiquanxian', 'S', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3119, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '宁陕县', '610923', 3, 'ningshanxian', 'N', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3120, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '紫阳县', '610924', 3, 'ziyangxian', 'Z', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3121, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '岚皋县', '610925', 3, 'langaoxian', 'L', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3122, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '平利县', '610926', 3, 'pinglixian', 'P', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3123, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '镇坪县', '610927', 3, 'zhenpingxian', 'Z', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3124, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '旬阳县', '610928', 3, 'xunyangxian', 'X', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3125, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '白河县', '610929', 3, 'baihexian', 'B', 1, NULL, '6109');
INSERT INTO `dvadmin_system_area` VALUES (3126, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '商洛市', '6110', 2, 'shangluoshi', 'S', 1, NULL, '61');
INSERT INTO `dvadmin_system_area` VALUES (3127, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '商州区', '611002', 3, 'shangzhouqu', 'S', 1, NULL, '6110');
INSERT INTO `dvadmin_system_area` VALUES (3128, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '洛南县', '611021', 3, 'luonanxian', 'L', 1, NULL, '6110');
INSERT INTO `dvadmin_system_area` VALUES (3129, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '丹凤县', '611022', 3, 'danfengxian', 'D', 1, NULL, '6110');
INSERT INTO `dvadmin_system_area` VALUES (3130, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '商南县', '611023', 3, 'shangnanxian', 'S', 1, NULL, '6110');
INSERT INTO `dvadmin_system_area` VALUES (3131, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '山阳县', '611024', 3, 'shanyangxian', 'S', 1, NULL, '6110');
INSERT INTO `dvadmin_system_area` VALUES (3132, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '镇安县', '611025', 3, 'zhenanxian', 'Z', 1, NULL, '6110');
INSERT INTO `dvadmin_system_area` VALUES (3133, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '柞水县', '611026', 3, 'zhashuixian', 'Z', 1, NULL, '6110');
INSERT INTO `dvadmin_system_area` VALUES (3134, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '甘肃省', '62', 1, 'gansusheng', 'G', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (3135, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '兰州市', '6201', 2, 'lanzhoushi', 'L', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3136, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '城关区', '620102', 3, 'chengguanqu', 'C', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3137, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '七里河区', '620103', 3, 'qilihequ', 'Q', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3138, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '西固区', '620104', 3, 'xiguqu', 'X', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3139, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '安宁区', '620105', 3, 'anningqu', 'A', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3140, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '红古区', '620111', 3, 'hongguqu', 'H', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3141, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '永登县', '620121', 3, 'yongdengxian', 'Y', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3142, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '皋兰县', '620122', 3, 'gaolanxian', 'G', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3143, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '榆中县', '620123', 3, 'yuzhongxian', 'Y', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3144, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '兰州新区', '620171', 3, 'lanzhouxinqu', 'L', 1, NULL, '6201');
INSERT INTO `dvadmin_system_area` VALUES (3145, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '嘉峪关市', '6202', 2, 'jiayuguanshi', 'J', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3146, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '雄关街道', '620201001', 3, 'xiongguanjiedao', 'X', 1, NULL, '6202');
INSERT INTO `dvadmin_system_area` VALUES (3147, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '钢城街道', '620201002', 3, 'gangchengjiedao', 'G', 1, NULL, '6202');
INSERT INTO `dvadmin_system_area` VALUES (3148, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '新城镇', '620201100', 3, 'xinchengzhen', 'X', 1, NULL, '6202');
INSERT INTO `dvadmin_system_area` VALUES (3149, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '峪泉镇', '620201101', 3, 'yuquanzhen', 'Y', 1, NULL, '6202');
INSERT INTO `dvadmin_system_area` VALUES (3150, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '文殊镇', '620201102', 3, 'wenshuzhen', 'W', 1, NULL, '6202');
INSERT INTO `dvadmin_system_area` VALUES (3151, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '金昌市', '6203', 2, 'jinchangshi', 'J', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3152, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '金川区', '620302', 3, 'jinchuanqu', 'J', 1, NULL, '6203');
INSERT INTO `dvadmin_system_area` VALUES (3153, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '永昌县', '620321', 3, 'yongchangxian', 'Y', 1, NULL, '6203');
INSERT INTO `dvadmin_system_area` VALUES (3154, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '白银市', '6204', 2, 'baiyinshi', 'B', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3155, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '白银区', '620402', 3, 'baiyinqu', 'B', 1, NULL, '6204');
INSERT INTO `dvadmin_system_area` VALUES (3156, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '平川区', '620403', 3, 'pingchuanqu', 'P', 1, NULL, '6204');
INSERT INTO `dvadmin_system_area` VALUES (3157, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '靖远县', '620421', 3, 'jingyuanxian', 'J', 1, NULL, '6204');
INSERT INTO `dvadmin_system_area` VALUES (3158, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '会宁县', '620422', 3, 'huiningxian', 'H', 1, NULL, '6204');
INSERT INTO `dvadmin_system_area` VALUES (3159, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '景泰县', '620423', 3, 'jingtaixian', 'J', 1, NULL, '6204');
INSERT INTO `dvadmin_system_area` VALUES (3160, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '天水市', '6205', 2, 'tianshuishi', 'T', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3161, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '秦州区', '620502', 3, 'qinzhouqu', 'Q', 1, NULL, '6205');
INSERT INTO `dvadmin_system_area` VALUES (3162, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '麦积区', '620503', 3, 'maijiqu', 'M', 1, NULL, '6205');
INSERT INTO `dvadmin_system_area` VALUES (3163, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '清水县', '620521', 3, 'qingshuixian', 'Q', 1, NULL, '6205');
INSERT INTO `dvadmin_system_area` VALUES (3164, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '秦安县', '620522', 3, 'qinanxian', 'Q', 1, NULL, '6205');
INSERT INTO `dvadmin_system_area` VALUES (3165, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '甘谷县', '620523', 3, 'ganguxian', 'G', 1, NULL, '6205');
INSERT INTO `dvadmin_system_area` VALUES (3166, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '武山县', '620524', 3, 'wushanxian', 'W', 1, NULL, '6205');
INSERT INTO `dvadmin_system_area` VALUES (3167, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '张家川回族自治县', '620525', 3, 'zhangjiachuanhuizuzizhixian', 'Z', 1, NULL, '6205');
INSERT INTO `dvadmin_system_area` VALUES (3168, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '武威市', '6206', 2, 'wuweishi', 'W', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3169, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '凉州区', '620602', 3, 'liangzhouqu', 'L', 1, NULL, '6206');
INSERT INTO `dvadmin_system_area` VALUES (3170, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '民勤县', '620621', 3, 'minqinxian', 'M', 1, NULL, '6206');
INSERT INTO `dvadmin_system_area` VALUES (3171, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '古浪县', '620622', 3, 'gulangxian', 'G', 1, NULL, '6206');
INSERT INTO `dvadmin_system_area` VALUES (3172, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '天祝藏族自治县', '620623', 3, 'tianzhuzangzuzizhixian', 'T', 1, NULL, '6206');
INSERT INTO `dvadmin_system_area` VALUES (3173, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '张掖市', '6207', 2, 'zhangyeshi', 'Z', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3174, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '甘州区', '620702', 3, 'ganzhouqu', 'G', 1, NULL, '6207');
INSERT INTO `dvadmin_system_area` VALUES (3175, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '肃南裕固族自治县', '620721', 3, 'sunanyuguzuzizhixian', 'S', 1, NULL, '6207');
INSERT INTO `dvadmin_system_area` VALUES (3176, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '民乐县', '620722', 3, 'minyuexian', 'M', 1, NULL, '6207');
INSERT INTO `dvadmin_system_area` VALUES (3177, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '临泽县', '620723', 3, 'linzexian', 'L', 1, NULL, '6207');
INSERT INTO `dvadmin_system_area` VALUES (3178, NULL, NULL, NULL, '2023-11-04 16:46:11.257887', '2023-11-04 16:46:11.257887', '高台县', '620724', 3, 'gaotaixian', 'G', 1, NULL, '6207');
INSERT INTO `dvadmin_system_area` VALUES (3179, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '山丹县', '620725', 3, 'shandanxian', 'S', 1, NULL, '6207');
INSERT INTO `dvadmin_system_area` VALUES (3180, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '平凉市', '6208', 2, 'pingliangshi', 'P', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3181, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '崆峒区', '620802', 3, 'kongdongqu', 'K', 1, NULL, '6208');
INSERT INTO `dvadmin_system_area` VALUES (3182, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '泾川县', '620821', 3, 'jingchuanxian', 'J', 1, NULL, '6208');
INSERT INTO `dvadmin_system_area` VALUES (3183, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '灵台县', '620822', 3, 'lingtaixian', 'L', 1, NULL, '6208');
INSERT INTO `dvadmin_system_area` VALUES (3184, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '崇信县', '620823', 3, 'chongxinxian', 'C', 1, NULL, '6208');
INSERT INTO `dvadmin_system_area` VALUES (3185, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '庄浪县', '620825', 3, 'zhuanglangxian', 'Z', 1, NULL, '6208');
INSERT INTO `dvadmin_system_area` VALUES (3186, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '静宁县', '620826', 3, 'jingningxian', 'J', 1, NULL, '6208');
INSERT INTO `dvadmin_system_area` VALUES (3187, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '华亭市', '620881', 3, 'huatingshi', 'H', 1, NULL, '6208');
INSERT INTO `dvadmin_system_area` VALUES (3188, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '酒泉市', '6209', 2, 'jiuquanshi', 'J', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3189, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '肃州区', '620902', 3, 'suzhouqu', 'S', 1, NULL, '6209');
INSERT INTO `dvadmin_system_area` VALUES (3190, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '金塔县', '620921', 3, 'jintaxian', 'J', 1, NULL, '6209');
INSERT INTO `dvadmin_system_area` VALUES (3191, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '瓜州县', '620922', 3, 'guazhouxian', 'G', 1, NULL, '6209');
INSERT INTO `dvadmin_system_area` VALUES (3192, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '肃北蒙古族自治县', '620923', 3, 'subeimengguzuzizhixian', 'S', 1, NULL, '6209');
INSERT INTO `dvadmin_system_area` VALUES (3193, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '阿克塞哈萨克族自治县', '620924', 3, 'akesaihasakezuzizhixian', 'A', 1, NULL, '6209');
INSERT INTO `dvadmin_system_area` VALUES (3194, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '玉门市', '620981', 3, 'yumenshi', 'Y', 1, NULL, '6209');
INSERT INTO `dvadmin_system_area` VALUES (3195, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '敦煌市', '620982', 3, 'dunhuangshi', 'D', 1, NULL, '6209');
INSERT INTO `dvadmin_system_area` VALUES (3196, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '庆阳市', '6210', 2, 'qingyangshi', 'Q', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3197, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '西峰区', '621002', 3, 'xifengqu', 'X', 1, NULL, '6210');
INSERT INTO `dvadmin_system_area` VALUES (3198, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '庆城县', '621021', 3, 'qingchengxian', 'Q', 1, NULL, '6210');
INSERT INTO `dvadmin_system_area` VALUES (3199, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '环县', '621022', 3, 'huanxian', 'H', 1, NULL, '6210');
INSERT INTO `dvadmin_system_area` VALUES (3200, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '华池县', '621023', 3, 'huachixian', 'H', 1, NULL, '6210');
INSERT INTO `dvadmin_system_area` VALUES (3201, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '合水县', '621024', 3, 'heshuixian', 'H', 1, NULL, '6210');
INSERT INTO `dvadmin_system_area` VALUES (3202, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '正宁县', '621025', 3, 'zhengningxian', 'Z', 1, NULL, '6210');
INSERT INTO `dvadmin_system_area` VALUES (3203, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '宁县', '621026', 3, 'ningxian', 'N', 1, NULL, '6210');
INSERT INTO `dvadmin_system_area` VALUES (3204, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '镇原县', '621027', 3, 'zhenyuanxian', 'Z', 1, NULL, '6210');
INSERT INTO `dvadmin_system_area` VALUES (3205, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '定西市', '6211', 2, 'dingxishi', 'D', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3206, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '安定区', '621102', 3, 'andingqu', 'A', 1, NULL, '6211');
INSERT INTO `dvadmin_system_area` VALUES (3207, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259042', '通渭县', '621121', 3, 'tongweixian', 'T', 1, NULL, '6211');
INSERT INTO `dvadmin_system_area` VALUES (3208, NULL, NULL, NULL, '2023-11-04 16:46:11.259042', '2023-11-04 16:46:11.259547', '陇西县', '621122', 3, 'longxixian', 'L', 1, NULL, '6211');
INSERT INTO `dvadmin_system_area` VALUES (3209, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '渭源县', '621123', 3, 'weiyuanxian', 'W', 1, NULL, '6211');
INSERT INTO `dvadmin_system_area` VALUES (3210, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '临洮县', '621124', 3, 'lintaoxian', 'L', 1, NULL, '6211');
INSERT INTO `dvadmin_system_area` VALUES (3211, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '漳县', '621125', 3, 'zhangxian', 'Z', 1, NULL, '6211');
INSERT INTO `dvadmin_system_area` VALUES (3212, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '岷县', '621126', 3, 'minxian', 'M', 1, NULL, '6211');
INSERT INTO `dvadmin_system_area` VALUES (3213, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '陇南市', '6212', 2, 'longnanshi', 'L', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3214, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '武都区', '621202', 3, 'wudouqu', 'W', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3215, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '成县', '621221', 3, 'chengxian', 'C', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3216, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '文县', '621222', 3, 'wenxian', 'W', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3217, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '宕昌县', '621223', 3, 'dangchangxian', 'D', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3218, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '康县', '621224', 3, 'kangxian', 'K', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3219, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '西和县', '621225', 3, 'xihexian', 'X', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3220, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '礼县', '621226', 3, 'lixian', 'L', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3221, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '徽县', '621227', 3, 'huixian', 'H', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3222, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '两当县', '621228', 3, 'liangdangxian', 'L', 1, NULL, '6212');
INSERT INTO `dvadmin_system_area` VALUES (3223, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '临夏回族自治州', '6229', 2, 'linxiahuizuzizhizhou', 'L', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3224, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '临夏市', '622901', 3, 'linxiashi', 'L', 1, NULL, '6229');
INSERT INTO `dvadmin_system_area` VALUES (3225, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '临夏县', '622921', 3, 'linxiaxian', 'L', 1, NULL, '6229');
INSERT INTO `dvadmin_system_area` VALUES (3226, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '康乐县', '622922', 3, 'kanglexian', 'K', 1, NULL, '6229');
INSERT INTO `dvadmin_system_area` VALUES (3227, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '永靖县', '622923', 3, 'yongjingxian', 'Y', 1, NULL, '6229');
INSERT INTO `dvadmin_system_area` VALUES (3228, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '广河县', '622924', 3, 'guanghexian', 'G', 1, NULL, '6229');
INSERT INTO `dvadmin_system_area` VALUES (3229, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '和政县', '622925', 3, 'hezhengxian', 'H', 1, NULL, '6229');
INSERT INTO `dvadmin_system_area` VALUES (3230, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '东乡族自治县', '622926', 3, 'dongxiangzuzizhixian', 'D', 1, NULL, '6229');
INSERT INTO `dvadmin_system_area` VALUES (3231, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '积石山保安族东乡族撒拉族自治县', '622927', 3, 'jishishanbaoanzudongxiangzusalazuzizhixian', 'J', 1, NULL, '6229');
INSERT INTO `dvadmin_system_area` VALUES (3232, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '甘南藏族自治州', '6230', 2, 'gannanzangzuzizhizhou', 'G', 1, NULL, '62');
INSERT INTO `dvadmin_system_area` VALUES (3233, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '合作市', '623001', 3, 'hezuoshi', 'H', 1, NULL, '6230');
INSERT INTO `dvadmin_system_area` VALUES (3234, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '临潭县', '623021', 3, 'lintanxian', 'L', 1, NULL, '6230');
INSERT INTO `dvadmin_system_area` VALUES (3235, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '卓尼县', '623022', 3, 'zhuonixian', 'Z', 1, NULL, '6230');
INSERT INTO `dvadmin_system_area` VALUES (3236, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '舟曲县', '623023', 3, 'zhouquxian', 'Z', 1, NULL, '6230');
INSERT INTO `dvadmin_system_area` VALUES (3237, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '迭部县', '623024', 3, 'diebuxian', 'D', 1, NULL, '6230');
INSERT INTO `dvadmin_system_area` VALUES (3238, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '玛曲县', '623025', 3, 'maquxian', 'M', 1, NULL, '6230');
INSERT INTO `dvadmin_system_area` VALUES (3239, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '碌曲县', '623026', 3, 'luquxian', 'L', 1, NULL, '6230');
INSERT INTO `dvadmin_system_area` VALUES (3240, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '夏河县', '623027', 3, 'xiahexian', 'X', 1, NULL, '6230');
INSERT INTO `dvadmin_system_area` VALUES (3241, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '青海省', '63', 1, 'qinghaisheng', 'Q', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (3242, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '西宁市', '6301', 2, 'xiningshi', 'X', 1, NULL, '63');
INSERT INTO `dvadmin_system_area` VALUES (3243, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '城东区', '630102', 3, 'chengdongqu', 'C', 1, NULL, '6301');
INSERT INTO `dvadmin_system_area` VALUES (3244, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '城中区', '630103', 3, 'chengzhongqu', 'C', 1, NULL, '6301');
INSERT INTO `dvadmin_system_area` VALUES (3245, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '城西区', '630104', 3, 'chengxiqu', 'C', 1, NULL, '6301');
INSERT INTO `dvadmin_system_area` VALUES (3246, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '城北区', '630105', 3, 'chengbeiqu', 'C', 1, NULL, '6301');
INSERT INTO `dvadmin_system_area` VALUES (3247, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '湟中区', '630106', 3, 'huangzhongqu', 'H', 1, NULL, '6301');
INSERT INTO `dvadmin_system_area` VALUES (3248, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '大通回族土族自治县', '630121', 3, 'datonghuizutuzuzizhixian', 'D', 1, NULL, '6301');
INSERT INTO `dvadmin_system_area` VALUES (3249, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '湟源县', '630123', 3, 'huangyuanxian', 'H', 1, NULL, '6301');
INSERT INTO `dvadmin_system_area` VALUES (3250, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '海东市', '6302', 2, 'haidongshi', 'H', 1, NULL, '63');
INSERT INTO `dvadmin_system_area` VALUES (3251, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '乐都区', '630202', 3, 'ledouqu', 'L', 1, NULL, '6302');
INSERT INTO `dvadmin_system_area` VALUES (3252, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '平安区', '630203', 3, 'pinganqu', 'P', 1, NULL, '6302');
INSERT INTO `dvadmin_system_area` VALUES (3253, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '民和回族土族自治县', '630222', 3, 'minhehuizutuzuzizhixian', 'M', 1, NULL, '6302');
INSERT INTO `dvadmin_system_area` VALUES (3254, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '互助土族自治县', '630223', 3, 'huzhutuzuzizhixian', 'H', 1, NULL, '6302');
INSERT INTO `dvadmin_system_area` VALUES (3255, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '化隆回族自治县', '630224', 3, 'hualonghuizuzizhixian', 'H', 1, NULL, '6302');
INSERT INTO `dvadmin_system_area` VALUES (3256, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '循化撒拉族自治县', '630225', 3, 'xunhuasalazuzizhixian', 'X', 1, NULL, '6302');
INSERT INTO `dvadmin_system_area` VALUES (3257, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '海北藏族自治州', '6322', 2, 'haibeizangzuzizhizhou', 'H', 1, NULL, '63');
INSERT INTO `dvadmin_system_area` VALUES (3258, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '门源回族自治县', '632221', 3, 'menyuanhuizuzizhixian', 'M', 1, NULL, '6322');
INSERT INTO `dvadmin_system_area` VALUES (3259, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '祁连县', '632222', 3, 'qilianxian', 'Q', 1, NULL, '6322');
INSERT INTO `dvadmin_system_area` VALUES (3260, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '海晏县', '632223', 3, 'haiyanxian', 'H', 1, NULL, '6322');
INSERT INTO `dvadmin_system_area` VALUES (3261, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '刚察县', '632224', 3, 'gangchaxian', 'G', 1, NULL, '6322');
INSERT INTO `dvadmin_system_area` VALUES (3262, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '黄南藏族自治州', '6323', 2, 'huangnanzangzuzizhizhou', 'H', 1, NULL, '63');
INSERT INTO `dvadmin_system_area` VALUES (3263, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '同仁县', '632321', 3, 'tongrenxian', 'T', 1, NULL, '6323');
INSERT INTO `dvadmin_system_area` VALUES (3264, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '尖扎县', '632322', 3, 'jianzhaxian', 'J', 1, NULL, '6323');
INSERT INTO `dvadmin_system_area` VALUES (3265, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '泽库县', '632323', 3, 'zekuxian', 'Z', 1, NULL, '6323');
INSERT INTO `dvadmin_system_area` VALUES (3266, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '河南蒙古族自治县', '632324', 3, 'henanmengguzuzizhixian', 'H', 1, NULL, '6323');
INSERT INTO `dvadmin_system_area` VALUES (3267, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '海南藏族自治州', '6325', 2, 'hainanzangzuzizhizhou', 'H', 1, NULL, '63');
INSERT INTO `dvadmin_system_area` VALUES (3268, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '共和县', '632521', 3, 'gonghexian', 'G', 1, NULL, '6325');
INSERT INTO `dvadmin_system_area` VALUES (3269, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '同德县', '632522', 3, 'tongdexian', 'T', 1, NULL, '6325');
INSERT INTO `dvadmin_system_area` VALUES (3270, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '贵德县', '632523', 3, 'guidexian', 'G', 1, NULL, '6325');
INSERT INTO `dvadmin_system_area` VALUES (3271, NULL, NULL, NULL, '2023-11-04 16:46:11.259547', '2023-11-04 16:46:11.259547', '兴海县', '632524', 3, 'xinghaixian', 'X', 1, NULL, '6325');
INSERT INTO `dvadmin_system_area` VALUES (3272, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '贵南县', '632525', 3, 'guinanxian', 'G', 1, NULL, '6325');
INSERT INTO `dvadmin_system_area` VALUES (3273, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '果洛藏族自治州', '6326', 2, 'guoluozangzuzizhizhou', 'G', 1, NULL, '63');
INSERT INTO `dvadmin_system_area` VALUES (3274, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '玛沁县', '632621', 3, 'maqinxian', 'M', 1, NULL, '6326');
INSERT INTO `dvadmin_system_area` VALUES (3275, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '班玛县', '632622', 3, 'banmaxian', 'B', 1, NULL, '6326');
INSERT INTO `dvadmin_system_area` VALUES (3276, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '甘德县', '632623', 3, 'gandexian', 'G', 1, NULL, '6326');
INSERT INTO `dvadmin_system_area` VALUES (3277, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '达日县', '632624', 3, 'darixian', 'D', 1, NULL, '6326');
INSERT INTO `dvadmin_system_area` VALUES (3278, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '久治县', '632625', 3, 'jiuzhixian', 'J', 1, NULL, '6326');
INSERT INTO `dvadmin_system_area` VALUES (3279, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '玛多县', '632626', 3, 'maduoxian', 'M', 1, NULL, '6326');
INSERT INTO `dvadmin_system_area` VALUES (3280, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '玉树藏族自治州', '6327', 2, 'yushuzangzuzizhizhou', 'Y', 1, NULL, '63');
INSERT INTO `dvadmin_system_area` VALUES (3281, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '玉树市', '632701', 3, 'yushushi', 'Y', 1, NULL, '6327');
INSERT INTO `dvadmin_system_area` VALUES (3282, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '杂多县', '632722', 3, 'zaduoxian', 'Z', 1, NULL, '6327');
INSERT INTO `dvadmin_system_area` VALUES (3283, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '称多县', '632723', 3, 'chengduoxian', 'C', 1, NULL, '6327');
INSERT INTO `dvadmin_system_area` VALUES (3284, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '治多县', '632724', 3, 'zhiduoxian', 'Z', 1, NULL, '6327');
INSERT INTO `dvadmin_system_area` VALUES (3285, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '囊谦县', '632725', 3, 'nangqianxian', 'N', 1, NULL, '6327');
INSERT INTO `dvadmin_system_area` VALUES (3286, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '曲麻莱县', '632726', 3, 'qumalaixian', 'Q', 1, NULL, '6327');
INSERT INTO `dvadmin_system_area` VALUES (3287, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '海西蒙古族藏族自治州', '6328', 2, 'haiximengguzuzangzuzizhizhou', 'H', 1, NULL, '63');
INSERT INTO `dvadmin_system_area` VALUES (3288, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '格尔木市', '632801', 3, 'geermushi', 'G', 1, NULL, '6328');
INSERT INTO `dvadmin_system_area` VALUES (3289, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '德令哈市', '632802', 3, 'delinghashi', 'D', 1, NULL, '6328');
INSERT INTO `dvadmin_system_area` VALUES (3290, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '茫崖市', '632803', 3, 'mangyashi', 'M', 1, NULL, '6328');
INSERT INTO `dvadmin_system_area` VALUES (3291, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '乌兰县', '632821', 3, 'wulanxian', 'W', 1, NULL, '6328');
INSERT INTO `dvadmin_system_area` VALUES (3292, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '都兰县', '632822', 3, 'doulanxian', 'D', 1, NULL, '6328');
INSERT INTO `dvadmin_system_area` VALUES (3293, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '天峻县', '632823', 3, 'tianjunxian', 'T', 1, NULL, '6328');
INSERT INTO `dvadmin_system_area` VALUES (3294, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '大柴旦行政委员会', '632857', 3, 'dachaidanxingzhengweiyuanhui', 'D', 1, NULL, '6328');
INSERT INTO `dvadmin_system_area` VALUES (3295, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '宁夏回族自治区', '64', 1, 'ningxiahuizuzizhiqu', 'N', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (3296, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '银川市', '6401', 2, 'yinchuanshi', 'Y', 1, NULL, '64');
INSERT INTO `dvadmin_system_area` VALUES (3297, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '兴庆区', '640104', 3, 'xingqingqu', 'X', 1, NULL, '6401');
INSERT INTO `dvadmin_system_area` VALUES (3298, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '西夏区', '640105', 3, 'xixiaqu', 'X', 1, NULL, '6401');
INSERT INTO `dvadmin_system_area` VALUES (3299, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '金凤区', '640106', 3, 'jinfengqu', 'J', 1, NULL, '6401');
INSERT INTO `dvadmin_system_area` VALUES (3300, NULL, NULL, NULL, '2023-11-04 16:46:11.260646', '2023-11-04 16:46:11.260646', '永宁县', '640121', 3, 'yongningxian', 'Y', 1, NULL, '6401');
INSERT INTO `dvadmin_system_area` VALUES (3301, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '贺兰县', '640122', 3, 'helanxian', 'H', 1, NULL, '6401');
INSERT INTO `dvadmin_system_area` VALUES (3302, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '灵武市', '640181', 3, 'lingwushi', 'L', 1, NULL, '6401');
INSERT INTO `dvadmin_system_area` VALUES (3303, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '石嘴山市', '6402', 2, 'shizuishanshi', 'S', 1, NULL, '64');
INSERT INTO `dvadmin_system_area` VALUES (3304, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '大武口区', '640202', 3, 'dawukouqu', 'D', 1, NULL, '6402');
INSERT INTO `dvadmin_system_area` VALUES (3305, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '惠农区', '640205', 3, 'huinongqu', 'H', 1, NULL, '6402');
INSERT INTO `dvadmin_system_area` VALUES (3306, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '平罗县', '640221', 3, 'pingluoxian', 'P', 1, NULL, '6402');
INSERT INTO `dvadmin_system_area` VALUES (3307, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '吴忠市', '6403', 2, 'wuzhongshi', 'W', 1, NULL, '64');
INSERT INTO `dvadmin_system_area` VALUES (3308, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '利通区', '640302', 3, 'litongqu', 'L', 1, NULL, '6403');
INSERT INTO `dvadmin_system_area` VALUES (3309, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '红寺堡区', '640303', 3, 'hongsibaoqu', 'H', 1, NULL, '6403');
INSERT INTO `dvadmin_system_area` VALUES (3310, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '盐池县', '640323', 3, 'yanchixian', 'Y', 1, NULL, '6403');
INSERT INTO `dvadmin_system_area` VALUES (3311, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '同心县', '640324', 3, 'tongxinxian', 'T', 1, NULL, '6403');
INSERT INTO `dvadmin_system_area` VALUES (3312, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '青铜峡市', '640381', 3, 'qingtongxiashi', 'Q', 1, NULL, '6403');
INSERT INTO `dvadmin_system_area` VALUES (3313, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '固原市', '6404', 2, 'guyuanshi', 'G', 1, NULL, '64');
INSERT INTO `dvadmin_system_area` VALUES (3314, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '原州区', '640402', 3, 'yuanzhouqu', 'Y', 1, NULL, '6404');
INSERT INTO `dvadmin_system_area` VALUES (3315, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '西吉县', '640422', 3, 'xijixian', 'X', 1, NULL, '6404');
INSERT INTO `dvadmin_system_area` VALUES (3316, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '隆德县', '640423', 3, 'longdexian', 'L', 1, NULL, '6404');
INSERT INTO `dvadmin_system_area` VALUES (3317, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '泾源县', '640424', 3, 'jingyuanxian', 'J', 1, NULL, '6404');
INSERT INTO `dvadmin_system_area` VALUES (3318, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '彭阳县', '640425', 3, 'pengyangxian', 'P', 1, NULL, '6404');
INSERT INTO `dvadmin_system_area` VALUES (3319, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '中卫市', '6405', 2, 'zhongweishi', 'Z', 1, NULL, '64');
INSERT INTO `dvadmin_system_area` VALUES (3320, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '沙坡头区', '640502', 3, 'shapotouqu', 'S', 1, NULL, '6405');
INSERT INTO `dvadmin_system_area` VALUES (3321, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '中宁县', '640521', 3, 'zhongningxian', 'Z', 1, NULL, '6405');
INSERT INTO `dvadmin_system_area` VALUES (3322, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '海原县', '640522', 3, 'haiyuanxian', 'H', 1, NULL, '6405');
INSERT INTO `dvadmin_system_area` VALUES (3323, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '新疆维吾尔自治区', '65', 1, 'xinjiangweiwuerzizhiqu', 'X', 1, NULL, NULL);
INSERT INTO `dvadmin_system_area` VALUES (3324, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '乌鲁木齐市', '6501', 2, 'wulumuqishi', 'W', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3325, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '天山区', '650102', 3, 'tianshanqu', 'T', 1, NULL, '6501');
INSERT INTO `dvadmin_system_area` VALUES (3326, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '沙依巴克区', '650103', 3, 'shayibakequ', 'S', 1, NULL, '6501');
INSERT INTO `dvadmin_system_area` VALUES (3327, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '新市区', '650104', 3, 'xinshiqu', 'X', 1, NULL, '6501');
INSERT INTO `dvadmin_system_area` VALUES (3328, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '水磨沟区', '650105', 3, 'shuimogouqu', 'S', 1, NULL, '6501');
INSERT INTO `dvadmin_system_area` VALUES (3329, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '头屯河区', '650106', 3, 'toutunhequ', 'T', 1, NULL, '6501');
INSERT INTO `dvadmin_system_area` VALUES (3330, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '达坂城区', '650107', 3, 'dabanchengqu', 'D', 1, NULL, '6501');
INSERT INTO `dvadmin_system_area` VALUES (3331, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '米东区', '650109', 3, 'midongqu', 'M', 1, NULL, '6501');
INSERT INTO `dvadmin_system_area` VALUES (3332, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '乌鲁木齐县', '650121', 3, 'wulumuqixian', 'W', 1, NULL, '6501');
INSERT INTO `dvadmin_system_area` VALUES (3333, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '克拉玛依市', '6502', 2, 'kelamayishi', 'K', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3334, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '独山子区', '650202', 3, 'dushanziqu', 'D', 1, NULL, '6502');
INSERT INTO `dvadmin_system_area` VALUES (3335, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '克拉玛依区', '650203', 3, 'kelamayiqu', 'K', 1, NULL, '6502');
INSERT INTO `dvadmin_system_area` VALUES (3336, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '白碱滩区', '650204', 3, 'baijiantanqu', 'B', 1, NULL, '6502');
INSERT INTO `dvadmin_system_area` VALUES (3337, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '乌尔禾区', '650205', 3, 'wuerhequ', 'W', 1, NULL, '6502');
INSERT INTO `dvadmin_system_area` VALUES (3338, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '吐鲁番市', '6504', 2, 'tulufanshi', 'T', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3339, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '高昌区', '650402', 3, 'gaochangqu', 'G', 1, NULL, '6504');
INSERT INTO `dvadmin_system_area` VALUES (3340, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '鄯善县', '650421', 3, 'shanshanxian', 'S', 1, NULL, '6504');
INSERT INTO `dvadmin_system_area` VALUES (3341, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '托克逊县', '650422', 3, 'tuokexunxian', 'T', 1, NULL, '6504');
INSERT INTO `dvadmin_system_area` VALUES (3342, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '哈密市', '6505', 2, 'hamishi', 'H', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3343, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '伊州区', '650502', 3, 'yizhouqu', 'Y', 1, NULL, '6505');
INSERT INTO `dvadmin_system_area` VALUES (3344, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '巴里坤哈萨克自治县', '650521', 3, 'balikunhasakezizhixian', 'B', 1, NULL, '6505');
INSERT INTO `dvadmin_system_area` VALUES (3345, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '伊吾县', '650522', 3, 'yiwuxian', 'Y', 1, NULL, '6505');
INSERT INTO `dvadmin_system_area` VALUES (3346, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '昌吉回族自治州', '6523', 2, 'changjihuizuzizhizhou', 'C', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3347, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '昌吉市', '652301', 3, 'changjishi', 'C', 1, NULL, '6523');
INSERT INTO `dvadmin_system_area` VALUES (3348, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '阜康市', '652302', 3, 'fukangshi', 'F', 1, NULL, '6523');
INSERT INTO `dvadmin_system_area` VALUES (3349, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '呼图壁县', '652323', 3, 'hutubixian', 'H', 1, NULL, '6523');
INSERT INTO `dvadmin_system_area` VALUES (3350, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '玛纳斯县', '652324', 3, 'manasixian', 'M', 1, NULL, '6523');
INSERT INTO `dvadmin_system_area` VALUES (3351, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '奇台县', '652325', 3, 'qitaixian', 'Q', 1, NULL, '6523');
INSERT INTO `dvadmin_system_area` VALUES (3352, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '吉木萨尔县', '652327', 3, 'jimusaerxian', 'J', 1, NULL, '6523');
INSERT INTO `dvadmin_system_area` VALUES (3353, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '木垒哈萨克自治县', '652328', 3, 'muleihasakezizhixian', 'M', 1, NULL, '6523');
INSERT INTO `dvadmin_system_area` VALUES (3354, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '博尔塔拉蒙古自治州', '6527', 2, 'boertalamengguzizhizhou', 'B', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3355, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '博乐市', '652701', 3, 'boleshi', 'B', 1, NULL, '6527');
INSERT INTO `dvadmin_system_area` VALUES (3356, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '阿拉山口市', '652702', 3, 'alashankoushi', 'A', 1, NULL, '6527');
INSERT INTO `dvadmin_system_area` VALUES (3357, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '精河县', '652722', 3, 'jinghexian', 'J', 1, NULL, '6527');
INSERT INTO `dvadmin_system_area` VALUES (3358, NULL, NULL, NULL, '2023-11-04 16:46:11.261161', '2023-11-04 16:46:11.261161', '温泉县', '652723', 3, 'wenquanxian', 'W', 1, NULL, '6527');
INSERT INTO `dvadmin_system_area` VALUES (3359, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '巴音郭楞蒙古自治州', '6528', 2, 'bayinguolengmengguzizhizhou', 'B', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3360, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '库尔勒市', '652801', 3, 'kuerleishi', 'K', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3361, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '轮台县', '652822', 3, 'luntaixian', 'L', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3362, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '尉犁县', '652823', 3, 'yulixian', 'Y', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3363, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '若羌县', '652824', 3, 'ruoqiangxian', 'R', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3364, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '且末县', '652825', 3, 'qiemoxian', 'Q', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3365, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '焉耆回族自治县', '652826', 3, 'yanqihuizuzizhixian', 'Y', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3366, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '和静县', '652827', 3, 'hejingxian', 'H', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3367, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '和硕县', '652828', 3, 'heshuoxian', 'H', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3368, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '博湖县', '652829', 3, 'bohuxian', 'B', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3369, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '库尔勒经济技术开发区', '652871', 3, 'kuerleijingjijishukaifaqu', 'K', 1, NULL, '6528');
INSERT INTO `dvadmin_system_area` VALUES (3370, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '阿克苏地区', '6529', 2, 'akesudiqu', 'A', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3371, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '阿克苏市', '652901', 3, 'akesushi', 'A', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3372, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '库车市', '652902', 3, 'kucheshi', 'K', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3373, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '温宿县', '652922', 3, 'wensuxian', 'W', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3374, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '沙雅县', '652924', 3, 'shayaxian', 'S', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3375, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '新和县', '652925', 3, 'xinhexian', 'X', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3376, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '拜城县', '652926', 3, 'baichengxian', 'B', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3377, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '乌什县', '652927', 3, 'wushenxian', 'W', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3378, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '阿瓦提县', '652928', 3, 'awatixian', 'A', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3379, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '柯坪县', '652929', 3, 'kepingxian', 'K', 1, NULL, '6529');
INSERT INTO `dvadmin_system_area` VALUES (3380, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '克孜勒苏柯尔克孜自治州', '6530', 2, 'kezileisukeerkezizizhizhou', 'K', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3381, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '阿图什市', '653001', 3, 'atushenshi', 'A', 1, NULL, '6530');
INSERT INTO `dvadmin_system_area` VALUES (3382, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '阿克陶县', '653022', 3, 'aketaoxian', 'A', 1, NULL, '6530');
INSERT INTO `dvadmin_system_area` VALUES (3383, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '阿合奇县', '653023', 3, 'aheqixian', 'A', 1, NULL, '6530');
INSERT INTO `dvadmin_system_area` VALUES (3384, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '乌恰县', '653024', 3, 'wuqiaxian', 'W', 1, NULL, '6530');
INSERT INTO `dvadmin_system_area` VALUES (3385, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '喀什地区', '6531', 2, 'kashidiqu', 'K', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3386, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '喀什市', '653101', 3, 'kashishi', 'K', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3387, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '疏附县', '653121', 3, 'shufuxian', 'S', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3388, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '疏勒县', '653122', 3, 'shulexian', 'S', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3389, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '英吉沙县', '653123', 3, 'yingjishaxian', 'Y', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3390, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '泽普县', '653124', 3, 'zepuxian', 'Z', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3391, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '莎车县', '653125', 3, 'shachexian', 'S', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3392, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '叶城县', '653126', 3, 'yechengxian', 'Y', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3393, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '麦盖提县', '653127', 3, 'maigaitixian', 'M', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3394, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '岳普湖县', '653128', 3, 'yuepuhuxian', 'Y', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3395, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '伽师县', '653129', 3, 'gashixian', 'G', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3396, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '巴楚县', '653130', 3, 'bachuxian', 'B', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3397, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '塔什库尔干塔吉克自治县', '653131', 3, 'tashenkuergantajikezizhixian', 'T', 1, NULL, '6531');
INSERT INTO `dvadmin_system_area` VALUES (3398, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '和田地区', '6532', 2, 'hetiandiqu', 'H', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3399, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '和田市', '653201', 3, 'hetianshi', 'H', 1, NULL, '6532');
INSERT INTO `dvadmin_system_area` VALUES (3400, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '和田县', '653221', 3, 'hetianxian', 'H', 1, NULL, '6532');
INSERT INTO `dvadmin_system_area` VALUES (3401, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '墨玉县', '653222', 3, 'moyuxian', 'M', 1, NULL, '6532');
INSERT INTO `dvadmin_system_area` VALUES (3402, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '皮山县', '653223', 3, 'pishanxian', 'P', 1, NULL, '6532');
INSERT INTO `dvadmin_system_area` VALUES (3403, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '洛浦县', '653224', 3, 'luopuxian', 'L', 1, NULL, '6532');
INSERT INTO `dvadmin_system_area` VALUES (3404, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '策勒县', '653225', 3, 'celeixian', 'C', 1, NULL, '6532');
INSERT INTO `dvadmin_system_area` VALUES (3405, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '于田县', '653226', 3, 'yutianxian', 'Y', 1, NULL, '6532');
INSERT INTO `dvadmin_system_area` VALUES (3406, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '民丰县', '653227', 3, 'minfengxian', 'M', 1, NULL, '6532');
INSERT INTO `dvadmin_system_area` VALUES (3407, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '伊犁哈萨克自治州', '6540', 2, 'yilihasakezizhizhou', 'Y', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3408, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '伊宁市', '654002', 3, 'yiningshi', 'Y', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3409, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '奎屯市', '654003', 3, 'kuitunshi', 'K', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3410, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '霍尔果斯市', '654004', 3, 'huoerguosishi', 'H', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3411, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '伊宁县', '654021', 3, 'yiningxian', 'Y', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3412, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '察布查尔锡伯自治县', '654022', 3, 'chabuchaerxibozizhixian', 'C', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3413, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '霍城县', '654023', 3, 'huochengxian', 'H', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3414, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '巩留县', '654024', 3, 'gongliuxian', 'G', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3415, NULL, NULL, NULL, '2023-11-04 16:46:11.262167', '2023-11-04 16:46:11.262167', '新源县', '654025', 3, 'xinyuanxian', 'X', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3416, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '昭苏县', '654026', 3, 'zhaosuxian', 'Z', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3417, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '特克斯县', '654027', 3, 'tekesixian', 'T', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3418, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '尼勒克县', '654028', 3, 'nileikexian', 'N', 1, NULL, '6540');
INSERT INTO `dvadmin_system_area` VALUES (3419, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '塔城地区', '6542', 2, 'tachengdiqu', 'T', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3420, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '塔城市', '654201', 3, 'tachengshi', 'T', 1, NULL, '6542');
INSERT INTO `dvadmin_system_area` VALUES (3421, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '乌苏市', '654202', 3, 'wusushi', 'W', 1, NULL, '6542');
INSERT INTO `dvadmin_system_area` VALUES (3422, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '额敏县', '654221', 3, 'eminxian', 'E', 1, NULL, '6542');
INSERT INTO `dvadmin_system_area` VALUES (3423, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '沙湾县', '654223', 3, 'shawanxian', 'S', 1, NULL, '6542');
INSERT INTO `dvadmin_system_area` VALUES (3424, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '托里县', '654224', 3, 'tuolixian', 'T', 1, NULL, '6542');
INSERT INTO `dvadmin_system_area` VALUES (3425, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '裕民县', '654225', 3, 'yuminxian', 'Y', 1, NULL, '6542');
INSERT INTO `dvadmin_system_area` VALUES (3426, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '和布克赛尔蒙古自治县', '654226', 3, 'hebukesaiermengguzizhixian', 'H', 1, NULL, '6542');
INSERT INTO `dvadmin_system_area` VALUES (3427, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '阿勒泰地区', '6543', 2, 'aleitaidiqu', 'A', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3428, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '阿勒泰市', '654301', 3, 'aleitaishi', 'A', 1, NULL, '6543');
INSERT INTO `dvadmin_system_area` VALUES (3429, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '布尔津县', '654321', 3, 'buerjinxian', 'B', 1, NULL, '6543');
INSERT INTO `dvadmin_system_area` VALUES (3430, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '富蕴县', '654322', 3, 'fuyunxian', 'F', 1, NULL, '6543');
INSERT INTO `dvadmin_system_area` VALUES (3431, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '福海县', '654323', 3, 'fuhaixian', 'F', 1, NULL, '6543');
INSERT INTO `dvadmin_system_area` VALUES (3432, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '哈巴河县', '654324', 3, 'habahexian', 'H', 1, NULL, '6543');
INSERT INTO `dvadmin_system_area` VALUES (3433, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '青河县', '654325', 3, 'qinghexian', 'Q', 1, NULL, '6543');
INSERT INTO `dvadmin_system_area` VALUES (3434, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '吉木乃县', '654326', 3, 'jimunaixian', 'J', 1, NULL, '6543');
INSERT INTO `dvadmin_system_area` VALUES (3435, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '自治区直辖县级行政区划', '6590', 2, 'zizhiquzhixiaxianjixingzhengquhua', 'Z', 1, NULL, '65');
INSERT INTO `dvadmin_system_area` VALUES (3436, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '石河子市', '659001', 3, 'shihezishi', 'S', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3437, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '阿拉尔市', '659002', 3, 'alaershi', 'A', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3438, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '图木舒克市', '659003', 3, 'tumushukeshi', 'T', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3439, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '五家渠市', '659004', 3, 'wujiaqushi', 'W', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3440, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '北屯市', '659005', 3, 'beitunshi', 'B', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3441, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '铁门关市', '659006', 3, 'tiemenguanshi', 'T', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3442, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '双河市', '659007', 3, 'shuangheshi', 'S', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3443, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '可克达拉市', '659008', 3, 'kekedalashi', 'K', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3444, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '昆玉市', '659009', 3, 'kunyushi', 'K', 1, NULL, '6590');
INSERT INTO `dvadmin_system_area` VALUES (3445, NULL, NULL, NULL, '2023-11-04 16:46:11.263167', '2023-11-04 16:46:11.263167', '胡杨河市', '659010', 3, 'huyangheshi', 'H', 1, NULL, '6590');

-- ----------------------------
-- Table structure for dvadmin_system_config
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_config`;
CREATE TABLE `dvadmin_system_config`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` json NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `data_options` json NULL,
  `form_item_type` int NOT NULL,
  `rule` json NULL,
  `placeholder` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `setting` json NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_system_config_key_parent_id_f8627867_uniq`(`key` ASC, `parent_id` ASC) USING BTREE,
  INDEX `dvadmin_system_config_key_473a4f8d`(`key` ASC) USING BTREE,
  INDEX `dvadmin_system_config_creator_id_ba7fd60a`(`creator_id` ASC) USING BTREE,
  INDEX `dvadmin_system_config_parent_id_1ff841b5`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_config
-- ----------------------------
INSERT INTO `dvadmin_system_config` VALUES (1, NULL, NULL, NULL, '2023-11-04 16:45:03.946581', '2023-11-04 16:45:03.946581', '基础配置', 'base', NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_config` VALUES (2, NULL, '1', NULL, '2023-11-04 17:08:23.841544', '2023-11-04 16:45:03.951951', '开启验证码', 'captcha_state', 'false', 1, 1, NULL, 9, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请选择', NULL, NULL, 1);
INSERT INTO `dvadmin_system_config` VALUES (3, NULL, NULL, NULL, '2023-11-04 17:08:23.858053', '2023-11-04 16:45:03.958987', '创建用户默认密码', 'default_password', '\"admin123456\"', 2, 1, NULL, 0, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请输入默认密码', NULL, NULL, 1);
INSERT INTO `dvadmin_system_config` VALUES (4, NULL, NULL, NULL, '2023-11-04 17:08:23.851540', '2023-11-04 16:45:03.964990', '开启单点登录', 'single_login', 'false', 1, 1, NULL, 9, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请选择', NULL, NULL, 1);
INSERT INTO `dvadmin_system_config` VALUES (5, NULL, NULL, NULL, '2023-11-04 16:45:03.970502', '2023-11-04 16:45:03.970502', '登录页配置', 'login', NULL, 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_config` VALUES (6, NULL, NULL, NULL, '2023-11-04 17:06:11.742884', '2023-11-04 16:45:03.977152', '网站名称', 'site_name', '\"二维码管理系统\"', 1, 1, NULL, 0, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请输入网站名称', NULL, NULL, 5);
INSERT INTO `dvadmin_system_config` VALUES (7, NULL, NULL, NULL, '2023-11-04 17:06:11.753111', '2023-11-04 16:45:03.984440', '登录网站logo', 'site_logo', NULL, 2, 1, NULL, 7, '[]', '请上传网站logo', NULL, NULL, 5);
INSERT INTO `dvadmin_system_config` VALUES (8, NULL, '1', NULL, '2023-11-04 17:07:16.790917', '2023-11-04 16:45:03.990440', '登录页背景图', 'login_background', NULL, 3, 1, NULL, 7, '[]', '请上传登录背景页', NULL, NULL, 5);
INSERT INTO `dvadmin_system_config` VALUES (9, NULL, NULL, NULL, '2023-11-04 17:06:11.772061', '2023-11-04 16:45:03.996815', '版权信息', 'copyright', '\"QRCode\"', 4, 1, NULL, 0, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请输入版权信息', NULL, NULL, 5);
INSERT INTO `dvadmin_system_config` VALUES (10, NULL, NULL, NULL, '2023-11-04 17:06:11.780434', '2023-11-04 16:45:04.002514', '备案信息', 'keep_record', '\"QRCode\"', 5, 1, NULL, 0, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请输入备案信息', NULL, NULL, 5);
INSERT INTO `dvadmin_system_config` VALUES (11, NULL, NULL, NULL, '2023-11-04 17:06:11.789491', '2023-11-04 16:45:04.007513', '帮助链接', 'help_url', '\"QRCode\"', 6, 1, NULL, 0, '\"\"', '请输入帮助信息', NULL, NULL, 5);
INSERT INTO `dvadmin_system_config` VALUES (12, NULL, NULL, NULL, '2023-11-04 17:06:11.797857', '2023-11-04 16:45:04.012683', '隐私链接', 'privacy_url', '\"#\"', 7, 1, NULL, 0, '[]', '请填写隐私链接', NULL, NULL, 5);
INSERT INTO `dvadmin_system_config` VALUES (13, NULL, NULL, NULL, '2023-11-04 17:06:11.805449', '2023-11-04 16:45:04.017360', '条款链接', 'clause_url', '\"#\"', 8, 1, NULL, 0, '[]', '请输入条款链接', NULL, NULL, 5);

-- ----------------------------
-- Table structure for dvadmin_system_dept
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_dept`;
CREATE TABLE `dvadmin_system_dept`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int NOT NULL,
  `owner` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key` ASC) USING BTREE,
  INDEX `dvadmin_system_dept_creator_id_e69fd1ae`(`creator_id` ASC) USING BTREE,
  INDEX `dvadmin_system_dept_parent_id_0f9eb419`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_dept
-- ----------------------------
INSERT INTO `dvadmin_system_dept` VALUES (1, NULL, NULL, NULL, '2023-11-04 16:45:03.103127', '2023-11-04 16:45:03.103127', 'DVAdmin团队', 'dvadmin', 1, '', '', '', 1, NULL, NULL);
INSERT INTO `dvadmin_system_dept` VALUES (2, NULL, NULL, NULL, '2023-11-04 16:45:03.109238', '2023-11-04 16:45:03.109238', '运营部', '', 2, '', '', '', 1, NULL, 1);
INSERT INTO `dvadmin_system_dept` VALUES (3, NULL, NULL, NULL, '2023-11-04 16:45:03.113398', '2023-11-04 16:45:03.113398', '技术部', 'technology', 1, '', '', '', 1, NULL, 1);

-- ----------------------------
-- Table structure for dvadmin_system_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_dictionary`;
CREATE TABLE `dvadmin_system_dictionary`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_value` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort` int NULL DEFAULT NULL,
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_system_dictionary_creator_id_d1b44b9d`(`creator_id` ASC) USING BTREE,
  INDEX `dvadmin_system_dictionary_parent_id_4cceb110`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_dictionary
-- ----------------------------
INSERT INTO `dvadmin_system_dictionary` VALUES (1, NULL, NULL, NULL, '2023-11-04 16:45:03.525197', '2023-11-04 16:45:03.525197', '启用/禁用-布尔值', 'button_status_bool', 0, NULL, 0, 1, 1, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_dictionary` VALUES (2, NULL, NULL, NULL, '2023-11-04 16:45:03.532198', '2023-11-04 16:45:03.532198', '启用', 'true', 6, NULL, 1, 1, 1, NULL, NULL, 1);
INSERT INTO `dvadmin_system_dictionary` VALUES (3, NULL, NULL, NULL, '2023-11-04 16:45:03.539196', '2023-11-04 16:45:03.539196', '禁用', 'false', 6, NULL, 1, 1, 2, NULL, NULL, 1);
INSERT INTO `dvadmin_system_dictionary` VALUES (4, NULL, NULL, NULL, '2023-11-04 16:45:03.543712', '2023-11-04 16:45:03.543712', '系统按钮', 'system_button', 0, NULL, 0, 1, 2, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_dictionary` VALUES (5, NULL, NULL, NULL, '2023-11-04 16:45:03.551736', '2023-11-04 16:45:03.551736', '新增', 'Create', 0, 'success', 1, 1, 1, NULL, NULL, 4);
INSERT INTO `dvadmin_system_dictionary` VALUES (6, NULL, NULL, NULL, '2023-11-04 16:45:03.558744', '2023-11-04 16:45:03.558744', '编辑', 'Update', 0, 'primary', 1, 1, 2, NULL, NULL, 4);
INSERT INTO `dvadmin_system_dictionary` VALUES (7, NULL, NULL, NULL, '2023-11-04 16:45:03.565968', '2023-11-04 16:45:03.565968', '删除', 'Delete', 0, 'danger', 1, 1, 3, NULL, NULL, 4);
INSERT INTO `dvadmin_system_dictionary` VALUES (8, NULL, NULL, NULL, '2023-11-04 16:45:03.572004', '2023-11-04 16:45:03.572004', '详情', 'Retrieve', 0, 'info', 1, 1, 4, NULL, NULL, 4);
INSERT INTO `dvadmin_system_dictionary` VALUES (9, NULL, NULL, NULL, '2023-11-04 16:45:03.579273', '2023-11-04 16:45:03.580273', '查询', 'Search', 0, 'warning', 1, 1, 5, NULL, NULL, 4);
INSERT INTO `dvadmin_system_dictionary` VALUES (10, NULL, NULL, NULL, '2023-11-04 16:45:03.586879', '2023-11-04 16:45:03.586879', '保存', 'Save', 0, 'success', 1, 1, 6, NULL, NULL, 4);
INSERT INTO `dvadmin_system_dictionary` VALUES (11, NULL, NULL, NULL, '2023-11-04 16:45:03.592785', '2023-11-04 16:45:03.592785', '导入', 'Import', 0, 'primary', 1, 1, 7, NULL, NULL, 4);
INSERT INTO `dvadmin_system_dictionary` VALUES (12, NULL, NULL, NULL, '2023-11-04 16:45:03.599971', '2023-11-04 16:45:03.600979', '导出', 'Export', 0, 'warning', 1, 1, 8, NULL, NULL, 4);
INSERT INTO `dvadmin_system_dictionary` VALUES (13, NULL, NULL, NULL, '2023-11-04 16:45:03.605886', '2023-11-04 16:45:03.605886', '启用/禁用-数字值', 'button_status_number', 0, NULL, 0, 1, 3, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_dictionary` VALUES (14, NULL, NULL, NULL, '2023-11-04 16:45:03.612832', '2023-11-04 16:45:03.612832', '启用', '1', 1, NULL, 1, 1, 1, NULL, NULL, 13);
INSERT INTO `dvadmin_system_dictionary` VALUES (15, NULL, NULL, NULL, '2023-11-04 16:45:03.621363', '2023-11-04 16:45:03.621363', '禁用', '0', 1, NULL, 1, 1, 2, NULL, NULL, 13);
INSERT INTO `dvadmin_system_dictionary` VALUES (16, NULL, NULL, NULL, '2023-11-04 16:45:03.628653', '2023-11-04 16:45:03.628653', '是/否-布尔值', 'button_whether_bool', 0, NULL, 0, 1, 4, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_dictionary` VALUES (17, NULL, NULL, NULL, '2023-11-04 16:45:03.637218', '2023-11-04 16:45:03.637218', '是', 'true', 6, NULL, 1, 1, 1, NULL, NULL, 16);
INSERT INTO `dvadmin_system_dictionary` VALUES (18, NULL, NULL, NULL, '2023-11-04 16:45:03.645678', '2023-11-04 16:45:03.645678', '否', 'false', 6, NULL, 1, 1, 2, NULL, NULL, 16);
INSERT INTO `dvadmin_system_dictionary` VALUES (19, NULL, NULL, NULL, '2023-11-04 16:45:03.654090', '2023-11-04 16:45:03.654090', '是/否-数字值', 'button_whether_number', 0, NULL, 0, 1, 5, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_dictionary` VALUES (20, NULL, NULL, NULL, '2023-11-04 16:45:03.663941', '2023-11-04 16:45:03.663941', '是', '1', 1, NULL, 1, 1, 1, NULL, NULL, 19);
INSERT INTO `dvadmin_system_dictionary` VALUES (21, NULL, NULL, NULL, '2023-11-04 16:45:03.674022', '2023-11-04 16:45:03.674022', '否', '2', 1, NULL, 1, 1, 2, NULL, NULL, 19);
INSERT INTO `dvadmin_system_dictionary` VALUES (22, NULL, NULL, NULL, '2023-11-04 16:45:03.683031', '2023-11-04 16:45:03.683031', '用户类型', 'user_type', 0, NULL, 0, 1, 6, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_dictionary` VALUES (23, NULL, NULL, NULL, '2023-11-04 16:45:03.692982', '2023-11-04 16:45:03.692982', '后台用户', '0', 1, NULL, 1, 1, 1, NULL, NULL, 22);
INSERT INTO `dvadmin_system_dictionary` VALUES (24, NULL, NULL, NULL, '2023-11-04 16:45:03.703431', '2023-11-04 16:45:03.703431', '前台用户', '1', 1, NULL, 1, 1, 2, NULL, NULL, 22);
INSERT INTO `dvadmin_system_dictionary` VALUES (25, NULL, NULL, NULL, '2023-11-04 16:45:03.713428', '2023-11-04 16:45:03.713428', '表单类型', 'config_form_type', 0, NULL, 0, 1, 7, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_dictionary` VALUES (26, NULL, NULL, NULL, '2023-11-04 16:45:03.724430', '2023-11-04 16:45:03.724430', 'text', '0', 1, NULL, 1, 1, 0, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (27, NULL, NULL, NULL, '2023-11-04 16:45:03.736896', '2023-11-04 16:45:03.736896', 'textarea', '3', 1, '', 1, 1, 0, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (28, NULL, NULL, NULL, '2023-11-04 16:45:03.748009', '2023-11-04 16:45:03.748009', 'number', '10', 1, '', 1, 1, 0, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (29, NULL, NULL, NULL, '2023-11-04 16:45:03.770996', '2023-11-04 16:45:03.770996', 'datetime', '1', 1, NULL, 1, 1, 1, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (30, NULL, NULL, NULL, '2023-11-04 16:45:03.782637', '2023-11-04 16:45:03.782637', 'date', '2', 1, NULL, 1, 1, 2, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (31, NULL, NULL, NULL, '2023-11-04 16:45:03.791779', '2023-11-04 16:45:03.791779', 'time', '15', 1, '', 1, 1, 3, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (32, NULL, NULL, NULL, '2023-11-04 16:45:03.801421', '2023-11-04 16:45:03.801421', 'select', '4', 1, NULL, 1, 1, 4, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (33, NULL, NULL, NULL, '2023-11-04 16:45:03.811844', '2023-11-04 16:45:03.811844', 'checkbox', '5', 1, NULL, 1, 1, 5, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (34, NULL, NULL, NULL, '2023-11-04 16:45:03.820501', '2023-11-04 16:45:03.820501', 'radio', '6', 1, NULL, 1, 1, 6, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (35, NULL, NULL, NULL, '2023-11-04 16:45:03.831321', '2023-11-04 16:45:03.831321', 'switch', '9', 1, '', 1, 1, 6, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (36, NULL, NULL, NULL, '2023-11-04 16:45:03.840586', '2023-11-04 16:45:03.840586', '文件附件', '8', 1, '', 1, 1, 7, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (37, NULL, NULL, NULL, '2023-11-04 16:45:03.849497', '2023-11-04 16:45:03.849497', '图片(单张)', '7', 1, '', 1, 1, 8, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (38, NULL, NULL, NULL, '2023-11-04 16:45:03.860524', '2023-11-04 16:45:03.860524', '图片(多张)', '12', 1, '', 1, 1, 9, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (39, NULL, NULL, NULL, '2023-11-04 16:45:03.871878', '2023-11-04 16:45:03.871878', '数组', '11', 1, '', 1, 1, 11, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (40, NULL, NULL, NULL, '2023-11-04 16:45:03.882723', '2023-11-04 16:45:03.882723', '关联表', '13', 1, '', 1, 1, 13, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (41, NULL, NULL, NULL, '2023-11-04 16:45:03.893204', '2023-11-04 16:45:03.893204', '关联表(多选)', '14', 1, '', 1, 1, 14, NULL, NULL, 25);
INSERT INTO `dvadmin_system_dictionary` VALUES (42, NULL, NULL, NULL, '2023-11-04 16:45:03.902562', '2023-11-04 16:45:03.902562', '性别', 'gender', 0, NULL, 0, 1, 8, NULL, NULL, NULL);
INSERT INTO `dvadmin_system_dictionary` VALUES (43, NULL, NULL, NULL, '2023-11-04 16:45:03.911562', '2023-11-04 16:45:03.911562', '未知', '0', 1, NULL, 1, 1, 0, NULL, NULL, 42);
INSERT INTO `dvadmin_system_dictionary` VALUES (44, NULL, NULL, NULL, '2023-11-04 16:45:03.923909', '2023-11-04 16:45:03.923909', '男', '1', 1, NULL, 1, 1, 1, NULL, NULL, 42);
INSERT INTO `dvadmin_system_dictionary` VALUES (45, NULL, NULL, NULL, '2023-11-04 16:45:03.935591', '2023-11-04 16:45:03.935591', '女', '2', 1, NULL, 1, 1, 2, NULL, NULL, 42);

-- ----------------------------
-- Table structure for dvadmin_system_file_list
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_file_list`;
CREATE TABLE `dvadmin_system_file_list`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `engine` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` bigint NOT NULL,
  `md5sum` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_system_file_list_creator_id_dec6acb5`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_file_list
-- ----------------------------
INSERT INTO `dvadmin_system_file_list` VALUES (1, NULL, NULL, NULL, '2023-11-04 22:10:38.926426', '2023-11-04 22:10:38.926426', 'blob', 'files/d/4/d46202ec528ebd11440e6b4776eb8450', 'media/files/d/4/d46202ec528ebd11440e6b4776eb8450', 'local', 'image/png', 2068, 'd46202ec528ebd11440e6b4776eb8450', NULL);

-- ----------------------------
-- Table structure for dvadmin_system_login_log
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_login_log`;
CREATE TABLE `dvadmin_system_login_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `agent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `browser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `os` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `continent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `area_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country_english` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `longitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `latitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_type` int NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_system_login_log_creator_id_5f6dc165`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_login_log
-- ----------------------------
INSERT INTO `dvadmin_system_login_log` VALUES (1, NULL, NULL, '1', '2023-11-04 16:50:32.641841', '2023-11-04 16:50:32.641841', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 117.0.0', 'Chrome 117.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `dvadmin_system_login_log` VALUES (2, NULL, NULL, '3', '2023-11-04 16:57:21.586136', '2023-11-04 16:57:21.586136', 'test', '127.0.0.1', 'PC / Windows 10 / Edge 119.0.0', 'Edge 119.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, NULL);
INSERT INTO `dvadmin_system_login_log` VALUES (3, NULL, NULL, '1', '2023-11-04 17:04:52.396369', '2023-11-04 17:04:52.396369', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 117.0.0', 'Chrome 117.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `dvadmin_system_login_log` VALUES (4, NULL, NULL, NULL, '2023-11-04 17:07:58.497487', '2023-11-04 17:07:58.497487', 'test', '127.0.0.1', 'PC / Windows 10 / Edge 119.0.0', 'Edge 119.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 5);
INSERT INTO `dvadmin_system_login_log` VALUES (5, NULL, NULL, NULL, '2023-11-04 17:08:12.801430', '2023-11-04 17:08:12.801430', 'admin', '127.0.0.1', 'PC / Windows 10 / Edge 119.0.0', 'Edge 119.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, NULL);
INSERT INTO `dvadmin_system_login_log` VALUES (6, NULL, NULL, NULL, '2023-11-04 17:13:01.140428', '2023-11-04 17:13:01.140428', 'test', '127.0.0.1', 'PC / Windows 10 / Chrome 117.0.0', 'Chrome 117.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 5);
INSERT INTO `dvadmin_system_login_log` VALUES (7, NULL, NULL, NULL, '2023-11-04 17:20:01.130612', '2023-11-04 17:20:01.130612', 'admin', '127.0.0.1', 'PC / Windows 10 / Edge 119.0.0', 'Edge 119.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, NULL);
INSERT INTO `dvadmin_system_login_log` VALUES (8, NULL, NULL, NULL, '2023-11-04 17:32:26.854784', '2023-11-04 17:32:26.854784', 'test', '127.0.0.1', 'PC / Windows 10 / Edge 119.0.0', 'Edge 119.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 5);
INSERT INTO `dvadmin_system_login_log` VALUES (9, NULL, NULL, NULL, '2023-11-04 17:39:00.722259', '2023-11-04 17:39:00.722259', 'admin', '127.0.0.1', 'PC / Windows 10 / Edge 119.0.0', 'Edge 119.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, NULL);
INSERT INTO `dvadmin_system_login_log` VALUES (10, NULL, NULL, NULL, '2023-11-04 22:11:55.049560', '2023-11-04 22:11:55.049560', 'wxj', '127.0.0.1', 'PC / Windows 10 / Edge 119.0.0', 'Edge 119.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, NULL);
INSERT INTO `dvadmin_system_login_log` VALUES (11, NULL, NULL, '1', '2023-11-04 22:18:11.721417', '2023-11-04 22:18:11.721417', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 117.0.0', 'Chrome 117.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `dvadmin_system_login_log` VALUES (12, NULL, NULL, '1', '2023-11-04 22:20:46.939276', '2023-11-04 22:20:46.940273', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 117.0.0', 'Chrome 117.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `dvadmin_system_login_log` VALUES (13, NULL, NULL, NULL, '2023-11-04 22:21:18.024734', '2023-11-04 22:21:18.024734', 'test', '127.0.0.1', 'PC / Windows 10 / Chrome 117.0.0', 'Chrome 117.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 5);
INSERT INTO `dvadmin_system_login_log` VALUES (14, NULL, NULL, NULL, '2023-11-04 22:21:39.038595', '2023-11-04 22:21:39.038595', 'test', '127.0.0.1', 'PC / Windows 10 / Edge 119.0.0', 'Edge 119.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 5);
INSERT INTO `dvadmin_system_login_log` VALUES (15, NULL, NULL, '1', '2023-11-04 22:21:47.615271', '2023-11-04 22:21:47.615271', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 117.0.0', 'Chrome 117.0.0', 'Windows 10', '', '', '', '', '', '', '', '', '', '', '', 1, 1);

-- ----------------------------
-- Table structure for dvadmin_system_menu
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_menu`;
CREATE TABLE `dvadmin_system_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort` int NULL DEFAULT NULL,
  `is_link` tinyint(1) NOT NULL,
  `is_catalog` tinyint(1) NOT NULL,
  `web_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `frame_out` tinyint(1) NOT NULL,
  `cache` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_system_menu_creator_id_430cdc1c`(`creator_id` ASC) USING BTREE,
  INDEX `dvadmin_system_menu_parent_id_bc6f21bc`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_menu
-- ----------------------------
INSERT INTO `dvadmin_system_menu` VALUES (1, '', '1', NULL, '2023-11-04 16:55:47.096547', '2023-11-04 16:45:03.170702', 'cog', '系统管理', 9, 0, 1, '', '', '', 1, 0, 0, 1, NULL, NULL);
INSERT INTO `dvadmin_system_menu` VALUES (2, NULL, NULL, NULL, '2023-11-04 16:45:03.176916', '2023-11-04 16:45:03.176916', 'navicon', '菜单管理', 1, 0, 0, '/menu', 'system/menu', 'menu', 1, 0, 0, 1, NULL, 1);
INSERT INTO `dvadmin_system_menu` VALUES (3, NULL, NULL, NULL, '2023-11-04 16:45:03.205978', '2023-11-04 16:45:03.205978', 'dot-circle-o', '菜单按钮', 2, 0, 0, '/menuButton', 'system/menuButton/index', 'menuButton', 1, 0, 0, 0, NULL, 1);
INSERT INTO `dvadmin_system_menu` VALUES (4, NULL, NULL, NULL, '2023-11-04 16:45:03.228045', '2023-11-04 16:45:03.228045', 'bank', '部门管理', 3, 0, 0, '/dept', 'system/dept/index', 'dept', 1, 0, 0, 1, NULL, 1);
INSERT INTO `dvadmin_system_menu` VALUES (5, '', '1', NULL, '2023-11-04 22:19:35.513206', '2023-11-04 16:45:03.252784', 'address-qr', '角色管理', 4, 0, 0, '/role', 'system/role/index', 'role', 1, 0, 0, 1, NULL, 1);
INSERT INTO `dvadmin_system_menu` VALUES (6, '', '1', NULL, '2023-11-04 22:20:15.566408', '2023-11-04 16:45:03.283209', 'users', '用户管理', 6, 0, 1, '/user', 'system/user/index', 'user', 1, 0, 0, 0, NULL, NULL);
INSERT INTO `dvadmin_system_menu` VALUES (7, NULL, NULL, NULL, '2023-11-04 16:45:03.326986', '2023-11-04 16:45:03.326986', 'bullhorn', '消息中心', 7, 0, 0, '/messageCenter', 'system/messageCenter/index', 'messageCenter', 1, 0, 0, 1, NULL, 1);
INSERT INTO `dvadmin_system_menu` VALUES (8, NULL, NULL, NULL, '2023-11-04 16:45:03.351482', '2023-11-04 16:45:03.351482', 'compass', '接口白名单', 8, 0, 0, '/apiWhiteList', 'system/whiteList/index', 'whiteList', 1, 0, 0, 1, NULL, 1);
INSERT INTO `dvadmin_system_menu` VALUES (9, NULL, NULL, NULL, '2023-11-04 16:45:03.375527', '2023-11-04 16:45:03.375527', 'cogs', '常规配置', 9, 0, 1, '', '', '', 1, 0, 0, 1, NULL, 1);
INSERT INTO `dvadmin_system_menu` VALUES (10, NULL, NULL, NULL, '2023-11-04 16:45:03.380534', '2023-11-04 16:45:03.380534', 'desktop', '系统配置', 0, 0, 0, '/config', 'system/config/index', 'config', 1, 0, 0, 1, NULL, 9);
INSERT INTO `dvadmin_system_menu` VALUES (11, NULL, NULL, NULL, '2023-11-04 16:45:03.405654', '2023-11-04 16:45:03.405654', 'qr', '字典管理', 1, 0, 0, '/dictionary', 'system/dictionary/index', 'dictionary', 1, 0, 0, 1, NULL, 9);
INSERT INTO `dvadmin_system_menu` VALUES (12, NULL, NULL, NULL, '2023-11-04 16:45:03.430871', '2023-11-04 16:45:03.430871', 'map', '地区管理', 2, 0, 0, '/areas', 'system/areas/index', 'areas', 1, 0, 0, 1, NULL, 9);
INSERT INTO `dvadmin_system_menu` VALUES (13, NULL, NULL, NULL, '2023-11-04 16:45:03.457805', '2023-11-04 16:45:03.457805', 'file-text-o', '附件管理', 3, 0, 0, '/file', 'system/fileList/index', 'file', 1, 0, 0, 1, NULL, 9);
INSERT INTO `dvadmin_system_menu` VALUES (14, NULL, NULL, NULL, '2023-11-04 16:45:03.478955', '2023-11-04 16:45:03.478955', 'qr', '日志管理', 10, 0, 1, '', '', '', 1, 0, 0, 1, NULL, 1);
INSERT INTO `dvadmin_system_menu` VALUES (15, NULL, NULL, NULL, '2023-11-04 16:45:03.484069', '2023-11-04 16:45:03.484069', 'file-text', '登录日志', 1, 0, 0, '/loginLog', 'system/log/loginLog/index', 'loginLog', 1, 0, 0, 1, NULL, 14);
INSERT INTO `dvadmin_system_menu` VALUES (16, NULL, NULL, NULL, '2023-11-04 16:45:03.497577', '2023-11-04 16:45:03.497577', 'file-code-o', '操作日志', 2, 0, 0, '/operationLog', 'system/log/operationLog/index', 'operationLog', 1, 0, 0, 1, NULL, 14);
INSERT INTO `dvadmin_system_menu` VALUES (17, NULL, NULL, NULL, '2023-11-04 16:45:03.511324', '2023-11-04 16:45:03.511324', 'bug', '前端错误日志', 4, 0, 0, '/frontendLog', 'system/log/frontendLog/index', 'frontendLog', 1, 0, 0, 1, NULL, 14);
INSERT INTO `dvadmin_system_menu` VALUES (19, '', '1', '1', '2023-11-04 21:57:08.069135', '2023-11-04 16:53:13.196765', 'folder', '查询二维码', 3, 0, 0, '/get', 'dashboard/QRCode/get/index', 'get', 1, 0, 0, 1, 1, NULL);
INSERT INTO `dvadmin_system_menu` VALUES (20, NULL, '1', '1', '2023-11-04 16:54:11.143573', '2023-11-04 16:54:11.143573', '', '生成二维码', 1, 0, 0, '/add', 'dashboard/QRCode/add/index', 'add', 1, 0, 0, 1, 1, NULL);
INSERT INTO `dvadmin_system_menu` VALUES (21, '', '1', '1', '2023-11-04 16:58:56.342908', '2023-11-04 16:54:48.358594', '', '识别二维码', 2, 0, 0, '/identify', 'dashboard/QRCode/identify/index', 'identify', 1, 0, 0, 1, 1, NULL);
INSERT INTO `dvadmin_system_menu` VALUES (22, '', '1', '1', '2023-11-04 17:21:30.097133', '2023-11-04 16:55:22.828225', 'address-qr', '用户管理', 5, 0, 0, '/user', 'system/user/index', 'user', 1, 0, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for dvadmin_system_menu_button
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_menu_button`;
CREATE TABLE `dvadmin_system_menu_button`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `api` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `method` int NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `menu_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_system_menu_button_creator_id_3df058f7`(`creator_id` ASC) USING BTREE,
  INDEX `dvadmin_system_menu_button_menu_id_f6aafcd8`(`menu_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_menu_button
-- ----------------------------
INSERT INTO `dvadmin_system_menu_button` VALUES (1, NULL, NULL, NULL, '2023-11-04 16:45:03.182611', '2023-11-04 16:45:03.182611', '查询', 'Search', '/api/system/menu/', 0, NULL, 2);
INSERT INTO `dvadmin_system_menu_button` VALUES (2, NULL, NULL, NULL, '2023-11-04 16:45:03.186696', '2023-11-04 16:45:03.186696', '详情', 'Retrieve', '/api/system/menu/{id}/', 0, NULL, 2);
INSERT INTO `dvadmin_system_menu_button` VALUES (3, NULL, NULL, NULL, '2023-11-04 16:45:03.190768', '2023-11-04 16:45:03.191909', '新增', 'Create', '/api/system/menu/', 1, NULL, 2);
INSERT INTO `dvadmin_system_menu_button` VALUES (4, NULL, NULL, NULL, '2023-11-04 16:45:03.195964', '2023-11-04 16:45:03.195964', '编辑', 'Update', '/api/system/menu/{id}/', 2, NULL, 2);
INSERT INTO `dvadmin_system_menu_button` VALUES (5, NULL, NULL, NULL, '2023-11-04 16:45:03.199956', '2023-11-04 16:45:03.199956', '删除', 'Delete', '/api/system/menu/{id}/', 3, NULL, 2);
INSERT INTO `dvadmin_system_menu_button` VALUES (6, NULL, NULL, NULL, '2023-11-04 16:45:03.210616', '2023-11-04 16:45:03.210616', '查询', 'Search', '/api/system/menu_button/', 0, NULL, 3);
INSERT INTO `dvadmin_system_menu_button` VALUES (7, NULL, NULL, NULL, '2023-11-04 16:45:03.215162', '2023-11-04 16:45:03.215162', '新增', 'Create', '/api/system/menu_button/', 1, NULL, 3);
INSERT INTO `dvadmin_system_menu_button` VALUES (8, NULL, NULL, NULL, '2023-11-04 16:45:03.219047', '2023-11-04 16:45:03.219047', '编辑', 'Update', '/api/system/menu_button/{id}/', 2, NULL, 3);
INSERT INTO `dvadmin_system_menu_button` VALUES (9, NULL, NULL, NULL, '2023-11-04 16:45:03.223045', '2023-11-04 16:45:03.223045', '删除', 'Delete', '/api/system/menu_button/{id}/', 3, NULL, 3);
INSERT INTO `dvadmin_system_menu_button` VALUES (10, NULL, NULL, NULL, '2023-11-04 16:45:03.232317', '2023-11-04 16:45:03.232317', '查询', 'Search', '/api/system/dept/', 0, NULL, 4);
INSERT INTO `dvadmin_system_menu_button` VALUES (11, NULL, NULL, NULL, '2023-11-04 16:45:03.236515', '2023-11-04 16:45:03.236515', '详情', 'Retrieve', '/api/system/dept/{id}/', 0, NULL, 4);
INSERT INTO `dvadmin_system_menu_button` VALUES (12, NULL, NULL, NULL, '2023-11-04 16:45:03.240515', '2023-11-04 16:45:03.240515', '新增', 'Create', '/api/system/dept/', 1, NULL, 4);
INSERT INTO `dvadmin_system_menu_button` VALUES (13, NULL, NULL, NULL, '2023-11-04 16:45:03.244550', '2023-11-04 16:45:03.244550', '编辑', 'Update', '/api/system/dept/{id}/', 2, NULL, 4);
INSERT INTO `dvadmin_system_menu_button` VALUES (14, NULL, NULL, NULL, '2023-11-04 16:45:03.248782', '2023-11-04 16:45:03.248782', '删除', 'Delete', '/api/system/dept/{id}/', 3, NULL, 4);
INSERT INTO `dvadmin_system_menu_button` VALUES (15, NULL, NULL, NULL, '2023-11-04 16:45:03.257184', '2023-11-04 16:45:03.257184', '查询', 'Search', '/api/system/role/', 0, NULL, 5);
INSERT INTO `dvadmin_system_menu_button` VALUES (16, NULL, NULL, NULL, '2023-11-04 16:45:03.261468', '2023-11-04 16:45:03.261468', '详情', 'Retrieve', '/api/system/role/{id}/', 0, NULL, 5);
INSERT INTO `dvadmin_system_menu_button` VALUES (17, NULL, NULL, NULL, '2023-11-04 16:45:03.266446', '2023-11-04 16:45:03.266446', '新增', 'Create', '/api/system/role/', 1, NULL, 5);
INSERT INTO `dvadmin_system_menu_button` VALUES (18, NULL, NULL, NULL, '2023-11-04 16:45:03.270511', '2023-11-04 16:45:03.270511', '编辑', 'Update', '/api/system/role/{id}/', 2, NULL, 5);
INSERT INTO `dvadmin_system_menu_button` VALUES (19, NULL, NULL, NULL, '2023-11-04 16:45:03.274512', '2023-11-04 16:45:03.274512', '保存', 'Save', '/api/system/role/{id}/', 2, NULL, 5);
INSERT INTO `dvadmin_system_menu_button` VALUES (20, NULL, NULL, NULL, '2023-11-04 16:45:03.278008', '2023-11-04 16:45:03.278008', '删除', 'Delete', '/api/system/role/{id}/', 3, NULL, 5);
INSERT INTO `dvadmin_system_menu_button` VALUES (21, NULL, NULL, NULL, '2023-11-04 16:45:03.287215', '2023-11-04 16:45:03.287215', '查询', 'Search', '/api/system/user/', 0, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (22, NULL, NULL, NULL, '2023-11-04 16:45:03.291215', '2023-11-04 16:45:03.291215', '详情', 'Retrieve', '/api/system/user/{id}/', 0, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (23, NULL, NULL, NULL, '2023-11-04 16:45:03.295691', '2023-11-04 16:45:03.295691', '新增', 'Create', '/api/system/user/', 1, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (24, NULL, NULL, NULL, '2023-11-04 16:45:03.300361', '2023-11-04 16:45:03.300361', '导出', 'Export', '/api/system/user/export/', 1, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (25, NULL, NULL, NULL, '2023-11-04 16:45:03.304358', '2023-11-04 16:45:03.304358', '导入', 'Import', '/api/system/user/import/', 1, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (26, NULL, NULL, NULL, '2023-11-04 16:45:03.309570', '2023-11-04 16:45:03.309570', '编辑', 'Update', '/api/system/user/{id}/', 2, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (27, NULL, NULL, NULL, '2023-11-04 16:45:03.313095', '2023-11-04 16:45:03.313095', '重设密码', 'ResetPassword', '/api/system/user/{id}/reset_password/', 2, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (28, NULL, NULL, NULL, '2023-11-04 16:45:03.317671', '2023-11-04 16:45:03.317671', '重置密码', 'DefaultPassword', '/api/system/user/{id}/reset_to_default_password/', 2, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (29, NULL, NULL, NULL, '2023-11-04 16:45:03.321678', '2023-11-04 16:45:03.321678', '删除', 'Delete', '/api/system/user/{id}/', 3, NULL, 6);
INSERT INTO `dvadmin_system_menu_button` VALUES (30, NULL, NULL, NULL, '2023-11-04 16:45:03.331389', '2023-11-04 16:45:03.331389', '查询', 'Search', '/api/system/message_center/', 0, NULL, 7);
INSERT INTO `dvadmin_system_menu_button` VALUES (31, NULL, NULL, NULL, '2023-11-04 16:45:03.335627', '2023-11-04 16:45:03.335627', '详情', 'Retrieve', '/api/system/message_center/{id}/', 0, NULL, 7);
INSERT INTO `dvadmin_system_menu_button` VALUES (32, NULL, NULL, NULL, '2023-11-04 16:45:03.339606', '2023-11-04 16:45:03.339606', '新增', 'Create', '/api/system/message_center/', 1, NULL, 7);
INSERT INTO `dvadmin_system_menu_button` VALUES (33, NULL, NULL, NULL, '2023-11-04 16:45:03.343606', '2023-11-04 16:45:03.343606', '编辑', 'Update', '/api/system/message_center/{id}/', 2, NULL, 7);
INSERT INTO `dvadmin_system_menu_button` VALUES (34, NULL, NULL, NULL, '2023-11-04 16:45:03.347029', '2023-11-04 16:45:03.347029', '删除', 'Delete', '/api/system/menu/{id}/', 3, NULL, 7);
INSERT INTO `dvadmin_system_menu_button` VALUES (35, NULL, NULL, NULL, '2023-11-04 16:45:03.355368', '2023-11-04 16:45:03.355368', '查询', 'Search', '/api/system/api_white_list/', 0, NULL, 8);
INSERT INTO `dvadmin_system_menu_button` VALUES (36, NULL, NULL, NULL, '2023-11-04 16:45:03.359582', '2023-11-04 16:45:03.359582', '详情', 'Retrieve', '/api/system/api_white_list/{id}/', 0, NULL, 8);
INSERT INTO `dvadmin_system_menu_button` VALUES (37, NULL, NULL, NULL, '2023-11-04 16:45:03.362973', '2023-11-04 16:45:03.362973', '新增', 'Create', '/api/system/api_white_list/', 1, NULL, 8);
INSERT INTO `dvadmin_system_menu_button` VALUES (38, NULL, NULL, NULL, '2023-11-04 16:45:03.366447', '2023-11-04 16:45:03.366447', '编辑', 'Update', '/api/system/api_white_list/{id}/', 2, NULL, 8);
INSERT INTO `dvadmin_system_menu_button` VALUES (39, NULL, NULL, NULL, '2023-11-04 16:45:03.370527', '2023-11-04 16:45:03.371530', '删除', 'Delete', '/api/system/api_white_list/{id}/', 3, NULL, 8);
INSERT INTO `dvadmin_system_menu_button` VALUES (40, NULL, NULL, NULL, '2023-11-04 16:45:03.384674', '2023-11-04 16:45:03.384674', '查询', 'Search', '/api/system/system_config/', 0, NULL, 10);
INSERT INTO `dvadmin_system_menu_button` VALUES (41, NULL, NULL, NULL, '2023-11-04 16:45:03.389123', '2023-11-04 16:45:03.389123', '详情', 'Retrieve', '/api/system/system_config/{id}/', 0, NULL, 10);
INSERT INTO `dvadmin_system_menu_button` VALUES (42, NULL, NULL, NULL, '2023-11-04 16:45:03.392648', '2023-11-04 16:45:03.392648', '新增', 'Create', '/api/system/system_config/', 1, NULL, 10);
INSERT INTO `dvadmin_system_menu_button` VALUES (43, NULL, NULL, NULL, '2023-11-04 16:45:03.397654', '2023-11-04 16:45:03.397654', '编辑', 'Update', '/api/system/system_config/{id}/', 2, NULL, 10);
INSERT INTO `dvadmin_system_menu_button` VALUES (44, NULL, NULL, NULL, '2023-11-04 16:45:03.401653', '2023-11-04 16:45:03.401653', '删除', 'Delete', '/api/system/system_config/{id}/', 3, NULL, 10);
INSERT INTO `dvadmin_system_menu_button` VALUES (45, NULL, NULL, NULL, '2023-11-04 16:45:03.409676', '2023-11-04 16:45:03.409676', '查询', 'Search', '/api/system/dictionary/', 0, NULL, 11);
INSERT INTO `dvadmin_system_menu_button` VALUES (46, NULL, NULL, NULL, '2023-11-04 16:45:03.413953', '2023-11-04 16:45:03.413953', '详情', 'Retrieve', '/api/system/dictionary/{id}/', 0, NULL, 11);
INSERT INTO `dvadmin_system_menu_button` VALUES (47, NULL, NULL, NULL, '2023-11-04 16:45:03.417950', '2023-11-04 16:45:03.417950', '新增', 'Create', '/api/system/dictionary/', 1, NULL, 11);
INSERT INTO `dvadmin_system_menu_button` VALUES (48, NULL, NULL, NULL, '2023-11-04 16:45:03.422950', '2023-11-04 16:45:03.422950', '编辑', 'Update', '/api/system/dictionary/{id}/', 2, NULL, 11);
INSERT INTO `dvadmin_system_menu_button` VALUES (49, NULL, NULL, NULL, '2023-11-04 16:45:03.426951', '2023-11-04 16:45:03.426951', '删除', 'Delete', '/api/system/dictionary/{id}/', 3, NULL, 11);
INSERT INTO `dvadmin_system_menu_button` VALUES (50, NULL, NULL, NULL, '2023-11-04 16:45:03.435513', '2023-11-04 16:45:03.435513', '查询', 'Search', '/api/system/area/', 0, NULL, 12);
INSERT INTO `dvadmin_system_menu_button` VALUES (51, NULL, NULL, NULL, '2023-11-04 16:45:03.440267', '2023-11-04 16:45:03.440267', '详情', 'Retrieve', '/api/system/area/{id}/', 0, NULL, 12);
INSERT INTO `dvadmin_system_menu_button` VALUES (52, NULL, NULL, NULL, '2023-11-04 16:45:03.444637', '2023-11-04 16:45:03.444637', '新增', 'Create', '/api/system/area/', 1, NULL, 12);
INSERT INTO `dvadmin_system_menu_button` VALUES (53, NULL, NULL, NULL, '2023-11-04 16:45:03.448471', '2023-11-04 16:45:03.448471', '编辑', 'Update', '/api/system/area/{id}/', 2, NULL, 12);
INSERT INTO `dvadmin_system_menu_button` VALUES (54, NULL, NULL, NULL, '2023-11-04 16:45:03.452803', '2023-11-04 16:45:03.452803', '删除', 'Delete', '/api/system/area/{id}/', 3, NULL, 12);
INSERT INTO `dvadmin_system_menu_button` VALUES (55, NULL, NULL, NULL, '2023-11-04 16:45:03.461801', '2023-11-04 16:45:03.461801', '详情', 'Retrieve', '/api/system/file/{id}/', 0, NULL, 13);
INSERT INTO `dvadmin_system_menu_button` VALUES (56, NULL, NULL, NULL, '2023-11-04 16:45:03.466178', '2023-11-04 16:45:03.466178', '查询', 'Search', '/api/system/file/', 0, NULL, 13);
INSERT INTO `dvadmin_system_menu_button` VALUES (57, NULL, NULL, NULL, '2023-11-04 16:45:03.470178', '2023-11-04 16:45:03.470178', '编辑', 'Update', '/api/system/file/{id}/', 1, NULL, 13);
INSERT INTO `dvadmin_system_menu_button` VALUES (58, NULL, NULL, NULL, '2023-11-04 16:45:03.474407', '2023-11-04 16:45:03.474407', '删除', 'Delete', '/api/system/file/{id}/', 3, NULL, 13);
INSERT INTO `dvadmin_system_menu_button` VALUES (59, NULL, NULL, NULL, '2023-11-04 16:45:03.488067', '2023-11-04 16:45:03.488067', '查询', 'Search', '/api/system/login_log/', 0, NULL, 15);
INSERT INTO `dvadmin_system_menu_button` VALUES (60, NULL, NULL, NULL, '2023-11-04 16:45:03.492571', '2023-11-04 16:45:03.492571', '详情', 'Retrieve', '/api/system/login_log/{id}/', 0, NULL, 15);
INSERT INTO `dvadmin_system_menu_button` VALUES (61, NULL, NULL, NULL, '2023-11-04 16:45:03.501578', '2023-11-04 16:45:03.501578', '详情', 'Retrieve', '/api/system/operation_log/{id}/', 0, NULL, 16);
INSERT INTO `dvadmin_system_menu_button` VALUES (62, NULL, NULL, NULL, '2023-11-04 16:45:03.506371', '2023-11-04 16:45:03.506371', '查询', 'Search', '/api/system/operation_log/', 0, NULL, 16);
INSERT INTO `dvadmin_system_menu_button` VALUES (63, NULL, '1', '1', '2023-11-04 17:21:56.140486', '2023-11-04 17:09:35.446366', '新增', 'Create', '/api/system/user/', 1, 1, 22);
INSERT INTO `dvadmin_system_menu_button` VALUES (64, NULL, '1', '1', '2023-11-04 17:10:34.739575', '2023-11-04 17:10:34.739575', '查询', 'Search', '/api/system/user/', 0, 1, 22);
INSERT INTO `dvadmin_system_menu_button` VALUES (65, NULL, '1', '1', '2023-11-04 17:22:16.596177', '2023-11-04 17:22:16.596177', '删除', 'Delete', '/api/system/user/', 3, 1, 22);
INSERT INTO `dvadmin_system_menu_button` VALUES (66, NULL, '1', '1', '2023-11-04 21:57:27.590276', '2023-11-04 21:57:27.590276', '查询', 'Search', '/api/qr/', 0, 1, 19);
INSERT INTO `dvadmin_system_menu_button` VALUES (67, NULL, '1', '1', '2023-11-04 21:57:38.399702', '2023-11-04 21:57:38.399702', '删除', 'Delete', '/api/qr/', 3, 1, 19);
INSERT INTO `dvadmin_system_menu_button` VALUES (68, NULL, '1', '1', '2023-11-04 21:58:14.313722', '2023-11-04 21:58:14.313722', '详情', 'Retrieve', '/api/qr/', 0, 1, 19);

-- ----------------------------
-- Table structure for dvadmin_system_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_operation_log`;
CREATE TABLE `dvadmin_system_operation_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `request_modular` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `request_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `request_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_browser` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `response_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_os` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `json_result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_system_operation_log_creator_id_0914479c`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_operation_log
-- ----------------------------
INSERT INTO `dvadmin_system_operation_log` VALUES (1, NULL, NULL, '1', '2023-11-04 16:50:12.064756', '2023-11-04 16:50:12.060754', '登录模块', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3MTg2NiwiaWF0IjoxNjk5MDg1NDY2LCJqdGkiOiI4NjI5YjNiYjFiYTA0YzFlODU2YWNlMDhkYWJiOWMwMSIsInVzZXJfaWQiOjF9.dsHb69AkHYyi8CyPqFUSoXfnwjZnQ1D-NvL5Hy1UZhQ\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (2, NULL, NULL, '1', '2023-11-04 16:50:32.650387', '2023-11-04 16:50:32.537921', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'11\', \'captchaKey\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (3, NULL, NULL, '1', '2023-11-04 16:53:13.205220', '2023-11-04 16:53:13.189703', '菜单表', '/api/system/menu/', '{\'name\': \'生成二维码\', \'icon\': \'\', \'sort\': 1, \'is_catalog\': False, \'is_link\': False, \'web_path\': \'/get\', \'component\': \'dashboard/QRCode/get/index\', \'component_name\': \'get\', \'cache\': False, \'visible\': True, \'frame_out\': False, \'status\': True}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (4, NULL, NULL, '1', '2023-11-04 16:53:52.041197', '2023-11-04 16:53:52.015583', '菜单表', '/api/system/menu/19/', '{\'id\': 19, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:53:13\', \'update_datetime\': \'2023-11-04 16:53:13\', \'menuPermission\': None, \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'\', \'name\': \'查询二维码\', \'sort\': 1, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/get\', \'component\': \'dashboard/QRCode/get/index\', \'component_name\': \'get\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (5, NULL, NULL, '1', '2023-11-04 16:54:11.148575', '2023-11-04 16:54:11.127339', '菜单表', '/api/system/menu/', '{\'name\': \'生成二维码\', \'icon\': \'\', \'sort\': 1, \'is_catalog\': False, \'is_link\': False, \'web_path\': \'/add\', \'component\': \'dashboard/QRCode/add/index\', \'component_name\': \'add\', \'cache\': False, \'visible\': True, \'frame_out\': False, \'status\': True}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (6, NULL, NULL, '1', '2023-11-04 16:54:48.364594', '2023-11-04 16:54:48.343854', '菜单表', '/api/system/menu/', '{\'name\': \'识别二维码\', \'icon\': \'\', \'sort\': 1, \'is_catalog\': False, \'is_link\': False, \'web_path\': \'/identify\', \'component\': \'dashboard/QRCode/identify/index\', \'component_name\': \'identify\', \'cache\': False, \'visible\': True, \'frame_out\': False, \'status\': True}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (7, NULL, NULL, '1', '2023-11-04 16:55:22.834229', '2023-11-04 16:55:22.812770', '菜单表', '/api/system/menu/', '{\'name\': \'用户管理\', \'icon\': \'\', \'sort\': 1, \'is_catalog\': False, \'is_link\': False, \'web_path\': \'/user\', \'component\': \'system/user/index\', \'component_name\': \'user\', \'cache\': False, \'visible\': True, \'frame_out\': False, \'status\': True}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (8, NULL, NULL, '1', '2023-11-04 16:55:47.101637', '2023-11-04 16:55:47.078401', '菜单表', '/api/system/menu/1/', '{\'id\': 1, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'menuPermission\': None, \'hasChild\': True, \'description\': \'\', \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'cog\', \'name\': \'系统管理\', \'sort\': 9, \'is_link\': False, \'is_catalog\': True, \'web_path\': \'\', \'component\': \'\', \'component_name\': \'\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': None, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (9, NULL, NULL, '1', '2023-11-04 16:56:09.851884', '2023-11-04 16:56:09.819375', '用户表', '/api/system/user/2/', '{\'id\': 2, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'role_info\': [], \'last_login\': None, \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2023-11-04 16:45:03\', \'description\': \'\', \'modifier\': None, \'dept_belong_id\': None, \'username\': \'admin\', \'employee_no\': None, \'email\': \'dvadmin@django-vue-admin.com\', \'mobile\': \'18888888888\', \'avatar\': \'\', \'name\': \'管理员\', \'gender\': 1, \'user_type\': 0, \'last_token\': None, \'creator\': None, \'dept\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': [1]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'手机号必须唯一\'}', 0, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (10, NULL, NULL, '1', '2023-11-04 16:56:10.668854', '2023-11-04 16:56:10.654948', '用户表', '/api/system/user/2/', '{\'id\': 2, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'role_info\': [], \'last_login\': None, \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': True, \'is_active\': True, \'date_joined\': \'2023-11-04 16:45:03\', \'description\': \'\', \'modifier\': None, \'dept_belong_id\': None, \'username\': \'admin\', \'employee_no\': None, \'email\': \'dvadmin@django-vue-admin.com\', \'mobile\': \'18888888888\', \'avatar\': \'\', \'name\': \'管理员\', \'gender\': 1, \'user_type\': 0, \'last_token\': None, \'creator\': None, \'dept\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': [1]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'手机号必须唯一\'}', 0, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (11, NULL, NULL, '1', '2023-11-04 16:56:40.610635', '2023-11-04 16:56:40.478956', '用户表', '/api/system/user/', '{\'username\': \'admin123\', \'password\': \'********************************\', \'name\': \'admin123\', \'role\': [1], \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (12, NULL, NULL, '1', '2023-11-04 16:56:48.277841', '2023-11-04 16:56:48.229200', '用户表', '/api/system/user/4/', '{\'soft_delete\': True}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (13, NULL, NULL, NULL, '2023-11-04 16:57:01.613728', '2023-11-04 16:57:01.603794', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE2Mjg2NSwiaWF0IjoxNjk5MDc2NDY1LCJqdGkiOiJlNjgzZjI3YTI0ODc0MTVmOTAyOTFiMDQzYjgxNmMyYSIsInVzZXJfaWQiOjR9.ONY1BJWnRs9xlflq2Zb0M2OoQqzOyw4exwkP7JZxONE\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (14, NULL, NULL, NULL, '2023-11-04 16:57:01.654141', '2023-11-04 16:57:01.646139', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE2Mjg2NSwiaWF0IjoxNjk5MDc2NDY1LCJqdGkiOiJlNjgzZjI3YTI0ODc0MTVmOTAyOTFiMDQzYjgxNmMyYSIsInVzZXJfaWQiOjR9.ONY1BJWnRs9xlflq2Zb0M2OoQqzOyw4exwkP7JZxONE\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (15, NULL, NULL, NULL, '2023-11-04 16:57:01.693022', '2023-11-04 16:57:01.685899', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE2Mjg2NSwiaWF0IjoxNjk5MDc2NDY1LCJqdGkiOiJlNjgzZjI3YTI0ODc0MTVmOTAyOTFiMDQzYjgxNmMyYSIsInVzZXJfaWQiOjR9.ONY1BJWnRs9xlflq2Zb0M2OoQqzOyw4exwkP7JZxONE\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (16, NULL, NULL, NULL, '2023-11-04 16:57:01.732742', '2023-11-04 16:57:01.725768', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE2Mjg2NSwiaWF0IjoxNjk5MDc2NDY1LCJqdGkiOiJlNjgzZjI3YTI0ODc0MTVmOTAyOTFiMDQzYjgxNmMyYSIsInVzZXJfaWQiOjR9.ONY1BJWnRs9xlflq2Zb0M2OoQqzOyw4exwkP7JZxONE\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (17, NULL, NULL, '3', '2023-11-04 16:57:21.594986', '2023-11-04 16:57:21.449995', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'10\', \'captchaKey\': 2}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (18, NULL, NULL, '1', '2023-11-04 16:57:42.985443', '2023-11-04 16:57:42.937403', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [19, 20, 21, 22], \'permission\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (19, NULL, NULL, '1', '2023-11-04 16:58:05.136081', '2023-11-04 16:58:05.090394', '角色表', '/api/system/role/2/', '{\'id\': 2, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'用户\', \'key\': \'public\', \'sort\': 2, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [19, 20, 21, 22], \'permission\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (20, NULL, NULL, '1', '2023-11-04 16:58:28.628259', '2023-11-04 16:58:28.592169', '角色表', '/api/system/role/2/', '{\'id\': 2, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'name\': \'用户\', \'key\': \'public\', \'sort\': 2, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [19, 20, 21], \'permission\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (21, NULL, NULL, '1', '2023-11-04 16:58:56.348348', '2023-11-04 16:58:56.332897', '菜单表', '/api/system/menu/21/', '{\'id\': 21, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:54:48\', \'update_datetime\': \'2023-11-04 16:54:48\', \'menuPermission\': None, \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'\', \'name\': \'识别二维码\', \'sort\': 2, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/identify\', \'component\': \'dashboard/QRCode/identify/index\', \'component_name\': \'identify\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (22, NULL, NULL, '1', '2023-11-04 16:59:00.391789', '2023-11-04 16:59:00.376301', '菜单表', '/api/system/menu/19/', '{\'id\': 19, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:53:13\', \'update_datetime\': \'2023-11-04 16:53:52\', \'menuPermission\': None, \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'\', \'name\': \'查询二维码\', \'sort\': 3, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/get\', \'component\': \'dashboard/QRCode/get/index\', \'component_name\': \'get\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (23, NULL, NULL, '1', '2023-11-04 16:59:12.931349', '2023-11-04 16:59:12.905988', '菜单表', '/api/system/menu/22/', '{\'id\': 22, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:55:22\', \'update_datetime\': \'2023-11-04 16:55:22\', \'menuPermission\': None, \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'\', \'name\': \'用户管理\', \'sort\': 5, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/user\', \'component\': \'system/user/index\', \'component_name\': \'user\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (24, NULL, NULL, '1', '2023-11-04 16:59:36.295289', '2023-11-04 16:59:36.271788', '菜单表', '/api/system/menu/18/', '{\'id\': 18}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (25, NULL, NULL, '1', '2023-11-04 17:00:08.515532', '2023-11-04 17:00:08.476589', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 2, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启验证码\', \'key\': \'captcha_state\', \'value\': False, \'sort\': 1, \'status\': False, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 4, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启单点登录\', \'key\': \'single_login\', \'value\': False, \'sort\': 1, \'status\': False, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 3, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'创建用户默认密码\', \'key\': \'default_password\', \'value\': \'123\', \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入默认密码\', \'setting\': None, \'creator\': None, \'parent\': 1}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (26, NULL, NULL, '1', '2023-11-04 17:00:38.285160', '2023-11-04 17:00:38.246900', '用户表', '/api/system/user/3/', '{\'soft_delete\': True}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (27, NULL, NULL, '1', '2023-11-04 17:00:57.986665', '2023-11-04 17:00:57.854048', '用户表', '/api/system/user/', '{\'username\': \'test\', \'password\': \'********************************\', \'name\': \'测试1\', \'role\': [2], \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (28, NULL, NULL, '1', '2023-11-04 17:01:10.609661', '2023-11-04 17:01:10.577112', '用户表', '/api/system/user/2/', '{\'soft_delete\': True}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (29, NULL, NULL, '1', '2023-11-04 17:01:24.530128', '2023-11-04 17:01:24.398681', '用户表', '/api/system/user/', '{\'username\': \'admin\', \'password\': \'********************************\', \'name\': \'admin\', \'role\': [1], \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (30, NULL, NULL, NULL, '2023-11-04 17:01:28.827760', '2023-11-04 17:01:28.819018', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NDY0MSwiaWF0IjoxNjk5MDg4MjQxLCJqdGkiOiI5MmUyMGM3MWRkNmM0MDY5YWNiMTA4YzY5NjQ4OWExZiIsInVzZXJfaWQiOjN9.PbeKrSFYzj_1GSUHAwsLykNTXYiIQ1Li_l6gYSfFMtM\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (31, NULL, NULL, NULL, '2023-11-04 17:01:28.870298', '2023-11-04 17:01:28.862892', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NDY0MSwiaWF0IjoxNjk5MDg4MjQxLCJqdGkiOiI5MmUyMGM3MWRkNmM0MDY5YWNiMTA4YzY5NjQ4OWExZiIsInVzZXJfaWQiOjN9.PbeKrSFYzj_1GSUHAwsLykNTXYiIQ1Li_l6gYSfFMtM\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (32, NULL, NULL, NULL, '2023-11-04 17:01:28.918425', '2023-11-04 17:01:28.905529', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NDY0MSwiaWF0IjoxNjk5MDg4MjQxLCJqdGkiOiI5MmUyMGM3MWRkNmM0MDY5YWNiMTA4YzY5NjQ4OWExZiIsInVzZXJfaWQiOjN9.PbeKrSFYzj_1GSUHAwsLykNTXYiIQ1Li_l6gYSfFMtM\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (33, NULL, NULL, NULL, '2023-11-04 17:01:28.969200', '2023-11-04 17:01:28.958740', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NDY0MSwiaWF0IjoxNjk5MDg4MjQxLCJqdGkiOiI5MmUyMGM3MWRkNmM0MDY5YWNiMTA4YzY5NjQ4OWExZiIsInVzZXJfaWQiOjN9.PbeKrSFYzj_1GSUHAwsLykNTXYiIQ1Li_l6gYSfFMtM\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (34, NULL, NULL, '1', '2023-11-04 17:02:11.629709', '2023-11-04 17:02:11.599049', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 2, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:00:08\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启验证码\', \'key\': \'captcha_state\', \'value\': False, \'sort\': 1, \'status\': False, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1, \'new_key\': \'captcha_state\', \'edit\': True}, {\'id\': 4, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:00:08\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启单点登录\', \'key\': \'single_login\', \'value\': False, \'sort\': 1, \'status\': False, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1, \'new_key\': \'single_login\', \'edit\': True}, {\'id\': 3, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:00:08\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'创建用户默认密码\', \'key\': \'default_password\', \'value\': \'123\', \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入默认密码\', \'setting\': None, \'creator\': None, \'parent\': 1}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (35, NULL, NULL, '1', '2023-11-04 17:04:07.695086', '2023-11-04 17:03:26.082009', '系统配置表', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NDIzMiwiaWF0IjoxNjk5MDg3ODMyLCJqdGkiOiIzOGVlMjFlMjNjMDc0ZmE3ODQ0NDk1NDhkMTc2MDE4ZiIsInVzZXJfaWQiOjF9.8wdieh8tHru31PvUKeevfrAGqsuZ0u0-aOpC3aH8ShI\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (36, NULL, NULL, NULL, '2023-11-04 17:04:17.956976', '2023-11-04 17:04:17.821400', '登录模块', '/api/login/', '{\'username\': \'root\', \'password\': \'********************************\', \'captcha\': \'12\', \'captchaKey\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (37, NULL, NULL, '1', '2023-11-04 17:04:52.405053', '2023-11-04 17:04:52.257274', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'12\', \'captchaKey\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (38, NULL, NULL, '1', '2023-11-04 17:06:11.813008', '2023-11-04 17:06:11.733328', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 6, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'网站名称\', \'key\': \'site_name\', \'value\': \'二维码管理系统\', \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入网站名称\', \'setting\': None, \'creator\': None, \'parent\': 5}, {\'id\': 7, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'chinldern\': [], \'form_item_type_label\': \'img\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'登录网站logo\', \'key\': \'site_logo\', \'value\': None, \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 7, \'rule\': [], \'placeholder\': \'请上传网站logo\', \'setting\': None, \'creator\': None, \'parent\': 5}, {\'id\': 8, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'chinldern\': [], \'form_item_type_label\': \'img\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'登录页背景图\', \'key\': \'login_background\', \'value\': None, \'sort\': 3, \'status\': True, \'data_options\': None, \'form_item_type\': 7, \'rule\': [], \'placeholder\': \'请上传登录背景页\', \'setting\': None, \'creator\': None, \'parent\': 5}, {\'id\': 9, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'版权信息\', \'key\': \'copyright\', \'value\': \'QRCode\', \'sort\': 4, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入版权信息\', \'setting\': None, \'creator\': None, \'parent\': 5}, {\'id\': 10, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:04\', \'update_datetime\': \'2023-11-04 16:45:04\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'备案信息\', \'key\': \'keep_record\', \'value\': \'QRCode\', \'sort\': 5, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入备案信息\', \'setting\': None, \'creator\': None, \'parent\': 5}, {\'id\': 11, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:04\', \'update_datetime\': \'2023-11-04 16:45:04\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'帮助链接\', \'key\': \'help_url\', \'value\': \'QRCode\', \'sort\': 6, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': \'\', \'placeholder\': \'请输入帮助信息\', \'setting\': None, \'creator\': None, \'parent\': 5}, {\'id\': 12, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:04\', \'update_datetime\': \'2023-11-04 16:45:04\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'隐私链接\', \'key\': \'privacy_url\', \'value\': \'#\', \'sort\': 7, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [], \'placeholder\': \'请填写隐私链接\', \'setting\': None, \'creator\': None, \'parent\': 5}, {\'id\': 13, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:04\', \'update_datetime\': \'2023-11-04 16:45:04\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'条款链接\', \'key\': \'clause_url\', \'value\': \'#\', \'sort\': 8, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [], \'placeholder\': \'请输入条款链接\', \'setting\': None, \'creator\': None, \'parent\': 5}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (39, NULL, NULL, '1', '2023-11-04 17:07:16.799944', '2023-11-04 17:07:16.766978', '系统配置表', '/api/system/system_config/8/', '{\'id\': 8, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:06:11\', \'chinldern\': [], \'form_item_type_label\': \'img\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'登录页背景图\', \'key\': \'login_background\', \'value\': None, \'sort\': 3, \'status\': True, \'data_options\': None, \'form_item_type\': 7, \'rule\': [], \'placeholder\': \'请上传登录背景页\', \'setting\': None, \'creator\': None, \'parent\': 5, \'new_key\': \'login_background\', \'edit\': True}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (40, NULL, NULL, '1', '2023-11-04 17:07:24.207798', '2023-11-04 17:07:24.175557', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 2, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:03:26\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'title\': \'开启验证码\', \'key\': \'captcha_state\', \'value\': False, \'sort\': 1, \'status\': False, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 4, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:02:11\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启单点登录\', \'key\': \'single_login\', \'value\': False, \'sort\': 1, \'status\': False, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 3, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:02:11\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'创建用户默认密码\', \'key\': \'default_password\', \'value\': \'admin123456\', \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入默认密码\', \'setting\': None, \'creator\': None, \'parent\': 1}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (41, NULL, NULL, '1', '2023-11-04 17:07:38.522136', '2023-11-04 17:07:38.477233', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 2, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:24\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'title\': \'开启验证码\', \'key\': \'captcha_state\', \'value\': True, \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 4, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:24\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启单点登录\', \'key\': \'single_login\', \'value\': False, \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 3, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:24\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'创建用户默认密码\', \'key\': \'default_password\', \'value\': \'admin123456\', \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入默认密码\', \'setting\': None, \'creator\': None, \'parent\': 1}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (42, NULL, NULL, '1', '2023-11-04 17:07:44.976461', '2023-11-04 17:07:44.936766', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 2, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:38\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'title\': \'开启验证码\', \'key\': \'captcha_state\', \'value\': False, \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 4, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:38\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启单点登录\', \'key\': \'single_login\', \'value\': False, \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 3, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:38\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'创建用户默认密码\', \'key\': \'default_password\', \'value\': \'admin123456\', \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入默认密码\', \'setting\': None, \'creator\': None, \'parent\': 1}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (43, NULL, NULL, NULL, '2023-11-04 17:07:48.713555', '2023-11-04 17:07:48.509038', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (44, NULL, NULL, NULL, '2023-11-04 17:07:55.047588', '2023-11-04 17:07:54.776840', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (45, NULL, NULL, NULL, '2023-11-04 17:08:07.591322', '2023-11-04 17:07:58.340290', '登录模块', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NTI3OCwiaWF0IjoxNjk5MDg4ODc4LCJqdGkiOiJjY2RkMGJiZjNkMWQ0YzczODQyMTJkYWNjNDBmYjU4MyIsInVzZXJfaWQiOjV9.MXvO5Zt9hTBZyJ2rPCQUXAfXXECw01tNy7JoPfZZScw\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, 5);
INSERT INTO `dvadmin_system_operation_log` VALUES (46, NULL, NULL, NULL, '2023-11-04 17:08:12.810447', '2023-11-04 17:08:12.665768', '登录模块', '/api/login/', '{\'username\': \'admin\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (47, NULL, NULL, '1', '2023-11-04 17:08:23.865099', '2023-11-04 17:08:23.832531', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 2, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:44\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'title\': \'开启验证码\', \'key\': \'captcha_state\', \'value\': False, \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 4, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:44\', \'chinldern\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启单点登录\', \'key\': \'single_login\', \'value\': False, \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 3, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:07:44\', \'chinldern\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'创建用户默认密码\', \'key\': \'default_password\', \'value\': \'admin123456\', \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入默认密码\', \'setting\': None, \'creator\': None, \'parent\': 1}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (48, NULL, NULL, '1', '2023-11-04 17:08:35.865446', '2023-11-04 17:08:35.741673', '用户表', '/api/system/user/6/reset_password/', '{\'id\': 6, \'newPassword\': \'a66abb5684c45962d887564f08346e8d\', \'newPassword2\': \'a66abb5684c45962d887564f08346e8d\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (49, NULL, NULL, '1', '2023-11-04 17:08:39.988235', '2023-11-04 17:08:39.867319', '用户表', '/api/system/user/5/reset_password/', '{\'id\': 5, \'newPassword\': \'a66abb5684c45962d887564f08346e8d\', \'newPassword2\': \'a66abb5684c45962d887564f08346e8d\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (50, NULL, NULL, '1', '2023-11-04 17:09:35.452367', '2023-11-04 17:09:35.429082', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'新增\', \'value\': \'Create\', \'method\': 1, \'api\': \'/api/system/user/user_info/\', \'menu\': 22}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (51, NULL, NULL, '1', '2023-11-04 17:09:47.828899', '2023-11-04 17:09:47.794601', '菜单权限表', '/api/system/menu_button/63/', '{\'id\': 63, \'name\': \'新增\', \'value\': \'Create\', \'api\': \'/api/system/user/\', \'method\': 1, \'menu\': 22, \'_X_ROW_KEY\': \'row_118\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (52, NULL, NULL, '1', '2023-11-04 17:09:56.733664', '2023-11-04 17:09:56.684671', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:57:42\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [63]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (53, NULL, NULL, '1', '2023-11-04 17:10:34.745576', '2023-11-04 17:10:34.723991', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'查询\', \'value\': \'Search\', \'method\': 0, \'api\': \'/api/system/user/\', \'menu\': 22}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (54, NULL, NULL, '1', '2023-11-04 17:10:48.333157', '2023-11-04 17:10:48.293161', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:09:56\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (55, NULL, NULL, '1', '2023-11-04 17:12:12.355346', '2023-11-04 17:12:12.305646', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:10:48\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (56, NULL, NULL, NULL, '2023-11-04 17:13:01.149285', '2023-11-04 17:13:00.951877', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': None, \'captchaKey\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 5);
INSERT INTO `dvadmin_system_operation_log` VALUES (57, NULL, NULL, '1', '2023-11-04 17:15:32.455917', '2023-11-04 17:15:32.431355', '菜单表', '/api/system/menu/22/', '{\'id\': 22, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:55:22\', \'update_datetime\': \'2023-11-04 16:59:12\', \'menuPermission\': [\'查询\', \'新增\'], \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'\', \'name\': \'用户管理\', \'sort\': 5, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/user\', \'component\': \'system/role/index\', \'component_name\': \'user\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (58, NULL, NULL, '1', '2023-11-04 17:15:46.814091', '2023-11-04 17:15:46.789941', '菜单表', '/api/system/menu/22/', '{\'id\': 22, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:55:22\', \'update_datetime\': \'2023-11-04 17:15:32\', \'menuPermission\': [\'查询\', \'新增\'], \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'\', \'name\': \'用户管理\', \'sort\': 5, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/user\', \'component\': \'system/user/index\', \'component_name\': \'user\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (59, NULL, NULL, '1', '2023-11-04 17:18:20.503403', '2023-11-04 17:18:20.443685', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:12:12\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63, 18, 15, 17, 22, 21, 23]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (60, NULL, NULL, '1', '2023-11-04 17:18:46.924343', '2023-11-04 17:18:46.883562', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:12:12\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63, 16, 18, 15, 17, 20, 19, 28, 22, 26, 21, 23, 24]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (61, NULL, NULL, '1', '2023-11-04 17:19:02.626801', '2023-11-04 17:19:02.567870', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:12:12\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [1, 20, 21, 19, 22, 6], \'permission\': [64, 63, 16, 18, 15, 17, 20, 19, 27, 28, 22, 26, 21, 23, 24, 25, 29]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (62, NULL, NULL, '1', '2023-11-04 17:19:21.251138', '2023-11-04 17:19:21.193089', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:12:12\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63, 16, 18, 15, 17, 20, 19]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (63, NULL, NULL, NULL, '2023-11-04 17:19:55.398225', '2023-11-04 17:19:55.201921', '登录模块', '/api/login/', '{\'username\': \'admin\', \'password\': \'********************************\', \'captcha\': None, \'captchaKey\': \'\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (64, NULL, NULL, NULL, '2023-11-04 17:20:01.138806', '2023-11-04 17:20:00.996030', '登录模块', '/api/login/', '{\'username\': \'admin\', \'password\': \'********************************\', \'captcha\': None, \'captchaKey\': \'\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (65, NULL, NULL, '1', '2023-11-04 17:20:36.556282', '2023-11-04 17:20:36.533722', '用户表', '/api/system/user/6/', '{\'id\': 6, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 17:01:24\', \'update_datetime\': \'2023-11-04 17:20:01\', \'role_info\': [{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:19:21\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [16, 18, 15, 64, 17, 63, 20, 19]}], \'last_login\': \'2023-11-04 17:20:01\', \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2023-11-04 17:01:24\', \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': None, \'username\': \'管理员\', \'employee_no\': None, \'email\': \'\', \'mobile\': None, \'avatar\': \'\', \'name\': \'admin\', \'gender\': 1, \'user_type\': 0, \'last_token\': None, \'creator\': 1, \'dept\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': [1]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'电话:该字段不能为 null。\'}', 0, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (66, NULL, NULL, '1', '2023-11-04 17:21:30.103363', '2023-11-04 17:21:30.078213', '菜单表', '/api/system/menu/22/', '{\'id\': 22, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:55:22\', \'update_datetime\': \'2023-11-04 17:15:46\', \'menuPermission\': [\'查询\', \'新增\'], \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'address-book\', \'name\': \'用户管理\', \'sort\': 5, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/user\', \'component\': \'system/user/index\', \'component_name\': \'user\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (67, NULL, NULL, '1', '2023-11-04 17:21:56.146535', '2023-11-04 17:21:56.123338', '菜单权限表', '/api/system/menu_button/63/', '{\'id\': 63, \'name\': \'新增\', \'value\': \'Create\', \'api\': \'/api/system/user/\', \'method\': 1, \'menu\': 22, \'_X_ROW_KEY\': \'row_537\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (68, NULL, NULL, '1', '2023-11-04 17:22:16.601102', '2023-11-04 17:22:16.580945', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'删除\', \'value\': \'Delete\', \'method\': 3, \'api\': \'/api/system/user/\', \'menu\': 22}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (69, NULL, NULL, '1', '2023-11-04 17:22:37.639020', '2023-11-04 17:22:37.533330', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:19:21\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], \'permission\': [64, 63, 65, 2, 4, 1, 3, 5, 8, 6, 7, 9, 11, 13, 10, 12, 14, 16, 18, 15, 17, 20, 19, 27, 28, 22, 26, 21, 23, 24, 25, 29, 31, 33, 30, 32, 34, 36, 38, 35, 37, 39, 41, 43, 40, 42, 44, 46, 48, 45, 47, 49, 51, 53, 50, 52, 54, 55, 57, 56, 58, 60, 59, 61, 62]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (70, NULL, NULL, '1', '2023-11-04 17:23:25.093791', '2023-11-04 17:23:25.036114', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:19:21\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63, 65]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (71, NULL, NULL, '1', '2023-11-04 17:23:35.649971', '2023-11-04 17:23:35.602474', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:19:21\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 0, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63, 65]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (72, NULL, NULL, '1', '2023-11-04 17:28:42.352543', '2023-11-04 17:28:42.335031', '菜单表', '/api/system/menu/19/', '{\'id\': 19, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:53:13\', \'update_datetime\': \'2023-11-04 16:59:00\', \'menuPermission\': None, \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'folder\', \'name\': \'查询二维码\', \'sort\': 3, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/get\', \'component\': \'dashboard/QRCode/get/index\', \'component_name\': \'get\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (73, NULL, NULL, '1', '2023-11-04 17:29:26.026247', '2023-11-04 17:29:25.903784', '用户表', '/api/system/user/', '{\'username\': \'12\', \'password\': \'********************************\', \'name\': \'12\', \'role\': [2], \'email\': \'\', \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (74, NULL, NULL, '1', '2023-11-04 17:29:29.958104', '2023-11-04 17:29:29.921124', '用户表', '/api/system/user/7/', '{\'soft_delete\': True}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (75, NULL, NULL, '1', '2023-11-04 17:30:17.075726', '2023-11-04 17:30:17.050222', '菜单表', '/api/system/menu/6/', '{\'id\': 6, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'menuPermission\': [\'重设密码\', \'重置密码\', \'详情\', \'编辑\', \'查询\', \'新增\', \'导出\', \'导入\', \'删除\'], \'hasChild\': False, \'description\': \'\', \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'users\', \'name\': \'用户管理\', \'sort\': 6, \'is_link\': False, \'is_catalog\': True, \'web_path\': \'/user\', \'component\': \'system/user/index\', \'component_name\': \'user\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': None, \'parent\': 1, \'children\': None}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (76, NULL, NULL, '1', '2023-11-04 17:31:19.002438', '2023-11-04 17:31:18.959734', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:23:35\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63, 65, 2, 4, 1, 3, 5, 8, 6, 7, 9, 11, 13, 10, 12, 14, 16, 18, 15, 17, 20, 19, 27, 28, 22, 26, 21, 23, 24, 46, 48, 45, 47, 49]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (77, NULL, NULL, '1', '2023-11-04 17:31:43.945198', '2023-11-04 17:31:43.906727', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:23:35\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22], \'permission\': [64, 63, 65, 2, 4, 1, 3, 5, 8, 6, 7, 9, 11, 13, 10, 12, 14, 16, 18, 15, 17, 20, 19, 27, 28, 22, 26, 21, 23, 24, 46, 48, 45, 47, 49]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (78, NULL, NULL, NULL, '2023-11-04 17:32:20.889414', '2023-11-04 17:32:04.532600', '角色表', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NjAwMSwiaWF0IjoxNjk5MDg5NjAxLCJqdGkiOiJmYzlmMmJjMjIwOTY0MTBjOTBiNjNkMTUzNDM2MjZiYSIsInVzZXJfaWQiOjZ9.JJkdM3xOojzSuZz4I9aX47ynejNsQg5GD5-a_8kXFEc\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (79, NULL, NULL, NULL, '2023-11-04 17:32:26.863310', '2023-11-04 17:32:26.699109', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 5);
INSERT INTO `dvadmin_system_operation_log` VALUES (80, NULL, NULL, '1', '2023-11-04 17:32:45.151085', '2023-11-04 17:32:45.105073', '角色表', '/api/system/role/2/', '{\'id\': 2, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:58:28\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'用户\', \'key\': \'public\', \'sort\': 2, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19], \'permission\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (81, NULL, NULL, '1', '2023-11-04 17:32:59.426825', '2023-11-04 17:32:59.343909', '角色表', '/api/system/role/1/', '{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:23:35\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], \'permission\': [64, 63, 65, 2, 4, 1, 3, 5, 8, 6, 7, 9, 11, 13, 10, 12, 14, 16, 18, 15, 17, 20, 19, 27, 28, 22, 26, 21, 23, 24, 25, 29, 31, 33, 30, 32, 34, 36, 38, 35, 37, 39, 41, 43, 40, 42, 44, 46, 48, 45, 47, 49, 51, 53, 50, 52, 54, 55, 57, 56, 58, 60, 59, 61, 62]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (82, NULL, NULL, NULL, '2023-11-04 17:38:53.385607', '2023-11-04 17:38:53.374803', '登录模块', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3Njc0NiwiaWF0IjoxNjk5MDkwMzQ2LCJqdGkiOiJkMzlmZjk5NDJmYmQ0MjE4OTU3YjgxNjBkZmJkYjA1MCIsInVzZXJfaWQiOjV9.M4vS_OCO2PB6aR-KW_E5CpafpF1jOJafTLPrstmtly8\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, 5);
INSERT INTO `dvadmin_system_operation_log` VALUES (83, NULL, NULL, NULL, '2023-11-04 17:39:00.731165', '2023-11-04 17:39:00.613057', '登录模块', '/api/login/', '{\'username\': \'admin\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (84, NULL, NULL, NULL, '2023-11-04 21:56:06.452165', '2023-11-04 21:56:06.429095', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NTA5MiwiaWF0IjoxNjk5MDg4NjkyLCJqdGkiOiIyOGE1MzRkNjBjMzU0MmQ0OGI1NmZlMDE5ZDFjZjNkOSIsInVzZXJfaWQiOjF9.iggkAZnbB7GoC5UlM93hItiprcD9zU5FhMdqPuNGNMQ\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (85, NULL, NULL, '1', '2023-11-04 21:56:48.002468', '2023-11-04 21:56:47.970825', '菜单表', '/api/system/menu/19/', '{\'id\': 19, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:53:13\', \'update_datetime\': \'2023-11-04 17:28:42\', \'menuPermission\': None, \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'folder\', \'name\': \'查询二维码\', \'sort\': 3, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/get\', \'component\': \'dashboard/QRCode/get/index\', \'component_name\': \'get\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': False, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (86, NULL, NULL, '1', '2023-11-04 21:57:08.077093', '2023-11-04 21:57:08.046698', '菜单表', '/api/system/menu/19/', '{\'id\': 19, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 16:53:13\', \'update_datetime\': \'2023-11-04 21:56:47\', \'menuPermission\': None, \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': 1, \'icon\': \'folder\', \'name\': \'查询二维码\', \'sort\': 3, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/get\', \'component\': \'dashboard/QRCode/get/index\', \'component_name\': \'get\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': 1, \'parent\': \'\', \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (87, NULL, NULL, '1', '2023-11-04 21:57:27.597511', '2023-11-04 21:57:27.571520', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'查询\', \'value\': \'Search\', \'method\': 0, \'api\': \'/api/book/\', \'menu\': 19}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (88, NULL, NULL, '1', '2023-11-04 21:57:38.405699', '2023-11-04 21:57:38.382480', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'删除\', \'value\': \'Delete\', \'method\': 3, \'api\': \'/api/book/\', \'menu\': 19}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (89, NULL, NULL, '1', '2023-11-04 21:57:50.253724', '2023-11-04 21:57:50.234970', '二维码数据表', '/api/qr/1/', '{\'id\': 1}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (90, NULL, NULL, '1', '2023-11-04 21:58:14.319722', '2023-11-04 21:58:14.295911', '菜单权限表', '/api/system/menu_button/', '{\'name\': \'详情\', \'value\': \'Retrieve\', \'method\': 0, \'api\': \'/api/book/\', \'menu\': 19}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (91, NULL, NULL, '1', '2023-11-04 21:59:01.138375', '2023-11-04 21:59:01.109005', '二维码数据表', '/api/qr/3/', '{\'id\': 3, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 17:12:35\', \'update_datetime\': \'2023-11-04 17:12:35\', \'description\': \'\', \'modifier\': None, \'dept_belong_id\': None, \'username\': \'admin\', \'userRoot\': \'admin\', \'text\': \'1111\', \'user\': \'admin\', \'path\': \'20231104171235261575.png\', \'creator\': None}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (92, NULL, NULL, '1', '2023-11-04 22:07:55.562068', '2023-11-04 22:07:55.532189', '用户表', '/api/system/user/6/', '{\'id\': 6, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 17:01:24\', \'update_datetime\': \'2023-11-04 17:39:00\', \'role_info\': [{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:32:59\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [10, 2, 11, 15, 20, 3, 12, 16, 21, 4, 13, 19, 5, 17, 22, 6, 7, 8, 1, 9, 14], \'permission\': [27, 28, 2, 46, 11, 16, 22, 31, 36, 41, 51, 55, 60, 61, 38, 4, 13, 43, 8, 33, 18, 26, 48, 57, 53, 45, 15, 40, 1, 50, 21, 6, 35, 56, 59, 10, 30, 62, 64, 23, 52, 32, 17, 37, 42, 47, 3, 7, 63, 12, 24, 25, 29, 54, 9, 44, 49, 58, 14, 5, 34, 20, 39, 65, 19]}], \'last_login\': \'2023-11-04 17:39:00\', \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2023-11-04 17:01:24\', \'description\': \'1\', \'modifier\': \'1\', \'dept_belong_id\': None, \'username\': \'admin\', \'employee_no\': None, \'email\': \'\', \'mobile\': None, \'avatar\': \'\', \'name\': \'admin\', \'gender\': 1, \'user_type\': 0, \'last_token\': None, \'creator\': 1, \'dept\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': [1]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'电话:该字段不能为 null。\'}', 0, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (93, NULL, NULL, '1', '2023-11-04 22:07:56.652939', '2023-11-04 22:07:56.624540', '用户表', '/api/system/user/6/', '{\'id\': 6, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 17:01:24\', \'update_datetime\': \'2023-11-04 17:39:00\', \'role_info\': [{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:32:59\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [10, 2, 11, 15, 20, 3, 12, 16, 21, 4, 13, 19, 5, 17, 22, 6, 7, 8, 1, 9, 14], \'permission\': [27, 28, 2, 46, 11, 16, 22, 31, 36, 41, 51, 55, 60, 61, 38, 4, 13, 43, 8, 33, 18, 26, 48, 57, 53, 45, 15, 40, 1, 50, 21, 6, 35, 56, 59, 10, 30, 62, 64, 23, 52, 32, 17, 37, 42, 47, 3, 7, 63, 12, 24, 25, 29, 54, 9, 44, 49, 58, 14, 5, 34, 20, 39, 65, 19]}], \'last_login\': \'2023-11-04 17:39:00\', \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2023-11-04 17:01:24\', \'description\': \'1\', \'modifier\': \'1\', \'dept_belong_id\': None, \'username\': \'admin\', \'employee_no\': None, \'email\': \'\', \'mobile\': None, \'avatar\': \'\', \'name\': \'admin\', \'gender\': 1, \'user_type\': 0, \'last_token\': None, \'creator\': 1, \'dept\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': [1]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'电话:该字段不能为 null。\'}', 0, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (94, NULL, NULL, '1', '2023-11-04 22:10:23.578639', '2023-11-04 22:10:23.528970', '用户表', '/api/system/user/6/', '{\'id\': 6, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 17:01:24\', \'update_datetime\': \'2023-11-04 17:39:00\', \'role_info\': [{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:32:59\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [10, 2, 11, 15, 20, 3, 12, 16, 21, 4, 13, 19, 5, 17, 22, 6, 7, 8, 1, 9, 14], \'permission\': [27, 28, 2, 46, 11, 16, 22, 31, 36, 41, 51, 55, 60, 61, 38, 4, 13, 43, 8, 33, 18, 26, 48, 57, 53, 45, 15, 40, 1, 50, 21, 6, 35, 56, 59, 10, 30, 62, 64, 23, 52, 32, 17, 37, 42, 47, 3, 7, 63, 12, 24, 25, 29, 54, 9, 44, 49, 58, 14, 5, 34, 20, 39, 65, 19]}], \'last_login\': \'2023-11-04 17:39:00\', \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2023-11-04 17:01:24\', \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': None, \'username\': \'admin\', \'employee_no\': None, \'email\': \'\', \'mobile\': \'15527871223\', \'avatar\': \'\', \'name\': \'admin\', \'gender\': 1, \'user_type\': 0, \'last_token\': None, \'creator\': 1, \'dept\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': [1]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (95, NULL, NULL, NULL, '2023-11-04 22:10:38.939716', '2023-11-04 22:10:38.918823', '文件管理', '/api/system/file/', '{\'key\': \'file/2023/11/4/22153707000336.png\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (96, NULL, NULL, '1', '2023-11-04 22:10:39.888577', '2023-11-04 22:10:39.838329', '用户表', '/api/system/user/6/', '{\'id\': 6, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 17:01:24\', \'update_datetime\': \'2023-11-04 22:10:23\', \'role_info\': [{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:32:59\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [10, 2, 11, 15, 20, 3, 12, 16, 21, 4, 13, 19, 5, 17, 22, 6, 7, 8, 1, 9, 14], \'permission\': [27, 28, 2, 46, 11, 16, 22, 31, 36, 41, 51, 55, 60, 61, 38, 4, 13, 43, 8, 33, 18, 26, 48, 57, 53, 45, 15, 40, 1, 50, 21, 6, 35, 56, 59, 10, 30, 62, 64, 23, 52, 32, 17, 37, 42, 47, 3, 7, 63, 12, 24, 25, 29, 54, 9, 44, 49, 58, 14, 5, 34, 20, 39, 65, 19]}], \'last_login\': \'2023-11-04 17:39:00\', \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2023-11-04 17:01:24\', \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': None, \'username\': \'admin\', \'employee_no\': None, \'email\': \'\', \'mobile\': \'15527871223\', \'avatar\': \'media/files/d/4/d46202ec528ebd11440e6b4776eb8450\', \'name\': \'admin\', \'gender\': 1, \'user_type\': 0, \'last_token\': None, \'creator\': 1, \'dept\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': [1]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (97, NULL, NULL, '1', '2023-11-04 22:10:47.048204', '2023-11-04 22:10:46.995611', '用户表', '/api/system/user/6/', '{\'id\': 6, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2023-11-04 17:01:24\', \'update_datetime\': \'2023-11-04 22:10:39\', \'role_info\': [{\'id\': 1, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:32:59\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'管理员\', \'key\': \'admin\', \'sort\': 1, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [10, 2, 11, 15, 20, 3, 12, 16, 21, 4, 13, 19, 5, 17, 22, 6, 7, 8, 1, 9, 14], \'permission\': [27, 28, 2, 46, 11, 16, 22, 31, 36, 41, 51, 55, 60, 61, 38, 4, 13, 43, 8, 33, 18, 26, 48, 57, 53, 45, 15, 40, 1, 50, 21, 6, 35, 56, 59, 10, 30, 62, 64, 23, 52, 32, 17, 37, 42, 47, 3, 7, 63, 12, 24, 25, 29, 54, 9, 44, 49, 58, 14, 5, 34, 20, 39, 65, 19]}], \'last_login\': \'2023-11-04 17:39:00\', \'is_superuser\': False, \'first_name\': \'\', \'last_name\': \'\', \'is_staff\': False, \'is_active\': True, \'date_joined\': \'2023-11-04 17:01:24\', \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': None, \'username\': \'admin\', \'employee_no\': None, \'email\': \'\', \'mobile\': \'15527871223\', \'avatar\': \'\', \'name\': \'admin\', \'gender\': 1, \'user_type\': 0, \'last_token\': None, \'creator\': 1, \'dept\': None, \'groups\': [], \'user_permissions\': [], \'post\': [], \'role\': [1]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (98, NULL, NULL, '1', '2023-11-04 22:11:25.030847', '2023-11-04 22:11:24.858289', '用户表', '/api/system/user/', '{\'username\': \'wxj\', \'password\': \'********************************\', \'name\': \'wxj\', \'role\': [1], \'mobile\': \'13873842823\', \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (99, NULL, NULL, NULL, '2023-11-04 22:11:55.063135', '2023-11-04 22:11:54.864348', '登录模块', '/api/login/', '{\'username\': \'wxj\', \'password\': \'********************************\', \'captcha\': None, \'captchaKey\': \'\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (100, NULL, NULL, NULL, '2023-11-04 22:12:16.091492', '2023-11-04 22:12:16.066940', '二维码数据表', '/api/qr/4/', '{\'id\': 4}', 'DELETE', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (101, NULL, NULL, NULL, '2023-11-04 22:12:17.906442', '2023-11-04 22:12:17.882240', '二维码数据表', '/api/qr/3/', '{\'id\': 3}', 'DELETE', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (102, NULL, NULL, NULL, '2023-11-04 22:12:20.146079', '2023-11-04 22:12:20.121021', '二维码数据表', '/api/qr/2/', '{\'id\': 2}', 'DELETE', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (103, NULL, NULL, '1', '2023-11-04 22:13:35.712170', '2023-11-04 22:13:35.681706', '角色表', '/api/system/role/1/', '{\'id\': 1}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (104, NULL, NULL, '1', '2023-11-04 22:13:42.009107', '2023-11-04 22:13:41.949695', '用户表', '/api/system/user/7/', '{\'soft_delete\': True}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (105, NULL, NULL, '1', '2023-11-04 22:13:43.728595', '2023-11-04 22:13:43.673230', '用户表', '/api/system/user/6/', '{\'soft_delete\': True}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (106, NULL, NULL, '1', '2023-11-04 22:16:30.022111', '2023-11-04 22:16:30.017373', '登录模块', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NTA5MiwiaWF0IjoxNjk5MDg4NjkyLCJqdGkiOiIyOGE1MzRkNjBjMzU0MmQ0OGI1NmZlMDE5ZDFjZjNkOSIsInVzZXJfaWQiOjF9.iggkAZnbB7GoC5UlM93hItiprcD9zU5FhMdqPuNGNMQ\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (107, NULL, NULL, '1', '2023-11-04 22:18:11.733665', '2023-11-04 22:18:11.532053', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (108, NULL, NULL, '1', '2023-11-04 22:19:10.037735', '2023-11-04 22:19:10.008974', '菜单表', '/api/system/menu/5/', '{\'id\': 5, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 16:45:03\', \'menuPermission\': [\'详情\', \'编辑\', \'查询\', \'新增\', \'删除\', \'保存\'], \'hasChild\': False, \'description\': \'\', \'modifier\': None, \'dept_belong_id\': None, \'icon\': \'address-book\', \'name\': \'角色管理\', \'sort\': 4, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/role\', \'component\': \'system/role/index\', \'component_name\': \'role\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': None, \'parent\': \'\', \'children\': None}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (109, NULL, NULL, '1', '2023-11-04 22:19:35.521234', '2023-11-04 22:19:35.492483', '菜单表', '/api/system/menu/5/', '{\'id\': 5, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 22:19:10\', \'menuPermission\': [\'详情\', \'编辑\', \'查询\', \'新增\', \'删除\', \'保存\'], \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': None, \'icon\': \'address-book\', \'name\': \'角色管理\', \'sort\': 4, \'is_link\': False, \'is_catalog\': False, \'web_path\': \'/role\', \'component\': \'system/role/index\', \'component_name\': \'role\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': None, \'parent\': 1, \'children\': [], \'_X_ROW_CHILD\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (110, NULL, NULL, '1', '2023-11-04 22:19:56.551974', '2023-11-04 22:19:56.529863', '菜单表', '/api/system/menu/6/', '{\'id\': 6, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:30:17\', \'menuPermission\': [\'重设密码\', \'重置密码\', \'详情\', \'编辑\', \'查询\', \'新增\', \'导出\', \'导入\', \'删除\'], \'hasChild\': False, \'description\': \'\', \'modifier\': \'1\', \'dept_belong_id\': None, \'icon\': \'users\', \'name\': \'用户管理\', \'sort\': 6, \'is_link\': False, \'is_catalog\': True, \'web_path\': \'/user\', \'component\': \'system/user/index\', \'component_name\': \'user\', \'status\': True, \'frame_out\': False, \'cache\': False, \'visible\': True, \'creator\': None, \'parent\': \'\', \'children\': None}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (111, NULL, NULL, '1', '2023-11-04 22:20:28.223429', '2023-11-04 22:20:15.556214', '菜单表', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5Mzg5MSwiaWF0IjoxNjk5MTA3NDkxLCJqdGkiOiIwZGVhNjA5Zjg2ZGI0NWM3YWQ0YTk1ZjIyYzUyZjYxNSIsInVzZXJfaWQiOjF9.jWT9xU7j8s4S-c1uCX5Rd7sXhYMteOsS8p8V_umZzWg\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (112, NULL, NULL, NULL, '2023-11-04 22:20:36.519913', '2023-11-04 22:20:36.237138', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (113, NULL, NULL, NULL, '2023-11-04 22:20:37.767318', '2023-11-04 22:20:37.423409', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (114, NULL, NULL, NULL, '2023-11-04 22:20:41.493302', '2023-11-04 22:20:41.203609', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (115, NULL, NULL, NULL, '2023-11-04 22:20:42.445751', '2023-11-04 22:20:42.130929', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (116, NULL, NULL, NULL, '2023-11-04 22:20:42.750015', '2023-11-04 22:20:42.465765', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '401', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'账号/密码错误\', code=\'no_active_account\')}', 0, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (117, NULL, NULL, '1', '2023-11-04 22:20:46.953824', '2023-11-04 22:20:46.731705', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (118, NULL, NULL, '1', '2023-11-04 22:21:07.920886', '2023-11-04 22:21:05.151580', '用户表', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5NDA0NiwiaWF0IjoxNjk5MTA3NjQ2LCJqdGkiOiJjZDM3NWU4MTAzYjk0MTZhYjljYjM0ZDcwZDhmZTdlYyIsInVzZXJfaWQiOjF9.vtueSEMjAGDB1js7ur1o6bCqkxUC1H1hpDp6OmHrr-M\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (119, NULL, NULL, NULL, '2023-11-04 22:21:18.038856', '2023-11-04 22:21:17.847095', '登录模块', '/api/login/', '{\'username\': \'test\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 5);
INSERT INTO `dvadmin_system_operation_log` VALUES (120, NULL, NULL, NULL, '2023-11-04 22:21:33.783390', '2023-11-04 22:21:33.770150', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5MzUxNSwiaWF0IjoxNjk5MTA3MTE1LCJqdGkiOiJkYjJkOWJiYzcxMzA0NDliYjVkOGY2YmRmZTUzNjdmNCIsInVzZXJfaWQiOjd9.vmgdHHqATNlpYpHtzw8mUrPjOlu4Y0sGWE7GncDFPaM\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (121, NULL, NULL, NULL, '2023-11-04 22:21:33.842010', '2023-11-04 22:21:33.830468', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5MzUxNSwiaWF0IjoxNjk5MTA3MTE1LCJqdGkiOiJkYjJkOWJiYzcxMzA0NDliYjVkOGY2YmRmZTUzNjdmNCIsInVzZXJfaWQiOjd9.vmgdHHqATNlpYpHtzw8mUrPjOlu4Y0sGWE7GncDFPaM\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (122, NULL, NULL, NULL, '2023-11-04 22:21:33.898016', '2023-11-04 22:21:33.886043', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5MzUxNSwiaWF0IjoxNjk5MTA3MTE1LCJqdGkiOiJkYjJkOWJiYzcxMzA0NDliYjVkOGY2YmRmZTUzNjdmNCIsInVzZXJfaWQiOjd9.vmgdHHqATNlpYpHtzw8mUrPjOlu4Y0sGWE7GncDFPaM\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (123, NULL, NULL, NULL, '2023-11-04 22:21:33.953909', '2023-11-04 22:21:33.942905', '', '/token/refresh/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5MzUxNSwiaWF0IjoxNjk5MTA3MTE1LCJqdGkiOiJkYjJkOWJiYzcxMzA0NDliYjVkOGY2YmRmZTUzNjdmNCIsInVzZXJfaWQiOjd9.vmgdHHqATNlpYpHtzw8mUrPjOlu4Y0sGWE7GncDFPaM\'}', 'POST', NULL, '127.0.0.1', 'Edge 119.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'success\'}', 1, NULL);
INSERT INTO `dvadmin_system_operation_log` VALUES (124, NULL, NULL, NULL, '2023-11-04 22:21:44.022769', '2023-11-04 22:21:38.804035', '登录模块', '/api/logout/', '{\'refresh\': \'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5NDA3NywiaWF0IjoxNjk5MTA3Njc3LCJqdGkiOiI1Y2E3MmYxNGYxYTI0MzAxYWU4MDc2ZDUzNDk4OWIwYyIsInVzZXJfaWQiOjV9.jyaCADBw4QdYOTyTdOVd3Eq_Fr16VwGsrHqIxY0G638\'}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'注销成功\'}', 1, 5);
INSERT INTO `dvadmin_system_operation_log` VALUES (125, NULL, NULL, '1', '2023-11-04 22:21:47.627199', '2023-11-04 22:21:47.356812', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': None}', 'POST', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (126, NULL, NULL, '1', '2023-11-04 22:22:12.173042', '2023-11-04 22:22:12.081903', '角色表', '/api/system/role/2/', '{\'id\': 2, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:32:45\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'用户\', \'key\': \'public\', \'sort\': 2, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19, 22, 6], \'permission\': [64, 63, 65, 27, 28, 22, 26, 21, 23, 24, 25, 29]}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (127, NULL, NULL, '1', '2023-11-04 22:22:27.071152', '2023-11-04 22:22:27.004062', '角色表', '/api/system/role/2/', '{\'id\': 2, \'modifier_name\': \'超级管理员\', \'creator_name\': None, \'create_datetime\': \'2023-11-04 16:45:03\', \'update_datetime\': \'2023-11-04 17:32:45\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': None, \'name\': \'用户\', \'key\': \'public\', \'sort\': 2, \'status\': True, \'admin\': True, \'data_range\': 3, \'remark\': None, \'creator\': None, \'dept\': [], \'menu\': [20, 21, 19], \'permission\': []}', 'PUT', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `dvadmin_system_operation_log` VALUES (128, NULL, NULL, '1', '2023-11-04 22:22:51.441550', '2023-11-04 22:22:51.414938', '二维码数据表', '/api/qr/5/', '{\'id\': 5}', 'DELETE', NULL, '127.0.0.1', 'Chrome 117.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 1);

-- ----------------------------
-- Table structure for dvadmin_system_post
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_post`;
CREATE TABLE `dvadmin_system_post`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort` int NOT NULL,
  `status` int NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dvadmin_system_post_creator_id_b5ef9351`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_post
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_system_role
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_role`;
CREATE TABLE `dvadmin_system_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `data_range` int NOT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key` ASC) USING BTREE,
  INDEX `dvadmin_system_role_creator_id_a89a9bc7`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_role
-- ----------------------------
INSERT INTO `dvadmin_system_role` VALUES (2, NULL, '1', NULL, '2023-11-04 22:22:27.027362', '2023-11-04 16:45:03.122758', '用户', 'public', 2, 1, 1, 3, NULL, NULL);

-- ----------------------------
-- Table structure for dvadmin_system_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_role_dept`;
CREATE TABLE `dvadmin_system_role_dept`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_system_role_dept_role_id_dept_id_524d7fba_uniq`(`role_id` ASC, `dept_id` ASC) USING BTREE,
  INDEX `dvadmin_system_role_dept_role_id_4f737c95`(`role_id` ASC) USING BTREE,
  INDEX `dvadmin_system_role_dept_dept_id_d719761c`(`dept_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_system_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_role_menu`;
CREATE TABLE `dvadmin_system_role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_system_role_menu_role_id_menu_id_06192289_uniq`(`role_id` ASC, `menu_id` ASC) USING BTREE,
  INDEX `dvadmin_system_role_menu_role_id_dcc80258`(`role_id` ASC) USING BTREE,
  INDEX `dvadmin_system_role_menu_menu_id_7bbf1cb9`(`menu_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_role_menu
-- ----------------------------
INSERT INTO `dvadmin_system_role_menu` VALUES (5, 2, 19);
INSERT INTO `dvadmin_system_role_menu` VALUES (6, 2, 20);
INSERT INTO `dvadmin_system_role_menu` VALUES (7, 2, 21);

-- ----------------------------
-- Table structure for dvadmin_system_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_role_permission`;
CREATE TABLE `dvadmin_system_role_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL,
  `menubutton_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_system_role_perm_role_id_menubutton_id_46c1e3ca_uniq`(`role_id` ASC, `menubutton_id` ASC) USING BTREE,
  INDEX `dvadmin_system_role_permission_role_id_bf988ad5`(`role_id` ASC) USING BTREE,
  INDEX `dvadmin_system_role_permission_menubutton_id_7ba32ee0`(`menubutton_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_system_users
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_users`;
CREATE TABLE `dvadmin_system_users`  (
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `employee_no` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` int NULL DEFAULT NULL,
  `user_type` int NULL DEFAULT NULL,
  `last_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `dept_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `employee_no`(`employee_no` ASC) USING BTREE,
  INDEX `dvadmin_system_users_creator_id_28556713`(`creator_id` ASC) USING BTREE,
  INDEX `dvadmin_system_users_dept_id_b56f71f6`(`dept_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_users
-- ----------------------------
INSERT INTO `dvadmin_system_users` VALUES ('pbkdf2_sha256$260000$g17x5wlSiW1FZAh1Eudchw$ZeSAqj3Xak0io8v/pmPW0BX9EX5R2zFXDwbbD68oBFk=', '2023-11-04 22:21:47.570135', 1, '', '', 1, 1, '2023-11-04 16:45:03.130013', 1, NULL, NULL, NULL, '2023-11-04 22:21:47.571133', '2023-11-04 16:45:03.130013', 'superadmin', NULL, 'dvadmin@django-vue-admin.com', '13333333333', NULL, '超级管理员', 1, 0, NULL, NULL, 1);
INSERT INTO `dvadmin_system_users` VALUES ('pbkdf2_sha256$260000$lMLHzJNLJBrMXkhy73G6Sg$CUxAM5s6+uxno7M6/MtdXXGTg6XckhvniEvsd875iHQ=', '2023-11-04 22:21:38.978529', 0, '', '', 0, 1, '2023-11-04 17:00:57.968147', 5, NULL, '1', NULL, '2023-11-04 22:21:38.979996', '2023-11-04 17:00:57.968651', 'test', NULL, NULL, NULL, NULL, '测试1', 1, 0, NULL, 1, NULL);

-- ----------------------------
-- Table structure for dvadmin_system_users_groups
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_users_groups`;
CREATE TABLE `dvadmin_system_users_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_system_users_groups_users_id_group_id_7460f482_uniq`(`users_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `dvadmin_system_users_groups_group_id_42e8a6dc_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `dvadmin_system_users_groups_group_id_42e8a6dc_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `dvadmin_system_users_users_id_f20fa5bc_fk_dvadmin_s` FOREIGN KEY (`users_id`) REFERENCES `dvadmin_system_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_users_groups
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_system_users_post
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_users_post`;
CREATE TABLE `dvadmin_system_users_post`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_system_users_post_users_id_post_id_41f83b22_uniq`(`users_id` ASC, `post_id` ASC) USING BTREE,
  INDEX `dvadmin_system_users_post_users_id_8ab2e760`(`users_id` ASC) USING BTREE,
  INDEX `dvadmin_system_users_post_post_id_50054985`(`post_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_users_post
-- ----------------------------

-- ----------------------------
-- Table structure for dvadmin_system_users_role
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_users_role`;
CREATE TABLE `dvadmin_system_users_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_system_users_role_users_id_role_id_02908e92_uniq`(`users_id` ASC, `role_id` ASC) USING BTREE,
  INDEX `dvadmin_system_users_role_users_id_a25207bc`(`users_id` ASC) USING BTREE,
  INDEX `dvadmin_system_users_role_role_id_e37d9591`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_users_role
-- ----------------------------
INSERT INTO `dvadmin_system_users_role` VALUES (4, 5, 2);

-- ----------------------------
-- Table structure for dvadmin_system_users_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `dvadmin_system_users_user_permissions`;
CREATE TABLE `dvadmin_system_users_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dvadmin_system_users_use_users_id_permission_id_24cd72ef_uniq`(`users_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `dvadmin_system_users_permission_id_c8ec58dc_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `dvadmin_system_users_permission_id_c8ec58dc_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `dvadmin_system_users_users_id_fd3b0217_fk_dvadmin_s` FOREIGN KEY (`users_id`) REFERENCES `dvadmin_system_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dvadmin_system_users_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for token_blacklist_blacklistedtoken
-- ----------------------------
DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
CREATE TABLE `token_blacklist_blacklistedtoken`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `token_id`(`token_id` ASC) USING BTREE,
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token_blacklist_blacklistedtoken
-- ----------------------------

-- ----------------------------
-- Table structure for token_blacklist_outstandingtoken
-- ----------------------------
DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
CREATE TABLE `token_blacklist_outstandingtoken`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `jti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq`(`jti` ASC) USING BTREE,
  INDEX `token_blacklist_outs_user_id_83bc629a_fk_dvadmin_s`(`user_id` ASC) USING BTREE,
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_dvadmin_s` FOREIGN KEY (`user_id`) REFERENCES `dvadmin_system_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token_blacklist_outstandingtoken
-- ----------------------------
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NDIzMiwiaWF0IjoxNjk5MDg3ODMyLCJqdGkiOiIzOGVlMjFlMjNjMDc0ZmE3ODQ0NDk1NDhkMTc2MDE4ZiIsInVzZXJfaWQiOjF9.8wdieh8tHru31PvUKeevfrAGqsuZ0u0-aOpC3aH8ShI', '2023-11-04 08:50:32.619426', '2023-11-05 08:50:32.000000', 1, '38ee21e23c074fa784449548d176018f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NDY0MSwiaWF0IjoxNjk5MDg4MjQxLCJqdGkiOiI5MmUyMGM3MWRkNmM0MDY5YWNiMTA4YzY5NjQ4OWExZiIsInVzZXJfaWQiOjN9.PbeKrSFYzj_1GSUHAwsLykNTXYiIQ1Li_l6gYSfFMtM', '2023-11-04 08:57:21.556411', '2023-11-05 08:57:21.000000', NULL, '92e20c71dd6c4069acb108c696489a1f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NTA5MiwiaWF0IjoxNjk5MDg4NjkyLCJqdGkiOiIyOGE1MzRkNjBjMzU0MmQ0OGI1NmZlMDE5ZDFjZjNkOSIsInVzZXJfaWQiOjF9.iggkAZnbB7GoC5UlM93hItiprcD9zU5FhMdqPuNGNMQ', '2023-11-04 09:04:52.368516', '2023-11-05 09:04:52.000000', 1, '28a534d60c3542d48b56fe019d1cf3d9');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NTI3OCwiaWF0IjoxNjk5MDg4ODc4LCJqdGkiOiJjY2RkMGJiZjNkMWQ0YzczODQyMTJkYWNjNDBmYjU4MyIsInVzZXJfaWQiOjV9.MXvO5Zt9hTBZyJ2rPCQUXAfXXECw01tNy7JoPfZZScw', '2023-11-04 09:07:58.453909', '2023-11-05 09:07:58.000000', 5, 'ccdd0bbf3d1d4c7384212dacc40fb583');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NTI5MiwiaWF0IjoxNjk5MDg4ODkyLCJqdGkiOiIwZmFkZjEwYzc1M2U0OTg1YWNmZWE3MWMyYjQyMDEyOSIsInVzZXJfaWQiOjZ9.laFavwURVNWRyWiQ0jXZnJPJWPQF7_R0o0RbkZlmYXk', '2023-11-04 09:08:12.768423', '2023-11-05 09:08:12.000000', NULL, '0fadf10c753e4985acfea71c2b420129');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NTU4MSwiaWF0IjoxNjk5MDg5MTgxLCJqdGkiOiIyMjg5Yzc1NDExOTY0YTAxOWViYTQ5YWU3NGRiMjg0NCIsInVzZXJfaWQiOjV9.jvx-3EmJ1GidZGfrwI9KKJxqOEZ_PPl-KEL2HhNJkMo', '2023-11-04 09:13:01.113895', '2023-11-05 09:13:01.000000', 5, '2289c75411964a019eba49ae74db2844');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NjAwMSwiaWF0IjoxNjk5MDg5NjAxLCJqdGkiOiJmYzlmMmJjMjIwOTY0MTBjOTBiNjNkMTUzNDM2MjZiYSIsInVzZXJfaWQiOjZ9.JJkdM3xOojzSuZz4I9aX47ynejNsQg5GD5-a_8kXFEc', '2023-11-04 09:20:01.099886', '2023-11-05 09:20:01.000000', NULL, 'fc9f2bc22096410c90b63d15343626ba');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3Njc0NiwiaWF0IjoxNjk5MDkwMzQ2LCJqdGkiOiJkMzlmZjk5NDJmYmQ0MjE4OTU3YjgxNjBkZmJkYjA1MCIsInVzZXJfaWQiOjV9.M4vS_OCO2PB6aR-KW_E5CpafpF1jOJafTLPrstmtly8', '2023-11-04 09:32:26.819300', '2023-11-05 09:32:26.000000', 5, 'd39ff9942fbd4218957b8160dfbdb050');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE3NzE0MCwiaWF0IjoxNjk5MDkwNzQwLCJqdGkiOiJiNjVkMGQ5OGNhOGY0ZGM5YjU2YzQzMjg5Y2VkYTk1NSIsInVzZXJfaWQiOjZ9.fnBmf4J-3ODdxlraVtJxdCavypkTahel1qjRa0HtHR4', '2023-11-04 09:39:00.692381', '2023-11-05 09:39:00.000000', NULL, 'b65d0d98ca8f4dc9b56c43289ceda955');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5MzUxNSwiaWF0IjoxNjk5MTA3MTE1LCJqdGkiOiJkYjJkOWJiYzcxMzA0NDliYjVkOGY2YmRmZTUzNjdmNCIsInVzZXJfaWQiOjd9.vmgdHHqATNlpYpHtzw8mUrPjOlu4Y0sGWE7GncDFPaM', '2023-11-04 14:11:55.001238', '2023-11-05 14:11:55.000000', NULL, 'db2d9bbc7130449bb5d8f6bdfe5367f4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5Mzg5MSwiaWF0IjoxNjk5MTA3NDkxLCJqdGkiOiIwZGVhNjA5Zjg2ZGI0NWM3YWQ0YTk1ZjIyYzUyZjYxNSIsInVzZXJfaWQiOjF9.jWT9xU7j8s4S-c1uCX5Rd7sXhYMteOsS8p8V_umZzWg', '2023-11-04 14:18:11.679678', '2023-11-05 14:18:11.000000', 1, '0dea609f86db45c7ad4a95f22c52f615');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5NDA0NiwiaWF0IjoxNjk5MTA3NjQ2LCJqdGkiOiJjZDM3NWU4MTAzYjk0MTZhYjljYjM0ZDcwZDhmZTdlYyIsInVzZXJfaWQiOjF9.vtueSEMjAGDB1js7ur1o6bCqkxUC1H1hpDp6OmHrr-M', '2023-11-04 14:20:46.894568', '2023-11-05 14:20:46.000000', 1, 'cd375e8103b9416ab9cb34d70d8fe7ec');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5NDA3NywiaWF0IjoxNjk5MTA3Njc3LCJqdGkiOiI1Y2E3MmYxNGYxYTI0MzAxYWU4MDc2ZDUzNDk4OWIwYyIsInVzZXJfaWQiOjV9.jyaCADBw4QdYOTyTdOVd3Eq_Fr16VwGsrHqIxY0G638', '2023-11-04 14:21:17.992414', '2023-11-05 14:21:17.000000', 5, '5ca72f14f1a24301ae8076d534989b0c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5NDA5OCwiaWF0IjoxNjk5MTA3Njk4LCJqdGkiOiI5YzM0MWUxMjQ2MmE0ZWFlYjg1Y2FkODgyODljNDFiZiIsInVzZXJfaWQiOjV9.2iQS7DrzdXi53kR2XWgH9ObTxwp7NbUOWaI8wyLMNSI', '2023-11-04 14:21:38.993843', '2023-11-05 14:21:38.000000', 5, '9c341e12462a4eaeb85cad88289c41bf');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5OTE5NDEwNywiaWF0IjoxNjk5MTA3NzA3LCJqdGkiOiJhYzE0MzU5M2RhOGM0NmE5YWM5NGJkYWQ3OWQwNzBhOSIsInVzZXJfaWQiOjF9.FYAv54GnMDsNnhMbJI-IObewVj4t7WIOjyNvVH_7PUg', '2023-11-04 14:21:47.582670', '2023-11-05 14:21:47.000000', 1, 'ac143593da8c46a9ac94bdad79d070a9');

SET FOREIGN_KEY_CHECKS = 1;
