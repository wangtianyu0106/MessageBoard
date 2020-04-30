-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2020-04-30 14:52:33
-- 服务器版本： 5.5.57-log
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boke_rabbit_wan`
--

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `text` varchar(2000) NOT NULL COMMENT '留言内容',
  `pic` varchar(200) NOT NULL COMMENT '用户头像',
  `like` int(11) NOT NULL COMMENT '点赞量',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `name`, `text`, `pic`, `like`, `user_id`) VALUES
(76, '小白兔', '和哥哥的便当比起来夜空的薯片就像大便一样！只会给我大便的大便夜空是笨蛋～笨蛋～', 'img/timg.gif', 1, 4),
(77, '小白兔', '亲爱的，如果你爱上别人，请记得告诉我，然后狠狠甩我一巴掌，大声告诉我“我们不可能了”，让我滚。 这样，我才好歇斯底里的忘了你。', 'img/timg.gif', 1, 4),
(74, '小白兔', '在狂热思绪下喊出的爱情宣言中，存在着爱情的实体', 'img/timg.gif', 1, 4),
(75, '小白兔', '如果我是那雨滴的话，那么，我能够像把不曾交汇的天空与大地连接起来那样，把某人的心串联起来吗？', 'img/timg.gif', 1, 4),
(73, '小白兔', '你喜欢的人已经心有所属不是正常的吗，因为你喜欢他，所以你的眼中就只有她。人啊，总是盲目地去爱。', 'img/timg.gif', 1, 4),
(72, '楠楠啊', '你最无暇的时光是哪段，你又把它奉献给了谁？', 'img/timg (3).jpg', 1, 8),
(65, '小白兔', '小白兔白又白', 'img/timg.gif', 1, 4),
(71, '楠楠啊', '相信十年后的八月，我们还会相遇。', 'img/timg (3).jpg', 1, 8),
(70, '楠楠啊', 'What, so everyone''s supposed to sleep every single night now? You realize that nighttime makes up half of all time?', 'img/timg (3).jpg', 1, 8),
(69, '楠楠啊', '自古以来流传着这样一个传说 当集齐了七个福禄娃 放到炼丹炉中炼化 就能召唤出神龙，召的出才怪，你以为是龙珠啊。', 'img/timg (3).jpg', 1, 8),
(64, '小白兔', '小可爱', 'img/timg.gif', 1, 4),
(55, '小华子', '小华来留言了', 'img/timg.jpg', 1, 3),
(56, '小华子', '我来留言了', 'img/timg.jpg', 1, 3),
(57, '小华子', '我来了', 'img/timg.jpg', 1, 3),
(68, '楠楠啊', '我只是一个小后端', 'img/timg (3).jpg', 1, 8),
(67, '楠楠啊', '啦啦啦', 'img/timg (3).jpg', 1, 8),
(78, '小华子', '休息对于生存而言，也是紧要问题', 'img/timg.jpg', 1, 3),
(79, '小华子', '对不起，风太大，我没有听清楚……', 'img/timg.jpg', 1, 3),
(80, '小华子', '我们一路奋战，不是为了改变世界，而是为了不让世界改变我们。', 'img/timg.jpg', 1, 3),
(81, '小华子', '必须洗净一切往事，否则你永远无法清楚自由地看这个世界', 'img/timg.jpg', 1, 3),
(82, '小华子', '应该可以了吧，我已经很努力了，应该可以抵达终点了……', 'img/timg.jpg', 1, 3);

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `content` varchar(100) NOT NULL COMMENT '公告内容'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`id`, `content`) VALUES
(1, '欢迎来到我的博客！');

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `text` varchar(20000) NOT NULL COMMENT '正文',
  `user` varchar(20) NOT NULL COMMENT '用户名',
  `like` int(11) NOT NULL COMMENT '点赞量',
  `read` int(11) NOT NULL COMMENT '阅读量',
  `time` datetime NOT NULL COMMENT '时间'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `pages`
--

INSERT INTO `pages` (`id`, `title`, `text`, `user`, `like`, `read`, `time`) VALUES
(1, '关于', '诸葛亮于汉灵帝光和四年（181年）出生在琅琊郡阳都县的一个官吏之家，诸葛氏是琅琊的望族，先祖诸葛丰曾在西汉元帝时做过司隶校尉，诸葛亮的父亲诸葛珪在东汉末年做过泰山郡丞； [2] 诸葛亮3岁时母亲章氏病逝，诸葛亮8岁时丧父，与弟弟诸葛均一起跟随由袁术任命为豫章太守的叔父诸葛玄到豫章（今江西南昌）赴任，东汉朝廷派朱皓取代了诸葛玄职务，诸葛玄就去投奔荆州刘表。\n\n建安二年（197年），诸葛玄去世，诸葛亮就在隆中（位于今湖北襄阳）隐居，平日喜欢吟诵《梁甫吟》，又常以管仲、乐毅自比，时人对他都是不屑一顾，只有好友徐庶、崔州平等人相信他的才干。\n\n诸葛亮与当时的襄阳名士司马徽、庞德公、黄承彦等有结交。黄承彦曾对诸葛亮说：“听到你要选妻，我家中有一丑女，头发黄、皮肤黑，但才华可与你相配。”诸葛亮应许这头亲事，迎娶她。当时的人都以此作笑话取乐，乡里甚至作了句谚语：“莫作孔明择妇，正得阿承丑女”，但也有一种说法指黄月英本人极美，因此遭到乡里其他年轻女性的嫉妒而诋毁她的容貌。', '管理员', 16, 52, '2018-11-21 14:30:20'),
(2, '帮助', '请联系我们。联系电话：15100000000；QQ：1234567890。', '管理员', 15, 42, '2018-11-21 14:40:30'),
(3, '企业介绍', '公司概况：这里面可以包括注册时间，注册资本，公司性质，技术力量，规模，员工人数，员工素质等;\n公司发展状况:公司的发展速度,有何成绩,有何荣誉称号等;\n公司文化:公司的目标,理念,宗旨,使命,愿景,寄语等;\n公司主要产品:性能,特色,创新,超前;\n销售业绩及网络:销售量,各地销售点等;\n售后服务:主要是公司售后服务的承诺。', '管理员', 0, 0, '2018-11-23 17:06:26');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `time` datetime NOT NULL COMMENT '发布时间',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `comment` varchar(30000) NOT NULL COMMENT '正文',
  `pic` varchar(100) NOT NULL,
  `read` int(11) NOT NULL COMMENT '阅读量',
  `like` int(11) NOT NULL COMMENT '点赞量'
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `time`, `title`, `comment`, `pic`, `read`, `like`) VALUES
(12, 1, '2018-11-20 20:12:33', '现在是2018', '文章内容文章内容文章内容文章内容文章内容文章内容文章内容', 'res/static/images/item.png', 3, 0),
(13, 1, '2018-11-20 20:12:52', '2018文章标题', '2018文章内容2018文章内容2018文章内容2018文章内容2018文章内容2018文章内容2018文章内容', 'res/static/images/item.png', 20, 1),
(14, 1, '2018-11-22 10:33:10', '毒液--致命守护者', 'Not you found us, we found you. 不是你找到我们，而是我们找到你。', 'res/static/images/timg.jpg', 12, 9),
(15, 2, '2018-11-22 10:40:09', '浮世万千，吾爱有三', '浮世万千，吾爱有三，一为日，二为月，三为卿，日为朝，月为暮，卿为朝朝暮暮。', 'res/static/images/20160704151106_SmYEW.thumb.700_0.jpeg', 23, 7),
(16, 2, '2018-11-23 14:33:10', '我是新的文章标题', '我是新的文章内容', 'res/static/images/item.png', 0, 0),
(17, 2, '2018-11-26 08:00:00', '从现在开始，我将追寻你的名字。', '从现在开始，我将追寻你的名字。', 'res/static/images/item.png', 0, 0),
(18, 3, '2018-11-26 08:02:00', '一个人吃饭，太寂寞了。', '一个人吃饭，太寂寞了。', 'res/static/images/item.png', 0, 0),
(19, 3, '2018-11-26 08:02:00', '忘记本身就是一件不可能的事情，别妄想了。', '忘记本身就是一件不可能的事情，别妄想了。', 'res/static/images/item.png', 0, 0),
(20, 3, '2018-11-26 08:05:00', '万有引力可无法对坠入爱河的人负责。', '万有引力可无法对坠入爱河的人负责。', 'res/static/images/item.png', 0, 0),
(21, 4, '2018-11-26 08:08:00', '最终让你难以忘怀的，并不是某个谁，而是当初为之倾心，不顾一切的自己。', '最终让你难以忘怀的，并不是某个谁，而是当初为之倾心，不顾一切的自己。', 'res/static/images/item.png', 0, 0),
(22, 4, '2018-11-26 08:11:00', '正是在对未来没有任何希望的时候，一个人能坚持到什么地步，才真正体现出这个人有多坚强。', '正是在对未来没有任何希望的时候，一个人能坚持到什么地步，才真正体现出这个人有多坚强。', 'res/static/images/item.png', 0, 0),
(23, 4, '2018-11-26 08:13:00', '做不到的话，不过就是一死 。但是，赢了就能活下去，要是不战斗就赢不了。', '做不到的话，不过就是一死 。但是，赢了就能活下去，要是不战斗就赢不了。', 'res/static/images/item.png', 0, 0),
(24, 5, '2018-11-26 08:15:00', '我不是因为需要你们评论几句才去当英雄的，而是因为我想去当所以我才当的。', '我不是因为需要你们评论几句才去当英雄的，而是因为我想去当所以我才当的。', 'res/static/images/item.png', 0, 0),
(25, 5, '2018-11-26 08:17:00', '暴力出奇迹，骗分过样例。', '暴力出奇迹，骗分过样例。', 'res/static/images/item.png', 0, 0),
(26, 5, '2018-11-26 08:17:00', '忌妒别人，不会给自己增加任何的好处。忌妒别人，也不可能减少别人的成就。', '忌妒别人，不会给自己增加任何的好处。忌妒别人，也不可能减少别人的成就。', 'res/static/images/item.png', 0, 0),
(27, 6, '2018-11-26 08:21:00', '如果到了一个遥远陌生的国度，还不去改变或者推翻自己的曾经，那这远走高飞还有什么飞头？', '如果到了一个遥远陌生的国度，还不去改变或者推翻自己的曾经，那这远走高飞还有什么飞头？', 'res/static/images/item.png', 0, 0),
(28, 6, '2018-11-26 08:23:00', '加油！和你们在一起！', '加油！和你们在一起！', 'res/static/images/item.png', 0, 0),
(29, 6, '2018-11-26 08:25:00', '如果没什么好事发生的话，就把没有发生坏事的每一天当作好事吧。', '如果没什么好事发生的话，就把没有发生坏事的每一天当作好事吧。', 'res/static/images/item.png', 0, 0),
(30, 7, '2018-11-26 08:26:04', '纵使日薄西山。', '纵使日薄西山。', 'res/static/images/20160704151106_SmYEW.thumb.700_0.jpeg', 0, 0),
(31, 7, '2018-11-26 08:31:26', '不敢正视你的眼睛，是怕我每一个眼神都在告白。', '不敢正视你的眼睛，是怕我每一个眼神都在告白。', 'res/static/images/item.png', 3, 0),
(32, 7, '2018-11-26 08:32:26', '得到了再失去，总是比从来就没有得到更伤人。', '得到了再失去，总是比从来就没有得到更伤人。', 'res/static/images/item.png', 3, 0),
(33, 8, '2018-11-26 08:34:29', '男人就应该保持冷静，沸腾的水只会被蒸发掉。', '男人就应该保持冷静，沸腾的水只会被蒸发掉。', 'res/static/images/item.png', 3, 0),
(34, 8, '2018-11-26 08:35:29', '至少恋爱不是种机会 我认为它是一种意志', '至少恋爱不是种机会 我认为它是一种意志', 'res/static/images/item.png', 3, 0),
(35, 8, '2018-11-26 08:39:29', '哥哥也可以喜欢上我之外的女孩子，但只有音梦是不可以的！', '哥哥也可以喜欢上我之外的女孩子，但只有音梦是不可以的！', 'res/static/images/item.png', 3, 0),
(36, 9, '2018-11-26 08:39:29', '赞美太阳！', '赞美太阳！', 'res/static/images/item.png', 3, 0),
(37, 9, '2018-11-26 08:40:29', '我见诸君多有病，料诸君见我、应如是。', '我见诸君多有病，料诸君见我、应如是。', 'res/static/images/item.png', 3, 0),
(38, 9, '2018-11-26 08:41:29', '现在得到的将来定将十倍失去', '现在得到的将来定将十倍失去', 'res/static/images/item.png', 3, 0),
(39, 10, '2018-11-26 08:42:29', '我们的心就像那天空一样，永不分离。', '我们的心就像那天空一样，永不分离。', 'res/static/images/item.png', 3, 0),
(40, 10, '2018-11-26 08:43:29', '只要你还记得我，我就会一直在你的身边。', '只要你还记得我，我就会一直在你的身边。', 'res/static/images/item.png', 3, 0),
(41, 10, '2018-11-26 08:43:29', '可以嘲笑你的朋友，但不能嘲笑他喜欢的东西。', '可以嘲笑你的朋友，但不能嘲笑他喜欢的东西。', 'res/static/images/item.png', 3, 0),
(42, 11, '2018-11-26 08:43:29', '父母是你的一把粗糙的伞，可是它为你遮风挡雨——而我们应该做的，是感激他们，并不是舍弃他们、捅破他们。', '父母是你的一把粗糙的伞，可是它为你遮风挡雨——而我们应该做的，是感激他们，并不是舍弃他们、捅破他们。', 'res/static/images/item.png', 3, 0),
(43, 11, '2018-11-26 08:43:29', '夫君子之行，静以修身，俭以养德，非淡泊无以明志，非宁静无以致远', '夫君子之行，静以修身，俭以养德，非淡泊无以明志，非宁静无以致远', 'res/static/images/item.png', 3, 0),
(44, 11, '2018-11-26 08:43:29', '知道为什么你会遭受这么多的挫折吗？因为神认为，只有历尽了磨难的人才能成功啊！你是神选之子啊！', '知道为什么你会遭受这么多的挫折吗？因为神认为，只有历尽了磨难的人才能成功啊！你是神选之子啊！', 'upload/bd2161begy1fx7krc3spgj20rs0fm7wh.jpg', 5, 1),
(45, 12, '2018-11-26 08:43:29', '无论发生什么事情，哪怕是一个人成了一个没有了灵魂的躯体，那另一个人也还是要努力地工作下去。', '无论发生什么事情，哪怕是一个人成了一个没有了灵魂的躯体，那另一个人也还是要努力地工作下去。', 'res/static/images/item.png', 3, 0),
(46, 12, '2018-11-26 08:43:29', '凡心所向，素履可往，生如逆旅，一苇以航。', '凡心所向，素履可往，生如逆旅，一苇以航。', 'res/static/images/item.png', 3, 0),
(47, 12, '2018-11-26 08:46:29', '不能逃避，不能逃避，不能逃避，不能逃避……', '不能逃避，不能逃避，不能逃避，不能逃避……', 'res/static/images/item.png', 3, 0),
(48, 13, '2018-11-26 08:46:29', 'Let the hacking begin.', 'Let the hacking begin.', 'res/static/images/item.png', 3, 0),
(49, 13, '2018-11-26 08:46:29', '落叶的一生，只是为了归根吧。', '落叶的一生，只是为了归根吧。', 'res/static/images/item.png', 3, 0),
(50, 13, '2018-11-26 08:46:29', 'What, so everyone''s supposed to sleep every single night now? You realize that nighttime makes up ha', 'What, so everyone''s supposed to sleep every single night now? You realize that nighttime makes up half of all time?', 'res/static/images/item.png', 3, 0),
(51, 14, '2018-11-26 08:47:29', '你有学校也有朋友，但对我来说，我的生活中就只有你。', '你有学校也有朋友，但对我来说，我的生活中就只有你。', 'res/static/images/item.png', 3, 0),
(52, 14, '2018-11-26 08:47:29', '得来不易的机会，会让所有的动物去做原来不喜欢做的事。', '得来不易的机会，会让所有的动物去做原来不喜欢做的事。', 'res/static/images/item.png', 3, 0),
(53, 14, '2018-11-26 18:56:22', '想象', '苏吉特.马拉\r\n\r\n这一天终于来到了，托尼觉得自己很久以来一直都在等待这一天。\r\n\r\n他二十二岁，从未体验过母亲的温暖，母亲在生他的时候难产死了。父亲开始约会别的女人。托尼出生在一个非常富有而且世代享有声望的家族。\r\n\r\n托尼有一个孤独的童年，直到简进入他的生活。他依旧记得简搬来做他邻居的那一天。简的陪伴驱散了他的忧伤，更重要的是他开始享受生活。而现在他打算向简求婚，请求她嫁给自己。在花园里等候简的时候，他听见杰克叔叔在喊他。杰克叔叔这些年一直在照顾着他的生活。杰克是一位心理医生，对托尼非常疼爱。\r\n\r\n“托尼，我能和你谈一谈吗？”\r\n\r\n“什么事？”托尼有些紧张地问道。\r\n\r\n“还是让我们进客厅去说吧。”杰克叔叔说道。\r\n\r\n托尼既有些渴望又有些不安，他从未见过杰克叔叔这个样子。\r\n\r\n“托尼，你要保持镇定，这件事对你来说不太容易理解。托尼，还记得那天你告诉我简搬到我们旁边的别墅做邻居吗？”\r\n\r\n“是关于简？”他尖叫起来，心跳加速。\r\n\r\n“托尼，这些年来没有人住在旁边那幢别墅……”\r\n\r\n“你怎么能这么说？我触摸过她，甚至吻过她的面颊。是你疯了？”\r\n\r\n“托尼，我知道这难以置信，但这是事实，我一直想告诉你，但当时你太小，还不能理解。”\r\n\r\n“不，这不可能！你在撒谎！”\r\n\r\n“不，孩子，是你自己的意识在欺骗你，托尼，你要保持冷静，一切都会好的，相信我！”\r\n\r\n托尼冲出客厅。他从一扇破窗户进到简的房子里面。一切都废弃了，那张沙发已经落满厚厚的灰尘，他和简曾经坐在那里聊天，一聊就是几个小时。这里除了一些锈迹斑斑的家具和尘土，什么都没有。他回去见杰克叔叔。\r\n\r\n“孩子，我很难过，但你必须从中解脱出来。”杰克叔叔安慰道。\r\n\r\n托尼不能相信发生的一切，那个他深爱并想娶之为妻的女孩并不存在！\r\n\r\n他花了大约一个月的时间来接受这个现实。这天，他在睡觉前拿起自己吃了十五年的药片。他一直想知道杰克叔叔为什么一直给他吃这些药片，现在他知道了答案。他病了，是一种精神疾病。\r\n\r\n当他准备睡觉时，有人敲门，是简。“简，你不能来这里，你并不存在……”\r\n\r\n“什么？你是在开玩笑吗？托尼，我来这儿是来向你道歉的，那天我没告诉你就离开了，因为我妈妈在那天出车祸去世了，我当时想联系你但怎么都联系不上。”\r\n\r\n“不不不，这不是真的。”托尼说。\r\n\r\n“托尼，你到底出了什么毛病？我是你深爱的女孩简。”\r\n\r\n“不，那不是真的！”托尼闭上眼睛，希望他的梦快点结束。\r\n\r\n“托尼，你不能这样伤我的心，你那样爱我，我们曾一起度过那么多美好的时光！”\r\n\r\n“不，简，我是和我自己度过很多美好的时光！”\r\n\r\n他走近她，“简，我虚构了你，现在我要毁灭你！”他向她刺了三刀。简流血了，托尼触到了鲜红的液体。大脑还在跟他玩恶作剧！\r\n\r\n“杰克叔叔，你在哪儿？我的病已经好了，从现在起简这个人就不存在了。杰克叔叔，你在哪里？”托尼大喊着。\r\n\r\n“杰克叔叔并不存在，我就是想告诉你这件事的，这些日子……”简喘息着，呼吸完最后一口气。', 'res/static/images/item.png', 6, 0),
(54, 1, '2018-11-26 19:54:01', '志气与欲望', '梁漱溟\r\n\r\n在这个时代的青年，能够把自己安排对了的很少。\r\n\r\n在这时代，有一个大的欺骗他，或耽误他，容易让他误会，或让他不留心的一件事，就是把欲望当志气。\r\n\r\n这样的用功，自然不得其方。也许他很卖力气，因为背后存个贪的心，不能不如此。可是他这样卖力气，却很不自然，很苦，且难以长进。虽有时也会起一个大的反动，觉得我这样做是干什么？甚或许完全不干，也许勉强干。但当自己勉强自己时，读书做事均难入，无法全副精神放在事情上。甚且会自己搪塞自己。\r\n\r\n越聪明的人，越容易有欲望，越不知应在哪个地方放下那个心。心实在应该搁在当下的。可是聪明的人，老是搁不在当下，老往远处跑，烦躁而不宁。所以没有志气的固不用说，就是自以为有志气的，往往不是志气而是欲望。仿佛他期望自己能有成就，要成功怎么个样子，这样不是很好吗？无奈在这里常藏着不合适的地方，自己不知道。自己越不宽松，越不能耐，病就越大。所以前人讲学，志气欲望之辨很严，必须不是从自己躯壳动念，而念头真切，才是真志气。', 'upload/timg.jpg', 0, 0),
(55, 2, '2018-11-26 19:55:53', '你那点痛算什么', '朱国勇\r\n\r\n这个世界上，有4000万孩子在单亲家庭中，其中有1200万是孤儿，从记事起就没有见过父母。如果有人能让他们叫上一声妈妈，足以让他们幸福得热泪横流。\r\n\r\n但是，他们还算幸运的，因为，至少他们很健康。要知道，这个世界上，有6000多万人不同程度肢体残缺。\r\n\r\n但是这些残疾人也是幸运的，至少他们还能生活自理。要知道，这个世界上还有2000多万重症患者，整天躺在床上，生活不能自理，大小便失禁。在不发达国家，每年约有80000名儿童被人贩子拐走，打折双腿，弄瞎或者弄哑，沦为乞讨的工具。\r\n\r\n但是，他们也是幸运的，因为他们还有生命。要知道，这个世界上，平均每天有160万人死于飞来的横祸，譬如待在家里，天上落下一架飞机被砸死，或者晴天一个响雷被劈死，或者看流星时被一颗陨石击毙。\r\n\r\n但是，这些死者也是幸运的，因为他们死后不会受到唾骂。要知道，这个世界上，每年还有30000人死于冤案。他们被人以正义的名义杀死，死后，还要为不是他们犯下的罪行而背负骂名，甚至遗臭万年。\r\n\r\n现在想想，你遇到的那点痛，又算得了什么！', 'upload/timg (1).jpg', 2, 0),
(56, 3, '2018-11-26 20:09:43', '123', '朱国勇\r\n\r\n这个世界上，有4000万孩子在单亲家庭中，其中有1200万是孤儿，从记事起就没有见过父母。如果有人能让他们叫上一声妈妈，足以让他们幸福得热泪横流。\r\n\r\n但是，他们还算幸运的，因为，至少他们很健康。要知道，这个世界上，有6000多万人不同程度肢体残缺。\r\n\r\n但是这些残疾人也是幸运的，至少他们还能生活自理。要知道，这个世界上还有2000多万重症患者，整天躺在床上，生活不能自理，大小便失禁。在不发达国家，每年约有80000名儿童被人贩子拐走，打折双腿，弄瞎或者弄哑，沦为乞讨的工具。\r\n\r\n但是，他们也是幸运的，因为他们还有生命。要知道，这个世界上，平均每天有160万人死于飞来的横祸，譬如待在家里，天上落下一架飞机被砸死，或者晴天一个响雷被劈死，或者看流星时被一颗陨石击毙。\r\n\r\n但是，这些死者也是幸运的，因为他们死后不会受到唾骂。要知道，这个世界上，每年还有30000人死于冤案。他们被人以正义的名义杀死，死后，还要为不是他们犯下的罪行而背负骂名，甚至遗臭万年。\r\n\r\n现在想想，你遇到的那点痛，又算得了什么！', 'upload/0cd08531455b31352ae9fd1b4c5b9d6f.jpg', 9, 2),
(60, 4, '2018-11-28 14:51:17', '是吗', '韩少功\r\n\r\n这个故事的叙述人是老D。故事还会涉及到A、B、C以及M。之所以这里都以字母标示他们，是因为他们之间的差别并不重要，不需要郑重其事地拿姓名来予以区别。而且时过境迁，老D的叙述是否真实无误，是否值得与真实姓名一一对号，并非不成为一个问题。\r\n\r\n据老D说，如果没有记错的话，故事发生在那一年的冬天，很多史学界同行到北京去，参加八十年代后期一个重要的大会。当时正是老M特别走红的时候，或者这样说吧，不过是很多人觉得他特别走红的时候——这与人们五年、十年、十五年以后的淡漠印象并不一样。作为这个故事的重要人物，老M提早一两个月去了北京，到开会的时候，还没忙完诸多事务，身影少见而且飘忽，基本上不参加小组讨论，偶尔出现在宾馆的走道或餐厅，一个夹着皮包日理万机的样子，冲着这个或那个很努力地笑一下，或者故作惊讶地“嘿”一下，就不知去了哪里，不知何处还有经邦纶国的伟业等着他。不用说，他入住的613号房也经常门庭若市，很多陌生的面孔探进门来，问他在不在，问他何时能够回到房间，如此等等。这些来客，有的是拿着他的新书来请求签名，有的是背着照相机一类设备前来采访，还有一些是编辑、书评家以及史学同行，满脸微笑地前来求见和拜访。寻找他的电话也特别多，从清早响到深夜，使同房的老A和老B都睡不好觉——那时的会风较为简朴，尤其是史学界开会，好像来的都是古董，只有霉味和锈迹，缺少热气与活力，不占地方，搁哪里都行，三五个人合住一房是通行的安排。\r\n\r\n老A和老B是清史专家，从暗无天日的清宫史料深处走来，大概不耐现代的搅扰，想避开那些与他们无关的敲门和电话，便常来隔壁的615室来避难。他们遇到老C和老D，四个朋友久别重逢，开始只说些不咸不淡的话。老B说，别看老M一口乡下土话谁都听不太明白，但聪明人啊，聪明人啊，每一步都拿准了政治的脉，我们不得不服。老A说，老M最近的文章文采非凡，只是引的材料都是大路货和二手货，论史居然也没有考古的支持，这种文章嘛，应该到文学界去拿奖。\r\n\r\n接下去，四个人越谈越亲，言语中的春秋笔法就少了许多。不知是谁再次说到他们共同的老朋友——至少算得上老熟人：屁，老M那点套路其实也简单。你们知道这一个多月他在北京忙乎什么吗？第一步，给各位老前辈上门送书，多少赚得几句称赞，一一详加笔录，立马传达给各大报刊。第二步，待各大报刊落实老前辈们的称赞，编发了相关书评和报道，老M再把这些材料统统复印，呈送各位老前辈以求进一步指教。老前辈们还能怎么办？一看舆论如此，民意与公论如此，当然赏下更多的称赞，这就有了以后的第三步甚至第四步……什么是古人说的“上下其手”？先生们，这就是，这就是。\r\n\r\n这种描述有点损，只是来源和出处不详。事后的老A说，这是老C说的，而老C说，好像是老B说的。作为故事叙述者的老D，号称业内的版本学专家，也含含糊糊闪烁其辞前后不一。但有一点较为确定：他们四个人哈哈大笑，臭味相投，同仇敌忾，对业内的诸多钻营风气和伪士行状不以为然。\r\n\r\n四个人谈得兴起，把臂邀饮之类的小活动不可免。既然吃喝，当然还引出了很多有关吃喝的话头。不知是谁说到老M悭吝成癖，有一次号称要大宴省外来的同行好友，结果带着客人们绕了好几条街，如同率领着一帮乞丐大游行，顶着烈日，冒着大汗，来到一个满是泔水味的破招待所。他掏出几张皱巴巴的会议餐券，为就餐券是否过期的问题，与食堂服务员大吵了一架，委实恶相迭出，才让一旁饥肠辘辘的朋友们，最终吃上了冷冷的盒饭。至于酒，只有他拎来的半瓶，也不知是他哪次享受公费招待时暗中截留下来的。如此奇闻，列入《 清稗类抄》或者《 古今谭概 》一类野史，大概也很够格。\r\n\r\n老A说，是可忍孰不可忍。\r\n\r\n老B笑着说，得想办法治他一下。\r\n\r\n老C笑着说，是得想办法收拾他一下。\r\n\r\n老D笑得更厉害，说这种人乱我党风，乱我学风，乱我酒风。\r\n\r\n大会的日程颇长。他们松散而闲适，大多有点无聊，于是修理老朋友或者老熟人的工作，就成了四君子眼下的临时主题。他们想起“薄责于人”的古训，觉得责之不必，不妨将事情付之一戏，拿老M来开开心。老A划拳胜出，第一个替天行道，捡了个便宜，来点低级招数就够用了。他会说粤语，打了个电话到613室，用粤式普通话对接电话的老M说，雷（你）好哇，这里是阿（亚）洲电视台记者，洪孔（香港）的啦，专程来京城采访，戏（是）啦戏（是）啦，想给你M先生做一个专题采访啦……他一放下电话，自己就噗哧笑出声来，说老M乐颠颠地连声答应，绝对没有听出他的声音，真以为喜从天降呢。\r\n\r\n大家幸灾乐祸，急切地想知道老M是如何蒙在鼓里，一次次派人到隔壁房间去窥探，借口去寻什么人，或者是去送大会简报。第一次探子来报，说那小子已经在洗澡了。第二次探子来报，说那小子已经在抹头油了。第三次探子来报，说那家伙正在对着镜子试领带，试完了三四条还没有找到合适的，嫌红色的太俗，嫌灰色的太素，已经把衣箱折腾得底朝天。探子老A明知故问，你如何要这样讲究？是不是准备会见女大学生？他含含糊糊岔开话题，说电视里的舞蹈好看，你快去看吧——把自己的美事一个劲地严加保密。\r\n\r\n下午过去了。晚餐的时候，他们发现老M一脸怒气，像只好斗的公鸡，见人就揪胸口或瞪眼睛，对这个那个熟人一一质问：是你骗我吧？上午是你打的电话吧？四君子都忍住笑，反问他电话是怎么回事。他把大家的眼睛一一仔细看过，没看出什么可疑的东西，还是颇不甘心。“你们这些小混蛋，从来没安过什么好心！”他拿出江湖上很哥们的样子，指着老D的鼻子横加讹诈：“你不老实交代，老子就不请你吃烤鸭。”\r\n\r\n老M没有诈出什么，只得悻悻离去。但他既已生疑，第二轮戏弄若想得逞，当然是难度大增。不过，四君子都是中青年，脑子比较好用。老B想了想，生出一计，还是把电话打进613室，口音里略带一点山东腔，自称中央组织部某局的处长，有点盛气凌人地通知对方：眼下中央正要选拔优秀的知识分子从政，第一批人选已进入考察阶段，局领导对老M印象颇佳，想当面晤谈，希望他下午不要去参加小组讨论，两点整在宾馆大门口候着，一辆车牌号尾数为4801的黑色轿车将来接他。老B还故作神秘，说此事望老M暂保密，以免造成会上不必要的议论。老B说完赶紧放下电话，说言多必有失，言多必失，再说下去，他的山东腔就挺不住了。他还说，电话那一头的老M刚才答应得比较犹疑，似乎是吃一堑长一智，正在判断电话的真伪，正在判断这个山东腔是否接近哪位熟人的声音。也许他还想查问来电者的底细，只是一时没来得及。\r\n\r\n还好，他们没有发现隔壁的老M那边有反常的动静。但老B的忧虑不无道理。老A说，你刚才的语气设计不对，“颇佳”、“晤谈”一类文言词也容易漏馅，来点嗯嗯啊啊的停顿，也许更像一个处长。\r\n\r\n他们对老M是否就范没有把握，但午睡还未结束，老B喜出望外地冲进门来，说快看快看，王师所向披靡，沙场再传捷报了。\r\n\r\n四君子都奔向窗口，只见老M穿着大衣，缠着围巾，果然准时地往大门口，在漫天雪花之下一步一滑，在积雪里留下一道新的足迹。他们想象这行足迹的那一头，老M在大门口傻等上半个小时乃至一个小时，被北风吹得全身哆嗦十指冰凉，对任何一辆黑色小轿车都引颈盼望，一个个都差点快活得孩子般在床上前仰后翻。直到这个时候，他们才明白刚才的悬虑其实多余。想想吧，中央组织部，就是以前的吏部，握有百官擢贬之权，老M只要没吃豹子胆，没得精神病，即便百分之九十九地疑心这个电话是假，即便认为真实的可能性不足百分之一，也决不敢掉以轻心。只要有中央组织部这五个字，他还能不去大门口乖乖地恭迎？\r\n\r\n这叫做宁忍一万，就怕万一。\r\n\r\n再次上当，使老M的脸色有些混乱。他肯定知道事态严重，嗅出了身边的阴谋气氛。事情已经很明白：一个可恶的犯罪团伙正隐匿在他的周围，正有组织和有计划有纲领地与他作对，并且每一招都居心不良，让他有苦难言。他像舞台上一个孤独的演员，陷入了险恶剧情却不知这一剧情还要延续多久，更不知道微笑着的导演和观众隐在强烈聚光灯之外的什么地方。他要冲出十面埋伏，于是突击检查周围的房间，特别是突击检查熟人们的表情。据说他已经把623室和614室排除在目标之外，因为那两个房间都住着一些青年学者，都是新派人士，而新派人士醉心西学，心高气盛，压根就瞧不上他，不屑于拿他开心。据说他锁定的最大目标是620，因为那间房里住着几个同省籍的老乡，老乡嘛，互相之间知根知底，不避粗俗，不分上下，开点出格的玩笑也有一份乡谊顶着，谁也不可能过分认真。这就伏下了很大的危险性。当然，老M还检查过四君子经常扎堆的615，眼珠滴溜溜地四下乱转，目光在老D的脸上深入开掘。正巧，A、B、C这一刻都不在，只有老D躺在床上看报纸。是的，他在看报纸。这太正常了，太冷清了，太不阴谋了，肯定打消了对方的一些怀疑。\r\n\r\n但事情到了这一步，作为第三个接棒的老D，要把升级游戏玩下去，当然需要更多的心思。首先，他否定了电话这种方式。老M两次吃亏在于电话，眼下就算是他爹娘打来电话，恐怕也会被他当作老骗子。然后，他也否定了女色一类中介。老M不是傻子，知道自己以前的轻薄之名，眼下肯定卧薪尝胆严防死守，在特殊时期对一切女性都高度警觉，哪怕是碰到貂蝉再世西施转生也会小心翼翼。最后，老D只好开始琢磨晚上的电影。\r\n\r\n这天晚上给与会者放的影片是美国片，叫《午夜》，据说是很资产阶级的一部，是带荤带色的那种，作为“内部参考片”，以前只在文艺界的会议上放一放，眼下能拿到史学界的会议上放，不知意图何在。有些与会者早就在议论这部片子。用过晚餐以后，老M也兴致勃勃地赶早去了宾馆东楼的礼堂，一心一意等待电影的开始。老D的主意就是这一刻冒出来的。\r\n\r\n待电影放到一半，渐入高潮，眼看银幕上的女主人公的春情汹涌，他偷偷溜到放映间，请放映员打出一条幻灯通知：M先生，请速来礼堂大门，有人找。\r\n\r\n老D谋事颇为心细，故意向放映员报错了老M名字中的一个字，错成了另一个同音字。要知道，这并不妨碍理解的一错，实为神来之笔，极大增强了通知的真实感、正常感、质朴感、纯洁感，其道理很简单：任何做局下套的人不可能把目标人物的名字搞错，于是出错者必为忠良，与任何预谋与心机无涉。\r\n\r\n老D弯着腰潜回座位，关注着右前方猎物的动静。他看见幻灯通知在银幕一侧终于出现了，然后看见前面黑压压的背影里，老M熟悉的背影也冒出来了。那家伙果然毫无戒备，前顾后盼了一阵，挽着一件大衣，恋恋不舍地站起来，艰难地从同排一个个背景前挤过，眼睛还不时盯住银幕，直到走近大门了，还忍不住回头看了一眼。\r\n\r\n老D差一点笑出声来。邻座的老B和老C也乐不可支，捂住了嘴，让前后排的观众不知道这里发生了什么，投来疑惑与不快的目光。\r\n\r\n四君子不知老M是什么时候返回座位的。可笑《午夜 》，一部低俗的娱乐片，其实没有什么，比中国古代大多数色情小说还要素净，但他们可以断定，大家不把这部片子当回事，但老M有特殊心结，此时一定懊丧不已。他错过的这十来分钟，说不定就是他永远的人生遗憾。如果人家告诉他这十分钟没有什么，他必不相信；如果人家告诉他这十分钟有什么，他必不满足——听说与目睹毕竟不可同日而语。更重要的是，他眼下打脱了牙齿往肚里吞：怎么好意思问？在正人君子面前他要问什么？\r\n\r\n这一天，走出礼堂的老M变得沉默了，平静了，是暴风雨过后的一片落叶，见了任何一个熟人都没有什么表情，据说回到房间里以后，也只是默默地看报纸，有一种悲壮和孤愤之态。\r\n\r\n老C在那里瞟了一眼，回来以后有点心软，说这最后一棒是不是算了？人家已经真生气了，我们的三戏周郎也够了，围师必阙，穷寇勿追，不如就此打住。\r\n\r\n其余三人说不行不行，还说你是个军旅学者，如何言而无信？如何临阵脱逃？\r\n\r\n老C说，军人就是头脑简单，不会骗人。\r\n\r\n但这只是他的谦虚。在他的一再请求免战之后，在旁人一再催逼之下，他最后的出招，其实是一颗高科技原子弹，几乎把大家吓了一跳。事情是这样：他冒充大会秘书处一位人员，给一位大学老校长打了电话，说你们是某省的领队吧？你们省里不是有个与会代表老M吗？老M同志不是前不久从新加坡访问归来吗？正巧，新加坡的一个华裔银行大亨来华访问，有心资助学术研究，在会谈中已几次提及。我方教育部长明天晚上在北京饭店宴请，特邀几位学者前去作陪，老M就是受邀者之一。他可带上自己的著作签名本，提前二十分钟赶到饭店，到时候与服务台的孙女士联系，如此等等。\r\n\r\n接电话的老校长，是老M的上级，某省与会代表的领队，虽然在以前的政治运动中有一些事情遭人诟病，但近年来最喜欢支持新潮学者，比如总是把老M的名字挂在嘴上，以示自己提携后学之功。他有时候甚至提携过了头，曾到处为一位青年副教授的抄袭辩白，说没有抄太多，只是抄了一点点。结果，所有不知情者也都知道了抄袭，气得抄袭者自己也大为恼怒，说屎不臭挑起臭，他娘的这个老家伙是何居心？老C正是看中了老校长的职位和身份，看中了他六十多岁的年纪，还有德高望重关心大局的长者形象，借他一张嘴来传话。老校长不知底细，接电话后立即以领队的身份下达通知，其过程顺理成章，正大光明，气势磅礴，无懈可击。老M眼下即使全身每一个细胞都充满警觉，也不可能疑到老校长的头上，如何防得了这一奇袭？何况一次结识国际巨商的机会，可能早已让他心潮起伏忘乎所以。他岂有幸免于难的可能？\r\n\r\n从开会地点到虚拟的教育部宴会，有漫长的道路，需要在客流高峰期间转乘几趟公交车，几乎穿过大半个北京城，对老M来说无异于一次残忍的折磨之旅。四君子根本用不着去等待和核查结果，已经在房间里畅饮庆功，一个个自比小诸葛，对各轮攻略一再回味和评点，像最终合力完成了一件精美的作品。老C的酒量很大，喝了整整一瓶二锅头，然后大言不惭地宣称，自己无中生有的本事原来十分了得，将来不打算搞宦官史了，要改行当作家，写一部有关太平天国的小说，可能是物尽其用的合适选择。\r\n\r\n如果老D没有记错，这一次聚谈时，老A还出口成章，总结出一番人生哲理，说智不在术而在道，老M接连入套无药可救，无非是利令智昏，名令智昏，权令智昏，色令智昏，可见名、利、权、色乃智之大敌。灭六国者，六国也。族秦者，秦也。为人无欲则刚，无欲则智，人骗其实皆为己骗。\r\n\r\n大家都觉得这是至理名言。\r\n\r\n深夜了，老M还没有回来。\r\n\r\n消息到第二天清晨才传来：可怜的老M，不幸的老M，竟然在北京饭店门前的大街上被一辆汽车撞伤，造成较为严重的脑震荡，已送入医院救治。不用说，他当时一定气昏了头，或者是饿昏了头和冻昏了头，眼中根本没有红绿灯，向巨大的黑影一头撞去。医生说，当时如果不是司机及时刹车，老M可能就英年夭折了。\r\n\r\n这是一个爆炸式的新闻。会议组织者立即开始追查电话恶作剧。老校长一大早就在宾馆走道里愤愤控诉：太不像话了，太不像话了，玩笑都开到我的头上来了。都是人民的知识分子嘛，都是党的知识分子嘛，怎么能做这样无聊的事？\r\n\r\n有些与会者也在走道上主持正义：肯定是有人嫉妒他！是故意陷害吧？故意打击报复吧？应该让公安局来严查！\r\n\r\n四君子再次相聚，关紧房门，面面相觑，吐着舌头，脸上已经没有窃笑，神色多少有些沉重和不安。电话追查不可能有什么结果，这用不着担心。但事情到了这一步，毕竟远远超出了他们的预料。四人中老A年纪最长，立即以老大哥的身份表示自省：“这事主要怪我，疾恶如恶，疾乱如乱，其实对这样的人何必较真？此事下不为例。”\r\n\r\n四君子临时俱乐部立即宣布解散。事情到此为止，天知地知你知我知，再不说了，再不说了。以后也得吸取教训，玩笑适可而止。他们相互叮嘱着，然后分头买了些水果和奶粉，去医院里看望了受伤的老友。当着老M的面，老B谈了一些对老M新作的读后感，说他读到某个精彩段落时，眼泪都快出来了。这种真情吐露让老D吓了一跳。老C说文人无性哪，有些人不好好写作，成天就是算计别人，成天就是窝里斗，实在可恶可恨得很。这种慷慨激昂也让老D吓了一跳。老D当然也说了些假话，比如一直仰慕老M的才情，比如将来要请老M去他的学校讲课什么的，不过刚说完又后悔——他有点担心，这些假话可能让一旁的A、B、C也暗自心惊和暗自琢磨。\r\n\r\n走出病房时，他们客气得有点不自然。你先走。你先走。你请。你请。他们在房门前别别扭扭，完全没有了几天来的随意。\r\n\r\n回到宾馆里，他们甚至史无前例地握手告别，握出了心神不宁的客套。老D问老A和老B是否需要皮鞋油，说完又觉得这种殷勤即是过分。\r\n\r\n事实上，从医院回来以后，他们绝口不再议论老M，连相互见面的次数也大为减少。一想到老M在病房里目光迷离、气若游丝以及手指颤抖的模样，他们大概都心有余悸和心存余愧，于是在大会选举阶段热情推荐老M，一定要把他选为新一届中国历史学会的常务理事，说无论从人品还是文品来看，他进入领导班子都是当之无愧的。如果不让这样优秀的中年学者选入领导班子，我们这个团体的生命力就大可怀疑了，我们改革开放的决心也大可怀疑了。他们甚至为此与反对者们争议不休，说老M的一点绯闻算什么，说老M做人小气一点算什么，看人一定要看大节，要看政治本质。\r\n\r\n从老M事后的满脸微笑来看，这些话已经传到他耳朵里去了。\r\n\r\n老M果然当上了常务理事。公布结果的时候，四君子怔了一下，互相看了一眼，似乎想说什么，又说不出来，只是鼓掌还算热烈。有意思的是，大约一个月后，老A的一封信，让老D差点要一头往墙上撞过去。什么叫震惊？什么叫崩溃或者空白？老D算是有了平生第一次体会。什么叫聪明反被聪明误或者什么叫强中更有强中手？老D也算是有了平生第一次真正的认识。老A来信的大意是：老M的脑震荡完全子虚乌有，不过是串通一个医生朋友，演出了一出苦肉计，在临近选举的紧要关头，不但赚得了暗算者的恻隐，还赚得了大多数人的同情。这真是四只小螳螂扑蝉，岂知大大的黄雀在后！\r\n\r\n平时自以为聪明的老D，此时真是要愧死。想起老A以前说过的什么术什么道，还莫明其妙地大笑。\r\n\r\n多少年后，天各一方，老D很少看到往日熟悉的面孔，相见时难别亦难，真是让人黯然神伤。就算想起老M，想起老M当年守着几张旧会议餐券的悭吝，现在想来也没有什么，倒有几分朴实与憨直让人觉得有趣。这种忆旧的温暖感，也许是一种心理老态吧。他常常这样想。\r\n\r\n他还在治宦官史，有时读到一些闲书，包括一些记叙史学研究进程的史学。他知道，文科院校这些年培养出了太多的研究专家，这么多专家都要写文章，都要写书，包括写史书，于是八十年代的一些事已经过早地匆匆入史，甚至可能在有些人那里争相放大，直到每一件事都被众多论家之嘴咀嚼得索然寡味，直到每一件事都众说纷纭于是各种幻影不再能叠合出共识，也不再能还原出真相。很多书都说到那次北京的大会。有一个版本的史学年鉴是这样说的：那是一次资产阶级自由化思潮泛滥的大会，是错误观念在特定气候下大量出笼的大会，造成了极其恶劣的社会影响，应引为深刻的教训。另一个版本的史学年鉴则认为：那是一次思想解放突破禁区拨乱反正的大会，是一次标志着新时期史学研究春天到来的大会，广大学者怀着对改革开放的高度责任感，在会上对一切陈腐的旧观念、旧思路、旧体制、旧方法、旧文风展开了猛烈的抨击，对于当代中国史学完全具有里程碑的意义。\r\n\r\n说实话，截然不同的说法，可能各有所依，但都让老D有点茫然。这些书都提到了A、B、C等人的有关著述，还有他们在那次大会上的发言，但老D脑子里印象最深和挥之不去的谜团却无一字提及，就像从来没有发生过。他亲历和目击的一切，一旦退到时光流逝的远方，就成了微不足道的一颗灰尘，湮没在一张远景巨照之中。\r\n\r\n他知道，老M已经移居国外多年了，至今渺无踪迹音讯全无，而老C已患癌症去世了，老B已落了个老年痴呆症。在一个小小悬案未决之际，证人席上已经空空如也，只剩下老A——据说他还活得生龙活虎，每天能坚持长跑三千米。于是，老D拿定主意给老A打了一个电话，问他近来是不是还在长跑，问他是否还记得那年的冬天，比方说他冒充香港记者拿老M开心的往事。\r\n\r\n对方停了停，问有这样的事吗？你是不是记错了？我怎么一点印象都没有？\r\n\r\n老D愣住了。\r\n\r\n你当初不是还写过一封信给我？\r\n\r\n我给你写过那样的信吗？\r\n\r\n你不记得老M的脑震荡？\r\n\r\n脑震荡？老M？这个名字听起来怎么有点耳熟？\r\n\r\n他们通话的二十分钟，最后只能让老D确认：对方记忆里的各种细节已经消融，只有新时期知识界明媚春天的远景。\r\n\r\n老D有点奇怪：是我记错了？还是他记错了？或者那一年冬天在他们之间确实没有发生过什么？也许，老D需要赶快飞去老A所在的城市，敲开老A的房门，检查一下老A的身份证和户口簿，然后紧紧盯住他的双眼，看那里面是否有可疑的掠影一闪。', 'upload/74s58PICRkT_1024.jpg', 4, 1),
(58, 5, '2018-11-26 20:28:00', '啦啦啦', '甜啦啦', 'res/static/images/item.png', 0, 0),
(59, 6, '2018-11-26 20:30:35', '啦啦啦', '1234566798', 'upload/0006019052995948_s.jpg', 0, 0),
(61, 7, '2018-11-28 15:03:00', '这是带有时间功能的文章', '这是带有时间功能的文章', 'upload/29y58PICaAz_1024.jpg', 3, 0),
(62, 8, '2018-11-27 08:04:00', '这是自定义时间功能的文章', '这是自定义时间功能的文章', 'upload/1_162252_8.jpg', 13, 3);

-- --------------------------------------------------------

--
-- 表的结构 `talk`
--

CREATE TABLE IF NOT EXISTS `talk` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `post_id` int(11) NOT NULL COMMENT '文章ID',
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `pic` varchar(200) NOT NULL COMMENT '用户头像',
  `text` varchar(2000) NOT NULL COMMENT '评论',
  `like` int(11) NOT NULL COMMENT '点赞量'
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `talk`
--

INSERT INTO `talk` (`id`, `post_id`, `name`, `pic`, `text`, `like`) VALUES
(1, 13, '一片空白', 'res/static/images/info-img.png', '父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌。', 0),
(2, 15, '漆黑一片', 'res/static/images/info-img.png', '浮世万千，吾爱有三，一为日，二为月，三为卿，日为朝，月为暮，卿为朝朝暮暮。', 2),
(3, 14, '孤独患者', 'res/static/images/info-img.png', 'Not you found us, we found you. 不是你找到我们，而是我们找到你。', 9),
(4, 13, '孤独患者', 'res/static/images/info-img.png', '123456789', 0),
(5, 14, '孤独患者', 'res/static/images/info-img.png', '每个人都有自己的不幸，也许是分手、死亡、意外，不论如何，你都会因此告别过去，从而变成另外的样子。', 9),
(6, 14, '孤独患者', 'res/static/images/info-img.png', 'I’m Venom and you are mine.我是毒液，而你是我的。', 9),
(7, 14, '慵懒', 'res/static/images/info-img.png', '放下，这个时候举手很丢人的，给我放下，放下！', 10),
(8, 15, '孤独患者', 'res/static/images/info-img.png', '这是15的评论', 2),
(9, 15, '孤独患者', 'res/static/images/info-img.png', '吾爱有三', 3),
(10, 12, '孤独患者', 'res/static/images/info-img.png', '我是现在2018标题的评论', 0),
(11, 15, '孤独患者', 'res/static/images/info-img.png', 'I love three things in the world,sun ,moon ,and you，sun for morning ,moon for night ,and you forever. ----出自《暮光之城》', 2),
(12, 53, '孤独患者', 'res/static/images/info-img.png', '喜欢这篇文章', 1),
(13, 56, '孤独患者', 'res/static/images/info-img.png', '那点痛算什么', 0),
(20, 61, '小白兔', 'img/timg.gif', '小了白了兔', 0),
(15, 56, '孤独患者', 'res/static/images/info-img.png', '你好', 0),
(21, 60, '小白兔', 'img/timg.gif', '你好啊', 0),
(18, 62, '小白兔', 'img/timg.gif', '实现自定义时间', 1),
(19, 62, '小白兔', 'img/timg.gif', '你好', 1),
(22, 62, '小华子', 'img/timg.jpg', 'nihao', 0);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `user` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `name` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL COMMENT '电话',
  `pic` varchar(20) NOT NULL COMMENT '头像',
  `level` int(11) NOT NULL COMMENT '级别'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `name`, `tel`, `pic`, `level`) VALUES
(1, '染染', '1234@gly', '大佬染染', '17012345678', 'img/timg (2).jpg', 1),
(2, '小亮', '1234@xl', '小小亮', '17112345678', 'img/timg (1).jpg', 2),
(3, '小华', '1234@xh', '小华子', '17212345678', 'img/timg.jpg', 2),
(4, '小白', '1234@xb', '小白兔', '17312345678', 'img/timg.gif', 2),
(5, '小李', '1234@xl', '小松鼠殿下', '15123456781', 'img/timg(6).jpg', 2),
(6, '小松', '1234@xs', '小松松', '15112345678', 'img/user.png', 2),
(7, '小娜', '1234@xn', '小娜娜', '15112345678', 'img/user.png', 2),
(8, '小楠', '1234@xn', '楠楠啊', '1511234566', 'img/timg (3).jpg', 2),
(9, '小花', '12345@xh', '小花花', '15012345678', 'img/user.png', 2),
(10, '球球', '1234@qq', '可爱的球球', '1511234567', 'img/user.png', 2),
(11, '小可', '1234@xk', '小可爱', '15112345678', 'img/user.png', 2),
(12, '小梦', '1234@xm', '九亿少女梦', '15112345678', 'img/user.png', 2),
(13, '常旭', '1234@cx', '常小旭', '15192345678', 'img/timg(8).jpg', 2),
(14, '徐宝欢', '12345@xbh', '大钊', '15112345678', 'img/user.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talk`
--
ALTER TABLE `talk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `talk`
--
ALTER TABLE `talk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
