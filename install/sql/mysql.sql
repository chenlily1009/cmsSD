SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sd_ad
-- ----------------------------
DROP TABLE IF EXISTS `sd_ad`;
CREATE TABLE `sd_ad` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `datalist` text,
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `akey` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin`;
CREATE TABLE `sd_admin` (
  `adminid` int(10) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(50) DEFAULT '',
  `adminpass` varchar(50) DEFAULT '',
  `penname` varchar(20) DEFAULT '',
  `pid` int(10) DEFAULT '0',
  `logintimes` int(10) DEFAULT '0',
  `lastlogindate` int(10) DEFAULT '0',
  `lastloginip` varchar(50) DEFAULT '',
  `islock` int(10) DEFAULT '0',
  `readonly` smallint(1) DEFAULT '0',
  PRIMARY KEY (`adminid`),
  KEY `adminname` (`adminname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin_log`;
CREATE TABLE `sd_admin_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `msg` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin_login_log`;
CREATE TABLE `sd_admin_login_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(50) DEFAULT '',
  `loginip` varchar(50) DEFAULT '',
  `logindate` int(10) DEFAULT '0',
  `loginmsg` varchar(255) DEFAULT '',
  `loginstate` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin_menu`;
CREATE TABLE `sd_admin_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `cname` varchar(50) DEFAULT '',
  `aname` varchar(50) DEFAULT '',
  `dname` varchar(255) DEFAULT '',
  `followid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin_part
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin_part`;
CREATE TABLE `sd_admin_part` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `page_list` text,
  `cate_list` text,
  `pagelever` varchar(50) DEFAULT '',
  `pagelock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_alias
-- ----------------------------
DROP TABLE IF EXISTS `sd_alias`;
CREATE TABLE `sd_alias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) DEFAULT '',
  `app` varchar(255) DEFAULT '',
  `sid` int(10) DEFAULT '0',
  `types` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_attachment
-- ----------------------------
DROP TABLE IF EXISTS `sd_attachment`;
CREATE TABLE `sd_attachment` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '1：图片，2：视频，3：其他文件',
  `file_url` varchar(255) DEFAULT '',
  `file_name` varchar(255) DEFAULT '' COMMENT '文件名',
  `file_ext` varchar(50) DEFAULT '' COMMENT '后缀',
  `file_size` int(10) DEFAULT '0',
  `file_type` int(10) DEFAULT '0' COMMENT '1：图片，2：视频，3：其他',
  `file_update` int(10) DEFAULT '0' COMMENT '上传的日期',
  `file_local` int(10) DEFAULT '0' COMMENT '存放位置（1：本地，2：阿里云，3：七牛云）',
  `file_adminid` int(10) DEFAULT '0',
  `file_userid` int(10) DEFAULT '0',
  `file_ip` varchar(50) DEFAULT '' COMMENT '传者上IP',
  `gid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`file_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_attachment_group
-- ----------------------------
DROP TABLE IF EXISTS `sd_attachment_group`;
CREATE TABLE `sd_attachment_group` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_auth
-- ----------------------------
DROP TABLE IF EXISTS `sd_auth`;
CREATE TABLE `sd_auth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ckey` varchar(50) DEFAULT '',
  `cval` text,
  `cdate` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_auto_key
-- ----------------------------
DROP TABLE IF EXISTS `sd_auto_key`;
CREATE TABLE `sd_auto_key` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `reply_type` int(10) DEFAULT '0',
  `reply_text` text,
  `reply_id` int(10) DEFAULT '0',
  `matchtype` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_auto_reply
-- ----------------------------
DROP TABLE IF EXISTS `sd_auto_reply`;
CREATE TABLE `sd_auto_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reply_key` varchar(50) DEFAULT '',
  `reply_type` int(10) DEFAULT '0',
  `reply_text` text,
  `reply_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_badword
-- ----------------------------
DROP TABLE IF EXISTS `sd_badword`;
CREATE TABLE `sd_badword` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `words` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_bbs
-- ----------------------------
DROP TABLE IF EXISTS `sd_bbs`;
CREATE TABLE `sd_bbs` (
  `bbs_id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `islock` tinyint(4) DEFAULT '0',
  `ontop` tinyint(4) DEFAULT '0',
  `isnice` tinyint(4) DEFAULT '0',
  `hits` int(10) DEFAULT '0',
  `replynum` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`bbs_id`),
  KEY `title` (`title`),
  KEY `islock` (`islock`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_bbs_cate
-- ----------------------------
DROP TABLE IF EXISTS `sd_bbs_cate`;
CREATE TABLE `sd_bbs_cate` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `catename` varchar(50) DEFAULT '',
  `seotitle` varchar(255) DEFAULT '',
  `seokey` varchar(255) DEFAULT '',
  `seodesc` varchar(255) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `isshow` tinyint(4) DEFAULT '0',
  `post_group` varchar(255) DEFAULT '',
  `view_group` varchar(255) DEFAULT '',
  `reply_group` varchar(255) DEFAULT '',
  `cate_icon` varchar(255) DEFAULT '',
  PRIMARY KEY (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_bbs_reply
-- ----------------------------
DROP TABLE IF EXISTS `sd_bbs_reply`;
CREATE TABLE `sd_bbs_reply` (
  `replyid` int(10) NOT NULL AUTO_INCREMENT,
  `bbsid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `istopic` tinyint(4) DEFAULT '0',
  `content` mediumtext,
  `reply` text,
  `createdate` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`replyid`),
  KEY `bbsid` (`bbsid`),
  KEY `istopic` (`istopic`),
  KEY `islock` (`islock`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_book
-- ----------------------------
DROP TABLE IF EXISTS `sd_book`;
CREATE TABLE `sd_book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `truename` varchar(50) DEFAULT '',
  `tel` varchar(20) DEFAULT '',
  `mobile` varchar(11) DEFAULT '',
  `remark` text,
  `reply` text,
  `ontop` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `postip` varchar(20) DEFAULT '',
  `replydate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_category
-- ----------------------------
DROP TABLE IF EXISTS `sd_category`;
CREATE TABLE `sd_category` (
  `cateid` int(11) NOT NULL AUTO_INCREMENT,
  `catename` varchar(50) DEFAULT '',
  `followid` int(10) DEFAULT '0',
  `catenum` int(10) DEFAULT '0',
  `catetype` int(11) DEFAULT '0',
  `cateurl` varchar(255) DEFAULT '',
  `catepage` int(10) DEFAULT '0',
  `catelist` varchar(255) DEFAULT '',
  `cateshow` varchar(255) DEFAULT '',
  `catetitle` varchar(255) DEFAULT '',
  `catekey` varchar(255) DEFAULT '',
  `catedesc` varchar(255) DEFAULT '',
  `isshow` int(10) DEFAULT '0',
  `isblank` int(10) DEFAULT '0',
  `isfilter` int(10) DEFAULT '0',
  `cate_extend` int(10) DEFAULT '0',
  `mycatepic` varchar(255) DEFAULT '',
  `catedomain` varchar(255) DEFAULT '',
  `cate_groupid` varchar(50) DEFAULT '',
  `myename` varchar(255) DEFAULT '',
  PRIMARY KEY (`cateid`),
  KEY `followid` (`followid`),
  KEY `ordnum` (`catenum`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_category_field
-- ----------------------------
DROP TABLE IF EXISTS `sd_category_field`;
CREATE TABLE `sd_category_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `field_title` varchar(50) DEFAULT '',
  `field_key` varchar(50) DEFAULT '',
  `field_type` int(50) DEFAULT '0',
  `field_length` int(10) DEFAULT '0',
  `field_upload_type` int(10) DEFAULT '0',
  `field_default` varchar(255) DEFAULT '',
  `field_list` text,
  `field_sql` varchar(255) DEFAULT '',
  `field_tips` varchar(255) DEFAULT '',
  `field_rule` int(10) DEFAULT '0',
  `field_radio` int(10) DEFAULT '0',
  `field_editor` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_city
-- ----------------------------
DROP TABLE IF EXISTS `sd_city`;
CREATE TABLE `sd_city` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT COMMENT '区域主键',
  `name` varchar(20) DEFAULT '' COMMENT '区域名称',
  `followid` int(10) DEFAULT '0' COMMENT '上级',
  `ordnum` int(10) DEFAULT '0',
  `site_open` smallint(1) DEFAULT '0' COMMENT '是否开启分站功能',
  `site_root` varchar(50) DEFAULT '' COMMENT '路径',
  `site_domain` smallint(1) DEFAULT '0' COMMENT '是否绑定域名',
  `issys` smallint(1) DEFAULT '0',
  `site_self` smallint(1) DEFAULT '0',
  `site_key` varchar(255) DEFAULT '',
  `site_desc` varchar(255) DEFAULT '',
  `site_title` varchar(255) DEFAULT '',
  PRIMARY KEY (`cateid`),
  KEY `followid` (`followid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_code
-- ----------------------------
DROP TABLE IF EXISTS `sd_code`;
CREATE TABLE `sd_code` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT '',
  `code` varchar(50) DEFAULT '',
  `types` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `isover` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_config
-- ----------------------------
DROP TABLE IF EXISTS `sd_config`;
CREATE TABLE `sd_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) DEFAULT '0',
  `ckey` varchar(50) DEFAULT '',
  `ctitle` varchar(50) DEFAULT '',
  `cvalue` text,
  `ordnum` int(10) DEFAULT '0',
  `ctype` int(10) DEFAULT '0',
  `dvalue` text,
  `dtext` varchar(255) DEFAULT NULL,
  `rtype` int(10) DEFAULT '0',
  `utype` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `issys` int(10) DEFAULT '0',
  `ishide` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`),
  KEY `gid` (`gid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_config_group
-- ----------------------------
DROP TABLE IF EXISTS `sd_config_group`;
CREATE TABLE `sd_config_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `gkey` varchar(50) DEFAULT '',
  `islock` int(10) DEFAULT '0',
  `types` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_content
-- ----------------------------
DROP TABLE IF EXISTS `sd_content`;
CREATE TABLE `sd_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `pic` varchar(255) DEFAULT '',
  `ispic` int(10) DEFAULT '0',
  `classid` int(10) DEFAULT '0',
  `hits` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `ontop` int(10) DEFAULT '0',
  `isnice` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `upnum` int(10) DEFAULT '0',
  `downnum` int(10) DEFAULT '0',
  `isurl` int(10) DEFAULT '0',
  `url` varchar(255) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  `lastupdate` int(10) DEFAULT '0',
  `intro` text,
  `tags` varchar(255) DEFAULT '',
  `seotitle` varchar(255) DEFAULT '',
  `seokey` varchar(255) DEFAULT '',
  `seodesc` varchar(255) DEFAULT '',
  `alias` varchar(50) DEFAULT '',
  `showskin` varchar(255) DEFAULT '',
  `extend` text,
  `subid` varchar(255) DEFAULT '',
  `adminid` int(10) DEFAULT '0',
  `view_groupid` varchar(50) DEFAULT '',
  `isauto` int(10) DEFAULT '0',
  `tagslist` varchar(500) DEFAULT '',
  `ispush` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `where` (`islock`,`classid`,`id`,`subid`),
  KEY `order` (`id`,`ontop`,`ordnum`,`classid`,`islock`),
  KEY `ontop` (`id`,`ontop`),
  KEY `ordnum` (`id`,`ordnum`),
  KEY `isauto` (`islock`,`isauto`,`createdate`),
  KEY `subid` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_extend
-- ----------------------------
DROP TABLE IF EXISTS `sd_extend`;
CREATE TABLE `sd_extend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_extend_field
-- ----------------------------
DROP TABLE IF EXISTS `sd_extend_field`;
CREATE TABLE `sd_extend_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(10) DEFAULT '0',
  `field_title` varchar(50) DEFAULT '',
  `field_key` varchar(50) DEFAULT '',
  `field_type` int(10) DEFAULT '0',
  `field_list` text,
  `field_default` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_form
-- ----------------------------
DROP TABLE IF EXISTS `sd_form`;
CREATE TABLE `sd_form` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `tablename` varchar(255) DEFAULT '',
  `add_skins` varchar(255) DEFAULT '',
  `list_skins` varchar(255) DEFAULT '',
  `show_skins` varchar(255) DEFAULT '',
  `seotitle` varchar(255) DEFAULT '',
  `seokey` varchar(255) DEFAULT '',
  `seodesc` varchar(255) DEFAULT '',
  `iscode` int(10) DEFAULT '0',
  `backway` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `mid` int(10) DEFAULT '0',
  `isuser` smallint(1) DEFAULT '0',
  `publish_state` smallint(1) DEFAULT '0',
  `publish_limit` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_form_field
-- ----------------------------
DROP TABLE IF EXISTS `sd_form_field`;
CREATE TABLE `sd_form_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `form_id` int(10) DEFAULT '0',
  `field_title` varchar(50) DEFAULT '',
  `field_key` varchar(50) DEFAULT '',
  `field_type` int(50) DEFAULT '0',
  `field_length` int(10) DEFAULT '0',
  `field_upload_type` int(10) DEFAULT '0',
  `field_default` varchar(255) DEFAULT '',
  `field_list` text,
  `field_sql` varchar(255) DEFAULT '',
  `field_tips` varchar(255) DEFAULT '',
  `field_rule` int(10) DEFAULT '0',
  `field_radio` int(10) DEFAULT '0',
  `field_editor` int(10) DEFAULT '0',
  `field_filter` int(10) DEFAULT '0',
  `field_table` varchar(50) DEFAULT '',
  `field_join` varchar(255) DEFAULT '',
  `field_where` varchar(255) DEFAULT '',
  `field_order` varchar(255) DEFAULT '',
  `field_value` varchar(50) DEFAULT '',
  `field_label` varchar(50) DEFAULT '',
  `islist` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_form_resume
-- ----------------------------
DROP TABLE IF EXISTS `sd_form_resume`;
CREATE TABLE `sd_form_resume` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `postip` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `lastupdate` int(10) DEFAULT '0',
  `mytitle` varchar(255) DEFAULT '',
  `mytruename` varchar(50) DEFAULT '',
  `mysex` int(10) DEFAULT '0',
  `myage` int(10) DEFAULT '0',
  `mymobile` varchar(255) DEFAULT '',
  `myeducation` int(10) DEFAULT '0',
  `mywork_exp` text,
  `myintro` text,
  `userid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_inquiry
-- ----------------------------
DROP TABLE IF EXISTS `sd_inquiry`;
CREATE TABLE `sd_inquiry` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `truename` varchar(50) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `remark` text,
  `createdate` int(10) DEFAULT '0',
  `isover` int(10) DEFAULT '0',
  `postip` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_link
-- ----------------------------
DROP TABLE IF EXISTS `sd_link`;
CREATE TABLE `sd_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webname` varchar(50) DEFAULT '',
  `weblogo` varchar(255) DEFAULT '',
  `weburl` varchar(255) DEFAULT '',
  `islogo` int(10) DEFAULT '0',
  `classid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_mass
-- ----------------------------
DROP TABLE IF EXISTS `sd_mass`;
CREATE TABLE `sd_mass` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` int(10) DEFAULT '0',
  `mass_type` int(10) DEFAULT '0',
  `mass_text` text,
  `mass_id` int(10) DEFAULT '0',
  `isover` int(10) DEFAULT '0',
  `total_num` int(10) DEFAULT '0',
  `success_num` int(10) DEFAULT '0',
  `fail_num` int(10) DEFAULT '0',
  `msg_id` varchar(255) DEFAULT '',
  `post_type` smallint(2) DEFAULT '0',
  `wxname` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_mater
-- ----------------------------
DROP TABLE IF EXISTS `sd_mater`;
CREATE TABLE `sd_mater` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `media_id` varchar(255) DEFAULT '',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_mater_data
-- ----------------------------
DROP TABLE IF EXISTS `sd_mater_data`;
CREATE TABLE `sd_mater_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `pic` varchar(255) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `content` text,
  `url` varchar(1000) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `piclist` text,
  `media_id` varchar(255) DEFAULT '',
  `media_date` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_model
-- ----------------------------
DROP TABLE IF EXISTS `sd_model`;
CREATE TABLE `sd_model` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `tablename` varchar(50) DEFAULT '',
  `model_desc` varchar(255) DEFAULT '',
  `list_skins` varchar(255) DEFAULT '',
  `show_skins` varchar(255) DEFAULT '',
  `form_group` varchar(255) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `issys` int(10) DEFAULT '0',
  `leverstate` smallint(1) DEFAULT '0',
  `buystate` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_model_field
-- ----------------------------
DROP TABLE IF EXISTS `sd_model_field`;
CREATE TABLE `sd_model_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `model_id` int(10) DEFAULT '0',
  `field_title` varchar(50) DEFAULT '',
  `field_key` varchar(50) DEFAULT '',
  `field_type` int(50) DEFAULT '0',
  `field_length` int(10) DEFAULT '0',
  `field_upload_type` int(10) DEFAULT '0',
  `field_default` varchar(255) DEFAULT '',
  `field_list` text,
  `field_sql` varchar(255) DEFAULT '',
  `field_tips` varchar(255) DEFAULT '',
  `field_rule` int(10) DEFAULT '0',
  `field_radio` int(10) DEFAULT '0',
  `field_editor` int(10) DEFAULT '0',
  `field_group` int(10) DEFAULT '0',
  `field_filter` int(10) DEFAULT '0',
  `field_table` varchar(50) DEFAULT '',
  `field_join` varchar(255) DEFAULT '',
  `field_where` varchar(255) DEFAULT '',
  `field_order` varchar(255) DEFAULT '',
  `field_value` varchar(50) DEFAULT '',
  `field_label` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `issys` int(10) DEFAULT '0',
  `isbase` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_model_job
-- ----------------------------
DROP TABLE IF EXISTS `sd_model_job`;
CREATE TABLE `sd_model_job` (
  `jobid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `content` text,
  `work_address` varchar(50) DEFAULT '',
  `work_nature` varchar(50) DEFAULT '',
  `work_education` varchar(50) DEFAULT '',
  `work_money` varchar(50) DEFAULT '',
  `work_age` varchar(50) DEFAULT '',
  `work_num` varchar(50) DEFAULT '',
  PRIMARY KEY (`jobid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_model_news
-- ----------------------------
DROP TABLE IF EXISTS `sd_model_news`;
CREATE TABLE `sd_model_news` (
  `newsid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `content` text,
  PRIMARY KEY (`newsid`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_model_page
-- ----------------------------
DROP TABLE IF EXISTS `sd_model_page`;
CREATE TABLE `sd_model_page` (
  `pageid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `piclist` text,
  `content` text,
  PRIMARY KEY (`pageid`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_model_pro
-- ----------------------------
DROP TABLE IF EXISTS `sd_model_pro`;
CREATE TABLE `sd_model_pro` (
  `proid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `content` text,
  `piclist` text,
  PRIMARY KEY (`proid`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_onlinepay
-- ----------------------------
DROP TABLE IF EXISTS `sd_onlinepay`;
CREATE TABLE `sd_onlinepay` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) DEFAULT '',
  `pay_no` varchar(50) DEFAULT '',
  `paytype` smallint(1) DEFAULT '0',
  `ispay` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `payway` varchar(100) DEFAULT '',
  `paymoney` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order
-- ----------------------------
DROP TABLE IF EXISTS `sd_order`;
CREATE TABLE `sd_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) DEFAULT '',
  `pro_name` varchar(255) DEFAULT '',
  `pro_num` int(10) DEFAULT '0',
  `pro_price` decimal(10,2) DEFAULT '0.00',
  `truename` varchar(50) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `remark` text,
  `createdate` int(10) DEFAULT '0',
  `isover` int(10) DEFAULT '0',
  `ispay` int(10) DEFAULT '0',
  `payway` varchar(50) DEFAULT '',
  `trade_no` varchar(255) DEFAULT '',
  `postip` varchar(50) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_buy
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_buy`;
CREATE TABLE `sd_order_buy` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `paymoney` decimal(10,2) DEFAULT '0.00',
  `cid` int(10) DEFAULT '0',
  `ispay` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_plug_map
-- ----------------------------
DROP TABLE IF EXISTS `sd_plug_map`;
CREATE TABLE `sd_plug_map` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `point_x` varchar(50) DEFAULT '',
  `point_y` varchar(50) DEFAULT '',
  `mapkey` varchar(255) DEFAULT '',
  `height` int(10) DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_plug_service
-- ----------------------------
DROP TABLE IF EXISTS `sd_plug_service`;
CREATE TABLE `sd_plug_service` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `qq` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_sitelink
-- ----------------------------
DROP TABLE IF EXISTS `sd_sitelink`;
CREATE TABLE `sd_sitelink` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `num` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_tags
-- ----------------------------
DROP TABLE IF EXISTS `sd_tags`;
CREATE TABLE `sd_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `hits` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_temp_mail
-- ----------------------------
DROP TABLE IF EXISTS `sd_temp_mail`;
CREATE TABLE `sd_temp_mail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `mail_title` varchar(255) DEFAULT '',
  `mail_content` text,
  `islock` int(10) DEFAULT '0',
  `mkey` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `mkey` (`mkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user
-- ----------------------------
DROP TABLE IF EXISTS `sd_user`;
CREATE TABLE `sd_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT '',
  `upass` varchar(50) DEFAULT '',
  `umoney` decimal(10,2) DEFAULT '0.00',
  `uemail` varchar(50) DEFAULT '',
  `uface` varchar(255) DEFAULT '',
  `uid` int(11) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `regdate` int(10) DEFAULT '0',
  `regip` varchar(50) DEFAULT '',
  `lastlogindate` int(10) DEFAULT '0',
  `lastloginip` varchar(50) DEFAULT '',
  `logintimes` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uname` (`uname`),
  KEY `uemail` (`uemail`),
  KEY `uid` (`uid`),
  KEY `islock` (`islock`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_buy
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_buy`;
CREATE TABLE `sd_user_buy` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_group
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_group`;
CREATE TABLE `sd_user_group` (
  `gid` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_login
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_login`;
CREATE TABLE `sd_user_login` (
  `oid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `type` varchar(10) DEFAULT '',
  `openid` varchar(255) DEFAULT '',
  `unionid` varchar(255) DEFAULT '',
  `session_key` varchar(255) DEFAULT '',
  `loginkey` varchar(255) DEFAULT '',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_money
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_money`;
CREATE TABLE `sd_user_money` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `types` smallint(1) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `oldmoney` decimal(10,2) DEFAULT '0.00',
  `newmoney` decimal(10,2) DEFAULT '0.00',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_pay
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_pay`;
CREATE TABLE `sd_user_pay` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `paymoney` decimal(10,2) DEFAULT '0.00',
  `createdate` int(10) DEFAULT '0',
  `ispay` smallint(1) DEFAULT '0',
  `payway` varchar(50) DEFAULT '',
  `paydate` int(10) DEFAULT '0',
  `trade_no` varchar(255) DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_wx_menu
-- ----------------------------
DROP TABLE IF EXISTS `sd_wx_menu`;
CREATE TABLE `sd_wx_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT '',
  `followid` int(10) DEFAULT '0',
  `sonnum` int(10) DEFAULT '0',
  `reply_type` int(10) DEFAULT '0',
  `reply_text` text,
  `reply_id` int(10) DEFAULT '0',
  `reply_url` text,
  `ordnum` int(10) DEFAULT '0',
  `appid` varchar(255) DEFAULT '',
  `pagepath` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `sd_ad` VALUES ('1', 'Pc站Banner', '{\"1\":{\"image\":\"/upfile/2017/04/1492503108813.jpg\",\"url\":\"\"},\"2\":{\"image\":\"/upfile/2017/04/1492503108756.jpg\",\"url\":\"\"},\"3\":{\"image\":\"/upfile/2017/04/1492503108243.jpg\",\"url\":\"\"}}', '0', '1', 'pc');
INSERT INTO `sd_ad` VALUES ('2', '手机站Banner', '{\"1\":{\"image\":\"/upfile/2017/04/1492761538583.jpg\",\"url\":\"\"},\"2\":{\"image\":\"/upfile/2017/04/1492761750944.jpg\",\"url\":\"\"},\"3\":{\"image\":\"/upfile/2017/04/1492762096579.jpg\",\"url\":\"\"}}', '0', '1', 'mobile');
INSERT INTO `sd_ad` VALUES ('3', '小程序Banner', '{\"1\":{\"image\":\"/upfile/a1.jpg\",\"desc\":\"\",\"url\":\"\"},\"2\":{\"image\":\"/upfile/b1.jpg\",\"desc\":\"\",\"url\":\"\"},\"3\":{\"image\":\"/upfile/c1.jpg\",\"desc\":\"\",\"url\":\"\"}}', '3', '1', 'open');
INSERT INTO `sd_admin_menu` VALUES ('1', '网站管理', '', '', '', '0', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('2', '栏目管理', '', '', '', '0', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('3', '内容管理', '', '', '', '0', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('4', '扩展管理', '', '', '', '0', '15', '1');
INSERT INTO `sd_admin_menu` VALUES ('6', '模板插件', '', '', '', '0', '17', '1');
INSERT INTO `sd_admin_menu` VALUES ('7', '网站设置', 'config', 'index', '', '1', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('17', '设置分组', 'configgroup', 'index', '', '70', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('20', '模型管理', 'model', 'index', '', '2', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('19', '栏目管理', 'category', 'index', '', '2', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('21', '内容管理', 'content', 'index', '', '3', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('24', '回收站', 'content', 'recycle', '', '3', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('25', '友情链接', 'link', 'index', '', '4', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('26', '留言管理', 'book', 'index', '', '4', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('31', '表单管理', 'form', 'index', '', '2', '7', '1');
INSERT INTO `sd_admin_menu` VALUES ('32', '询价管理', 'inquiry', 'index', '', '4', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('33', '订单管理', 'order', 'index', '', '4', '7', '1');
INSERT INTO `sd_admin_menu` VALUES ('34', '广告管理', 'ad', 'index', '', '4', '9', '1');
INSERT INTO `sd_admin_menu` VALUES ('35', '部门管理', 'part', 'index', '', '1', '7', '1');
INSERT INTO `sd_admin_menu` VALUES ('36', '插件列表', 'plug', 'index', '', '6', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('37', '后台用户', 'admin', 'index', '', '1', '9', '1');
INSERT INTO `sd_admin_menu` VALUES ('38', '模板管理', 'theme', 'index', '', '6', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('39', '后台菜单', 'menu', 'index', '', '70', '13', '1');
INSERT INTO `sd_admin_menu` VALUES ('40', '栏目扩展', 'catefield', 'index', '', '2', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('41', '区块管理', 'block', 'index', '', '3', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('42', '微信公众号', '', '', '', '0', '9', '1');
INSERT INTO `sd_admin_menu` VALUES ('43', '素材管理', 'wxmater', 'index', '', '42', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('44', '关注回复', 'wxsubscribe', 'index', '', '42', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('45', '自动回复', 'wxauto', 'index', '', '42', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('46', '关键字回复', 'wxkey', 'index', '', '42', '7', '1');
INSERT INTO `sd_admin_menu` VALUES ('47', '菜单管理', 'wxmenu', 'index', '', '42', '9', '1');
INSERT INTO `sd_admin_menu` VALUES ('48', '内容扩展', 'extend', 'index', '', '2', '9', '1');
INSERT INTO `sd_admin_menu` VALUES ('49', '标签管理', 'tags', 'index', '', '4', '11', '1');
INSERT INTO `sd_admin_menu` VALUES ('50', '群发管理', 'wxmass', 'index', '', '42', '11', '1');
INSERT INTO `sd_admin_menu` VALUES ('51', '管理日志', 'log', 'index', '', '70', '15', '1');
INSERT INTO `sd_admin_menu` VALUES ('52', '错误日志', 'logerror', 'index', '', '70', '17', '1');
INSERT INTO `sd_admin_menu` VALUES ('53', '邮件模板', 'mail', 'index', '', '6', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('54', '缓存管理', 'cache', 'index', '', '70', '21', '1');
INSERT INTO `sd_admin_menu` VALUES ('55', '内链管理', 'sitelink', 'index', '', '4', '13', '1');
INSERT INTO `sd_admin_menu` VALUES ('56', '会员管理', '', '', '', '0', '7', '1');
INSERT INTO `sd_admin_menu` VALUES ('57', '会员管理', 'user', 'index', '', '56', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('58', '会员组管理', 'usergroup', 'index', '', '56', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('59', '会员设置', 'userconfig', 'index', '', '56', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('61', '社区管理', '', '', '', '0', '11', '1');
INSERT INTO `sd_admin_menu` VALUES ('62', '社区设置', 'bbsconfig', 'index', '', '61', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('63', '社区分类', 'bbscate', 'index', '', '61', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('64', '主题管理', 'bbs', 'index', '', '61', '5', '1');
INSERT INTO `sd_admin_menu` VALUES ('65', '帖子管理', 'bbstopic', 'index', '', '61', '7', '1');
INSERT INTO `sd_admin_menu` VALUES ('66', '城市分站', '', '', '', '0', '13', '1');
INSERT INTO `sd_admin_menu` VALUES ('67', '分站设置', 'cityconfig', 'index', '', '66', '1', '1');
INSERT INTO `sd_admin_menu` VALUES ('68', '城市管理', 'city', 'index', '', '66', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('69', '接口设置', 'api', 'index', '', '1', '3', '1');
INSERT INTO `sd_admin_menu` VALUES ('70', '系统管理', 'api', 'index', '', '0', '19', '1');
INSERT INTO `sd_admin_menu` VALUES ('71', '财务管理', 'usermoney', 'index', '', '56', '7', '1');
INSERT INTO `sd_admin_menu` VALUES ('72', '充值记录', 'userpay', 'index', '', '56', '9', '1');
INSERT INTO `sd_admin_menu` VALUES ('73', '购买记录', 'userbuy', 'index', '', '56', '11', '1');
INSERT INTO `sd_admin_menu` VALUES ('74', '支付记录', 'useronline', 'index', '', '56', '13', '1');
INSERT INTO `sd_alias` VALUES ('1', 'book', 'other/book', '0', '0');
INSERT INTO `sd_alias` VALUES ('2', 'sitemap', 'other/sitemap', '0', '0');
INSERT INTO `sd_alias` VALUES ('3', 'search', 'other/search', '0', '0');
INSERT INTO `sd_alias` VALUES ('4', 'tags', 'other/tags', '0', '0');
INSERT INTO `sd_alias` VALUES ('5', 'user', 'user/index', '0', '0');
INSERT INTO `sd_alias` VALUES ('6', 'login', 'user/login', '0', '0');
INSERT INTO `sd_alias` VALUES ('7', 'reg', 'user/reg', '0', '0');
INSERT INTO `sd_alias` VALUES ('8', 'getpass', 'user/getpass', '0', '0');
INSERT INTO `sd_alias` VALUES ('9', 'editpass', 'user/editpass', '0', '0');
INSERT INTO `sd_alias` VALUES ('10', 'editemail', 'user/editemail', '0', '0');
INSERT INTO `sd_alias` VALUES ('11', 'out', 'user/out', '0', '0');
INSERT INTO `sd_alias` VALUES ('12', 'bbs', 'bbs/index', '0', '0');
INSERT INTO `sd_alias` VALUES ('13', 'bbsadd', 'bbs/add', '0', '0');
INSERT INTO `sd_alias` VALUES ('14', 'bbsshow', 'bbs/show', '0', '0');
INSERT INTO `sd_alias` VALUES ('15', 'bbsedit', 'bbs/edit', '0', '0');
INSERT INTO `sd_alias` VALUES ('16', 'myorder', 'user/myorder', '0', '0');
INSERT INTO `sd_alias` VALUES ('17', 'city', 'index/city', '0', '0');
INSERT INTO `sd_alias` VALUES ('18', 'taglist', 'other/taglist', '0', '0');
INSERT INTO `sd_alias` VALUES ('19', 'pay', 'user/pay', '0', '0');
INSERT INTO `sd_alias` VALUES ('20', 'mymoney', 'user/mymoney', '0', '0');
INSERT INTO `sd_attachment` VALUES ('1', '/upfile/2017/04/1491398238496.jpg', '1491398238496.jpg', '.jpg', '8835', '1', '1492502328', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('2', '/upfile/2017/04/1491398255999.jpg', '1491398255999.jpg', '.jpg', '5083', '1', '1492502328', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('3', '/upfile/2017/04/1491398267736.jpg', '1491398267736.jpg', '.jpg', '4882', '1', '1492502326', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('4', '/upfile/2017/04/1491398277385.jpg', '1491398277385.jpg', '.jpg', '7869', '1', '1492502326', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('5', '/upfile/2017/04/1491398288770.jpg', '1491398288770.jpg', '.jpg', '5695', '1', '1492502324', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('6', '/upfile/2017/04/1491398298642.jpg', '1491398298642.jpg', '.jpg', '7668', '1', '1492502324', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('7', '/upfile/2017/04/1491398308495.jpg', '1491398308495.jpg', '.jpg', '5701', '1', '1492502322', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('8', '/upfile/2017/04/1491398321540.jpg', '1491398321540.jpg', '.jpg', '5480', '1', '1492502322', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('9', '/upfile/2017/04/1491398337126.jpg', '1491398337126.jpg', '.jpg', '4086', '1', '1492502320', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('10', '/upfile/2017/04/1491398346730.jpg', '1491398346730.jpg', '.jpg', '5507', '1', '1492502318', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('11', '/upfile/2017/04/1491398356573.jpg', '1491398356573.jpg', '.jpg', '4831', '1', '1492502318', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('12', '/upfile/2017/04/1491398367681.jpg', '1491398367681.jpg', '.jpg', '4133', '1', '1492502316', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('13', '/upfile/2017/04/1492500653204.gif', '1492500653204.gif', '.gif', '5728', '1', '1492500654', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('14', '/upfile/2017/04/1492503108243.jpg', '1492503108243.jpg', '.jpg', '409724', '1', '1492503110', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('15', '/upfile/2017/04/1492503108756.jpg', '1492503108756.jpg', '.jpg', '521582', '1', '1492503110', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('16', '/upfile/2017/04/1492503108813.jpg', '1492503108813.jpg', '.jpg', '351520', '1', '1492503110', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('17', '/upfile/2017/04/1492507023188.jpg', '1492507023188.jpg', '.jpg', '205063', '1', '1492507024', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('18', '/upfile/2017/04/1492507035956.jpg', '1492507035956.jpg', '.jpg', '153742', '1', '1492507036', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('19', '/upfile/2017/04/1492507055451.jpg', '1492507055451.jpg', '.jpg', '190849', '1', '1492507056', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('20', '/upfile/2017/04/1492507065984.jpg', '1492507065984.jpg', '.jpg', '294781', '1', '1492507066', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('21', '/upfile/2017/04/1492507074262.jpg', '1492507074262.jpg', '.jpg', '223945', '1', '1492507076', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('22', '/upfile/2017/04/1492507085622.jpg', '1492507085622.jpg', '.jpg', '145046', '1', '1492507086', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('23', '/upfile/2017/04/1492742990964.jpg', '1492742990964.jpg', '.jpg', '409619', '1', '1492742992', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('24', '/upfile/2017/04/1492743018276.jpg', '1492743018276.jpg', '.jpg', '71954', '1', '1492743020', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('25', '/upfile/2017/04/1492743531971.jpg', '1492743531971.jpg', '.jpg', '597960', '1', '1492743532', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('26', '/upfile/2017/04/1492743548873.jpg', '1492743548873.jpg', '.jpg', '93669', '1', '1492743550', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('27', '/upfile/2017/04/1492743766725.jpg', '1492743766725.jpg', '.jpg', '545622', '1', '1492743768', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('28', '/upfile/2017/04/1492743784993.jpg', '1492743784993.jpg', '.jpg', '83646', '1', '1492743786', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('29', '/upfile/2017/04/1492743879620.jpg', '1492743879620.jpg', '.jpg', '1098889', '1', '1492743880', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('30', '/upfile/2017/04/1492743901960.jpg', '1492743901960.jpg', '.jpg', '86195', '1', '1492743902', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('31', '/upfile/2017/04/1492743980137.jpg', '1492743980137.jpg', '.jpg', '825122', '1', '1492743982', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('32', '/upfile/2017/04/1492743999965.jpg', '1492743999965.jpg', '.jpg', '64008', '1', '1492744000', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('33', '/upfile/2017/04/1492744083632.jpg', '1492744083632.jpg', '.jpg', '1234596', '1', '1492744084', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('34', '/upfile/2017/04/1492744101581.jpg', '1492744101581.jpg', '.jpg', '54582', '1', '1492744102', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('35', '/upfile/2017/04/1492744168834.jpg', '1492744168834.jpg', '.jpg', '1172994', '1', '1492744170', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('36', '/upfile/2017/04/1492744184244.jpg', '1492744184244.jpg', '.jpg', '106891', '1', '1492744186', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('37', '/upfile/2017/04/1492744749261.jpg', '1492744749261.jpg', '.jpg', '380769', '1', '1492744750', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('38', '/upfile/2017/04/1492744765394.jpg', '1492744765394.jpg', '.jpg', '58564', '1', '1492744766', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('39', '/upfile/2017/04/1492744807564.jpg', '1492744807564.jpg', '.jpg', '413850', '1', '1492744808', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('40', '/upfile/2017/04/1492744826659.jpg', '1492744826659.jpg', '.jpg', '71736', '1', '1492744828', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('41', '/upfile/2017/04/1492744858657.jpg', '1492744858657.jpg', '.jpg', '621169', '1', '1492744860', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('42', '/upfile/2017/04/1492744879591.jpg', '1492744879591.jpg', '.jpg', '78533', '1', '1492744880', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('43', '/upfile/2017/04/1492761538583.jpg', '1492761538583.jpg', '.jpg', '93023', '1', '1492771870', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('44', '/upfile/2017/04/1492761750944.jpg', '1492761750944.jpg', '.jpg', '117542', '1', '1492771878', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_attachment` VALUES ('45', '/upfile/2017/04/1492762096579.jpg', '1492762096579.jpg', '.jpg', '91996', '1', '1492771886', '1', '0', '0', '127.0.0.1', '0');
INSERT INTO `sd_auth` VALUES ('1', 'main', 'NjBhNlIycGYraytYa2VtdnFmNUROTFRCMXU3UVFHckpPV3dHL3BzUm1KTHhkQ1FacHBReVRIY2tKSnlpbWl1NEtPd2tRUEF6VDVHRFkwWmZtK2pGTW04QlFQaFE5TEIyZUpoMmY5MUEwbzhLZktDc2p5bHJDcnNFN1BYVzhOdXVMenpDcXNrQ3RpQkc4cGdidjBaVFVGK0VENCsxV1JRdVV5Uitld2VwRUNZS3RsSWNhVnBpeENXbVVZTDNKeFZZaTh3aGpEektFZVZTaE1Fc3BqOGtrZWg5V0pZN3FWVStqWFlxWHlVa3RSaWhwTHAvUUhFZmhMRFhGaTJab0lCNlo1TEN0eVNOQ2trRXRGNWd4ZEFrTDA1MnBuVXNObjhnbzA5WmV0ME1zWFUrUjVxWkN1ZTFCYjgzOExpbHRwdExCRFVjWFB2bFROdVUrc1NYN3ZxdGRkU0lqK0M5Tm91TEYzcDd4b09EMFFNNVU5SE1BVmFNSWUwa3lFZTRrSXJ5cTVyVjR6ZDgrcy8vbExTWUdtaGIreVNXLzl0L2RiL2xSd1haUVd5bTFnUDdVaGQ0ejNNZmV1c2ZCenVJc0UzRHlOcVVGYUcwdFVzN2J6WHBic2RSMUcvbGZMWFFIYUVtMmRGUWc1dmtyUFIzaERiZndGdndSM0dlQVhMcnRmK0FwUjlCVGhYMVk0cFE5Y0lCZUtWU3JQOWE5SEF3ZWxIenJSMTFoTS9hUnhsQzFhMnZ1R091eW02T01hd3ZmY2tJcGVmN1cvUjhIcUFBWE4vT1ZGdG5IS3ZyKzFSR1l6RXM0MGovRnBxL0F0YXVCQWRsT0UraVpkdnJ0WmtmWGMvL2dPeS9WZWl1U3p5QW5VY2FNaGttV1FhOFo0Z1ZhcEVna0pvVzBnc1YzVzVCS2hnSCtZejZkOWRNaDRxdnAxMXlkNEdkakdkdFpOOWVPemhrRkh6ZGtrOTh1YWJ4ZzV1bHFqT05acUNXeHBOeVlHcVlSdllNM2tsVGRZN0xkYmZxUlI0MnQ0RjlibWhSZ2QwTDlXTjQ0R0wrT04yMTQ4Y2RiZWRrRGlaZWtoUC9YU0JsczV6RG9hbitCVE9rTGRxWDM5WlNlcm8xUFVTL1FmSDFVYnlqdmg2MmxMMmxuK2hBTGpiTXRnbXlUOUl5Q3FMQVBDZEFEWG4yaVJwRS9hbDIyTy8wWjdGV2RsK0ErRmdSS0I2a05INTZUWjdURFMyVHFrb3lzOHdYWW5nb0RHUXJmN1lSWHNXUG1jWUpMdXZabTlJUm1BMURKdDNlckdSbVNPYW51cG1pL2hXMHl5OG85R1VuS1UvQ0FEYTFPSnF0ODdzU0MzN085bFNtZW9ETzVXWmdVNzZzSHRVQzQ5cmVJdUptSnV3OXBLVitPRnNIMTlzaEQ1M283RENWTzVXZjNobStsVEt3bGJTQTFGMGdJUnBLc203dXdrN1JKQTdGYWdBdGxkNWJJTzdXZHdKVE9FV2pCSzg4a2hzbXZRNnFiWjczVk5wVUFJOWZXL2RHT2hla2R2TXo5a2lkL1E', 'MDZjMXdleWYvNG9WbFcvRHZraVNkSWZMQ3ZRTndFSnc0VW94WmZCdVFjMGdkb3M3dnRueQ');
INSERT INTO `sd_auto_reply` VALUES ('1', 'subscribe', '0', '', '0');
INSERT INTO `sd_auto_reply` VALUES ('2', 'auto', '0', '', '0');
INSERT INTO `sd_badword` VALUES ('1', '');
INSERT INTO `sd_category` VALUES ('1', '关于我们', '0', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '/upfile/2017/04/1492507065984.jpg', '', '', '');
INSERT INTO `sd_category` VALUES ('2', '服务项目', '0', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '/upfile/2017/04/1492507074262.jpg', '', '', '');
INSERT INTO `sd_category` VALUES ('3', '新闻中心', '0', '0', '1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '/upfile/2017/04/1492507085622.jpg', '', '', '');
INSERT INTO `sd_category` VALUES ('4', '客户案例', '0', '0', '2', '', '20', '', '', '', '', '', '1', '0', '0', '0', '/upfile/2017/04/1492507023188.jpg', '', '', '');
INSERT INTO `sd_category` VALUES ('5', '人才招聘', '0', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '/upfile/2017/04/1492507055451.jpg', '', '', '');
INSERT INTO `sd_category` VALUES ('6', '联系我们', '0', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('7', '公司简介', '1', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('8', '企业文化', '1', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('9', '公司新闻', '3', '0', '1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('10', '行业资讯', '3', '0', '1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('11', '集团公司', '4', '0', '2', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('12', '婚纱摄影', '4', '0', '2', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('13', '医疗教育', '4', '0', '2', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('14', '餐饮美食', '4', '0', '2', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('15', '网站建设', '2', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('16', '运营推广', '2', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('17', '营销策划', '2', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('18', '品牌管理', '2', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('19', '人才理念', '5', '0', '-1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('20', '招聘信息', '5', '0', '3', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category` VALUES ('21', '媒体报道', '3', '0', '1', '', '20', '', '', '', '', '', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `sd_category_field` VALUES ('1', '栏目图片', 'mycatepic', '5', '0', '1', '', '', 'varchar(255) NOT NULL', '', '0', '1', '0', '0', '1');
INSERT INTO `sd_category_field` VALUES ('2', '英文名称', 'myename', '1', '0', '0', '', '', '', '建议一级栏目填写', '0', '0', '0', '0', '1');
INSERT INTO `sd_config` VALUES ('1', '1', 'web_line', '网站设置', '', '1', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('2', '1', 'web_open', '网站开关', '1', '3', '6', '网站开启|1,网站关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('3', '1', 'web_close', '关闭原因', '临时维护', '5', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('4', '1', 'web_name', '网站名称', '模板编号20170102', '7', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('5', '1', 'web_logo', '网站Logo', '/upfile/2017/04/1492500653204.gif', '9', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('6', '1', 'web_icp', 'ICP备案号', '', '13', '1', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('7', '1', 'seo_line', '优化设置', '', '23', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('8', '1', 'seo_title', '优化标题', '', '25', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('9', '1', 'seo_key', '网站关键字', '', '27', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('10', '1', 'seo_desc', '网站描述', '', '29', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('11', '2', 'url_mode', 'Url模式', '1', '0', '6', '普通模式（例: /?m=home&amp;c=index&amp;a=index）|1,PathInfo模式（例: /index.php/home/index/index.html）|2,伪静态模式（例: /home/index/index.html）|3', '', '2', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('12', '2', 'url_mid', 'Url间隔符', '/', '0', '8', '/|/,-|-,_|_', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('13', '2', 'url_ext', 'Url后缀', '.html', '0', '8', '无后缀|,.html|.html', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('14', '3', 'mail_type', '发送方式', '0', '0', '6', '关闭发邮件|0,通过PHP的Mail函数发送|1,通过SOCKET连接SMTP服务器发送(支持SMTP验证) |2,通过PHP函数SMTP发送(仅Windows主机下有效不支持SMTP验证)|3', '', '2', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('15', '3', 'mail_name', '发件人姓名', 'IT平民', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('16', '3', 'mail_sign', '邮件签名', '测试签名', '0', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('17', '3', 'mail_spilt', '邮件头分隔符', '1', '0', '6', '使用CRLF作为分隔符(通常为Windows主机)|1,使用LF作为分隔符(通常为Unix/Linux主机)|2,使用CR作为分隔符(通常为Mac主机)|3', '', '2', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('18', '3', 'mail_smtp', 'SMTP服务器', '', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('19', '3', 'mail_user', '用户名', '', '0', '1', '', '填写邮箱全称，如：test@qq.com', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('20', '3', 'mail_pass', '密码/授权码', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('21', '3', 'mail_auth', '验证', '1', '0', '6', '是|1,否|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('22', '3', 'mail_port', '端口', '25', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('23', '4', 'upload_line', '上传设置', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('24', '4', 'upload_image_max', '图像最大上传', '5', '0', '1', '', '单位：M', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('25', '4', 'upload_video_max', '视频最大上传', '10', '0', '1', '', '单位：M', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('26', '4', 'upload_file_max', '附件最大上传', '20', '0', '1', '', '单位：M', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('27', '4', 'upload_file_folder', '储存方式', '2', '0', '6', '按 年 目录，如：2016/14731414801.jpg|1,按 年/月 目录，如：2016/10/14731414801.jpg|2,按 年/月/日 目录，如：2016/10/21/14731414801.jpg|3', '', '2', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('28', '4', 'thumb_line', '压缩设置', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('29', '4', 'thumb_open', '等比压缩', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('30', '4', 'thumb_min', '压缩宽度', '1000', '0', '1', '', '图片会被压缩成这个宽度', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('31', '4', 'water_line', '水印设置', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('32', '4', 'water_open', '水印开关', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('33', '4', 'water_width', '最小宽度', '400', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('34', '4', 'water_height', '最小高度', '400', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('35', '4', 'water_opacity', '透明度', '60', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('36', '4', 'water_position', '水印位置', '0', '0', '8', '随机显示|0,顶部居左|1,顶部居中|2,顶部居右|3,中部居左|4,中部居中|5,中部居右|6,底部居左|7,底部居中|8,底部居右|9', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('37', '4', 'water_logo', '水印Logo', '', '0', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('38', '5', 'mobile_open', '开关', '0', '1', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('39', '5', 'mobile_domain', '绑定域名', '', '5', '1', '', '例：m.baidu.com', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('40', '6', 'weixin_appid', 'AppID(应用ID)', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('41', '6', 'weixin_appsecret', 'AppSecret(应用密钥)', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('42', '6', 'weixin_token', 'Token(令牌)', '', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('43', '6', 'weixin_id', '公众号的微信号', '', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('44', '6', 'weixin_qrcode', '公众号二维码', '', '0', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('45', '7', 'link_logo', 'LOGO链接', '1', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('46', '7', 'link_class', '分类开关', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('47', '7', 'link_class_data', '链接分类', '首页链接|1\r\n合作伙伴|2', '0', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('48', '8', 'ct_company', '公司名称', '成都某某网络科技有限公司', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('49', '8', 'ct_tel', '服务热线', '400-1234-5678', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('50', '8', 'ct_fax', '传真号码', '', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('51', '8', 'ct_mobile', '手机号码', '', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('52', '8', 'ct_email', '电子邮箱', '', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('53', '8', 'ct_address', '公司地址', '', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('54', '5', 'mobile_auto', '自动识别', '1', '7', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('55', '5', 'mobile_logo', '手机站LOGO', '/upfile/mobile.png', '9', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('56', '3', 'mail_admin', '管理员邮箱', '', '0', '1', '', '不能和上面的用户名相同', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('57', '2', 'url_line', '路由隐射', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('58', '2', 'url_list', '模型列表页', 'list', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('59', '2', 'url_show', '模型内容页', 'show', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('60', '9', 'admin_code', '后台登录验证码', '1', '2', '6', '图形验证码|1,谷歌验证码|3,关闭|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('61', '9', 'admin_logintimes', '登录尝试次数', '5', '4', '1', '', '超过次数后禁止登录', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('62', '9', 'admin_log', '自动清理日志时间', '60', '5', '1', '', '单位为天，超过多少天的自动清理', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('63', '1', 'count_line', '流量统计', '', '31', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('64', '1', 'count_code', '统计代码', '', '33', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('65', '1', 'home_line', '其他设置', '', '35', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('66', '1', 'home_video', '首页视频', 'http://img.ksbbs.com/asset/Mon_1605/25d705200a4eab4.mp4', '11', '4', '', '请上传mp4格式视频，大小建议5M以内', '1', '3', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('67', '10', 'pay_open', '接口状态', '0', '1', '6', '开启|1,关闭|0', '关闭后以下设置无效，在线支付接口均需要企业（含个体工商户）身份才能申请到', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('68', '10', 'pay_alipay_line', '支付宝接口（含电脑网站支付和手机网站支付）', '', '3', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('69', '10', 'pay_alipay_open', '是否开启', '0', '5', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('70', '10', 'pay_alipay_appid', 'AppID', '', '7', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('73', '10', 'pay_alipay_biz', '接口授权码', '', '11', '5', '', '支付宝支付接口授权码通过官网购买，未授权时接只能支付0.01元', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('74', '10', 'pay_wxpay_line', '微信支付接口（含扫码支付、公众号支付和微信H5支付）', '', '13', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('75', '10', 'pay_wxpay_open', '是否开启', '0', '15', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('76', '10', 'pay_wxpay_appid', '商户号', '', '17', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('77', '10', 'pay_wxpay_key', '密钥', '', '19', '5', '', '长度为32位，必须包含：大小写字母和数字', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('78', '10', 'pay_wxpay_biz', '接口授权码', '', '21', '5', '', '微信支付接口授权码通过官网购买，未授权时接只能支付0.01元', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('79', '1', 'web_domain', '站点主域名', '', '19', '1', '', '例：www.baidu.com，使用栏目绑定域名时，必须配置主域名', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('80', '1', 'content_subid', '内容副栏目', '0', '37', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('81', '11', 'file_way', '存储方式', 'local', '0', '8', '本地存储|local,阿里云Oss|oss,七牛云|qiniu', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('82', '11', 'file_oss_line', '阿里云OSS', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('83', '11', 'file_oss_appid', 'Access Key ID', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('84', '11', 'file_oss_appkey', 'Access Key Secret', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('85', '11', 'file_oss_bucket', 'Bucket', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('86', '11', 'file_oss_domain', '用户域名', '', '0', '1', '', '例：http://file.baidu.com', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('87', '11', 'file_oss_url', 'OSS 域名', '', '0', '1', '', '例：http://test.oss-cn-hangzhou.aliyuncs.com', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('88', '11', 'file_qiniu_line', '七牛云存储', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('89', '11', 'file_qiniu_appid', 'AccessKey', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('90', '11', 'file_qiniu_appkey', 'Secret Key', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('91', '11', 'file_qiniu_bucket', 'Bucket', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('92', '11', 'file_qiniu_domain', '用户域名', '', '0', '1', '', '可以使用绑定的域名，也可以使用测试域名，例：http://file.baidu.com', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('93', '11', 'file_qiniu_url', '上传地址', '', '0', '1', '', '例：http://upload.qiniu.com', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('94', '12', 'user_open', '开放注册', '1', '0', '6', '开放注册|1,关闭注册|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('95', '12', 'user_reg_type', '注册审核', '1', '0', '6', '直接通过|1,邮箱验证|2,管理员审核|3', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('96', '12', 'user_badname', '禁止注册的用户名', 'sdcms|admin|ceo|cto|boss|fuck|cao', '0', '5', '', '多个请用“|”间隔', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('97', '12', 'user_reg_group', '加入用户组', '1', '0', '8', '默认用户组|0', '注册后默认加入哪个会员组', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('98', '12', 'user_reg_auth', '注册验证码', '1', '0', '6', '开启|1,关闭|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('99', '12', 'user_login_auth', '登录验证码', '1', '0', '6', '开启|1,关闭|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('100', '12', 'user_getpass_auth', '忘记密码验证码', '1', '0', '6', '开启|1,关闭|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('101', '13', 'api_qq_line', 'QQ登录接口', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('102', '13', 'api_qq_open', '接口状态', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('103', '13', 'api_qq_appid', 'AppId', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('104', '13', 'api_qq_key', 'AppKey', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('105', '13', 'api_weibo_line', '微博登录接口', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('106', '13', 'api_weibo_open', '接口状态', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('107', '13', 'api_weibo_appid', 'App Key', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('108', '13', 'api_weibo_key', 'App Secret', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('109', '14', 'bbs_open', '社区开关', '1', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('110', '14', 'bbs_close', '关闭原因', '社区维护中', '0', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('111', '14', 'bbs_webname', '社区名称', '社区名称', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('112', '14', 'bbs_seotitle', '优化标题', '', '0', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('113', '14', 'bbs_seokey', '关键字', '', '0', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('114', '14', 'bbs_seodesc', '描述', '', '0', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('115', '14', 'bbs_newpost', '发帖时间间隔', '5', '0', '1', '单位：分钟', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('116', '14', 'bbs_replypost', '回帖时间间隔', '1', '0', '1', '单位：分钟', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('117', '14', 'bbs_post_lock', '发帖需要审核', '1', '0', '6', '不需要审核|1,需要审核|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('118', '6', 'web_share_pic', '微信分享图片', '', '0', '4', '', '微信分享默认图片，建议尺寸：100*100', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('119', '1', 'web_order_login', '下单设置', '1', '39', '6', '会员才能下单|1,任何人都可下单|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('120', '4', 'water_piclist', '组图水印', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('121', '13', 'api_weixin_line', '微信扫码登录接口（Pc网站使用，需要申请开发者认证）', '0', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('122', '13', 'api_weixin_open', '接口状态', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('123', '13', 'api_weixin_appid', 'AppID', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('124', '13', 'api_weixin_appkey', 'AppSecret', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('125', '13', 'api_wx_line', ' 微信公众号登录接口（在微信公众号内访问使用，需要公众号通过认证）', '0', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('126', '13', 'api_wx_open', '接口状态', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('127', '15', 'city_domain', '分站根域名', '', '5', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('128', '15', 'city_class', '栏目加城市名', '0', '7', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('129', '15', 'city_content', '内容加城市名', '0', '9', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('130', '2', 'url_cate_ext', '栏目及别名后缀', '.html', '0', '8', '无后缀|,/|/,.html|.html', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('131', '4', 'thumb_auto', '自动缩略图', '1', '0', '6', '开启|1,关闭|0', '开启后前台自动生成图片缩略图', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('132', '6', 'weixin_cache', '微信数据缓存', '1', '0', '6', '开启|1,关闭|0', '多个网站同时使用同一个公众号时，请关闭。', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('133', '14', 'bbs_post_code', '发帖验证码', '1', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('134', '14', 'bbs_reply_code', '回帖验证码', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('135', '16', 'open_line', '公共设置', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('136', '16', 'open_appkey', '接口密钥', 'sdcms', '0', '1', '', '小程序接口通信密钥，不可为空', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('137', '16', 'open_debug', '调试开关', '0', '0', '6', '开启|1,关闭|0', '本地调试时，请开启', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('138', '16', 'open_bizcode', '小程序授权码', '', '0', '5', '', '在正式域名下使用小程序，需要经过授权', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('139', '16', 'open_weixin_line', '微信小程序', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('140', '16', 'open_weixin_appid', 'AppID', '', '0', '1', '', '小程序ID', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('141', '16', 'open_weixin_appsecret', 'AppSecret', '', '0', '1', '', '小程序密钥', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('142', '16', 'open_baidu_line', '百度小程序', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('143', '16', 'open_baidu_appid', 'App ID', '', '0', '1', '', '智能小程序ID', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('144', '16', 'open_baidu_appkey', 'App Key', '', '0', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('145', '16', 'open_baidu_appsecret', 'App Secret', '', '0', '1', '', '智能小程序密匙', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('146', '10', 'pay_baidu_line', '百度收银台（小程序使用）', '', '23', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('147', '10', 'pay_baidu_open', '是否开启', '0', '25', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('148', '10', 'pay_baidu_dealid', 'dealId', '', '27', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('149', '10', 'pay_baidu_appkey', 'APP KEY', '', '29', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('150', '10', 'pay_baidu_public_key', '平台公钥', '', '31', '5', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('151', '10', 'pay_baidu_private_key', '开发者私钥', '', '33', '5', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('152', '10', 'pay_baidu_biz', '接口授权码', '', '35', '5', '', '百度收银台接口授权码通过官网购买，未授权时接只能支付0.01元', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('153', '15', 'city_class_mid', '栏目连接符', '', '11', '1', '', '分站栏目在城市名称后的连接字符', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('154', '15', 'city_content_mid', '内容连接符', '', '13', '1', '', '分站内容在城市名称后的连接字符', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('155', '1', 'web_domain_line', '域名相关', '', '15', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('156', '1', 'web_http', 'Http类型', 'http://', '17', '6', 'Http://|http://,Https://|https://', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('157', '1', 'web_domains', '副域名', '', '21', '5', '', '一行一条，格式：www.baidu.com 或 baidu.com，副域名会自动跳转到主域名', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('158', '5', 'mobile_http', 'Http类型', 'http://', '3', '6', 'Http://|http://,Https://|https://', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('159', '13', 'api_wx_autologin', '免注册绑定', '0', '0', '6', '开启|1,关闭|0', '微信公众号内访问登录免注册', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('160', '1', 'category_http', '栏目Http类型', 'http://', '21', '6', 'Http://|http://,Https://|https://', '当栏目使用域名绑定功能时使用', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('161', '15', 'city_open', '分站开关', '1', '1', '6', '开启|1,关闭|0', '关闭后前台不显示', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('162', '15', 'city_http', '分站Http类型', 'http://', '3', '6', 'Http://|http://,Https://|https://', '当分站绑定域名时使用', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('163', '16', 'open_douyin_line', '抖音小程序', '', '0', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('164', '16', 'open_douyin_appid', 'AppID', '', '0', '1', '', '小程序AppID', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('165', '16', 'open_douyin_appsecret', 'AppSecret', '', '0', '1', '', '小程序AppSecret', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('166', '10', 'pay_douyin_line', '抖音支付接口（小程序使用，担保接口）', '', '37', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('167', '10', 'pay_douyin_open', '是否开启', '0', '39', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('169', '10', 'pay_douyin_token', 'Token(令牌)', '', '41', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('170', '10', 'pay_douyin_salt', 'SALT', '', '43', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('171', '6', 'weixin_share_open', '分享开关', '1', '0', '6', '开启|1,关闭|0', '微信内访问分享开关', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('172', '12', 'user_default_face', '默认头像', '/upfile/noface.gif', '0', '4', '', '会员默认头像', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('173', '9', 'admin_code_google', '谷歌密钥', '', '3', '1', '', '如果使用：谷歌验证码，请点击【生成】按钮生成密钥，然后通过【身份验证器】APP，扫描二维码', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('174', '9', 'admin_logo', '后台Logo', '/public/admin/images/logo.png', '1', '4', '', '建议尺寸：200*40', '1', '1', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('175', '10', 'pay_alipay_public', '支付宝公钥', '', '7', '5', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('177', '1', 'beian_line', '公安备案号', '', '13', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('176', '10', 'pay_alipay_private', '商户私钥', '', '7', '5', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('178', '1', 'beian_num', '备案号', '', '13', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('179', '1', 'beian_url', '备案链接', '', '13', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('180', '10', 'pay_free_line', '免签支付接口（需提现，申请网址：https://www.nicemb.com）', '', '22', '9', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('181', '10', 'pay_free_open', '接口开关', '0', '22', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('182', '10', 'pay_free_id', 'AppId', '', '22', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('183', '10', 'pay_free_key', 'AppKey', '', '22', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config_group` VALUES ('1', '基本设置', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('2', '运行模式', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('3', '邮件设置', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('4', '附件设置', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('5', '手机站', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('6', '微信设置', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('7', '友情链接', '0', 'link', '1', '0');
INSERT INTO `sd_config_group` VALUES ('8', '联系方式', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('9', '后台相关', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('10', '支付接口', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('11', '云存储', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('12', '会员设置', '0', 'user', '1', '0');
INSERT INTO `sd_config_group` VALUES ('13', '快捷登录', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('14', '社区设置', '0', 'bbs', '1', '0');
INSERT INTO `sd_config_group` VALUES ('15', '城市分站', '0', 'city', '1', '0');
INSERT INTO `sd_config_group` VALUES ('16', '小程序接口', '0', '0', '1', '2');
INSERT INTO `sd_content` VALUES ('1', '有了人工智能，5 分钟就能建好个人网站？', '', '0', '9', '0', '1', '0', '0', '0', '0', '0', '0', '', '1492444800', '1492506012', '现在，设计网站并不麻烦，不少公司推出了网站设计服务。其中，比较出名的有Wix，Squarespace，Adobe Portfolio，还有 Google 的Material Design Lite。但服务覆盖全球约 180 个国家共计约 1 亿用户的 Wix，立志超越行业竞争者，「更上一层楼」。其已成功研发出一款人工智能(AI)设计系统，该系统核心是背后不断改进的机器学习模型。Wix 高级设计智能(ADI)负责人尼灿·', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('2', '支付行业，是如何赚走你的钱？', '', '0', '9', '6', '1', '0', '0', '0', '1', '0', '0', '', '1492444800', '1492505430', '很多行业为什么能赚钱?因为它促进了资源之间的流动效率。促进物品之间的流动效率，叫物流业;促进信息之间的流动效率，叫互联网行业;促进金钱之间的流动效率，叫金融业。今天这里要谈的是金融业的一个分支：支付行业支付行业这个行业怎么赚走你的钱?你拿着招行卡去工行ATM机取钱，它赚走你一点钱作为手续费;你在餐厅吃完饭用信用卡埋单，它赚走餐厅一点钱作为手续', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('3', '蜗居30平米办公室、只有200人的小公司，如何一年收入23亿美金？', '', '0', '9', '0', '1', '0', '0', '0', '0', '0', '0', '', '1492444800', '1492505481', '据彭博报道，百度提交给美国证券交易委员会 (SEC) 的文件显示，百度已于今年 1 月将旗下移动游戏业务出售，作价人民币 12 亿元。相比之下，腾讯却在游戏方面赚得盆满钵满。《王者荣耀》已经是移动游戏史上最受欢迎的项目，除此之外，来自芬兰的 Supercell 工作室也为腾讯游戏贡献了不少心力。你们爱玩的《部落冲突》、《皇室战争》都出自他们之手。2016 年，Supercell 全年', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('4', '头条百家搜狐网易企鹅一点资讯，六大自媒体号运营方法全在这了', '', '0', '9', '1', '1', '0', '0', '0', '1', '0', '0', '', '1492444800', '1492505539', '这几年，老媒体的优势在持续褪减，受众群体的关注点开始转移，诸如今日头条，百家号，企鹅号，搜狐号等各大自媒体平台进入主流市场，吸引了大量的用户。用户多了，阅读量自然就多了。在今日头条和百家号，不少文章均破百万、十万阅读，而为了鼓励更多作者进入平台，不少自媒体平台都给予作者奖励与分成。例如头条号每个月给旗下作者的分成是 3000 万元，而企鹅', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('5', '地方自媒体如何利用有限资源赚更多钱', '', '0', '9', '0', '1', '0', '0', '0', '0', '0', '0', '', '1492444800', '1492505672', '为了方便大家认识，我再自我介绍一下。 2009 年我创立的公司叫做宁哲网络，是面向地方网站的运营顾问公司。去年，我们与马甲APP合并，公司名是灵衍科技，是面向区域互联网的产品、运营综合服务公司。不打广告，其他信息大家可以搜索马甲APP和宁哲网络这两个品牌。今天我为大家分享的主题是地方自媒体如何利用有限资源赚更多钱。首先，大家理解一下 2017 年对区域的', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('6', '为什么地铁中行走的二维码大多数是年轻女孩？', '', '0', '9', '16', '1', '0', '0', '0', '1', '0', '0', '', '1492444800', '1492505734', '2017 年 3 月份，知名歌手薛之谦发布了一个小视频，视频内容是在地铁上，两个女孩想要一位男乘客帮忙扫一下二维码，但这位男乘客拒绝扫码并“教训”了这两位女孩。这件事情引发了很多网民的不满，很多人都在评论区谴责这位施暴的男乘客，当然也有部分网友谴责像这两位女孩一样的“扫码一族”，在薛之谦的这条微博中，可以看出薛之谦的立场并不是中立，而是批评这', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('7', '采购成本管理专员', '', '0', '20', '1', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492688292', '<p>1、有大型制造企业成本或经营分析工作经验，对大宗行情波动敏感；</p><p>2、了解采购价格构成，熟悉一般核价模型及主要管控点；</p><p>3、熟练应用办公软件，尤其对数据分析应用娴熟；</p><p>4、具备良好的协调沟通能力，工作细致，较强的责任心和敬业精神；</p><p>5、本科学历，财务类或供应链专业，两年以上工作经历。</p>', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('8', '产品测试工程师', '', '0', '20', '0', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492688355', '<p>1、本科及以上学历，电子或类似专业，10年以上燃热产品开发或测试经验；</p><p>2、熟悉燃气热水器相关的标准和法律法规要求；</p><p>3、组织协调能力好，有良好的服务意识和团队合作精神、较强的执行力；</p><p>4、英语口语及应用熟练。</p>', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('9', '自动化工程师', '', '0', '20', '0', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492688465', '<p>1、从事家电自动化生产、自动化测试设计工作2年以上工作经验；能独立完成软硬件设计开发；</p><p>2、本科以上学历，机电一体化、设备管理、自动化或机械自动化等专业；</p><p>3、熟悉机械原理，自动化控制等原理；具有良好的沟通协调能力；</p><p>4、熟练操作solidworks/CAD；</p><p>5、在大型家电企业或自动化公司过和会编制控制应用程序者优先；</p><p>6、执行力强。</p>', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('10', '产品企划工程师', '', '0', '20', '0', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492688520', '<p>1、本科以上学历，平面设计/传媒/电商相关专业 <br/>2、思维活跃，善于沟通表达，熟练掌握平面设计软件，能够独立完成微信号的日常运营，热衷网购及使用智能产品</p>', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('11', '销售业务专员', '', '0', '20', '2', '1', '0', '0', '0', '1', '2', '0', '', '1492617600', '1492688556', '<p>1、本科学历，不限专业； <br/>2、五年以内的工作经验； <br/>3、有良好的沟通能力及团队配合意识； <br/>4、抗压能力强。</p>', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('12', '海外销售代表', '', '0', '20', '16', '1', '0', '0', '0', '2', '0', '0', '', '1492617600', '1492688586', '<p>1、男性，本科及以上学历，国际贸易、商贸英语等专业； <br/>2、外销家电企业三年及以上工作经验； <br/>3、英语6级以上，听、说、读、写流利，能作为工作语言； <br/>4、具备较强的客户管理能力和协调沟通能力； <br/>5、能承受较大的工作压力，执行力强； <br/>5、能适应海外出差安排。</p>', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('13', '案例名称1', '/upfile/2017/04/1492744826659.jpg', '1', '11', '1', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492744827', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('14', '案例名称2', '/upfile/2017/04/1492744765394.jpg', '1', '11', '9', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492744766', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('15', '案例名称3', '/upfile/2017/04/1492744184244.jpg', '1', '11', '1', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492744185', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('16', '案例名称4', '/upfile/2017/04/1492744101581.jpg', '1', '11', '2', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492744103', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('17', '案例名称5', '/upfile/2017/04/1492743999965.jpg', '1', '11', '4', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492744000', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('18', '案例名称6', '/upfile/2017/04/1492743901960.jpg', '1', '11', '3', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492743902', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('19', '案例名称7', '/upfile/2017/04/1492743784993.jpg', '1', '11', '4', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492743785', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('20', '案例名称8', '/upfile/2017/04/1492743548873.jpg', '1', '11', '39', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492743549', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('21', '马化腾对话宗庆后等人：互联网+虽然好，但也不能把互联网神', '', '0', '10', '1', '1', '0', '0', '0', '0', '0', '0', '', '1492617600', '1492699501', '4 月 20 日，腾讯公司联合浙江省经济和信息化委员会在杭州举办了 2017 中国“互联网+”数字经济峰会，本次峰会以“赋能新结构，连接新动能”为主题，有来自政企学界的 2000 名人士参会。数字经济已经占到了中国 2016 年 GDP 总量的 30.61%在大会上，腾讯研究院发布了《中国“互联网+”数字经济指数(2017)》报告，这份报告汇集了来自腾讯、滴滴、新美大、京东、携程等企业的“', '', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[]', '0');
INSERT INTO `sd_content` VALUES ('22', '你天天挂嘴边的「用户体验」，到底是什么？', '', '0', '10', '19', '1', '0', '0', '0', '2', '1', '0', '', '1492617600', '1492736183', '前几年，当我提及用户体验或交互设计时，除了一些业内朋友，大部分人是懵逼的。现如今每个互联网公司都在谈用户、谈体验、谈以用户为中心的设计、谈用户体验设计。那有多少人真的认真思考过：用户体验到底是什么?这个每天都挂在嘴边的词，你真的懂吗?1.用户体验的定义用户在使用产品、服务、系统时的主观感受。这是比较公认的对用户体验的定义，有三个关键点：', '用户体验', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"用户体验\",\"id\":\"1\"}]', '0');
INSERT INTO `sd_content` VALUES ('23', '案例名称9', '/upfile/2017/04/1492743018276.jpg', '1', '11', '7', '1', '0', '0', '0', '0', '0', '0', '', '1492704000', '1492743020', '', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_content` VALUES ('24', '案例名称10', '/upfile/2017/04/1492744879591.jpg', '1', '11', '46', '1', '0', '0', '0', '0', '0', '0', '', '1492704000', '1504319284', '支持IE9+以上浏览器访问，自带手机版和测试数据。包含PC+手机站模板，支持在线安装。', '案例', '', '', '', '', '', 'a:0:{}', '', '0', '', '0', '[{\"name\":\"案例\",\"id\":\"2\"}]', '0');
INSERT INTO `sd_form` VALUES ('1', '简历', 'resume', '', '', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1');
INSERT INTO `sd_form_field` VALUES ('1', '1', '申请职位', 'mytitle', '1', '0', '0', '{php:get.jobname}', '', 'varchar(255) NOT NULL', '', '1', '1', '0', '0', '', '', '', '', '', '', '1', '0', '1');
INSERT INTO `sd_form_field` VALUES ('2', '1', '姓名', 'mytruename', '1', '10', '0', '', '', 'varchar(50) NOT NULL', '', '1', '1', '0', '0', '', '', '', '', '', '', '1', '0', '1');
INSERT INTO `sd_form_field` VALUES ('3', '1', '性别', 'mysex', '11', '0', '0', '', '男|1,女|2', 'int(10) NOT NULL', '', '1', '1', '0', '0', '', '', '', '', '', '', '0', '0', '1');
INSERT INTO `sd_form_field` VALUES ('4', '1', '年龄', 'myage', '3', '2', '0', '', '', 'int(10) NOT NULL', '', '3', '1', '0', '0', '', '', '', '', '', '', '0', '0', '1');
INSERT INTO `sd_form_field` VALUES ('5', '1', '手机', 'mymobile', '1', '11', '0', '', '', 'varchar(255) NOT NULL', '', '6', '1', '0', '0', '', '', '', '', '', '', '0', '0', '1');
INSERT INTO `sd_form_field` VALUES ('6', '1', '学历', 'myeducation', '11', '0', '0', '', '大专|1,本科|2,硕士|3,博士|4', 'int(10) NOT NULL', '', '1', '1', '0', '0', '', '', '', '', '', '', '0', '0', '1');
INSERT INTO `sd_form_field` VALUES ('7', '1', '工作经验', 'mywork_exp', '8', '0', '0', '', '', 'text NOT NULL', '', '1', '1', '0', '0', '', '', '', '', '', '', '0', '0', '1');
INSERT INTO `sd_form_field` VALUES ('8', '1', '自我评价', 'myintro', '8', '0', '0', '', '', 'text NOT NULL', '', '1', '1', '0', '0', '', '', '', '', '', '', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('1', 'Sdcms官网', '', 'http://www.sdcms.cn', '0', '1', '0', '1');
INSERT INTO `sd_link` VALUES ('2', '极品模板', '', 'http://www.nicemb.com', '0', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('3', '百度科技', '', 'http://www.baidu.com', '0', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('4', '新浪微博', '', 'http://www.weibo.com', '0', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('5', '支付宝', '', 'http://www.alipay.com', '0', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('6', '微信', '', 'http://weixin.qq.com', '0', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('7', '阿里云', '', 'http://www.aliyun.com', '0', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('8', '合作伙伴1', '/upfile/2017/04/1491398238496.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('9', '合作伙伴2', '/upfile/2017/04/1491398255999.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('10', '合作伙伴3', '/upfile/2017/04/1491398267736.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('11', '合作伙伴4', '/upfile/2017/04/1491398277385.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('12', '合作伙伴5', '/upfile/2017/04/1491398288770.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('13', '合作伙伴6', '/upfile/2017/04/1491398298642.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('14', '合作伙伴7', '/upfile/2017/04/1491398308495.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('15', '合作伙伴8', '/upfile/2017/04/1491398321540.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('16', '合作伙伴9', '/upfile/2017/04/1491398337126.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('17', '合作伙伴10', '/upfile/2017/04/1491398346730.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('18', '合作伙伴11', '/upfile/2017/04/1491398356573.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_link` VALUES ('19', '合作伙伴12', '/upfile/2017/04/1491398367681.jpg', '#', '1', '0', '0', '1');
INSERT INTO `sd_model` VALUES ('1', '文章模型', 'news', '', 'content/news/list.php', 'content/news/show.php', '基本设置|1,SEO设置|2,可选设置|3', '0', '1', '1', '1', '1');
INSERT INTO `sd_model` VALUES ('2', '产品模型', 'pro', '', 'content/pro/list.php', 'content/pro/show.php', '基本设置|1,SEO设置|2,可选设置|3', '0', '1', '1', '0', '0');
INSERT INTO `sd_model` VALUES ('3', '招聘模型', 'job', '', 'content/job/list.php', 'content/job/show.php', '基本设置|1,SEO设置|2,可选设置|3', '0', '1', '1', '0', '0');
INSERT INTO `sd_model_field` VALUES ('1', '1', '标题', 'title', '1', '255', '0', '', '', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '1', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('2', '1', '正文', 'content', '12', '0', '0', '', '', '', '', '0', '1', '2', '1', '0', '', '', '', '', '', '', '3', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('3', '1', '缩略图', 'pic', '5', '255', '1', '', '', '', '', '0', '1', '0', '1', '0', '', '', '', '', '', '', '5', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('4', '1', '标签', 'tags', '1', '255', '0', '', '', '', '多个标签请使用英文逗号隔开，不能超过10个', '0', '1', '0', '1', '0', '', '', '', '', '', '', '7', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('5', '1', '摘要', 'intro', '8', '0', '0', '', '', '', '', '0', '1', '0', '1', '0', '', '', '', '', '', '', '9', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('6', '1', '状态', 'islock', '9', '0', '0', '1', '立即发布|1,存为草稿|0', '', '', '0', '1', '0', '1', '0', '', '', '', '', '', '', '11', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('7', '1', '优化标题', 'seotitle', '1', '255', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '13', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('8', '1', '关键字', 'seokey', '8', '0', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '15', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('9', '1', '描述', 'seodesc', '8', '0', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '17', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('10', '1', '别名', 'alias', '1', '50', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '19', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('11', '1', '外链', 'url', '1', '255', '0', '', '', '', '添加外链时，将不显示正文内容', '0', '1', '0', '3', '0', '', '', '', '', '', '', '21', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('12', '1', '人气', 'hits', '3', '10', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '23', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('13', '1', '赞数量', 'upnum', '3', '10', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '25', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('14', '1', '踩数量', 'downnum', '3', '10', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '27', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('15', '1', '排序', 'ordnum', '3', '10', '0', '0', '', '', '数字越大越靠前', '0', '1', '0', '3', '0', '', '', '', '', '', '', '29', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('16', '1', '置顶', 'ontop', '9', '0', '0', '0', '否|0,是|1', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '31', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('17', '1', '推荐', 'isnice', '9', '0', '0', '0', '否|0,是|1', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '33', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('18', '1', '发布日期', 'createdate', '2', '0', '0', '{php:now}', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '35', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('19', '1', '内容页模板', 'showskin', '1', '255', '0', '', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '37', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('20', '2', '标题', 'title', '1', '255', '0', '', '', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '1', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('21', '2', '组图', 'piclist', '13', '0', '0', '', '', '', '', '0', '1', '0', '1', '0', '', '', '', '', '', '', '3', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('22', '2', '正文', 'content', '12', '0', '0', '', '', '', '', '0', '1', '2', '1', '0', '', '', '', '', '', '', '5', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('23', '2', '简介', 'intro', '8', '0', '0', '', '', '', '', '0', '1', '0', '1', '0', '', '', '', '', '', '', '7', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('24', '2', '缩略图', 'pic', '5', '255', '1', '', '', '', '', '0', '1', '0', '1', '0', '', '', '', '', '', '', '9', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('25', '2', '价格', 'price', '4', '10', '1', '', '', '', '单位：元', '4', '1', '0', '1', '0', '', '', '', '', '', '', '11', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('26', '2', '标签', 'tags', '1', '255', '0', '', '', '', '多个标签请使用英文逗号隔开，不能超过10个', '0', '1', '0', '1', '0', '', '', '', '', '', '', '13', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('27', '2', '状态', 'islock', '9', '0', '0', '1', '立即发布|1,存为草稿|0', '', '', '0', '1', '0', '1', '0', '', '', '', '', '', '', '15', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('28', '2', '优化标题', 'seotitle', '1', '255', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '17', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('29', '2', '关键字', 'seokey', '8', '0', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '19', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('30', '2', '描述', 'seodesc', '8', '0', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '21', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('31', '2', '别名', 'alias', '1', '50', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '23', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('32', '2', '外链', 'url', '1', '255', '0', '', '', '', '添加外链时，将不显示正文内容', '0', '1', '0', '3', '0', '', '', '', '', '', '', '25', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('33', '2', '人气', 'hits', '3', '10', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '27', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('34', '2', '赞数量', 'upnum', '3', '10', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '29', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('35', '2', '踩数量', 'downnum', '3', '10', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '31', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('36', '2', '排序', 'ordnum', '3', '10', '0', '0', '', '', '数字越大越靠前', '0', '1', '0', '3', '0', '', '', '', '', '', '', '33', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('37', '2', '置顶', 'ontop', '9', '0', '0', '0', '否|0,是|1', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '35', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('38', '2', '推荐', 'isnice', '9', '0', '0', '0', '否|0,是|1', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '37', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('39', '2', '发布日期', 'createdate', '2', '0', '0', '{php:now}', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '39', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('40', '2', '内容页模板', 'showskin', '1', '255', '0', '', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '41', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('43', '3', '职位名称', 'title', '1', '255', '0', '', '', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '1', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('44', '3', '工作内容', 'content', '12', '0', '0', '', '', '', '', '0', '1', '1', '1', '0', '', '', '', '', '', '', '15', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('45', '3', '缩略图', 'pic', '5', '0', '1', '', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '49', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('46', '3', '标签', 'tags', '1', '255', '0', '', '', '', '多个标签请使用英文逗号隔开，不能超过10个', '0', '1', '0', '1', '0', '', '', '', '', '', '', '19', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('47', '3', '任职要求', 'intro', '12', '0', '0', '', '', '', '', '0', '1', '1', '1', '0', '', '', '', '', '', '', '17', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('48', '3', '状态', 'islock', '9', '0', '0', '1', '立即发布|1,存为草稿|0', '', '', '0', '1', '0', '1', '0', '', '', '', '', '', '', '21', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('49', '3', '优化标题', 'seotitle', '1', '0', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '23', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('50', '3', '关键字', 'seokey', '8', '0', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '25', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('51', '3', '描述', 'seodesc', '8', '0', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '27', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('52', '3', '别名', 'alias', '1', '50', '0', '', '', '', '', '0', '1', '0', '2', '0', '', '', '', '', '', '', '29', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('53', '3', '外链', 'url', '1', '255', '0', '', '', '', '添加外链时，将不显示正文内容', '0', '1', '0', '3', '0', '', '', '', '', '', '', '31', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('54', '3', '人气', 'hits', '3', '10', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '33', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('55', '3', '赞数量', 'upnum', '3', '0', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '35', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('56', '3', '踩数量', 'downnum', '3', '0', '0', '0', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '37', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('57', '3', '排序', 'ordnum', '3', '0', '0', '0', '', '', '数字越大越靠前', '0', '1', '0', '3', '0', '', '', '', '', '', '', '39', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('58', '3', '置顶', 'ontop', '9', '0', '0', '0', '否|0,是|1', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '41', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('59', '3', '推荐', 'isnice', '9', '0', '0', '0', '否|0,是|1', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '43', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('60', '3', '发布日期', 'createdate', '2', '0', '0', '{php:now}', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '45', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('61', '3', '内容页模板', 'showskin', '1', '0', '0', '', '', '', '', '0', '1', '0', '3', '0', '', '', '', '', '', '', '47', '1', '1', '1');
INSERT INTO `sd_model_field` VALUES ('62', '3', '工作地点', 'work_address', '1', '50', '0', '', '', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '3', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('64', '3', '学历要求', 'work_education', '11', '0', '0', '不限', '不限|不限,高中及以上|高中及以上,大专及以上|大专及以上,本科及以上|本科及以上,大专及以上|大专及以上', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '7', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('63', '3', '工作性质', 'work_nature', '11', '0', '0', '全职', '全职|全职,兼职|兼职', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '5', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('65', '3', '薪资待遇', 'work_money', '11', '0', '0', '面议', '面议|面议,2000-3000元/月|2000-3000元/月,3000-5000元/月|3000-5000元/月,5000-8000元/月|5000-8000元/月,8000-10000元/月|8000-10000元/月,10000-20000元/月|10000-20000元/月,20000-50000元/月|20000-50000元/月', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '9', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('66', '3', '工作年限', 'work_age', '11', '0', '0', '不限', '不限|不限,1年及以上|1年及以上,2年及以上|2年及以上,3年及以上|3年及以上,4年及以上|4年及以上,5年及以上|5年及以上', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '11', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('67', '3', '招聘人数', 'work_num', '11', '0', '0', '若干', '若干|若干,1|1,2|2,3|3,4|4,5|5,6|6,7|7,8|8,9|9,10|10', '', '', '1', '1', '0', '1', '0', '', '', '', '', '', '', '13', '1', '1', '0');
INSERT INTO `sd_model_field` VALUES ('68', '1', '购买价格', 'price', '4', '10', '1', '0', '', '', '单位：元', '4', '1', '0', '1', '0', '', '', '', '', '', '', '10', '1', '1', '0');
INSERT INTO `sd_model_job` VALUES ('1', '7', '<p>负责集团大宗原材料采购及供应链领域的成本管理工作，具体职责如下： <br/>1、采购价格审核，价格分析，大宗材料行情跟进； <br/>2、采购成本降本效益计算及进度监控，分大类对比分析； <br/>3、采购成本基础管理（含定价率、供货比例、独家供货、价差清理、一次性采购、物料代用等）； <br/>4、多组织间价格对比，调让价格制定，追补价差审核； <br/>5、涉及采购成本的其他工作； <br/>6、降低采购成本、管控采购风险,,负责组织大宗原材料采购成本体系搭建及流程制度梳理维护。</p>', '成都', '全职', '不限', '面议', '不限', '若干');
INSERT INTO `sd_model_job` VALUES ('2', '8', '<p>1、负责海外市场使用及环境调研，并转化为产品标准； <br/>2、负责海外产品竞品比对及性能、可靠性验证； <br/>3、负责海外产品的品质把关，参与外销产品开发全过程。</p>', '南京', '全职', '不限', '面议', '不限', '若干');
INSERT INTO `sd_model_job` VALUES ('3', '9', '<p>1、负责实施自动化项目设计、开发或引进；<br/>2、负责参与自动化相关体系、流程和标准文件的建立和编纂；<br/>3、负责设备自动化新技术、新工艺的研究，参与项目评审；<br/>4、协助解决车间自动化设备使用和管理工作；<br/>5、协助完成自动化项目年度目标规划和日常开展工作计划与总结。</p>', '成都', '全职', '不限', '面议', '不限', '若干');
INSERT INTO `sd_model_job` VALUES ('4', '10', '<p>1、负责单产品企划及上市推动：通过市场调研、消费者研究提出创新的产品解决方案，形成产品企划提案，推动产品成功上市。 <br/>2、负责产品上市阶段工作的推动：编写新产品详情文案框架、对接视频拍摄，与推广共同制定新产品的推广计划并实施落地。 <br/>3、负责微信公众号的日常运营：微信号日常运营，不断改善微信号的用户体验，提高粉丝活跃度，并与智能中心一起对接微信号进行迭代开发。</p>', '南通', '全职', '不限', '面议', '不限', '若干');
INSERT INTO `sd_model_job` VALUES ('5', '11', '<p>1、负责客户开拓； <br/>2、负责客户辅导，对客户专业化指导并推动客户服务工作； <br/>3、负责跟进客户的回款及相关单据的跟进工作； <br/>4、负责完成公司安排的其他专项工作。</p>', '全国', '全职', '不限', '面议', '不限', '若干');
INSERT INTO `sd_model_job` VALUES ('6', '12', '<p>1、客户商机挖掘、商机落实、项目跟进、过程管理等； <br/>2、客户订单接单，下单，跟进生产、发货、收款等全流程管理； <br/>3、客户日常沟通、客户接待、会谈安排等； <br/>4、展会接待、新客户挖掘、产品推荐； <br/>5、拜访客户，了解客户新需求；</p>', '成都', '全职', '不限', '面议', '不限', '若干');
INSERT INTO `sd_model_news` VALUES ('1', '2', '0.00', '<p>很多行业为什么能赚钱?因为它促进了资源之间的<strong>流动效率</strong>。</p><p>促进物品之间的流动效率，叫<strong>物流业</strong>;促进信息之间的流动效率，叫<strong>互联网行业</strong>;促进金钱之间的流动效率，叫<strong>金融业</strong>。</p><p>今天这里要谈的是金融业的一个分支：支付行业</p><h2><strong>支付行业</strong></h2><p>这个行业怎么赚走你的钱?</p><ul class=\" list-paddingleft-2\"><li><p><strong>你拿着招行卡去工行ATM机取钱，它赚走你一点钱作为手续费;</strong></p></li><li><p><strong>你在餐厅吃完饭用信用卡埋单，它赚走餐厅一点钱作为手续费;</strong></p></li></ul><p>你的每一次<strong>支付行为</strong>，除了现金支付，都会产生相应的手续费，落到一家公司的口袋，这家公司叫银联。</p><h2><strong>银联</strong></h2><p>把银联拆开看，可以看做<strong>银行卡的联盟</strong>，于 2002 年 3 月份成立于上海。</p><p>为什么成立这样一个联盟呢?废话当然是赚钱!但赚钱之外还有什么用呢?</p><p>2002 年以前，各家银行都是自吸门前血，莫管他人瓦上霜，你把钱存工行，只能去工行的ATM上取，你拿着建行信用卡，只能去建行的POS机上刷，想跨行?没门，银行间的系统都没打通。</p><p>于是，在央行的怂恿下，<strong>银联成立了，搞了一套跨行交易清算系统</strong>，将各家银行的系统和数据打通，从此往后，你拿着工行的卡去建行的ATM取钱，再也不会被人骂SB啦，撒花!</p><p style=\"text-align: center;\"><img width=\"600\" height=\"129\" alt=\"\" src=\"http://upload.chinaz.com/2017/0406/201704060903134103.png\"/></p><p>所以，银联起的是<strong>桥</strong>的作用，将<strong>孤岛一样的银行连通</strong>，此路是我开，此树是我栽，收点过路费很正常!</p><p>银行辣么多，银联只有一个，慢慢地，银联成了一个<strong>暴发户</strong>，暴发户身边除了小蜜还有什么?小弟!银联养活了一群小弟，这些小弟是收单机构。</p><h2><strong>收单机构</strong></h2><p>想象一下，银行和银联都是官老爷，高高在上，他们才不会主动去谈生意，如果顾客去买东西都用现金支付，那么银行和银联是赚不到钱的，所以必须让顾客<strong> 用POS机刷卡!!</strong></p><p>并不是每一家商户都愿意装POS机，因为装机需要付钱!安装也要付钱!装了以后顾客付钱还要收我手续费!我又不是傻，很贵的好么。</p><p>于是银行和银联找到 <strong>央行，</strong>央行凝神一想，想出了 “<strong>支付牌照”</strong> 这个东西，于是大手一挥，找来一堆点头哈腰的民营企业，跟他们说，弟兄们，一起赚钱的时候到了，你们花点钱贿赂一下我，哦不，申请一下这个 <strong>“支付牌照”</strong>，我就准你们上门给商家推广POS机。</p><p>所以这里的 <strong>收单机构</strong> 指的是，持有 “<strong>银行卡收单牌照”</strong> 的具有很强线下拓展能力的<strong>民营企业</strong>，比如拉<strong>卡拉、快钱、卡友</strong>等公司。</p><p style=\"text-align: center;\"><img width=\"600\" height=\"181\" alt=\"\" src=\"http://upload.chinaz.com/2017/0406/201704060903139563.png\"/></p><p>比如你去餐厅吃饭，用工行卡在卡友的POS机上刷卡支付<strong> 100 元</strong>，餐厅需要支付<strong>1.25%</strong>的手续费，也就是<strong>1. 25 元</strong>，这1. 25 元按照<strong>7：1：2</strong>的比例分配给<strong> 发卡行(工行)、清算机构(银联)、收单机构(卡友)</strong>。</p><p>正当银联和小蜜、小弟一起酒池肉林的时候，突然遭到两记重拳，一下被打倒在地，这两记重拳来自支付宝和微信。</p><h2><strong>支付宝和微信</strong></h2><p>2003 年前，我们在马云的淘宝买东西，采取的支付方式大部分是线下的<strong>同城交易</strong>，也就是一手交钱一手交货，货款两清，但这样子一是不方便，二是不安全，于是马云跑去找银联谈，说大哥咱们合作吧，我有用户你有技术，珠联璧合!可惜郎有情妾无意，银联对马云爱搭不理。</p><p>马云怒了，我可是未来的中国首富，你敢看不起我?于是绕过银联，直接跟各家银行谈，没想到给他谈成了，各家银行纷纷给马云开通 “<strong>快捷支付</strong>” 的接口。</p><p>2003 年 10 月，淘宝推出 <strong>支付宝</strong>，从此在淘宝上的跨行支付变成这样</p><p style=\"text-align: center;\"><img width=\"600\" height=\"209\" alt=\"\" src=\"http://upload.chinaz.com/2017/0406/201704060903140967.png\"/></p><p>也就是你去淘宝买一件 100 元的商品，是通过支付宝绑定工行卡支付的，这 100 元实际是付给支付宝的<strong>工行对公账户</strong>，然后支付宝再从<strong>建行对公账户</strong>中转给商家的建行账户 100 元。</p><p>可以看到，中间没有<strong>银联</strong>参与，这是银联挨的 <strong>第一记重拳</strong>，这记重拳让银联掉了一颗牙齿，这颗牙齿叫 <strong>电商</strong>。</p><p>银联掉的第二颗牙齿叫 <strong>移动支付</strong>。</p><p>2013 年 8 月，微信推出 “<strong>扫一扫</strong>” 功能，依靠庞大用户量，迅速把扫二维码这个动作，变成生活中习以为常的一个场景。</p><p>二维码其实是一种信息的转码，把微信的用户信息变成二维码，扫描即互相关注，而把商户的银行账户信息变成二维码，扫描即<strong>支付</strong>。</p><p>于是，二维码的应用，迅速衍伸到了支付领域。</p><p>2014 年 3 月，微信开放 “<strong>微信支付</strong>” 功能，扫码支付正式成了替代<strong> POS机刷卡支付</strong> 的一种方式。</p><p style=\"text-align: center;\"><img width=\"500\" height=\"274\" alt=\"\" src=\"http://upload.chinaz.com/2017/0406/201704060903141747.jpg\"/></p><p>让我们来看一下<strong>刷卡支付</strong>和<strong>扫码支付</strong>分别产生的手续费：</p><p style=\"text-align: center;\"><img width=\"469\" height=\"634\" alt=\"\" src=\"http://upload.chinaz.com/2017/0406/201704060903142371.jpg\"/></p><p>刷卡支付，商户需要缴纳<strong> 6 元</strong>，也就是<strong>0.6%</strong>的手续费 (不同行业，手续费比例不一样)。</p><p style=\"text-align: center;\"><img width=\"476\" height=\"768\" alt=\"\" src=\"http://upload.chinaz.com/2017/0406/201704060903146427.jpg\"/></p><p>而扫码支付，商户仅支付<strong> 3. 8 元</strong>，也就是<strong> 0.38%</strong> 的手续费，足足省了一半。</p><p>不仅如此，微信和支付宝还砸钱补贴商户还有顾客， 2014 年 12 月 12 日，支付宝正式向银联宣战，通过每单最高 20 元的补贴，高调进军线下支付业务。</p><p><strong>低手续费+补贴</strong>，二维码迅速攻占了洼地，面对二维码支付的咄咄逼人，银联选择的是NFC支付。</p><p></p>');
INSERT INTO `sd_model_news` VALUES ('2', '3', '0.00', '<p>据彭博报道，百度提交给美国证券交易委员会 (SEC) 的文件显示，百度已于今年 1 月将旗下移动游戏业务出售，作价人民币 12 亿元。</p><p>相比之下，腾讯却在游戏方面赚得盆满钵满。《<a href=\"http://www.chinaz.com/game/wzry/\" target=\"_blank\">王者荣耀</a>》已经是移动游戏史上最受欢迎的项目，除此之外，来自芬兰的 Supercell 工作室也为腾讯游戏贡献了不少心力。你们爱玩的《部落冲突》、《<a href=\"http://www.chinaz.com/tags/huangshizhanzhengkapai.shtml\" target=\"_blank\">皇室战争</a>》都出自他们之手。</p><p>2016 年，Supercell 全年营收高达 23 亿美金，而这家靠<a href=\"http://www.chinaz.com/app/list/\" target=\"_blank\">手游</a>闷声发大财的公司，员工仅仅只有 200 多人。究竟是什么让 Supercell 的手游能立于不败之地?今天极客君就和大家聊聊其中的奥秘!</p><p>2010 年，连同创始人伊卡•帕纳宁(Ilkka Paananen)在内的 6 位年轻人投入了所有积蓄在芬兰艾斯堡一间不到 30 平米的房间成立了 Supercell。</p><p>尽管芬兰政府为他们提供了 50 万的创业资金，但这些偏执狂只想好好把钱投在做游戏上，就连几张办公桌都是从回收站淘来的。换作给其他年轻人，50 万恐怕早就打水漂了吧。</p><p>渐渐地，更多有共同梦想的年轻人加入了这个团队，Supercell 从初创的 6 个人扩充到 15 人，这间 30 平米的小房间变得更加拥挤而充实，创始人伊卡被挤得连办公桌都没有了，只能找来一个纸箱将就办公。</p><p>环境将就，做的游戏可不将就。2011 年 2 月，Supercell 发布的《Gunshine》社交页游正式内侧，精美的动画效果搭配实用的社交功能，使这款游戏在发布不到半年的时间里便吸引了百万数量的玩家。</p><p>对于这样的成绩，Supercell 并不满意。根据他们的数据来看，玩家对游戏的热度一般只维持在前一两个月，而对于没有体验过类似游戏的玩家来说上手程度也比较难，需要一定的学习成本。</p><p>Supercell 想做的游戏，是能让大众沉浸其中并乐此不疲的，显然《Gunshine》并不是。</p><p>2011 年的移动端市场，正是平板电脑兴起之时。商业嗅觉敏锐的 Supercell 察觉到这一风口后，立马对《Gunshine》做了移动端开发，却发现游戏在平板上需要做许多针对性的优化，从 PC 移植到移动设备的操作体验是甚是难做。这让他们意识到游戏的跨平台登陆难以实现，高质量的游戏应该只专注于一个平台。</p><p>在反复权衡之下，Supercell 团队一致认为手游比 PC 端更具市场前景。2011 年秋季，Supercell 宣布《Gunshine》正式停运，并着力为以平板电脑为代表的移动设备研发游戏。这也是 Supercell 成功的开始。</p><p>Supercell 安排了五个研发团队在做移动端游戏。2012 年夏季，Supercell 推出了模拟经营类手游《卡通农场》以及战斗策略手游《部落冲突》，针对手机和平板的触屏特性设计，加上充分利用社交属性的交易系统，让其在上线首日就取得不俗的成绩。</p><p>当其他手游都只是昙花一现的时候，Supercell 的两款手游玩家数量却能保持直线上涨。 3 个月后，《部落冲突》一举登上了美国 APP Store 排行榜榜首。</p><p>现在看来，《部落冲突》的确没让 Supercell 失望，从发布到现在已经 5 年，《部落冲突》依然保持着当年的热度，平均每天有 40000 个新玩家入坑，日收入 370 万美元，名副其实的全球最挣钱手游!</p><p>这几年，Supercell 创下了一个又一个令人惊叹的数字。</p><ul class=\" list-paddingleft-2\"><li><p><strong>2013 年，Supercell 在 iOS 和 Google play 应用商店收入排名第 7，全年营收 5.7 亿美元。</strong></p></li><li><p><strong>2014 年 4 月，策略类手游《海岛奇兵》正式公测，与之前两款手游均进入全球收入榜前10，同年营收 17 亿美元。</strong></p></li><li><p><strong>2015 年 6 月，科技网站 VB &nbsp;报道称 Supercell 估值超过 55 亿美元，同年营收 23.26 亿美元。</strong></p></li></ul><p>业内人士纷纷佩服 Supercell 仅仅以三款手游便交出如此漂亮的财报，却不知这三款风靡全球的手游是踩着其他手游的残骸才站上今天的位置。</p><p>在开发《卡通农场》和《皇室战争》的前后，Supercell 砍掉了他们的第一款手机游戏《Pets vs Orcs》，以及接下来的《Tower》、《Battle Buddies》。</p><p>这些游戏失败的同时也让 Supercell 渐渐意识到：当你发现你的游戏不够有趣时，你应该尽早的放弃。</p><p></p>');
INSERT INTO `sd_model_news` VALUES ('3', '4', '0.00', '<p style=\"text-align: left;\"><span style=\"text-align: justify; text-indent: 2em;\">这几年，老媒体的优势在持续褪减，受众群体的关注点开始转移，诸如今日头条，百家号，企鹅号，搜狐号等各大自媒体平台进入主流市场，吸引了大量的用户。</span><br/></p><p>用户多了，阅读量自然就多了。在今日头条和百家号，不少文章均破百万、十万阅读，而为了鼓励更多作者进入平台，不少自媒体平台都给予作者奖励与分成。</p><p>例如头条号每个月给旗下作者的分成是 3000 万元，而企鹅号则是 1 亿元，百家号在 2017 年更计划分给作者们 100 亿元!</p><p>自媒体流量高还可能赚钱，可是又该如何运营呢?</p><p>今天就为大家详细讲解六大主流自媒体平台的运营方法，主要内容如下：</p><p><strong>百家号</strong></p><p>优点：推荐百度首页、百度新闻源、作者分成</p><p>平时我们在用百度时，可以看到百度搜索框下面会推荐一系列文章，这当中有一部分就是来源于百家号平台，也就是说，你输出的文章，很可能给推荐到百度首页，带来无数阅读量。</p><p>百家号的第二个优点就是收录效果(SE0)好，文章发布成功后，在百度搜索输入相关关键字，能轻易得到展现。</p><p>为了鼓励内容创业者，百家号给予了作者高达 100 亿的分成，据徐继业介绍，百家号已有多位作者收入超过 1 万元，帮助运营者实现“写作致富”。</p><p style=\"text-align: center;\"><img title=\"图片5.png\" src=\"http://upload.chinaz.com/2017/0407/201704070947092764.jpg\"/></p><p>运营方法：结合热点，文章定位，配图美观、空闲时间发布、持续更新</p><p><strong>(一)文章含热门关键字，具备话题性但不低俗</strong></p><p>百家号会根据用户搜索的习惯推荐文章，比如最近用户经常搜索“春节抢票”，那么一篇标题含有“春节抢票”的优质文章则会在用户使用百度时呈现在用户眼前。</p><p>另外一点是标题要起得吸引人，标题是吸引读者的一个关键，所以标题必须要简洁有力，不过不可低俗，因为每篇文章百家号都会审核，太低俗直接很可能不通过，甚至是封号。</p><p><strong>(二)根据文章定位选择恰当的分类</strong></p><p>这点很容易理解，根据你百家号选择领域来写相关文章</p><p><strong>(三)使用清晰度高且符合主题的封面图</strong></p><p>观众第一眼看到的是标题，第二个便是图片了，清晰有吸引力的图片能有效引导读者打开。</p><p><strong>(四) 选择适当发布的时间</strong></p><p>建议大家选择空闲时间段，比如上班路上，晚上，空闲时间有助于提高文字阅读量。</p><p><strong>(五) 持续更新</strong></p><p>初级账号每天可以更新一篇文章，当你连续更新一段时间，且文章阅读量高的情况下，百家平台会将账号等级升到“中级”，你的账号等级越高，相对应获得曝光以及推荐的机会也越多。</p><p style=\"text-align: center;\"><img title=\"图片6.png\" src=\"http://upload.chinaz.com/2017/0407/201704070947094324.jpg\"/></p><p><strong>企鹅号</strong></p><p>优点：多平台(腾讯新闻、天天快报、手机腾讯网、QQ浏览器、腾讯新闻插件、手机QQ新闻插件、QQ公众号)一键分发与推荐</p><p>企鹅媒体平台是腾讯旗下的自媒体平台，文章推荐渠道字扛扛滴!</p><p>企鹅媒体平台为自媒体提供多出口多场景的分发渠道，您发布的文章将在天天快报、腾讯新闻客户端、微信新闻插件、手机QQ新闻插件、QQ公众号、手机腾讯网、QQ浏览器等平台渠道进行一键分发，实现优质内容的更多、更准确曝光。</p><p style=\"text-align: center;\"><img title=\"图片7.png\" src=\"http://upload.chinaz.com/2017/0407/201704070947095572.jpg\"/></p><p>运营方法：内容垂直、首发、原创、内容健康、选题佳</p><p>企鹅号很容易申请，不过所有运营者都会先进入一个“试运营”阶段，试运营阶段是没有任何推荐的，等于僵尸号。等试运营通过，进入正式运营了，才能获得各种推荐，带来高流量。</p><p>运营企鹅号首先要通过试运营阶段，那么如何通过试运营呢?有以下几点：</p><p><strong>(一)内容的垂直度</strong></p><p>就是你要注册的时候选的是什么领域，那么你发文的时候就必须是什么领域，用他们的话说就是领域一定要垂直。你不能今天发娱乐，明天发汽车，后天发美食。也就是说从你申请开始，你就必须保持领域的一致性。</p><p><strong>(二)首发</strong></p><p>很多运营者都是一篇文章发布到很多个自媒体平台，而企鹅号是非常注重文章的首发性的，也就是说你必须要把你所写的文章第一个发布在它的平台。</p><p><strong>(三)原创</strong></p><p>原创是所有自媒体平台的必备要求，特别你在试运营企鹅号时，必须每篇文章都原创。</p><p><strong>(四)拒绝黄赌毒</strong></p><p>满足前面几点还不够，你的文章内容质量一定要做好，特别是不能有低俗的色情的东西出现，相信办办，这点非常非常的重要，腾讯对低俗的是零容忍的。</p><p><strong>(五)文章选题</strong></p><p>最好就是当前或最近的新闻热点，并结合你所选择的领域，组织文章内容。注意，内容要和相关图片结合，不能乱配图。还有一点，没通过试运营前不要带广告信息，等你通过试运营后可以在文章适当放微信公众号的ID。</p><p style=\"text-align: center;\"><img title=\"图片8.png\" src=\"http://upload.chinaz.com/2017/0407/201704070947096976.jpg\"/></p><p></p><p></p>');
INSERT INTO `sd_model_news` VALUES ('4', '5', '0.00', '<p>为了方便大家认识，我再自我介绍一下。 2009 年我创立的公司叫做宁哲网络，是面向地方网站的运营顾问公司。去年，我们与马甲APP合并，公司名是灵衍科技，是面向区域互联网的产品、运营综合服务公司。不打广告，其他信息大家可以搜索马甲APP和宁哲网络这两个品牌。今天我为大家分享的主题是地方自媒体如何利用有限资源赚更多钱。</p><p>首先，大家理解一下 2017 年对区域的媒体、自媒体意味着什么。</p><p>2014 年起，如果大家问我该做什么，我一定会说：吸粉。可是 2017 年，大家应该感觉到，不光微信，做各种自媒体的越来越多。自媒体越来越难做。去年， 2016 年上半年，单纯的微信广告，无论是贴片还是头条次条都很好卖。到了年底，广告很难卖了。也就是说，自媒体现在也要面临与老的地方网站一样的局面——专业化服务。</p><p>所以我先提出几个观点给大家，这是我的体验：</p><p>1、这已经不是微信的红利期，当前重要的任务是有了粉丝的快速变现，没有粉丝的也要变现。</p><p>2、不要任务事物的发展规律必然是现有123，再有456.自己一定要学会创造条件。</p><p>3、过去的规则是，现有用户，然后再考虑盈利，现在这个规律不一定还在起作用。</p><p>4、过去的规律是本地互联网必须从行业入手，现在这个规律也不全对。</p><p><strong>先看本地自媒体的盈利方式：</strong></p><p>√ 广告，很好理解。</p><p>√ 流量广告，也很好理解。</p><p>√ 销售提成，大家清楚，但是不一定每个人都认识深刻。</p><p>√ 活动，多数人都会做，但是做的未必对。</p><p>√ 人头费，基本都理解。需要补充的是，如果自己的定位是媒体，能收广告别轻易受人头费，能收人头费别轻易拿提成。</p><p>√ 会员卡，一会举例说，这是向用户收费。</p><p>√ 卖货，自己有平台自己卖货，这不是坏事，而且收入很高。</p><p><strong>这么多所谓的盈利方式，自己如何选择呢?自己如何下手呢?</strong>先看一个原则：</p><p>√ 特大号卖流量，例如有个特大号叫做传统节日祝福，是做过我们这个行业的迟振刚的。流量大到需要 5 太服务器，每天的联盟广告 5 万元以上。</p><p>√ 全国号卖产品。例如你做了一个全国的母婴号，你不可能在每个地方落地，所以考虑卖产品是个好办法。例如目前比较有名的APP，小红书、下厨房，都在卖货。</p><p>√ 本地号呢?不论大小，可以算一下，卖服务相对靠谱一些。</p><p><strong>所以，定位决定了你可以做什么!</strong></p><p>开篇的最后，我说一下创业的选择方式。</p><p><strong>在 2017 年，已经有了本地大号的赶紧学会赚钱、赚更多的钱!还没有大号的才起步的，不要理想太伟大，动不动做本地综合平台，一定要考虑细分的市场了!</strong></p><p>这一块估计很多人不容易理解，时间有限，大家可以在群里跟我交流，也欢迎大家到南京来找我们。</p><p><strong>下面，我们来讲今天的关键内容，怎么赚更多的钱。</strong></p><p>分三招：标准化服务、让自己具有服务优势、如何赚用户的钱。</p><p><strong>第一招，标准化服务</strong></p><p>在标准化服务方面，我创立的宁哲网络大约花了 5 年时间，从垂直网站引入了先进的运营服务方法，然后结合地方网站的特点予以改善。</p><p>目前地方自媒体的创业者如果留意，大家会发现似乎本地老牌的网站虽然在自媒体的动作上不如大家快，可是赚起钱来比大家厉害得多。很多人认为：老网站有团队、有人脉。其实，都不是，最关键的是：所有销售，最最关键的不是销售技巧，而是销售什么产品!</p><p>无论卖广告、卖活动还是卖产品，一切的根基都是信任。可是我们具体到可卖的产品，也就是一位公司销售员拿给客户看的东西。这样的问题就很具体了!</p><p>根据我们与几十家地方自媒体的交流，大概只有不到 3 家懂得产品包，懂得打包服务。具体说来，大家卖的东西不成体系，要么是纯广告，要么是活动，活动还要定制。卖效果吧，难度也不小，小编们经常为效果发愁。不愁卖的也痛苦，位子有限，并且仔细想想似乎自己遇到了瓶颈了。</p><p>我来跟大家交流一下我们的操作方法</p><p>1、首先，我们要把有限的位子卖出更好的价格来。</p><p>这就是所谓产品包怎么用。大家看 19 楼珠宝这个PPT， 19 楼不鼓励客户购买广告。可是他们连续 3 年收入过亿。</p><p>大家可以算算，发微信，每天 8 条，一年才有多少个位子?何况我们又不是咪蒙，咪蒙写得都像李碧华那样水准了，打死也难学会。这就是瓶颈。广告费难以涨太多，位子有限。</p><p>怎么做?</p><p>第一，广告、软文、活动，都订刊例价铬。就像刚才发给大家的搜房那个PPT。</p><p>软文必须计算价格，这是很多人忽略的，也就是买广告送软文，这样客户跟你砍价，你一直疼到肉。</p><p>第二、确定我们可以提供的软文类服务能做到怎样。会采访、会拍视频、会策划，会什么再跟别人说做什么。不会的不如不说。这条今天结束，很多人仔细考虑一下</p><p>第三、活动，尽量做可以重复的小活动。最好是那种类似儿童爬行比赛、做蛋糕、做手工等可以一年做几十场的。为什么?产品标识度高，好理解;团队熟悉程度高，培训成本低;反复做，人群不断积累。</p><p>做到以上 3 点，产品包的雏形就有了：广告+软文+活动。这是今天的第一招：服务要打包、服务要标准化。</p><p><strong>第二招，服务要有特色要有优势</strong>。</p><p>怎么来?给点实际的呗。活动是实在的，效果更是是在的。但是不要忘记，随时不要忘记：我们的资源永远是有限的。</p><p>所以我有 3 个建议：</p><p>建议1：产品包适当配一点干货。</p><p>例如本地自媒体基本都做美食。你又没有办法让你的客户感觉你实实在在提供了一点结果呀?有位站长这么做的，探店帖最后，加入一条：加老板娘微信发 1 元红包换 10 元优惠券。结果是什么?当晚老板娘加了几十位微信好友，收到了几十块钱红包。老板娘会算， 1 块钱就有少说 100 多的生意，这样一晚上的推广，几万的生意有戏了。这就是效果。</p><p>客户越来越精明，产品包里面只有广告、软文，他们没兴趣。必须有点料：活动、效果。</p><p>建议2：做到了要说出来!</p><p>资源有限，好的效果一定要让更多的人知道。我们不可能给每个客户都试一遍，那要把团队累死。</p><p>实战：在你要拜访一个客户之前，先通过朋友介绍加上客户老板的微信，用朋友圈、微信、群，对他进行一个月的广告轰炸!不是纯广告，要像我们圈内的几位鸡血哥那样——XX网XX活动大获成功，有几百位网友通过XX活动买到了汽车，总销售额XXX。平时爱理不理，一个月轰炸之后，他敢不理你?</p><p>建议3：学会写服务报告。百度文库里面肯定有样本!服务了不给个服务报告，真的太缺乏包装了!</p><p><strong>第三招，今天最后一部分内容：向用户收费。</strong></p><p>这也是新媒体时代的新玩法。内容收费、服务收费，对于年轻一代，越来越自然而然。互联网的免费时代慢慢就要过去了。</p><p>我就用一个案例来讲。有一个大号，是谁我要 1 个月之后公布。他们在 2 个城市已经分别卖了亲子活动卡 2000 张了。我认为这个模式不久之后会比五折卡更加热!</p><p>他们怎么做的?</p><p>1、购买版权，例如图书内容、卡通形象。要注意：版权越来越严，版权就是门槛。</p><p>2、组织各类受欢迎的活动，例如参观奶牛场、参观消防队、做蛋糕。。。</p><p>3、设置计次卡并销售，一般99、199，4- 6 次活动。他们发现，计次卡比包年好，比五折卡好。用户体验和重复购买容易实现。</p><p>这个案例告诉我们，没用户能不能赚钱?可以。</p><p>这个案例还告诉我们：自媒体时代快速赚钱怎么做?需要简单直接的模式!</p><p>OK ，今天分享先到这里!欢迎大家跟我交流!</p><p></p>');
INSERT INTO `sd_model_news` VALUES ('5', '6', '0.00', '<p>2017 年 3 月份，知名歌手薛之谦发布了一个小视频，视频内容是在地铁上，两个女孩想要一位男乘客帮忙扫一下二维码，但这位男乘客拒绝扫码并“教训”了这两位女孩。</p><p>这件事情引发了很多网民的不满，很多人都在评论区谴责这位施暴的男乘客，当然也有部分网友谴责像这两位女孩一样的“扫码一族”，在薛之谦的这条微博中，可以看出薛之谦的立场并不是中立，而是批评这位男乘客。</p><p>但羽度非凡认为当下社会中，我们的内心更愿意倾向弱者，总是认为弱者是对的，强者是错的。但这件事情中，我们不论两位女生是不是弱者，但羽度非凡想问一句：这位男乘客的做法真的错了吗?</p><p>虽然这位男乘客的做法有些不妥，但有没有换位思考过呢?如果有人向你推销或者向你乞讨，当你拒绝一两次之后，他们仍然不放弃，你会失去理智吗?至少我会。有人会说：“他们如果仍然坚持推荐，我就转身离开。”哥哥们，他们是在地铁上推广，地铁没到站，你要跳车吗?</p><p>还有，女孩让你扫描的二维码是什么?如果是木马病毒呢?所以我觉得视频中的男乘客做法可以理解。</p><p>再来说今天的主题：为什么在地铁中推广二维码的大多是年轻女孩?说这个问题之前，首先说一下地铁中推广二维码的人到底在推广什么?据羽度非凡了解，她们并没有直接推销产品，而是让乘客添加自己的个人微信，这一步在网络营销中叫做——吸粉(吸引粉丝)。</p><p>当你添加她们为微信好友之后，会在她们的朋友圈中看到每天几乎刷屏的广告，这些人推荐的大多数都是暴利产品，其中以化妆品、减肥用品为主。</p><p>看到这里，很多人应该都清楚这些人是做什么的了，其实就是“微商”，只不过他们的吸粉方式从线上转移到了线下。原因是因为之前大多数的微商、电商都是通过线上吸粉的，但目前线上吸粉的成本已经很高了，而且你吸引的粉丝可能不是精准粉丝，也可能已经是你竞争对手的粉丝，那么你还需要完成“洗粉”——将别人的粉丝变成你的粉丝，因此不仅仅吸粉的成本高了，转化的步骤也多了，所以很多微商转移到线下吸粉，抢夺线下的流量资源。</p><p></p>');
INSERT INTO `sd_model_news` VALUES ('6', '21', '0.00', '<p>4 月 20 日，腾讯公司联合浙江省经济和信息化委员会在杭州举办了 2017 中国“互联网+”数字经济峰会，本次峰会以“赋能新结构，连接新动能”为主题，有来自政企学界的 2000 名人士参会。<br/></p><p>数字经济已经占到了中国 2016 年 GDP 总量的 30.61%</p><p>在大会上，腾讯研究院发布了《中国“互联网+”数字经济指数(2017)》报告，这份报告汇集了来自腾讯、滴滴、新美大、京东、携程等企业的“互联网+”大数据，对中国从沿海到内陆地区的数字经济状况进行了总结。</p><p>数据显示，2016 年我国数字经济总体量大约为 22.77 万亿元，占到了 GDP 总量的 30.61%，而数字经济也已经成为我国 GDP 增长的重要动力。<br/></p><p>数字经济对就业增长也起到了重要作用，根据腾讯方面的预计，数字经济在 2016 年带来的新增就业机会达到了 280.17 万个，占全年全国 1314 万城镇新增就业人口的 21.32%。</p><p>报告还指出，数字经济的发展还有利于消弭不同地区之间的发展鸿沟，对精准扶贫发展方向也有参考性作用。具体在数字上，互联网+指数每增长一个点，内陆省份 GDP 上升幅度相较于东部沿海省份多出 1619.48 亿元。</p><p>报告还以指标的形式，精准刻画了全国 31 个省份以及 351 个城市的数字经济发展状况。</p><p>其中，位居“互联网+数字经济指数”榜单前五名的省份分别是广东、北京、上海、浙江、江苏;具体在城市上，北上广深为数字经济一线城市，在总指数中占比 29%;成都、杭州、南京等 14 个城市为二线城市，占比 19.17%。</p><p>另外，本次峰会还揭晓了由人民日报主办、腾讯公司支持的 2016 年度“互联网+”优秀案例评选结果;摩拜智能共享单车、联通公司防欺诈公益服务、杭州滨江房产的“互联网+社会社区”等被评选为为十个最能代表“互联网+”实践的优秀案例。</p><p>对于中国数字经济的发展，马化腾表示，其实“互联网+”是手段，数字经济是结果，“互联网+”与实体经济的结合将创造巨大的创新机会，而在云端利用人工智能处理大数据是企业未来发展的重点。<br/></p><p>马化腾对话宗庆后等人：互联网+能覆盖所有行业吗?</p><p>本次峰会除了公布数字经济的相关数据之外，还进行了一场以“重新发现中国经济”为主题的人物对话;对话的参与者包括北大教授周其仁、哇哈哈董事长宗庆后、联想董事长杨元庆、腾讯董事局主席马化腾等人，对话由财经作家吴晓波来主持。<br/></p><p>当被问到联想对互联网+的看法时，杨元庆表示互联网颠覆了很多行业，比如说媒体、游戏等;但在更广泛的意义上，互联网改变了很多行业，包括传统行业。</p><p>杨元庆表示，对于联想来说，整个企业的几乎所有环节(比如说销售和制造)都已经被互联网改变;与此同时，联想也在积极地参与互联网的发展，具体思路就是从个人计算机到个人计算，未来再发展到个性化计算。<br/></p><p>谈到互联网+与数字经济时，周其仁认为，中国当下对各种新概念越来越敏感和感兴趣，这是好事;但另一方面，这些概念对生产、生活本身的改变其实并不那么大;数字经济能够解决中国的问题，但还是要通过技术发展，通过提升产品的品质，然后用数字化的调配把生产、销售的整个流程合理化。<br/></p><p></p>');
INSERT INTO `sd_model_news` VALUES ('7', '22', '0.00', '<p>前几年，当我提及用户体验或交互设计时，除了一些业内朋友，大部分人是懵逼的。现如今每个互联网公司都在谈用户、谈体验、谈以用户为中心的设计、谈用户体验设计。那有多少人真的认真思考过：用户体验到底是什么?这个每天都挂在嘴边的词，你真的懂吗?</p><h2>1.用户体验的定义</h2><p>用户在使用产品、服务、系统时的主观感受。这是比较公认的对用户体验的定义，有三个关键点：用户;产品/服务/系统;主观感受。</p><ul class=\" list-paddingleft-2\"><li><p>用户：即使用产品的目标人群，你的产品能满足这部分人的需求，解决他们的痛点。</p></li><li><p>产品/服务/系统：我没有用产品，而是增加了服务和系统，是想说明用户体验的广泛性，在使用APP时、浏览网站时、去KTV唱歌时都涉及到用户体验。</p></li><li><p>主观感受：可以理解为意识、情绪，例如：买票的时候因为不断输错验证码导致没买上票，那使用该款购票软件的用户体验就是糟糕的、沮丧甚至是气愤的;使用snapchat时，被可爱的滤镜逗乐、被简单的操作打动就是好的用户体验，这时候你的感受是愉悦、轻松、自然的。</p></li></ul><h2>2.用户体验设计的起源</h2><p>用户体验设计是上世纪 90 年代被著名心理学家、用户体验设计师唐纳德·若曼提出的。唐纳德·若曼就是著名的《设计心理学》的作者。</p><p>当时的互联网产品很少有站在用户角度去设计和开发的，基本都是基于实现模型去写的，这样的产品出来，用户使用过程中会遇到各种问题，导致操作成本过高、影响效率。基于这种背景，唐纳德·若曼提出了要以用户为中心，站在目标用户的心理模型的角度去思考产品的设计和开发，这便是用户体验设计的由来。</p><h2>3.设计理念</h2><p>不像建筑设计师、工业设计师、平面设计师、交互设计师等等，这些讲的都是一种设计职业，建筑设计师是设计空间结构的、交互设计师是设计信息架构、导航、页面框架的。而用户体验设计一种设计理念、思想。这种设计理念要求互联网从业人员，尊重用户的感受，帮助用户在使用产品的前中后都能有良好的体验。即让互联网产品从实现和功能回归到了人自身。</p><p>拿原研哉来说，他的设计理念是Re-design：从产品本质和人性的角度去重新思考日常用品，并对它们进行重新设计。深泽直人的设计思想则偏向于without tought(无意识设计)，让人们无意识的使用一款产品，不需要思考，很自然。</p><p style=\"text-align: center;\"><a class=\"bPic\" href=\"http://upload.chinaz.com/2017/0420/201704200925385572.jpg\"><img width=\"751\" height=\"334\" alt=\"\" src=\"http://upload.chinaz.com/2017/0420/201704200925385572.jpg\"/></a></p><p style=\"text-align: center;\">深泽直人设计：“钥匙放下灯亮，钥匙拿走灯灭”</p><p>好的设计理念其实是相通的，都会涉及到人，都会去思考人、思考产品与生活的关系。对于互联网产品来说，用户体验设计就是这样一种好的设计理念。</p><h2>4.五个层次</h2><p>《用户体验要素》这本书对于用户体验设计进行了详细的介绍，作者Jesse James Garrett将户体验设计分五个层面进行了说明。分别是：战略层、范围层、结构层、框架层、表现层。也就是说用户体验不仅仅是产品设计阶段该关注的问题，而要从公司战略、商业模式的思考开始就应该要考虑的问题，要用户体验设计的理念贯穿整个产品过程。</p><p style=\"text-align: center;\"><a class=\"bPic\" href=\"http://upload.chinaz.com/2017/0420/201704200925386820.jpg\"><img width=\"695\" height=\"348\" alt=\"\" src=\"http://upload.chinaz.com/2017/0420/201704200925386820.jpg\"/></a></p><p style=\"text-align: center;\">用户体验要素</p><ol class=\" list-paddingleft-2\"><li><p>战略层涉及产品目标和用户需求;</p></li><li><p>范围层包括功能定义和内容定义;</p></li><li><p>结构层主要有交互设计和信息架构设计;</p></li><li><p>框架层包含界面设计、导航设计、信息设计;</p></li><li><p>表现层即视觉设计。</p></li></ol><p>由于互联网产品越来越复杂，这些工作逐步分工为多个职位一起完成，中高层管理人员会制定好公司战略;产品经理的工作主要集中在范围层;交互设计师负责结构层和框架层、同时牵扯到范围层和表现层;UI设计师工作范围为表现层。</p><p>但是不管是哪个职位，都不要被自己的title所限制，应该试着从战略层开始，一层层向下思考商业模式、产品定位、需求分析、信息架构、交互设计、视觉设计等问题。如果一名交互设计师只把自己的眼界局限在结构层和框架层，他就不可能看到公司和产品的全貌，理解需求和设计产品时难免会有偏差。所以无论你的title是什么，都要把自己的眼界放在全局，用第一性原理去思考问题(关于第一性原理，可以查看上篇文章《从产品的本质到产品价值：谈谈第一性原理与互联网产品》)。</p><h2>5.用户体验地图</h2><p>上面简单介绍了用户体验设计的五个层面，以及五个层面和互联网产品开发流程之间的关系。接下来介绍一个实用的方法论：将用户体验设计的理念运用的具体方法——用户体验地图。</p><p>在介绍这个方法前，我们必须要清楚，用户体验不仅仅涉及产品使用中、也涉及到产品使用前和使用后，即用户接触产品的全流程。只有从整个流程去关注用户体验对产品的影响，才能整体性的提高产品的用户体验。</p><p>举例来说，前段时间杭州地铁被网易云音乐承包，网易云音乐将社区内各种人气音乐评论打印出来贴满了整个地铁。让用户在等待地铁的过程中，可以通过看其他人的评论来打发时间并引发情感上的共鸣，从而让云音乐的用户有良好的体验，让潜在用户能够在未使用产品时就能对产品产生好奇和好感。包括知乎的视频广告，都是使用产品前让用户获得良好体验的例子。</p><p>用户体验地图就是将用户使用产品前中后各个流程的路径用图表的形式画出来，并在关键路径下用柱状图表示用户体验的高低，每个关键路径下都有影响用户体验的点，把这些点找出来，并改进。</p><p>拿注册流程来说，注册和登录对于用户来说是毫无意义的，但是产品需要获取用户的账号信息来管理用户，并存储用户数据。这个时候如何减少注册过程的流程、降低注册的操作成本就能够提高用户体验。包括：点击不同的文本框弹出相应的键盘、提供第三方授权登录、用手机验证码登录代替邮箱密码登录等等。</p><p>&nbsp;</p>');
INSERT INTO `sd_model_page` VALUES ('1', '7', '\"\"', '<p>　　时代网站信息管理系统（简称：SDCMS，计算机软件著作权登记号：2013SR024100），SDCMS是成都某某网络科技有限公司旗下产品，自2008年发布第一个产品以来，历经八年的成长与发展，时至今日我们已研发出门户版、商城版、企业版以及最新的PHP三网合一企业网站管理系统等产品系列。我们的产品为几十万中小企事业单位提供了源动力。</p><p>　　八年来我们一直致力于产品的良好用户体验、网络营销效果而努力，我们力求每一个产品版本的发布，都要向前迈进，与时俱进。</p><p>　　强大灵活的模板引擎，方便扩展的自定义模型、模型自定义字段、自定义表单等灵活的功能扩展，满足各种不同的需求。强大的手机版功能，智能识别手机和电脑访问，更好的满足移动互联网的需要。</p><p>　　展望未来，我们将一如既往注重产品的用户体验和实用价值，为日新月异的互联网发展而不懈努力！</p>');
INSERT INTO `sd_model_page` VALUES ('2', '8', '\"\"', '<p>企业文化</p>');
INSERT INTO `sd_model_page` VALUES ('3', '6', '\"\"', '<p><iframe width=\"100%\" height=\"400\" src=\"/?m=plug&c=index&a=index&p=map\" frameborder=\"0\"></iframe></p>');
INSERT INTO `sd_model_page` VALUES ('4', '19', '\"\"', '<p>　　优秀的人才是实现企业战略目标的基础，是企业持续发展的动力。公司以科学的人才培养方法、有效的激励机制、公平的竞争平台、广阔的事业发展空间广纳良才，在人力资源“选、育、用、留”方面加大力度，不断优化人员素质结构。让每一位员工都能在佳讯飞鸿的这个集体中充分体现自我价值，达到个人生涯规划与企业发展目标的最大契合，员工与企业共同的成长。公司尊崇“创新、超越；正直、责任、合作精神；快乐工作、健康生活”的企业价值观，并以此作为我们人力资源各项工作的指导原则，我们认为“出色完成本职工作的员工是公司的财富”，公司注重员工正直诚实和勇于承担责任的职业品德，提倡沟通、合作与敬业、互帮互助。公司以科学规范的管理为员工提供良好的工作环境和发展平台，努力实现员工与企业的共同发展和进步。</p><p>　　公司倡导简单而和谐的人际关系，抵制任何不良的“公司政治”现象，让人与人的关系变得简单而健康，努力构建快乐工作的氛围。我们关心员工生活，鼓励员工追求身心的健康，企业支持员工开展丰富的文化体育活动，让员工在工作之外放松心情，使员工能够努力工作、快乐生活。<br/></p><p><strong>人才应该具备这样的素质：</strong></p><p>　　第一，健康的人格。这个说法可能比较形而上，简单地说就是要有原则，有是非善恶的明确标准，有强烈的责任心和良好的职业操守。</p><p>　　第二，较高的创造性。他必须有创新意识，看问题有独特的视角，有创意冲动，有求异思维和敢于怀疑的精神。</p><p>　　第三，主动精神。有较高的主观能动性，有自我完善和自我发展意识，少依赖性。</p><p>　　第四，广博的知识。企业讲究人才要有复合型知识结构，这样可以保证人才有迁移性思维。</p><p>　　在这些素质中，良好的职业操守显得尤为重要。而良好的职业操守是职业经理人必须具备的从业素质，不然人家怎么会放心把企业交给你来打理？你首先要知道你应该做什么，并知道应该怎样去做，你必须明确你的责任、目标在什么地方。而实现这一切的前提是健康的人格和责任感。</p>');
INSERT INTO `sd_model_page` VALUES ('5', '15', '\"\"', '<p><strong>营销型企业网站的核心要素</strong></p><p><strong>1、 以帮助企业实现经营目标为网站建设目标</strong></p><p>　　营销型企业网站一定是为了满足企业的某些方面的网络营销功能，比如面向客户服务为主的企业网站营销功能，以销售为主的企业网站营销功能，以国际市场开发为主的企业网站营销功能，以上简单列举均是以实现企业的经营目标为核心，从而通过网站这样的工具来实现其网站营销的价值。</p><p><strong>2、 良好的搜索引擎表现</strong></p><p>　　企业网站另一个重要功能是网站推广功能，而搜索引擎是目前网民获取信息最重要的渠道，如果企业网站无法通过搜索引擎进行有效推广，那么这个企业网站从一定程度上来讲其营销性会大打折扣，所以营销型企业网站必然要解决企业网站的搜索引擎问题，也可以理解为搜索引擎优化的工作，在营销型企业网站解决方案中，搜索引擎优化工作为基础和长期的工作，从企业网站的策划阶段乃至从企业网络营销的战略规划阶段就已经开始，而且又贯穿于企业网站的整个运营过程。</p><p><strong>3、 良好的客户体验</strong></p><p>　　企业网站最终面对的潜在客户与客户或说与本公司业务有关联的任何组织和个人，如何提升企业网站的客户体验是营销型企业网站必须考虑的重要问题。客户体验在我们的现代营销中无处不存在其身影，比如电话营销中我们不得不重视客户体验、在面对面营销中我们不得不重视客户体验，在设计企业业务流程时不得不重视客户体验；那么企业网站是一个直接面对市场主体的窗口更需要重视其客户体验性。客户体验又是一个非常无法量化的指标，更多的时候是不同受众的感觉。我们一般从这几方面来实现一个具备良好客户体验的营销型企业网站：可用于易用性（网站的基础标准：速度、安全、兼容型以及导航等）、网站的沟通性（对于特殊用户群体的定制，企业网站应该具备的交互与沟通功能，）、网站的可信度（与传统信息的一致以及站内信息的一致，信赖程度等）、易于传播（分享是网络营销中价值转换率最高的一种模式）等方面。</p><p><strong>4、 重视细节</strong></p><p>　　细节本也是客户体验中一个重要的元素，由于其的重要性所以我们单独将其作为营销型企业网站的一个因素，在营销型网站的流程制定、内容维护、网站管理等都需要体现出来细节问题。</p><p><strong>5、 网站监控与管理</strong></p><p>　　营销型网站的另一个因素是网站本身的监控功能与管理功能，最简单来说网站总需要加一段流量监测的代码吧，更多的管理特点就不多做介绍。</p><p><strong>营销型企业网站技术与营销的关系</strong></p><p>　　摆在我们面前的一个很重要的问题，营销型企业网站是以营销为导向，而技术是一个什么样的地位与角色，在营销型企业网站整体体系中技术是基础，同时技术也是支持营销型网站实　现营销目标的一个不可或缺的重要因素。</p><p>　　以营销为导向的营销型网站如何理解：在上面已经对这个问题做了分析，营销指企业的整体营销和企业的网络营销，营销型企业网站所指以营销为导向的网站建设思路即是以企业营销与网络营销目标为网站营销规划与建设的指导思想，这个时候技术作为实现的工具。</p><p>　　新技术在营销型企业网站中的应用：在营销型企业网站建设过程中我们处处可以感受到新技术的应用所带来的营销价值，比如搜索引擎优化技术的应用、HTML静态化技术的应用，WEB标准为指导的网页代码编写，基于WEB的交互工具，基于WEB的CRM客户系统等都在为营销型网站实现更大营销价值而服务。</p><p>　　以营销为导向并不是否定技术的重要，而反过来对新技术的应用却是营销型网站解决方案的一大特点，简单的例子，2005年5月博研科技就率先在企业网站中全面采用WEB标准来构建网站，这个时候一些网络营销专家却还在说这种技术至少需要3-5年才能在国内普遍应用，实际上我们并不需要考虑其是否普及，更多的是其对网站营销是否有价值。</p><p>　　最后用一句话来结束技术与营销的关系，营销型网站开发的技术人员与营销的关系：<strong>不懂营销的技术人员永远也无法开发出满足企业营销需要的营销型企业网站。</strong></p><p></p>_sdcms_content_page_<p><strong>如何构建营销型网站</strong></p><p>　　通过将SEO概念融入网站网站的程序设计，域名选择功能规划等方面。交给客户一个带有搜索引擎优化元素，符合搜索引擎规范的网站。</p><p>省略花哨的、无意义网页，营销网站的每一个页面都将会在产品销售过程中发挥作用。</p><p>　　把焦点放在网站的使用性、信息结构和最好的优化行径。让浏览者可以快速查找产品，联系方式，来电咨询。</p><p>　　产品文案的重构将试图为您与您的客户之间建立起一座桥梁，通过合适的文字条理去建立客户对企业与产品的信任。供明晰的结构、诱饵性产品介绍与全新的WEB2.0技术，以触发潜在客户购买动作为目的的网站建设方式。</p><p>　　如果网站设计的非常符合搜索引擎优化，那么不用花一分钱就可以在Google、百度、Yahoo等搜索引擎中获得较好的排名，从而让搜索引擎源源不断的给你带来客户。</p><p>网站设计是否人性化，直接影响着你的潜在客户能否在最短的时间内了解你，信任你，并且能够快速转化成你的客户。要让网站设计的人性化，就需要在网站的结构、业务介绍流程、产品的描述文案、排版设计，网页技术采用等方面进行专业的策划。</p><p>　　在线网络客服系统、 潜在客户跟踪系统等辅助手段进一步提升效益。</p><p>影响营销型网站成败的因素主要有三项：</p><ol class=\" list-paddingleft-2\"><li><p>营销型网站成败的决定性因素是坚持不懈</p></li><li><p>营销型网站关键性因素是领导对自己的网站建设的认识及重视程度；最后是网站建设服务提供商的技能及专业水平。</p></li><li><p>营销型网站是指以现代网络营销理念为核心,以搜索引擎良好表现、用户良好体验为标准,能够更好地将访客转化为顾客的企业网站.</p></li></ol><p>　　所有营销型企业网站首先要符合SEO,搜索引擎优化排名是最重要的网站推广手段之一,如果一个企业网站没有从SEO的角度去设计,做好之后，还需要花不少钱请专业的SEO公司进行网站优化.网站不是艺术品，一定要设计的清晰明了,方便用户浏览.网络营销是一种技术和营销策略相集合的营销手段,所以采取合理的网络营销工,可以很大程度的提高潜在客户的转化率</p>');
INSERT INTO `sd_model_page` VALUES ('6', '16', '\"\"', '<p>内容整理中</p>');
INSERT INTO `sd_model_page` VALUES ('7', '17', '\"\"', '<p>内容整理中</p>');
INSERT INTO `sd_model_page` VALUES ('8', '18', '\"\"', '<p>内容整理中</p>');
INSERT INTO `sd_model_pro` VALUES ('1', '13', '1680.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492744807564.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('2', '14', '2680.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492744749261.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('3', '15', '2880.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492744168834.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('4', '16', '3680.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492744083632.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('5', '17', '6880.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492743980137.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('6', '18', '2880.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492743879620.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('7', '19', '1880.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492743766725.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('8', '20', '3880.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492743531971.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('9', '23', '12800.00', '', '{\"1\":{\"image\":\"/upfile/2017/04/1492742990964.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_model_pro` VALUES ('10', '24', '0.00', '<p>案例介绍</p>', '{\"1\":{\"image\":\"/upfile/2017/04/1492744858657.jpg\",\"desc\":\"\"}}');
INSERT INTO `sd_plug_map` VALUES ('1', '120.591521', '31.307003', 'D2d3b9d5a30342fb3610bcf2c5dd8178', '400', '<p><b>成都某某网络科技有限公司</b><br/>电话：028-12345678<br/>地址：成都市高新区科技园1001</p>');
INSERT INTO `sd_tags` VALUES ('1', '用户体验', '1');
INSERT INTO `sd_tags` VALUES ('2', '案例', '10');
INSERT INTO `sd_temp_mail` VALUES ('1', '留言提醒', '有一条新的留言需要处理【$webname_$weburl】', '<p>姓　名：$name<br/>手　机：$mobile<br/>电　话：$tel<br/>内　容：$remark</p>', '1', 'book');
INSERT INTO `sd_temp_mail` VALUES ('2', '询价提醒', '有一条新的询价需要处理【$webname_$weburl】', '<p>产　品：$proname<br/>姓　名：$name<br/>手　机：$mobile<br/>备　注：$remark</p>', '1', 'inquiry');
INSERT INTO `sd_temp_mail` VALUES ('3', '订单提醒', '有一条新的订单需要处理【$webname_$weburl】', '<p>订单号：$orderid<br/>产　品：$proname<br/>数　量：$num<br/>金　额：$money<br/>姓　名：$name<br/>手　机：$mobile<br/>地　址：$mobile<br/>备　注：$remark</p>', '1', 'order');
INSERT INTO `sd_temp_mail` VALUES ('4', '用户注册', '账号注册邮箱验证', '<p>您正在进行【注册账户】邮箱验证：<br/>您的验证码是：$code<br/>如本邮件非您操作响应，请忽略。</p>', '1', 'reg');
INSERT INTO `sd_temp_mail` VALUES ('5', '找回密码', '账户找回密码邮箱验证', '<p>您正在进行【找回密码】邮箱验证：<br/>您的验证码是：$code<br/>如本邮件非您操作响应，请忽略。</p>', '1', 'getpass');
INSERT INTO `sd_user_group` VALUES ('1', '普通会员', '0');
INSERT INTO `sd_user_group` VALUES ('2', 'Vip会员', '0');
