/*
Navicat MySQL Data Transfer

Source Server         : demo.5gmedia.vn_qlsite
Source Server Version : 50564
Source Host           : localhost:3306
Source Database       : admin_qlsite

Target Server Type    : MYSQL
Target Server Version : 50564
File Encoding         : 65001

Date: 2020-07-15 12:11:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_categories
-- ----------------------------
DROP TABLE IF EXISTS `tbl_categories`;
CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_desc` text,
  `isactive` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_categories
-- ----------------------------
INSERT INTO `tbl_categories` VALUES ('1', '0', '1', 'Nhóm 1', 'nhom-1', null, null, null, null, '1');
INSERT INTO `tbl_categories` VALUES ('2', '0', '2', 'Nhóm 2', 'nhom-2', null, null, null, null, '1');
INSERT INTO `tbl_categories` VALUES ('3', '2', '2_3', 'Nhóm 3', 'nhom-3', null, '', '', '', '1');
INSERT INTO `tbl_categories` VALUES ('4', '3', '2_3_4', 'Nhóm 4', 'nhom-4', null, '', 'Hehe', 'Haha', '1');

-- ----------------------------
-- Table structure for tbl_content
-- ----------------------------
DROP TABLE IF EXISTS `tbl_content`;
CREATE TABLE `tbl_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `chanel_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `sapo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `fulltext` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `pdate` int(11) DEFAULT NULL,
  `visited` int(11) DEFAULT NULL,
  `liked` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `is_trash` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_content
-- ----------------------------
INSERT INTO `tbl_content` VALUES ('1', '1', '2', '1', 'Phòng công nghệ', 'phong-cong-nghe', 'Phòng công nghệ', 'medias/vods/videos/do-thi-nghich-thien-tien-ton_18e.jpg', '[]', '4', 'Phòng công nghệ', '1590404033', '1590404281', null, null, null, '0', null);
INSERT INTO `tbl_content` VALUES ('2', '4', '3', '2', 'Team công nghệ', 'team-cong-nghe', '<p>Team công nghệ<br></p>', 'medias/vods/videos/Sơn Hải Phong Thần.jpg', '[]', '1', 'Team công nghệ', null, null, null, null, null, '0', null);
INSERT INTO `tbl_content` VALUES ('3', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '<p><span style=\"color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; white-space: pre-wrap; background-color: rgb(249, 249, 249);\">Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau:\r\n- Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới  \r\n- Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen  \r\n- WHO quan ngại về tình hình covid-19 tại nhiều nước\r\n- Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19\r\n- Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á\r\n- Thêm 1 ca mắc covid-19 mới </span><br></p>', '', '[]', '1', '', '1592117719', null, null, null, null, '0', null);
INSERT INTO `tbl_content` VALUES ('4', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '3', '', '1592117719', '1592369440', null, null, null, '1', null);
INSERT INTO `tbl_content` VALUES ('5', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '1', null);
INSERT INTO `tbl_content` VALUES ('6', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '1', null);
INSERT INTO `tbl_content` VALUES ('7', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '1', null);
INSERT INTO `tbl_content` VALUES ('8', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '1', null);
INSERT INTO `tbl_content` VALUES ('9', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('10', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('11', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('12', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('13', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('14', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '3', null);
INSERT INTO `tbl_content` VALUES ('15', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '3', null);
INSERT INTO `tbl_content` VALUES ('16', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '3', null);
INSERT INTO `tbl_content` VALUES ('17', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '3', null);
INSERT INTO `tbl_content` VALUES ('18', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '3', null);
INSERT INTO `tbl_content` VALUES ('19', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '4', null);
INSERT INTO `tbl_content` VALUES ('20', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '4', null);
INSERT INTO `tbl_content` VALUES ('21', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '4', null);
INSERT INTO `tbl_content` VALUES ('22', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '4', null);
INSERT INTO `tbl_content` VALUES ('23', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '4', null);
INSERT INTO `tbl_content` VALUES ('24', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '5', null);
INSERT INTO `tbl_content` VALUES ('25', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '5', null);
INSERT INTO `tbl_content` VALUES ('26', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '5', null);
INSERT INTO `tbl_content` VALUES ('27', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '5', null);
INSERT INTO `tbl_content` VALUES ('28', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '5', null);
INSERT INTO `tbl_content` VALUES ('29', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '6', null);
INSERT INTO `tbl_content` VALUES ('30', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '6', null);
INSERT INTO `tbl_content` VALUES ('31', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '6', null);
INSERT INTO `tbl_content` VALUES ('32', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '6', null);
INSERT INTO `tbl_content` VALUES ('33', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '6', null);
INSERT INTO `tbl_content` VALUES ('34', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('35', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('36', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('37', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('38', '3', '1', '1', 'Tin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 Thêm 1 ca mắc virus corona mới, tổng số 334 ca bệnh', 'tin-tuc-dich-benh-corona-covid-19-sang-146-them-1-ca-mac-virus-corona-moi-tong-so-334-ca-benh', '\r\nTin tức dịch bệnh corona ( Covid-19 ) sáng 14/6 gồm những nội dung chính sau: - Trung Quốc phong tỏa một phần Bắc Kinh vì phát hiện ổ dịch mới - Pháp lên kế hoạch mở cửa biên giới với các nước ngoài Schengen - WHO quan ngại về tình hình covid-19 tại nhiều nước - Bắc Kinh - điểm nóng mới về nguy cơ tái bùng phạt dịch covid-19 - Đại dịch covid-19 \"bóp nghẹt\" lái xe công nghệ ở Đông Nam Á - Thêm 1 ca mắc covid-19 mới\r\n\r\n', '', '[]', '1', '', '1592117719', null, null, null, null, '2', null);
INSERT INTO `tbl_content` VALUES ('39', '2', '2', '1', 'Thời điểm tốt giúp Việt Nam có cơ hội hóa rồng', 'thoi-diem-tot-giup-viet-nam-co-co-hoi-hoa-rong', '<p><font color=\"#333333\" face=\"Noto Serif, serif\"><span style=\"font-size: 17.6px;\">Chúng ta đã biến nguy thành cơ, cải thiện uy tín của Việt Nam trên trường quốc tế, biến Việt Nam thành điểm đến hấp dẫn của thị trường đầu tư\", đại biểu Hoàng Văn Cường đánh giá.</span></font><br></p>', '', '[]', '1', '', '1592209141', '1592216007', null, null, null, '5', null);
INSERT INTO `tbl_content` VALUES ('40', '4', '4', '1', 'Chào Buổi Sáng | Tin tức 24h mới nhất hôm nay 16/6/2020 | chuyển động 24h | Tin tức | TT24h', 'chao-buoi-sang-tin-tuc-24h-moi-nhat-hom-nay-1662020-chuyen-dong-24h-tin-tuc-tt24h', '', '', '[]', '1', '', '1592280255', null, null, null, null, '0', null);
INSERT INTO `tbl_content` VALUES ('41', '4', '4', '1', 'Chào Buổi Sáng | Tin tức 24h mới nhất hôm nay 16/6/2020 | chuyển động 24h | Tin tức | TT24h', 'chao-buoi-sang-tin-tuc-24h-moi-nhat-hom-nay-1662020-chuyen-dong-24h-tin-tuc-tt24h', '', '', '[]', '1', '', '1592280274', null, null, null, null, '0', null);
INSERT INTO `tbl_content` VALUES ('42', '4', '4', '1', 'Chào Buổi Sáng | Tin tức 24h mới nhất hôm nay 16/6/2020 | chuyển động 24h | Tin tức | TT24h', 'chao-buoi-sang-tin-tuc-24h-moi-nhat-hom-nay-1662020-chuyen-dong-24h-tin-tuc-tt24h', '', '', '[]', '1', '', '1592280328', null, null, null, null, '0', null);
INSERT INTO `tbl_content` VALUES ('43', '4', '4', '1', 'Tin tức dịch Covid-19 mới nhất ngày 16 tháng 6,2020 | Tổng hợp tin virus Corona hôm nay | FBNC', 'tin-tuc-dich-covid-19-moi-nhat-ngay-16-thang-62020-tong-hop-tin-virus-corona-hom-nay-fbnc', '<p><span style=\"color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; white-space: pre-wrap; background-color: rgb(249, 249, 249);\">FBNC (Financial Business News Channel) là kênh truyền hình của HTVC  dành cho giới kinh doanh, thông tin chuyên sâu về  kinh tế Việt Nam, bất động sản,  tài chính ngân hàng,  chứng khoán và cổ phiếu, giá vàng và khởi nghiệp,… Nếu bạn đã, đang và sẽ định giá doanh nghiệp. Hãy đồng hành cùng FBNC TV!</span><br></p>', '', '[]', '1', '', '1592280404', '1592298519', null, null, null, '0', null);
INSERT INTO `tbl_content` VALUES ('44', '4', '4', '1', 'Tin tức dịch Covid-19 mới nhất ngày 16 tháng 6,2020 | Tổng hợp tin virus Corona hôm nay | FBNC', 'tin-tuc-dich-covid-19-moi-nhat-ngay-16-thang-62020-tong-hop-tin-virus-corona-hom-nay-fbnc', '<p><span style=\"color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; white-space: pre-wrap; background-color: rgb(249, 249, 249);\">FBNC (Financial Business News Channel) là kênh truyền hình của HTVC  dành cho giới kinh doanh, thông tin chuyên sâu về  kinh tế Việt Nam, bất động sản,  tài chính ngân hàng,  chứng khoán và cổ phiếu, giá vàng và khởi nghiệp,… Nếu bạn đã, đang và sẽ định giá doanh nghiệp. Hãy đồng hành cùng FBNC TV!</span><br></p>', '', '[]', '3', '', '1592280470', '1592294848', null, null, null, '0', null);

-- ----------------------------
-- Table structure for tbl_sites
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sites`;
CREATE TABLE `tbl_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_descript` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8_unicode_ci NOT NULL,
  `footer` text COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` int(11) DEFAULT NULL,
  `active_date` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `is_trash` tinyint(4) DEFAULT '0',
  `isactive` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_sites
-- ----------------------------
INSERT INTO `tbl_sites` VALUES ('1', '0', '1', '940af854a71cb49739a9353bd412086c', 'Ecohub1', 'ecohub.asia', '0912334486', 'quoctrungbk@gmail.com', 'medias/sites/ctv_guide_web_banner.jpg', null, 'Ecohub - Phần mềm họp trực tuyến', 'Ecohub - Phần mềm họp trực tuyến', '', '&lt;h3 style=\'font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-weight: 700; font-size: 15px; text-transform: uppercase; text-align: center; color: rgb(44, 83, 158) !important;\'&gt;L&Yacute; DO RA ĐỜI V&Agrave; MỤC TI&Ecirc;U HƯỚNG TỚI CỦA CLASSHUB L&Agrave; G&Igrave;?&lt;/h3&gt;\n&lt;div class=&quot;desc&quot; style=\'color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\'&gt;Cho d&ugrave; bạn đang sở hữu Doanh nghiệp gi&aacute;o dục ở bất cứ m&ocirc; h&igrave;nh n&agrave;o, CLASSHUB sẽ lu&ocirc;n l&agrave;m bạn h&agrave;i l&ograve;ng với những t&iacute;nh năng Ưu việt, vượt trội, xứng đ&aacute;ng l&agrave; Phần mềm số 1 tại Việt Nam!&lt;/div&gt;', '', '', '', '', '1594183683', null, '0', '0', '1');
INSERT INTO `tbl_sites` VALUES ('2', '0', '2', '940af854a71cb49739a9353bd412086c', 'Ecohub2', 'ecohub.asia', '0912334486', 'quoctrungbk@gmail.com', 'medias/sites/ctv_guide_web_banner_inx.jpg', null, 'Ecohub - Phần mềm họp trực tuyến', 'Ecohub - Phần mềm họp trực tuyến', '', '&lt;h3 style=\'font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-weight: 700; font-size: 15px; text-transform: uppercase; text-align: center; color: rgb(44, 83, 158) !important;\'&gt;L&Yacute; DO RA ĐỜI V&Agrave; MỤC TI&Ecirc;U HƯỚNG TỚI CỦA CLASSHUB L&Agrave; G&Igrave;?&lt;/h3&gt;\n&lt;div class=&quot;desc&quot; style=\'color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\'&gt;Cho d&ugrave; bạn đang sở hữu Doanh nghiệp gi&aacute;o dục ở bất cứ m&ocirc; h&igrave;nh n&agrave;o, CLASSHUB sẽ lu&ocirc;n l&agrave;m bạn h&agrave;i l&ograve;ng với những t&iacute;nh năng Ưu việt, vượt trội, xứng đ&aacute;ng l&agrave; Phần mềm số 1 tại Việt Nam!&lt;/div&gt;', '', '', '', '', '1594183710', null, '0', '1', '1');
INSERT INTO `tbl_sites` VALUES ('3', '0', '3', '940af854a71cb49739a9353bd412086c', 'Ecohub3', 'ecohub.asia', '0912334486', 'quoctrungbk@gmail.com', 'medias/sites/ctv_guide_web_banner_icj.jpg', null, 'Ecohub - Phần mềm họp trực tuyến', 'Ecohub - Phần mềm họp trực tuyến', '', '&lt;h3 style=\'font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-weight: 700; font-size: 15px; text-transform: uppercase; text-align: center; color: rgb(44, 83, 158) !important;\'&gt;L&Yacute; DO RA ĐỜI V&Agrave; MỤC TI&Ecirc;U HƯỚNG TỚI CỦA CLASSHUB L&Agrave; G&Igrave;?&lt;/h3&gt;\n&lt;div class=&quot;desc&quot; style=\'color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\'&gt;Cho d&ugrave; bạn đang sở hữu Doanh nghiệp gi&aacute;o dục ở bất cứ m&ocirc; h&igrave;nh n&agrave;o, CLASSHUB sẽ lu&ocirc;n l&agrave;m bạn h&agrave;i l&ograve;ng với những t&iacute;nh năng Ưu việt, vượt trội, xứng đ&aacute;ng l&agrave; Phần mềm số 1 tại Việt Nam!&lt;/div&gt;', '', '', '', '', '1594183731', null, '1', '0', '1');

-- ----------------------------
-- Table structure for tbl_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_group`;
CREATE TABLE `tbl_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isadmin` int(11) DEFAULT '1',
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_active` (`isactive`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbl_user_group
-- ----------------------------
INSERT INTO `tbl_user_group` VALUES ('1', '0', 'Origin', '', '1', '1', '1');
INSERT INTO `tbl_user_group` VALUES ('2', '1', 'Team công nghệ', '', '1_2', '1', '1');

-- ----------------------------
-- Table structure for tbl_user_login
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_login`;
CREATE TABLE `tbl_user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx` (`isactive`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_user_login
-- ----------------------------
INSERT INTO `tbl_user_login` VALUES ('1', 'tranviethiepdz@gmail.com', '1593529748', '1593529748', '1');
INSERT INTO `tbl_user_login` VALUES ('2', 'tranviethiepdz@gmail.com', '1593542323', '1593542323', '1');
INSERT INTO `tbl_user_login` VALUES ('3', 'tranviethiepdz@gmail.com', '1593542325', '1593542325', '1');
INSERT INTO `tbl_user_login` VALUES ('4', 'tranviethiepdz@gmail.com', '1593699816', '1593699816', '1');
INSERT INTO `tbl_user_login` VALUES ('5', 'tranviethiepdz@gmail.com', '1594054321', '1594054321', '1');
INSERT INTO `tbl_user_login` VALUES ('6', 'tranviethiepdz@gmail.com', '1594178951', '1594178951', '1');
INSERT INTO `tbl_user_login` VALUES ('7', 'tranviethiepdz@gmail.com', '1594200475', '1594200475', '1');
INSERT INTO `tbl_user_login` VALUES ('8', 'tranviethiepdz@gmail.com', '1594788586', '1594788586', '1');
INSERT INTO `tbl_user_login` VALUES ('9', 'tranviethiepdz@gmail.com', '1594788693', '1594788693', '1');

-- ----------------------------
-- Table structure for tbl_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(300) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `gsecret` varchar(50) DEFAULT NULL,
  `isfa2` tinyint(4) DEFAULT '0',
  `isadmin` tinyint(4) DEFAULT '0',
  `cdate` int(11) DEFAULT NULL,
  `is_trash` tinyint(4) DEFAULT '0',
  `isactive` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO `tbl_users` VALUES ('nxtuyen.pro@gmail.com', 'a25342213446980b5f750b37daed053ce347ec766265b78aa81d90c8217e5e39|cdf4a007e2b02a0c49fc9b7ccfbb8a10c644f635e1765dcf2a7ab794ddc7edac', 'Nguyễn Xuân Tuyền', '0936831277', 'nxtuyen.pro@gmail.com', '1', null, '1', '1', '1586660652', '0', '1');
INSERT INTO `tbl_users` VALUES ('tranviethiepdz@gmail.com', 'd93fc24a5f68f2d6621e2d3aff26b5600f38f1b6876ff04f0070b38a54b2d2f8|cdf4a007e2b02a0c49fc9b7ccfbb8a10c644f635e1765dcf2a7ab794ddc7edac', 'Trần Hiệp', '096.954.990', 'tranviethiepdz@gmail.com', '2', null, '0', '1', '1591860947', '0', '1');