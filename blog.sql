-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-12 14:18:23
-- 服务器版本： 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `blog_article`
--

CREATE TABLE IF NOT EXISTS `blog_article` (
  `art_id` int(11) NOT NULL COMMENT '文章自增id',
  `art_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章标题',
  `art_tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键字',
  `art_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `art_thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `art_content` text COLLATE utf8_unicode_ci NOT NULL,
  `art_time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `art_editor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `art_view` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`art_id`, `art_title`, `art_tag`, `art_description`, `art_thumb`, `art_content`, `art_time`, `art_editor`, `art_view`, `cate_id`) VALUES
(5, '观摩美大选遭拒！俄外交部：你也别看我们选举', '观摩美大选遭拒！俄外交部：你也别看我们选举', '观摩美大选遭拒！俄外交部：你也别看我们选举', 'uploads/20161109181712423.jpg', '<p>&nbsp;&nbsp;</p><p>俄罗斯外交部发言人扎哈罗娃9日表示，针对美国限制俄方外交官观摩美选举一事，俄方将采取对等措施。</p><p>　　扎哈罗娃当天接受“俄罗斯24小时”新闻频道采访时说，俄外交部已向美国国务院发出照会，表示不能接受美国限制俄驻美外交官观摩美总统选举的行为。按照对等原则，俄方也将不会允许美国外交官观摩俄方选举活动。</p><p>　　扎哈罗娃称，美国如想解决国际问题，让世界变得更加安全与稳定，就应调整对俄政策，让俄美关系恢复到正常水平。</p><p>　　扎哈罗娃7日表示，美方对允许俄驻美外交官观摩美国大选的答复是，让俄外交官通过欧洲安全与合作组织提出申请，并以该组织名义观摩大选。</p><p>　　2014年3月以来，美国和欧盟因乌克兰问题开始对俄实施制裁。近来，俄与西方国家因叙利亚问题矛盾升级，外界猜测西方可能对俄实施新制裁。</p><p>　　(原标题：俄称对美限制其观摩大选采取对等措施)</p><p>　　相关新闻：<a href="http://news.sina.com.cn/o/2016-11-09/doc-ifxxnffr7218472.shtml" target="_blank">俄总统普京致电祝贺特朗普赢得美国大选</a></p><p>\r\n	</p><p class="article-editor"><br/></p><p><br/></p>', '1478686662', 'qiezi ', 1, 2),
(6, '中共中央发通知部署十九大代表选举工作', '中共中央发通知部署十九大代表选举工作', '　原标题：中共中央发出通知 部署党的十九大代表选举工作\r\n\r\n　　新华社北京11月9日电  党的十八届六中全会决定，党的十九大于2017年下半年在北京召开。最近，中共中央印发了《关于党的十九大代表选举工作的通知》，对十九大代表选举工作作出全面部署。中央组织部近日召开会议，对这项工作作出具体安排。', 'uploads/20161109181818592.jpg', '<p>党的十九大是在我国全面建成小康社会决胜阶段召开的一次十分重要的代表大会，是党和国家政治生活中的一件大事。认真做好十九大代表选举工作，是开好这次大会的重要基础。中央政治局常委会和中央政治局专门研究了十九大代表选举工作，提出了做好这项工作基本原则和工作任务，要求各级党组织高度重视，认真履行职责，精心组织实施，确保选举工作圆满完成。</p><p>　　中央确定，十九大代表名额共2300名，由全国40个选举单位选举产生。中央要求，做好十九大代表选举工作，要以党章为根本遵循，坚持党的性质，加强党的领导，发扬党内民主，严肃选举纪律，突出政治标准和先进性，体现广泛代表性，改善代表结构，规范代表产生程序，确保十九大代表素质优良、结构合理、分布广泛、党员拥护。</p><p>　　中央提出，十九大代表应是共产党员中的优秀分子。要严把人选政治关，坚持把政治标准放在首位，突出考察人选的理想信念、政治品格和道德修养。严把人选廉洁关，坚决防止“带病提名”。要进一步优化代表结构，适当提高生产和工作第一线代表比例，注重推荐工人、农民和专业技术人员党员中的先进模范人物作为代表人选；女党员和少数民族党员代表应占一定比例。代表中，既要有各级党员领导干部，又要有生产和工作第一线的党员，要有经济、科技、国防、政法、教育、宣传、文化、卫生、体育和社会管理等各方面的代表。</p><p>　　中央要求，十九大代表的选举产生，要坚持党的领导与发扬民主有机统一，采取自下而上、上下结合、反复酝酿、逐级遴选的办法进行。要深入开展宣传教育，广泛发动基层党组织和党员积极参与代表人选的推荐提名，根据多数党组织或多数党员的意见，逐级遴选择优。要严格组织考察，实行差额考察和考察预告，广泛听取基层党组织、党代表、党员和群众的意见。要认真搞好会议选举，代表实行差额选举，差额选举的比例应多于15%。</p><p><br/></p>', '1478686721', 'qiezi', 0, 4),
(7, '观摩美大选遭拒！俄外交部：你也别看我们选举', '观摩美大选遭拒！俄外交部：你也别看我们选举', '2014年3月以来，美国和欧盟因乌克兰问题开始对俄实施制裁。近来，俄与西方国家因叙利亚问题矛盾升级，外界猜测西方可能对俄实施新制裁。', 'uploads/20161109181922287.jpg', '<p>　扎哈罗娃称，美国如想解决国际问题，让世界变得更加安全与稳定，就应调整对俄政策，让俄美关系恢复到正常水平。</p><p>　　扎哈罗娃7日表示，美方对允许俄驻美外交官观摩美国大选的答复是，让俄外交官通过欧洲安全与合作组织提出申请，并以该组织名义观摩大选。</p><p>　　2014年3月以来，美国和欧盟因乌克兰问题开始对俄实施制裁。近来，俄与西方国家因叙利亚问题矛盾升级，外界猜测西方可能对俄实施新制裁。</p><p>　　(原标题：俄称对美限制其观摩大选采取对等措施)</p><p>　　相关新闻：<a href="http://news.sina.com.cn/o/2016-11-09/doc-ifxxnffr7218472.shtml" target="_blank">俄总统普京致电祝贺特朗普赢得美国大选</a></p><p><br/></p>', '1478686777', 'xuefei', 28, 13),
(8, '中共中央发通知部署十九大代表选举工作', '选举', '新华社北京11月9日电  党的十八届六中全会决定，党的十九大于2017年下半年在北京召开。最近，中共中央印发了《关于党的十九大代表选举工作的通知》，对十九大代表选举工作作出全面部署。中央组织部近日召开会议，对这项工作作出具体安排。', 'uploads/20161109182215358.jpg', '<p>　党的十九大是在我国全面建成小康社会决胜阶段召开的一次十分重要的代表大会，是党和国家政治生活中的一件大事。认真做好十九大代表选举工作，是开好这次大会的重要基础。中央政治局常委会和中央政治局专门研究了十九大代表选举工作，提出了做好这项工作基本原则和工作任务，要求各级党组织高度重视，认真履行职责，精心组织实施，确保选举工作圆满完成。</p><p>　　中央确定，十九大代表名额共2300名，由全国40个选举单位选举产生。中央要求，做好十九大代表选举工作，要以党章为根本遵循，坚持党的性质，加强党的领导，发扬党内民主，严肃选举纪律，突出政治标准和先进性，体现广泛代表性，改善代表结构，规范代表产生程序，确保十九大代表素质优良、结构合理、分布广泛、党员拥护。</p><p>　　中央提出，十九大代表应是共产党员中的优秀分子。要严把人选政治关，坚持把政治标准放在首位，突出考察人选的理想信念、政治品格和道德修养。严把人选廉洁关，坚决防止“带病提名”。要进一步优化代表结构，适当提高生产和工作第一线代表比例，注重推荐工人、农民和专业技术人员党员中的先进模范人物作为代表人选；女党员和少数民族党员代表应占一定比例。代表中，既要有各级党员领导干部，又要有生产和工作第一线的党员，要有经济、科技、国防、政法、教育、宣传、文化、卫生、体育和社会管理等各方面的代表。</p><p>　　中央要求，十九大代表的选举产生，要坚持党的领导与发扬民主有机统一，采取自下而上、上下结合、反复酝酿、逐级遴选的办法进行。要深入开展宣传教育，广泛发动基层党组织和党员积极参与代表人选的推荐提名，根据多数党组织或多数党员的意见，逐级遴选择优。要严格组织考察，实行差额考察和考察预告，广泛听取基层党组织、党代表、党员和群众的意见。要认真搞好会议选举，代表实行差额选举，差额选举的比例应多于15%。</p><p><ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" style="display: block; overflow: hidden; text-decoration: none;"><ins style="text-decoration:none;margin:0px auto;width:300px;display:block;position:relative;overflow:hidden;"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" src="http://static-alias-1.360buyimg.com/jzt/tpl/sspPic.html?ad_ids=2424:5&adflag=0&clkmn=&expose=" name="clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyMjo0OQkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vYy9uZC8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1MzEwMDIuc2h0bWwJUERQUzAwMDAwMDA0NDA4NgljNWJkYTI2Ni05ZjQ1LTQ0MTAtODE0Yy03NWZjOWY1ZGJlNDEJMjcxODQ5Q0YzQzk4CTI3MTg0OUNGM0M5OAlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQkyNzE4NDlDRjNDOTgJUlBNMDAyNTg1OAlQRFBTMDAwMDAwMDQ0MDg2CTI3MTg0OUNGM0M5OAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJLQkwCTEJY2hhbm5lbDI6YmxvZ19zfG9zOndpbmRvd3M3fGJyb3dzZXI6ZmlyZWZveHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXI%253D&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyMjo0OQkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vYy9uZC8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1MzEwMDIuc2h0bWwJUERQUzAwMDAwMDA0NDA4NgljNWJkYTI2Ni05ZjQ1LTQ0MTAtODE0Yy03NWZjOWY1ZGJlNDEJMjcxODQ5Q0YzQzk4CTI3MTg0OUNGM0M5OAlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQkyNzE4NDlDRjNDOTgJUlBNMDAyNTg1OAlQRFBTMDAwMDAwMDQ0MDg2CTI3MTg0OUNGM0M5OAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJLQkwCTEJY2hhbm5lbDI6YmxvZ19zfG9zOndpbmRvd3M3fGJyb3dzZXI6ZmlyZWZveHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXI%253D%26userid%3D218.19.216.190_1476328799.972962%26viewlog%3Dfalse%26hashCode%3D9c8438d0488348cc2423a71828e25aaf" width="300px" height="250px" frameborder="0" align=""></iframe></ins></ins></p><p>　　中央强调，各级党组织要切实加强领导，精心组织实施，以高度的政治责任感和严谨细致的工作作风，扎实做好十九大代表选举工作。要严肃政治纪律、组织纪律和选举纪律，充分运用辽宁等地拉票贿选、破坏选举的典型案例，开展警示教育，汲取教训，引以为戒。加强对代表选举工作的监督，对违规违纪问题“零容忍”，一经发现坚决查处，确保风清气正。要使代表选举产生过程，成为理想信念教育和党性党风党纪教育的过程，成为党内政治生活生动实践和民主集中制教育的过程，成为落实全面从严治党要求、不断推进党的建设新的伟大工程的过程，进一步增强党的创造力凝聚力战斗力，动员广大党员和干部更加紧密地团结在以习近平同志为核心的党中央周围，不忘初心、继续前进，勠力同心、锐意进取，为实现“两个一百年”奋斗目标、实现中华民族伟大复兴的中国梦而不懈努力。</p><p>　　十九大代表选举工作从现在开始，到明年6月底前结束。（完）</p><p><br/></p>', '1478686977', 'xuefei', 0, 9),
(9, '武汉大学原校长李晓红出任教育部副部长', '武汉大学、原校长', '　中国经济网北京11月9日综合报道 全国政协在京召开第五十八次双周协商座谈会，围绕“重视特殊教育”建言献策。全国政协主席俞正声主持会议并讲话。全国政协副主席王家瑞在座谈会上讲了意见。教育部副部长李晓红介绍了有关情况。', 'uploads/20161109182337457.jpg', '<p><strong>李晓红简历</strong></p><p>　　李晓红，男，汉族，1959年6月生，重庆合川人，1982年10月加入中国共产党，1985年7月参加工作。重庆大学采矿系矿山机械工程专业毕业，博士，教授，澳大利亚昆士兰大学荣誉教授，中国工程院院士（2011年）。</p><p>　　1975年至1978年，四川省合川县炉山公社任团委副书记</p><p>　　1978年，考入重庆大学采矿系</p><p>　　1982年至1985年，任重庆大学采矿系团委书记，重庆市学生联合会主席</p><p><ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" style="display: block; overflow: hidden; text-decoration: none;"><ins style="text-decoration:none;margin:0px auto;width:300px;display:block;position:relative;overflow:hidden;"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" src="http://static-alias-1.360buyimg.com/jzt/tpl/sspPic.html?ad_ids=2424:5&adflag=0&clkmn=&expose=" name="clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyMjo1OQkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1Mjg1Mjkuc2h0bWwJUERQUzAwMDAwMDA0NDA4NglhMDU3YTRlMC01MDg2LTRhOGMtOTZkMS02YzljMGRkOTJiM2EJMjcxODQ5Q0YzQzk4CTI3MTg0OUNGM0M5OAlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQkyNzE4NDlDRjNDOTgJUlBNMDAyNTg1OAlQRFBTMDAwMDAwMDQ0MDg2CTI3MTg0OUNGM0M5OAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJLQkwCTEJY2hhbm5lbDI6YmxvZ19zfG9zOndpbmRvd3M3fGJyb3dzZXI6ZmlyZWZveHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXI%253D&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyMjo1OQkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1Mjg1Mjkuc2h0bWwJUERQUzAwMDAwMDA0NDA4NglhMDU3YTRlMC01MDg2LTRhOGMtOTZkMS02YzljMGRkOTJiM2EJMjcxODQ5Q0YzQzk4CTI3MTg0OUNGM0M5OAlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQkyNzE4NDlDRjNDOTgJUlBNMDAyNTg1OAlQRFBTMDAwMDAwMDQ0MDg2CTI3MTg0OUNGM0M5OAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJLQkwCTEJY2hhbm5lbDI6YmxvZ19zfG9zOndpbmRvd3M3fGJyb3dzZXI6ZmlyZWZveHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXI%253D%26userid%3D218.19.216.190_1476328799.972962%26viewlog%3Dfalse%26hashCode%3Db383cb9ed2bad594471f11218274766c" width="300px" height="250px" frameborder="0"></iframe></ins></ins></p><p>　　1985年至1989年，任重庆大学采矿系党总支副书记、系副主任</p><p>　　1989年至1991年，在美国加州大学伯克利分校学习并做研究助理</p><p>　　1991年至1994年，任重庆大学资环学院副院长</p><p>　　1993年，获工学博士学位</p><p>　　1994年至1996年，任重庆大学资环学院院长</p><p>　　1996年至1997年，任重庆大学资环学院院长</p><p>　　1996年3月至8月，在澳大利亚昆士兰大学做访问学者</p><p>　　1997年至1998年，任重庆大学党委常委、校长助理、科研处处长、资环学院院长</p><p>　　1998年至2003年，任重庆大学党委常委、副校长</p><p>　　2003年至2010年， 任重庆大学党委常委、校长（2004年7月明确为副部级）</p><p>　　2007年12月7日，受聘为澳大利亚昆士兰大学荣誉教授</p><p>　　2010年12月，任武汉大学党委常委、校长</p><p>　　现任教育部副部长。</p><p><br/></p>', '1478687036', 'qiezi', 8, 2),
(10, '环保部原副部长张力军受贿240万 一审获刑4年', '贿赂', '', 'uploads/20161109182501585.jpg', '<p>　[环境保护部原副部长张力军受贿案一审宣判] \r\n今天，北京市二中院公开宣判环境保护部原副部长张力军受贿案，以受贿罪判处张力军有期徒刑4年，并处罚金50万；受贿所得财物及其孳息予以追缴，上缴国库。张力军非法收受他人财物242.9927万，鉴于到案后如实供述，主动交代，积极退赃，依法可以从轻处罚。（央视记者奚丹霓\r\n 官志伟）</p>', '1478687113', 'xuefei ', 0, 4),
(11, '环保部原副部长张力军受贿240万 一审获刑4年', '贿赂', '特朗普赢得美国大选概率升至50% 全球市场闪崩', 'uploads/20161109182501585.jpg', '<p>原标题：特朗普领先两大关键摇摆州 全球市场“闪崩”</p><p>　　有数据显示，特朗普赢得美国大选概率已大幅升至50%。标普500指数期货跌超3%，道琼斯期指跌超400点。黄金一度突破1310美元/盎司，一度创1个月高位。美元兑墨西哥比索涨8.5%，现报19.7980逼近历史低位。美元指数跌幅扩至1.2%，创8月来最大跌幅，报96.662。</p><p><br/></p>', '1478687198', 'xuefei ', 17, 4),
(12, '特朗普击败希拉里赢得美国大选', '美国、选举', '', 'uploads/20161109182747360.png', '<p><img src="/ueditor/php/upload/image/20161109/1478687294956768.jpg" alt="" data-link=""/><span class="img_descr"></span></p><p>　　14：45 [特朗普击败希拉里赢得美国大选]新华社快讯：据美国媒体预测，美国共和党总统候选人唐纳德·特朗普在8日举行的美国大选中获得当选总统所需的270张选举人票。</p><p>　　14：26 [特朗普254：218领先希拉里 ]2016年美国总统大选投票计票于当地时间11月8日正式进行。据美国福克斯新闻网11月9日最新消息，特朗普254：218继续领先希拉里。</p><p>　　13：40 [特朗普254：215继续领先希拉里]2016年美国总统大选投票计票于当地时间11月8日正式进行。据外媒最新消息，希拉里赢下内华达州（6票），特朗普254：215继续领先希拉里。</p><p>　　12：42 [希拉里209：254落后特朗普 ]2016年美国总统大选投票计票于当地时间11月8日正式进行。据NBC11月9日最新消息，特朗普又拿下艾奥瓦州和威斯康辛州，254：209领先希拉里。</p><p>　　12：22[希拉里209：222落后特朗普]2016年美国总统大选投票计票于当地时间11月8日正式进行。据美国福克斯新闻最新消息，希拉里209：222落后特朗普。</p><p>　　12：14 \r\n[希拉里209：187反超特朗普]2016年美国总统大选投票计票于当地时间11月8日正式进行。据NBC最新消息，希拉里209：187反超特朗普。其中，希拉里拿下华盛顿州（12票\r\n ）俄勒冈州（ 7票）加利福尼亚州（55票）和夏威夷州（4票）。特朗普赢下爱达荷州 （4票 ）和北卡罗来纳州（15票）。</p><p>　　11：55 [特朗普168：131希拉里]2016年美国总统大选投票计票于当地时间11月8日正式进行。据NBC11月9日最新消息，希拉里又赢下科罗拉多州（9票），131：168暂时落后特朗普。</p><p>　　11：29 [特朗普 168：109希拉里]2016年美国总统大选投票计票于当地时间11月8日正式进行。据外媒最新消息，特朗普又拿下俄亥俄州（18票），以168：109暂时领先希拉里。</p><p>　　11：15 [特朗普150：109希拉里]2016年美国大选投票计票于当地时间11月8日正式进行。据NBC最新消息，特朗普拿下蒙大拿州和密苏里州，以150：109暂时领先希拉里，而希拉里则拿下新墨西哥州。</p><p>　　10：10 \r\n美国CBC新闻网的评论员分析认为，特朗普若想赢得总统，必须至少赢得北卡罗来纳州、俄亥俄州以及佛罗里达州三个摇摆州。然而目前他在佛罗里达州（已经开票76%）领先希拉里1.5个百分点，在俄亥俄领先2.3个百分点（已开票30%），在北卡领先0.1个百分点（已开票30%）。然而，这些领先可能随时会消失。</p><p>　　10：09 \r\n[特朗普137：104希拉里]2016年美国大选投票计票于当地时间11月8日正式进行。据NBC11月9日最新消息，特朗普接连拿下内布拉斯加州（5票）、路易斯安那州（8票）、堪萨斯州（6票）、得克萨斯州（38票）、怀俄明州（3票）、北达科他州（3票）和南达科他州（3票），以137：104反超希拉里，希拉里赢得纽约州（29票）。（环球网报道\r\n 记者 任梅子）</p><p>　　09：46[特朗普72：75希拉里]第45届美国大选投票计票于当地时间11月8日正式进行。据美媒最新消息，特朗普赢下阿肯色州，拿到6张选举人票， 72：75暂时落后希拉里。</p><p>　　09：13 [希拉里75：66特朗普]第45届美国大选投票计票于当地时间11月8日正式进行。据美国全国广播公司（NBC）最新消息，希拉里以75比66票反超，领先特朗普。（环球网报道 记者 张骜）</p><p>　　希拉里分别拿下康涅狄格州（7票）、特拉华州（3票）、哥伦比亚特区（3票）、伊利诺伊（20票）、马里兰州（10票）、马萨诸塞州（11票）、新泽西州（14票）、罗得岛州（4票）、佛蒙特州（3票）。</p><p><ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044089" data-ad-status="done" style="display: block; overflow: hidden; text-decoration: none;"><ins style="text-decoration:none;margin:0px auto;width:300px;display:block;position:relative;overflow:hidden;"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" src="http://static-alias-1.360buyimg.com/jzt/tpl/sspPic.html?ad_ids=2425:5&adflag=0&clkmn=&expose=" name="clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyNzo0NgkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vdy96eC8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1MDkyOTMuc2h0bWwJUERQUzAwMDAwMDA0NDA4OQlmNWM2MjdhYi1kNGQ0LTQxYzQtODIyNS1lMWFlYWU0YTQ4ZjIJMDI1QkE1NDUwRjgxCTAyNUJBNTQ1MEY4MQlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODl8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQlERjg3RjU0NURBRDkJTFkxNTEyMDk2NQlQRFBTMDAwMDAwMDQ0MDg5CURGODdGNTQ1REFEOV9wb3J0YWwJQUUJLQk4CS0JLQktCS0JLQktCS0JLQkyCTE0CXN0cmF0ZWd5X3VhY2hsCTAJNgljaGFubmVsMjpibG9nX3N8b3M6d2luZG93czd8YnJvd3NlcjpmaXJlZm94fGlncnBfY3RyOjEuNTQyMzU3OTk1MjQzMTUxOEUtNHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXJ8Y29udHJhY3Q6MCw0&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyNzo0NgkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vdy96eC8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1MDkyOTMuc2h0bWwJUERQUzAwMDAwMDA0NDA4OQlmNWM2MjdhYi1kNGQ0LTQxYzQtODIyNS1lMWFlYWU0YTQ4ZjIJMDI1QkE1NDUwRjgxCTAyNUJBNTQ1MEY4MQlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODl8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQlERjg3RjU0NURBRDkJTFkxNTEyMDk2NQlQRFBTMDAwMDAwMDQ0MDg5CURGODdGNTQ1REFEOV9wb3J0YWwJQUUJLQk4CS0JLQktCS0JLQktCS0JLQkyCTE0CXN0cmF0ZWd5X3VhY2hsCTAJNgljaGFubmVsMjpibG9nX3N8b3M6d2luZG93czd8YnJvd3NlcjpmaXJlZm94fGlncnBfY3RyOjEuNTQyMzU3OTk1MjQzMTUxOEUtNHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXJ8Y29udHJhY3Q6MCw0%26userid%3D218.19.216.190_1476328799.972962%26viewlog%3Dfalse%26hashCode%3D6ee9f26651f53dc5b5cd1c390706e271" width="300px" height="250px" frameborder="0"></iframe></ins></ins></p><p>　　特朗普分别拿下亚拉巴马州（9票）、印第安纳州（11票）、肯塔基州（8票）、密西西比州（6票）、俄克拉荷马州（7票）、南卡罗来纳州（9票）、田纳西州（11票）、西弗吉尼亚州（5票）。</p><p>　　08：52 [特朗普33：3希拉里]第45届美国大选投票计票于当地时间11月8日正式进行。南卡罗莱纳州公布了投票结果，特朗普获得9张选举人票，以33比3暂时领先希拉里。（环球网 张骜）</p><p>　　08：36 [特朗普24：3希拉里]据美联社11月9日报道，美国大选投票在美国当地时间11月8日正式开始。西弗吉尼亚州记票结果已经公布。特朗普取得胜利，拿到5张选举人票。目前特朗普以24票对3票暂时领先希拉里。（环球网 任梅子）</p><p>　　08：29 \r\n[特朗普19：3希拉里]美国大选投票在美国当地时间11月8日正式开始。佛蒙特州、印第安纳州和肯塔基州率先开票，其中希拉里拿下佛蒙特州，获得3张选举人票；但特朗普在印第安纳州和肯塔基州获胜，分别获得11票和8票，以19：3暂时领先。（环球网\r\n 周骥滢</p><p><br/></p>', '1478687296', 'qiezi', 1, 2),
(13, '美媒:特朗普击败希拉里赢得美国大选', '', '', 'uploads/20161109182855595.png', '<p style="text-align: center;">\r\n		<img alt="" src="/ueditor/php/upload/image/20161109/1478687353505795.jpg"/>\r\n		<span class="img_descr"></span>\r\n	</p><p>\r\n		</p><p style="text-align: center;">\r\n		<img alt="" src="/ueditor/php/upload/image/20161109/1478687353522922.jpg"/>\r\n		<span class="img_descr"></span>\r\n	</p><p>\r\n	\r\n	</p><p><ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044089" data-ad-status="done" style="display: block; overflow: hidden; text-decoration: none;"><ins style="text-decoration:none;margin:0px auto;width:300px;display:block;position:relative;overflow:hidden;"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" src="http://static-alias-1.360buyimg.com/jzt/tpl/sspPic.html?ad_ids=2425:5&adflag=0&clkmn=&expose=" name="clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyNzo0NgkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vdy96eC8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1NDcwNTMuc2h0bWwJUERQUzAwMDAwMDA0NDA4OQkwY2Q4NTcwYi1lMzEwLTQ5NDMtYmNlZS1hMWM5MWExNjgyMWUJMDI1QkE1NDUwRjgxCTAyNUJBNTQ1MEY4MQlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODl8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQlERjg3RjU0NURBRDkJTFkxNTEyMDk2NQlQRFBTMDAwMDAwMDQ0MDg5CURGODdGNTQ1REFEOV9wb3J0YWwJQUUJLQk4CS0JLQktCS0JLQktCS0JLQkyCTE0CXN0cmF0ZWd5X3VhY2hsCTAJNgljaGFubmVsMjpibG9nX3N8b3M6d2luZG93czd8YnJvd3NlcjpmaXJlZm94fGlncnBfY3RyOjEuNTQyMzU3OTk1MjQzMTUxOEUtNHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXJ8Y29udHJhY3Q6MCw0&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyNzo0NgkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vdy96eC8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1NDcwNTMuc2h0bWwJUERQUzAwMDAwMDA0NDA4OQkwY2Q4NTcwYi1lMzEwLTQ5NDMtYmNlZS1hMWM5MWExNjgyMWUJMDI1QkE1NDUwRjgxCTAyNUJBNTQ1MEY4MQlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODl8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQlERjg3RjU0NURBRDkJTFkxNTEyMDk2NQlQRFBTMDAwMDAwMDQ0MDg5CURGODdGNTQ1REFEOV9wb3J0YWwJQUUJLQk4CS0JLQktCS0JLQktCS0JLQkyCTE0CXN0cmF0ZWd5X3VhY2hsCTAJNgljaGFubmVsMjpibG9nX3N8b3M6d2luZG93czd8YnJvd3NlcjpmaXJlZm94fGlncnBfY3RyOjEuNTQyMzU3OTk1MjQzMTUxOEUtNHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXJ8Y29udHJhY3Q6MCw0%26userid%3D218.19.216.190_1476328799.972962%26viewlog%3Dfalse%26hashCode%3D4a207e13895146505ac31ba61c3ec732" width="300px" height="250px" frameborder="0"></iframe></ins></ins></p><p>　　新华社快讯：据美国媒体预测，美国共和党总统候选人唐纳德·特朗普在8日举行的美国大选中获得当选总统所需的270张选举人票。</p><p><br/></p>', '1478687360', 'qiezi', 1, 12),
(14, '“权力游戏”撕裂美国？大选将迎来最终结果', '大选', '中新网11月9日电 （郭炘蔚）经过一年有余的选战，美国总统大位的争夺将迎来最终结果。据预计，北京时间9日中午左右，美国第45位总统人选将出炉。', 'uploads/20161109183048899.png', '<p>在这场以白宫大位为终点的“长跑”中，全无从政经验的共和党候选人特朗普，与两大党派首位女性候选人希拉里，都有望创造美国选举历史。然而，选举期间各自麻烦缠身的两人，谁能取得270张选举人票、最终跨过白宫的门坎？</p><p><img title="资料图" src="/ueditor/php/upload/image/20161109/1478687476116732.jpg" alt="资料图"/><span class="img_descr">资料图</span></p><p>　　<strong>[一次混乱大选，两度“十月惊奇”]</strong></p><p>　　从2015年的大幕初启到2016年的最终角逐，进入11月8日，摆在美国民众面前的，一位是自我中心且口无遮拦的地产大亨，另一位则是圆滑而乏味的资深政客。</p><p>　　特朗普和希拉里组成了“历来最不受欢迎”的总统候选人阵容。他们执着于挖掘对方的黑历史，将大选辩论变成了互撕秀。从性丑闻到腐败指控，从“维基解密”爆料到联邦调查局（FBI）侦查，这场选举被众多媒体用“一团糟”和“肮脏”来形容。</p><p>　　而在大选倒数计时的阶段，两场“十月惊奇”给这次混乱的竞赛再添烦恼。10月7日，特朗普侮辱女性的陈年录像曝光，遭到多方抨击，向来与特朗普关系不睦的共和党高层纷纷撤回支持。那时，美国媒体认为特朗普已经跌落谷底，胜选无望。</p><p>　　而到了月底，FBI重启希拉里“电邮门”调查的消息，给选情再添变数。尽管11月6日，FBI宣布不改变原先“不起诉”的结论，但距投票仅有不到48小时，希拉里阵营能否将这一利好消息转化为选票，尚未可知。</p><p><img title="资料图" src="/ueditor/php/upload/image/20161109/1478687478383370.jpg" alt="资料图"/><span class="img_descr">资料图</span></p><p>　　<strong>[三个重点摇摆州，决定选战走向]</strong></p><p>　　事实上，这两次“十月惊奇”既是意料之外，又是两人各自“软肋”的缩影。希拉里的诚信问题，从选战开始就如影随形；而特朗普的歧视倾向，也从屡次“大嘴”发言中可见一斑。</p><p>　　对美国民众而言，这是一场“两害相权取其轻”的选举，但为了“不让另外一方获胜”，他们却又不得不做出选择。</p><p>　　这一选择的难度也体现在了民调数据上。7日，美国“真清晰政治”（RCP）网站平均全国民调的结果显示，希拉里的支持率为46.3%，仅仅领先特朗普1.9个百分点。而在多个摇摆州，希拉里已从原本的掌握优势转为胜负难料。</p><p>　　此次选票争夺战的焦点，集中在佛罗里达、北卡罗来纳与俄亥俄3个选情未决的州份。多项民调显示，在这三个州，两人的支持率差距都在2个百分点之内。</p><p>　　包括《华尔街日报》在内的多家媒体分析称，特朗普必须在赢得所有传统上支持共和党的州份的基础上，再将这三州全部拿下，才有取胜的希望。若其中一个州份有失，胜利的天平就将向希拉里倾斜。除此之外，美国北部的密歇根和宾夕法尼亚两州，也是重要的战场。</p><p style="text-align: center;"><img title="资料图 当地时间2016年11月6日，美国克利夫兰，勒布朗·詹姆斯与JR·史密斯为希拉里拉票，现场，小皇帝发表演讲。" src="/ueditor/php/upload/image/20161109/1478687479513067.jpg" alt="资料图 当地时间2016年11月6日，美国克利夫兰，勒布朗·詹姆斯与JR·史密斯为希拉里拉票，现场，小皇帝发表演讲。"/><span class="img_descr">资料图 当地时间2016年11月6日，美国克利夫兰，勒布朗·詹姆斯与JR·史密斯为希拉里拉票，现场，小皇帝发表演讲。</span></p><p><br/></p>', '1478687485', 'xuefei', 23, 2),
(15, '[多项“纪录”蓄势，等待决胜结果]', '结果', '在两大党派候选人胜负难分的情况下，今年美国大选的花费再攀高峰。根据美国独立机构“响应政治中心”11月2日发表的最新数据，2016年大选预估花费为69亿美元，将成为美国史上“最烧钱”的大选。不过，具体的数据仍有待选举结束后的正式统计。', 'uploads/20161109183153804.png', '<p>如果希拉里在此次大选中胜出，她将成为美国历史上首位女总统。事实上，她已经是美国两个主要政党的第一位女性候选人，距离打破美国最高的“玻璃天花板”仅差一步。为此，11月8日当天，希拉里将在拥有玻璃天花板的纽约贾维茨会展中心，等待开票结果。</p><p>　　而若特朗普胜出，他将成为美国历史上最年长的总统。今年6月14日，特朗普刚刚庆祝过他的70岁生日。根据《时代》周刊的数据，此前年龄最大的美国总统是罗纳德•里根，他在就职时，距离70岁生日尚有一个月。此外，身为“政治新手”的特朗普，也将是超过60年来，首位从未有过州长或国会议员资历的美国总统。</p><p><img title="资料图 美国总统大选支持者在内华达大学拉斯维加斯分校内表达政治立场。" src="/ueditor/php/upload/image/20161109/1478687530690832.jpg" alt="　　资料图 美国总统大选支持者在内华达大学拉斯维加斯分校内表达政治立场。"/><span class="img_descr">　　资料图 美国总统大选支持者在内华达大学拉斯维加斯分校内表达政治立场。</span></p><p>　　<strong>[一场“权力的游戏”，让美国更撕裂？]</strong></p><p><ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044089" data-ad-status="done" style="display: block; overflow: hidden; text-decoration: none;"><ins style="text-decoration:none;margin:0px auto;width:300px;display:block;position:relative;overflow:hidden;"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" src="http://static-alias-1.360buyimg.com/jzt/tpl/sspPic.html?ad_ids=2425:5&adflag=0&clkmn=&expose=" name="clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyNzo0NgkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vdy9zeS8yMDE2LTExLTA5L2RvYy1pZnh4bmV0eTc3NDk0OTAuc2h0bWwJUERQUzAwMDAwMDA0NDA4OQljNmFmMTlhOS1lMmJlLTQ3MjUtOTRmNy01MjJjYWQzNmFhYWQJMDI1QkE1NDUwRjgxCTAyNUJBNTQ1MEY4MQlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODl8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQlERjg3RjU0NURBRDkJTFkxNTEyMDk2NQlQRFBTMDAwMDAwMDQ0MDg5CURGODdGNTQ1REFEOV9wb3J0YWwJQUUJLQk4CS0JLQktCS0JLQktCS0JLQkyCTE0CXN0cmF0ZWd5X3VhY2hsCTAJNgljaGFubmVsMjpibG9nX3N8b3M6d2luZG93czd8YnJvd3NlcjpmaXJlZm94fGlncnBfY3RyOjEuNTQyMzU3OTk1MjQzMTUxOEUtNHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXJ8Y29udHJhY3Q6MCw0&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyNzo0NgkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vdy9zeS8yMDE2LTExLTA5L2RvYy1pZnh4bmV0eTc3NDk0OTAuc2h0bWwJUERQUzAwMDAwMDA0NDA4OQljNmFmMTlhOS1lMmJlLTQ3MjUtOTRmNy01MjJjYWQzNmFhYWQJMDI1QkE1NDUwRjgxCTAyNUJBNTQ1MEY4MQlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODl8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQlERjg3RjU0NURBRDkJTFkxNTEyMDk2NQlQRFBTMDAwMDAwMDQ0MDg5CURGODdGNTQ1REFEOV9wb3J0YWwJQUUJLQk4CS0JLQktCS0JLQktCS0JLQkyCTE0CXN0cmF0ZWd5X3VhY2hsCTAJNgljaGFubmVsMjpibG9nX3N8b3M6d2luZG93czd8YnJvd3NlcjpmaXJlZm94fGlncnBfY3RyOjEuNTQyMzU3OTk1MjQzMTUxOEUtNHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXJ8Y29udHJhY3Q6MCw0%26userid%3D218.19.216.190_1476328799.972962%26viewlog%3Dfalse%26hashCode%3De324333e7be90c4cdc67c377c714471d" width="300px" height="250px" frameborder="0"></iframe></ins></ins></p><p>　　在这场混乱而激烈的选举中，本应受到关注的严肃政策议题，被谎言与丑闻全面遮盖，舞弊、欺骗和操纵成为高频词汇。这次选战让美国更加对立，最终的胜者在其白宫任期内如何修复美国社会，才是最大考验。</p><p>　　《纽约时报》与美国哥伦比亚广播公司的联合民调称，不论谁胜选，都将在团结美国方面面临重大挑战。40%的民众认为希拉里能够做到这一点，但57%的人持反对意见。而仅有34%的人认为特朗普能够团结国家，63%的人认为他无法做到。</p><p>　　在紧邻投票日的竞选活动中，特朗普称民众可以“转变一个失败的政治体制，将权力还给我们的家庭，社区和公民”，而希拉里则呼吁选民“投票支持一个更好，更强大，更公平的美国”。</p><p>　　曾在白宫担任顾问，服务与见证4位美国总统的戈尔根称，在当下的美国政坛，“妥协成肮脏字眼”，美国政治的两极分化更加严重。而这次的大选，为这种情况火上浇油。</p><p>　　法新社称，11月8日，美国选民将难免要度过一个不眠之夜。（完）</p><p><br/></p>', '1478687536', 'qiezi', 52, 10),
(16, '两名省部级官员同日落马 其中一人刚过54岁生日', '罗马', '昨天下午和晚间，中央纪委监察部网站连续发布两条执纪审查信息：安徽省副省长陈树隆和湖南省委常委、宣传部长张文雄，分别涉嫌严重违纪，接受组织调查。', 'uploads/20161109183258128.png', '<p><strong>陈树隆：</strong></p><p>　　<strong>落马前未能进入省委常委名单</strong></p><p>　　在过54周岁生日的这个11月，迎接安徽省常务副省长陈树隆的是被中央纪委调查。</p><p>　　在10月下旬举行的安徽省第十次党代会上，作为省委常委班子成员的陈树隆，没能进入下一届省委常委候选名单。</p><p>　　陈树隆是安徽巢湖人，他本科就读于安徽财贸学院会计学系工业财务与会计专业，毕业留校当了两年老师后，进入安徽省财政厅综合处工作。随后，他先后出任省国债服务中心副主任、主任，省财政证券公司总经理等职务。</p><p><ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" style="display: block; overflow: hidden; text-decoration: none;"><ins style="text-decoration:none;margin:0px auto;width:300px;display:block;position:relative;overflow:hidden;"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" src="http://static-alias-1.360buyimg.com/jzt/tpl/sspPic.html?ad_ids=2425:5&adflag=0&clkmn=&expose=" name="clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyNzoyNgkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vby8yMDE2LTExLTA5L2RvYy1pZnh4bmZmcjcxNDM5NjQuc2h0bWwJUERQUzAwMDAwMDA0NDA4Ngk0NWUyMTk3ZS0zNTVmLTQ1ZjUtYWUyNy04ZDE3MTA4NmRlMTQJODlCMzMxMTFDNDY2CTg5QjMzMTExQzQ2NglhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQlERjg3RjU0NURBRDkJTFkxNTEyMDk2NQlQRFBTMDAwMDAwMDQ0MDg2CURGODdGNTQ1REFEOV9wb3J0YWwJQUUJLQk4CS0JLQktCS0JLQktCS0JLQkyCTE0CXN0cmF0ZWd5X3VhY2hsCTAJNgljaGFubmVsMjpibG9nX3N8b3M6d2luZG93czd8YnJvd3NlcjpmaXJlZm94fGlncnBfY3RyOjEuNjAyNDI0OTE2NDExMzQ5NUUtNHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXJ8Y29udHJhY3Q6MCwz&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyNzoyNgkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vby8yMDE2LTExLTA5L2RvYy1pZnh4bmZmcjcxNDM5NjQuc2h0bWwJUERQUzAwMDAwMDA0NDA4Ngk0NWUyMTk3ZS0zNTVmLTQ1ZjUtYWUyNy04ZDE3MTA4NmRlMTQJODlCMzMxMTFDNDY2CTg5QjMzMTExQzQ2NglhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQlERjg3RjU0NURBRDkJTFkxNTEyMDk2NQlQRFBTMDAwMDAwMDQ0MDg2CURGODdGNTQ1REFEOV9wb3J0YWwJQUUJLQk4CS0JLQktCS0JLQktCS0JLQkyCTE0CXN0cmF0ZWd5X3VhY2hsCTAJNgljaGFubmVsMjpibG9nX3N8b3M6d2luZG93czd8YnJvd3NlcjpmaXJlZm94fGlncnBfY3RyOjEuNjAyNDI0OTE2NDExMzQ5NUUtNHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXJ8Y29udHJhY3Q6MCwz%26userid%3D218.19.216.190_1476328799.972962%26viewlog%3Dfalse%26hashCode%3Dd67bafbf7ff9456ec32964032b2d0b90" width="300px" height="250px" frameborder="0"></iframe></ins></ins></p><p>　　2002年9月起，陈树隆转入地方任职。在担任了一年多合肥副市长之后，2003年底，他开始了在安徽第二经济重镇芜湖长达8年的任职经历。2011年10月，陈树隆入选省委常委并担任省委秘书长，跻身副部级干部。次年6月，他出任副省长。今年2月，他成为常务副省长。</p><p>　　<strong>张文雄：</strong></p><p>　　<strong>连续第三任落马的衡阳市书记</strong></p><p>　　张文雄1962年4月生于湖南岳阳，从政的最初10年一直在岳阳当地。2007年，出任衡阳市委书记。2011年11月，跻身省委常委。去年8月，他出任省委宣传部长。</p><p>　　张文雄是十八大以来湖南省落马的第三名省部级官员。值得一提的是，此前落马的湖南省政协副主席童名谦曾接棒张文雄担任衡阳市委书记。</p><p>　　接棒童名谦担任衡阳市委书记的李亿龙，也在今年4月被查。在张文雄担任怀化市委书记的一年里，有半年时间李亿龙担任代市长。</p><p>　　在昨天中央纪委宣布调查之前，张文雄的名字已经有半个多月没有在湖南省委的各类活动中出现了。最近的一次活动是，10月19日上午，在湖南省通道侗族自治县参加纪念红军长征胜利80周年大会。</p><p>\r\n	</p><p class="article-editor">责任编辑：王浩成&nbsp;</p><p><br/></p>', '1478687597', 'xuefei', 62, 4),
(17, '特朗普赢得美国大选概率升至50% 全球市场闪崩', '特朗', '原标题：特朗普领先两大关键摇摆州 全球市场“闪崩”', 'uploads/20161109183353898.jpg', '<p><br/>有数据显示，特朗普赢得美国大选概率已大幅升至50%。标普500指数期货跌超3%，道琼斯期指跌超400点。黄金一度突破1310美元/盎司，一度创1个月高位。美元兑墨西哥比索涨8.5%，现报19.7980逼近历史低位。美元指数跌幅扩至1.2%，创8月来最大跌幅，报96.662。</p>', '1478687660', 'xuefei', 313, 4),
(18, '武汉大学原校长李晓红出任教育部副部长', '武汉大学、原校长', '　中国经济网北京11月9日综合报道 全国政协在京召开第五十八次双周协商座谈会，围绕“重视特殊教育”建言献策。全国政协主席俞正声主持会议并讲话。全国政协副主席王家瑞在座谈会上讲了意见。教育部副部长李晓红介绍了有关情况。', 'uploads/20161109182337457.jpg', '<p>{</p><p>{</p><p><strong>李晓红简历</strong></p><p>　　李晓红，男，汉族，1959年6月生，重庆合川人，1982年10月加入中国共产党，1985年7月参加工作。重庆大学采矿系矿山机械工程专业毕业，博士，教授，澳大利亚昆士兰大学荣誉教授，中国工程院院士（2011年）。</p><p>　　1975年至1978年，四川省合川县炉山公社任团委副书记</p><p>　　1978年，考入重庆大学采矿系</p><p>　　1982年至1985年，任重庆大学采矿系团委书记，重庆市学生联合会主席</p><p><ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" style="display: block; overflow: hidden; text-decoration: none;"><ins style="text-decoration:none;margin:0px auto;width:300px;display:block;position:relative;overflow:hidden;"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" src="http://static-alias-1.360buyimg.com/jzt/tpl/sspPic.html?ad_ids=2424:5&adflag=0&clkmn=&expose=" name="clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyMjo1OQkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1Mjg1Mjkuc2h0bWwJUERQUzAwMDAwMDA0NDA4NglhMDU3YTRlMC01MDg2LTRhOGMtOTZkMS02YzljMGRkOTJiM2EJMjcxODQ5Q0YzQzk4CTI3MTg0OUNGM0M5OAlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQkyNzE4NDlDRjNDOTgJUlBNMDAyNTg1OAlQRFBTMDAwMDAwMDQ0MDg2CTI3MTg0OUNGM0M5OAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJLQkwCTEJY2hhbm5lbDI6YmxvZ19zfG9zOndpbmRvd3M3fGJyb3dzZXI6ZmlyZWZveHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXI%253D&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyMjo1OQkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1Mjg1Mjkuc2h0bWwJUERQUzAwMDAwMDA0NDA4NglhMDU3YTRlMC01MDg2LTRhOGMtOTZkMS02YzljMGRkOTJiM2EJMjcxODQ5Q0YzQzk4CTI3MTg0OUNGM0M5OAlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQkyNzE4NDlDRjNDOTgJUlBNMDAyNTg1OAlQRFBTMDAwMDAwMDQ0MDg2CTI3MTg0OUNGM0M5OAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJLQkwCTEJY2hhbm5lbDI6YmxvZ19zfG9zOndpbmRvd3M3fGJyb3dzZXI6ZmlyZWZveHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXI%253D%26userid%3D218.19.216.190_1476328799.972962%26viewlog%3Dfalse%26hashCode%3Db383cb9ed2bad594471f11218274766c" width="300px" height="250px" frameborder="0"></iframe></ins></ins></p><p>　　1985年至1989年，任重庆大学采矿系党总支副书记、系副主任</p><p>　　1989年至1991年，在美国加州大学伯克利分校学习并做研究助理</p><p>　　1991年至1994年，任重庆大学资环学院副院长</p><p>　　1993年，获工学博士学位</p><p>　　1994年至1996年，任重庆大学资环学院院长</p><p>　　1996年至1997年，任重庆大学资环学院院长</p><p>　　1996年3月至8月，在澳大利亚昆士兰大学做访问学者</p><p>　　1997年至1998年，任重庆大学党委常委、校长助理、科研处处长、资环学院院长</p><p>　　1998年至2003年，任重庆大学党委常委、副校长</p><p>　　2003年至2010年， 任重庆大学党委常委、校长（2004年7月明确为副部级）</p><p>　　2007年12月7日，受聘为澳大利亚昆士兰大学荣誉教授</p><p>　　2010年12月，任武汉大学党委常委、校长</p><p>　　现任教育部副部长。</p><p><br/></p><p>}</p><p>}</p>', '1478691058', 'xuefei ', 143, 2),
(19, '武汉大学原校长李晓红出任教育部副部长', '武汉大学、原校长', '　中国经济网北京11月9日综合报道 全国政协在京召开第五十八次双周协商座谈会，围绕“重视特殊教育”建言献策。全国政协主席俞正声主持会议并讲话。全国政协副主席王家瑞在座谈会上讲了意见。教育部副部长李晓红介绍了有关情况。', 'uploads/20161109182337457.jpg', '<p>{</p><p>{</p><p>{</p><p><strong>李晓红简历</strong></p><p>　　李晓红，男，汉族，1959年6月生，重庆合川人，1982年10月加入中国共产党，1985年7月参加工作。重庆大学采矿系矿山机械工程专业毕业，博士，教授，澳大利亚昆士兰大学荣誉教授，中国工程院院士（2011年）。</p><p>　　1975年至1978年，四川省合川县炉山公社任团委副书记</p><p>　　1978年，考入重庆大学采矿系</p><p>　　1982年至1985年，任重庆大学采矿系团委书记，重庆市学生联合会主席</p><p><ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" style="display: block; overflow: hidden; text-decoration: none;"><ins style="text-decoration:none;margin:0px auto;width:300px;display:block;position:relative;overflow:hidden;"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" src="http://static-alias-1.360buyimg.com/jzt/tpl/sspPic.html?ad_ids=2424:5&adflag=0&clkmn=&expose=" name="clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyMjo1OQkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1Mjg1Mjkuc2h0bWwJUERQUzAwMDAwMDA0NDA4NglhMDU3YTRlMC01MDg2LTRhOGMtOTZkMS02YzljMGRkOTJiM2EJMjcxODQ5Q0YzQzk4CTI3MTg0OUNGM0M5OAlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQkyNzE4NDlDRjNDOTgJUlBNMDAyNTg1OAlQRFBTMDAwMDAwMDQ0MDg2CTI3MTg0OUNGM0M5OAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJLQkwCTEJY2hhbm5lbDI6YmxvZ19zfG9zOndpbmRvd3M3fGJyb3dzZXI6ZmlyZWZveHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXI%253D&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0xMS0wOSAxODoyMjo1OQkxMjAuMjM2LjE1My4yMDkJMjE4LjE5LjIxNi4xOTBfMTQ3NjMyODc5OS45NzI5NjIJaHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE2LTExLTA5L2RvYy1pZnh4bmV1YTQ1Mjg1Mjkuc2h0bWwJUERQUzAwMDAwMDA0NDA4NglhMDU3YTRlMC01MDg2LTRhOGMtOTZkMS02YzljMGRkOTJiM2EJMjcxODQ5Q0YzQzk4CTI3MTg0OUNGM0M5OAlhdXRvX2xldmVsOjE4MDEwMHx1c2VyX2dyb3VwOjkwOCw5MDcsOTA5LDkwNSw5MTB8dXNlcl90YWc6MjA1MjcsMjEyNzEsMjAxMDcsMjAyMTIsMjA5NTMsMjA5NTYsMjA5NTEsMjEyNzB8cG9zOlBEUFMwMDAwMDAwNDQwODZ8d2FwX29zOjcwMHx1c2VyX2FnZTo2MDMsNjA0LDYwMnx2X3pvbmU6MzA2MDAwLDMwNjAwMXx1c2VyX2dlbmRlcjo1MDJ8X3Zfem9uZTozMDYwMDAsMzA2MDAxfGF1dG9fcHJpY2U6MTgwMjAwfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwN3x2ZXJzaW9uOmdsX2JwMV8xLGFnX2JwMl8xLGNpX2JwMV8xLHBjOjEuMAkJMzA2MDAwfDMwNjAwMQkyNzE4NDlDRjNDOTgJUlBNMDAyNTg1OAlQRFBTMDAwMDAwMDQ0MDg2CTI3MTg0OUNGM0M5OAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJLQkwCTEJY2hhbm5lbDI6YmxvZ19zfG9zOndpbmRvd3M3fGJyb3dzZXI6ZmlyZWZveHxwbGF0Zm9ybTpvdGhlcnxkZXZpY2U6b3RoZXI%253D%26userid%3D218.19.216.190_1476328799.972962%26viewlog%3Dfalse%26hashCode%3Db383cb9ed2bad594471f11218274766c" width="300px" height="250px" frameborder="0"></iframe></ins></ins></p><p>　　1985年至1989年，任重庆大学采矿系党总支副书记、系副主任</p><p>　　1989年至1991年，在美国加州大学伯克利分校学习并做研究助理</p><p>　　1991年至1994年，任重庆大学资环学院副院长</p><p>　　1993年，获工学博士学位</p><p>　　1994年至1996年，任重庆大学资环学院院长</p><p>　　1996年至1997年，任重庆大学资环学院院长</p><p>　　1996年3月至8月，在澳大利亚昆士兰大学做访问学者</p><p>　　1997年至1998年，任重庆大学党委常委、校长助理、科研处处长、资环学院院长</p><p>　　1998年至2003年，任重庆大学党委常委、副校长</p><p>　　2003年至2010年， 任重庆大学党委常委、校长（2004年7月明确为副部级）</p><p>　　2007年12月7日，受聘为澳大利亚昆士兰大学荣誉教授</p><p>　　2010年12月，任武汉大学党委常委、校长</p><p>　　现任教育部副部长。</p><p><br/></p><p>}</p><p>}</p><p>}</p>', '1478691469', 'qiezi', 789, 2),
(20, 'Laravel带分页的模糊搜索', '分页、搜索', '本文描述了laravel5.3在模糊搜索的带分页的功能', 'uploads/20161201173538281.jpg', '<p>{</p><p style="line-height: 1.5em;">&nbsp;&nbsp;在实现搜索功能的时候，我们需要将搜索关键字传到后台和数据库的数据进行匹配，在对搜索的结果进行分页展示的时候，第一页好好的，但是第二页就存在问题了，下面提供本人的解决办法！</p><p style="line-height: 1.5em;">&nbsp; 先按照普通的方法接受参数和从数据库读取数据并进行分页，注意要将关键字也传到前端页面。</p><pre style="font-family: 宋体; font-size: 12pt; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;$keywords&nbsp;=&nbsp;$input[&#39;keywords&#39;];\r\n&nbsp;&nbsp;&nbsp;&nbsp;$data=Article::where(&#39;art_title&#39;,&#39;like&#39;,&#39;%&#39;.$keywords.&#39;%&#39;)-&gt;paginate(15);\r\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;&nbsp;view(&#39;admin.article.search&#39;,compact(&#39;data&#39;,&#39;keywords&#39;));\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;前端调用：\r\n&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{$data-&gt;appends(array(&#39;keywords&#39;&nbsp;=&gt;&nbsp;$keywords))-&gt;links()}}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;即可解决点击第二页时出现的问题。</pre><p>}</p>', '1480584777', '雪飞', 10, 15),
(21, 'laravel中的数组分页实现 ', '数组、分页', 'larave文档中，我们看到分页的实现方式非常的简单，但是他要求的数据类型是object才可以调用paginate分页方法，但是我们有时候取出来的数据要求是数组类型，这时候该如何调用laravel自带的分页方法，一下是我的一种解决方法。', 'uploads/20161201173851497.jpg', '<p>{</p><pre style="font-family: 宋体; font-size: 12pt; background-color: rgb(255, 255, 255);"><span style="background-color:#f7faff;"> &nbsp; &nbsp; &nbsp; &nbsp; //从数据库读取出数据并转化为数组类型<br/> &nbsp; &nbsp; &nbsp; &nbsp; $comment=Comment::where([&#39;art_id&#39;=&gt;$article_id,&#39;com_pid&#39;=&gt;0])-&gt;get()-&gt;toArray();<br/> &nbsp;<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"> &nbsp; &nbsp; &nbsp; &nbsp;//数据存储在数组的时候的分页功能<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"> &nbsp; &nbsp; &nbsp; &nbsp;//获取当前页，默认为第一页<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#660000;background-color:#f7faff;">$currentPage </span><span style="background-color:#f7faff;">= LengthAwarePaginator::</span><span style="background-color:#f7faff;font-style:italic;">resolveCurrentPage</span><span style="background-color:#f7faff;">();<br/></span><span style="background-color:#f7faff;"><br/></span><span style="background-color:#f7faff;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#808080;background-color:#f7faff;font-style:italic;">//Create a new Laravel collection from the array data<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#660000;background-color:#f7faff;">$collection </span><span style="background-color:#f7faff;">= </span><span style="color:#000080;background-color:#f7faff;font-weight:bold;">new </span><span style="background-color:#f7faff;">Collection( </span><span style="color:#660000;background-color:#f7faff;">$comment</span><span style="background-color:#f7faff;">);<br/></span><span style="background-color:#f7faff;"><br/></span><span style="background-color:#f7faff;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#808080;background-color:#f7faff;font-style:italic;">//Define how many items we want to be visible in each page<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#660000;background-color:#f7faff;">$perPage </span><span style="background-color:#f7faff;">= </span><span style="color:#0000ff;background-color:#f7faff;">10</span><span style="background-color:#f7faff;">;<br/></span><span style="background-color:#f7faff;"><br/></span><span style="background-color:#f7faff;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#808080;background-color:#f7faff;font-style:italic;">//Slice the collection to get the items to display in current page<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#660000;background-color:#f7faff;">$currentPageSearchResults </span><span style="background-color:#f7faff;">= </span><span style="color:#660000;background-color:#f7faff;">$collection</span><span style="background-color:#f7faff;">-&gt;slice((</span><span style="color:#660000;background-color:#f7faff;">$currentPage</span><span style="background-color:#f7faff;">-</span><span style="color:#0000ff;background-color:#f7faff;">1</span><span style="background-color:#f7faff;">) * </span><span style="color:#660000;background-color:#f7faff;">$perPage</span><span style="background-color:#f7faff;">, </span><span style="color:#660000;background-color:#f7faff;">$perPage</span><span style="background-color:#f7faff;">)-&gt;all();<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;">// &nbsp; &nbsp; &nbsp; dd( $currentPageSearchResults);<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"><br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"> &nbsp; &nbsp; &nbsp; &nbsp;//Create our paginator and pass it to the view<br/></span><span style="color:#808080;background-color:#f7faff;font-style:italic;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#660000;background-color:#f7faff;">$paginatedSearchResults</span><span style="background-color:#f7faff;">= </span><span style="color:#000080;background-color:#f7faff;font-weight:bold;">new </span><span style="background-color:#f7faff;">LengthAwarePaginator(</span><span style="color:#660000;background-color:#f7faff;">$currentPageSearchResults</span><span style="background-color:#f7faff;">, </span><span style="background-color:#f7faff;font-style:italic;">count</span><span style="background-color:#f7faff;">(</span><span style="color:#660000;background-color:#f7faff;">$collection</span><span style="background-color:#f7faff;">), </span><span style="color:#660000;background-color:#f7faff;">$perPage</span><span style="background-color:#f7faff;">);<br/></span><span style="background-color:#f7faff;"><br/> &nbsp; &nbsp; &nbsp; &nbsp; //定义路由，否则跳转的分页可能不是当前的分页效果<br/></span><span style="background-color:#f7faff;"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#660000;background-color:#f7faff;">$paginatedSearchResults</span><span style="background-color:#f7faff;">-&gt;setPath(url(</span><span style="color:#008000;background-color:#f7faff;font-weight:bold;">&#39;a/&#39;</span><span style="background-color:#f7faff;">.</span><span style="color:#660000;background-color:#f7faff;">$article_id</span><span style="background-color:#f7faff;">));<br/><br/> &nbsp; &nbsp; &nbsp; &nbsp; //传值到前端<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return view(&#39;home.article&#39;,[&#39;comment&#39;=&gt; $paginatedSearchResults]);<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/> &nbsp; &nbsp; &nbsp; &nbsp;前端的调用：<br/> &nbsp; &nbsp; &nbsp; &nbsp;&lt;?php echo $comment-&gt;render(); ?&gt;<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></span></pre><p><br/></p><p>}</p>', '1480585723', '雪飞', 16, 15);
INSERT INTO `blog_article` (`art_id`, `art_title`, `art_tag`, `art_description`, `art_thumb`, `art_content`, `art_time`, `art_editor`, `art_view`, `cate_id`) VALUES
(22, ' CentOS 7.x下的LEMP环境搭建', 'LEMP,centos', '我们常说的LNMP环境是指Linux/nginx/MySQL/PHP组合，而LEMP是什么呢？其实Nginx的发音是Engine-X = E，LEMP包是由Linux、nginx、MariaDB/MySQL和PHP组成的，那么看来LEMP和LNMP是一样的，而现在业内习惯性的称作LEMP。MariaDB是一款社区支持驱动的MySQL数据库的分支，其功能更多性能更佳，所以我们在CentOS7下安装MariaDB。CentOS7我已经安装好了，现在只需安装Nginx，MariaDB和PHP。', '', '<p>{</p><p>&nbsp; &nbsp; &nbsp;		</p><p>最近由于项目需求，将服务器从CentOS6升级到CentOS7，对应的PHP版本也升级到PHP5.6。我们熟悉的有LEMP环境一键安装包，但是本文我们将单独安装各个组件模块，并搭建一个完整的PHP运行平台。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;						\r\n			</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;	</p><p>我们常说的LNMP环境是指Linux/nginx/MySQL/PHP组合，而LEMP是什么呢？其实Nginx的发音是Engine-X\r\n = \r\nE，LEMP包是由Linux、nginx、MariaDB/MySQL和PHP组成的，那么看来LEMP和LNMP是一样的，而现在业内习惯性的称作LEMP。MariaDB是一款社区支持驱动的MySQL数据库的分支，其功能更多性能更佳，所以我们在CentOS7下安装MariaDB。CentOS7我已经安装好了，现在只需安装Nginx，MariaDB和PHP。</p><h4>1、安装Nginx</h4><p>我们从nginx官方的RPM源来安装一个预构建的稳定版本的nginx包。</p><pre><code class="php">$&nbsp;sudo&nbsp;rpm&nbsp;--import&nbsp;http:<span class="php__com">//nginx.org/keys/nginx_signing.key</span>&nbsp;<br/>$&nbsp;sudo&nbsp;rpm&nbsp;-ivh&nbsp;http:<span class="php__com">//nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm</span>&nbsp;<br/>$&nbsp;sudo&nbsp;yum&nbsp;install&nbsp;nginx&nbsp;&nbsp;<br/></code></pre><p>这样，nginx就安装上了，安装完成后，nginx不会自动启动。现在需要做的是让nginx自动启动，另外还要做些配置让其可以随着操作系统启动而启动。我们也需要在防火墙里打开TCP/80端口，以使得可以远程访问nginx的web服务。所有这些操作、设置都只需要输入如下命令就可实现。</p><pre><code class="php">$&nbsp;sudo&nbsp;systemctl&nbsp;start&nbsp;nginx&nbsp;<br/>$&nbsp;sudo&nbsp;systemctl&nbsp;enable&nbsp;nginx&nbsp;<br/>$&nbsp;sudo&nbsp;firewall-cmd&nbsp;--zone=<span class="php__keyword">public</span>&nbsp;--add-port=<span class="php__number">80</span>/tcp&nbsp;--permanent&nbsp;<br/>$&nbsp;sudo&nbsp;firewall-cmd&nbsp;--reload&nbsp;&nbsp;<br/></code></pre><p>Nginx已经启动了，现在来测试nginx。nginx在CentOS7下的默认文档要目录是/usr/share/nginx/html。默认的 index.html 文件一定已经在这目录下了。让我们检测下是否可以访问到这个测试 web 页，输入 http://nginx的ip地址/访问。</p><p><img src="/ueditor/php/upload/image/20161207/1481090549160895.jpg" alt="nginx"/></p><h4>2、安装MariaDB/MySQL</h4><p>CentOS/RHEL 7使用了MariaDB替代了默认的 MySQL。作为MySQL的简单替代品，MariaDB保证了与MySQL的API和命令行用法方面最大的兼容性。下面是关于怎么在 CentOS7上安装和配置MaraDB/MySQL的操作示例。</p><pre><code class="php">$&nbsp;sudo&nbsp;yum&nbsp;install&nbsp;mariadb-server&nbsp;<br/>$&nbsp;sudo&nbsp;systemctl&nbsp;start&nbsp;mariadb&nbsp;<br/>$&nbsp;sudo&nbsp;systemctl&nbsp;enable&nbsp;mariadb&nbsp;&nbsp;<br/></code></pre><p>在成功启动MariaDB/MySQL服务后，还要进行数据库的安全配置，如设置（非空）的root密码、删除匿名用户、锁定远程访问。执行如下代码：</p><pre>$&nbsp;sudo&nbsp;mysql_secure_installation</pre><p>根据提示设置root密码，以及删除匿名用户等操作。</p><h4>3、安装PHP</h4><p>PHP是LEMP包中一个重要的组件，它负责把存储在MariaDB/MySQL服务器的数据取出生成动态内容。为了LEMP 需要，您至少需要安装上PHP-FPM和PHP-MySQL两个模块。PHP-FPM（FastCGI 进程管理器）实现的是nginx服务器和生成动态内容的PHP应用程序的访问接口。PHP-MySQL模块使PHP程序能访问 MariaDB/MySQL数据库。</p><p>首先检查当前安装的PHP包。</p><pre>yum&nbsp;list&nbsp;installed&nbsp;|&nbsp;grep&nbsp;php</pre><p>如果有安装的PHP包，先删除他们。</p><p>给yum安装添加源包。</p><pre><code class="php">rpm&nbsp;-Uvh&nbsp;https:<span class="php__com">//mirror.webtatic.com/yum/el7/epel-release.rpm</span>&nbsp;<br/>rpm&nbsp;-Uvh&nbsp;https:<span class="php__com">//mirror.webtatic.com/yum/el7/webtatic-release.rpm</span></code></pre><p>运行yum install。</p><p>使用yum命令来定制PHP引擎，安装一些PHP扩展模块包。</p><pre>yum&nbsp;install&nbsp;php56w.x86_64&nbsp;php56w-cli.x86_64&nbsp;php56w-common.x86_64&nbsp;php56w-gd.x86_64&nbsp;php56w-ldap.x86_64&nbsp;php56w-mbstring.x86_64&nbsp;php56w-mcrypt.x86_64&nbsp;php56w-mysql.x86_64&nbsp;php56w-pdo.x86_64</pre><p>然后安装PHP FPM。</p><pre>yum&nbsp;install&nbsp;php56w-fpm</pre><p>最后，启动 PHP-FPM</p><pre><code class="php">$&nbsp;sudo&nbsp;systemctl&nbsp;start&nbsp;php-fpm&nbsp;<br/>$&nbsp;sudo&nbsp;systemctl&nbsp;enable&nbsp;php-fpm</code></pre><h4>4、配置LEMP，让Nginx支持PHP</h4><p>首先，禁用随PHP包安装的httpd服务。</p><pre>$&nbsp;sudo&nbsp;systemctl&nbsp;disable&nbsp;httpd</pre><p>接下来，配置nginx虚拟主机，使得nginx可以通过PHP-FPM来处理PHP的任务。用文本编辑器打开/etc/nginx/conf.d/default.conf，然后按如下所示修改。</p><pre><code class="php">server&nbsp;{&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;listen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="php__number">80</span>;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;server_name&nbsp;&nbsp;localhost;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;root&nbsp;/usr/share/nginx/html;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;index&nbsp;index.php&nbsp;index.html&nbsp;index.htm;&nbsp;<br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#charset&nbsp;koi8-r;</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#access_log&nbsp;&nbsp;/var/log/nginx/log/host.access.log&nbsp;&nbsp;main;</span>&nbsp;<br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;location&nbsp;/&nbsp;{&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#error_page&nbsp;&nbsp;404&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/404.html;</span>&nbsp;<br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#&nbsp;redirect&nbsp;server&nbsp;error&nbsp;pages&nbsp;to&nbsp;the&nbsp;static&nbsp;page&nbsp;/50x.html</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;error_page&nbsp;&nbsp;&nbsp;<span class="php__number">500</span>&nbsp;<span class="php__number">502</span>&nbsp;<span class="php__number">503</span>&nbsp;<span class="php__number">504</span>&nbsp;&nbsp;/50x.html;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;location&nbsp;=&nbsp;/50x.html&nbsp;{&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#&nbsp;proxy&nbsp;the&nbsp;PHP&nbsp;scripts&nbsp;to&nbsp;Apache&nbsp;listening&nbsp;on&nbsp;127.0.0.1:80</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#location&nbsp;~&nbsp;\\.php$&nbsp;{</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#&nbsp;&nbsp;&nbsp;&nbsp;proxy_pass&nbsp;&nbsp;&nbsp;http://127.0.0.1;</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#}</span>&nbsp;<br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#&nbsp;pass&nbsp;the&nbsp;PHP&nbsp;scripts&nbsp;to&nbsp;FastCGI&nbsp;server&nbsp;listening&nbsp;on&nbsp;127.0.0.1:9000</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;<span class="php__com">&nbsp;#</span>&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;location&nbsp;~&nbsp;\\.php$&nbsp;{&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try_files&nbsp;<span class="php__keyword">$</span><span class="php__variable">uri</span>&nbsp;=<span class="php__number">404</span>;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fastcgi_pass&nbsp;<span class="php__number">127.0</span><span class="php__number">.0</span><span class="php__number">.1</span>:<span class="php__number">9000</span>;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fastcgi_index&nbsp;index.php;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fastcgi_param&nbsp;SCRIPT_FILENAME&nbsp;<span class="php__keyword">$</span><span class="php__variable">document_root</span><span class="php__keyword">$</span><span class="php__variable">fastcgi_script_name</span>;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="php__keyword">include</span>&nbsp;fastcgi_params;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<br/>}</code></pre><p>然后，配置PHP， 修改/etc/php.ini。</p><pre><code class="php">cgi.fix_pathinfo=<span class="php__number">1</span>&nbsp;<br/>date.timezone&nbsp;=&nbsp;PRC</code></pre><p>最后，测试nginx是否能处理PHP页面。在测试之前，请确保重启nginx和PHP-FPM。</p><pre><code class="php">$&nbsp;sudo&nbsp;systemctl&nbsp;restart&nbsp;nginx&nbsp;<br/>$&nbsp;sudo&nbsp;systemctl&nbsp;restart&nbsp;php-fpm</code></pre><p>创建一个叫名叫test.php的文件，然后写入如下内容，并放入/usr/share/nginx/html/目录。</p><pre><code class="php"><span class="php__start">&lt;?php</span>&nbsp;<br/>phpinfo();&nbsp;<br/><span class="php__end">?&gt;</span></code></pre><p>打开浏览器，输入 http://nginx的IP地址/test.php 。看到以下界面则LEMP安装完成。</p><p><img src="/ueditor/php/upload/image/20161207/1481090550904054.jpg" alt="php"/></p><p><br/></p><p>}</p>', '1481090556', 'xuefei', 12, 16),
(23, 'centos7 系统lnmp下安装php5.6.x的redis扩展', 'php5.6.x,lnmp,centos7', 'linux下安装php的redis扩展，\r\nphp版本为5.6\r\n服务器：nginx\r\n数据库：MariaDB\r\n假设你已经配置可以上的环境', '', '<p>{</p><p>安装 <span style="font-family:Calibri">Redis </span><span style="font-family:宋体">扩展</span></p><p><br/></p><p>wget <a target="_blank" href="https://github.com/phpredis/phpredis/archive/2.2.8.tar.gz"><span style="text-decoration:underline;">https://github.com/phpredis/phpredis/archive/2.2.8.tar.gz</span></a>&nbsp;下载<span style="font-family:Calibri">redis</span><span style="font-family:宋体">扩展</span></p><p>tar xvfz 2.2.8.tar.gz</p><p>cd phpredis-2.2.8/ <span style="font-family:宋体">额外扩展：</span></p><p>whereis phpize</p><p><img src="/ueditor/php/upload/image/20161208/1481179827771172.bmp" title="1481179827771172.bmp" alt="{24FDC4F2-B0F7-41E3-BCCA-E0BE4B917B17}.bmp"/></p><p>yum install php56w-devel&nbsp;</p><p>/usr/bin/phpize</p><p>./configure --with-php-config=/usr/bin/php-config</p><p>此时可能会报下面的错误：</p><p><img src="/ueditor/php/upload/image/20161208/1481180199127804.bmp" title="1481180199127804.bmp" alt="{C788DB40-6131-453D-9E82-BE8883257B25}.bmp"/></p><p>原因是没有安装gcc</p><p>执行yum install gcc</p><p>make</p><p>make install<span style="font-family:宋体">接下来</span></p><p><span style="font-family:宋体"></span></p><p>修改<span style="font-family:Calibri">php.ini</span></p><p>文件<span style="font-family:Calibri">cd ~vi /etc/php.ini</span></p><p>查找 <span style="font-family:Calibri">extension</span><span style="font-family:宋体">把这个</span><span style="font-family:Calibri">extension=redis.so </span><span style="font-family:宋体">放在</span><span style="font-family:Calibri">php.ini</span><span style="font-family:宋体">中</span><span style="font-family:Calibri">:wq</span></p><p>systemctl restart httpd //<span style="font-family:宋体">重启</span><span style="font-family:Calibri">Apache</span><span style="font-family:宋体">额外扩展：</span></p><p>systemctl restart nginx.service //<span style="font-family:宋体">重启</span><span style="font-family:Calibri">nginx</span><span style="font-family:宋体">额外扩展：</span></p><p>systemctl restart php-fpm.service //<span style="font-family:宋体">重启</span><span style="font-family:Calibri">php-fpm</span><span style="font-family:宋体">在浏览器查看</span></p><p>phpinfo<span style="font-family:宋体">信息如果出现</span><span style="font-family:Calibri">redis</span><span style="font-family:宋体">说明</span><span style="font-family:Calibri">redis</span><span style="font-family:宋体">扩展弄好了</span></p><p>重启<span style="font-family:Calibri">php-fpm </span><span style="font-family:宋体">在浏览器上输入</span><span style="font-family:Calibri">nginx</span><span style="font-family:宋体">的</span><span style="font-family:Calibri">ip</span><span style="font-family:宋体">也可查看</span><span style="font-family:Calibri">phpinfo</span><span style="font-family:宋体">信息</span></p><p>如果出现<span style="font-family:Calibri">redis</span><span style="font-family:宋体">说明</span><span style="font-family:Calibri">redis</span><span style="font-family:宋体">扩展弄好了&nbsp;</span></p><p><span style="font-family:宋体"><br/></span><br/></p><p><span style="font-family:宋体"><br/></span></p><p><br/></p><p>}</p>', '1481181058', '雪飞', 4, 15),
(24, 'Centos7下安装php redis', 'redis,php', '在centos7下安装redis\r\nphp版本5.6.x\r\n服务器：nginx', 'uploads/20161212103524960.png', '<p><br/></p><p>1.安装前的准备（安装gcc）</p><p><br/></p><p><strong>[php]</strong> <a href="http://blog.csdn.net/gentry__/article/details/51941388#" class="ViewSource" title="view plain">view plain</a><span data-mod="popu_168"> <a href="http://blog.csdn.net/gentry__/article/details/51941388#" class="CopyToClipboard" title="copy">copy</a></span><span data-mod="popu_169"> </span></p><ol start="1" class="dp-c list-paddingleft-2"><li><p>yum&nbsp;install&nbsp;gcc-c++&nbsp;&nbsp;</p></li></ol><p><br/>2.将redis下载到/usr/src目录下</p><p><strong>[php]</strong> <a href="http://blog.csdn.net/gentry__/article/details/51941388#" class="ViewSource" title="view plain">view plain</a><span data-mod="popu_168"> <a href="http://blog.csdn.net/gentry__/article/details/51941388#" class="CopyToClipboard" title="copy">copy</a></span><span data-mod="popu_169"> </span></p><ol start="1" class="dp-c list-paddingleft-2"><li><p>cd&nbsp;/usr/src&nbsp;&nbsp;</p></li></ol><p>wget&nbsp;http://download.redis.io/releases/redis-2.8.17.tar.gz</p><ol start="1" class="dp-c list-paddingleft-2"><li><p>tar&nbsp;xzf&nbsp;redis-2.8.17.tar.gz&nbsp;&nbsp;#解压&nbsp;&nbsp;</p></li><li><p>cd&nbsp;redis-2.8.17&nbsp;&nbsp;#进入安装目录&nbsp;&nbsp;</p></li><li><p>make&nbsp;&nbsp;#编译&nbsp;&nbsp;</p></li></ol><p><br/></p><p>注：make完成后 redis-2.8.17目录下会出现编译后的redis服务程序redis-server,还有用于<a href="http://lib.csdn.net/base/softwaretest" class="replace_word" title="软件测试知识库" target="_blank" style="color:#df3434; font-weight:bold;">测试</a>的客户端程序redis-cli,两个程序位于安装目录 src 目录下</p><p>4.启动redis服务</p><p><br/></p><p><strong>[php]</strong> <a href="http://blog.csdn.net/gentry__/article/details/51941388#" class="ViewSource" title="view plain">view plain</a><span data-mod="popu_168"> <a href="http://blog.csdn.net/gentry__/article/details/51941388#" class="CopyToClipboard" title="copy">copy</a></span><span data-mod="popu_169"> </span></p><ol start="1" class="dp-c list-paddingleft-2"><li><p>cd&nbsp;src&nbsp;&nbsp;</p></li><li><p>./redis-server &nbsp;</p></li></ol><p><br/></p><p>在安装的过程中，可能会报ctl需要8.5版本以上，此时只需要执行 yum install ctl即可。</p>', '1481510727', '雪飞', 13, 15);

-- --------------------------------------------------------

--
-- 表的结构 `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `cate_id` int(11) NOT NULL COMMENT '文章分类id',
  `cate_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章分类名称',
  `cate_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章说明',
  `cate_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `cate_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `cate_view` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `cate_order` tinyint(4) NOT NULL COMMENT '排序',
  `cate_pid` int(11) NOT NULL COMMENT '父级ID'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `blog_category`
--

INSERT INTO `blog_category` (`cate_id`, `cate_name`, `cate_title`, `cate_keywords`, `cate_description`, `cate_view`, `cate_order`, `cate_pid`) VALUES
(1, '新闻', '国内外大事', '新闻', '国内外大事，尽在眼里', 2, 2, 0),
(2, '体育', 'http://qiezixia.com/发展体育事业，增强国民体质', '体育、运动', 'http://qiezixia.com/发展体育事业，增强国民体质', 10, 1, 0),
(3, '娱乐', '人人都有自己的兴趣爱好', '', '', 0, 3, 0),
(4, '腾讯新闻', '新闻中心_腾讯网', '', '', 0, 2, 1),
(5, '体育新闻', 'http://qiezixia.com/搜狐体育-搜狐', '', '', 0, 1, 1),
(6, '体育彩票', 'http://qiezixia.com/国家体育总局体育彩票管理中心官方网站', '彩票、体育，官网', 'http://qiezixia.com/国家体育总局体育彩票管理中心官方网站', 0, 1, 2),
(7, '搜狐体育', '搜狐体育-搜狐', '', '', 0, 0, 2),
(9, '娱乐新闻', 'http://qiezixia.com/uyiuo', 'iuoi', 'oip', 0, 2, 1),
(10, '娱乐八卦', '吃瓜群众的乐趣', '娱乐、八卦', '', 0, 1, 3),
(12, '娱乐值班车', '娱乐值班车', '娱乐值班车娱乐值班车', '娱乐值班车', 0, 0, 3),
(13, '体育测试', '强身健体，中国体育', '', '', 0, 0, 2),
(14, '子导航fdg', 'http://qiezixia.com', '', '', 0, 0, 13),
(15, 'Laravel', 'Laravel社区', 'Laravel、优雅、简洁、框架', 'Laravel是一套简洁、优雅的PHP Web开发框架(PHP Web Framework)。它可以让你从面条一样杂乱的代码中解脱出来；它可以帮你构建一个完美的网络APP，而且每行代码都可以简洁、富于表达力。', 0, 0, 0),
(16, 'centos7', 'centos7', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_comment`
--

CREATE TABLE IF NOT EXISTS `blog_comment` (
  `com_id` int(11) NOT NULL COMMENT '评论自增id',
  `art_id` int(11) NOT NULL COMMENT '文章id',
  `com_content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '评论内容',
  `com_pid` int(11) NOT NULL DEFAULT '0' COMMENT '评论的父id',
  `user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录用户名称',
  `com_answer` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '被回复用户名称',
  `com_time` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '评论时间'
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `blog_comment`
--

INSERT INTO `blog_comment` (`com_id`, `art_id`, `com_content`, `com_pid`, `user_name`, `com_answer`, `com_time`) VALUES
(30, 19, '<img src="./../resources/views/home/images/face/33.gif"><img src="./../resources/views/home/images/face/5.gif">啦啦啦', 0, NULL, NULL, '1479891228'),
(31, 19, '<img src="./../resources/views/home/images/face/4.gif">', 30, NULL, NULL, '1479891512'),
(32, 19, '<img src="./../resources/views/home/images/face/4.gif"><img src="./../resources/views/home/images/face/3.gif"><img src="./../resources/views/home/images/face/5.gif">', 30, NULL, NULL, '1479891526'),
(33, 19, '<img src="./../resources/views/home/images/face/20.gif">', 0, NULL, NULL, '1479891534'),
(34, 19, '<img src="./../resources/views/home/images/face/7.gif"><emt>7</emt>', 33, NULL, NULL, '1479891545'),
(35, 19, '<img src="./../resources/views/home/images/face/18.gif"><img src="./../resources/views/home/images/face/21.gif">图一图䙔 ', 33, NULL, NULL, '1479891560'),
(36, 19, '<img src="./../resources/views/home/images/face/2.gif">', 0, NULL, NULL, '1479894737'),
(37, 19, '<img src="./../resources/views/home/images/face/8.gif">', 0, NULL, NULL, '1479894761'),
(38, 14, '<img src="./../resources/views/home/images/face/28.gif">', 0, NULL, NULL, '1479974500'),
(39, 18, '<img src="./../resources/views/home/images/face/42.gif">', 0, NULL, NULL, '1479978560'),
(40, 19, '<img src="./../resources/views/home/images/face/17.gif">', 0, NULL, NULL, '1479980330'),
(41, 18, '<img src="./../resources/views/home/images/face/30.gif">', 0, NULL, NULL, '1479981356'),
(42, 17, '<img src="./../resources/views/home/images/face/36.gif">', 0, NULL, NULL, '1480041195'),
(43, 17, '<img src="./../resources/views/home/images/face/43.gif">', 0, NULL, NULL, '1480044367'),
(44, 17, '<img src="./../resources/views/home/images/face/5.gif">', 0, NULL, NULL, '1480044668'),
(45, 17, '<img src="./../resources/views/home/images/face/12.gif">', 0, NULL, NULL, '1480052865'),
(50, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/49.gif" border="0" />', 0, NULL, NULL, '1480323622'),
(56, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/37.gif" border="0" />', 36, NULL, NULL, '1480324998'),
(57, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/63.gif" border="0" />', 37, NULL, NULL, '1480325219'),
(58, 18, '<img src="http://qiezixia.com/resources/views/home/arclist/1.gif" border="0" />', 39, NULL, NULL, '1480325609'),
(59, 19, '美丽<br/>', 50, NULL, NULL, '1480325908'),
(60, 18, '<img src="./../resources/views/home/images/face/3.gif">', 0, NULL, NULL, '1480326227'),
(61, 18, '<img src="http://qiezixia.com/resources/views/home/arclist/1.gif" border="0" />', 60, NULL, NULL, '1480326260'),
(62, 18, '<img src="http://qiezixia.com/resources/views/home/arclist/34.gif" border="0" />', 60, NULL, NULL, '1480326271'),
(63, 18, '<img src="http://qiezixia.com/resources/views/home/arclist/3.gif" border="0" />', 60, NULL, NULL, '1480326331'),
(64, 18, '<img src="http://qiezixia.com/resources/views/home/arclist/2.gif" border="0" />', 41, NULL, NULL, '1480326488'),
(65, 19, '茄子茄子<img src="http://localhost/blog/resources/views/home/arclist/20.gif" border="0" />', 30, NULL, NULL, '1480380606'),
(66, 17, '<img src="http://qiezixia.com/resources/views/home/arclist/3.gif" border="0" />', 44, NULL, NULL, '1480385678'),
(67, 19, '', 0, NULL, NULL, '1480411820'),
(68, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/20.gif" border="0" />', 37, NULL, NULL, '1480411995'),
(69, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/74.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/1.gif" border="0" />', 37, NULL, NULL, '1480412023'),
(70, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/48.gif" border="0" />', 37, NULL, NULL, '1480412054'),
(71, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/24.gif" border="0" />', 37, NULL, NULL, '1480473009'),
(72, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/35.gif" border="0" />什么都不说', 67, NULL, NULL, '1480473814'),
(73, 19, '', 40, NULL, NULL, '1480473981'),
(74, 19, '', 50, NULL, NULL, '1480474229'),
(75, 19, 'e657<img src="http://qiezixia.com/resources/views/home/arclist/33.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/33.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/33.gif" border="0" />', 50, NULL, NULL, '1480474298'),
(76, 19, '哎呀呀', 0, NULL, NULL, '1480474358'),
(77, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/4.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/4.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/4.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/4.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/4.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/4.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/4.gif" border="0" />', 76, NULL, NULL, '1480488525'),
(78, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/19.gif" border="0" />', 76, NULL, NULL, '1480498745'),
(79, 19, '<img src="./../resources/views/home/images/face/19.gif">cfghj', 0, NULL, NULL, '1480498758'),
(80, 19, '<img src="./../resources/views/home/images/face/16.gif">', 0, NULL, NULL, '1480499205'),
(81, 19, '<img src="./../resources/views/home/images/face/7.gif">', 0, NULL, NULL, '1480499216'),
(82, 15, '<img src="./../resources/views/home/images/face/28.gif">', 0, NULL, NULL, '1480499268'),
(83, 19, '<img src="./../resources/views/home/images/face/18.gif">', 0, NULL, NULL, '1480502124'),
(84, 19, '<img src="http://qiezixia.com/resources/views/home/arclist/39.gif" border="0" /><img src="http://qiezixia.com/resources/views/home/arclist/19.gif" border="0" />', 76, NULL, NULL, '1480502135'),
(85, 14, '<img src="http://qiezixia.com/resources/views/home/arclist/36.gif" border="0" />', 38, NULL, NULL, '1480581037'),
(86, 14, '<img src="./../resources/views/home/images/face/43.gif"><img src="./../resources/views/home/images/face/44.gif">坏蛋', 0, NULL, NULL, '1480581061'),
(87, 21, '<img src="./../resources/views/home/images/face/59.gif">', 0, NULL, NULL, '1480639453'),
(88, 21, '<img src="http://qiezixia.com/resources/views/home/arclist/41.gif" border="0" />', 87, NULL, NULL, '1480639475'),
(89, 20, '<img src="./../resources/views/home/images/face/13.gif">滕盛弟好坏水', 0, NULL, NULL, '1480904982'),
(90, 20, '是吗<img src="http://192.168.25.56/resources/views/home/arclist/49.gif" border="0" />', 89, NULL, NULL, '1480904998'),
(91, 20, '是啊，好坏的<img src="http://192.168.25.56/resources/views/home/arclist/38.gif" border="0" />', 89, NULL, NULL, '1480905220'),
(92, 23, '<img src="./../resources/views/home/images/face/49.gif">', 0, NULL, NULL, '1481254409');

-- --------------------------------------------------------

--
-- 表的结构 `blog_config`
--

CREATE TABLE IF NOT EXISTS `blog_config` (
  `conf_id` int(11) NOT NULL COMMENT '模板配置id',
  `conf_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '配置项标题',
  `conf_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '配置项名称',
  `conf_content` text COLLATE utf8_unicode_ci COMMENT '配置项内容',
  `conf_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `conf_tips` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '配置项说明',
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '配置项类型',
  `field_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '配置项类型值'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `blog_config`
--

INSERT INTO `blog_config` (`conf_id`, `conf_title`, `conf_name`, `conf_content`, `conf_order`, `conf_tips`, `field_type`, `field_value`) VALUES
(9, '网站名称', 'web_title', '樱空半颜博客系统', 0, '', 'input', ''),
(10, '标题优化', 'seo_title', '个人博客系统', 0, '', 'input', ''),
(11, '网站关键字', 'keywords', '个人博客模板', 0, '', 'input', ''),
(12, '网站描述', 'description', '写一些关于本人的个人心情和分享免费资源、网络技术的个人独立博客', 0, '', 'textarea', '');

-- --------------------------------------------------------

--
-- 表的结构 `blog_link`
--

CREATE TABLE IF NOT EXISTS `blog_link` (
  `link_id` int(10) unsigned NOT NULL,
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `blog_link`
--

INSERT INTO `blog_link` (`link_id`, `link_name`, `link_title`, `link_url`, `link_order`) VALUES
(2, '测试', 'sdjfgkdfjgkjkhlk;l', 'http://www.baidu.com', 3),
(3, '测试', 'sdjfgkdfjgkjkhlk;l', 'http://www.baidu.com', 2),
(6, '测试', 'sdjfgkdfjgkjkhlk;l', 'http://www.baidu.com', 3),
(18, '百度11', '百度搜索引擎链接11', 'http://www.baidu.com 11', 2),
(19, '百度“权力游戏”撕裂美国？大选将迎来最', '百度搜索引擎链接', 'http://www.baidu.com', 1),
(20, '百度', '百度搜索引擎链接', 'http://www.baidu.com', 1),
(21, '百度', '百度搜索引擎链接', 'http://www.baidu.com', 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_migrations`
--

CREATE TABLE IF NOT EXISTS `blog_migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `blog_migrations`
--

INSERT INTO `blog_migrations` (`id`, `migration`, `batch`) VALUES
(8, '2016_11_10_162954_create_link_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_navs`
--

CREATE TABLE IF NOT EXISTS `blog_navs` (
  `nav_id` int(11) NOT NULL COMMENT '导航id',
  `nav_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '导航名称',
  `nav_alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称别名',
  `nav_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '导航链接',
  `nav_order` int(11) NOT NULL DEFAULT '0' COMMENT '、、排序'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `blog_navs`
--

INSERT INTO `blog_navs` (`nav_id`, `nav_name`, `nav_alias`, `nav_url`, `nav_order`) VALUES
(10, '首页', 'home', '/', 0),
(11, 'Laravel', 'Laravel', 'http://qiezixia.com/cate/15', 0),
(12, 'centos7', 'centos7', 'http://qiezixia.com/cate/16', 0),
(13, '留言板', 'talk', 'http://', 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_user`
--

CREATE TABLE IF NOT EXISTS `blog_user` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户登陆密码',
  `regist_time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `blog_user`
--

INSERT INTO `blog_user` (`user_id`, `user_name`, `user_pass`, `regist_time`) VALUES
(1, 'admin', 'eyJpdiI6Ik5MbDAzT3dEZTRyNFVneUN2SWtkS0E9PSIsInZhbHVlIjoiSWczV1kxbmxFU1MzT1V2Tk0zRkhhUlFZZmNJMkxJNXJcL08xbWFSc3FcL1F3PSIsIm1hYyI6ImRlNjU0ZWRlNDZjNDZjNTY4ZmM1YTRmZTAyZjQ0MDU4ZGFkNTg4YTEyYjA0OWI2OTQ5MmZiMTExYjdkOGRjMDYifQ==', '2016-11-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `blog_config`
--
ALTER TABLE `blog_config`
  ADD PRIMARY KEY (`conf_id`);

--
-- Indexes for table `blog_link`
--
ALTER TABLE `blog_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `blog_migrations`
--
ALTER TABLE `blog_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_navs`
--
ALTER TABLE `blog_navs`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `blog_user`
--
ALTER TABLE `blog_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章自增id',AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章分类id',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论自增id',AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `blog_config`
--
ALTER TABLE `blog_config`
  MODIFY `conf_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板配置id',AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `blog_link`
--
ALTER TABLE `blog_link`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `blog_migrations`
--
ALTER TABLE `blog_migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blog_navs`
--
ALTER TABLE `blog_navs`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航id',AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `blog_user`
--
ALTER TABLE `blog_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
