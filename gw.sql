-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-07-13 05:03:39
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gw`
--
CREATE DATABASE IF NOT EXISTS `gw` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gw`;

-- --------------------------------------------------------

--
-- 表的结构 `assess`
--

DROP TABLE IF EXISTS `assess`;
CREATE TABLE IF NOT EXISTS `assess` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `assess`
--

INSERT INTO `assess` (`id`, `pic`, `title`, `subtitle`, `user_img`, `username`, `num`) VALUES
(1, 'https://img2.epetbar.com/nowater/2018-03/22/18/e90dc5c9a1a13cfd36e09d074fc3f205.png?x-oss-process=style/cut&$1=250&$2=125', '不一样的选择——美毛就用何首乌', '首先感谢e宠体验馆这个平台，不仅给了购买毛孩子们的各种产品的一个可靠参考，也让我们这些有幸成为体验师', 'https://img1.epetbar.com/2019-04/08/09/a3ec8eb9fc2d8cdd7f25fddd7e021f58.jpg?x-oss-process=style/waterfall&$1=50', '朱朱妈', 2),
(2, 'https://img1.epetbar.com/2017-10/28/17/77c27295f5749ed52cc1c6facc0d7024.jpg?x-oss-process=style/cut&$1=250&$2=125', '舒适如床——solvit豪华版宠物车载吊床', NULL, 'https://img1.epetbar.com/2017-09/22/11/5cde629d04cd4f86acf11c5dcb698df2.jpg?x-oss-process=style/waterfall&$1=50', '奥利奥酱', 3),
(3, 'https://img1.epetbar.com/2018-08/20/16/506ea86e90a48083e19bbe4058257097.jpg?x-oss-process=style/cut&$1=250&$2=125', '“吉辛鹿角”快到碗里来', '了解“吉辛鹿角” 这次体验的是成都公司“吉辛”下的一款磨牙鹿角，刚开始我也有', 'https://img1.epetbar.com/2018-06/01/21/8808b325eb4d2584bfc4f31377cedd97.jpg?x-oss-process=style/waterfall&$1=50', '土匪萨摩耶', 39),
(4, 'https://img1.epetbar.com/2019-02/15/23/502f04b91dcd33e62c1de3d5e02bd1c0.png?x-oss-process=style/cut&$1=250&$2=125', '时尚又可靠——宜德士外携包', '跟自家毛孩子一起出门是件非常幸福的事情，仿佛吹', 'https://img1.epetbar.com/2018-11/09/04/e384cd11ae8a6c9c8861b40f00403a87.jpg?x-oss-process=style/waterfall&$1=50', '虎大陛下', 13),
(5, 'https://img1.epetbar.com/2018-06/24/13/be1914d736186dafbf5deae868b2d27e.png?x-oss-process=style/cut&$1=250&$2=125', 'GEX循环式饮水机，喝出健康好身体', '众所周知，水对于任何生物都是不可或缺。对狗狗亦是如此。    一只成年汪的体重占比60%以上', 'https://img1.epetbar.com/2018-11/21/16/32a04340912ac08076baa593e1f18493.jpg?x-oss-process=style/waterfall&$1=50', '曹小晴', 11),
(6, 'https://img2.epetbar.com/nowater/2019-01/21/09/124f9d90a6e152ee2e692db429136273.png?x-oss-process=style/cut&$1=250&$2=125', '知否知否，捣蛋鬼带墙厕所值得拥有', '大家好，今天来给铲屎官介绍的一个家中必不可少的东西——本款狗狗厕所。', 'https://img1.epetbar.com/2019-05/19/10/24fb3f3d85ea4aabaab99cc8a73610c9.jpg?x-oss-process=style/waterfall&$1=50', '主人_2r5qRkt6t2', 6),
(7, 'https://img1.epetbar.com/2018-05/23/19/8d6eda91ddb3f25b37f2db572f8acfab.jpg?x-oss-process=style/cut&$1=250&$2=125', '一床在手，天下无忧——宜德士宠物行军床', '【商品产地】：中国【适用对象】：猫，狗通用【商品规格】：S号：60＊42＊17cm', 'https://img1.epetbar.com/2018-08/03/20/a828f3e859a137353c02f2639ff3a9a7.jpg?x-oss-process=style/waterfall&$1=50', '菲菲小宝宝 泰迪', 3),
(8, 'https://img1.epetbar.com/2018-04/12/12/87176eca472fb2f9782001ab0ce703dc.jpg?x-oss-process=style/cut&$1=250&$2=125', '吃”红狗“     让爱宠晋身“网红”', '体验师：格格   芳龄：5岁  人生方向：追逐网红的路上越走越远 体验品：美国 Red Dog（红狗', 'https://img1.epetbar.com/2019-02/10/20/cadaf99db06f21cd8973cfdf48515488.jpg?x-oss-process=style/waterfall&$1=50', '吕格格', 4),
(9, 'https://img2.epetbar.com/nowater/2018-07/16/09/182ae34a2efc78b4f9179d96f4dcd213.png?x-oss-process=style/cut&$1=250&$2=125', '佛系洗澡 ，体验！', '	产品品牌 宠友友\r\n	名称     二合一刷盒\r\n	材料     PP料\r\n	尺寸    ', 'https://img1.epetbar.com/2018-03/23/20/3832fbefc6988da272d0cac89a0326e9.jpg?x-oss-process=style/waterfall&$1=50', '阿部呀', 2),
(10, 'https://img1.epetbar.com/2018-05/20/16/eaca7545484301e6c939a7361426560a.jpg?x-oss-process=style/cut&$1=250&$2=125', '不争气的小玄Mini，你让我拿什么来爱你？', '熟悉盟主的小伙伴大概都知道，我的报告一般都很轻松愉快，对于大部分产品都或喜爱或宽容。对于一名体验师来', 'https://img1.epetbar.com/2017-05/12/4/df64b4e0188b0a7b3a8c0ef208b8189a.jpg?x-oss-process=style/waterfall&$1=50', '荒腔走板王小君', 9),
(11, 'https://img2.epetbar.com/nowater/2018-02/06/13/c74c8af8aefa6a24150022e0db38fef8.jpg?x-oss-process=style/cut&$1=250&$2=125', '国产粮的骄傲 回归野性 重塑活力', '说起国产的狗粮，很多家长闻之色变，抗拒一切国产狗粮品牌甚至原料来源于国内的进口狗粮。说实话国产粮目前', 'https://img1.epetbar.com/2016-04/26/06/6a048b1d46320132d20a16937d657204.png?x-oss-process=style/waterfall&$1=50', '付小秋', 36),
(12, 'https://img2.epetbar.com/nowater/2018-03/26/11/8aac86d8877b3abf99626a9c447fe81d.png?x-oss-process=style/cut&$1=250&$2=125', '告别洗剪吹，就要嘭嘭嘭——乐芳希施洗护套装', NULL, 'https://img1.epetbar.com/2017-06/15/18/ffc688c58ed2ae4b25c059e512bd7ffa.jpg?x-oss-process=style/waterfall&$1=50', '肉丸宝', 12),
(13, 'https://img2.epetbar.com/nowater/2018-03/21/17/412af92b40b534fcb0486c7260cfe213.png?x-oss-process=style/cut&$1=250&$2=125', '百利本能——唯狗粮与爱不可辜负', NULL, 'https://img1.epetbar.com/2018-11/12/20/3615abebc4854723666f4695ae1278a8.jpg?x-oss-process=style/waterfall&$1=50', 'ciao0402', 6),
(14, 'https://img1.epetbar.com/2018-06/02/23/0ab3dba58a2ec9277045afe026037495.jpg?x-oss-process=style/cut&$1=250&$2=125', 'Pet House，香香伴我入眠', 'Hello，我是你们的老朋友，盟主。又到了一周一会的体验时间，这次麻麻给我领取的试用品是来自美国Pe', 'https://img1.epetbar.com/2017-05/12/4/df64b4e0188b0a7b3a8c0ef208b8189a.jpg?x-oss-process=style/waterfall&$1=50', '荒腔走板王小君', 4),
(15, 'https://img1.epetbar.com/2018-06/05/12/5753761d8f3d3c12035c038e8db594ea.jpg?x-oss-process=style/cut&$1=250&$2=125', '平凡生活里的温暖—AICC抽屉式食盆', 'hellohi打一声招呼 进入主题(◍•ᴗ•◍)', 'https://img1.epetbar.com/2017-05/01/22/878606202bf22e38b7d74781da9a8324.jpg?x-oss-process=style/waterfall&$1=50', '杳儿laura', 7),
(16, 'https://img1.epetbar.com/2018-06/06/20/78eb546c2f7c03685f9f1d3c399a24cd.png?x-oss-process=style/cut&$1=250&$2=125', 'ANCOL在手，遛狗不愁', ' “遛狗”，是每位铲屎官的必备日常生活之一。    想必不少铲屎官也有纠结过“到底要不要给爱宠', 'https://img1.epetbar.com/2018-11/21/16/32a04340912ac08076baa593e1f18493.jpg?x-oss-process=style/waterfall&$1=50', '曹小晴', 9),
(17, 'https://img1.epetbar.com/2018-06/07/13/1eca9c40fa548b14adf5eb23311e205a.jpg?x-oss-process=style/cut&$1=250&$2=125', '简斯吹水机，吹干毛发so  easy~', '为kiki洗澡是一件既有趣又烦心的事儿~', 'https://img1.epetbar.com/2017-05/27/18/4b69071eb3cf3494c39f6092bbda9442.jpg?x-oss-process=style/waterfall&$1=50', 'ki优咪', 18),
(18, 'https://img2.epetbar.com/nowater/2018-03/26/10/46f21d31e90b22bba209813e74028939.png?x-oss-process=style/cut&$1=250&$2=125', '让水成为享受，让洗浴更加舒适', NULL, 'https://img1.epetbar.com/2018-11/12/20/3615abebc4854723666f4695ae1278a8.jpg?x-oss-process=style/waterfall&$1=50', 'ciao0402', 5),
(19, 'https://img2.epetbar.com/nowater/2018-03/21/14/40b21cb16bbc6d0c576764a3a0f861b5.png?x-oss-process=style/cut&$1=250&$2=125', '爱上动物造型的优卡粮，巧用超大休普碗！', NULL, 'https://img1.epetbar.com/2017-08/22/13/00d5403e50119109b9267df5a65d105e.jpg?x-oss-process=style/waterfall&$1=50', '皮蛋土豆', 8),
(20, 'https://img2.epetbar.com/nowater/2018-03/22/11/b8d5aa093a152be87acb8c2679051f65.png?x-oss-process=style/cut&$1=250&$2=125', '特瑞仕披萨——唯美食不可辜负', '我是宇宙无敌女王，能吃能睡的夏天宝宝！ \r\n\r\n感谢易宠商城给了我这次试吃机会，让我能试吃这么好吃的', 'https://img1.epetbar.com/2018-09/07/03/cf4600acdf5d87877f72327f183eadd6.jpg?x-oss-process=style/waterfall&$1=50', '夏咩咩', 6),
(21, 'https://img2.epetbar.com/nowater/2018-03/02/14/0755a9ad98074983b8dff76626cb8e99.png?x-oss-process=style/cut&$1=250&$2=125', '咪路遇到Lucy	椰子保湿免洗调理喷雾秒变小王子', 'get一款“香甜”的宠物浴液，童鞋们应该看到了，咪路已经杀马特了有木有！还有传说中的温蒂，压根没露面', 'https://img1.epetbar.com/2017-03/09/12/08ae430bff4b690d48857fcc6d79c9fd.jpg?x-oss-process=style/waterfall&$1=50', 'Sara蓝星宠奴组委会', 2),
(22, 'https://img1.epetbar.com/2018-06/10/13/c3086abd0d8e43f7d606ced0fba96515.jpg?x-oss-process=style/cut&$1=250&$2=125', '满满新西兰天然牧场的鲜美骨肉香', '“麻~零食可以来一波不？”被两只用无比认真且渴望的大眼睛望着，铲屎官只能赶紧行动起来，为两只寻觅了超', 'https://img1.epetbar.com/2019-04/08/09/a3ec8eb9fc2d8cdd7f25fddd7e021f58.jpg?x-oss-process=style/waterfall&$1=50', '朱朱妈', 2),
(23, 'https://img1.epetbar.com/2017-12/22/10/cba7ec0fd224d6c5083bd09c39bee1b1.jpg?x-oss-process=style/cut&$1=250&$2=125', 'PRATIKO胸背——炫酷你的遛狗生涯', '1.可以让狗狗在可控范围内活动，确保他们的安全。', 'https://img1.epetbar.com/2018-11/09/04/e384cd11ae8a6c9c8861b40f00403a87.jpg?x-oss-process=style/waterfall&$1=50', '虎大陛下', 4),
(24, 'https://img1.epetbar.com/2017-12/26/18/b2152b57a973b9e8b226dd15225ee082.jpg?x-oss-process=style/cut&$1=250&$2=125', '牙口好吃嚒嚒香', '我是小比熊茄子，今年3岁10个月，这次妈妈给我在Ｅ宠体验馆领的体验商品是～特瑞仕（牛肉味）口腔啫喱。', 'https://img1.epetbar.com/2017-08/23/16/dc5ff3ae4d99fbc604ddd5f2689974cf.jpg?x-oss-process=style/waterfall&$1=50', '茄子eggplant', 5);

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `pid` int(200) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `tname` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `count` int(20) DEFAULT NULL,
  `uid` int(200) NOT NULL,
  `id` int(200) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`pid`, `pic`, `price`, `tname`, `count`, `uid`, `id`) VALUES
(21, 'http://127.0.0.1:3000/imgs/clear1.jpg', '299.21', '加拿大原装进口 Opawz 宠物护毛素 动物蛋白精华霜 1000ml        ', 1, 1, 37),
(23, 'http://127.0.0.1:3000/imgs/clear3.jpg', '1.60', '雷米高 赛级号犬用奶糕粮 60g       ', 1, 1, 38),
(29, 'http://127.0.0.1:3000/imgs/food1.jpg', '388.00', ' 醇粹Purich 18个月以下 大型犬奶糕及幼犬粮 15KG         ', 1, 1, 39);

-- --------------------------------------------------------

--
-- 表的结构 `detail_list`
--

DROP TABLE IF EXISTS `detail_list`;
CREATE TABLE IF NOT EXISTS `detail_list` (
  `lid` int(1) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subtit` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `price1` varchar(200) NOT NULL,
  `price2` varchar(200) NOT NULL,
  `sale` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `detail_list`
--

INSERT INTO `detail_list` (`lid`, `pic`, `title`, `subtit`, `price1`, `price2`, `sale`, `comment`) VALUES
(19, 'http://127.0.0.1:3000/imgs/dress7.jpg', ' 2018新款Touchdog 宠物童趣小猪卫衣 深蓝色 M号         ', '围巾可拆卸 厚实面料 温暖舒适 细致车工', '148.00', '121.00', 48, 36),
(22, 'http://127.0.0.1:3000/imgs/clear2.jpg', ' 加拿大原装进口 Opawz 宠物护毛素 植物蛋白精华液 200ml        ', '宠物护毛素 美容院spa产品', '436.00', '139.22', 10, 2),
(15, 'http://127.0.0.1:3000/imgs/dress3.jpg', ' 妮克威尔 七彩条纹POLO上衣 彩条蓝 M        ', '立体剪裁 修身防风', '69.60', '58.00', 11, 2),
(35, 'http://127.0.0.1:3000/imgs/open1(1).jpg', ' 小鲜肉泰迪贵宾成犬粮 2.5kg', '均衡营养 改善体质 健康皮毛 强壮骨骼', '149.00', '55.00', 23, 5),
(14, 'http://127.0.0.1:3000/imgs/dress2.jpg', ' 新款 BLUE PORT 英伦格子连衣裙        ', '羊绒羊毛领 羊毛呢格裙 卫衣棉上衣 学院风娃娃领', '175.00', '96.20', 39, 11),
(40, 'http://127.0.0.1:3000/imgs/open1(6).jpg', ' 无谷鲜肉小方全价全期犬主食湿粮 鸭肉+牛肉+胡萝卜 190g', '营养肉泥 呵护泌尿道健康 易消化吸收', '14.80', '12.00', 56, 22),
(37, 'http://127.0.0.1:3000/imgs/open1(3).jpg', ' 泰迪贵宾全期犬粮 2.5kg', '均衡营养 改善体质 健康皮毛 强壮骨骼', '159.00', '66.00', 75, 25),
(24, 'http://127.0.0.1:3000/imgs/clear4.jpg', ' 澳大利亚TROY 宠物化毛膏 100g        ', '毛球克星 添加麦芽和鱼肝油 促进毛球排出 防止毛球形成', '139.00', '48.80', 5, 1),
(39, 'http://127.0.0.1:3000/imgs/open1(5).jpg', ' 火鸡蓝莓幼犬粮 1.5kg', '美味农庄天然粮系列 全面助长 强力免疫 ', '115.00', '48.00', 25, 3),
(36, 'http://127.0.0.1:3000/imgs/open1(2).jpg', ' 真肉美味粮 那不勒斯芝士幼犬粮 1.6kg', '补充能量 促进消化 强健骨骼', '158.00', '65.00', 48, 23),
(18, 'http://127.0.0.1:3000/imgs/dress6.jpg', ' 美国奥柯特alcott 高反光宠物围巾 荧光黄S号脖围25-28cm        ', '带魔术贴 佩戴贴合 反光设计 夜间安全', '50.00', '39.00', 31, 26),
(6, 'http://127.0.0.1:3000/imgs/1 (6).jpg', ' 蒙贝 牛肉胡萝卜粒 180g        ', '肉蔬混搭 营养美味 草原牛肉 强肌健体 ', '31', '26', 278, 45),
(3, 'http://127.0.0.1:3000/imgs/1 (3).jpg', ' 路斯 健康优+组合 翅膀鸡胸肉400g           ', '新鲜食材 营养低脂  宠界优选好零食', '18', '14', 146, 50),
(5, 'http://127.0.0.1:3000/imgs/1 (5).jpg', ' 路斯 奶酪牛肉棒狗零食180g        ', '干燥有嚼劲 磨牙解馋 营养美味 训练奖励', '25', '19', 61, 20),
(7, 'http://127.0.0.1:3000/imgs/2(1).jpg', ' 路斯 手工坊系列 牛肉火腿肠 400g         ', '优质鸡牛肉 营养低脂 宠界优选好零食', '18', '14', 109, 20),
(29, 'http://127.0.0.1:3000/imgs/food1.jpg', ' 醇粹Purich 18个月以下 大型犬奶糕及幼犬粮 15KG         ', '合理膳食  呵护肠胃  强壮骨骼 促进发育', '465.60', '388.00', 84, 26),
(4, 'http://127.0.0.1:3000/imgs/1 (4).jpg', ' 顽皮Wanpy 奶酪火腿圆片狗零食 400g        ', '低温风干 原质原味 醇香美味 一起happy       ', '39', '30', 78, 12),
(1, 'http://127.0.0.1:3000/imgs/1(1).jpg', ' 顽皮Wanpy 犬食 鸡肉丝 400g               ', '健齿减肥 补充营养', '48', '40', 167, 23),
(2, 'http://127.0.0.1:3000/imgs/1 (2).jpg', ' 顽皮Wanpy犬用鸡肉鳕鱼三明治30g        ', '低温风干 锁住营养 鳕鱼夹肉 一口鱼一口肉', '6', '5', 80, 30),
(13, 'http://127.0.0.1:3000/imgs/dress1.jpg', '2018年新款 宠趣 青春校园套裙        ', '青春学院风 甜美可爱 厚实温暖 活泼时尚 ', '39.80', '22.75', 90, 15),
(16, 'http://127.0.0.1:3000/imgs/dress4.jpg', '2018新款Touchdog 山系双面风衣 蓝色+黄色 XL号        ', '可双面穿 轻微防水 哑光简约 细致车工', '136.00', '102.00', 59, 20),
(20, 'http://127.0.0.1:3000/imgs/dress8.jpg', 'Petcircle宠物圈 大白队长变身装 S        ', '宠物四脚衣 高档珊瑚绒 柔软亲肤 保暖性强', '36.00', '25.50', 10, 1),
(33, 'http://127.0.0.1:3000/imgs/food5.jpg', 'Purich 皮肤毛发呵护配方成犬粮 500g*3袋', '美毛健肤 低温工艺 丰盈亮泽 缓解掉毛', '98.00', '82.00', 45, 28),
(30, 'http://127.0.0.1:3000/imgs/food2.jpg', 'Purich 金标中大型犬幼犬粮  15kg', '合理膳食  呵护肠胃  强壮骨骼 促进发育', '597.60', '498.00', 15, 20),
(32, 'http://127.0.0.1:3000/imgs/food4.jpg', 'Purich 金标系列 皮肤呵护成犬粮  2kg ', '低温烘烤 风味独特 锁住营养  全面健康', '108.00', '92.00', 46, 5),
(21, 'http://127.0.0.1:3000/imgs/clear1.jpg', '加拿大原装进口 Opawz 宠物护毛素 动物蛋白精华霜 1000ml        ', '宠物护毛素 美容院spa产品', '761.20', '299.21', 10, 2),
(25, 'http://127.0.0.1:3000/imgs/clear5.jpg', '多啦小萌 宠物/环境除味剂量贩装 1.08L        ', '异味分解 无化学成分 无刺激无残留 免清洗', '99.00', '35.64', 63, 5),
(9, 'http://127.0.0.1:3000/imgs/2(3).jpg', '多格漫 狗狗鸡肉火腿肠 4支/60g        ', '精选鸡肉 高蛋白 低脂肪 单支独立包装 老犬幼犬适用', '42', '32', 109, 36),
(10, 'http://127.0.0.1:3000/imgs/2(4).jpg', '多格漫旗下派滋露  爱犬鱼肉火腿肠狗零食 8根  120g          ', '美味鲜香 补钙健骨 爱不释口', '12', '9', 109, 5),
(28, 'http://127.0.0.1:3000/imgs/clear8.jpg', '小宠 皮毛护理洗剂 薰衣草香型 200ml        ', '缓解皮屑/毛发干燥等症状', '95.00', '34.00', 52, 32),
(38, 'http://127.0.0.1:3000/imgs/open1(4).jpg', '开饭乐 真肉美味粮 鳕鱼片牛排成犬粮10kg', '增强体质 维护肠道健康 健肤美毛 减轻便臭', '668.00', '279.00', 25, 3),
(8, 'http://127.0.0.1:3000/imgs/2(2).jpg', '日本多格漫 狗狗鸡肉火腿肠 20支/300g        ', '精选鸡肉 高蛋白 低脂肪 单支独立包装 老犬幼犬适用', '45', '36', 99, 17),
(27, 'http://127.0.0.1:3000/imgs/clear7.jpg', '澳大利亚原装进口 Billy+Margot 牛肉蓝莓配方狗零食 100g        ', '增加趣味 训练奖励 有助于消化系统健康 促进皮毛健康', '49.00', '15.98', 89, 53),
(12, 'http://127.0.0.1:3000/imgs/2(6).jpg', '益和 蒸煮包系列 酥骨鸡腿宠物零食 1个        ', '', '12', '7', 29, 3),
(26, 'http://127.0.0.1:3000/imgs/clear6.jpg', '美国原装进口 天然奇迹Natures Miracle 猫用消毒清洁祛污除臭喷剂 32oz/946ml', '消毒抑菌 用于环境消毒 纺织物品消毒 去除宠物异味', '146.00', '46.70', 2, 0),
(17, 'http://127.0.0.1:3000/imgs/dress5.jpg', '美国原装进口RW拉夫威尔  艾拉雨衣 岩石红XL        ', '马甲样式 方便穿脱  防风防雨 覆盖面积大 胸围调节91-107cm', '766.00', '629.00', 41, 20),
(11, 'http://127.0.0.1:3000/imgs/2(5).jpg', '萌萌酷 真空水煮系列宠物零食 金枪鱼 40g        ', '美味营养 补钙健骨 肉质细腻 呵护视力健康', '7', '6', 106, 30),
(31, 'http://127.0.0.1:3000/imgs/food3.jpg', '醇粹Purich 1-7岁 小型犬成犬粮 1.5KG', '合理膳食 助长发育 呵护肠胃 强健体格', '90.00', '65.00', 12, 1),
(34, 'http://127.0.0.1:3000/imgs/food6.jpg', '醇粹Purich 1-7岁 贵宾犬成犬粮 3KG', '针对中国养宠环境 膳食合理 美毛增艳', '160.00', '109.00', 84, 35),
(23, 'http://127.0.0.1:3000/imgs/clear3.jpg', '雷米高 赛级号犬用奶糕粮 60g       ', '均衡发育 增毛明目 草本汉方', '5.00', '1.60', 5, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gw_user`
--

DROP TABLE IF EXISTS `gw_user`;
CREATE TABLE IF NOT EXISTS `gw_user` (
  `uid` int(20) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `upwd` varchar(200) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `phone` varchar(200) NOT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `gw_user`
--

INSERT INTO `gw_user` (`uid`, `uname`, `upwd`, `address`, `phone`) VALUES
(1, 'yayaya', '123456', '河南省', '15963202130');

-- --------------------------------------------------------

--
-- 表的结构 `recommend`
--

DROP TABLE IF EXISTS `recommend`;
CREATE TABLE IF NOT EXISTS `recommend` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pic` varchar(200) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `subtitle` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_img` varchar(200) DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `recommend`
--

INSERT INTO `recommend` (`id`, `pic`, `title`, `subtitle`, `user_img`, `username`, `num`) VALUES
(1, 'https://img1.epetbar.com/2019-07/05/16/f28a3f980b9e799cf66051677e43f3c6.jpg?x-oss-process=style/cut&$1=250&$2=125', '养宠经验主题领取规则', NULL, 'https://img1.epetbar.com/2019-07/05/15/4bbeccb16ced574db5b3fc4d626503a7.png?x-oss-process=style/waterfall&$1=50', '小萌书官方账号', 25),
(2, 'https://img1.epetbar.com/2019-04/23/21/1187386ed738ea6dc939fb32ae06e0fd.jpg?x-oss-process=style/cut&$1=250&$2=125', '来一场说走就走的旅行---宁波玻璃栈道之行', '旅行是一件幸福的事比旅行还幸福的莫过于带着心爱的小花一起去旅行世界这么大，我想带小花去看看…我希望我', 'https://img1.epetbar.com/2019-06/23/15/3bf0e1db9b0b2bf9483685f0f7e54517.jpg?x-oss-process=style/waterfall&$1=50', '戚花花儿', 9),
(3, 'https://img1.epetbar.com/2019-01/25/19/e2f21f8993e8073ecacff82fd9d1f85f.jpg?x-oss-process=style/cut&$1=250&$2=125', '我家京巴犬“防”脱后勤篇', '家里养了只小毛怪，掉毛成了铲屎官日常烦恼之一。很多家长都会在毛孩子自身找问题、解决问题，但殊不', 'https://img1.epetbar.com/2018-11/09/04/e384cd11ae8a6c9c8861b40f00403a87.jpg?x-oss-process=style/waterfall&$1=50', '虎大陛下', 7),
(4, 'https://img1.epetbar.com/2019-04/06/19/0c0b593d89750560bf959bb225943dde.jpg?x-oss-process=style/cut&$1=250&$2=125', '灰熊成长日记之零食这件“小”事', '食其实是养宠生活中必不可少的一部分（而不是像有些人认为的是意见可有可无的事情），作为人与宠物交', 'https://img1.epetbar.com/2019-06/24/16/1ad85ff4ec0fccc4bcfc779cf3f35ada.jpg?x-oss-process=style/waterfall&$1=50', '小夏_', 11),
(5, 'https://img1.epetbar.com/2019-01/17/15/cfe0514ce35089c895867317476125b0.jpg?x-oss-process=style/cut&$1=250&$2=125', '【凳麻有话说】——“碰瓷儿基”的社交小妙招', '先隆重介绍一下板凳这个小赖皮。   为什么叫她“碰瓷儿基”呢？   对于狗主人来说是一摸就躺，', 'https://img1.epetbar.com/2018-11/21/16/32a04340912ac08076baa593e1f18493.jpg?x-oss-process=style/waterfall&$1=50', '曹小晴', 7),
(6, 'https://img1.epetbar.com/2019-04/22/10/f9e1ba2649efa54205bc20396f5fae27.jpg?x-oss-process=style/cut&$1=250&$2=125		', '小米修驱虫记---体外驱虫', '春暖花开，夏天马上就要到啦~各位家长是不是已经准备好带着狗子们出门耍啦~提醒各位家长，一定要按时驱虫', 'https://img1.epetbar.com/2019-06/24/18/a807fa957985dc7665a139de45013961.jpg?x-oss-process=style/waterfall&$1=50', '暴走的鱼儿', 10),
(7, 'https://img1.epetbar.com/2019-02/21/14/53ba404465431b3f6830fef1f3759462.jpg?x-oss-process=style/cut&$1=250&$2=125', '带着狗狗，皑皑白雪，踏雪出行', '等啊等，2018年的初雪来的格外的晚。    凳麻只好带板凳去周边赏雪啦！   【凳麻有话说', 'https://img1.epetbar.com/2018-11/21/16/32a04340912ac08076baa593e1f18493.jpg?x-oss-process=style/waterfall&$1=50', '曹小晴', 7),
(8, 'https://img1.epetbar.com/2019-02/13/22/421bf3c35e5681ff40312f54a340e31e.jpg?x-oss-process=style/cut&$1=250&$2=125', '灰熊成长日记之幼犬养护篇', '小灰熊是一只灰色贵宾犬，2018.11出生在我闺蜜家里，分享我个人的小狗养护的经验，希望能够帮助', 'https://img1.epetbar.com/2019-06/24/16/1ad85ff4ec0fccc4bcfc779cf3f35ada.jpg?x-oss-process=style/waterfall&$1=50', '小夏_', 7),
(9, 'https://img1.epetbar.com/2019-05/21/11/009f843b40eebc7d2b1b20a4640e2623.png?x-oss-process=style/cut&$1=250&$2=125', '《那些年吃过的主粮》', '姓名：法拉利品种：阿拉斯加年龄：还差几天六个月性别：公特点：一点都不挑食，给什么吃什么，喂驱虫药都很', 'https://img1.epetbar.com/2019-03/14/08/b514baa24fb7c7c73824632fdb682145.jpg?x-oss-process=style/waterfall&$1=50', 'lichee楼', 16),
(10, 'https://img1.epetbar.com/2019-03/26/13/b6ef6a9f19d599fc189a3aa43982c0e4.jpg?x-oss-process=style/cut&$1=250&$2=125', '狗狗行为训练之排排坐吃果果，来坐下', '有没有苦恼当想给狗子拍一组美美的风景照的时候狗子完全无法把控呢？所以不要犹豫，赶快来看看如何让狗狗乖', 'https://img1.epetbar.com/2013-05/23/fc9a468d438c04e66927dca5314ded2e.jpg?x-oss-process=style/waterfall&$1=50', '多余。', 7),
(11, 'https://img1.epetbar.com/2019-05/07/14/1d2e0b06dd2da52e5dc4d549ef6bb6b3.jpg?x-oss-process=style/cut&$1=250&$2=125', '巨贵洗脚的麻烦事儿', '一般情况下，狗狗其实不需要每天洗脚，过于勤快的洗脚，反而会容易导致狗狗脚部潮湿，从而引起趾间炎。', 'https://img1.epetbar.com/dogs/1.jpg?x-oss-process=style/waterfall&$1=50', '大奥迪小糖糖', 5),
(12, 'https://img1.epetbar.com/2018-04/12/20/ad5164754711168fbc63d5f6f7cbbdcc.jpg?x-oss-process=style/cut&$1=250&$2=125', '嘿，我的小王子', '要透过我深邃的眼神看到我不凡的衣品', 'https://img1.epetbar.com/2017-11/14/11/c9e016d871a8ebe70a9f5c6f8504573f.jpg?x-oss-process=style/waterfall&$1=50', 'autumn0627', 8),
(13, 'https://img1.epetbar.com/2019-03/29/17/72d1ac1289576741ca5cc08f293c4ae5.jpg?x-oss-process=style/cut&$1=250&$2=125', '那些年“挑”狗粮的辛酸历程', '品种：柯基年龄：一岁半姓名：华dee，又名挑食狗、玻璃胃喜好：爱吃鱼、各种肉肉、鸭肉过敏', 'https://img1.epetbar.com/2019-02/18/14/fa98174874a21e577a63540ba13cf01e.jpg?x-oss-process=style/waterfall&$1=50', '种草基华dee', 67);

-- --------------------------------------------------------

--
-- 表的结构 `shop_list`
--

DROP TABLE IF EXISTS `shop_list`;
CREATE TABLE IF NOT EXISTS `shop_list` (
  `id` int(11) NOT NULL,
  `lid` int(200) NOT NULL AUTO_INCREMENT,
  `pic` varchar(200) COLLATE utf8_bin NOT NULL,
  `price1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `price2` varchar(200) CHARACTER SET latin1 NOT NULL,
  `sale` int(200) NOT NULL,
  `interact` int(200) NOT NULL,
  `title` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `shop_list`
--

INSERT INTO `shop_list` (`id`, `lid`, `pic`, `price1`, `price2`, `sale`, `interact`, `title`) VALUES
(1, 1, 'http://127.0.0.1:3000/imgs/1(1).jpg', '47.88', '39.90', 167, 307, '顽皮Wanpy 犬食 鸡肉丝 400g'),
(1, 2, 'http://127.0.0.1:3000/imgs/1 (2).jpg', '6.00', '5.00', 80, 17, '顽皮Wanpy犬用鸡肉鳕鱼三明治30g'),
(1, 3, 'http://127.0.0.1:3000/imgs/1 (3).jpg', '18.00', '13.80', 146, 26, '路斯 健康优+组合 翅膀鸡胸肉 100g '),
(1, 4, 'http://127.0.0.1:3000/imgs/1 (4).jpg', '39.36', '29.90', 78, 17, '顽皮Wanpy 奶酪火腿圆片狗零食 400g'),
(1, 5, 'http://127.0.0.1:3000/imgs/1 (5).jpg', '25.00', '18.90', 61, 12, '路斯 奶酪牛肉棒狗零食180g'),
(1, 6, 'http://127.0.0.1:3000/imgs/1 (6).jpg', '30.96', '25.80', 278, 507, '蒙贝 牛肉地瓜粒狗零食 180g'),
(1, 7, 'http://127.0.0.1:3000/imgs/2(1).jpg', '18.00', '14.00', 109, 176, '多格漫 狗狗鸡肉火腿肠 7支/105g'),
(1, 8, 'http://127.0.0.1:3000/imgs/2(2).jpg', ' 45.00', '36.00', 99, 17, '路斯 手工坊系列 鸡肉火腿肠 400g'),
(1, 9, 'http://127.0.0.1:3000/imgs/2(3).jpg', '42.00', '32.00', 109, 25, '日本多格漫 狗狗鸡肉火腿肠 20支/300g'),
(1, 10, 'http://127.0.0.1:3000/imgs/2(4).jpg', '11.76', '8.8', 109, 19, '多格漫 狗狗鸡肉火腿肠 4支/60g'),
(1, 11, 'http://127.0.0.1:3000/imgs/2(5).jpg', '6.80', '5.60', 106, 24, '萌萌酷 真空水煮系列宠物零食 金枪鱼 40g'),
(1, 12, 'http://127.0.0.1:3000/imgs/2(6).jpg', '12.00', '6.50', 29, 39, '益和 蒸煮包系列 酥骨鸡腿宠物零食 12支*1盒'),
(2, 13, 'http://127.0.0.1:3000/imgs/dress1.jpg', '39.80', '22.75', 90, 47, '2018年新款 宠趣 青春校园套裙'),
(2, 14, 'http://127.0.0.1:3000/imgs/dress2.jpg', '175.00', '96.20', 39, 9, '新款 BLUE PORT 英伦格子连衣裙'),
(2, 15, 'http://127.0.0.1:3000/imgs/dress3.jpg', '69.60', '58.00', 11, 41, '妮克威尔 七彩条纹POLO上衣 彩条蓝 M'),
(2, 16, 'http://127.0.0.1:3000/imgs/dress4.jpg', '136.00', '102.00', 59, 9, '2018新款Touchdog 山系双面风衣 蓝色+黄色 XL号'),
(2, 17, 'http://127.0.0.1:3000/imgs/dress5.jpg', '766.00', '629.00', 41, 9, '美国原装进口RW拉夫威尔  艾拉雨衣 岩石红XL'),
(2, 18, 'http://127.0.0.1:3000/imgs/dress6.jpg', '50.00', '39.00', 31, 9, '美国奥柯特alcott 高反光宠物围巾 荧光黄M号脖围32-44cm'),
(2, 19, 'http://127.0.0.1:3000/imgs/dress7.jpg', '148.00', '121.00', 48, 2, '2018新款Touchdog 宠物童趣小猪卫衣 深蓝色 M号 '),
(2, 20, 'http://127.0.0.1:3000/imgs/dress8.jpg', '36.00', '25.50', 10, 5, 'Petcircle宠物圈 大白队长变身装 S'),
(3, 21, 'http://127.0.0.1:3000/imgs/clear1.jpg', '761.20', '299.21', 0, 0, '加拿大原装进口 Opawz 宠物护毛素 动物蛋白精华霜 1000ml 动物蛋白'),
(3, 22, 'http://127.0.0.1:3000/imgs/clear2.jpg', '436.00', '139.22', 0, 0, '加拿大原装进口 Opawz 宠物护毛素 植物蛋白精华液 200ml 植物蛋白'),
(3, 23, 'http://127.0.0.1:3000/imgs/clear3.jpg', '5.00', '1.60', 0, 0, '雷米高 赛级号犬用奶糕粮 60g'),
(3, 24, 'http://127.0.0.1:3000/imgs/clear4.jpg', '139.00', '48.80', 0, 0, '澳大利亚TROY 宠物化毛膏 100g'),
(3, 25, 'http://127.0.0.1:3000/imgs/clear5.jpg', '99.00', '35.64', 0, 0, '多啦小萌 宠物/环境除味剂量贩装 1.08L 量贩装'),
(3, 26, 'http://127.0.0.1:3000/imgs/clear6.jpg', '146.00', '46.70', 0, 0, '美国原装进口 天然奇迹Natures Miracle 猫用消毒清洁祛污除臭喷剂 32oz/946ml'),
(3, 27, 'http://127.0.0.1:3000/imgs/clear7.jpg', '49.00', '15.98', 0, 0, '澳大利亚原装进口 Billy+Margot 牛肉蓝莓配方狗零食 100g牛肉+蓝莓'),
(3, 28, 'http://127.0.0.1:3000/imgs/clear8.jpg', '95.00', '34.00', 0, 0, '小宠 皮毛护理洗剂 薰衣草香型 200ml'),
(4, 29, 'http://127.0.0.1:3000/imgs/food1.jpg', '465.60', '388.00', 84, 45, 'Purich 18个月以下 大型犬奶糕及幼犬粮 15KG '),
(4, 30, 'http://127.0.0.1:3000/imgs/food2.jpg', '597.60', '498.00', 15, 8, 'Purich 金标中大型犬幼犬粮  15kg'),
(4, 31, 'http://127.0.0.1:3000/imgs/food5.jpg', '90.00', '65.00', 12, 5, '醇粹Purich 1-7岁 小型犬成犬粮 1.5KG'),
(4, 32, 'http://127.0.0.1:3000/imgs/food7.jpg', '108.00', '92.00', 46, 23, 'Purich 金标系列 皮肤呵护成犬粮  2kg '),
(4, 33, 'http://127.0.0.1:3000/imgs/food8.jpg', '98.00', '82.00', 45, 12, 'Purich 皮肤毛发呵护配方成犬粮 500g*3袋'),
(4, 34, 'http://127.0.0.1:3000/imgs/food9.jpg', '160.00', '109.00', 84, 25, '醇粹Purich 1-7岁 贵宾犬成犬粮 3KG'),
(5, 35, 'http://127.0.0.1:3000/imgs/open1(1).jpg', '149.00', '55.00', 23, 9, ' 小鲜肉泰迪贵宾成犬粮 2.5kg'),
(5, 36, 'http://127.0.0.1:3000/imgs/open1(2).jpg', '158.00', '65.00', 48, 23, ' 真肉美味粮 那不勒斯芝士幼犬粮 1.6kg'),
(5, 37, 'http://127.0.0.1:3000/imgs/open1(3).jpg', '159.00', '66.00', 75, 60, ' 泰迪贵宾全期犬粮 2.5kg'),
(5, 38, 'http://127.0.0.1:3000/imgs/open1(4).jpg', '668.00', '279.00', 25, 11, '开饭乐 真肉美味粮 鳕鱼片牛排成犬粮10kg'),
(5, 39, 'http://127.0.0.1:3000/imgs/open1(5).jpg', '115.00', '48.00', 25, 7, ' 火鸡蓝莓幼犬粮 1.5kg'),
(5, 40, 'http://127.0.0.1:3000/imgs/open1(6).jpg', '14.80', '12.00', 56, 15, ' 无谷鲜肉小方全价全期犬主食湿粮 鸭肉+牛肉+胡萝卜 190g');

-- --------------------------------------------------------

--
-- 表的结构 `user_order`
--

DROP TABLE IF EXISTS `user_order`;
CREATE TABLE IF NOT EXISTS `user_order` (
  `id` int(200) NOT NULL,
  `uid` int(200) DEFAULT NULL,
  `pid` int(200) DEFAULT NULL,
  `count` int(200) DEFAULT NULL,
  `liuyan` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lname` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user_order`
--

INSERT INTO `user_order` (`id`, `uid`, `pid`, `count`, `liuyan`, `address`, `phone`, `pic`, `lname`, `price`) VALUES
(1, 1, 35, 1, '', '???', 'undefined', 'undefined', 'undefined', 'undefined'),
(2, 0, 22, 1, '中通快递', '河南省，商丘市，睢县', '15963202130', 'undefined', 'undefined', 'undefined'),
(3, 0, 21, 1, '中通快递', '河南省，商丘市，睢县', '15963202130', 'undefined', 'undefined', 'undefined'),
(4, 0, 23, 1, '中通快递', '河南省，商丘市，睢县', '15963202130', 'undefined', 'undefined', 'undefined');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
