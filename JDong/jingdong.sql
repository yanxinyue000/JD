/*
Navicat MySQL Data Transfer

Source Server         : sb
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : jingdong

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2018-05-20 13:18:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2', 'user1', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admin` VALUES ('3', 'yxy000', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for `banrightadv`
-- ----------------------------
DROP TABLE IF EXISTS `banrightadv`;
CREATE TABLE `banrightadv` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `picurl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of banrightadv
-- ----------------------------
INSERT INTO `banrightadv` VALUES ('1', 'https://miaosha.jd.com/brandlist.html', 'https://img11.360buyimg.com/mobilecms/s180x260_jfs/t17644/19/2550635885/85562/9615cffd/5af9a56bN1a9cd8e9.jpg!q90!cc_180x260');
INSERT INTO `banrightadv` VALUES ('2', 'https://miaosha.jd.com/pinpailist.html', 'https://img11.360buyimg.com/mobilecms/s180x260_jfs/t17998/176/2431757776/99352/a09faf4e/5af507cdN210950e4.jpg!q90!cc_180x260');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `shopname` varchar(40) NOT NULL,
  `price` float(10,1) NOT NULL,
  `goodsname` varchar(40) NOT NULL,
  `evaluatenumber` bigint(255) NOT NULL,
  `url` text NOT NULL,
  `date` date NOT NULL,
  `picurl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '滔搏运动官方旗舰店', '159.0', 'Adidas阿迪达斯三叶草 2018新款 男子运动休闲短袖棉T恤 CW0710 ', '3700', 'https://item.jd.com/25199253916.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t19468/293/794014073/219822/d15ca8b1/5aa745fdN85f4ce72.jpg');
INSERT INTO `goods` VALUES ('2', 'Adidas京东自营旗舰店', '659.0', '阿迪达斯ADIDAS 三叶草 2017冬季 男子运动经典系列STAN SMITH', '4400', 'https://item.jd.com/2879203.html', '2018-05-09', 'https://img13.360buyimg.com/n7/jfs/t3277/357/74784329/110312/f9505d9b/57a304a8Na29262b4.jpg');
INSERT INTO `goods` VALUES ('3', '奔策运动专营店', '599.0', '阿迪达斯（Adidas） 阿迪达斯 三叶草 金标贝壳头男女休闲运动板鞋C7712', '2900', 'https://item.jd.com/11235576316.html', '2018-05-09', 'https://img12.360buyimg.com/n7/jfs/t13570/145/1354224638/406432/ac103cb0/5a1e1894N761425a1.jpg');
INSERT INTO `goods` VALUES ('4', '幸运叶子旗舰店', '549.0', '阿迪达斯三叶草女鞋 2018夏季新款休闲鞋SUPERSTAR贝壳头运动板鞋M19', '90', 'https://item.jd.com/25912919837.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t14974/151/1359574678/181250/5603b9a7/5a4da9daNd33404df.jpg');
INSERT INTO `goods` VALUES ('5', 'Adidas京东自营旗舰店', '798.0', '阿迪达斯ADIDAS 三叶草 2018春季 男子 SUPERSTAR 休闲鞋 C', '400', 'https://item.jd.com/6027419.html', '2018-05-09', 'https://img13.360buyimg.com/n7/jfs/t19819/250/345871319/59646/d146af7f/5af0f983N378f1a11.jpg');
INSERT INTO `goods` VALUES ('6', 'Adidas京东自营旗舰店', '798.0', '阿迪达斯ADIDAS 三叶草 2018夏季 中性 superstar 经典鞋 C', '1900', 'https://item.jd.com/6521032.html', '2018-05-09', 'https://img11.360buyimg.com/n7/jfs/t14947/152/2547272843/249018/b643c07c/5aa8c8a8N7cc84d18.jpg');
INSERT INTO `goods` VALUES ('7', 'Adidas京东自营旗舰店', '798.0', '阿迪达斯Adidas 三叶草  中性男女 SUPERSTAR金标贝壳头小白鞋时尚', '1300', 'https://item.jd.com/6329502.html', '2018-05-09', 'https://img11.360buyimg.com/n7/jfs/t14848/365/2076510540/93902/e5883831/5a6947e5N39e16ed8.jpg');
INSERT INTO `goods` VALUES ('8', 'hahamall全球购专营店', '499.0', '全球购ADIDAS 阿迪达斯 三叶草运动鞋史密斯stan smith男女休闲鞋绿', '200', 'https://item.jd.com/1991545030.html', '2018-05-09', 'https://img12.360buyimg.com/n7/jfs/t17083/327/2335382799/285989/d34a93fa/5af50e5fNa34f717e.jpg');
INSERT INTO `goods` VALUES ('9', 'Adidas京东自营旗舰店', '599.0', '阿迪达斯ADIDAS 三叶草 2018夏季 男子 SWIFT RUN 经典鞋 C', '500', 'https://item.jd.com/6735851.html', '2018-05-09', 'https://img12.360buyimg.com/n7/jfs/t14920/22/1777379314/198740/95d0cc64/5a582c82N56109a34.jpg');
INSERT INTO `goods` VALUES ('10', '徐氏运动专营店', '499.0', '阿迪达斯男鞋女鞋三叶草板鞋Superstar金标贝壳头运动休闲鞋 C77124 ', '200', 'https://item.jd.com/26845305066.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t21319/149/80307525/359582/3aa95675/5af9999cN608ea23d.jpg');
INSERT INTO `goods` VALUES ('11', 'Adidas京东自营旗舰店', '248.0', '阿迪达斯ADIDAS 三叶草 2018夏季 男子 TREFOIL T-SHIRT', '2100', 'https://item.jd.com/6554298.html', '2018-05-09', 'https://img12.360buyimg.com/n7/jfs/t20365/186/26249971/140520/b6a5dfe5/5af5d25bNa58a68a9.jpg');
INSERT INTO `goods` VALUES ('12', '黑石旗舰店', '449.0', '阿迪达斯（Adidas） 三叶草 18春夏季 男子 运动休闲鞋板鞋 BB1101', '1700', 'https://item.jd.com/25500895993.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18838/177/1401556713/156685/a135b854/5ac991f2N9133bb73.jpg');
INSERT INTO `goods` VALUES ('13', 'Adidas京东自营旗舰店', '1098.0', '【王嘉尔同款】阿迪达斯Adidas 三叶草 2018 男 PROPHERE 麂皮', '100', 'https://item.jd.com/6521844.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t3127/58/3114055638/236046/2be28a28/57ecb8a5N91c8fe11.jpg');
INSERT INTO `goods` VALUES ('14', 'Adidas京东自营旗舰店', '599.0', '阿迪达斯ADIDAS 三叶草 2018春季 男子 N-5923 经典鞋 DB09', '100', 'https://item.jd.com/6027399.html', '2018-05-09', 'https://img12.360buyimg.com/n7/jfs/t3130/91/5856929176/256090/53805f6c/58831a68N3b8e2c21.jpg');
INSERT INTO `goods` VALUES ('15', 'adidas官方旗舰店', '899.0', 'adidas 阿迪达斯 三叶草 男女 STAN SMITH 经典鞋 B43639', '2000', 'https://item.jd.com/16242193204.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t18838/177/1401556713/156685/a135b854/5ac991f2N9133bb73.jpg');
INSERT INTO `goods` VALUES ('16', '三行之运动专营店', '1099.0', 'ADIDAS三叶草 EQT SUPPORT ADV 黑粉 男鞋 女鞋 休闲鞋 B', '100', 'https://item.jd.com/11928619913.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('17', '乐麦卓创运动专营店', '559.0', 'adidas阿迪达斯三叶草男鞋 2018夏季运动鞋 轻便透气耐磨休闲鞋跑步鞋 阿', '60', 'https://item.jd.com/24860112539.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('18', '激想运动户外专营店', '499.0', 'adidas 阿迪达斯 三叶草 男 CAMPUS 经典鞋 BZ0084 1号黑色', '10', 'https://item.jd.com/25745473466.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('19', 'Adidas京东自营旗舰店', '569.0', '阿迪达斯 Adidas三叶草 2017春秋季 中性 史密斯魔术扣休闲鞋 S751', '300', 'https://item.jd.com/5711352.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('20', '乔乐运动专营店', '629.0', '阿迪达斯男鞋女鞋adidas SUPERSTAR三叶草经典金标贝壳头板鞋C771', '400', 'https://item.jd.com/23266974701.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('21', '江苏叶子运动专营店', '598.0', 'adidas阿迪达斯三叶草男女鞋2018春季新款时尚金标绿尾耐磨运动休闲板鞋小白', '600', 'https://item.jd.com/22637721267.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('22', '上下运动专营店', '569.0', '阿迪达斯男鞋三叶草 Superstar 黑白贝壳头绿尾小白鞋男女运动休闲板鞋 M', '600', 'https://item.jd.com/13619384936.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('23', '热点运动户外专营店', '498.0', 'Adidas阿迪达斯三叶草男鞋2018春季新款Tubular小椰子舒适耐磨防滑缓', '70', 'https://item.jd.com/26004123251.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('24', 'Adidas京东自营旗舰店', '499.0', '阿迪达斯 Adidas 三叶草 2017秋冬 中性 经典休闲鞋运动鞋 M2032', '300', 'https://item.jd.com/5700950.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('25', 'Adidas京东自营旗舰店', '559.0', '阿迪达斯ADIDAS三叶草 2017冬季 男子系列SUPERSTAR 经典鞋 4', '3300', 'https://item.jd.com/2369803.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('26', '胜道运动旗舰店', '629.0', '阿迪达斯（Adidas） 男鞋三叶草Tubular shadow小椰子跑步鞋CG', '30', 'https://item.jd.com/26181350121.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('27', '清鸿叶运动专营店', '488.0', 'Adidas阿迪达斯三叶草男鞋 2018夏季新品简版NMD小椰子运动鞋休闲透气减', '800', 'https://item.jd.com/13230628044.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('28', '热点体育旗舰店', '199.0', 'adidas阿迪达斯女装2018夏季新款三叶草时尚百搭休闲透气运动短袖T恤BK2', '300', 'https://item.jd.com/12498721228.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('29', 'Adidas京东自营旗舰店', '699.0', '阿迪达斯ADIDAS 三叶草 2018春季 女子 SUPERSTAR SLIPO', '100', 'https://item.jd.com/6027421.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('30', '茵特运动户外专营店', '399.0', 'Adidas阿迪达斯三叶草男鞋女鞋 春款情侣鞋运动鞋ZX700运动鞋耐磨透气休闲', '2', 'https://item.jd.com/27391191675.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('31', '幸运叶子旗舰店', '579.0', 'Adidas阿迪达斯三叶草男鞋女鞋 2018夏新款运动鞋史密斯休闲鞋低帮板鞋 D', '200', 'https://item.jd.com/19338938708.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('32', 'Adidas京东自营旗舰店', '599.0', '阿迪达斯Adidas 三叶草 2018 男女中性 X_PLR简版NMD小椰子情侣', '0', 'https://item.jd.com/7147538.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('33', 'Adidas京东自营旗舰店', '449.0', '阿迪达斯ADIDAS 三叶草2018春季 男子 TREFOIL HOODIE 卫', '700', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cDovL2l0ZW0uamQuY29tLzU5OTkzODEuaHRtbA&log=rWUtR8QARE2h6IiLqNpg3SOWHN81P3_2OPumNZH9T2Zet_-kxOEMm6iKaPhgt_vgWQ3YiJhTD5MMqJfcoddRK6heWZ-4xQw0UVhBZ9Tm3posfDV_EZSNyQno2b0OZJYQ6ltUoaAVe0ahN-9qdiUxJ39iGpP7i_vTfursVURSUXqa3z1rEXQ47lSsVB1cycRPfCTNla7ojohhsxKJ5pkwBq3IpN2g55ZEvb2L3MOCb55FJ33zT-deh1kWoM1ZydjpbOeknbo9xo0AcdX4P_M2cAkYtO1kbj4m0wOSCeM8tsdODII_7SktRyQHrKhbw6gleeaPlvH-6lOuRDVZtx3hxrL5PwWAeROUuk8nlmqlgXr6ImIeV0cnHtNtNYMk_usgTmtQD4Ung9q0xrMxmP5DKqCKuv9hP0Y50pXUGd2Xrqigi7L-yUMsK7f61_Vfwhg9A6Q7SFTEsFnZGiEf8zcpQQ&v=404', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('34', '滔搏运动官方旗舰店', '449.0', 'adidas Originals阿迪三叶草2018中性X_PLRFOUNDATI', '200', 'https://item.jd.com/25205623534.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('35', 'hahamall全球购专营店', '439.0', '全球购ADIDAS 阿迪达斯Adidas三叶草史密斯绿尾休闲鞋板鞋Stan Sm', '30', 'https://item.jd.com/1988913544.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('36', 'adidas官方旗舰店', '799.0', 'adidas 阿迪达斯 三叶草 男女 SUPERSTAR 经典鞋 C77124 ', '6300', 'https://item.jd.com/10127284622.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('37', '三行之运动专营店', '1299.0', 'ADIDAS三叶草 NMD R1 BOOST PK  黑白 男鞋 休闲跑步鞋 B', '100', 'https://item.jd.com/12884068485.html', '2018-05-09', 'https://img10.360buyimg.com/n7/jfs/t17680/359/1703794155/162497/414215e/5ad47d8fN7fca5dea.jpg');
INSERT INTO `goods` VALUES ('38', '名鞋库运动旗舰店', '519.0', 'adidas阿迪达斯三叶草男子休闲鞋18SWIFT RUN运动鞋CQ2120 C', '10', 'https://item.jd.com/26735996646.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('39', '黑石旗舰店', '509.0', 'Adidas阿迪达斯三叶草 18春夏季新品男女中性情侣款RUNNER运动休闲鞋C', '100', 'https://item.jd.com/22704068972.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('40', '脉动运动专营店', '929.0', 'ADIDAS阿迪达斯三叶草新款PROPHERE 复古经典休闲跑步男女鞋老爹鞋CQ', '20', 'https://item.jd.com/25868439414.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('41', 'Adidas京东自营旗舰店', '599.0', '阿迪达斯ADIDAS 三叶草 2018夏季 男子 SWIFT RUN 经典鞋 C', '500', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cDovL2l0ZW0uamQuY29tLzY3MzU4NTEuaHRtbA&log=rWUtR8QARE2h6IiLqNpg3SOWHN81P3_2OPumNZH9T2bf3sTRluT7jPni8Wz8SsdH9mM_SM4y2lWO5jK1XXtuvWuxNFLPE2OmeK3X5Q-zmkFjPqHdcPKrEjWpyl7lCuMybIqQsc7wzmV4icRpQ1Nb_E-Nj3XglthW_FUHrv0i2aIF3UPGfm4Mu3kk7DRKtnsxq8cIk5NhWj1oKUeDyOc6eIeQi6g4QQEaZmToHRsTVAmK5GItZxftmz0v1BZ5KE1VYsp41DTTLpWhYlbwUzs6P4KCt7o5e5yJC8hDuZU4nroMqnPsc_bKxI46peJYPnl1FEwqFLktm9CeJdYU1D0XG_LOwo_NBJVwnJXEuPcMB2UoUtDOG67paZ4axzkVj2N6tEv_nn6AMJNnra6AT2Uu8lGv-r6NmsQfcF92X_51JdKyZteIxiKgmp_s8GZywZfWewsLrowPg_h6l8EZnYRy6w&v=404', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('42', '北京博恩运动专营店', '799.0', 'Adidas阿迪达斯男鞋 三叶草男鞋 18夏季新品网眼透气轻质运动休闲男鞋CQ2', '7', 'https://item.jd.com/27314607336.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('43', '上下运动专营店', '458.0', '阿迪达斯三叶草男鞋N-5923系列 2018春新款男子潮流复古运动休闲慢跑鞋CQ', '100', 'https://item.jd.com/11782194026.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('44', '育泰运动专营店', '519.0', 'adidas阿迪达斯三叶草女鞋18春季新品休闲鞋AQ0267 AQ0267 18', '9', 'https://item.jd.com/23268165158.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('45', '乔乐运动专营店', '999.0', 'adidas阿迪达斯三叶草男鞋女鞋EQT BOOST  情侣清风休闲鞋BZ024', '100', 'https://item.jd.com/18654719793.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('46', 'Adidas京东自营旗舰店', '659.0', '阿迪达斯ADIDAS 三叶草 2017冬季 女子 TUBULAR VIRAL2 ', '500', 'https://item.jd.com/5147323.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('47', '胜道运动旗舰店', '591.0', 'adidas男鞋三叶草小白鞋贝壳头女一脚蹬板鞋 BZ0111 BZ0112 BZ', '30', 'https://item.jd.com/16884288231.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('48', '奔策运动专营店', '399.0', '阿迪达斯 三叶草男鞋 2018夏季新款清凉女子运动休闲凉鞋拖鞋S75382 S7', '70', 'https://item.jd.com/10593503462.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('49', '云聚运动专营店', '129.0', 'adidas阿迪达斯三叶草短袖年男子运动T恤男运动上衣半袖T恤CD4864 阿迪', '200', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cDovL2l0ZW0uamQuY29tLzE2MDk0NzMwMDA4Lmh0bWw&log=rWUtR8QARE2h6IiLqNpg3SOWHN81P3_2OPumNZH9T2byLya063B-_2z4tAzFbhp0ACMKEDX99G5rbHYuJkz09ezc5zsZEFz8bxnP739LUp28sYrdGwnr1iDPpVvEpe0pgsZpB1-PvNrAOGgt4RmocidAKMFyFyDspQdEgA3f9C_cPHvjEDAyhwKBzIiTvQTxGtukdhL3oVS4xgn4cHsdF4T1czJW8zfEjC0NNlG9LywPM-9WglOQZsCPnEUyp_2vCUetqejIZWQAHWm4FJ6nsxq99L3x7oA25fhUPw8i0GCzRchfJ1WI6-iPH4yAwigr2nyRZwYCJRp167VmON8msiT-UHz6B1xlrMMERuTOG_HUD2yx8xjyEUmvjHsvbBY2ZWyTuErs3r4_NxYyhwYIBy0vnHibAhfnlYiAdO1zcPk6vjUNFhUp2JARfHJvMI1en2mk9mOZt0jchrPixYjnTQ&v=404', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('50', '飞跃运动专营店', '699.0', '阿迪达斯男鞋 三叶草2018夏季新款EQT SUPPORT ADV运动休闲跑鞋C', '20', 'https://item.jd.com/25053103714.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('51', '羽怿运动专营店', '869.0', 'adidas阿迪达斯男鞋2017夏季新款三叶草魔术贴休闲运动板鞋BA7276 B', '40', 'https://item.jd.com/22310635074.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('52', '风驰运动专营店', '663.0', '阿迪达斯三叶草男鞋 春秋新款运动鞋ZX 700涂鸦经典鞋休闲鞋板鞋BB1220 ', '200', 'https://item.jd.com/22165517211.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('53', '热点体育旗舰店', '319.0', '阿迪达斯Adidas三叶草男鞋2017新款ZX750运动鞋复古休闲鞋板鞋BB12', '60', 'https://item.jd.com/10122577933.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('54', '金腾运动专营店', '469.0', 'Adidas阿迪达斯 男鞋 2018春季新款 男子三叶草小椰子休闲鞋CQ1410', '10', 'https://item.jd.com/17209216604.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('55', '江苏叶子运动专营店', '798.0', '阿迪达斯三叶草男鞋女鞋 春新款Prophere复古老爹鞋运动休闲跑步鞋CQ302', '10', 'https://item.jd.com/25579602513.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('56', 'SKOMART运动旗舰店', '509.0', 'adidas阿迪达斯三叶草男子休闲鞋18鹿晗款SWIFT RUN运动鞋CQ212', '2', 'https://item.jd.com/26736006513.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('57', '名鞋库运动旗舰店', '529.0', '阿迪达斯（Adidas）三叶草男鞋女鞋休闲鞋新款运动鞋TG CG4111一号黑色', '900', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cHM6Ly9pdGVtLmpkLmNvbS8xNTY1Mjk5MzA5Ni5odG1s&log=rWUtR8QARE2h6IiLqNpg3SOWHN81P3_2OPumNZH9T2ahm7-tUor5pEvUVg4I2hZTOCEbyLEdf12Z97UkqZTtMMqCMelnyA9HadYOBkYA5ma8EYQisLxu-BbXIOhkbgtGDoRPuVh6R92QlztCwoTKvcgQhpF5Pcez5jRjo1rG5OmbE2ldCIGjLlfjbDjeky7dGwKqRxD8JQTR4OweTnxtlQf-gByKMoWjUzP5c5EQV2waju87F0A-GiLrxn5vRJR0opghPKXmbn6k7CKAsmzf5XuvXadq9T_dkW3f7NR0ro-oGOVG48QRJFbuE_tslPpILCWa3SeVvWYiontZ72TX30Z26CskavnzccUVmExR3r1lGPW_Gs4F5NNcDQ9zgH_RSErU5Pflxn3NwZ4CC5L-pWtt7eHrdxpEzVSPCc_hN5yY8fkzpSzTgkjPn5LI3_ou&v=404', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('58', '文石运动专营店', '615.0', '阿迪达斯三叶草男鞋女鞋2018春季新款时尚贝壳头运动休闲鞋经典低帮板鞋C7712', '90', 'https://item.jd.com/25549683234.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('59', '考利运动专营店', '949.0', '阿迪达斯三叶草男鞋2018春新款NMD经典运动跑步鞋板鞋CQ2412 CQ241', '20', 'https://item.jd.com/24480353256.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('60', '体客运动旗舰店', '449.0', 'adidas阿迪达斯三叶草男子休闲鞋18X_PLR简版NMDBY8688 CQ2', '600', 'https://item.jd.com/25344924193.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('61', '睦忒运动专营店', '569.0', 'ADIDAS阿迪达斯三叶草2018新款男女情侣史密斯小白鞋百搭透气休闲鞋板鞋M2', '30', 'https://item.jd.com/26966686248.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('62', 'Adidas京东自营旗舰店', '439.0', '阿迪达斯ADIDAS 三叶草 2017秋季 中性 X_PLR 经典鞋 BY869', '200', 'https://item.jd.com/5282614.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('63', '英朗运动专营店', '558.0', '阿迪达斯（adidas）三叶草 18春季 男子Superstar贝壳头休闲鞋C7', '90', 'https://item.jd.com/24201423398.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t17884/19/2382651934/207683/476365f6/5af02c32N718f24cb.jpg');
INSERT INTO `goods` VALUES ('64', 'Adidas京东自营旗舰店', '699.0', '阿迪达斯 Adidas三叶草 中性 STAN SMITH史密斯 运动休闲鞋板鞋 ', '400', 'https://item.jd.com/5536017.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('65', 'Adidas京东自营旗舰店', '559.0', '阿迪达斯ADIDAS三叶草 2017冬季 男子系列SUPERSTAR 经典鞋 4', '3300', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cDovL2l0ZW0uamQuY29tLzIzNjk4MTkuaHRtbA&log=kwNaulgstF1AocpdiObzC3erLkj4emACMejbqKb4pLJWXWs-SGfCSqhVZLwP7xdf-UOCPpPXeRFtgJfo6KZpmdZkvXOiGmoi_io3PYeazzr1uY0ImQUYOutQ_I794t3zCHhGbVIZNAavgS77D1xVpDOP4w9b-VY48n4LsA3b9BhGJnABuMZRWFwCryF2AJxQHgBi8duswNgPma0VSe0Mb05eTjwf_fKWTGnI81HUBT-luNmsnEfWK9dsVchuTT10sZfBDYN7jog1ZxLaSo4yFou0XZNAo5MeX7oM-8dWKn2jfP_1hLyZUCX2xrpyGChnJVVY60W60G7KBR_GZVK-L--UdVKIe_dDGuz32Tc7cAtoTQCniUZXOwkYfs-8ozq5Dy-6BgucpGKJ5FgfyQr2nbqwvt4NFtFK7iqlW4ElaGGWMPOR4LbipoZvxNc-UCl6BjolwuiyMmagsgRer31d_g&v=404', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('66', '三行之运动专营店', '999.0', 'Adidas三叶草 EQT boost 93/17 黑白 白蓝 跑步鞋 男鞋BB', '30', 'https://item.jd.com/18553203240.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('67', '幸运叶子旗舰店', '699.0', '阿迪达斯三叶草女鞋 2018春季新款贝壳头厚底金标运动休闲鞋板鞋BA7666 B', '2', 'https://item.jd.com/25640961955.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('68', '滔搏运动官方旗舰店', '799.0', 'adidas阿迪三叶草 stan smith 中性三叶草系列休闲鞋M20326 ', '900', 'https://item.jd.com/10873734288.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('69', 'adidas官方旗舰店', '799.0', '阿迪达斯adidas 三叶草 N-5923 男 经典鞋 DB0961 如图 40', '300', 'https://item.jd.com/25532978390.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('70', '北京博恩运动专营店', '389.0', '阿迪达斯三叶草女鞋 2017新款史密斯绿尾低帮厚底增高透气轻便小白鞋休闲板鞋S3', '100', 'https://item.jd.com/11907138066.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('71', '脉动运动专营店', '899.0', 'ADIDAS阿迪达斯三叶草新款PROPHERE 复古经典休闲跑步男女鞋老爹鞋CQ', '10', 'https://item.jd.com/25864053059.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('72', 'Adidas京东自营旗舰店', '599.0', '阿迪达斯ADIDAS 三叶草 2017冬季 男子 X_PLR SNKRBOOT ', '400', 'https://item.jd.com/5147003.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('73', 'Adidas京东自营旗舰店', '798.0', '阿迪达斯ADIDAS 三叶草 2018春季 男子 SUPERSTAR 休闲鞋 C', '400', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cDovL2l0ZW0uamQuY29tLzYwMjc0MTkuaHRtbA&log=kwNaulgstF1AocpdiObzC3erLkj4emACMejbqKb4pLI052ijHPttKdp9e6M2-v0wycVA_5MzKNFqunCslVTJZzO8eXIY9jvkAXBplF0Q3tQTi1fdhWA5bHAka8VjERPuEU2FnVmDfXyg9gIgsGjk9F8Gn2a92xzOVjsB3zM9ADOD-Si8T0RqSsJqdMyx1Z7yoXCtKc31paqjNccDkoRMX72-SGFhQjqJGC_KOaSZJ3m-EEqT58GdjGTkJ1ELJzf8UHYxWkliscwtyVFksb8r7AlTxeBzR3rukyE4-h0mp-BjyeWNjqhPcWqbpjPpBQ8yY484LxkdPCilaKdqcwFj4FFtx88tWRapBZoKo7Fra0rWAb0l-Hz13Vj5tK_GsZc3lthD3LhReenRyPsHQ2Bpe-4vB_5U5uptqVh99nu4iy3FI2HnEEXMTWNYPNR_r6sdda6BYdU3tuGkQlEQD5UvDQ&v=404', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('74', '黑石旗舰店', '589.0', '阿迪达斯（Adidas） 三叶草 17冬季女子史密斯休闲运动鞋 BZ0411 C', '50', 'https://item.jd.com/21585182351.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('75', '江苏叶子运动专营店', '699.0', '阿迪达斯男鞋女鞋 2018夏季新款DEERUPT三叶草新款网格透气舒适休闲跑步鞋', '300', 'https://item.jd.com/15392704008.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('76', '育泰运动专营店', '569.0', '阿迪达斯（Adidas）  三叶草 贝壳头男鞋 18春季新品 休闲鞋 AC856', '70', 'https://item.jd.com/24553805832.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('77', '乐麦运动专营店', '369.0', '阿迪达斯（Adidas） 阿迪达斯男鞋 三叶草夏季新款低帮帆布透气舒适休闲鞋板鞋', '300', 'https://item.jd.com/14237660553.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('78', '金腾运动专营店', '469.0', '阿迪达斯男鞋2018新三叶草X_PLR休闲鞋简版NMD小椰子运动鞋CQ2405 ', '60', 'https://item.jd.com/11971577013.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('79', '考利运动专营店', '458.0', '阿迪达斯三叶草男童女童2017秋季新款童贝壳头小白鞋休闲运动鞋B26071 B2', '20', 'https://item.jd.com/20236337022.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('80', '奔策运动专营店', '599.0', '阿迪达斯（Adidas） 男鞋三叶草 金标贝壳头女子休闲运动板鞋CM8078 B', '200', 'https://item.jd.com/10628045376.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('81', '名鞋库运动旗舰店', '209.0', 'adidas阿迪达斯三叶草男子短袖T恤2018新款休闲运动服CW1202 CW1', '200', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cDovL2l0ZW0uamQuY29tLzI3MDAwMjMzOTU1Lmh0bWw&log=kwNaulgstF1AocpdiObzC3erLkj4emACMejbqKb4pLKRd94VjzWNvU3cjKfJJE0pA228W2RXEZYDVbuUeuqCrpA2AIYmomF7KL_A4QLcUGqEFobVo6zjWRYuBMO4sMOkbJbT_IaJuukaYYXdl5i2y01YeyBsFNW0zzrcqleMlWR8bPr05QakrY1BsCrrJ6MnOYyo_EQP2gczW-4lGNf6ZXZxYS55evYmrBo1w5GuA8x9bAjMwPdlPSRZ2rZ_6znDThuiWTpy2cbBSWgj7rtWEwzVJJR4DOLWUfeGb1N2Y7DP13D7fpgKUq5WVGik4yxEbIRyvqKFI9oOKboPP95cIKoF8fARb2H9XR_ipO4NHljZFt_gVmXQ_oKQO6CX2tMO3vtIdP-re3aYefwEl6dQ-dabpp59nInRJxF7ocy4pyI-MefdNhyCIqIpm7IdC8YOCg2m3bLoDXaMiawwpaqhdw&v=404', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('82', '博飞运动专营店', '719.0', '阿迪达斯（adidas） 博飞adidas阿迪达斯三叶草男鞋 16休闲鞋板鞋B2', '1', 'https://item.jd.com/11869136758.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('83', 'Adidas京东自营旗舰店', '659.0', '【鹿晗同款】阿迪达斯ADIDAS 三叶草 2017冬季 男子 TUBULAR R', '400', 'https://item.jd.com/5147487.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('84', '晓起运动专营店', '499.0', 'Adidas阿迪达斯运动鞋春季三叶草女鞋金标贝壳头SUPERSTAR黑标皮面休闲', '100', 'https://item.jd.com/25547926863.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('85', '瑞动运动专营店', '999.0', 'Adidas阿迪达斯三叶草男鞋女鞋小椰子Tubular X经典休闲鞋BB2380', '3', 'https://item.jd.com/21317244866.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('86', '日本Rakuten官方旗舰店', '960.0', '全球购adidas 阿迪达斯 三叶草 NMD R1 BOOST男士运动鞋休闲鞋经', '40', 'https://item.jd.com/25551094255.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('87', '天马运动专营店', '909.0', '阿迪达斯三叶草男鞋 2018新品Stan Smith 菲董联名休闲运动板鞋DA9', '0', 'https://item.jd.com/27024690621.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('88', '唯品会旗舰店', '401.0', '阿迪达斯adidas   三叶草 DRAGON OG 男子 经典鞋 白色 36\n', '1', 'https://item.jd.com/27376898375.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('89', 'Adidas京东自营旗舰店', '798.0', '阿迪达斯ADIDAS 三叶草 2018夏季 中性 superstar 经典鞋 C', '1900', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cDovL2l0ZW0uamQuY29tLzY1MjEwMzIuaHRtbA&log=kwNaulgstF1AocpdiObzC3erLkj4emACMejbqKb4pLKtadph1w7eckVi0X_XTJmJHl1U38HO7qz4M8P6Xd3O8Sb2dFGAi7x47mjdnXYJCw3J6nIlLuLrgYRlb92jcs-a8tlLkhHNFa32MdrGdQgYp-kyYZR2FG8it06Olt38cBmDR7-HHTZX4tR6DZPL0B-Pk4BUzkMpLJydRGk6zPJpkDxf2bkXbhPGv04lNekBUEUKWAYSwL_bR8JDlPD48UHz-iR--GHcbaPAV6MEtRZUU6-FRAjQp1MadyqCG4DM2iXFRFMp-oMODg5ZqDxeUEVHF9ztWOSuM6WWGor6J5QNeXUYHW-lPy7PYhdC7VnyIloaejnX9lpZBIhCkk18wXSrPD14wtgbfbCUv1n7KXZDtnAjeYkj6eogv4PuDUaG42eKidRy2jwE3bXH_BIkcKTRtPIXAbp49GaK0MD8SVDJqg&v=404', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');
INSERT INTO `goods` VALUES ('90', '智凯运动专营店', '679.0', '阿迪达斯男鞋2018夏新款三叶草TUBULAR小椰子休闲鞋运动鞋CG4562 C', '5', 'https://item.jd.com/25160929821.html', '2018-05-09', 'https://img14.360buyimg.com/n7/jfs/t18247/330/2471026243/271982/20a52634/5af96c4fN6ab55fd3.jpg');

-- ----------------------------
-- Table structure for `hotwords`
-- ----------------------------
DROP TABLE IF EXISTS `hotwords`;
CREATE TABLE `hotwords` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `hotwords` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hotwords
-- ----------------------------
INSERT INTO `hotwords` VALUES ('1', 'https://sale.jd.com/act/fROX0m7EHlwLz.html', '卡帕新品日');
INSERT INTO `hotwords` VALUES ('2', 'https://sale.jd.com/act/pKqBv0Sgti.html', '表白季');
INSERT INTO `hotwords` VALUES ('3', 'https://sale.jd.com/act/8yaD0qZuE6VFk.html', '苹果立减');
INSERT INTO `hotwords` VALUES ('4', 'https://sale.jd.com/act/oMHT5c7gAznJ.html', '游戏手机');
INSERT INTO `hotwords` VALUES ('5', 'https://sale.jd.com/act/Rc4ECB6wgZH.html', '爱车季');
INSERT INTO `hotwords` VALUES ('6', 'https://sale.jd.com/act/uDTY0QmaPJq.html', '2件8折');
INSERT INTO `hotwords` VALUES ('7', 'https://sale.jd.com/act/3gzhNwsmEBZUx.html', '鲜花礼品');
INSERT INTO `hotwords` VALUES ('8', 'https://sale.jd.com/act/bs0vlgrAkxwh2.html', '冰洗盛惠');
INSERT INTO `hotwords` VALUES ('9', 'https://sale.jd.com/act/b14pl8Ymsdqo5.html', '洗碗机节');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '全名爱车季', 'https://m.360buyimg.com/babel/jfs/t18019/287/2384866215/92727/3761f849/5af29a6aN1431c840.jpg');
INSERT INTO `lunbotu` VALUES ('2', '情系母亲', 'https://img1.360buyimg.com/da/jfs/t16840/165/2206674116/97111/6829026a/5aea7defNc9786ac1.jpg');
INSERT INTO `lunbotu` VALUES ('3', '潮于外型于心', 'https://img1.360buyimg.com/pop/jfs/t16642/71/2369564829/128559/69d953ce/5af24a03Nc9e5aa40.jpg');
INSERT INTO `lunbotu` VALUES ('4', '机械革命S1薄本', 'https://m.360buyimg.com/babel/jfs/t17683/40/2410488334/76487/8b03169a/5af2b485Nf671c3f0.jpg');
INSERT INTO `lunbotu` VALUES ('5', '京东铺食嘉年华', 'https://img1.360buyimg.com/pop/jfs/t17626/317/2371751089/100493/2757a8bf/5af297c1N3d5db46d.jpg');
INSERT INTO `lunbotu` VALUES ('6', 'IphoneX低降', 'https://m.360buyimg.com/babel/jfs/t16840/130/2374870401/63345/13505c15/5af2c57bNe414c7c9.jpg');
INSERT INTO `lunbotu` VALUES ('7', '运动超极品类日', 'https://m.360buyimg.com/babel/jfs/t16645/138/2237134438/47150/5942d12d/5aec41e9Neff1f510.jpg');
INSERT INTO `lunbotu` VALUES ('8', '李宁专场', 'https://m.360buyimg.com/babel/jfs/t17686/163/1985874988/87538/b722ca13/5ae188aeN1db422ce.jpg');

-- ----------------------------
-- Table structure for `mime`
-- ----------------------------
DROP TABLE IF EXISTS `mime`;
CREATE TABLE `mime` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `picurl` text NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mime
-- ----------------------------
INSERT INTO `mime` VALUES ('1', 'https://jdiscover.jd.com/?id=1233227', 'https://img11.360buyimg.com/mobilecms/s350x250_jfs/t17332/3/2340952572/110989/99ed7c05/5af2a807N34077c64.jpg!q90!cc_350x250.webp', '133万全款订车三年后提车，也就特斯拉能干得出来', '众筹搞项目在前俩年就像现如今的共享经济一样繁荣，其中混着不少投机分子盯着老百姓的荷包忽悠，当然也有不少蛮不错的项目，让好的概念得以面市，只不过众筹这种形式都是玩玩小钱的，大不了就万把块钱，然而这个地球就有人牛气，搞个项目能哄的全球的有钱人乖乖掏钱，而且一套就是133万......');
INSERT INTO `mime` VALUES ('2', 'https://jdiscover.jd.com/?id=1239734', 'https://img11.360buyimg.com/mobilecms/s350x250_jfs/t17629/277/2415467708/151782/29b93b27/5af3b701N6a9ef02b.jpg!q90!cc_350x250.webp', '看中性价比和安全，17万出头买福特翼虎值得吗？', '众筹搞项目在前俩年就像现如今的共享经济一样繁荣，其中混着不少投机分子盯着老百姓的荷包忽悠，当然也有不少蛮不错的项目，让好的概念得以面市，只不过众筹这种形式都是玩玩小钱的，大不了就万把块钱，然而这个地球就有人牛气，搞个项目能哄的全球的有钱人乖乖掏钱，而且一套就是133万......');
INSERT INTO `mime` VALUES ('3', 'https://jdiscover.jd.com/?id=1239734', 'https://img11.360buyimg.com/mobilecms/s350x250_jfs/t17629/277/2415467708/151782/29b93b27/5af3b701N6a9ef02b.jpg!q90!cc_350x250.webp', '看中性价比和安全，17万出头买福特翼虎值得吗？', '这个地球就有人牛气，搞个项目能哄的全球的有钱人乖乖掏钱，而且一套就是133万......');

-- ----------------------------
-- Table structure for `not enough`
-- ----------------------------
DROP TABLE IF EXISTS `not enough`;
CREATE TABLE `not enough` (
  `picurl` text NOT NULL,
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of not enough
-- ----------------------------

-- ----------------------------
-- Table structure for `rank`
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `picurl` text NOT NULL,
  `titile` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rank
-- ----------------------------

-- ----------------------------
-- Table structure for `seckill`
-- ----------------------------
DROP TABLE IF EXISTS `seckill`;
CREATE TABLE `seckill` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `picurl` text NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 NOT NULL,
  `price` float(10,2) NOT NULL,
  `oldprice` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of seckill
-- ----------------------------
INSERT INTO `seckill` VALUES ('1', 'https://miaosha.jd.com/#5119176', 'https://img20.360buyimg.com/mobilecms/s140x140_jfs/t21682/282/10660055/183750/358e51ab/5af53121N74cc4f44.jpg!q90.webp', '水星家纺 空调夏凉被子夏薄被 克洛怡抗菌', '99.00', '259.00');
INSERT INTO `seckill` VALUES ('2', 'https://miaosha.jd.com/#6949959', 'https://img30.360buyimg.com/mobilecms/s140x140_jfs/t17023/47/1223275547/363585/54b4d6d/5ac1d8a7Nd8e0b4da.jpg!q90.webp', '华硕(ASUS)飞行堡垒五代FX80 1', '6899.00', '7199.00');
INSERT INTO `seckill` VALUES ('3', 'https://miaosha.jd.com/#874319', 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t6097/252/3803599852/195298/fc4ae34a/5959a860Nd7c3a633.jpg!q90.webp', '美的（Midea）EM7KCGW3-NR', '399.00', '600.00');
INSERT INTO `seckill` VALUES ('4', 'https://miaosha.jd.com/#4274549', 'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t18850/363/1014734216/231850/f0cb771d/5ab64d42N9c28873d.jpg!q90.webp', '惠普(HP)暗影精灵3代 GTX1050', '6399.00', '8000.00');
INSERT INTO `seckill` VALUES ('5', 'https://miaosha.jd.com/#874319', 'https://img11.360buyimg.com/mobilecms/s140x140_jfs/t6097/252/3803599852/195298/fc4ae34a/5959a860Nd7c3a633.jpg!q90.webp', '美的（Midea）EM7KCGW3-NR', '888.00', '999.00');
INSERT INTO `seckill` VALUES ('6', 'https://miaosha.jd.com/#4274549', 'https://img30.360buyimg.com/mobilecms/s140x140_jfs/t17023/47/1223275547/363585/54b4d6d/5ac1d8a7Nd8e0b4da.jpg!q90.webp', 'GTX1050', '6399.00', '8000.00');
INSERT INTO `seckill` VALUES ('7', 'https://miaosha.jd.com/#6949959', 'https://img14.360buyimg.com/mobilecms/s140x140_jfs/t18850/363/1014734216/231850/f0cb771d/5ab64d42N9c28873d.jpg!q90.webp', '华硕(ASUS)飞行堡垒五代FX80 1', '6666.00', '7777.00');
INSERT INTO `seckill` VALUES ('8', 'https://miaosha.jd.com/#5119176', 'https://img20.360buyimg.com/mobilecms/s140x140_jfs/t21682/282/10660055/183750/358e51ab/5af53121N74cc4f44.jpg!q90.webp', '水星家纺 空调夏凉被子夏薄被 克', '88.00', '100.00');

-- ----------------------------
-- Table structure for `subnav`
-- ----------------------------
DROP TABLE IF EXISTS `subnav`;
CREATE TABLE `subnav` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subnav
-- ----------------------------
INSERT INTO `subnav` VALUES ('1', 'https://list.jd.com/list.html?cat=737,794,798&ev=4155_78904&sort=sort_rank_asc&trans=1&JL=3_%E7%94%B5%E8%A7%86%E7%B1%BB%E5%9E%8B_%E6%9B%B2%E9%9D%A2%E7%94%B5%E8%A7%86#J_crumbsBar', '曲面电视');
INSERT INTO `subnav` VALUES ('2', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('3', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('4', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('5', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('6', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('7', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('8', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('9', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('10', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('11', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('12', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('13', 'https://wt.jd.com/', '超薄电视');
INSERT INTO `subnav` VALUES ('14', 'https://wt.jd.com/', '曲面电视');
INSERT INTO `subnav` VALUES ('15', 'https://wt.jd.com/', '曲面电视');
INSERT INTO `subnav` VALUES ('16', 'https://wt.jd.com/', '曲面电视');
INSERT INTO `subnav` VALUES ('17', 'https://wt.jd.com/', '曲面电视');
INSERT INTO `subnav` VALUES ('18', 'https://wt.jd.com/', '曲面电视');
INSERT INTO `subnav` VALUES ('19', 'https://wt.jd.com/', '曲面电视');
INSERT INTO `subnav` VALUES ('20', 'https://wt.jd.com/', '曲面电视');

-- ----------------------------
-- Table structure for `youhui`
-- ----------------------------
DROP TABLE IF EXISTS `youhui`;
CREATE TABLE `youhui` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8 NOT NULL,
  `picurl` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of youhui
-- ----------------------------
INSERT INTO `youhui` VALUES ('1', 'https://sale.jd.com/act/CtgHyWL1p2Meb5kl.html', 'https://img10.360buyimg.com/babel/s190x150_jfs/t18262/36/2143922244/36329/76925993/5ae9289eN81a8991d.jpg!q90!cc_190x150');
INSERT INTO `youhui` VALUES ('2', 'https://sale.jd.com/act/4NPM6Hu1KzXa2.html', 'https://img10.360buyimg.com/babel/s190x150_jfs/t17212/43/2491902702/61824/f0ab3508/5af69d09N467ff51e.jpg!q90!cc_190x150');
INSERT INTO `youhui` VALUES ('3', 'https://ccc-x.jd.com/dsp/nc?ext=aHR0cHM6Ly9zYWxlLmpkLmNvbS9hY3QvSlFnbWZrTlVTdFc1ME9MLmh0bWw&log=Y2KWXRjJXqPspqCbwZwff7oV9jO6jsB4AfLsBtwDYtURwwp5SqhYLcjRNQhVKVGW_uIVk8oigLmLwEbAc3sG2ByOb1nM00JfNHT5pe9svsWgWG5-0mI18IOC5pQvG6WpGR8kinSy56-bF_1fFMVvNN8paTmfqU3muUsA4hEZnI4KlfMrK-95BZGXguPqArZDWOg0hAcMIUWReLwnjxDaUyirKYoU7Wu3OOpHdAucX47h4Fwr8fo8tUXcYcA-9vRBwdePUA7laqrdiIfFUyzzmQhcr7Bv60Fp5bvLut2N6HgBahDmTWPjOhkfWGK-cyCN1Cq_79xT6ODXv0q0Cnjunpq_GiR2sBtGzOxp-W6dQjYVenlLm8pVKEm4uUpM8W31-nRORwXA5OMI9plEOYd_2xT0Blz9eq63xEIwIg3LvuM&v=404', 'https://img1.360buyimg.com/pop/s190x150_jfs/t20938/265/10235553/24476/9463b6c4/5af51518N3fd8c248.jpg!q90!cc_190x150');
