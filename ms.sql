/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : ms

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-04-03 18:34:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) unsigned NOT NULL COMMENT '����Աid',
  `c_id` int(11) NOT NULL COMMENT '�������',
  `a_title` varchar(32) DEFAULT NULL COMMENT '���±���',
  `a_content` text COMMENT '��������',
  `a_time` datetime DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `c_id` (`c_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `article_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`),
  CONSTRAINT `article_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '2', 'article title', 'content1 content1', '2015-02-22 10:51:40');
INSERT INTO `article` VALUES ('2', '2', '1', 't2', 'c2', '2015-03-18 10:54:12');
INSERT INTO `article` VALUES ('3', '2', '2', 't3', 'c3', '2015-03-17 10:54:30');
INSERT INTO `article` VALUES ('4', '1', '1', 't4', 'c4', '2015-04-01 10:54:49');
INSERT INTO `article` VALUES ('6', '3', '1', 'ssssss', '<p>搜索风云榜<a href=\"https://www.baidu.com/#\">换一换</a></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=200%E4%BD%99%E4%BA%BA%E5%9B%B4%E5%A0%B5%E6%B4%BE%E5%87%BA%E6%89%80&amp;rsv_idx=2\" target=\"_blank\">200余人围堵派出所</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E9%87%8D%E5%BA%86%E5%8C%BB%E7%96%97%E8%B0%83%E4%BB%B7%E8%A2%AB%E5%8F%AB%E5%81%9C&amp;rsv_idx=2\" target=\"_blank\">重庆医疗调价被叫停</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E4%BF%84%E7%BD%97%E6%96%AF%E6%B2%89%E8%88%B9%E4%BA%8B%E6%95%85&amp;rsv_idx=2\" target=\"_blank\">俄罗斯沉船事故</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E4%B8%8A%E6%B5%B7%E6%91%A9%E5%A4%A9%E5%A4%A7%E6%A5%BC%E5%A4%96%E5%90%8A%E7%AF%AE%E5%A4%B1%E6%8E%A7&amp;rsv_idx=2\" target=\"_blank\">上海摩天大楼外吊篮失控</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E4%B8%8A%E6%B5%B7%E9%85%92%E5%90%A7%E5%8F%91%E7%94%9F%E6%A2%B0%E6%96%97&amp;rsv_idx=2\" target=\"_blank\">上海酒吧发生械斗</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E6%99%AE%E5%AE%81%E9%AB%98%E9%93%81%E7%AB%99%E9%97%B9%E4%BA%8B&amp;rsv_idx=2\" target=\"_blank\">普宁高铁站闹事</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E6%97%A0%E4%BA%BA%E9%A9%BE%E9%A9%B6%E5%9C%B0%E9%93%81&amp;rsv_idx=2\" target=\"_blank\">无人驾驶地铁</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E4%B9%A0%E8%BF%91%E5%B9%B3%E9%87%8D%E8%A6%81%E8%AE%B2%E8%AF%9Dapp&amp;rsv_idx=2\" target=\"_blank\">习近平重要讲话app</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E6%B7%B1%E5%9C%B3%E9%A9%BE%E8%80%83%E5%8F%AF%E8%87%AA%E4%B8%BB%E9%A2%84%E7%BA%A6&amp;rsv_idx=2\" target=\"_blank\">深圳驾考可自主预约</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E4%B8%80%E7%BA%A7%E5%86%9B%E5%A3%AB%E9%95%BF&amp;rsv_idx=2\" target=\"_blank\">一级军士长</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E6%96%87%E6%98%8E%E7%BD%91%E7%BD%91%E4%B8%8A%E7%A5%AD%E8%8B%B1%E7%83%88&amp;rsv_idx=2\" target=\"_blank\">文明网网上祭英烈</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E7%99%BE%E5%AE%B6%E5%A7%93%E5%AF%BB%E6%A0%B9%E7%A5%AD%E7%A5%96&amp;rsv_idx=2\" target=\"_blank\">百家姓寻根祭祖</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E9%82%93%E7%B4%AB%E6%A3%8B%E9%AA%82%E5%93%AD%E5%B7%A5%E4%BD%9C%E4%BA%BA%E5%91%98&amp;rsv_idx=2\" target=\"_blank\">邓紫棋骂哭工作人员</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E5%88%98%E7%BF%94%E6%88%96%E5%9C%A8%E5%A9%9A%E7%A4%BC%E6%97%A5%E9%80%80%E5%BD%B9&amp;rsv_idx=2\" target=\"_blank\">刘翔或在婚礼日退役</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E6%AD%A6%E9%95%BF%E9%A1%BA%E6%B6%89%E6%A1%88%E9%87%91%E9%A2%9D74%E4%BA%BF&amp;rsv_idx=2\" target=\"_blank\">武长顺涉案金额74亿</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.baidu.com/s?cl=3&amp;tn=baidutop10&amp;fr=top1000&amp;wd=%E5%8C%BA%E4%BC%AF%E5%90%A6%E8%AE%A4%E5%AB%96%E5%A8%BC&amp;rsv_idx=2\" target=\"_blank\">区伯否认嫖娼</a></p>\r\n	</li>\r\n</ul>\r\n', '2015-04-03 11:13:23');
INSERT INTO `article` VALUES ('7', '3', '8', 'Bug分支', '<h1><strong>Bug分支</strong></h1>\r\n\r\n<p>460次阅读</p>\r\n\r\n<hr />\r\n<p>软件开发中，bug就像家常便饭一样。有了bug就需要修复，在Git中，由于分支是如此的强大，所以，每个bug都可以通过一个新的临时分支来修复，修复后，合并分支，然后将临时分支删除。</p>\r\n\r\n<p>当你接到一个修复一个代号101的bug的任务时，很自然地，你想创建一个分支<code>issue-101</code>来修复它，但是，等等，当前正在<code>dev</code>上进行的工作还没有提交：</p>\r\n\r\n<pre>\r\n<code>$ git status\r\n# On branch dev\r\n# Changes to be committed:\r\n#   (use &quot;git reset HEAD &lt;file&gt;...&quot; to unstage)\r\n#\r\n#       new file:   hello.py\r\n#\r\n# Changes not staged for commit:\r\n#   (use &quot;git add &lt;file&gt;...&quot; to update what will be committed)\r\n#   (use &quot;git checkout -- &lt;file&gt;...&quot; to discard changes in working directory)\r\n#\r\n#       modified:   readme.txt\r\n#\r\n</code></pre>\r\n\r\n<p>并不是你不想提交，而是工作只进行到一半，还没法提交，预计完成还需1天时间。但是，必须在两个小时内修复该bug，怎么办？</p>\r\n\r\n<p>幸好，Git还提供了一个<code>stash</code>功能，可以把当前工作现场&ldquo;储藏&rdquo;起来，等以后恢复现场后继续工作：</p>\r\n\r\n<pre>\r\n<code>$ git stash\r\nSaved working directory and index state WIP on dev: 6224937 add merge\r\nHEAD is now at 6224937 add merge\r\n</code></pre>\r\n\r\n<p>现在，用<code>git status</code>查看工作区，就是干净的（除非有没有被Git管理的文件），因此可以放心地创建分支来修复bug。</p>\r\n\r\n<p>首先确定要在哪个分支上修复bug，假定需要在<code>master</code>分支上修复，就从<code>master</code>创建临时分支：</p>\r\n\r\n<pre>\r\n<code>$ git checkout master\r\nSwitched to branch &#39;master&#39;\r\nYour branch is ahead of &#39;origin/master&#39; by 6 commits.\r\n$ git checkout -b issue-101\r\nSwitched to a new branch &#39;issue-101&#39;\r\n</code></pre>\r\n\r\n<p>现在修复bug，需要把&ldquo;Git is free software ...&rdquo;改为&ldquo;Git is a free software ...&rdquo;，然后提交：</p>\r\n\r\n<pre>\r\n<code>$ git add readme.txt \r\n$ git commit -m &quot;fix bug 101&quot;\r\n[issue-101 cc17032] fix bug 101\r\n 1 file changed, 1 insertion(+), 1 deletion(-)\r\n</code></pre>\r\n\r\n<p>修复完成后，切换到<code>master</code>分支，并完成合并，最后删除<code>issue-101</code>分支：</p>\r\n\r\n<pre>\r\n<code>$ git checkout master\r\nSwitched to branch &#39;master&#39;\r\nYour branch is ahead of &#39;origin/master&#39; by 2 commits.\r\n$ git merge --no-ff -m &quot;merged bug fix 101&quot; issue-101\r\nMerge made by the &#39;recursive&#39; strategy.\r\n readme.txt |    2 +-\r\n 1 file changed, 1 insertion(+), 1 deletion(-)\r\n$ git branch -d issue-101\r\nDeleted branch issue-101 (was cc17032).\r\n</code></pre>\r\n\r\n<p>太棒了，原计划两个小时的bug修复只花了5分钟！现在，是时候接着回到<code>dev</code>分支干活了！</p>\r\n\r\n<pre>\r\n<code>$ git checkout dev\r\nSwitched to branch &#39;dev&#39;\r\n$ git status\r\n# On branch dev\r\nnothing to commit (working directory clean)\r\n</code></pre>\r\n\r\n<p>工作区是干净的，刚才的工作现场存到哪去了？用<code>git stash list</code>命令看看：</p>\r\n\r\n<pre>\r\n<code>$ git stash list\r\nstash@{0}: WIP on dev: 6224937 add merge\r\n</code></pre>\r\n\r\n<p>工作现场还在，Git把stash内容存在某个地方了，但是需要恢复一下，有两个办法：</p>\r\n\r\n<p>一是用<code>git stash apply</code>恢复，但是恢复后，stash内容并不删除，你需要用<code>git stash drop</code>来删除；</p>\r\n\r\n<p>另一种方式是用<code>git stash pop</code>，恢复的同时把stash内容也删了：</p>\r\n\r\n<pre>\r\n<code>$ git stash pop\r\n# On branch dev\r\n# Changes to be committed:\r\n#   (use &quot;git reset HEAD &lt;file&gt;...&quot; to unstage)\r\n#\r\n#       new file:   hello.py\r\n#\r\n# Changes not staged for commit:\r\n#   (use &quot;git add &lt;file&gt;...&quot; to update what will be committed)\r\n#   (use &quot;git checkout -- &lt;file&gt;...&quot; to discard changes in working directory)\r\n#\r\n#       modified:   readme.txt\r\n#\r\nDropped refs/stash@{0} (f624f8e5f082f2df2bed8a4e09c12fd2943bdd40)\r\n</code></pre>\r\n\r\n<p>再用<code>git stash list</code>查看，就看不到任何stash内容了：</p>\r\n\r\n<pre>\r\n<code>$ git stash list\r\n</code></pre>\r\n\r\n<p>你可以多次stash，恢复的时候，先用<code>git stash list</code>查看，然后恢复指定的stash，用命令：</p>\r\n\r\n<pre>\r\n<code>$ git stash apply stash@{0}\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>小结</h3>\r\n\r\n<p>修复bug时，我们会通过创建新的bug分支进行修复，然后合并，最后删除；</p>\r\n\r\n<p>当手头工作没有完成时，先把工作现场<code>git stash</code>一下，然后去修复bug，修复后，再<code>git stash pop</code>，回到工作现场。</p>\r\n\r\n<hr />\r\n<p>您的支持是作者写作最大的动力！</p>\r\n\r\n<p>如果您喜欢这个教程，读后觉得收获很大，预期工资涨幅能超过30%，不妨小额赞助一下，让我有动力继续写出高质量的教程。</p>\r\n\r\n<p>请狠狠地点击下面的按钮：</p>\r\n\r\n<p><a href=\"http://www.liaoxuefeng.com/page/donate\" target=\"_blank\">我要小额赞助</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-04-03 14:25:20');
INSERT INTO `article` VALUES ('8', '3', '1', 'HTML ', '<h1>HTML &lt;select&gt; 标签</h1>\r\n\r\n<h2>实例</h2>\r\n\r\n<p>创建带有 4 个选项的选择列表：</p>\r\n\r\n<pre>\r\n<code>&lt;select&gt;</code>\r\n  &lt;option value =&quot;volvo&quot;&gt;Volvo&lt;/option&gt;\r\n  &lt;option value =&quot;saab&quot;&gt;Saab&lt;/option&gt;\r\n  &lt;option value=&quot;opel&quot;&gt;Opel&lt;/option&gt;\r\n  &lt;option value=&quot;audi&quot;&gt;Audi&lt;/option&gt;\r\n<code>&lt;/select&gt;</code>\r\n</pre>\r\n\r\n<p><a href=\"http://www.w3school.com.cn/tiy/t.asp?f=html_select\" target=\"_blank\">亲自试一试</a></p>\r\n\r\n<h2>浏览器支持</h2>\r\n\r\n<table style=\"width:354px\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"background-color:rgb(239, 239, 239); height:15px; text-align:center; vertical-align:middle\">IE</th>\r\n			<th style=\"background-color:rgb(239, 239, 239); height:15px; text-align:center; vertical-align:middle\">Firefox</th>\r\n			<th style=\"background-color:rgb(239, 239, 239); height:15px; text-align:center; vertical-align:middle\">Chrome</th>\r\n			<th style=\"background-color:rgb(239, 239, 239); height:15px; text-align:center; vertical-align:middle\">Safari</th>\r\n			<th style=\"background-color:rgb(239, 239, 239); height:15px; text-align:center; vertical-align:middle\">Opera</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:32px; vertical-align:middle; width:64px\">&nbsp;</td>\r\n			<td style=\"height:32px; vertical-align:middle; width:64px\">&nbsp;</td>\r\n			<td style=\"height:32px; vertical-align:middle; width:64px\">&nbsp;</td>\r\n			<td style=\"height:32px; vertical-align:middle; width:64px\">&nbsp;</td>\r\n			<td style=\"height:32px; vertical-align:middle; width:63px\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>所有主流浏览器都支持 &lt;select&gt; 标签。</p>\r\n', '2015-04-03 14:35:29');

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `au_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) unsigned NOT NULL COMMENT '����Աid',
  `c_id` int(11) NOT NULL COMMENT '�������',
  `au_value` int(11) DEFAULT NULL COMMENT 'Ȩ��ֵ0-7������linux�û�Ȩ�ޣ�0����ûȨ�ޡ�',
  PRIMARY KEY (`au_id`),
  KEY `c_id` (`c_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`),
  CONSTRAINT `authority_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('1', '1', '1', '7');
INSERT INTO `authority` VALUES ('2', '1', '2', '6');
INSERT INTO `authority` VALUES ('3', '3', '5', '5');
INSERT INTO `authority` VALUES ('4', '3', '2', '4');
INSERT INTO `authority` VALUES ('5', '1', '3', '6');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�������',
  `u_id` int(11) unsigned NOT NULL COMMENT '����Աid\n������',
  `c_name` varchar(40) DEFAULT NULL COMMENT '��Ŀ����',
  `c_time` datetime DEFAULT NULL COMMENT '������ʱ��',
  PRIMARY KEY (`c_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '1', 'cate_name1', '2015-03-10 10:50:15');
INSERT INTO `category` VALUES ('2', '1', 'cate_name2', '2015-03-10 10:50:38');
INSERT INTO `category` VALUES ('3', '2', 'cate_name3', '2015-03-19 10:50:56');
INSERT INTO `category` VALUES ('5', '3', 'sss', '2015-04-02 15:23:52');
INSERT INTO `category` VALUES ('8', '3', '啊啊啊啊', '2015-04-02 15:30:25');
INSERT INTO `category` VALUES ('9', '3', '是谁', '2015-04-02 15:31:12');
INSERT INTO `category` VALUES ('12', '3', 'sss', '2015-04-02 19:10:52');
INSERT INTO `category` VALUES ('13', '3', 'sss', '2015-04-02 19:10:54');
INSERT INTO `category` VALUES ('14', '3', 'sss', '2015-04-02 19:10:54');
INSERT INTO `category` VALUES ('15', '3', 'sss', '2015-04-02 19:10:55');
INSERT INTO `category` VALUES ('16', '3', 'sss', '2015-04-02 19:10:55');
INSERT INTO `category` VALUES ('18', '3', 'new', '2015-04-02 19:14:04');
INSERT INTO `category` VALUES ('19', '3', '是谁', '2015-04-02 19:14:22');
INSERT INTO `category` VALUES ('20', '3', 'sss', '2015-04-02 19:14:27');
INSERT INTO `category` VALUES ('21', '3', 'llll', '2015-04-02 19:14:40');
INSERT INTO `category` VALUES ('22', '3', 'sss', '2015-04-02 19:14:48');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '����Աid',
  `u_name` varchar(40) DEFAULT NULL COMMENT '����Ա����',
  `pwd` char(32) DEFAULT NULL COMMENT '����',
  `su_flag` tinyint(1) DEFAULT '0' COMMENT '�Ƿ�Ϊ��������Ա',
  `u_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'TomAdmin', 'TomAdminPWD', '0', '2015-03-03 10:48:48');
INSERT INTO `user` VALUES ('2', 'Jack', 'jackPWD', '1', '2015-03-24 10:49:23');
INSERT INTO `user` VALUES ('3', 'tom', '123', '0', '2015-03-24 17:18:11');
INSERT INTO `user` VALUES ('6', 'wwwwww', '202CB962AC59075B964B07152D234B70', '1', '2015-04-01 16:04:27');
INSERT INTO `user` VALUES ('8', 'www', 'B2CA678B4C936F905FB82F2733F5297F', '1', '2015-04-01 16:05:53');
INSERT INTO `user` VALUES ('9', '啊啊啊', '4EAE35F1B35977A00EBD8086C259D4C9', '1', '2015-04-01 16:13:53');
INSERT INTO `user` VALUES ('12', null, null, '0', '2015-04-02 19:17:17');
INSERT INTO `user` VALUES ('13', 'www', 'qq', '1', '2015-04-02 19:38:36');
INSERT INTO `user` VALUES ('14', 'www', 'qq', '1', '2015-04-02 19:38:37');
INSERT INTO `user` VALUES ('15', 'www', 'qq', '1', '2015-04-02 19:38:37');
INSERT INTO `user` VALUES ('16', 'www', 'qqq', '1', '2015-04-02 19:39:35');
INSERT INTO `user` VALUES ('17', 'fff', 'ddd', '1', '2015-04-02 19:39:43');
