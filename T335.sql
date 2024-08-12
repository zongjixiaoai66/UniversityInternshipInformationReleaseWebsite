/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t335`;
CREATE DATABASE IF NOT EXISTS `t335` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t335`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(17, 'jianli_types', '求职意向', 1, '求职意向1', NULL, NULL, '2023-03-31 03:35:02'),
	(18, 'jianli_types', '求职意向', 2, '求职意向2', NULL, NULL, '2023-03-31 03:35:02'),
	(19, 'jianli_types', '求职意向', 3, '求职意向3', NULL, NULL, '2023-03-31 03:35:02'),
	(20, 'shixizhiwei_types', '实习职位', 1, '实习职位1', NULL, NULL, '2023-03-31 03:35:02'),
	(21, 'shixizhiwei_types', '实习职位', 2, '实习职位2', NULL, NULL, '2023-03-31 03:35:02'),
	(22, 'shixizhiwei_types', '实习职位', 3, '实习职位3', NULL, NULL, '2023-03-31 03:35:02'),
	(23, 'shangxia_types', '是否上架', 1, '上架', NULL, NULL, '2023-03-31 03:35:02'),
	(24, 'shangxia_types', '是否上架', 2, '下架', NULL, NULL, '2023-03-31 03:35:03'),
	(25, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-03-31 03:35:03'),
	(26, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-03-31 03:35:03'),
	(27, 'shixizhiwei_toudi_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2023-03-31 03:35:03'),
	(28, 'shixizhiwei_toudi_yesno_types', '审核状态', 2, '通过', NULL, NULL, '2023-03-31 03:35:03'),
	(29, 'shixizhiwei_toudi_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2023-03-31 03:35:03'),
	(30, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-31 03:35:03'),
	(31, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-31 03:35:03'),
	(32, 'qiye_types', '企业类型', 1, '企业类型1', NULL, NULL, '2023-03-31 03:35:03'),
	(33, 'qiye_types', '企业类型', 2, '企业类型2', NULL, NULL, '2023-03-31 03:35:03'),
	(34, 'qiye_types', '企业类型', 3, '企业类型3', NULL, NULL, '2023-03-31 03:35:03'),
	(35, 'shixizhiwei_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-31 03:35:03'),
	(36, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2023-03-31 03:35:03'),
	(37, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2023-03-31 03:35:03'),
	(38, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2023-03-31 03:35:03'),
	(39, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-31 03:35:03'),
	(40, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-31 03:35:03'),
	(41, 'shixizhiwei_types', '实习职位', 4, '实习职位4', NULL, '', '2023-03-31 05:31:16');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiye_id` int DEFAULT NULL COMMENT '企业',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `qiye_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, NULL, '发布内容1', 352, 2, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', 23, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(3, '帖子标题3', 3, NULL, NULL, '发布内容3', 339, 2, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(4, '帖子标题4', 3, NULL, NULL, '发布内容4', 107, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(5, '帖子标题5', 2, NULL, NULL, '发布内容5', 13, 1, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(6, '帖子标题6', 2, NULL, NULL, '发布内容6', 44, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(7, '帖子标题7', 3, NULL, NULL, '发布内容7', 468, 2, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(8, '帖子标题8', 3, NULL, NULL, '发布内容8', 355, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(9, '帖子标题9', 2, NULL, NULL, '发布内容9', 378, 1, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(10, '帖子标题10', 1, NULL, NULL, '发布内容10', 410, 2, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(11, '帖子标题11', 2, NULL, NULL, '发布内容11', 182, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(12, '帖子标题12', 2, NULL, NULL, '发布内容12', 199, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(13, '帖子标题13', 3, NULL, NULL, '发布内容13', 68, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(14, '帖子标题14', 3, NULL, NULL, '发布内容14', 80, 1, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(15, NULL, 4, NULL, NULL, 'tiezi撒发的', 14, NULL, 2, '2023-03-31 05:27:25', NULL, '2023-03-31 05:27:25'),
	(16, '帖子2222', 4, NULL, NULL, '<p>郭德纲的三个的是</p>', NULL, 1, 1, '2023-03-31 05:27:35', NULL, '2023-03-31 05:27:35'),
	(17, NULL, NULL, NULL, 1, '哈哈哈哈', 16, NULL, 2, '2023-03-31 05:31:22', NULL, '2023-03-31 05:31:22'),
	(18, NULL, NULL, 1, NULL, '斤斤计较', 16, NULL, 2, '2023-03-31 05:32:39', NULL, '2023-03-31 05:32:39'),
	(19, NULL, 1, NULL, NULL, '11', 13, NULL, 2, '2024-08-04 03:08:05', NULL, '2024-08-04 03:08:05');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-03-31 03:35:59', '公告详情1', '2023-03-31 03:35:59'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-03-31 03:35:59', '公告详情2', '2023-03-31 03:35:59'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-03-31 03:35:59', '公告详情3', '2023-03-31 03:35:59'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-03-31 03:35:59', '公告详情4', '2023-03-31 03:35:59'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-03-31 03:35:59', '公告详情5', '2023-03-31 03:35:59'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-03-31 03:35:59', '公告详情6', '2023-03-31 03:35:59'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-03-31 03:35:59', '公告详情7', '2023-03-31 03:35:59'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-03-31 03:35:59', '公告详情8', '2023-03-31 03:35:59'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-03-31 03:35:59', '公告详情9', '2023-03-31 03:35:59'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-03-31 03:35:59', '公告详情10', '2023-03-31 03:35:59'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-03-31 03:35:59', '公告详情11', '2023-03-31 03:35:59'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-03-31 03:35:59', '公告详情12', '2023-03-31 03:35:59'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-03-31 03:35:59', '公告详情13', '2023-03-31 03:35:59'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-03-31 03:35:59', '公告详情14', '2023-03-31 03:35:59');

DROP TABLE IF EXISTS `jianli`;
CREATE TABLE IF NOT EXISTS `jianli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '现在位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='简历';

DELETE FROM `jianli`;
INSERT INTO `jianli` (`id`, `yonghu_id`, `jianli_uuid_number`, `jianli_name`, `jianli_xingming`, `jianli_types`, `jianli_xinzi`, `jianli_xueli`, `jianli_jingli`, `sex_types`, `jianli_file`, `jianli_phone`, `jianli_photo`, `jianli_address`, `jiaoyu_text`, `shixi_text`, `geren_text`, `create_time`) VALUES
	(1, 2, '1680233759965', '简历标题1', '姓名1', 2, '期望工资1', '学历1', '工作经历1', 1, 'upload/file.rar', '17703786901', 'upload/jianli1.jpg', '现在位置1', '教育经历1', '实习或工作经历1', '个人介绍1', '2023-03-31 03:35:59'),
	(2, 3, '1680233759914', '简历标题2', '姓名2', 3, '期望工资2', '学历2', '工作经历2', 1, 'upload/file.rar', '17703786902', 'upload/jianli2.jpg', '现在位置2', '教育经历2', '实习或工作经历2', '个人介绍2', '2023-03-31 03:35:59'),
	(3, 2, '1680233759960', '简历标题3', '姓名3', 1, '期望工资3', '学历3', '工作经历3', 2, 'upload/file.rar', '17703786903', 'upload/jianli3.jpg', '现在位置3', '教育经历3', '实习或工作经历3', '个人介绍3', '2023-03-31 03:35:59'),
	(4, 2, '1680233759931', '简历标题4', '姓名4', 1, '期望工资4', '学历4', '工作经历4', 1, 'upload/file.rar', '17703786904', 'upload/jianli4.jpg', '现在位置4', '教育经历4', '实习或工作经历4', '个人介绍4', '2023-03-31 03:35:59'),
	(5, 3, '1680233759884', '简历标题5', '姓名5', 3, '期望工资5', '学历5', '工作经历5', 2, 'upload/file.rar', '17703786905', 'upload/jianli5.jpg', '现在位置5', '教育经历5', '实习或工作经历5', '个人介绍5', '2023-03-31 03:35:59'),
	(6, 3, '1680233759892', '简历标题6', '姓名6', 1, '期望工资6', '学历6', '工作经历6', 1, 'upload/file.rar', '17703786906', 'upload/jianli6.jpg', '现在位置6', '教育经历6', '实习或工作经历6', '个人介绍6', '2023-03-31 03:35:59'),
	(7, 1, '1680233759957', '简历标题7', '姓名7', 1, '期望工资7', '学历7', '工作经历7', 1, 'upload/file.rar', '17703786907', 'upload/jianli7.jpg', '现在位置7', '教育经历7', '实习或工作经历7', '个人介绍7', '2023-03-31 03:35:59'),
	(8, 3, '1680233759927', '简历标题8', '姓名8', 2, '期望工资8', '学历8', '工作经历8', 2, 'upload/file.rar', '17703786908', 'upload/jianli8.jpg', '现在位置8', '教育经历8', '实习或工作经历8', '个人介绍8', '2023-03-31 03:35:59'),
	(9, 3, '1680233759879', '简历标题9', '姓名9', 2, '期望工资9', '学历9', '工作经历9', 1, 'upload/file.rar', '17703786909', 'upload/jianli9.jpg', '现在位置9', '教育经历9', '实习或工作经历9', '个人介绍9', '2023-03-31 03:35:59'),
	(10, 1, '1680233759942', '简历标题10', '姓名10', 1, '期望工资10', '学历10', '工作经历10', 1, 'upload/file.rar', '17703786910', 'upload/jianli10.jpg', '现在位置10', '教育经历10', '实习或工作经历10', '个人介绍10', '2023-03-31 03:35:59'),
	(11, 1, '1680233759933', '简历标题11', '姓名11', 3, '期望工资11', '学历11', '工作经历11', 2, 'upload/file.rar', '17703786911', 'upload/jianli11.jpg', '现在位置11', '教育经历11', '实习或工作经历11', '个人介绍11', '2023-03-31 03:35:59'),
	(12, 1, '1680233759905', '简历标题12', '姓名12', 1, '期望工资12', '学历12', '工作经历12', 1, 'upload/file.rar', '17703786912', 'upload/jianli12.jpg', '现在位置12', '教育经历12', '实习或工作经历12', '个人介绍12', '2023-03-31 03:35:59'),
	(13, 3, '1680233759935', '简历标题13', '姓名13', 1, '期望工资13', '学历13', '工作经历13', 1, 'upload/file.rar', '17703786913', 'upload/jianli13.jpg', '现在位置13', '教育经历13', '实习或工作经历13', '个人介绍13', '2023-03-31 03:35:59'),
	(14, 2, '1680233759975', '简历标题14', '姓名14', 1, '期望工资14', '学历14', '工作经历14', 1, 'upload/file.rar', '17703786914', 'upload/jianli14.jpg', '现在位置14', '教育经历14', '实习或工作经历14', '个人介绍14', '2023-03-31 03:35:59'),
	(15, 4, '1680240520967', '简历11', '张三', 2, '8000', '本科', '无', 1, 'upload/1680240539403.doc', '17788889999', 'upload/1680240547816.jpg', '位置121', '经理11', '过大噶十多个', '和发的好地方或军军军军', '2023-03-31 05:29:18');

DROP TABLE IF EXISTS `qiye`;
CREATE TABLE IF NOT EXISTS `qiye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `qiye_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `qiye_types` int DEFAULT NULL COMMENT '企业类型',
  `qiye_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiye_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiye_photo` varchar(200) DEFAULT NULL COMMENT '企业logo',
  `qiye_chenglishijian_time` timestamp NULL DEFAULT NULL COMMENT '企业成立时间',
  `qiye_content` text COMMENT '企业介绍',
  `qiye_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='企业';

DELETE FROM `qiye`;
INSERT INTO `qiye` (`id`, `username`, `password`, `qiye_name`, `qiye_types`, `qiye_phone`, `qiye_email`, `qiye_photo`, `qiye_chenglishijian_time`, `qiye_content`, `qiye_delete`, `create_time`) VALUES
	(1, '企业1', '123456', '企业名称1', 2, '17703786901', '1@qq.com', 'upload/qiye1.jpg', '2023-03-31 03:35:59', '<p>企业介绍1哈哈哈哈</p>', 1, '2023-03-31 03:35:59'),
	(2, '企业2', '123456', '企业名称2', 3, '17703786902', '2@qq.com', 'upload/qiye2.jpg', '2023-03-31 03:35:59', '企业介绍2', 1, '2023-03-31 03:35:59'),
	(3, '企业3', '123456', '企业名称3', 3, '17703786903', '3@qq.com', 'upload/qiye3.jpg', '2023-03-31 03:35:59', '企业介绍3', 1, '2023-03-31 03:35:59');

DROP TABLE IF EXISTS `shixijilu`;
CREATE TABLE IF NOT EXISTS `shixijilu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shixijilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '实习记录编号 ',
  `shixijilu_name` varchar(200) DEFAULT NULL COMMENT '实习单位名称',
  `shixizhiwei_types` int DEFAULT NULL COMMENT '实习职位 Search111',
  `danwei_address` varchar(200) DEFAULT NULL COMMENT '单位位置',
  `danwei_lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `danwei_lianxi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shixijilu_xinzi` decimal(10,2) DEFAULT NULL COMMENT '实习薪资',
  `shixijilu_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '实习开始时间',
  `shixijilu_jieshu_time` timestamp NULL DEFAULT NULL COMMENT '实习结束时间',
  `shixijilu_content` text COMMENT '实习内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='实习记录';

DELETE FROM `shixijilu`;
INSERT INTO `shixijilu` (`id`, `yonghu_id`, `shixijilu_uuid_number`, `shixijilu_name`, `shixizhiwei_types`, `danwei_address`, `danwei_lianxiren`, `danwei_lianxi_phone`, `shixijilu_xinzi`, `shixijilu_kaishi_time`, `shixijilu_jieshu_time`, `shixijilu_content`, `insert_time`, `create_time`) VALUES
	(16, 1, '1681973295732', '单位11', 3, '单位位置1111', '张三', '17788885555', 3000.00, '2023-04-02 16:00:00', '2023-04-27 16:00:00', '都是高大上分公司个', '2023-04-20 06:48:38', '2023-04-20 06:48:38');

DROP TABLE IF EXISTS `shixizhiwei`;
CREATE TABLE IF NOT EXISTS `shixizhiwei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiye_id` int DEFAULT NULL COMMENT '企业',
  `shixizhiwei_name` varchar(200) DEFAULT NULL COMMENT '实习信息名称  Search111 ',
  `shixizhiwei_photo` varchar(200) DEFAULT NULL COMMENT '实习信息照片',
  `shixizhiwei_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `shixizhiwei_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `shixizhiwei_phone` varchar(200) DEFAULT NULL COMMENT '实习电话',
  `shixizhiwei_types` int DEFAULT NULL COMMENT '实习职位 Search111',
  `shixizhiwei_renshu_number` int DEFAULT NULL COMMENT '实习人数',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `shixizhiwei_content` text COMMENT '实习信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='职位实习';

DELETE FROM `shixizhiwei`;
INSERT INTO `shixizhiwei` (`id`, `qiye_id`, `shixizhiwei_name`, `shixizhiwei_photo`, `shixizhiwei_daiyu`, `shixizhiwei_address`, `lianxiren_name`, `shixizhiwei_phone`, `shixizhiwei_types`, `shixizhiwei_renshu_number`, `shangxia_types`, `shixizhiwei_content`, `create_time`) VALUES
	(1, 2, '实习信息名称1', 'upload/shixizhiwei1.jpg', '薪资待遇1', '上班地点1', '联系人1', '17703786901', 3, 122, 1, '实习信息详情1', '2023-03-31 03:35:59'),
	(2, 3, '实习信息名称2', 'upload/shixizhiwei2.jpg', '薪资待遇2', '上班地点2', '联系人2', '17703786902', 1, 203, 1, '实习信息详情2', '2023-03-31 03:35:59'),
	(3, 1, '实习信息名称3', 'upload/shixizhiwei3.jpg', '薪资待遇3', '上班地点3', '联系人3', '17703786903', 1, 126, 1, '实习信息详情3', '2023-03-31 03:35:59'),
	(4, 3, '实习信息名称4', 'upload/shixizhiwei4.jpg', '薪资待遇4', '上班地点4', '联系人4', '17703786904', 2, 464, 1, '实习信息详情4', '2023-03-31 03:35:59'),
	(5, 3, '实习信息名称5', 'upload/shixizhiwei5.jpg', '薪资待遇5', '上班地点5', '联系人5', '17703786905', 1, 371, 1, '实习信息详情5', '2023-03-31 03:35:59'),
	(6, 3, '实习信息名称6', 'upload/shixizhiwei6.jpg', '薪资待遇6', '上班地点6', '联系人6', '17703786906', 1, 326, 1, '实习信息详情6', '2023-03-31 03:35:59'),
	(7, 2, '实习信息名称7', 'upload/shixizhiwei7.jpg', '薪资待遇7', '上班地点7', '联系人7', '17703786907', 3, 117, 1, '实习信息详情7', '2023-03-31 03:35:59'),
	(8, 2, '实习信息名称8', 'upload/shixizhiwei8.jpg', '薪资待遇8', '上班地点8', '联系人8', '17703786908', 2, 165, 1, '实习信息详情8', '2023-03-31 03:35:59'),
	(9, 3, '实习信息名称9', 'upload/shixizhiwei9.jpg', '薪资待遇9', '上班地点9', '联系人9', '17703786909', 1, 471, 1, '实习信息详情9', '2023-03-31 03:35:59'),
	(10, 1, '实习信息名称10', 'upload/shixizhiwei10.jpg', '薪资待遇10', '上班地点10', '联系人10', '17703786910', 3, 133, 1, '实习信息详情10', '2023-03-31 03:35:59'),
	(11, 1, '实习信息名称11', 'upload/shixizhiwei11.jpg', '薪资待遇11', '上班地点11', '联系人11', '17703786911', 2, 336, 1, '实习信息详情11', '2023-03-31 03:35:59'),
	(12, 2, '实习信息名称12', 'upload/shixizhiwei12.jpg', '薪资待遇12', '上班地点12', '联系人12', '17703786912', 2, 41, 1, '实习信息详情12', '2023-03-31 03:35:59'),
	(13, 2, '实习信息名称13', 'upload/shixizhiwei13.jpg', '薪资待遇13', '上班地点13', '联系人13', '17703786913', 3, 32, 1, '实习信息详情13', '2023-03-31 03:35:59'),
	(14, 1, '实习信息名称14', 'upload/shixizhiwei14.jpg', '薪资待遇14', '上班地点14', '联系人14', '17703786914', 2, 497, 1, '实习信息详情14', '2023-03-31 03:35:59');

DROP TABLE IF EXISTS `shixizhiwei_collection`;
CREATE TABLE IF NOT EXISTS `shixizhiwei_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shixizhiwei_id` int DEFAULT NULL COMMENT '职位',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shixizhiwei_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='职位收藏';

DELETE FROM `shixizhiwei_collection`;
INSERT INTO `shixizhiwei_collection` (`id`, `shixizhiwei_id`, `yonghu_id`, `shixizhiwei_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(2, 2, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(3, 3, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(4, 4, 2, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(5, 5, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(6, 6, 1, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(7, 7, 2, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(8, 8, 1, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(9, 9, 1, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(10, 10, 2, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(11, 11, 1, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(12, 12, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(13, 13, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(14, 14, 3, 1, '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(15, 12, 1, 1, '2023-03-31 03:46:43', '2023-03-31 03:46:43'),
	(16, 8, 4, 1, '2023-03-31 05:27:44', '2023-03-31 05:27:44'),
	(17, 3, 4, 1, '2023-03-31 05:29:33', '2023-03-31 05:29:33'),
	(18, 12, 4, 1, '2023-03-31 05:30:26', '2023-03-31 05:30:26');

DROP TABLE IF EXISTS `shixizhiwei_liuyan`;
CREATE TABLE IF NOT EXISTS `shixizhiwei_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shixizhiwei_id` int DEFAULT NULL COMMENT '职位',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shixizhiwei_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='职位留言';

DELETE FROM `shixizhiwei_liuyan`;
INSERT INTO `shixizhiwei_liuyan` (`id`, `shixizhiwei_id`, `yonghu_id`, `shixizhiwei_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '回复信息1', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(2, 2, 2, '留言内容2', '回复信息2', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(3, 3, 3, '留言内容3', '回复信息3', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(4, 4, 2, '留言内容4', '回复信息4', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(5, 5, 3, '留言内容5', '回复信息5', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(6, 6, 1, '留言内容6', '回复信息6', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(7, 7, 2, '留言内容7', '回复信息7', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(8, 8, 1, '留言内容8', '回复信息8', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(9, 9, 1, '留言内容9', '回复信息9', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(10, 10, 1, '留言内容10', '回复信息10', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(11, 11, 3, '留言内容11', '回复信息11', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(12, 12, 2, '留言内容12', '回复信息12', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(13, 13, 1, '留言内容13', '回复信息13', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(14, 14, 3, '留言内容14', '回复信息14', '2023-03-31 03:35:59', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(15, 11, 4, '句斤斤计较', '江湖救急就', '2023-03-31 05:31:51', '2023-03-31 05:32:49', '2023-03-31 05:31:51');

DROP TABLE IF EXISTS `shixizhiwei_toudi`;
CREATE TABLE IF NOT EXISTS `shixizhiwei_toudi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int DEFAULT NULL COMMENT '简历',
  `shixizhiwei_id` int DEFAULT NULL COMMENT '实习',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `shixizhiwei_toudi_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `shixizhiwei_toudi_yesno_text` text COMMENT '投递回复',
  `shixizhiwei_toudi_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COMMENT='实习申请';

DELETE FROM `shixizhiwei_toudi`;
INSERT INTO `shixizhiwei_toudi` (`id`, `jianli_id`, `shixizhiwei_id`, `insert_time`, `shixizhiwei_toudi_yesno_types`, `shixizhiwei_toudi_yesno_text`, `shixizhiwei_toudi_shenhe_time`, `create_time`) VALUES
	(1, 1, 1, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(2, 2, 2, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(3, 3, 3, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(4, 4, 4, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(5, 5, 5, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(6, 6, 6, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(7, 7, 7, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(8, 8, 8, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(9, 9, 9, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(10, 10, 10, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(11, 11, 11, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(12, 12, 12, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(13, 13, 13, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(14, 14, 14, '2023-03-31 03:35:59', 2, '同意', '2023-03-31 03:35:59', '2023-03-31 03:35:59'),
	(29, 11, 12, '2023-03-31 03:49:10', 2, '同意', '2023-03-31 03:49:10', '2023-03-31 03:49:10'),
	(30, 15, 3, '2023-03-31 05:29:37', 2, '很舒服好得很', '2023-03-31 05:33:00', '2023-03-31 05:29:37'),
	(31, 15, 12, '2023-03-31 05:30:28', 1, NULL, NULL, '2023-03-31 05:30:28'),
	(32, 12, 14, '2024-08-04 03:08:23', 1, NULL, NULL, '2024-08-04 03:08:23');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '0ardvegkhqvqqtv7208x138s1nvtgvcq', '2023-03-31 03:39:53', '2024-08-04 04:07:56'),
	(2, 1, 'admin', 'users', '管理员', 'hqddz3cix2wijcxnudq6p3820n5aol1m', '2023-03-31 03:51:17', '2024-08-04 04:06:14'),
	(3, 4, 'a5', 'yonghu', '用户', '3wc3jixx1qb7wid92iv5fz8dm2hh8fi8', '2023-03-31 05:26:56', '2023-03-31 06:26:57'),
	(4, 1, 'a1', 'qiye', '企业', 'ljqlydv7jx8lxx6qmk5l0t3z6feu4sc8', '2023-03-31 05:32:24', '2024-08-04 04:07:43');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-31 03:35:02');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'upload/yonghu1.jpg', '17703786901', '410224199010102001', '1@qq.com', 2, 1, '2023-03-31 03:35:59'),
	(2, '用户2', '123456', '用户姓名2', 'upload/yonghu2.jpg', '17703786902', '410224199010102002', '2@qq.com', 2, 1, '2023-03-31 03:35:59'),
	(3, '用户3', '123456', '用户姓名3', 'upload/yonghu3.jpg', '17703786903', '410224199010102003', '3@qq.com', 1, 1, '2023-03-31 03:35:59'),
	(4, '用户4', '123456', '张5', 'upload/1680240430675.jpg', '17788889999', '444555888899999991', '5@qq.com', 2, 1, '2023-03-31 05:26:52');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
