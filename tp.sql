-- phpMyAdmin SQL Dump
-- version 4.0.10.11
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2018-12-14 08:43:45
-- 服务器版本: 5.5.54-log
-- PHP 版本: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `cms`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `author` varchar(32) NOT NULL,
  `keyword` varchar(64) NOT NULL,
  `image` varchar(256) NOT NULL,
  `abstract` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `content` text NOT NULL,
  `belong` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `editor_id` int(4) unsigned NOT NULL,
  `auditor_id` int(4) unsigned DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_UNIQUE` (`source`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `author`, `keyword`, `image`, `abstract`, `source`, `date`, `content`, `belong`, `status`, `amount`, `editor_id`, `auditor_id`, `create_time`, `update_time`) VALUES
(1, '水文常识（一）', 'ts', 'tete', '/image/20181213/e851a9f8f93ea1f6bb35c4670e0c2c7d.jpg', '内容来源百度文库', 'flow', '2018-12-13', '一、水文名词\n\n(一)流域和水系\n\n流域是地表水与地下水分水线所包围的集水区或汇水区，因地下水分水线不易确定，习惯上将地表水的集水区称为流域。河道干流的流域是由所属各级支流的流域所组成。流域面积的确定，可根据地形图勾出流域分水线，然后求出分水线所包围的面积。河流的流域面积可以计算到河流的任一河段，如水文站控制断面，水库坝址或任一支流的汇口处。流域里大大小小的河流，构成脉络相通的系统，称为河系或水系。\n\n（二）河流的分段及其特点\n\n每条河流一般都可分为河源．上游．中游．下游．河口等五个分段。\n\n1.河源。河流开始的地方，可以是溪涧．泉水．冰川．沼泽或湖泊等。\n\n2.上游。直接连着河源，在河流的上段，它的特点是落差大，水流急，下切力强，河谷狭，流量小，河床中经常出现急滩和瀑布。\n\n3.中游。中游一般特点是河道比降变缓，河床比较稳定，下切力量减弱而旁蚀力量增强，因此河槽逐渐拓宽和曲折，两岸有滩地出现。\n\n4.下游。下游的特点是河床宽，纵比降小，流速慢，河道中淤积作用较显著，浅滩到处可见，河曲发育。\n\n5.河口。河口是河流的终点，也是河流入海洋．湖泊或其它河流的入口，泥沙淤积比较严重。\n\n（三）河流的断面\n\n河流的断面分为纵断面及横断面。\n\n1.纵断面。沿河流中线（也有取沿程各横断面上的河床最低点）的剖面，测出中线以上（或河床最低点）地形变化转折的高程，以河长为横座标，高程为纵座标，即可绘出河流的纵断面图。纵断面图可以表示河流的纵坡及落差的沿程分布。\n\n2.横断面。河槽中某处垂直于流向的断面称为在该处河流的横断面。它的下界为河底，上界为水面线，两侧为河槽边坡，有时还包括两岸的堤防。横断面出称为水断面，它是计算流量的重要参素。\n\n（四）水尺与水位\n\n水尺是直接观读江河、湖泊、水库、灌渠水位的标尺。水尺的历史悠久，直到现代仍在广泛使用。\n\n河流或者其它水体的自由水面离某一基面零点以上的高程称为水位。水位的单位是米，一般要求记至小数2位，即0.01m。以水位为纵轴，时间为横轴，可绘出水位随时间的变化曲线，称为水位过程线。\n\n（五）基面\n\n变化曲线基面是指计算水位和高程的起始面。在水文资料中涉及的基面有：绝对基面．假定基面．测站基面．冻结基面等四种。\n\n(六)流速\n\n流速是指水流质点在单位时间内所通过的距离。渠道和河道里的水流各点的流速是不相同的，靠近河(渠)底、河边处的流速较小,河中心近水面处的流速最大,为了计算简便,通常用横断面平均流速来表示该断面水流的速度。\n\n(七)径流与径流量\n\n流域地表面的降水，如雨、雪等，沿流域的不同路径向河流、湖泊和海洋汇集的水流叫径流。在某一时段内通过河流某一过水断面的水量称为该断面的径流量。径流是水循环的主要环节,径流量是陆地上最重要的水文要素之一，是水量平衡的基本要素。\n\n(八)径流量的表示方法及其度量单位\n\n(1)流量Q。指单位时间内通过某一过水断面的水量。常用单位为立方米每秒(m３／s)。各个时刻的流量是指该时刻的瞬时流量，此外还有日平均流量、月平均流量、年平均流量和多年平均流量等。\n\n(2)径流总量W。时段Δt内通过河流某一断面的总水量。以所计算时段的时间乘以该时段内的平均流量,就得径流总量W,即W＝QΔt。它的单位是立方米(m3)。以时间为横坐标，以流量为纵坐标点绘出来的流量随时间的变化过程就是流量过程线。流量过程线和横座标所包围的面积即为径流量。\n\n(3)径流深R。指计算时段内的经流总量平铺在整个流域面积上所得到的水层深度。它的常用单位为毫米(mm)。\n\n若时段为Δt(s)，平均流量为Q(m3／s)，流域面积为A(km2 )，则径流深R(mm)由下式计算:R=QΔt／(1000A)\n\n(4)径流模数M。一定时段内单位面积上所产生的平均流量称为径流模数M。它的常用单位为m3／(s·km2 )，计算公式为: M＝ Q／A\n\n(5)径流系数α。 为一定时段内降水所产生的径\n\n流量与该时段降水量的比值，以小数或百分数计。\n\n(九)径流的形成过程\n\n从降雨到达地面至水流汇集、流经流域出口断面的整个过程，称为径流形成过程。\n\n径流的形成是一个极为复杂的过程、为了在概念上有一定的认识，可把它概化为两个阶段，即产流阶段和汇流阶段。\n\n1．产流阶段。当降雨满足了植物截留、洼地蓄水和表层土壤储存后，后续降雨强度又超过下渗强度、其超过下渗强度的雨量，降到地面以后，开始沿地表坡面流动称为坡面漫流．是产流的开始。如果雨量继续增大，漫流的范围也就增大，形成全面漫流，这种超渗雨沿坡面流动注人河槽，称为坡面径流。地面漫流的过程，即为产流阶段。\n\n2.汇流阶段。降雨产生的径流，汇集到附近河网后，又从上游流向下游，最后全部流经流域出口断面，叫做河网汇流，这种河网汇流过程,即为汇流阶段。', 2, 1, 7, 1, NULL, 1544668121, 1544688945),
(2, '2018年长江流域重要水雨情报告', 'test', '长江', '/image/20181213/658bcb436b434c7645511a8184f4895c.jpg', '来源长江水文网', 'report', '2018-12-13', '长江流域重要水雨情报告', 3, 1, 2, 2, 1, 1544669758, 1544689319),
(3, '长江流域各站点的实时水情', 'ts', 'tete', '/image/20181213/8cd0774e74baf3dbff8528c1ab6b76e7.jpg', '第一期长江流域的水文检测', 'water', '2018-12-13', '\n站名	时间	水位(m)	流量(m3/s)\n寸滩	13日 16时00分	174.70	5730\n武隆	13日 16时00分	175.22	877\n宜昌	13日 16时00分	40.09	7280\n沙市	13日 16时00分	30.72	6970\n城陵矶(莲)	13日 16时00分	22.29	-\n汉口	13日 16时00分	15.73	13700\n九江	13日 15时00分	10.50	13900\n大通	13日 16时00分	6.42	18700\n城陵矶(七)	13日 16时00分	22.34	6350\n湖口	13日 16时00分	9.85	3550\n茅坪(二)	13日 16时00分	174.50	-\n三峡水库	13日 15时00分	174.49	-(入)7370(出)\n龙王庙	13日 16时00分	157.34	-\n丹江口水库	13日 08时00分	157.37	365(入)731(出)', 1, 1, 4, 1, NULL, 1544684331, 1544688683);

-- --------------------------------------------------------

--
-- 表的结构 `exhibit`
--

CREATE TABLE IF NOT EXISTS `exhibit` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(6) unsigned NOT NULL,
  `picture` varchar(256) NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `exhibit`
--

INSERT INTO `exhibit` (`id`, `article_id`, `picture`, `create_time`) VALUES
(1, 1, '/image/20181213/e851a9f8f93ea1f6bb35c4670e0c2c7d.jpg', 1544679475),
(2, 3, '/image/20181213/8cd0774e74baf3dbff8528c1ab6b76e7.jpg', 1544689485);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `password` char(40) NOT NULL,
  `realname` varchar(8) NOT NULL,
  `email` varchar(256) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `last_login_ip` varchar(16) DEFAULT NULL,
  `last_login_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `realname`, `email`, `rank`, `status`, `last_login_ip`, `last_login_time`) VALUES
(1, 'root', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'woider', 'root@email.com', 0, 1, '0.0.0.0', 1544689386),
(2, 'test', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'lll', 'qq@qq.com', 1, 1, '0.0.0.0', 1544688963);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
