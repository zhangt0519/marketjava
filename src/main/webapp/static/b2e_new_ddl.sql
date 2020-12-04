CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `flag` int(11) DEFAULT '1',
  `mobile` varchar(11) DEFAULT NULL,
  `lastupdatedate` datetime DEFAULT NULL,
  `loginerrors` int(11) DEFAULT NULL,
  `lastlogindate` datetime DEFAULT NULL,
  `groupcode` varchar(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1超级用户，2普通用户',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mmfzd` int(11) DEFAULT NULL COMMENT '"1.字母数字组合\n2.字母数字特殊符号组合"',
  `mmyxq` int(11) DEFAULT '90' COMMENT '更改密码的天数 默认90天，超过有效期，锁定用户',
  `txts` int(11) DEFAULT '10' COMMENT '比如密码到期10天提醒',
  `mmcfcs` int(11) DEFAULT '5' COMMENT '密码最近五次修改不允许重复，默认5次',
  `mmcwcs` int(11) DEFAULT '6' COMMENT '密码登陆错误6次，系统锁定用户',
  `rzbts` int(11) DEFAULT NULL COMMENT '日志保存天数，超过保存天数，后台运行程序自动删除',
  `ukeytype` int(11) DEFAULT NULL,
  `cshmmsj` int(11) DEFAULT NULL,
  `messageinfo` int(11) DEFAULT NULL,
  `shortmessagetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `grouporgan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gcode` varchar(100) NOT NULL,
  `ocode` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE `log` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `module` longtext,
  `type` longtext,
  `des` longtext,
  `operateid` varchar(200) DEFAULT NULL,
  `operatename` varchar(200) DEFAULT NULL,
  `operatedatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(200) DEFAULT NULL,
  `logtype` varchar(200) DEFAULT NULL,
  `loginfo` longtext,
  `error` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

CREATE TABLE `organ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

CREATE TABLE `sap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '1',
  `mobile` varchar(11) DEFAULT NULL,
  `lastupdatedate` datetime DEFAULT NULL,
  `pwdstatus` int(11) DEFAULT NULL,
  `loginerrors` int(11) NOT NULL DEFAULT '0',
  `lastlogindate` datetime DEFAULT NULL,
  `groupcode` varchar(20) NOT NULL DEFAULT '1',
  `oldpwd` varchar(1000) DEFAULT NULL,
  `ucn` varchar(1000) DEFAULT NULL,
  `uqm` varchar(1000) DEFAULT NULL,
  `sms` varchar(20) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

CREATE TABLE `sapip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sapcode` varchar(100) NOT NULL,
  `sapname` varchar(200) NOT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

CREATE TABLE `saporgan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sapcode` varchar(200) NOT NULL,
  `groupcode` varchar(200) DEFAULT '1',
  `organcode` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;

CREATE TABLE `sapservicetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sapcode` varchar(100) NOT NULL,
  `scode` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

CREATE TABLE `sapukey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sapcode` varchar(100) NOT NULL,
  `sapname` varchar(200) NOT NULL,
  `ukey` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

CREATE TABLE `servicetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `des` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0' COMMENT '1代表启用',
  `users` int(11) NOT NULL DEFAULT '0',
  `ip` int(11) NOT NULL DEFAULT '0',
  `organ` int(11) NOT NULL DEFAULT '0',
  `service` int(11) DEFAULT '0',
  `u` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `back_ip` int(11) DEFAULT NULL,
  `back_organ` int(11) DEFAULT NULL,
  `shortmessage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

CREATE TABLE `t_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_type` int(11) DEFAULT NULL,
  `action_method` varchar(500) DEFAULT NULL,
  `action_desc` varchar(500) DEFAULT NULL,
  `action_user` varchar(200) DEFAULT NULL,
  `action_ip` varchar(200) DEFAULT NULL,
  `action_param` varchar(2000) DEFAULT NULL,
  `action_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

CREATE TABLE `t_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `dest_id` varchar(100) DEFAULT NULL,
  `business_type` varchar(200) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `request_time` datetime DEFAULT NULL,
  `response_time` datetime DEFAULT NULL,
  `rst_status` varchar(200) DEFAULT NULL,
  `rst_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

CREATE TABLE `t_short_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) DEFAULT NULL,
  `seq` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_used` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

