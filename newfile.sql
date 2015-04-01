SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS article;
DROP TABLE IF EXISTS authority;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS user;




/* Create Tables */

CREATE TABLE article
(
	a_id int(11) NOT NULL AUTO_INCREMENT,
	-- 管理员id
	u_id int(11) unsigned NOT NULL COMMENT '管理员id',
	-- 类别主键
	c_id int(11) NOT NULL COMMENT '类别主键',
	-- 文章标题
	a_title varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文章标题',
	-- 文章内容
	a_content text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文章内容',
	a_time datetime,
	PRIMARY KEY (a_id)
);


CREATE TABLE authority
(
	au_id int(11) unsigned NOT NULL AUTO_INCREMENT,
	-- 管理员id
	u_id int(11) unsigned NOT NULL COMMENT '管理员id',
	-- 类别主键
	c_id int(11) NOT NULL COMMENT '类别主键',
	-- 权限值0-7，类似linux用户权限，0代表没权限。
	au_value int COMMENT '权限值0-7，类似linux用户权限，0代表没权限。',
	PRIMARY KEY (au_id)
);


CREATE TABLE category
(
	-- 类别主键
	c_id int(11) NOT NULL AUTO_INCREMENT COMMENT '类别主键',
	-- 管理员id
	-- 建立者
	u_id int(11) unsigned NOT NULL COMMENT '管理员id
建立者',
	-- 类目名称
	c_name varchar(40) COMMENT '类目名称',
	-- 建立的时间
	c_time datetime COMMENT '建立的时间',
	PRIMARY KEY (c_id)
);


CREATE TABLE user
(
	-- 管理员id
	u_id int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员id',
	-- 管理员名字
	u_name varchar(40) COMMENT '管理员名字',
	-- 密码
	pwd char(32) COMMENT '密码',
	-- 是否为超级管理员
	su_flag boolean DEFAULT '0' COMMENT '是否为超级管理员',
	-- 建立时间
	u_time datetime COMMENT '建立时间',
	PRIMARY KEY (u_id)
);



/* Create Foreign Keys */

ALTER TABLE article
	ADD FOREIGN KEY (c_id)
	REFERENCES category (c_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE authority
	ADD FOREIGN KEY (c_id)
	REFERENCES category (c_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE article
	ADD FOREIGN KEY (u_id)
	REFERENCES user (u_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE category
	ADD FOREIGN KEY (u_id)
	REFERENCES user (u_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE authority
	ADD FOREIGN KEY (u_id)
	REFERENCES user (u_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



