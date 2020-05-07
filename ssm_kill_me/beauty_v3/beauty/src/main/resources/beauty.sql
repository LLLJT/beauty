/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : beauty

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-05-07 14:04:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT '1',
  `content` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `modifytime` datetime DEFAULT NULL,
  `rec_flag` tinyint(1) DEFAULT '0' COMMENT '1, recommend; 0, default, not recommend',
  `pic1` varchar(255) DEFAULT NULL,
  `pic_url_1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic_url_2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic_url_3` varchar(255) DEFAULT NULL,
  `likenum` int(11) DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`),
  KEY `fk_type` (`typeid`),
  KEY `fk_blog_user` (`userid`),
  CONSTRAINT `fk_blog_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_type` FOREIGN KEY (`typeid`) REFERENCES `blog_type` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', '颜九-粉底液测评（秋冬装）', '21', '2', '红榜\r\n粉底液\r\n牌子：欧莱雅\r\n色号:#20（红帽子）\r\n特点：适合大多数肤色偏白的妹子，需分区域送上妆，分左右半边脸，用刷子上妆效果好；轻薄不易闷痘，非常有高级感的哑光妆，但遮瑕效果差。\r\n   \r\n粉底液轻薄测试方法\r\n先取一张无纺纱布在纱布上挤几滴粉底液，并放在加湿器的出气口。如果有水蒸气透过纱布冒出来，则说明这款粉底液非常轻薄，涂在脸上也会非常舒服。\r\n', '2020-05-01 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('2', '颜九-8月口红红黑榜', '21', '2', '8月口红红黑榜\r\n红榜\r\n\r\n口红\r\n1.牌子:Moria\r\n  色号:10\r\n  特点:平价之王，显白好助手，适合红皮，有一丢丢眉调和雾面感，咬唇妆必备。\r\n2.牌子:美宝莲\r\n  色号503\r\n  特点:偏紫调的玫瑰花色，不显老，不显黑，黄皮放心入，白底涂上，更温柔，更显白。\r\n3.牌子:Urbaudecay \r\n  色号:Daenerys Targryen\r\n  特点:限量版龙妈色，色彩十分显亮，权游党可考虑入手哦。\r\n\r\n唇釉\r\n1.牌子:火烈鸟\r\n  色号:3\r\n  特点:显白显气质，浓郁中带有棕调，日常或者浓妆随意切换。\r\n2.牌子:YSL\r\n  色号:613\r\n  特点:轻薄的牛血色，涂上去冰冰凉凉，适合夏日各种妆容都，口红界的小绅士，但成膜速度慢。\r\n\r\n黑榜\r\n口红\r\n1.牌子:Too cool for school\r\n  色号:12\r\n  特点:极度黏嘴，例如风一吹来头发就会被口红给你黏上。\r\n\r\n唇膏\r\n2.牌子:PJ猫咪唇膏\r\n  色号:402\r\n  特点:膏体只涂一次，猫咪头的膏体就会变成海豹头。无色的珠光唇膏涂上去没有什么用。\r\n', '2020-05-03 00:00:00', null, '1', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('3', '颜九-黄黑皮适合什么口红', '21', '1', '黑黄皮适合什么口红\r\n1.黑皮→避开一切荧光色，选择正红色橘色以及一切带有橘调的口红。\r\n2.黄皮素颜→奶茶色\r\n3.暖白皮→红棕色\r\n', '2020-05-05 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('4', '颜九-9月口红红黑榜', '21', '2', '九月口红红黑榜\r\n红榜\r\n口红\r\n1.牌子:植村秀\r\n  色号:BR784\r\n  特点:非常适合秋冬季节，纯哑光的质地，涂起来非常顺滑，一点都没有拔干的感觉，而且不会显老气，黄皮黑皮党可以入手。\r\n2.牌子:Dior\r\n  色号:秋冬限量999\r\n  特点:淡橘调正红色，适合薄涂，非常日常。涂之前可以先用唇膏笔勾勒一下唇形，这样子，涂口红起来比较好看。\r\n3.牌子:kiko\r\n  色号:2019春季限量103\r\n  特点:胡萝卜色，但有一股神秘的胡椒粉味，适合奶茶色黄色衣服搭配整个人，看起来十分有气质。\r\n\r\n黑榜\r\n口红\r\n1.牌子:卡拉泡泡\r\n  色号:水果系列\r\n  特点:有一股劣质的水果味道。\r\n2.牌子:Visse\r\n  色号:奶茶棕色\r\n  特点:日系一贯的油润，非常的难涂，不适合黄皮党。\r\n', '2020-05-07 00:00:00', null, '1', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('5', '颜九-七（八）月挖草机', '21', '2', '七（八）月挖草机\r\n口红\r\n1.牌子:LANCOME\r\n  色号:168\r\n  特点:比169色号更适合夏日，质地水润，深唇色的妹子涂之前需要给唇部打底和遮瑕。\r\n2.牌子:3CE\r\n  色号:SIMPLE STAY\r\n  特点:胡萝卜色，上嘴之后复古感更强，涂上去高贵温柔本人。\r\n气垫\r\n1.牌子:ELDAS\r\n  色号:21\r\n  特点:适合学生党，色号偏黄自然，干皮可能会卡粉，但混油皮涂起来十分合适。\r\n2.牌子:香奈儿\r\n  色号:果冻\r\n  特点:清透亮白，遮瑕力较差（可遮一些浅浅的痘印，但是对于黑眼圈和法令纹遮瑕效果差。）适合干皮的妹子们，持妆效果好。\r\n军训防晒推荐\r\n3.安耐晒粉金瓶（敏感肌），ultrasun高倍遮瑕，近江水瓶\r\n涂防晒不油腻小tip:在涂防晒之前，护肤品的使用极为关键。护肤品必须完全按摩到吸收，在上防晒霜。防晒霜的使用需先挤一些手背，量一定要够，用手少量多次的蘸取，轻轻拍打到脸上，最后可以上点散粉。 \r\n', '2020-05-09 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('6', '颜九-一月口红榜单', '21', '2', '2020一月口红榜单（1.14）\r\n红榜\r\n1.	红管 ＃405G\r\n牌子：阿玛尼\r\n特点:奶油质地，不显干\r\n2.	口红 ＃627/58\r\n牌子：香奈儿 山茶花限定色 \r\n特点:包装高级 两款颜色相近 取其一就可\r\n3.	口红 经典色号\r\n牌子：NARS圣诞限定\r\n特点:百搭\r\n黑榜\r\n4.	口红 #1 wonder/#l will forever\r\n牌子:Mac hourglas圣诞套装\r\n特点:黑魔仙上色效果\r\n5.	口红 #walk of shame\r\n牌子：CT\r\n特点:性价比低 铅笔形状包装 口红细小 不易涂\r\n', '2020-05-11 00:00:00', null, '1', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('7', '颜九-年度爱用物分享', '21', '2', '阿九 年度爱用好物分享\r\n彩妆\r\n粉底液\r\n牌子：香奈儿方砖\r\n特点：非常滋润，后续底妆非常服帖\r\n三色遮瑕\r\n牌子：TO ONE\r\n特点:浅色遮瑕特别好用，遮瑕效果好，适合遮瑕眼角纹、黑眼圈。\r\n双色高光\r\n牌子：香奈儿圣诞限定\r\n特点:粉质细腻 上妆效果好\r\n护肤\r\n气泡水\r\n牌子：香奈儿\r\n特点:水相当于精华\r\n皇后水\r\n牌子：匈牙利贵族\r\n特点:金属包装 喷头细 出水少\r\n橘灿精华\r\n牌子：雅顿\r\n特点:晚上涂感觉肤色黄 白天起来感觉肤色白\r\n蓝罐精华\r\n	牌子：醉象\r\n特点:敏感肤质慎用\r\n护发\r\n晚安修复发膜\r\n牌子:PhD\r\n特点: 无硅 免受损\r\n', '2020-05-13 00:00:00', null, '1', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('8', '颜九-奇葩美妆工具测评', '21', '2', '阿九奇葩美妆工具测评\r\n无牌子\r\n1.气球美妆蛋\r\n特点:比普通的美妆蛋好用 上妆效果好 但使用时谨慎 防气球爆炸\r\n2.眉型器\r\n特点:蜡笔小新眉效果\r\n3.磁铁假睫毛\r\n特点:磁铁吸附 捏贴时眼皮疼痛\r\n4.懒人口红\r\n特点:不推荐 不比一般的口红好用 使用时易出现唇部涂不均匀\r\n5.口红纸\r\n特点:古装剧产品 上妆效果差 不比口红好用\r\n6.古法鲜花胭脂\r\n特点:不易推开 但推开后上妆效果好\r\n7.刷睫毛神器\r\n特点:好用 睫毛卷翘效果好\r\n', '2020-05-15 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('9', '颜九-九（十）挖草机', '21', '2', '九（十）挖草机\r\n1.凡士林晶冻\r\n2.Lamer 唇蜜\r\n特点：上嘴并不会特别的粘腻，非常的滋润，有一种甜甜凉凉的感觉，刷头非常的大，但蘸取的膏体很少。\r\n唇炎：不能用含有薄荷成分的润唇膏或有染唇效果的膏体\r\n4.宝格丽香水\r\n特点：有种小宝宝的爽肤水的味道，奶香味的香水\r\n5.ukiwi牙膏\r\n特点：（想要口红涂的好看，牙齿最好要白）西柚薄荷味，含有天然的酵素及多种美白成分，可以有效分解色素沉淀，真实的解决牙齿色素沉淀的问题。\r\n5.完美日记小粉钻\r\n从质地到颜色非常适合秋冬。日常妆容选择的色号：12、13、C01\r\n酷炫妆容选择的色号:A04 C03 C04\r\n', '2020-05-17 00:00:00', null, '1', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('10', '颜九-新手化妆刷指南', '21', '1', '阿九 新手化妆刷指南\r\n新手刷毛:纤维毛；满足日常所有需求—1.性价比比较高，清洗护理好打理；2.没动物毛柔软，有的会有点扎脸。\r\n新手刷毛：遮瑕刷、铺色刷、晕染刷、鼻影刷、火苗刷、修容刷。\r\n新手建议：上妆美妆蛋，建议化妆时要到光线比较充足的地方， 如果有卡粉现象的话，可以喷点定妆喷雾。\r\n', '2020-05-19 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('11', '颜九-卸妆水测评', '21', '2', '阿九 卸妆水测评\r\n1.牌子:曼丹-缤若诗\r\n 卸妆:眼唇\r\n 特点:水油分离，用之前需要摇匀，卸妆效果杠杠的，卸得十分干净。\r\n\r\n 卸妆:全脸（粉色瓶）\r\n 特点:可以卸全脸的妆容。使用时有一个小建议，可以先用眼唇卸妆水卸完眼唇之后再用这瓶卸妆水。这妆力很强，可以起到深度卸妆的作用。\r\n', '2020-05-21 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('12', '颜九-公关礼盒', '21', '2', '阿九 公关礼盒\r\n1.欧莱雅葡萄籽礼盒\r\n 特点:适合换季，保湿补水的效果好。使用时需注意先挤到化妆棉上，再用化妆棉来轻轻的擦拭脸部。用完之后感觉脸嫩嫩的，真的很保湿。\r\n2.MOIRA礼盒\r\n 特点:好用，前十分公道适合学生党，便宜到让你挑不出毛病。\r\n3.悦诗风吟礼盒。\r\n 特点:圣诞礼盒的装备，美妆和圣诞用品都有。\r\n4.植村秀和皮卡丘联合礼盒。\r\n 特点:弄了一个皮卡丘的帆布袋，而且各个包装也十分的可爱。\r\n', '2020-05-23 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('13', '颜九-香水大赏', '21', '2', '阿九 香水大赏\r\n1.牌子:宝格丽大吉岭茶香水\r\n  香调:木质花\r\n  特点:刚开始味道有点冲，后面挥发后感觉是温柔和干净，比原版浓一点，又比夜幽版稍微淡一点，但香味不持久。\r\n\r\n2.牌子:爱马仕兄弟花园\r\n  香调:花香朵\r\n  特点:干净清新，有一股特别清新的果香和青柠融合在一起的味道。\r\n\r\n3.牌子:香奈儿蔚蓝男士淡香水\r\n  香调:木质花\r\n  特点:属于木香型，推荐25岁以下的男士作为你们的启蒙香，当然女性也可以用。\r\n\r\n4.牌子:欧龙无极香水\r\n  香调木质馥奇\r\n  特点:留香时间实在太短了，佛手柑的味道非常的突出，又加了一点的烟草，有一股淡淡的烟熏味。\r\n\r\n5.牌子:byredo无人区玫瑰\r\n  香调:辛辣东方\r\n  特点:精致不失质感，前调有一种辛辣感，散发后是玫瑰香味。\r\n', '2020-05-25 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('14', '颜九-日本药妆购物', '21', '2', '日本药妆购物\r\n1.	甲板\r\n牌子：SALONIA\r\n2.	包\r\n牌子：FENDI的法棍\r\n\r\n3.	围巾\r\n牌子：FENDI的法棍\r\n颜色：绿色大logo\r\n4.	腮红\r\n牌子：香奈儿 型号：140号\r\n5.	面霜\r\n牌子：香奈儿 系列：气泡水系列\r\n6.	免洗面膜\r\n牌子：香奈儿 系列：气泡水系列\r\n特点：不是非常好洗，用完后用化妆棉擦掉\r\n7.	口红\r\n牌子：香奈儿 型号：2020限量58号色红管\r\n特点：经典色，不会出错\r\n8.	护手霜\r\n牌子：香奈儿 型号：黑蛋、白蛋\r\n9.	妆前乳\r\n牌子：Bobbi Brown\r\n特点：非常滋润，后续底妆也非常服帖\r\n10.	眼唇卸\r\n牌子：碧柔\r\n11.	眼线笔\r\n牌子：KATE\r\n12.	粉底刷\r\n牌子：资生堂\r\n13.	旅行装（化妆水+面霜）\r\n牌子：珂润\r\n14.	面膜\r\n牌子：凡尔赛面膜\r\n15.	润唇膏\r\n	牌子：珂润\r\n16.	酵素\r\n牌子：日本 NIGHT DIET新谷酵素 系列：黄金加强版\r\n17.	眼线笔\r\n牌子：MSH 型号：深棕色\r\n18.	睫毛卷翘器\r\n牌子：松下 型号：EH-SE60\r\n', '2020-05-27 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('15', '彭特务-年终安利', '22', '2', '年终安利！化妆每一步最好用的单品！（2020年1月2号）\r\n1.	水透防晒乳\r\n牌子：ADDICTION\r\nSPF50+ PA++++\r\n特点：小众，很清爽，很保湿。不会泛油光，用在妆前不会搓泥。如果一般带妆一整天，整个妆容比较完整的这种，用SPF50+，防晒时长才够。因为用防晒值30左右的那种防晒霜，建议大家两三个小时补涂一下，但是妆完整，不方便补涂。\r\n2.	Fitme妆前乳\r\n牌子：美宝莲\r\n特点：好用、平价、不带防晒，保湿力度不错。同时使用感非常像那种让肌肤能够变得很平滑的毛孔隐形膏，但又比毛孔隐形膏滋润很多，底妆蛮服帖。\r\n3.	大师粉底液\r\n牌子：阿玛尼\r\n特点：通透的妆感，适合所有肤质，包容性非常强，一年四季都能用。涂完后的妆感永远都是一个很完美的底妆状态，干皮亲妈，整个妆感是亲肤的，没有什么负担感皮肤。它里面的成分比较养肤的，不用太担心闷痘的问题。它上脸之后完全能够感觉到这个粉质比其他很多粉底液都要细腻。它的质地蛮水的，流动性很强，但是它的遮瑕力度属于中上。通透的妆感，泛着丝缎光泽的感觉，非常的高级。\r\n4.	遮瑕液 \r\n牌子：无印良品\r\n色号：自然色\r\n特点：黑眼圈一定要靠比较黄的遮瑕类产品才能够把它的颜色拉回来，MUJI的自然色真的很黄。针对于既是青黑色又带点茶褐色的黑眼圈，它的第一层颜色调和可以遮得蛮好的。\r\n5.	遮瑕液\r\n牌子：无印良品\r\n色号：透亮色\r\n特点：透亮色更像是米色一点的那种感觉，蛮亮的黄。黑眼圈不是很夸张的，用这个颜色来遮挺好的。\r\n6.	遮瑕液\r\n牌子：得鲜 (the saem)\r\n色号：1.5\r\n特点：万能，遮痘痘、遮痘印，鼻翼两边无压力。得鲜的遮瑕力要比无印良品强。\r\n7.	遮瑕液\r\n牌子：得鲜 (the saem)\r\n色号：提亮色\r\n特点：很亮的一个偏粉的颜色，偏粉的颜色对于泪沟提亮的效果很好。\r\n8.	HD高清散粉\r\n牌子：MAKEUP FOREVER\r\n特点：定妆效果强，一整天不会脱妆。\r\n9.	高光PK107\r\n牌子：资生堂（SHISEIDO）\r\n特点：散粉会吃掉一点粉底液的光泽，泪沟会出来一点点，用它补在泪沟处。新版没有旧版好用，新版的蓝光太重了，尤其眼下位置多刷两下就很不自然。\r\n10.	鼻影 \r\n牌子：BBIA\r\n色号：last blush08\r\n特点：颜色自然，更偏灰棕调的阴影。\r\n11.	三色修容粉\r\n牌子：too cool for school\r\n特点：上色度不会一下就很尴尬很明显的一个色块。不显色，反而是它针对于亚洲人修容的优势，新手也不会担心，怎么刷它都不会轻易显得脸很脏。\r\n12.	砍刀眉笔\r\n牌子：橘朵（Judydoll）\r\n色号：苔绿色\r\n特点：颜色特别自然，软硬度适中，画毛流很流畅\r\n13.	衰败城市眼影盘\r\n牌子：UrbanDecay\r\n特点：通用，前面整体是南瓜色系，后面有红色系和深色系。\r\nPS：画眼影的万能公式：\r\n	先用接近肤色的一个色打底（从右往左数第二个），找准你眼窝的位置大范围的打底，均匀的晕染开来，也可以带到我们的下眼睑，然后再选择一个同色系较深一点的颜色，在眼部的后三分之一这个位置可以开始化三角形，但是一定要注意晕染范围千万不要超过你的眼窝，可以顺着你自己的眼形往后面捎带一点点出来，不要忘记涂下眼睑的位置，同样还是蘸取这个颜色叠到你下眼睑睫毛这里，叠细一点，相当于加深一个睫毛阴影的感觉。同样在我们的眼头这里也是要来一点点。最后选一个你比较喜欢的亮片颜色填在你的眼部中央这个位置，包括眼睛下面这里可以带点点，有一个联结性。用眼影盘里最浅的一个颜色扫卧蚕，眉骨提亮。\r\n14.	极细眼线胶笔\r\n牌子：KATE\r\n色号：BR-1\r\n特点：非常自然，笔触很顺滑。\r\n15.	假睫毛\r\n牌子：米秦（MQIN）\r\n特点：一根一根超自然\r\n16.	下睫毛膏\r\n牌子：UNUY\r\n特点：无中生有\r\n17.	眼线笔\r\n牌子：BIBO\r\n色号：白色\r\n18.	水晶腮红\r\n牌子：无印良品\r\n色号：橘色\r\n特点：这一块淡淡的橘色真的很好看，尤其是当你画这种比较南瓜色一点的眼妆。\r\n19.	雾面口红\r\n牌子：岳晓琳\r\n色号：111\r\n特点：打底，特别特别好看，非常的日常，非常的百搭，偏橘棕调的，微微的吃土但是不会那么土。\r\n20.	小黑方柔雾唇膏\r\n牌子：植村秀\r\n色号：AM BG963\r\n特点：非常正的胡芦卜色。\r\n', '2020-05-01 00:00:00', null, '1', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('16', '彭特务-行李箱的宝贝|不带必后悔！60斤的行李箱到底装了什么？', '22', '2', '行李箱的宝贝|不带必后悔！60斤的行李箱到底装了什么？\r\n没有什么护肤品彩妆品之间的种草，都是出门旅行或者出差可以带的一些比较实用的好物。\r\n1.	隔脏睡袋\r\n特点：一个小袋子里面相当于装的是单人的床上三件套，只不过它的床单、被单包括枕套都是连在一起的，所以折起收纳时也特别的方便。\r\n2.	便携式熨烫机\r\n牌子：飞利浦\r\n特点：完全不漏水，密封性很好。它的蒸汽是可控的，按按钮时才会出蒸汽。熨烫面积很大，所以说哪怕熨烫一些冬天的毛衣或者是外套都是ok的。真的很便携，很小巧。\r\n3.	蒸汽发膜\r\n牌子：欧莱雅\r\n特点：它是一个雨水自热的蒸汽发膜，它的发膜精华蛮浓稠，量比较多，味道很香的。\r\n4.	一次性内裤\r\n牌子：全棉时代\r\n特点：卫生、方便\r\n5.	UNIX卷发棒\r\n特点：短发妹子必备，质量超级好。\r\n6.	游泳收纳包\r\n特点：防水，大、能装\r\n', '2020-05-03 00:00:00', null, '1', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('17', '彭特务-“姨妈神器”,从此告别“多喝热水”', '22', '2', '“姨妈神器”,从此告别“多喝热水”（2019-12-8）\r\n雷区1：姨妈期间喝红糖水\r\n对于月经量少，月经不通畅，出现血块这类的痛经情况来看，喝红糖水OK，因为红糖具有活血化瘀作用。但是，对于月经量很多的女生来说，来大姨妈的时候就别喝红糖水了，不然会让你淋漓不净，大范围的血崩。如果你是量大还会痛经的girl，那建议算好时间，在经期前和红糖水祛寒暖宫，而不是来了再喝。\r\n雷区2：姨妈期间吃巧克力\r\n姨妈期间食欲大减，用别的方法来适当补充能量是OK的，但是女生在经期不建议吃巧克力，热量太高，容易加重经期烦躁不安的情绪，加重经期胸部的胀痛感，甚至还会加重子宫内的淤血，导致月经不易排出。\r\n雷区3：认为止痛药副作用大\r\n痛经一个月就一次，一次顶多维持三天，一般是第一天或者第二天特别疼。一个月一两片的计量是完全可以被代谢掉的。相反，痛经千万不要瞎忍，忍是会忍出病来的。\r\n\r\n外用产品\r\n1.	暖宝宝\r\n特点：加点生姜精油就变成了暖宫贴\r\n2.	暖宫带\r\n特点：有异物感，只能发热，按摩鸡肋\r\n3.	泡脚包\r\n特点：有助于减肥和入眠\r\n\r\n内服产品\r\n1.	布洛芬止痛药\r\n牌子：布洛芬\r\n特点：在痛经即刻马上就能有效，不过效果因人而异\r\n2.	EVE止痛药\r\n牌子：EVE\r\n特点：它不像传统止痛药有传统止痛药的副作用，它几乎是可以忽略的，痛经不是很严重的妹子可以使用。\r\n3.	拜尔痛经药\r\n牌子：拜尔\r\n特点：很难买，但是药效最明显，20分钟内见效，强推给痛起来要命的女生\r\n\r\n从根源上消灭痛经：\r\n规范自己的饮食作息，别熬夜，少吃生冷寒性的食物\r\n', '2020-05-05 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('18', '彭特务-精准修容', '22', '1', '如何针对自己的脸型精准修容？（2019-11-24）\r\n一．	修容产品的选择（质地、颜色等）\r\n不同的修容质地，使用的顺序是不同的，不然修容还没有到位，斑驳和脱妆先来。\r\n质地：\r\n所有的膏状、液体类都要用在定妆前，而粉状的修容用在定妆后。\r\n产品颜色：\r\n一定是冷灰棕最自然，古铜粉偏黄的颜色一定要避开。\r\n二．	五官如何修容（鼻子、下巴等）\r\n鼻子：\r\n我们把结构大致分为三个部分，山根和眼窝的过度交界处、山根鼻梁处以及鼻头。\r\n使用TOO COOL　FOR SCHOOl三色修容\r\n1.	打造山根\r\n蘸取一个比较浅的色粉，顺着我们眼窝凹陷处，一定是画曲线做一个比较自然的过渡\r\n2.	画鼻梁\r\n我们把两边的阴影修成三角形，视觉上会有一种往里收并且高挺的感觉，定在你要到鼻翼开始的地方，这样画一个小三角形\r\n3.	修饰鼻头\r\n鼻头就是一个原则，就是精致小巧，所以画一个敞口的V。如果说你的鼻子比较长那么这个V呢就可以不跟下面的鼻孔这里连住，往上画一点抬高我们鼻头的位置，相对的，如果你的鼻子比较短，那么这个V就可以画到下面一点跟我们鼻孔这里连着，视觉上增长你鼻子的长度。晕开的时候，你可以往鼻翼这样带有一点点，带一点自然过渡的阴影可以遮掉我们的宽鼻翼\r\n4.	高光\r\n使用MAC 生姜高光\r\n就在我们的驼峰还有鼻尖的位置轻轻扫上就可以\r\n面部修容：\r\n第一：发际线高或者是额头长的人，可以在靠近发际线的位置扫上阴影粉，从整体视觉上面可以缩短我们额头的长度，如果感觉自己额头不够饱满我们就在眉心考上的位置，扫上一片提亮粉，建议选择哑光的高光。\r\n第二：颧骨非常重要。如果是颧骨很低的人，那么你可以直接在颧骨上扫高光让这块饱满起来。那么过高或者是过宽的颧骨就会显得脸长或者是脸大现在有一个很多人犯的误区就是喜欢直接把阴影打在颧骨下方，这个方法非常不适合高且大的颧骨，更不在颧骨上扫高光，正确的方法应该是在太阳穴这里的位置扫上哑光的提亮，然后呢在我们颧骨后半段这里的位置增加阴影，视觉上它会减弱你颧骨的突出，斜着扫的话是会消弱它的高度弥补咱们太阳穴凹陷的这个缺点。\r\n第三：对于面中部扁平的妹子，尤其是一些苹果肌比较塌，有泪沟的。用比较提亮色的遮瑕，就是比你肤色要亮的，在眼下面中的这块位置，画一个三角形这样，其实可以稍微带到一点我们的法令纹附近这里，然后我们用粉扑把它晕开，用遮瑕的话比直接扫高光要自然的多。\r\n第四：下颌线以及下巴的地方。如果你是下颌骨很宽这里的肉比较多，看起来有点偏方的脸型，在下颌骨最宽地方的上面和下面，用阴影粉画三角形，然后把它们晕染开来，而不是在整个宽的下颌骨一通乱扫。如果你是下颌骨失踪，下颌骨像被削掉了一样的脸型，一是在你的这个地方补一点点的哑光高光。第二从颧骨的后侧去扫，视觉上这个颧骨会缩小一点点，让你的下半部分看起来没有那么窄。下巴太短或者没有下巴的，我们在下巴的两侧画三角，用充分利用下巴的肉，把他画成下巴的阴影部分，然后在下巴肉嘟嘟的这块下面位置点上高光。下巴太尖的人，那么就和没下巴的人呢正好相反，要在下巴的这坨肉下面扫上阴影，让整个下巴看起来没有那么的长。屁股下巴，就是下巴正中间这里有一条沟，可以画倒八字阴影，削弱一点方下巴的棱角感，然后在凹陷的地方补充高光。\r\n', '2020-05-07 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('19', '彭特务-“美眉”宝典，解决你对眉毛的所以疑惑！', '22', '1', '“美眉”宝典，解决你对眉毛的所以疑惑！\r\nPart1 眉部产品色号的选择（黑色、灰色、深棕色、卡其色等）\r\n保持头发和眉毛颜色的相近。一般市面上眉部产品的颜色大多分为黑色、灰色、深棕色、浅棕色，很多品牌为了让顾客的选择多样化，还细分出卡其色、深咖色、灰棕色等等。根据自己的发色来选的话，一般要浅一个度，这样即便下手没控制好也不至于看起来太凶。如果你的发色是比较纯正的黑色或者棕色偏深，那比较适合选择灰色和深棕色系；如果你的头发颜色偏浅、偏棕黄，那适合浅棕色或者亚麻色这一色系。按照冷暖分，以陈伟霆同款蓝，索大同款绿藻头为代表的冷色系发色，眉毛更适合灰黑色系；以海王老婆同款红发和韩国爱豆本命金发所代表的暖色系发色，眉毛更适合棕色系，深浅根据你的发色深浅来定；黑色是使用频率比较低的颜色，它更适合像欧美妆这样妆容存在感极强的妆面，日常不考虑。\r\nPart2 眉部产品如何挑选（眉笔、眉粉、染眉膏等）\r\n主流的眉部产品分为眉粉、眉笔、眉膏、染眉膏等。\r\n眉粉，适合新手和日常快速通勤，画出来的眉毛效果会更柔和，没有眉笔的那种棱角，有一种雾蒙蒙毛绒绒的感觉，而且对于新手的技术要求不高，评价推荐KATE 3D骨干眉粉（#EX-05），它有三个颜色就不用看你力度来控制深浅，当然也可以混合色，眉头浅，眉中眉尾深，可以画出很自然的过渡效果，当然你也可以一起通扫，这盘真的非常好上手不容易出错。而且最浅的这个颜色非常非常适合拿来作为自然的鼻影颜色。这最后两个颜色结合也特别适合拿来作为眼窝的一个轮廓的阴影色，真的是非常自然，但是可能对于油皮朋友来说持久度有点弱，没有办法就是眉粉通病。后续可以搭配染眉膏或者眉毛雨衣，能够更持久不容易脱妆。预算充足的朋友推荐毛戈平双色眉粉（#01 可可色+驼色）。价格有些小贵，但是这款是很多化妆师都在用的眉粉。\r\n眉笔，新手和专业选手都可以选择，一般分为极细的和有棱角的，极细的更容易画毛流感和精致眉形；有棱角的眉笔更适合大多数人，宽的地方可以用来填色，细的地方可以用来画线条。平价推荐卡其色彩，性价比超高，可以完全满足选择困难症和常换发色的妹子。它的笔芯是比较硬的，所以可以画出干净利落的线条。预算充足推荐Benefit防麻瓜眉笔（#04 自然色）针对新手设计的，外观超级好看，是五角星的笔头，笔尖可以勾勒毛流，宽面可以填色非常实用，最主要的是它是防水质地，长时间也不容易脱妆花妆，对油皮非常友好。\r\n眉膏，更适合画棱角分明以及弧度流畅的眉形，走欧美风、想画挑眉的可以选择眉膏，但是眉膏本身对于人的技术要求比较高，所以说不建议新手马上上手使用，平价眉膏推荐橘朵眉膏（#04 灰棕色），用的时候一定要少量多次地蘸取，画出来的线条也比较自然。小小的一罐很耐用的性价比非常高，不过他们家的刷子使用感一般。价格贵一点的推荐BENEFIT无色不作眉膏（#栗棕色）。它自带的刷子是扁平的，很容易画出笔直纤细的线条，栗棕色的颜色非常自然，不会怕上色过重。眉膏用完一定要记得盖紧瓶盖，否者非常容易干掉，不过干掉的话可以加一两滴油或者是乳液调和一下。\r\n染眉膏，刷染眉膏一定要注意顺着眉毛生长方向往眉尾涂，尽量不要反复刷，否则任何染眉膏都容易结块，因为它干的速度是很快的，你选对颜色的话，整个妆感都会比较自然。贵一点的推荐植村秀染眉膏，海胆头，一侧短，一侧长，可以根据不同的眉毛长度选择。染眉膏有一个很重要的作用就是防水、防汗，非常持久，不容易脱妆。\r\nPart3 不同脸型如何画眉（标准脸、方脸、长脸、圆脸、心形脸等）\r\n	标准脸\r\n万能公式三点法：定好眉头，鼻翼与内眼角延长线，眉峰瞳孔外侧的延长线上眉毛长度的2/3处，眉尾鼻翼与外眼角延长线上，注意眉头眉尾，大约在同一水平线上，眉尾一定要高于眉头。用眉笔的宽面，先大致跟着三点的位置填色，不用非常仔细，只用勾勒出一个大概的轮廓。然后用尖面顺着眉毛的生长方向，画出毛流感，一根一根，一定要根根分明，千万不要心急。觉得有画重或者有结块的地方用眉刷轻轻刷淡颜色就好了，想强调一下轮廓感，可以再加深一下眉尾。\r\n长脸型\r\n比细细的标准眉要稍粗一些，眉尾的位置要加长，从而中和掉长脸显脸长的纵向视觉。大概意思就是画一个圆润饱满的一字眉，给人比较清和的感觉。\r\n圆脸型\r\n圆脸型的缺点就是五官不分明，所以圆脸的妹子可以把眉峰挑高。高眉峰和眉尾落差明显，可以修饰我们的扁平脸型，打造立体感，视觉上圆脸型也会被拉长一些。\r\n方脸型\r\n方脸的女生千万不要把眉毛画的平平短短的，那样会让脸看起来更方，方脸的眉峰还是要拉高的，因为要既然显得脸长一些，但是呢，不会像圆脸这么挑，并且眉峰的位置要稍微圆润一点，减弱方脸的硬朗感，使脸部线条更加柔和，眉尾的位置要高于眉头。\r\n菱形脸\r\n菱形脸在方形脸的基础上，眉峰要更靠前，更弯一些。因为菱形脸的眉形要整个弯弯的，像弯月眉一样的感觉，不能有很明显的眉峰，这样才可以不让注意力落到宽颧骨上，整张脸给人的感觉会更加柔和一些，如果菱形脸的基础画欧美挑眉的话，就显得太刻薄了。\r\n心形脸\r\n心形脸就是那种有美人尖的脸，超级适合带点古风韵味的柳叶眉，千万不要画出什么棱角。细长弯弯的柳叶眉，从视觉上缩短我们的额头宽度，秀气又好看。\r\n', '2020-05-09 00:00:00', null, '0', null, null, null, null, null, null, null, '1');
INSERT INTO `blog` VALUES ('20', '彭特务-月度爱用物', '22', '2', '月度爱用物分享（2019-10-30）\r\n1.	金钻粉底液\r\n牌子：娇兰\r\n色号：00号\r\n特点：它挤出来的质地，就是这种很水润、很丝滑，非常容易推开。娇兰的特有香味太爱了，非常好闻。它的成分，是有添加六钛和没药提取物的一个配方，就是一个比较养肤的成分。经常过敏的敏感肌、痘痘肌肤都是可以比较放心使用。00色号，觉得它还算是一个蛮match亚洲女性，黄一白肌肤的一个色号吧。用这个粉底液大大减少上妆时间。它就是那种短时间内，你用个粉扑都能达到专业底妆刷刷出那种均匀服帖又融合得非常自然的妆效。非常高保湿，非常高遮瑕，而且并不会有假面感。没有定妆前的妆面是呈现出一种非常有光泽感的奶油肌，完全不用担心卡粉，上完妆不会觉得很闷。\r\n2.	四色眼影\r\n牌子：ROMAND\r\n色号：#01\r\n特点：Step1：淡米色打底\r\n      Step2：蜜桃粉加深眼尾\r\n     	  Step3:闪片涂在双眼皮中央稍往后拉\r\n3.	假睫毛\r\n牌子：月儿公主\r\n型号：G5-29\r\n4.	果汁唇釉\r\n牌子：ROMAND\r\n色号：#07、#08\r\n特点：这个唇釉涂法一直抿。08号色，有粉色调的一个珊瑚橘色，它会让整个妆容看起来非常元气的感觉。07号色，是一种很水蜜桃的粉，带点荧光，一定要抿开，抿开后的边缘渐变色非常的好看。但是是有点染唇的效果。\r\n5.	发之食谱洗发水\r\n牌子：HAIR RECIPE\r\n香型：苹果\r\n特点：养生健发，滋润柔顺\r\n6.	烟酰胺香水身体乳\r\n牌子：BIGEVE\r\n特点：烟酰胺美白，成分中有对敏感肌非常友好的成分，SymCalmin，可以非常有效的舒缓像皮肤敏感引起的起皮瘙痒。它的质地非常滋润，但是并不厚重。平价大腕好用，既能保湿美白还能拥有一款新香水。\r\n吐槽\r\n1.	口红\r\n牌子：妙巴黎\r\n色号：#09，#16\r\n特点：09，一个芭比粉的颜色，非常的荧光，对黄皮非常的不友好，干掉之后，很浮于表面。16，薄涂一点颜色也没有，带有荧光感，对亚洲皮肤不友好\r\n', '2020-05-11 00:00:00', null, '1', null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blogid` int(11) DEFAULT NULL,
  `cmtid` int(11) DEFAULT NULL COMMENT 'reply another comment',
  `comment` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `likenum` int(11) DEFAULT '0',
  `del_flag` tinyint(1) DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`),
  KEY `fk_cmt_user` (`userid`),
  KEY `fk_cmt_blog` (`blogid`),
  KEY `fk_cmt_cmt` (`cmtid`),
  CONSTRAINT `fk_cmt_blog` FOREIGN KEY (`blogid`) REFERENCES `blog` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_cmt_cmt` FOREIGN KEY (`cmtid`) REFERENCES `blog_comment` (`id`),
  CONSTRAINT `fk_cmt_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES ('1', '14', '1', null, '刚把手里的粉底液用完想着换个试试就看见这条视频了', '2020-05-01 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('2', '19', '1', null, '我有这个！本油气真爱啊啊啊啊啊啊啊啊啊啊！！！！！真的特别特别好用，干的特快，要注意上妆速度和手法，特别贴肤，持久度很好，妆感很好，不太暗沉，绝美！', '2020-05-02 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('3', '20', '1', null, '实不相瞒 我化妆届手残党本党', '2020-05-03 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('4', '23', '1', null, '九，你就说吧，我来的早不早？', '2020-05-04 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('5', '24', '1', null, '第wu！也算！抢前排！', '2020-05-05 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('6', '28', '1', null, '九，防晒和隔离打一下', '2020-05-06 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('7', '23', '5', null, '今年夏天我真的用空了俩防晒了', '2020-05-07 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('8', '24', '5', null, '学生党舅舅，KiKO的粉饼和悦诗风吟的散粉必须安排上', '2020-05-08 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('9', '25', '5', null, '我刚才还在另一个号催挖草机[允悲]。。。然后现在阿九就发了', '2020-05-09 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('10', '26', '5', null, '九九，可不可以推荐一下好用的去角质洗面奶', '2020-05-10 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('11', '27', '5', null, '可以详细说一下那个kiko的粉饼吗，最近真的有想入手的冲动，但是好多不好的评价啊', '2020-05-11 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('12', '28', '2', null, '颜九是不是瘦了！', '2020-05-12 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('13', '29', '2', null, '天啊这次红榜真的好优秀 我看到一半就让他们入了我的购物车了!', '2020-05-13 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('14', '30', '2', null, '阿九果然一如既往的——不买削笔刀。见光就发亮的口红我懂(欧莱雅的小贝壳系列也是这样的)', '2020-05-14 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('15', '31', '2', null, '呜呜呜昨天发现口红坏了一支 全画化妆包里了', '2020-05-15 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('16', '32', '2', null, '在墙头上疯狂试探', '2020-05-16 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('17', '33', '3', null, 'ruby woo必须人手一支！精致猪猪女孩的必备！万年回购色不多说了！', '2020-05-17 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('18', '34', '3', null, '干了这杯蓝调口红', '2020-05-18 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('19', '35', '3', null, '我是铁粉', '2020-05-19 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('20', '36', '3', null, 'Mac圣诞限定立马安排起来！！', '2020-05-20 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('21', '37', '3', null, '真的绝美 ', '2020-05-21 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('22', '38', '4', null, '钱已经准备好了，一半买买买，一般请朋友出去大吃大喝', '2020-05-22 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('23', '39', '4', null, '买过kiko4系列，显色度很高，贫民窟女孩经常用', '2020-05-23 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('24', '40', '4', null, '看完了，好认真的九，我的钱包捂又不住了', '2020-05-24 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('25', '42', '4', null, '阿九真的是让我们一分钱都不会多花', '2020-05-25 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('26', '41', '4', null, '九九九九九！想看植村秀小黑管！！王一博代言的！！！', '2020-05-26 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('27', '27', '6', null, '阿玛尼真的好看！冲啊', '2020-05-27 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('28', '26', '6', null, '为了弟弟买就完事', '2020-05-28 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('29', '25', '6', null, '买它！', '2020-05-29 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('30', '24', '6', null, '吃土棕色叠涂芭比粉荧光色有奇效！我热情推荐！也不荧光了，很适合秋冬的', '2020-05-30 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('31', '23', '6', null, '颜·真自己踩死雷也不要粉丝踩·九', '2020-05-31 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('32', '28', '7', null, '山茶花系列这么绝了我爱死了', '2020-06-01 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('33', '29', '7', null, '呜呜呜香奈儿山茶花系列都好喜欢', '2020-06-02 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('34', '30', '7', null, '我既要做千玺的红管女孩，也要做我九的开年幸运girl！', '2020-06-03 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('35', '31', '7', null, '我好了，种草了雅顿的橘灿精华', '2020-06-04 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('36', '32', '7', null, '香奈儿粉底液真的是油皮最爱', '2020-06-05 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('37', '33', '8', null, '哈哈哈哈哈哈哈哈全程高能', '2020-06-06 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('38', '34', '8', null, '哈哈哈哈啊哈哈 不行 我先笑为敬', '2020-06-07 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('39', '35', '8', null, '年度迷惑行为大赏', '2020-06-08 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('40', '36', '8', null, '但是我为什么觉得那个口红和口红纸的颜色挺好看的', '2020-06-09 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('41', '38', '8', null, '哈哈哈哈哈哈气球安排', '2020-06-10 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('42', '37', '9', null, '让我们来康康本期挖草机又有啥可以种草的', '2020-06-11 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('43', '38', '9', null, '那个小精灵牙膏好可爱，想要！九啊，可以去你店铺买么', '2020-06-12 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('44', '39', '9', null, '在国外现在买不到完美日记，小粉钻看颜色', '2020-06-13 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('45', '40', '9', null, '完美日记真的让人又爱又爱', '2020-06-14 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('46', '41', '9', null, '结束了一个周的工作回来躺在床上而且！！！又能看九更的红黑榜？今天是什么神仙日子？', '2020-06-15 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('47', '41', '10', null, '我的化妆刷就是我的黄金右手', '2020-06-16 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('48', '42', '10', null, '为了让自己下定决定认真学化全妆，特别买了一套很好看的刷子，自认为我可以。but鉴于也对自己认识的不清晰，所以我目前为止只用到了一只眉刷，是用来画眉毛的，使用频率也是极其低', '2020-06-17 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('49', '40', '10', null, '终于看到了化妆刷了', '2020-06-18 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('50', '39', '10', null, '啊啊啊啊我喜欢这期主题！', '2020-06-19 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('51', '38', '10', null, '化妆刷认准我们大沧州', '2020-06-20 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('52', '37', '11', null, '用卸妆水打扫卫生  感觉好奢侈呀', '2020-06-21 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('53', '38', '11', null, '我觉得最后没卷头发好好看！！', '2020-06-22 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('54', '36', '11', null, '九，我一直在想你的口红到底在哪里', '2020-06-23 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('55', '35', '11', null, '也太好看了吧！还学到了很多小技巧啊，我一直用的是dhc卸妆油，准备用完试试阿九的这款卸妆水！最近爱用的好物还有个减围度的平价仪器，成功帮我减了大象腿！', '2020-06-24 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('56', '34', '11', null, '啊啊啊啊啊啊我来晚了', '2020-06-25 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('57', '33', '12', null, '：哇！品牌爸爸们送的pr礼盒也太好看了吧！我可了', '2020-06-26 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('58', '32', '12', null, '九九也是一直加油呀～爱你', '2020-06-27 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('59', '31', '12', null, '太过瘾了 每一次的公关开箱都令我惊叹', '2020-06-28 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('60', '14', '12', null, '品牌霸霸们看上阿九，眼光真好', '2020-06-29 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('61', '19', '12', null, '想拥有！', '2020-06-30 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('62', '30', '13', null, '大吉岭茶我可以！！', '2020-07-01 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('63', '29', '13', null, '图书馆座位对面的男孩子，喷的爱马仕大地和范思哲的同名男士，好闻到晕倒', '2020-07-02 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('64', '28', '13', null, '作为学生 只闻过无敌香又腻又廉价的几十块的香水 真的很好奇海洋的香水以及花香调以外所有的香水是什么味道  九有没有在街上的精品店遇到的好闻的香水', '2020-07-03 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('65', '27', '13', null, '九对这些香水的形容简直是追星少女马上就理解的', '2020-07-04 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('66', '25', '13', null, '颜九是我肚子里的蛔虫吗！！我最近刚好想买香水！！！这也太及时了叭', '2020-07-05 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('67', '26', '14', null, '女人的钱是怎么没的？化妆品，衣服，彩妆都得买它就没了。', '2020-07-06 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('68', '28', '14', null, '晚上临睡前在被窝看阿九的快乐，与冬天泡脚一个感觉', '2020-07-07 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('69', '24', '14', null, '女生都会这样，满送和满减都控制不住自己要再买一点', '2020-07-08 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('70', '23', '14', null, '我这两天的日常就是买快递 收快递 拆快递', '2020-07-09 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('71', '25', '15', null, '特务的年终安利走过路过不要错过好吗', '2020-07-10 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('72', '26', '15', null, '哇哈年终安利 你终于来了美女', '2020-07-11 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('73', '27', '15', null, '特务Kate的双头眼线笔可以了解一下，一边是眼线胶笔，一边是眼线液笔，颜色真的无敌自然！！出门带一只双头眼线笔超级方便der(*•̀ᴗ•́*)و ̑̑', '2020-07-12 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('74', '28', '15', null, '我有一个问题！假睫毛贴在自己的睫毛上面还是那边还是下面那边', '2020-07-13 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('75', '29', '15', null, '姐姐的新发色好乖哦 hhhhh 2020 我可以再期待一个长发特务嘛', '2020-07-14 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('76', '30', '16', null, '那个碎刘海能搞成这个样子我太服了', '2020-07-15 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('77', '31', '16', null, '那个卷发棒哪里可以买', '2020-07-16 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('78', '32', '16', null, '出门出差旅行，行李箱带什么最方便？', '2020-07-17 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('79', '33', '16', null, '想看你拍化妆刷合集！！', '2020-07-18 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('80', '34', '16', null, '求发胶是什么牌子的', '2020-07-19 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('81', '35', '17', null, '那么这不痛经的人生是非常值得珍惜了，谢谢', '2020-07-20 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('82', '36', '18', null, '有平价好用修容推荐吗！适合学生党的！', '2020-07-21 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('83', '37', '19', null, '呜呜呜我真的特别特别需要关于眉毛的', '2020-07-22 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('84', '38', '17', null, '从来不痛的小孩，昨天在长春被冻得痛到走不会寝室', '2020-07-23 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('85', '39', '17', null, 'eve赛高！！！（吃完这片止疼药我又是一条好汉！', '2020-07-24 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('86', '40', '17', null, '以前来姨妈，只要放假在家，我自己都是靠硬扛，姨妈痛+胃难受，我基本上不吃不喝在床上躺两天（因为吃什么吐什么），那种感觉真的是感觉自己会猝死~现在上班可没法躺着过姨妈，所以一片布洛芬，会让自己轻松度过姨妈期。（主要是也信了别人说的止痛药吃多了不好，现在才知道硬抗才真的是不好）', '2020-07-25 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('87', '41', '17', null, 'Naprogesic吃多了量会少。。。吃过4年的人的经验之谈', '2020-07-26 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('88', '42', '18', null, '修容废柴来报个到，作业交不交取决于我的手', '2020-07-27 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('89', '23', '18', null, '看了视频发现 我的妆容没有那么动人是有原因的！！！我颧骨到下颚之间有一点点凹陷 因为我下颚有点点宽 害！我要去买不是哑光的高光了！气死我了！', '2020-07-28 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('90', '24', '18', null, '终于等到修容啦，爱宁(⑉°з°)-♡我不是第一，但我想被翻牌', '2020-07-29 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('91', '25', '18', null, '下巴高光有推荐吗', '2020-07-30 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('92', '26', '18', null, '听是听懂了，就是手不听话。问下资生堂pk107和wt905有啥区别', '2020-07-31 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('93', '27', '19', null, '我昨天看了河东狮吼的张柏芝的眉型，就是前边直直的很锋利，但是在最后还有眉峰和下沉，显得格外英气又美！', '2020-08-01 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('94', '28', '19', null, '妈耶，整张脸除了阴影高光基本最难画的就非眉毛莫属了', '2020-08-02 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('95', '33', '19', null, '眉毛必须先去下狠手修，最好去美容院美甲店什么的，一定得跟她说你平时画眉毛，不然她就只帮你修修小杂毛，还是没有眉形。只要修出眉形，特别好上手', '2020-08-03 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('96', '34', '19', null, '真的是超级大干货！！！看完特务的情报，感觉自己真的是个眉毛菜鸟[允悲][允悲]怎样才可以像特务一样化出野生眉的效果呀，太好看了', '2020-08-04 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('97', '35', '20', null, '最爱一个是开箱一个就是爱用物！', '2020-08-05 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('98', '27', '20', null, '彭姐的睫毛真的是我爱了！希望我可以学会它！', '2020-08-06 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('99', '28', '20', null, '这个唇色真好看！', '2020-08-07 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('100', '40', '20', null, '特务的爱用物都好nice', '2020-08-08 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('101', '41', '20', null, '巴黎涂上并没有你说的那么难看', '2020-08-09 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('102', '42', '20', null, '洗发水是花花代言的!!!!双十一要入手了!', '2020-08-10 00:00:00', '0', '1');
INSERT INTO `blog_comment` VALUES ('103', '4', '8', null, '这是一条普通评论。', '2020-05-05 04:42:01', '0', '1');
INSERT INTO `blog_comment` VALUES ('104', '5', '8', '103', '这是普通评论的回复。', '2020-05-05 04:42:47', '0', '1');
INSERT INTO `blog_comment` VALUES ('105', '6', '8', '104', '这是回复的回复。', '2020-05-05 04:43:09', '0', '1');
INSERT INTO `blog_comment` VALUES ('106', '2', '8', '103', '这是普通评论的另一条回复。', '2020-05-05 04:43:45', '0', '1');
INSERT INTO `blog_comment` VALUES ('107', '4', '8', '105', '这是回复的回复的回复。', '2020-05-05 04:44:55', '0', '1');
INSERT INTO `blog_comment` VALUES ('108', '6', '8', '103', '这是普通评论的又一条回复。', '2020-05-05 04:45:33', '0', '1');
INSERT INTO `blog_comment` VALUES ('109', '4', '8', null, '这是另一条普通评论。', '2020-05-05 04:50:11', '0', '1');
INSERT INTO `blog_comment` VALUES ('110', '5', '8', '109', '这是另一条普通评论的回复。', '2020-05-05 04:50:36', '0', '1');
INSERT INTO `blog_comment` VALUES ('111', '6', '4', null, 'test cmt 0507 1321', '2020-05-07 13:21:44', '0', '1');

-- ----------------------------
-- Table structure for blog_star
-- ----------------------------
DROP TABLE IF EXISTS `blog_star`;
CREATE TABLE `blog_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blogid` int(11) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_star_user` (`userid`),
  KEY `fk_star_blog` (`blogid`),
  CONSTRAINT `fk_star_blog` FOREIGN KEY (`blogid`) REFERENCES `blog` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_star_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_star
-- ----------------------------
INSERT INTO `blog_star` VALUES ('1', '2', '1', '2020-04-29 23:13:43');
INSERT INTO `blog_star` VALUES ('2', '2', '2', '2020-04-29 23:13:50');
INSERT INTO `blog_star` VALUES ('3', '2', '3', '2020-04-29 23:13:58');

-- ----------------------------
-- Table structure for blog_type
-- ----------------------------
DROP TABLE IF EXISTS `blog_type`;
CREATE TABLE `blog_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_type
-- ----------------------------
INSERT INTO `blog_type` VALUES ('1', '美妆教程', '1');
INSERT INTO `blog_type` VALUES ('2', '物品分享', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roleid` int(11) NOT NULL DEFAULT '2' COMMENT '2,user',
  `sex` tinyint(1) DEFAULT '1' COMMENT '1,male; 0,female',
  `birthday` datetime DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `introdution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profileimg` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`),
  KEY `fk_rolw` (`roleid`),
  CONSTRAINT `fk_rolw` FOREIGN KEY (`roleid`) REFERENCES `user_role` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('2', 'user', 'user', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('3', 'uploader', 'uploader', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('4', 'testuser', '000000', '2', '0', null, null, null, null, '1');
INSERT INTO `user` VALUES ('5', 'testuser1', '111111', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('6', 'testuser2', '222222', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('7', 'testup', '000000', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('8', 'testup1', '111111', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('9', 'testup2', '222222', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('10', 'testadmin', '000000', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('11', 'testadmin1', '111111', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('12', 'testadmin2', '222222', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('13', 'Ozwell E. Spencer', 'laotou', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('14', 'Jill valentine', 'jier', '2', '0', null, null, null, null, '1');
INSERT INTO `user` VALUES ('15', 'Alex Wesker', 'alex', '1', '0', null, null, null, null, '1');
INSERT INTO `user` VALUES ('16', 'Annette Birkin', 'yani', '1', '0', null, null, null, null, '1');
INSERT INTO `user` VALUES ('17', 'William Birkin', 'weilian', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('18', 'Daniel Fabron', 'wuyifan', '1', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('19', 'Valerie Harmon', 'naima', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('20', 'Carlos Oliveira', 'kaluosi', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('21', '颜九', 'yanjiu', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('22', '彭特务', 'pengtewu', '3', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('23', '哈心儿', '11111111', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('24', '齐鸣楠', '22222222', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('25', '其来呀', '33333333', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('26', '纸盒子、', '44444444', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('27', '知识就是知识', '5555555', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('28', '呜啦啦理论', '666666', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('29', '快乐快乐柠檬', '777777', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('30', '又是不想工作的一天', '888888', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('31', '偶是个懒人', '999999', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('32', '米津上头', '101010', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('33', '玄师太耍啦', '111112', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('34', '五一我拒绝出门了', '121212', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('35', '我没啥名起了', '131313', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('36', '老夫了老夫', '141414', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('37', '老狐狸帧可爱', '151515', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('38', '叭叭叭闪人', '161616', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('39', '小泡泡', '171717', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('40', '偏爱葱', '181818', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('41', '葱葱绿得真可爱', '191919', '2', '1', null, null, null, null, '1');
INSERT INTO `user` VALUES ('42', '嗷呜，撒回过头来', '202020', '2', '1', null, null, null, null, '1');

-- ----------------------------
-- Table structure for user_follow
-- ----------------------------
DROP TABLE IF EXISTS `user_follow`;
CREATE TABLE `user_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followerid` int(11) NOT NULL,
  `uploaderid` int(11) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_follower` (`followerid`),
  KEY `fk_uploader` (`uploaderid`),
  CONSTRAINT `fk_follower` FOREIGN KEY (`followerid`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_uploader` FOREIGN KEY (`uploaderid`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_follow
-- ----------------------------
INSERT INTO `user_follow` VALUES ('1', '1', '3', '2020-04-29 22:35:56');
INSERT INTO `user_follow` VALUES ('2', '2', '3', '2020-04-29 22:36:12');
INSERT INTO `user_follow` VALUES ('3', '4', '3', '2020-04-29 22:36:22');
INSERT INTO `user_follow` VALUES ('4', '2', '7', '2020-04-29 22:43:56');
INSERT INTO `user_follow` VALUES ('5', '2', '8', '2020-04-29 22:44:08');
INSERT INTO `user_follow` VALUES ('6', '2', '9', '2020-04-29 22:44:18');
INSERT INTO `user_follow` VALUES ('7', '2', '21', '2020-05-07 03:22:13');
INSERT INTO `user_follow` VALUES ('8', '2', '22', null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'default: 1, not deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', 'admin', '1');
INSERT INTO `user_role` VALUES ('2', 'user', '1');
INSERT INTO `user_role` VALUES ('3', 'uploader', '1');

-- ----------------------------
-- View structure for upblogstars
-- ----------------------------
DROP VIEW IF EXISTS `upblogstars`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `upblogstars` AS select `blog`.`userid` AS `upid`,`blog`.`id` AS `blogid`,count(0) AS `stars` from (`blog` join `blog_star` on((`blog`.`id` = `blog_star`.`blogid`))) group by `blog`.`id` ;

-- ----------------------------
-- View structure for upfans
-- ----------------------------
DROP VIEW IF EXISTS `upfans`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `upfans` AS select `user_follow`.`uploaderid` AS `uploaderid`,count(0) AS `COUNT(*)` from `user_follow` group by `user_follow`.`uploaderid` ;

-- ----------------------------
-- Procedure structure for dowhile1
-- ----------------------------
DROP PROCEDURE IF EXISTS `dowhile1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dowhile1`()
BEGIN
	DECLARE i INT DEFAULT 1;
  DECLARE num INT DEFAULT 1;

  WHILE num < 32 DO
		SELECT i;
		UPDATE blog_comment SET createtime= CONCAT( "2020-05-" ,i,' 00:00:00'	) WHERE id=num;
		SET i=i+1;
    SET num = num + 1;
  END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dowhile2
-- ----------------------------
DROP PROCEDURE IF EXISTS `dowhile2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dowhile2`()
BEGIN
	DECLARE i INT DEFAULT 1;
  DECLARE num INT DEFAULT 32;

  WHILE num < 63 DO
		SELECT i;
		UPDATE blog_comment SET createtime= CONCAT( "2020-06-" ,i,' 00:00:00'	) WHERE id=num;
		SET i=i+1;
    SET num = num + 1;
  END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dowhile3
-- ----------------------------
DROP PROCEDURE IF EXISTS `dowhile3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dowhile3`()
BEGIN
	DECLARE i INT DEFAULT 1;
  DECLARE num INT DEFAULT 62;

  WHILE num < (62+31+1) DO
		SELECT i;
		UPDATE blog_comment SET createtime= CONCAT( "2020-07-" ,i,' 00:00:00'	) WHERE id=num;
		SET i=i+1;
    SET num = num + 1;
  END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dowhile4
-- ----------------------------
DROP PROCEDURE IF EXISTS `dowhile4`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dowhile4`()
BEGIN
	DECLARE i INT DEFAULT 1;
  DECLARE num INT DEFAULT 93;

  WHILE num < (93+31+1) DO
		SELECT i;
		UPDATE blog_comment SET createtime= CONCAT( "2020-08-" ,i,' 00:00:00'	) WHERE id=num;
		SET i=i+1;
    SET num = num + 1;
  END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dowhile5
-- ----------------------------
DROP PROCEDURE IF EXISTS `dowhile5`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dowhile5`()
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE num INT DEFAULT 1;

  WHILE num < 15 DO
		SELECT i;
		UPDATE blog SET createtime= CONCAT( "2020-05-" ,i,' 00:00:00'	) WHERE id=num;
		SET i=i+2;
    SET num = num + 1;
  END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dowhile6
-- ----------------------------
DROP PROCEDURE IF EXISTS `dowhile6`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dowhile6`()
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE num INT DEFAULT 15;

  WHILE num < 21 DO
		UPDATE blog SET createtime= CONCAT( "2020-05-" ,i,' 00:00:00'	) WHERE id=num;
		SET i=i+2;
    SET num = num + 1;
  END WHILE;
END
;;
DELIMITER ;
