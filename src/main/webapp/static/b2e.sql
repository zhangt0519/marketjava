alter table users add column create_date datetime;

alter table users add column update_date datetime;

alter table sap add column create_date datetime;

alter table sap add column update_date datetime;

alter table servicetype add column create_date datetime;

alter table servicetype add column update_date datetime;

alter table organ add column create_date datetime;

alter table organ add column update_date datetime;

alter table servicetype add column back_ip int(11);

alter table servicetype add column back_organ int(11);

update servicetype set back_ip=0, back_organ=0;


CREATE TABLE `sapukey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sapcode` varchar(100) NOT NULL,
  `sapname` varchar(200) NOT NULL,
  `ukey` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


alter table config add ukeytype int(11);
alter table config add cshmmsj int(11);
update config set ukeytype=2, cshmmsj=25 where id=1;


alter table sap add column pwdstatus int(11) after lastupdatedate;

alter table sap modify column pwd varchar(200);


CREATE TABLE `t_action` (
  id int(11) NOT NULL AUTO_INCREMENT,
  action_type int(11),
  action_method varchar(500),
  action_desc varchar(500),
  action_user varchar(200),
  action_ip varchar(200),
  action_param varchar(2000),
  action_time datetime,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


CREATE TABLE t_log (
  id int(11) NOT NULL AUTO_INCREMENT,
  user varchar(200),
  dest_id varchar(100),
  business_type varchar(200),
  ip varchar(100),
  operate_time datetime,
  request_time datetime,
  response_time datetime,
  rst_status varchar(200),
  rst_desc varchar(2000),
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

insert  into `users`(`id`,`code`,`name`,`pwd`,`flag`,`mobile`,`lastupdatedate`,`loginerrors`,`lastlogindate`,`groupcode`,`type`) values (1,'ADMIN','超级用户','21232f297a57a5a743894a0e4a801fc3',1,'2222',NULL,NULL,NULL,'1',1),(11,'B2EOS','B2EOS管理员','21232f297a57a5a743894a0e4a801fc3',1,'1234567890',NULL,NULL,NULL,'TL01',1),(12,'ADMINISTRATOR','超级用户','21232f297a57a5a743894a0e4a801fc3',1,'*',NULL,NULL,NULL,'1',1),(14,'JCB','JCB管理员','21232f297a57a5a743894a0e4a801fc3',1,'111111',NULL,NULL,NULL,'1',1);

alter table config add messageinfo int(11);

update config set messageinfo=2 where id=1;


CREATE TABLE t_short_message (
  id int(11) NOT NULL AUTO_INCREMENT,
  tel varchar(20),
  seq varchar(20),
  code varchar(20),
  create_time datetime,
  is_used int(2),
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

alter table servicetype add column shortmessage int(11);

update servicetype set shortmessage=0

alter table config add column shortmessagetime int(11);

update config set shortmessagetime=5 where id=1;






