/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : chat

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-06-25 12:23:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ds_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ds_admin`;
CREATE TABLE `ds_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(32) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_admin
-- ----------------------------
INSERT INTO `ds_admin` VALUES ('1', 'admin', 'admin@dswjcms.com', '3993c767fb7bcaf4edce25cc317c536b', '1435106469');

-- ----------------------------
-- Table structure for `ds_article`
-- ----------------------------
DROP TABLE IF EXISTS `ds_article`;
CREATE TABLE `ds_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `published` tinyint(1) DEFAULT '1',
  `catid` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT '1',
  `order` int(11) DEFAULT '1',
  `access` tinyint(3) DEFAULT '1',
  `is_comment` tinyint(1) DEFAULT '0',
  `keyword` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `addtime` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_article
-- ----------------------------
INSERT INTO `ds_article` VALUES ('1', '1', '名词解释', '<div>\r\n	<h4 class=\"h4\">\r\n		<span>1. 借款用户（借款人）</span> \r\n	</h4>\r\n已经或准备在网站上进行借款活动的用户称为借款用户。凡22周岁以上的中国大陆地区公民，都可以成为借款用户。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>2. 理财用户（理财人）</span> \r\n	</h4>\r\n已经或准备在网站上进行资金出借活动并完成了实名认证、手机号码绑定和提现密码设置的用户称为理财用户。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span id=\"what-is-loan\">3. 标的 [biāo dì]</span> \r\n	</h4>\r\n指借款用户发布的包含其借款相关说明信息的借款申请。一个合格的标的内至少包含：标题、描述、借款用途、借款总额、还款方式、年利率、借款期限、招标期限等基本信息。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>4. 发标</span> \r\n	</h4>\r\n指借款用户发布借款标的的行为。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>5. 招标</span> \r\n	</h4>\r\n指标的通过审核进入到投资列表内，此时标的状态为招标。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>6. 投标</span> \r\n	</h4>\r\n指理财用户将其人人贷账户内指定的金额出借给指定的借款用户的行为。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>7. 满标</span> \r\n	</h4>\r\n指一个标的在招标期限内足额筹集到所需资金，等待放款的状态。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>8. 放款</span> \r\n	</h4>\r\n指一个标的满标后且已符合放款标准，该标的所筹资金从出借人账户转入借款人账户的过程，即借款人成功获得了借款。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>9. 流标</span> \r\n	</h4>\r\n指因资料上传不全或综合情况不符合借款要求，导致借款申请未通过，或超过招标期限但未满标的状态叫做流标。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>10. 逾期</span> \r\n	</h4>\r\n指借款用户未按协议约定时间进行足额还款，此时标的状态为逾期。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>11. 严重逾期</span> \r\n	</h4>\r\n逾期时间超过30天时，从第31天开始该标的状态为严重逾期（针对借款用户）。\r\n</div>\r\n<div>\r\n	<h4 class=\"h4\">\r\n		<span>12. 垫付</span> \r\n	</h4>\r\n指严重逾期的债权根据人人贷本金保障计划，由人人贷风险准备金代为偿还的动作，垫付完成后债权转移至本公司名下。\r\n</div>', '1', '28', '22', '1', '1', '0', '名词解释', '宁波天发网络是一家专注于借贷系统开发的网络公司', '1404352294');
INSERT INTO `ds_article` VALUES ('7', '7', '质押借款标介绍', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 质押贷款是指贷款人按《担保法》规定的质押方式以借款人或第三人的动产或权利为质押物发放的贷款。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	1、存单质押贷款：指借款人以贷款银行签发的未到期的个人本外币定期储蓄存单(也有银行办理与本行签订有<span class=\"wlink\">保证</span>承诺协议的其他金融机构开具的存单的<span class=\"wlink\">抵押</span>贷款)作为质押，从贷款银行取得一<span class=\"wlink\">定金</span>额贷款，并按期归还贷款本息的一种信用业务。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2、仓单质押贷款：指银行与借款人(出质人)、保管人(仓储公司)签订合作协议，以保管人签发的借款人自有或第三方持有的存货仓单作为质押物向借款人办理贷款的信贷业务。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	3、知识产权质押贷款：指以合法拥有的<span class=\"wlink\">专利权</span>、商标权、著作权中的财产权经评估后向银行申请融资。由于专利权等知识产权实施与变现的特殊性，目前只有极少数银行对部分中小企业提供此项融资便利，而且一般需由企业法定代表人加保。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	4、保单质押贷款：指投保人把所持有的保单直接抵押给保险公司，按照保单现金价值的一定比例获得资金的一种融资方式。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	5、国债质押贷款：指借款人以未到期的国债作为质押，从贷款银行取得人民币贷款，到期一次性归还贷款本息的一种贷款业务。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	6、股票质押贷款：指证券公司以自营的股票、证券投资基金券和上市公司可转换债券作质押，从商业银行获得资金的一种贷款方式。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<br />', '1', '28', '1', '1', '1', '0', '质押借款标', '质押贷款是指贷款人按《担保法》规定的质押方式以借款人或第三人的动产或权利为质押物发放的贷款。', '1386659747');
INSERT INTO `ds_article` VALUES ('8', '8', '抵押借款标介绍', '<pre id=\"best-content-145870957\" class=\"best-text mb-10\">&nbsp;&nbsp;&nbsp;&nbsp;抵押的抵押物主要是不动产，如土地使用权、房产等；也可以是动产，如电视、机器设备等。</pre>', '1', '28', '1', '1', '1', '0', '抵押借款标', '抵押的抵押物主要是不动产，如土地使用权、房产等；也可以是动产，如电视、机器设备等。', '1386660267');
INSERT INTO `ds_article` VALUES ('10', '10', '抵押与质押的区别', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;抵押，就是债务人或第三人不转移法律规定的可做抵押的财产的占有，将该财产作为债权的担保，当债务人不履行债务时，债权人有权依法就抵押物卖得价金优先受偿。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质押，就是债务人或第三人将其动产移交债权人占有，将该动产作为债权的担保，当债务人不履行债务时，债权人有权依法就该动产卖得价金优先受偿。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \r\n抵押与质押的区别在于：\r\n</p>\r\n<p>\r\n	1.抵押的标的物通常为不动产、特别动产（车、船等）；质押则以动产为主。\r\n</p>\r\n<p>\r\n	2.抵押要登记才生效，质押则只需占有就可以。\r\n</p>\r\n<p>\r\n	3.抵押只有单纯的担保效力，而质押中质权人既支配质物，又能体现留置效力。\r\n</p>\r\n<p>\r\n	4.抵押权的实现主要通过向法院申请拍卖，而质押则多直接变卖。\r\n</p>', '1', '28', '1', '1', '1', '0', '抵押与质押的区别', '抵押与质押的区别在于：抵押的标的物通常为不动产、特别动产（车、船等）；质押则以动产为主。', '1386660799');
INSERT INTO `ds_article` VALUES ('11', '11', '天标介绍', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贷款中按天计的标的，一般不大于30天', '1', '28', '1', '1', '1', '0', '天标', '贷款中按天计的标的，一般不大于30天', '1386660980');
INSERT INTO `ds_article` VALUES ('12', '12', '月标介绍', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贷款中按月计的标的，一般不大于24个月', '1', '28', '1', '1', '1', '0', '月标', '贷款中按月计的标的，一般不大于24个月', '1386661025');
INSERT INTO `ds_article` VALUES ('13', '13', '奖励标介绍', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所谓的奖励标就是借款人在发布借款时为了吸引投资人而设置的奖励。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;奖励一般分两种，1按固定金额奖励，2按比例奖励。\r\n</p>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一般奖励按借款金额平摊设置的总奖励。', '1', '28', '1', '1', '1', '0', '奖励标', ' 所谓的奖励标就是借款人在发布借款时为了吸引投资人而设置的奖励。', '1386661254');
INSERT INTO `ds_article` VALUES ('14', '14', '密码标介绍', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所谓密码标，就是借款人只想向指定的投资人开放。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一般多为线下已谈好借贷协议，通过平台增加安全系数。\r\n</p>', '1', '28', '1', '1', '1', '0', '密码标', '所谓密码标，就是借款人只想向指定的投资人开放。一般多为线下已谈好借贷协议，通过平台增加安全系数。', '1386662833');
INSERT INTO `ds_article` VALUES ('15', '15', '推荐标介绍', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;推荐标只能通过平台管理员进行操作，一般平台将一些优质借款设为\"推荐\"，\"推荐\"后的借款将优先于其它借款标。', '1', '28', '1', '1', '1', '0', '推荐标', '推荐标只能通过平台管理员进行操作，一般平台将一些优质借款设为\"推荐\"，\"推荐\"后的借款将优先于其它借款', '1386661581');
INSERT INTO `ds_article` VALUES ('16', '16', '月付息到期还本介绍', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一般借款人常用的还款方式，根据借款期限和借款利率计算出每月应还利息，最后一个月需连本金一同还清。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如：借款金额：12000元，年利率：12%，借款期限：5个月\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 每月需还利息：借款金额*(0.12/12)=120元\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第5个月应还：120+12000元\r\n</p>', '1', '28', '1', '1', '1', '0', '月付息到期还本', '一般借款人常用的还款方式，根据借款期限和借款利率计算出每月应还利息，最后一个月需连本金一同还清。', '1386662075');
INSERT INTO `ds_article` VALUES ('17', '17', '按月还本息介绍', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据借款期限和借款利率计算出总的利息，再加上本金除以借款期限，每个月还款金额一致。\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如：借款金额：12000元，年利率：12%，借款期限：5个月\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 总利息：借款金额*(0.12/12)*5=<span><i>600</i></span>元\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 每月应还：(600+12000)/5=2520元\r\n	</p>\r\n</p>', '1', '28', '1', '1', '1', '0', '按月还本息', '根据借款期限和借款利率计算出总的利息，再加上本金除以借款期限，每个月还款金额一致。 ', '1386662388');
INSERT INTO `ds_article` VALUES ('18', '18', '央行警示P2P非法集资风险', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日前，由中国支付清算协会主办的\"互联网金融发展与展望\"为主题的\"互联网金融论坛\"在北京召开。中国人民银行副行长刘士余表示，P2P不能触碰非法集资、非法吸收公众存款两条法律红线，不可以办资金池，也不能集担保、借贷于一体的要求。<br />\r\n&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 刘士余在会议上指出，互联网金融是新兴、富有活力和创造性的业态，互联网金融业务具有小额、快捷、便利的特征，解决了许多传统金融体系不能很好解决的问题，与传统金融体系相互渗透，相互促进，共同构成广义的金融体系。<br />\r\n&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 但他同时表示，目前，对于互联网金融进行评价，尚缺乏足够的时间序列和数据支持，要留有一定的观察期。<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;对于市场关注的P2P企业监管问题，刘士余表示，P2P不能触碰非法集资、非法吸收公众存款两条法律红线，尤其P2P平台不可以办资金池，也不能集担保、借贷于一体。<br />\r\n<br />', '1', '16', '1', '1', '1', '0', '', '', '1386662984');
INSERT INTO `ds_article` VALUES ('19', '19', '11月CPI同比上升了3.0%', '<span><span>2013年11月份，全国居民消费价格总水平同比上涨3.0%。其中，城市上涨3.0%，农村上涨3.1%；食品价格上涨5.9%，非食品价格上涨1.6%；消费品价格上涨2.9%，服务价格上涨3.3%。1-11月平均，全国居民消费价格总水平比去年同期上涨2.6%。</span></span><br />\r\n<br />\r\n<span><span>11月份，全国居民消费价格总水平环比下降0.1%。其中，城市下降0.1%，农村持平（涨跌幅度为0，下同）；食品价格下降0.2%，非食品价格持平；消费品价格持平，服务价格下降0.2%。</span></span><br />\r\n<br />\r\n<span><span>一、各类商品及服务价格同比变动情况</span></span><br />\r\n<br />\r\n<span><span>11\r\n月份，食品价格同比上涨5.9%，影响居民消费价格总水平同比上涨约1.92个百分点。其中，鲜菜价格上涨22.3%，影响居民消费价格总水平上涨约\r\n0.59个百分点；肉禽及其制品价格上涨5.5%，影响居民消费价格总水平上涨约0.41个百分点（猪肉价格上涨5.0%，影响居民消费价格总水平上涨约\r\n0.16个百分点）；鲜果价格上涨10.6%，影响居民消费价格总水平上涨约0.20个百分点；水产品价格上涨6.5%，影响居民消费价格总水平上涨约\r\n0.16个百分点；粮食价格上涨4.0%，影响居民消费价格总水平上涨约0.12个百分点。</span></span><br />\r\n<br />\r\n<span><span>烟酒及用品价格同比下降0.2%。其中，酒类价格下降0.9%，烟草价格上涨0.3%。</span></span><br />\r\n<br />\r\n<span><span>衣着价格同比上涨2.0%。其中，服装价格上涨2.1%，鞋类价格上涨1.4%。</span></span><br />\r\n<br />\r\n<span><span>家庭设备用品及维修服务价格同比上涨1.3%。其中，家庭服务及加工维修服务价格上涨7.8%，耐用消费品价格上涨0.4%。</span></span><br />\r\n<br />\r\n<span><span>医疗保健和个人用品价格同比上涨1.0%。其中，中药材及中成药价格上涨4.3%，医疗保健服务价格上涨1.3%，医疗器具及用品价格上涨0.4%，西药价格上涨0.3%。</span></span><br />\r\n<br />\r\n<span><span>交通和通信价格同比下降0.5%。其中，通信工具价格下降6.2%，车用燃料及零配件价格下降2.0%，交通工具价格下降1.3%，车辆使用及维修价格上涨3.1%。</span></span><br />\r\n<br />\r\n<span><span>娱乐教育文化用品及服务价格同比上涨2.8%。其中，旅游价格上涨11.1%，教育服务价格上涨2.8%，文娱费价格上涨2.1%，文娱用耐用消费品及服务价格下降3.3%。</span></span><br />\r\n<br />\r\n<span><span>居住价格同比上涨2.6%。其中，住房租金价格上涨4.7%，建房及装修材料价格上涨1.6%，水、电、燃料价格上涨0.5%。</span></span><br />\r\n<br />\r\n<span><span>据测算，在11月份3.0%的居民消费价格总水平同比涨幅中，去年价格上涨的翘尾因素约为0.7个百分点，新涨价因素约为2.3个百分点。</span></span><br />\r\n<br />\r\n<span><span>二、各类商品及服务价格环比变动情况</span></span><br />\r\n<br />\r\n<span><span>11\r\n月份，食品价格环比下降0.2%。其中，鲜菜价格下降3.8%，影响居民消费价格总水平下降约0.12个百分点；蛋、猪肉和水产品价格分别下降1.4%、\r\n0.5%和0.4%，三项合计影响居民消费价格总水平下降约0.04个百分点；鲜果和粮食价格分别上涨0.5%和0.4%，两项合计影响居民消费价格总水\r\n平上涨约0.02个百分点。</span></span><br />\r\n<br />\r\n<span><span>11月份，非食品价格环比持平。其中，衣着、居住、家庭设备用品及维修服务、烟酒及用品、医疗保健和个人用品价格分别上涨0.6%、0.2%、0.1%、0.1%和0.1%，娱乐教育文化用品及服务、交通和通信价格分别下降0.6%和0.2%。</span></span>', '1', '16', '1', '1', '1', '0', '', '', '1386663046');
INSERT INTO `ds_article` VALUES ('20', '20', '央行划定P2P网贷红线 拟建资金第三方托管机制', '<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span>&nbsp; &nbsp; 日前，中国人民银行在处置非法集资部际联席会议座谈会上提出，应当在鼓励P2P网络借贷平台创新发展的同时，合理设定其业务边界，划出红线，明确平台的中介性质，明确平台本身不得提供担保，不得归集资金搞资金池，不得非法吸收公众存款，更不能实施集资诈骗。</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span><br />\r\n</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span>　　央行介绍，一些P2P网络借贷平台通过将借款需求设计成理财产品出售给放贷人，或者先归集资金、再寻找借款对象等方式，使放贷人资金进入平台的中间账户，产生资金池，此类模式涉嫌非法吸收公众存款。</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span><br />\r\n</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span>　\r\n　一些P2P网络借贷平台经营者未尽到借款人身份真实性核查义务，未能及时发现甚至默许借款人在平台上以多个虚假借款人的名义发布大量虚假借款信息(又称\r\n借款标)，向不特定多数人募集资金，用于投资房地产、股票、债券、期货等市场，有的直接将非法募集的资金高利贷出赚取利差，这些借款人的行为涉嫌非法吸收\r\n公众存款。</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span><br />\r\n</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span>　　还有个别P2P网络借贷平台经营者，发布虚假的高利借款标募集资金，并采用在前期借新贷还旧贷的庞氏骗局模式，短期内募集大量资金后用于自己生产经营，有的经营者甚至卷款潜逃，此类模式涉嫌非法吸收公众存款和集资诈骗。</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span><br />\r\n</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span>　\r\n　央行建议，应当建立平台资金第三方托管机制。许多发生资金风险涉嫌非法集资的P2P网络借贷平台，为了募集后有效控制和使用资金，在银行或第三方支付机\r\n构开立账户直接归集资金，对于资金的使用行为缺乏有限监管。应当建立P2P网络借贷平台的第三方资金托管机制，平台不直接经手归集客户资金，也无权擅自动\r\n用在第三方托管的资金，让P2P网络借贷平台回归撮合的中介本质。</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span><br />\r\n</span></span></span>\r\n</p>\r\n<p style=\"text-indent:nullem;text-align:left;\">\r\n	<span><span><span>　\r\n　央行称，P2P网络借贷平台应该加强信息披露和风险提示，出借人应当对利率畸高的\"借款标\"提高警惕。P2P网络借贷平台对于借贷双方当事人通过平台发\r\n布的信息，应当尽到一定程度的审核义务，并向借贷双方当事人进行充分的信息披露和风险提示。出借人不应过分追求高利率的借贷回报，应当综合考虑利息收入和\r\n资金风险，作出理性的投资选择。（转自：新浪财经）</span></span></span>\r\n</p>', '1', '16', '1', '1', '1', '0', '', '', '1386663077');
INSERT INTO `ds_article` VALUES ('21', '21', '国际货币基金组织将与乌克兰就贷款问题谈判', '<span><span>【环球网综合报道】据俄通社-塔斯社12月8日消息，国际货币基金组织将与乌克兰就贷款问题进行实质性谈判。<br />\r\n乌克兰财政及关税部长亚历山大·克利缅科12月8日在接受乌克兰媒体采访时称，国际货币基金组织将在未来一至两周内与乌克兰代表进行谈判，商议贷款问题。<br />\r\n克利缅科表示，目前乌克兰的汇率、预算以及货币政策，同国际货币基金组织的要求十分接近。国际货币基金组织也发表声明，表示愿意同乌方进行贷款谈判。同时，乌克兰希望能够尽早结束谈判获取贷款。<br />\r\n此前，全球经济放缓以及外部对乌传统出口商品的需求减少，对乌克兰经济增长产生了负面影响。为此乌克兰希望进一步加强与国际货币基金组织的合作，以获得其贷款支持。 (实习编译：曹丽 审校：翟潞曼)</span></span>', '1', '16', '1', '1', '1', '0', '', '', '1386663117');
INSERT INTO `ds_article` VALUES ('23', '23', '资料上传规规范', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 请上传能够证明自己有能力还贷的资金，如房产证、工作证、养老保险缴纳信息、医疗保险缴纳信息等', '1', '28', '1', '1', '1', '0', '资料上传规规范', '资料上传规规范', '1387110410');

-- ----------------------------
-- Table structure for `ds_article_add`
-- ----------------------------
DROP TABLE IF EXISTS `ds_article_add`;
CREATE TABLE `ds_article_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` char(10) DEFAULT NULL COMMENT '修改时间',
  `modified_by` int(11) DEFAULT NULL COMMENT '修改者编号',
  `hits` int(11) DEFAULT NULL COMMENT '点积数',
  `Integration` int(11) DEFAULT NULL COMMENT ' 积分',
  `comment` int(11) DEFAULT NULL COMMENT '评论数',
  `litpic` varchar(150) DEFAULT NULL COMMENT '缩览图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_article_add
-- ----------------------------
INSERT INTO `ds_article_add` VALUES ('1', '1384234889', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('2', '1384693675', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('3', '1385637374', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('4', '1386658440', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('5', '1386658916', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('6', '1386659298', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('7', '1386659435', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('8', '1386660223', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('9', '1386660669', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('10', '1386660799', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('11', '1386660980', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('12', '1386661025', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('13', '1386661254', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('14', '1386661424', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('15', '1386661581', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('16', '1386662075', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('17', '1386662388', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('18', '1386662984', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('19', '1386663046', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('20', '1386663077', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('21', '1386663117', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('22', '1387110182', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('23', '1387110410', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('25', '1389769128', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('26', '1389769992', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('27', '1392020117', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('28', '1392020527', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('29', '1397790473', '0', '0', '0', '0', null);
INSERT INTO `ds_article_add` VALUES ('30', '1404558862', '0', null, null, null, null);
INSERT INTO `ds_article_add` VALUES ('31', '1404636280', '0', null, null, null, null);
INSERT INTO `ds_article_add` VALUES ('32', '1404636762', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `ds_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `ds_auth_group`;
CREATE TABLE `ds_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_auth_group
-- ----------------------------
INSERT INTO `ds_auth_group` VALUES ('1', '管理员', ',1,7,12,20,25,30,35,42,47,52,58,63,68,75,80,88,95,102,104,105,98,99,94,84,79,73,67,57,62,51,46,41,34,29,24,19,6,11,5,10,4,32,37,44,49,54,60,65,70,77,87,91,90,96,97,93,89,78,72,66,61,50,45,40,33,28,23,15,14,22,27,55,53,59,64,69,76,83,13,8,2,9,21,26,31,36,43,48,106,107,108,109,110,111,112,113,114,115,116,117,118,120,119,122,121,123,124,125,126,127,128,129,130,131,132,133,134,138,135,137,136,139,140,,141,143,144,142,145,146,147,148,149,150,151,152,153,154,156,155,157,158,160,163,162,161,159');
INSERT INTO `ds_auth_group` VALUES ('2', '审核人员', ',46,47,48,49,50,51,52,53,54,55,57,58,59,60,61,62,63,64,65,66,67,68,69,91,1,106,107,108,109,110,127,128,156,155,157,158');
INSERT INTO `ds_auth_group` VALUES ('3', '编辑人员', ',36,37,40,41,42,43,44,45,70,72,73,78,77,76,75,79,91,93');

-- ----------------------------
-- Table structure for `ds_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `ds_auth_group_access`;
CREATE TABLE `ds_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_2` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_auth_group_access
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ds_auth_rule`;
CREATE TABLE `ds_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `fid` tinyint(2) NOT NULL,
  `condition` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_auth_rule
-- ----------------------------
INSERT INTO `ds_auth_rule` VALUES ('1', '后台首页', '0', '1', 'Admin/Index/index');
INSERT INTO `ds_auth_rule` VALUES ('2', '系统设置', '0', '2', 'Admin/Index/system');
INSERT INTO `ds_auth_rule` VALUES ('4', '系统参数编辑（单条）', '0', '2', 'Admin/Index/editsys');
INSERT INTO `ds_auth_rule` VALUES ('5', '系统参数保存（所有）', '0', '2', 'Admin/Index/savesy');
INSERT INTO `ds_auth_rule` VALUES ('6', '删除系统参数', '0', '2', 'Admin/Index/delesy');
INSERT INTO `ds_auth_rule` VALUES ('7', '邮箱设置', '0', '2', 'Admin/Index/email');
INSERT INTO `ds_auth_rule` VALUES ('8', '邮箱设置修改', '0', '2', 'Admin/Index/email_send');
INSERT INTO `ds_auth_rule` VALUES ('9', '管理员操作记录', '0', '2', 'Admin/Index/operation');
INSERT INTO `ds_auth_rule` VALUES ('10', '管理员操作记录导出', '0', '2', 'Admin/Index/adminExport');
INSERT INTO `ds_auth_rule` VALUES ('11', '用户操作记录', '0', '2', 'Admin/Index/userrecord');
INSERT INTO `ds_auth_rule` VALUES ('12', '用户操作记录导出', '0', '2', 'Admin/Index/userExport');
INSERT INTO `ds_auth_rule` VALUES ('13', '积分记录', '0', '2', 'Admin/Index/integralrecord');
INSERT INTO `ds_auth_rule` VALUES ('14', '积分记录导出', '0', '2', 'Admin/Index/integralExport');
INSERT INTO `ds_auth_rule` VALUES ('15', '线下银行', '0', '3', 'Admin/Basis/linebank');
INSERT INTO `ds_auth_rule` VALUES ('19', '线下银行排序更新', '0', '3', 'Admin/Basis/updtline');
INSERT INTO `ds_auth_rule` VALUES ('20', '删除线下银行', '0', '3', 'Admin/Basis/delelin');
INSERT INTO `ds_auth_rule` VALUES ('21', '网上银行', '0', '3', 'Admin/Basis/online');
INSERT INTO `ds_auth_rule` VALUES ('22', '积分等级', '0', '3', 'Admin/Basis/integrallevel');
INSERT INTO `ds_auth_rule` VALUES ('23', '删除积分等级', '0', '3', 'Admin/Basis/deleint');
INSERT INTO `ds_auth_rule` VALUES ('24', '轮播图片', '0', '3', 'Admin/Basis/shuffling');
INSERT INTO `ds_auth_rule` VALUES ('25', '添加轮播图片', '0', '3', 'Admin/Basis/addsh');
INSERT INTO `ds_auth_rule` VALUES ('26', '更新轮播图片', '0', '3', 'Admin/Basis/editsh');
INSERT INTO `ds_auth_rule` VALUES ('27', '更新轮播图片页', '0', '3', 'Admin/Basis/editshu');
INSERT INTO `ds_auth_rule` VALUES ('28', '轮播图片状态排序修改', '0', '3', 'Admin/Basis/savesh');
INSERT INTO `ds_auth_rule` VALUES ('29', '友情链接', '0', '3', 'Admin/Basis/links');
INSERT INTO `ds_auth_rule` VALUES ('30', '添加友情链接', '0', '3', 'Admin/Basis/addli');
INSERT INTO `ds_auth_rule` VALUES ('31', '更新友情链接', '0', '3', 'Admin/Basis/editli');
INSERT INTO `ds_auth_rule` VALUES ('32', '更新友情链接页', '0', '3', 'Admin/Basis/editlink');
INSERT INTO `ds_auth_rule` VALUES ('33', '友情链接状态排序修改', '0', '3', 'Admin/Basis/saveli');
INSERT INTO `ds_auth_rule` VALUES ('34', '数据库备份', '0', '3', 'Admin/Basis/backup');
INSERT INTO `ds_auth_rule` VALUES ('35', '数据库优化', '0', '3', 'Admin/Basis/optimization');
INSERT INTO `ds_auth_rule` VALUES ('36', '栏目管理', '0', '4', 'Admin/Site/index');
INSERT INTO `ds_auth_rule` VALUES ('37', '添加栏目页', '0', '4', 'Admin/Site/addSite');
INSERT INTO `ds_auth_rule` VALUES ('40', '删除栏目', '0', '4', 'Admin/Site/delSite');
INSERT INTO `ds_auth_rule` VALUES ('41', '内容管理', '0', '4', 'Admin/Site/articleList');
INSERT INTO `ds_auth_rule` VALUES ('42', '添加文章页', '0', '4', 'Admin/Site/addArticle');
INSERT INTO `ds_auth_rule` VALUES ('43', '添加文章', '0', '4', 'Admin/Site/saveArticle');
INSERT INTO `ds_auth_rule` VALUES ('44', '文章编辑页', '0', '4', 'Admin/Site/editArticle');
INSERT INTO `ds_auth_rule` VALUES ('45', '文章栏目切换', '0', '4', 'Admin/Site/articleList');
INSERT INTO `ds_auth_rule` VALUES ('46', '待审核', '0', '5', 'Admin/Loan/review');
INSERT INTO `ds_auth_rule` VALUES ('47', '贷款审核页', '0', '5', 'Admin/Loan/review_page');
INSERT INTO `ds_auth_rule` VALUES ('48', '贷款审核', '0', '5', 'Admin/Loan/review_validation');
INSERT INTO `ds_auth_rule` VALUES ('49', '满标待审', '0', '5', 'Admin/Loan/pending');
INSERT INTO `ds_auth_rule` VALUES ('50', '贷款复审', '0', '5', 'Admin/Loan/borrowUpda');
INSERT INTO `ds_auth_rule` VALUES ('51', '贷款列表', '0', '5', 'Admin/Loan/entry');
INSERT INTO `ds_auth_rule` VALUES ('52', '贷款推荐', '0', '5', 'Admin/Loan/entry_stick');
INSERT INTO `ds_auth_rule` VALUES ('53', '导出贷款', '0', '5', 'Admin/Loan/integExport');
INSERT INTO `ds_auth_rule` VALUES ('54', '认证列表', '0', '6', 'Admin/Audit/entry');
INSERT INTO `ds_auth_rule` VALUES ('55', '实名认证', '0', '6', 'Admin/Audit/autonym');
INSERT INTO `ds_auth_rule` VALUES ('57', '视频认证', '0', '6', 'Admin/Audit/video');
INSERT INTO `ds_auth_rule` VALUES ('58', '现场认证', '0', '6', 'Admin/Audit/site');
INSERT INTO `ds_auth_rule` VALUES ('59', 'VIP', '0', '6', 'Admin/Audit/vip');
INSERT INTO `ds_auth_rule` VALUES ('60', 'VIP审核', '0', '6', 'Admin/Audit/exitvip');
INSERT INTO `ds_auth_rule` VALUES ('61', '充值列表', '0', '7', 'Admin/Fund/recharge');
INSERT INTO `ds_auth_rule` VALUES ('62', '充值审核', '0', '7', 'Admin/Fund/rechUpda');
INSERT INTO `ds_auth_rule` VALUES ('63', '充值列表导出', '0', '7', 'Admin/Fund/integExport');
INSERT INTO `ds_auth_rule` VALUES ('64', '提现列表', '0', '7', 'Admin/Fund/withdrawal');
INSERT INTO `ds_auth_rule` VALUES ('65', '提现审核', '0', '7', 'Admin/Fund/hidden');
INSERT INTO `ds_auth_rule` VALUES ('66', '导出提现列表', '0', '7', 'Admin/Fund/integExports');
INSERT INTO `ds_auth_rule` VALUES ('67', '资金记录', '0', '7', 'Admin/Fund/money');
INSERT INTO `ds_auth_rule` VALUES ('68', '导出资金记录', '0', '7', 'Admin/Fund/moneyExport');
INSERT INTO `ds_auth_rule` VALUES ('69', '其它费用操作', '0', '7', 'Admin/Fund/other');
INSERT INTO `ds_auth_rule` VALUES ('70', '商品管理', '0', '8', 'Admin/Integral/index');
INSERT INTO `ds_auth_rule` VALUES ('72', '商品管理状态栏目修改', '0', '8', 'Admin/Integral/savegoo');
INSERT INTO `ds_auth_rule` VALUES ('73', '删除商品', '0', '8', 'Admin/Integral/savegoo');
INSERT INTO `ds_auth_rule` VALUES ('75', '积分兑换记录', '0', '8', 'Admin/Integral/record');
INSERT INTO `ds_auth_rule` VALUES ('76', '撤销积分兑换', '0', '8', 'Admin/Integral/undo');
INSERT INTO `ds_auth_rule` VALUES ('77', '发货页', '0', '8', 'Admin/Integral/delivery');
INSERT INTO `ds_auth_rule` VALUES ('78', '发货', '0', '8', 'Admin/Integral/deliveryUpda');
INSERT INTO `ds_auth_rule` VALUES ('79', '导出兑换记录', '0', '8', 'Admin/Integral/integExport');
INSERT INTO `ds_auth_rule` VALUES ('80', '联动管理', '0', '9', 'Admin/Ganged/index');
INSERT INTO `ds_auth_rule` VALUES ('83', '联动管理公共状态排序', '0', '9', 'Admin/Ganged/savegan');
INSERT INTO `ds_auth_rule` VALUES ('84', '会员积分配置', '0', '10', 'Admin/Integralconf/index');
INSERT INTO `ds_auth_rule` VALUES ('87', '联动管理公共删除', '0', '9', 'Admin/Ganged/exitgan');
INSERT INTO `ds_auth_rule` VALUES ('88', '积分配置公共删除', '0', '10', 'Admin/Integralconf/exitgan');
INSERT INTO `ds_auth_rule` VALUES ('89', '联动管理公共AJAX', '0', '9', 'Admin/Ganged/editajax');
INSERT INTO `ds_auth_rule` VALUES ('90', '积分配置公共AJAX', '0', '10', 'Admin/Integralconf/editajax');
INSERT INTO `ds_auth_rule` VALUES ('91', '普通用户管理', '0', '11', 'Admin/User/index');
INSERT INTO `ds_auth_rule` VALUES ('93', '普通用户删除', '0', '11', 'Admin/User/exituse');
INSERT INTO `ds_auth_rule` VALUES ('94', '管理组管理', '0', '11', 'Admin/User/userGroups');
INSERT INTO `ds_auth_rule` VALUES ('95', '添加管理组', '0', '11', 'Admin/User/addGroup');
INSERT INTO `ds_auth_rule` VALUES ('96', '管理组用户管理', '0', '11', 'Admin/User/viewUser');
INSERT INTO `ds_auth_rule` VALUES ('97', '添加管理组用户', '0', '11', 'Admin/User/saveUser');
INSERT INTO `ds_auth_rule` VALUES ('98', '删除管理组用户', '0', '11', 'Admin/User/delGroupUser');
INSERT INTO `ds_auth_rule` VALUES ('99', '分配权限', '0', '11', 'Admin/User/editUserGroups');
INSERT INTO `ds_auth_rule` VALUES ('102', '管理员管理', '0', '11', 'Admin/User/manage');
INSERT INTO `ds_auth_rule` VALUES ('104', '删除管理员', '0', '11', 'Admin/User/exitman');
INSERT INTO `ds_auth_rule` VALUES ('105', '删除权限', '0', '11', 'Admin/User/exitcom');
INSERT INTO `ds_auth_rule` VALUES ('106', '实名认证审核', '0', '6', 'Admin/Audit/upda');
INSERT INTO `ds_auth_rule` VALUES ('107', '视频认证', '0', '6', 'Admin/Audit/integral_upda');
INSERT INTO `ds_auth_rule` VALUES ('108', '手机认证', '0', '6', 'Admin/Audit/phone');
INSERT INTO `ds_auth_rule` VALUES ('109', '认证中心用户详情', '0', '6', 'Admin/Audit/userajax');
INSERT INTO `ds_auth_rule` VALUES ('110', 'VIP个人详情', '0', '6', 'Admin/Audit/editajax');
INSERT INTO `ds_auth_rule` VALUES ('111', '界面风格', '0', '2', 'Admin/Index/colour');
INSERT INTO `ds_auth_rule` VALUES ('112', '界面风格刷新', '0', '2', 'Admin/Index/colourRefresh');
INSERT INTO `ds_auth_rule` VALUES ('113', '界面风格设为默认', '0', '2', 'Admin/Index/setDefault');
INSERT INTO `ds_auth_rule` VALUES ('114', '微信界面风格', '0', '2', 'Admin/Index/wcolour');
INSERT INTO `ds_auth_rule` VALUES ('115', '微信界面风格刷新', '0', '2', 'Admin/Index/wcolourRefresh');
INSERT INTO `ds_auth_rule` VALUES ('116', '微信界面风格设为默认', '0', '2', 'Admin/Index/wsetDefault');
INSERT INTO `ds_auth_rule` VALUES ('117', '积分等级编辑', '0', '3', 'Admin/Basis/editint');
INSERT INTO `ds_auth_rule` VALUES ('118', '积分等级编辑保存', '0', '3', 'Admin/Basis/upda');
INSERT INTO `ds_auth_rule` VALUES ('119', '删除积分等级', '0', '3', 'Admin/Basis/deleint');
INSERT INTO `ds_auth_rule` VALUES ('120', '线下银行编辑', '0', '2', 'Admin/Basis/editlin');
INSERT INTO `ds_auth_rule` VALUES ('121', '线下银行编辑保存', '0', '3', 'Admin/Basis/upda');
INSERT INTO `ds_auth_rule` VALUES ('122', '删除线下银行', '0', '3', 'Admin/Basis/delelin');
INSERT INTO `ds_auth_rule` VALUES ('123', '栏目编辑', '0', '4', 'Admin/Site/editSite');
INSERT INTO `ds_auth_rule` VALUES ('124', '栏目编辑保存', '0', '4', 'Admin/Site/upda');
INSERT INTO `ds_auth_rule` VALUES ('125', '添加栏目', '0', '4', 'Admin/Site/add');
INSERT INTO `ds_auth_rule` VALUES ('126', '删除文章', '0', '4', 'Admin/Site/dellelist');
INSERT INTO `ds_auth_rule` VALUES ('127', '逾期列表', '0', '5', 'Admin/Loan/overduebid');
INSERT INTO `ds_auth_rule` VALUES ('128', '贷款管理用户信息', '0', '5', 'Admin/Loan/userajax');
INSERT INTO `ds_auth_rule` VALUES ('129', '充值列表查看', '0', '7', 'Admin/Fund/recharge_page');
INSERT INTO `ds_auth_rule` VALUES ('130', '提现审核', '0', '7', 'Admin/Fund/withUpda');
INSERT INTO `ds_auth_rule` VALUES ('131', '提现列表查看', '0', '7', 'Admin/Fund/withdrawal_page');
INSERT INTO `ds_auth_rule` VALUES ('132', '其它费用操作', '0', '7', 'Admin/Fund/other');
INSERT INTO `ds_auth_rule` VALUES ('133', '添加积分商品', '0', '8', 'Admin/Integral/addgoo');
INSERT INTO `ds_auth_rule` VALUES ('134', '编辑积分商品', '0', '8', 'Admin/Integral/editgoo');
INSERT INTO `ds_auth_rule` VALUES ('135', '积分商品添加操作', '0', '8', 'Admin/Integral/add');
INSERT INTO `ds_auth_rule` VALUES ('136', '积分商品编辑保存', '0', '8', 'Admin/Integral/upda');
INSERT INTO `ds_auth_rule` VALUES ('137', '删除积分商品', '0', '8', 'Admin/Integral/delego');
INSERT INTO `ds_auth_rule` VALUES ('138', '兑换记录', '0', '8', 'Admin/Integral/records');
INSERT INTO `ds_auth_rule` VALUES ('139', '联动编辑', '0', '9', 'Admin/Ganged/upda');
INSERT INTO `ds_auth_rule` VALUES ('140', '添加联动', '0', '9', 'Admin/Ganged/add');
INSERT INTO `ds_auth_rule` VALUES ('141', '删除联动', '0', '9', 'Admin/Ganged/exitgan');
INSERT INTO `ds_auth_rule` VALUES ('142', '会员积分配置编辑', '0', '10', 'Admin/Integralconf/upda');
INSERT INTO `ds_auth_rule` VALUES ('143', '添加会员积分配置', '0', '10', 'Admin/Integralconf/add');
INSERT INTO `ds_auth_rule` VALUES ('144', '删除会员积分配置', '0', '10', 'Admin/Integralconf/exitgan');
INSERT INTO `ds_auth_rule` VALUES ('145', '用户管理用户详情', '0', '11', 'Admin/User/userajax');
INSERT INTO `ds_auth_rule` VALUES ('146', '普通用户密码修改', '0', '11', 'Admin/User/passajax');
INSERT INTO `ds_auth_rule` VALUES ('147', '普通用户密码修改保存', '0', '11', 'Admin/User/upda');
INSERT INTO `ds_auth_rule` VALUES ('148', '删除普通用户', '0', '11', 'Admin/User/exituse');
INSERT INTO `ds_auth_rule` VALUES ('149', '管理员编辑', '0', '11', 'Admin/User/adminajax');
INSERT INTO `ds_auth_rule` VALUES ('150', '删除管理员', '0', '11', 'Admin/User/exitman');
INSERT INTO `ds_auth_rule` VALUES ('151', '权限管理', '0', '11', 'Admin/User/competence');
INSERT INTO `ds_auth_rule` VALUES ('152', '添加权限', '0', '11', 'Admin/User/add');
INSERT INTO `ds_auth_rule` VALUES ('153', '编辑权限', '0', '11', 'Admin/User/editajax');
INSERT INTO `ds_auth_rule` VALUES ('154', '删除权限', '0', '11', 'Admin/User/exitcom');
INSERT INTO `ds_auth_rule` VALUES ('155', '抵押待核实', '0', '5', 'Admin/Loan/mortgage');
INSERT INTO `ds_auth_rule` VALUES ('156', '投资记录', '0', '5', 'Admin/Loan/irecord');
INSERT INTO `ds_auth_rule` VALUES ('157', '抵押待核实复审', '0', '5', 'Admin/Loan/mortgageUpda');
INSERT INTO `ds_auth_rule` VALUES ('158', '投资记录导出', '0', '5', 'Admin/Loan/recordExport');
INSERT INTO `ds_auth_rule` VALUES ('159', '用户资金汇总', '0', '7', 'Admin/Fund/summary');
INSERT INTO `ds_auth_rule` VALUES ('160', '资源管理', '0', '3', 'Admin/Basis/resources');
INSERT INTO `ds_auth_rule` VALUES ('161', '其它认证', '0', '6', 'Admin/Audit/other');
INSERT INTO `ds_auth_rule` VALUES ('162', '其它认证查看页', '0', '6', 'Admin/Audit/otheredit');
INSERT INTO `ds_auth_rule` VALUES ('163', '其它认证审核', '0', '6', 'Admin/Audit/otherUpdas');

-- ----------------------------
-- Table structure for `ds_borrowing`
-- ----------------------------
DROP TABLE IF EXISTS `ds_borrowing`;
CREATE TABLE `ds_borrowing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `title` varchar(35) NOT NULL,
  `rates` decimal(4,2) unsigned NOT NULL,
  `use` tinyint(2) NOT NULL,
  `deadline` tinyint(2) NOT NULL,
  `flow_deadline` tinyint(2) NOT NULL,
  `min_limit` tinyint(2) NOT NULL,
  `candra` tinyint(1) NOT NULL,
  `way` tinyint(1) NOT NULL,
  `valid` tinyint(2) NOT NULL,
  `code` tinyint(1) NOT NULL,
  `password` char(32) NOT NULL,
  `min` varchar(10) NOT NULL,
  `max` varchar(10) NOT NULL,
  `privacy` tinyint(1) NOT NULL,
  `money` decimal(15,2) unsigned NOT NULL,
  `surplus` decimal(15,2) unsigned NOT NULL,
  `assure` decimal(15,2) unsigned NOT NULL,
  `flows` int(11) unsigned NOT NULL,
  `repos` int(11) unsigned NOT NULL,
  `data` varchar(600) NOT NULL,
  `content` text NOT NULL,
  `state` tinyint(2) NOT NULL,
  `review_note` varchar(200) NOT NULL,
  `mortgage` varchar(500) NOT NULL,
  `time` int(11) NOT NULL,
  `stick` tinyint(1) NOT NULL,
  `checktime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `reviewtime` int(11) NOT NULL,
  `limittime` int(11) NOT NULL,
  `reward` decimal(5,2) NOT NULL,
  `reward_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_borrowing
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_borrow_log`
-- ----------------------------
DROP TABLE IF EXISTS `ds_borrow_log`;
CREATE TABLE `ds_borrow_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `number` varchar(30) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `actionname` varchar(800) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_borrow_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_certification`
-- ----------------------------
DROP TABLE IF EXISTS `ds_certification`;
CREATE TABLE `ds_certification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `card` varchar(50) NOT NULL,
  `cards` varchar(50) NOT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_certification
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_city`
-- ----------------------------
DROP TABLE IF EXISTS `ds_city`;
CREATE TABLE `ds_city` (
  `mid` smallint(4) NOT NULL,
  `city` varchar(11) NOT NULL,
  `var` smallint(4) NOT NULL,
  PRIMARY KEY (`var`),
  UNIQUE KEY `var` (`var`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_city
-- ----------------------------
INSERT INTO `ds_city` VALUES ('0', '北京', '2');
INSERT INTO `ds_city` VALUES ('0', '安徽', '3');
INSERT INTO `ds_city` VALUES ('0', '福建', '4');
INSERT INTO `ds_city` VALUES ('0', '甘肃', '5');
INSERT INTO `ds_city` VALUES ('0', '广东', '6');
INSERT INTO `ds_city` VALUES ('0', '广西', '7');
INSERT INTO `ds_city` VALUES ('0', '贵州', '8');
INSERT INTO `ds_city` VALUES ('0', '海南', '9');
INSERT INTO `ds_city` VALUES ('0', '河北', '10');
INSERT INTO `ds_city` VALUES ('0', '河南', '11');
INSERT INTO `ds_city` VALUES ('0', '黑龙江', '12');
INSERT INTO `ds_city` VALUES ('0', '湖北', '13');
INSERT INTO `ds_city` VALUES ('0', '湖南', '14');
INSERT INTO `ds_city` VALUES ('0', '吉林', '15');
INSERT INTO `ds_city` VALUES ('0', '江苏', '16');
INSERT INTO `ds_city` VALUES ('0', '江西', '17');
INSERT INTO `ds_city` VALUES ('0', '辽宁', '18');
INSERT INTO `ds_city` VALUES ('0', '内蒙古', '19');
INSERT INTO `ds_city` VALUES ('0', '宁夏', '20');
INSERT INTO `ds_city` VALUES ('0', '青海', '21');
INSERT INTO `ds_city` VALUES ('0', '山东', '22');
INSERT INTO `ds_city` VALUES ('0', '山西', '23');
INSERT INTO `ds_city` VALUES ('0', '陕西', '24');
INSERT INTO `ds_city` VALUES ('0', '上海', '25');
INSERT INTO `ds_city` VALUES ('0', '四川', '26');
INSERT INTO `ds_city` VALUES ('0', '天津', '27');
INSERT INTO `ds_city` VALUES ('0', '西藏', '28');
INSERT INTO `ds_city` VALUES ('0', '新疆', '29');
INSERT INTO `ds_city` VALUES ('0', '云南', '30');
INSERT INTO `ds_city` VALUES ('0', '浙江', '31');
INSERT INTO `ds_city` VALUES ('0', '重庆', '32');
INSERT INTO `ds_city` VALUES ('0', '香港', '33');
INSERT INTO `ds_city` VALUES ('0', '澳门', '34');
INSERT INTO `ds_city` VALUES ('0', '台湾', '35');
INSERT INTO `ds_city` VALUES ('3', '安庆', '36');
INSERT INTO `ds_city` VALUES ('3', '蚌埠', '37');
INSERT INTO `ds_city` VALUES ('3', '巢湖', '38');
INSERT INTO `ds_city` VALUES ('3', '池州', '39');
INSERT INTO `ds_city` VALUES ('3', '滁州', '40');
INSERT INTO `ds_city` VALUES ('3', '阜阳', '41');
INSERT INTO `ds_city` VALUES ('3', '淮北', '42');
INSERT INTO `ds_city` VALUES ('3', '淮南', '43');
INSERT INTO `ds_city` VALUES ('3', '黄山', '44');
INSERT INTO `ds_city` VALUES ('3', '六安', '45');
INSERT INTO `ds_city` VALUES ('3', '马鞍山', '46');
INSERT INTO `ds_city` VALUES ('3', '宿州', '47');
INSERT INTO `ds_city` VALUES ('3', '铜陵', '48');
INSERT INTO `ds_city` VALUES ('3', '芜湖', '49');
INSERT INTO `ds_city` VALUES ('3', '宣城', '50');
INSERT INTO `ds_city` VALUES ('3', '亳州', '51');
INSERT INTO `ds_city` VALUES ('2', '北京', '52');
INSERT INTO `ds_city` VALUES ('4', '福州', '53');
INSERT INTO `ds_city` VALUES ('4', '龙岩', '54');
INSERT INTO `ds_city` VALUES ('4', '南平', '55');
INSERT INTO `ds_city` VALUES ('4', '宁德', '56');
INSERT INTO `ds_city` VALUES ('4', '莆田', '57');
INSERT INTO `ds_city` VALUES ('4', '泉州', '58');
INSERT INTO `ds_city` VALUES ('4', '三明', '59');
INSERT INTO `ds_city` VALUES ('4', '厦门', '60');
INSERT INTO `ds_city` VALUES ('4', '漳州', '61');
INSERT INTO `ds_city` VALUES ('5', '兰州', '62');
INSERT INTO `ds_city` VALUES ('5', '白银', '63');
INSERT INTO `ds_city` VALUES ('5', '定西', '64');
INSERT INTO `ds_city` VALUES ('5', '甘南', '65');
INSERT INTO `ds_city` VALUES ('5', '嘉峪关', '66');
INSERT INTO `ds_city` VALUES ('5', '金昌', '67');
INSERT INTO `ds_city` VALUES ('5', '酒泉', '68');
INSERT INTO `ds_city` VALUES ('5', '临夏', '69');
INSERT INTO `ds_city` VALUES ('5', '陇南', '70');
INSERT INTO `ds_city` VALUES ('5', '平凉', '71');
INSERT INTO `ds_city` VALUES ('5', '庆阳', '72');
INSERT INTO `ds_city` VALUES ('5', '天水', '73');
INSERT INTO `ds_city` VALUES ('5', '武威', '74');
INSERT INTO `ds_city` VALUES ('5', '张掖', '75');
INSERT INTO `ds_city` VALUES ('6', '广州', '76');
INSERT INTO `ds_city` VALUES ('6', '深圳', '77');
INSERT INTO `ds_city` VALUES ('6', '潮州', '78');
INSERT INTO `ds_city` VALUES ('6', '东莞', '79');
INSERT INTO `ds_city` VALUES ('6', '佛山', '80');
INSERT INTO `ds_city` VALUES ('6', '河源', '81');
INSERT INTO `ds_city` VALUES ('6', '惠州', '82');
INSERT INTO `ds_city` VALUES ('6', '江门', '83');
INSERT INTO `ds_city` VALUES ('6', '揭阳', '84');
INSERT INTO `ds_city` VALUES ('6', '茂名', '85');
INSERT INTO `ds_city` VALUES ('6', '梅州', '86');
INSERT INTO `ds_city` VALUES ('6', '清远', '87');
INSERT INTO `ds_city` VALUES ('6', '汕头', '88');
INSERT INTO `ds_city` VALUES ('6', '汕尾', '89');
INSERT INTO `ds_city` VALUES ('6', '韶关', '90');
INSERT INTO `ds_city` VALUES ('6', '阳江', '91');
INSERT INTO `ds_city` VALUES ('6', '云浮', '92');
INSERT INTO `ds_city` VALUES ('6', '湛江', '93');
INSERT INTO `ds_city` VALUES ('6', '肇庆', '94');
INSERT INTO `ds_city` VALUES ('6', '中山', '95');
INSERT INTO `ds_city` VALUES ('6', '珠海', '96');
INSERT INTO `ds_city` VALUES ('7', '南宁', '97');
INSERT INTO `ds_city` VALUES ('7', '桂林', '98');
INSERT INTO `ds_city` VALUES ('7', '百色', '99');
INSERT INTO `ds_city` VALUES ('7', '北海', '100');
INSERT INTO `ds_city` VALUES ('7', '崇左', '101');
INSERT INTO `ds_city` VALUES ('7', '防城港', '102');
INSERT INTO `ds_city` VALUES ('7', '贵港', '103');
INSERT INTO `ds_city` VALUES ('7', '河池', '104');
INSERT INTO `ds_city` VALUES ('7', '贺州', '105');
INSERT INTO `ds_city` VALUES ('7', '来宾', '106');
INSERT INTO `ds_city` VALUES ('7', '柳州', '107');
INSERT INTO `ds_city` VALUES ('7', '钦州', '108');
INSERT INTO `ds_city` VALUES ('7', '梧州', '109');
INSERT INTO `ds_city` VALUES ('7', '玉林', '110');
INSERT INTO `ds_city` VALUES ('8', '贵阳', '111');
INSERT INTO `ds_city` VALUES ('8', '安顺', '112');
INSERT INTO `ds_city` VALUES ('8', '毕节', '113');
INSERT INTO `ds_city` VALUES ('8', '六盘水', '114');
INSERT INTO `ds_city` VALUES ('8', '黔东南', '115');
INSERT INTO `ds_city` VALUES ('8', '黔南', '116');
INSERT INTO `ds_city` VALUES ('8', '黔西南', '117');
INSERT INTO `ds_city` VALUES ('8', '铜仁', '118');
INSERT INTO `ds_city` VALUES ('8', '遵义', '119');
INSERT INTO `ds_city` VALUES ('9', '海口', '120');
INSERT INTO `ds_city` VALUES ('9', '三亚', '121');
INSERT INTO `ds_city` VALUES ('9', '白沙', '122');
INSERT INTO `ds_city` VALUES ('9', '保亭', '123');
INSERT INTO `ds_city` VALUES ('9', '昌江', '124');
INSERT INTO `ds_city` VALUES ('9', '澄迈县', '125');
INSERT INTO `ds_city` VALUES ('9', '定安县', '126');
INSERT INTO `ds_city` VALUES ('9', '东方', '127');
INSERT INTO `ds_city` VALUES ('9', '乐东', '128');
INSERT INTO `ds_city` VALUES ('9', '临高县', '129');
INSERT INTO `ds_city` VALUES ('9', '陵水', '130');
INSERT INTO `ds_city` VALUES ('9', '琼海', '131');
INSERT INTO `ds_city` VALUES ('9', '琼中', '132');
INSERT INTO `ds_city` VALUES ('9', '屯昌县', '133');
INSERT INTO `ds_city` VALUES ('9', '万宁', '134');
INSERT INTO `ds_city` VALUES ('9', '文昌', '135');
INSERT INTO `ds_city` VALUES ('9', '五指山', '136');
INSERT INTO `ds_city` VALUES ('9', '儋州', '137');
INSERT INTO `ds_city` VALUES ('10', '石家庄', '138');
INSERT INTO `ds_city` VALUES ('10', '保定', '139');
INSERT INTO `ds_city` VALUES ('10', '沧州', '140');
INSERT INTO `ds_city` VALUES ('10', '承德', '141');
INSERT INTO `ds_city` VALUES ('10', '邯郸', '142');
INSERT INTO `ds_city` VALUES ('10', '衡水', '143');
INSERT INTO `ds_city` VALUES ('10', '廊坊', '144');
INSERT INTO `ds_city` VALUES ('10', '秦皇岛', '145');
INSERT INTO `ds_city` VALUES ('10', '唐山', '146');
INSERT INTO `ds_city` VALUES ('10', '邢台', '147');
INSERT INTO `ds_city` VALUES ('10', '张家口', '148');
INSERT INTO `ds_city` VALUES ('11', '郑州', '149');
INSERT INTO `ds_city` VALUES ('11', '洛阳', '150');
INSERT INTO `ds_city` VALUES ('11', '开封', '151');
INSERT INTO `ds_city` VALUES ('11', '安阳', '152');
INSERT INTO `ds_city` VALUES ('11', '鹤壁', '153');
INSERT INTO `ds_city` VALUES ('11', '济源', '154');
INSERT INTO `ds_city` VALUES ('11', '焦作', '155');
INSERT INTO `ds_city` VALUES ('11', '南阳', '156');
INSERT INTO `ds_city` VALUES ('11', '平顶山', '157');
INSERT INTO `ds_city` VALUES ('11', '三门峡', '158');
INSERT INTO `ds_city` VALUES ('11', '商丘', '159');
INSERT INTO `ds_city` VALUES ('11', '新乡', '160');
INSERT INTO `ds_city` VALUES ('11', '信阳', '161');
INSERT INTO `ds_city` VALUES ('11', '许昌', '162');
INSERT INTO `ds_city` VALUES ('11', '周口', '163');
INSERT INTO `ds_city` VALUES ('11', '驻马店', '164');
INSERT INTO `ds_city` VALUES ('11', '漯河', '165');
INSERT INTO `ds_city` VALUES ('11', '濮阳', '166');
INSERT INTO `ds_city` VALUES ('12', '哈尔滨', '167');
INSERT INTO `ds_city` VALUES ('12', '大庆', '168');
INSERT INTO `ds_city` VALUES ('12', '大兴安岭', '169');
INSERT INTO `ds_city` VALUES ('12', '鹤岗', '170');
INSERT INTO `ds_city` VALUES ('12', '黑河', '171');
INSERT INTO `ds_city` VALUES ('12', '鸡西', '172');
INSERT INTO `ds_city` VALUES ('12', '佳木斯', '173');
INSERT INTO `ds_city` VALUES ('12', '牡丹江', '174');
INSERT INTO `ds_city` VALUES ('12', '七台河', '175');
INSERT INTO `ds_city` VALUES ('12', '齐齐哈尔', '176');
INSERT INTO `ds_city` VALUES ('12', '双鸭山', '177');
INSERT INTO `ds_city` VALUES ('12', '绥化', '178');
INSERT INTO `ds_city` VALUES ('12', '伊春', '179');
INSERT INTO `ds_city` VALUES ('13', '武汉', '180');
INSERT INTO `ds_city` VALUES ('13', '仙桃', '181');
INSERT INTO `ds_city` VALUES ('13', '鄂州', '182');
INSERT INTO `ds_city` VALUES ('13', '黄冈', '183');
INSERT INTO `ds_city` VALUES ('13', '黄石', '184');
INSERT INTO `ds_city` VALUES ('13', '荆门', '185');
INSERT INTO `ds_city` VALUES ('13', '荆州', '186');
INSERT INTO `ds_city` VALUES ('13', '潜江', '187');
INSERT INTO `ds_city` VALUES ('13', '神农架林区', '188');
INSERT INTO `ds_city` VALUES ('13', '十堰', '189');
INSERT INTO `ds_city` VALUES ('13', '随州', '190');
INSERT INTO `ds_city` VALUES ('13', '天门', '191');
INSERT INTO `ds_city` VALUES ('13', '咸宁', '192');
INSERT INTO `ds_city` VALUES ('13', '襄樊', '193');
INSERT INTO `ds_city` VALUES ('13', '孝感', '194');
INSERT INTO `ds_city` VALUES ('13', '宜昌', '195');
INSERT INTO `ds_city` VALUES ('13', '恩施', '196');
INSERT INTO `ds_city` VALUES ('14', '长沙', '197');
INSERT INTO `ds_city` VALUES ('14', '张家界', '198');
INSERT INTO `ds_city` VALUES ('14', '常德', '199');
INSERT INTO `ds_city` VALUES ('14', '郴州', '200');
INSERT INTO `ds_city` VALUES ('14', '衡阳', '201');
INSERT INTO `ds_city` VALUES ('14', '怀化', '202');
INSERT INTO `ds_city` VALUES ('14', '娄底', '203');
INSERT INTO `ds_city` VALUES ('14', '邵阳', '204');
INSERT INTO `ds_city` VALUES ('14', '湘潭', '205');
INSERT INTO `ds_city` VALUES ('14', '湘西', '206');
INSERT INTO `ds_city` VALUES ('14', '益阳', '207');
INSERT INTO `ds_city` VALUES ('14', '永州', '208');
INSERT INTO `ds_city` VALUES ('14', '岳阳', '209');
INSERT INTO `ds_city` VALUES ('14', '株洲', '210');
INSERT INTO `ds_city` VALUES ('15', '长春', '211');
INSERT INTO `ds_city` VALUES ('15', '吉林', '212');
INSERT INTO `ds_city` VALUES ('15', '白城', '213');
INSERT INTO `ds_city` VALUES ('15', '白山', '214');
INSERT INTO `ds_city` VALUES ('15', '辽源', '215');
INSERT INTO `ds_city` VALUES ('15', '四平', '216');
INSERT INTO `ds_city` VALUES ('15', '松原', '217');
INSERT INTO `ds_city` VALUES ('15', '通化', '218');
INSERT INTO `ds_city` VALUES ('15', '延边', '219');
INSERT INTO `ds_city` VALUES ('16', '南京', '220');
INSERT INTO `ds_city` VALUES ('16', '苏州', '221');
INSERT INTO `ds_city` VALUES ('16', '无锡', '222');
INSERT INTO `ds_city` VALUES ('16', '常州', '223');
INSERT INTO `ds_city` VALUES ('16', '淮安', '224');
INSERT INTO `ds_city` VALUES ('16', '连云港', '225');
INSERT INTO `ds_city` VALUES ('16', '南通', '226');
INSERT INTO `ds_city` VALUES ('16', '宿迁', '227');
INSERT INTO `ds_city` VALUES ('16', '泰州', '228');
INSERT INTO `ds_city` VALUES ('16', '徐州', '229');
INSERT INTO `ds_city` VALUES ('16', '盐城', '230');
INSERT INTO `ds_city` VALUES ('16', '扬州', '231');
INSERT INTO `ds_city` VALUES ('16', '镇江', '232');
INSERT INTO `ds_city` VALUES ('17', '南昌', '233');
INSERT INTO `ds_city` VALUES ('17', '抚州', '234');
INSERT INTO `ds_city` VALUES ('17', '赣州', '235');
INSERT INTO `ds_city` VALUES ('17', '吉安', '236');
INSERT INTO `ds_city` VALUES ('17', '景德镇', '237');
INSERT INTO `ds_city` VALUES ('17', '九江', '238');
INSERT INTO `ds_city` VALUES ('17', '萍乡', '239');
INSERT INTO `ds_city` VALUES ('17', '上饶', '240');
INSERT INTO `ds_city` VALUES ('17', '新余', '241');
INSERT INTO `ds_city` VALUES ('17', '宜春', '242');
INSERT INTO `ds_city` VALUES ('17', '鹰潭', '243');
INSERT INTO `ds_city` VALUES ('18', '沈阳', '244');
INSERT INTO `ds_city` VALUES ('18', '大连', '245');
INSERT INTO `ds_city` VALUES ('18', '鞍山', '246');
INSERT INTO `ds_city` VALUES ('18', '本溪', '247');
INSERT INTO `ds_city` VALUES ('18', '朝阳', '248');
INSERT INTO `ds_city` VALUES ('18', '丹东', '249');
INSERT INTO `ds_city` VALUES ('18', '抚顺', '250');
INSERT INTO `ds_city` VALUES ('18', '阜新', '251');
INSERT INTO `ds_city` VALUES ('18', '葫芦岛', '252');
INSERT INTO `ds_city` VALUES ('18', '锦州', '253');
INSERT INTO `ds_city` VALUES ('18', '辽阳', '254');
INSERT INTO `ds_city` VALUES ('18', '盘锦', '255');
INSERT INTO `ds_city` VALUES ('18', '铁岭', '256');
INSERT INTO `ds_city` VALUES ('18', '营口', '257');
INSERT INTO `ds_city` VALUES ('19', '呼和浩特', '258');
INSERT INTO `ds_city` VALUES ('19', '阿拉善盟', '259');
INSERT INTO `ds_city` VALUES ('19', '巴彦淖尔盟', '260');
INSERT INTO `ds_city` VALUES ('19', '包头', '261');
INSERT INTO `ds_city` VALUES ('19', '赤峰', '262');
INSERT INTO `ds_city` VALUES ('19', '鄂尔多斯', '263');
INSERT INTO `ds_city` VALUES ('19', '呼伦贝尔', '264');
INSERT INTO `ds_city` VALUES ('19', '通辽', '265');
INSERT INTO `ds_city` VALUES ('19', '乌海', '266');
INSERT INTO `ds_city` VALUES ('19', '乌兰察布市', '267');
INSERT INTO `ds_city` VALUES ('19', '锡林郭勒盟', '268');
INSERT INTO `ds_city` VALUES ('19', '兴安盟', '269');
INSERT INTO `ds_city` VALUES ('20', '银川', '270');
INSERT INTO `ds_city` VALUES ('20', '固原', '271');
INSERT INTO `ds_city` VALUES ('20', '石嘴山', '272');
INSERT INTO `ds_city` VALUES ('20', '吴忠', '273');
INSERT INTO `ds_city` VALUES ('20', '中卫', '274');
INSERT INTO `ds_city` VALUES ('21', '西宁', '275');
INSERT INTO `ds_city` VALUES ('21', '果洛', '276');
INSERT INTO `ds_city` VALUES ('21', '海北', '277');
INSERT INTO `ds_city` VALUES ('21', '海东', '278');
INSERT INTO `ds_city` VALUES ('21', '海南', '279');
INSERT INTO `ds_city` VALUES ('21', '海西', '280');
INSERT INTO `ds_city` VALUES ('21', '黄南', '281');
INSERT INTO `ds_city` VALUES ('21', '玉树', '282');
INSERT INTO `ds_city` VALUES ('22', '济南', '283');
INSERT INTO `ds_city` VALUES ('22', '青岛', '284');
INSERT INTO `ds_city` VALUES ('22', '滨州', '285');
INSERT INTO `ds_city` VALUES ('22', '德州', '286');
INSERT INTO `ds_city` VALUES ('22', '东营', '287');
INSERT INTO `ds_city` VALUES ('22', '菏泽', '288');
INSERT INTO `ds_city` VALUES ('22', '济宁', '289');
INSERT INTO `ds_city` VALUES ('22', '莱芜', '290');
INSERT INTO `ds_city` VALUES ('22', '聊城', '291');
INSERT INTO `ds_city` VALUES ('22', '临沂', '292');
INSERT INTO `ds_city` VALUES ('22', '日照', '293');
INSERT INTO `ds_city` VALUES ('22', '泰安', '294');
INSERT INTO `ds_city` VALUES ('22', '威海', '295');
INSERT INTO `ds_city` VALUES ('22', '潍坊', '296');
INSERT INTO `ds_city` VALUES ('22', '烟台', '297');
INSERT INTO `ds_city` VALUES ('22', '枣庄', '298');
INSERT INTO `ds_city` VALUES ('22', '淄博', '299');
INSERT INTO `ds_city` VALUES ('23', '太原', '300');
INSERT INTO `ds_city` VALUES ('23', '长治', '301');
INSERT INTO `ds_city` VALUES ('23', '大同', '302');
INSERT INTO `ds_city` VALUES ('23', '晋城', '303');
INSERT INTO `ds_city` VALUES ('23', '晋中', '304');
INSERT INTO `ds_city` VALUES ('23', '临汾', '305');
INSERT INTO `ds_city` VALUES ('23', '吕梁', '306');
INSERT INTO `ds_city` VALUES ('23', '朔州', '307');
INSERT INTO `ds_city` VALUES ('23', '忻州', '308');
INSERT INTO `ds_city` VALUES ('23', '阳泉', '309');
INSERT INTO `ds_city` VALUES ('23', '运城', '310');
INSERT INTO `ds_city` VALUES ('24', '西安', '311');
INSERT INTO `ds_city` VALUES ('24', '安康', '312');
INSERT INTO `ds_city` VALUES ('24', '宝鸡', '313');
INSERT INTO `ds_city` VALUES ('24', '汉中', '314');
INSERT INTO `ds_city` VALUES ('24', '商洛', '315');
INSERT INTO `ds_city` VALUES ('24', '铜川', '316');
INSERT INTO `ds_city` VALUES ('24', '渭南', '317');
INSERT INTO `ds_city` VALUES ('24', '咸阳', '318');
INSERT INTO `ds_city` VALUES ('24', '延安', '319');
INSERT INTO `ds_city` VALUES ('24', '榆林', '320');
INSERT INTO `ds_city` VALUES ('25', '上海', '321');
INSERT INTO `ds_city` VALUES ('26', '成都', '322');
INSERT INTO `ds_city` VALUES ('26', '绵阳', '323');
INSERT INTO `ds_city` VALUES ('26', '阿坝', '324');
INSERT INTO `ds_city` VALUES ('26', '巴中', '325');
INSERT INTO `ds_city` VALUES ('26', '达州', '326');
INSERT INTO `ds_city` VALUES ('26', '德阳', '327');
INSERT INTO `ds_city` VALUES ('26', '甘孜', '328');
INSERT INTO `ds_city` VALUES ('26', '广安', '329');
INSERT INTO `ds_city` VALUES ('26', '广元', '330');
INSERT INTO `ds_city` VALUES ('26', '乐山', '331');
INSERT INTO `ds_city` VALUES ('26', '凉山', '332');
INSERT INTO `ds_city` VALUES ('26', '眉山', '333');
INSERT INTO `ds_city` VALUES ('26', '南充', '334');
INSERT INTO `ds_city` VALUES ('26', '内江', '335');
INSERT INTO `ds_city` VALUES ('26', '攀枝花', '336');
INSERT INTO `ds_city` VALUES ('26', '遂宁', '337');
INSERT INTO `ds_city` VALUES ('26', '雅安', '338');
INSERT INTO `ds_city` VALUES ('26', '宜宾', '339');
INSERT INTO `ds_city` VALUES ('26', '资阳', '340');
INSERT INTO `ds_city` VALUES ('26', '自贡', '341');
INSERT INTO `ds_city` VALUES ('26', '泸州', '342');
INSERT INTO `ds_city` VALUES ('27', '天津', '343');
INSERT INTO `ds_city` VALUES ('28', '拉萨', '344');
INSERT INTO `ds_city` VALUES ('28', '阿里', '345');
INSERT INTO `ds_city` VALUES ('28', '昌都', '346');
INSERT INTO `ds_city` VALUES ('28', '林芝', '347');
INSERT INTO `ds_city` VALUES ('28', '那曲', '348');
INSERT INTO `ds_city` VALUES ('28', '日喀则', '349');
INSERT INTO `ds_city` VALUES ('28', '山南', '350');
INSERT INTO `ds_city` VALUES ('29', '乌鲁木齐', '351');
INSERT INTO `ds_city` VALUES ('29', '阿克苏', '352');
INSERT INTO `ds_city` VALUES ('29', '阿拉尔', '353');
INSERT INTO `ds_city` VALUES ('29', '巴音郭楞', '354');
INSERT INTO `ds_city` VALUES ('29', '博尔塔拉', '355');
INSERT INTO `ds_city` VALUES ('29', '昌吉', '356');
INSERT INTO `ds_city` VALUES ('29', '哈密', '357');
INSERT INTO `ds_city` VALUES ('29', '和田', '358');
INSERT INTO `ds_city` VALUES ('29', '喀什', '359');
INSERT INTO `ds_city` VALUES ('29', '克拉玛依', '360');
INSERT INTO `ds_city` VALUES ('29', '克孜勒苏', '361');
INSERT INTO `ds_city` VALUES ('29', '石河子', '362');
INSERT INTO `ds_city` VALUES ('29', '图木舒克', '363');
INSERT INTO `ds_city` VALUES ('29', '吐鲁番', '364');
INSERT INTO `ds_city` VALUES ('29', '五家渠', '365');
INSERT INTO `ds_city` VALUES ('29', '伊犁', '366');
INSERT INTO `ds_city` VALUES ('30', '昆明', '367');
INSERT INTO `ds_city` VALUES ('30', '怒江', '368');
INSERT INTO `ds_city` VALUES ('30', '普洱', '369');
INSERT INTO `ds_city` VALUES ('30', '丽江', '370');
INSERT INTO `ds_city` VALUES ('30', '保山', '371');
INSERT INTO `ds_city` VALUES ('30', '楚雄', '372');
INSERT INTO `ds_city` VALUES ('30', '大理', '373');
INSERT INTO `ds_city` VALUES ('30', '德宏', '374');
INSERT INTO `ds_city` VALUES ('30', '迪庆', '375');
INSERT INTO `ds_city` VALUES ('30', '红河', '376');
INSERT INTO `ds_city` VALUES ('30', '临沧', '377');
INSERT INTO `ds_city` VALUES ('30', '曲靖', '378');
INSERT INTO `ds_city` VALUES ('30', '文山', '379');
INSERT INTO `ds_city` VALUES ('30', '西双版纳', '380');
INSERT INTO `ds_city` VALUES ('30', '玉溪', '381');
INSERT INTO `ds_city` VALUES ('30', '昭通', '382');
INSERT INTO `ds_city` VALUES ('31', '杭州', '383');
INSERT INTO `ds_city` VALUES ('31', '湖州', '384');
INSERT INTO `ds_city` VALUES ('31', '嘉兴', '385');
INSERT INTO `ds_city` VALUES ('31', '金华', '386');
INSERT INTO `ds_city` VALUES ('31', '丽水', '387');
INSERT INTO `ds_city` VALUES ('31', '宁波', '388');
INSERT INTO `ds_city` VALUES ('31', '绍兴', '389');
INSERT INTO `ds_city` VALUES ('31', '台州', '390');
INSERT INTO `ds_city` VALUES ('31', '温州', '391');
INSERT INTO `ds_city` VALUES ('31', '舟山', '392');
INSERT INTO `ds_city` VALUES ('31', '衢州', '393');
INSERT INTO `ds_city` VALUES ('32', '重庆', '394');
INSERT INTO `ds_city` VALUES ('33', '香港', '395');
INSERT INTO `ds_city` VALUES ('34', '澳门', '396');
INSERT INTO `ds_city` VALUES ('35', '台湾', '397');
INSERT INTO `ds_city` VALUES ('36', '迎江区', '398');
INSERT INTO `ds_city` VALUES ('36', '大观区', '399');
INSERT INTO `ds_city` VALUES ('36', '宜秀区', '400');
INSERT INTO `ds_city` VALUES ('36', '桐城市', '401');
INSERT INTO `ds_city` VALUES ('36', '怀宁县', '402');
INSERT INTO `ds_city` VALUES ('36', '枞阳县', '403');
INSERT INTO `ds_city` VALUES ('36', '潜山县', '404');
INSERT INTO `ds_city` VALUES ('36', '太湖县', '405');
INSERT INTO `ds_city` VALUES ('36', '宿松县', '406');
INSERT INTO `ds_city` VALUES ('36', '望江县', '407');
INSERT INTO `ds_city` VALUES ('36', '岳西县', '408');
INSERT INTO `ds_city` VALUES ('37', '中市区', '409');
INSERT INTO `ds_city` VALUES ('37', '东市区', '410');
INSERT INTO `ds_city` VALUES ('37', '西市区', '411');
INSERT INTO `ds_city` VALUES ('37', '郊区', '412');
INSERT INTO `ds_city` VALUES ('37', '怀远县', '413');
INSERT INTO `ds_city` VALUES ('37', '五河县', '414');
INSERT INTO `ds_city` VALUES ('37', '固镇县', '415');
INSERT INTO `ds_city` VALUES ('38', '居巢区', '416');
INSERT INTO `ds_city` VALUES ('38', '庐江县', '417');
INSERT INTO `ds_city` VALUES ('38', '无为县', '418');
INSERT INTO `ds_city` VALUES ('38', '含山县', '419');
INSERT INTO `ds_city` VALUES ('38', '和县', '420');
INSERT INTO `ds_city` VALUES ('39', '贵池区', '421');
INSERT INTO `ds_city` VALUES ('39', '东至县', '422');
INSERT INTO `ds_city` VALUES ('39', '石台县', '423');
INSERT INTO `ds_city` VALUES ('39', '青阳县', '424');
INSERT INTO `ds_city` VALUES ('40', '琅琊区', '425');
INSERT INTO `ds_city` VALUES ('40', '南谯区', '426');
INSERT INTO `ds_city` VALUES ('40', '天长市', '427');
INSERT INTO `ds_city` VALUES ('40', '明光市', '428');
INSERT INTO `ds_city` VALUES ('40', '来安县', '429');
INSERT INTO `ds_city` VALUES ('40', '全椒县', '430');
INSERT INTO `ds_city` VALUES ('40', '定远县', '431');
INSERT INTO `ds_city` VALUES ('40', '凤阳县', '432');
INSERT INTO `ds_city` VALUES ('41', '蚌山区', '433');
INSERT INTO `ds_city` VALUES ('41', '龙子湖区', '434');
INSERT INTO `ds_city` VALUES ('41', '禹会区', '435');
INSERT INTO `ds_city` VALUES ('41', '淮上区', '436');
INSERT INTO `ds_city` VALUES ('41', '颍州区', '437');
INSERT INTO `ds_city` VALUES ('41', '颍东区', '438');
INSERT INTO `ds_city` VALUES ('41', '颍东区', '439');
INSERT INTO `ds_city` VALUES ('41', '界首市', '440');
INSERT INTO `ds_city` VALUES ('41', '临泉县', '441');
INSERT INTO `ds_city` VALUES ('41', '太和县', '442');
INSERT INTO `ds_city` VALUES ('41', '阜南县', '443');
INSERT INTO `ds_city` VALUES ('41', '颖上县', '444');
INSERT INTO `ds_city` VALUES ('42', '相山区', '445');
INSERT INTO `ds_city` VALUES ('42', '杜集区', '446');
INSERT INTO `ds_city` VALUES ('42', '烈山区', '447');
INSERT INTO `ds_city` VALUES ('42', '濉溪县', '448');
INSERT INTO `ds_city` VALUES ('43', '田家庵区', '449');
INSERT INTO `ds_city` VALUES ('43', '大通区', '450');
INSERT INTO `ds_city` VALUES ('43', '谢家集区', '451');
INSERT INTO `ds_city` VALUES ('43', '八公山区', '452');
INSERT INTO `ds_city` VALUES ('43', '潘集区', '453');
INSERT INTO `ds_city` VALUES ('43', '凤台县', '454');
INSERT INTO `ds_city` VALUES ('44', '屯溪区', '455');
INSERT INTO `ds_city` VALUES ('44', '黄山区', '456');
INSERT INTO `ds_city` VALUES ('44', '徽州区', '457');
INSERT INTO `ds_city` VALUES ('44', '歙县', '458');
INSERT INTO `ds_city` VALUES ('44', '休宁县', '459');
INSERT INTO `ds_city` VALUES ('44', '黟县', '460');
INSERT INTO `ds_city` VALUES ('44', '祁门县', '461');
INSERT INTO `ds_city` VALUES ('45', '金安区', '462');
INSERT INTO `ds_city` VALUES ('45', '裕安区', '463');
INSERT INTO `ds_city` VALUES ('45', '寿县', '464');
INSERT INTO `ds_city` VALUES ('45', '霍邱县', '465');
INSERT INTO `ds_city` VALUES ('45', '舒城县', '466');
INSERT INTO `ds_city` VALUES ('45', '金寨县', '467');
INSERT INTO `ds_city` VALUES ('45', '霍山县', '468');
INSERT INTO `ds_city` VALUES ('46', '雨山区', '469');
INSERT INTO `ds_city` VALUES ('46', '花山区', '470');
INSERT INTO `ds_city` VALUES ('46', '金家庄区', '471');
INSERT INTO `ds_city` VALUES ('46', '当涂县', '472');
INSERT INTO `ds_city` VALUES ('47', '埇桥区', '473');
INSERT INTO `ds_city` VALUES ('47', '砀山县', '474');
INSERT INTO `ds_city` VALUES ('47', '萧县', '475');
INSERT INTO `ds_city` VALUES ('47', '灵璧县', '476');
INSERT INTO `ds_city` VALUES ('47', '泗县', '477');
INSERT INTO `ds_city` VALUES ('48', '铜官山区', '478');
INSERT INTO `ds_city` VALUES ('48', '狮子山区', '479');
INSERT INTO `ds_city` VALUES ('48', '郊区', '480');
INSERT INTO `ds_city` VALUES ('48', '铜陵县', '481');
INSERT INTO `ds_city` VALUES ('49', '镜湖区', '482');
INSERT INTO `ds_city` VALUES ('49', '弋江区', '483');
INSERT INTO `ds_city` VALUES ('49', '鸠江区', '484');
INSERT INTO `ds_city` VALUES ('49', '三山区', '485');
INSERT INTO `ds_city` VALUES ('49', '芜湖县', '486');
INSERT INTO `ds_city` VALUES ('49', '繁昌县', '487');
INSERT INTO `ds_city` VALUES ('49', '南陵县', '488');
INSERT INTO `ds_city` VALUES ('50', '宣州区', '489');
INSERT INTO `ds_city` VALUES ('50', '宁国市', '490');
INSERT INTO `ds_city` VALUES ('50', '郎溪县', '491');
INSERT INTO `ds_city` VALUES ('50', '广德县', '492');
INSERT INTO `ds_city` VALUES ('50', '泾县', '493');
INSERT INTO `ds_city` VALUES ('50', '绩溪县', '494');
INSERT INTO `ds_city` VALUES ('50', '旌德县', '495');
INSERT INTO `ds_city` VALUES ('51', '涡阳县', '496');
INSERT INTO `ds_city` VALUES ('51', '蒙城县', '497');
INSERT INTO `ds_city` VALUES ('51', '利辛县', '498');
INSERT INTO `ds_city` VALUES ('51', '谯城区', '499');
INSERT INTO `ds_city` VALUES ('52', '东城区', '500');
INSERT INTO `ds_city` VALUES ('52', '西城区', '501');
INSERT INTO `ds_city` VALUES ('52', '海淀区', '502');
INSERT INTO `ds_city` VALUES ('52', '朝阳区', '503');
INSERT INTO `ds_city` VALUES ('52', '崇文区', '504');
INSERT INTO `ds_city` VALUES ('52', '宣武区', '505');
INSERT INTO `ds_city` VALUES ('52', '丰台区', '506');
INSERT INTO `ds_city` VALUES ('52', '石景山区', '507');
INSERT INTO `ds_city` VALUES ('52', '房山区', '508');
INSERT INTO `ds_city` VALUES ('52', '门头沟区', '509');
INSERT INTO `ds_city` VALUES ('52', '通州区', '510');
INSERT INTO `ds_city` VALUES ('52', '顺义区', '511');
INSERT INTO `ds_city` VALUES ('52', '昌平区', '512');
INSERT INTO `ds_city` VALUES ('52', '怀柔区', '513');
INSERT INTO `ds_city` VALUES ('52', '平谷区', '514');
INSERT INTO `ds_city` VALUES ('52', '大兴区', '515');
INSERT INTO `ds_city` VALUES ('52', '密云县', '516');
INSERT INTO `ds_city` VALUES ('52', '延庆县', '517');
INSERT INTO `ds_city` VALUES ('53', '鼓楼区', '518');
INSERT INTO `ds_city` VALUES ('53', '台江区', '519');
INSERT INTO `ds_city` VALUES ('53', '仓山区', '520');
INSERT INTO `ds_city` VALUES ('53', '马尾区', '521');
INSERT INTO `ds_city` VALUES ('53', '晋安区', '522');
INSERT INTO `ds_city` VALUES ('53', '福清市', '523');
INSERT INTO `ds_city` VALUES ('53', '长乐市', '524');
INSERT INTO `ds_city` VALUES ('53', '闽侯县', '525');
INSERT INTO `ds_city` VALUES ('53', '连江县', '526');
INSERT INTO `ds_city` VALUES ('53', '罗源县', '527');
INSERT INTO `ds_city` VALUES ('53', '闽清县', '528');
INSERT INTO `ds_city` VALUES ('53', '永泰县', '529');
INSERT INTO `ds_city` VALUES ('53', '平潭县', '530');
INSERT INTO `ds_city` VALUES ('54', '新罗区', '531');
INSERT INTO `ds_city` VALUES ('54', '漳平市', '532');
INSERT INTO `ds_city` VALUES ('54', '长汀县', '533');
INSERT INTO `ds_city` VALUES ('54', '永定县', '534');
INSERT INTO `ds_city` VALUES ('54', '上杭县', '535');
INSERT INTO `ds_city` VALUES ('54', '武平县', '536');
INSERT INTO `ds_city` VALUES ('54', '连城县', '537');
INSERT INTO `ds_city` VALUES ('55', '延平区', '538');
INSERT INTO `ds_city` VALUES ('55', '邵武市', '539');
INSERT INTO `ds_city` VALUES ('55', '武夷山市', '540');
INSERT INTO `ds_city` VALUES ('55', '建瓯市', '541');
INSERT INTO `ds_city` VALUES ('55', '建阳市', '542');
INSERT INTO `ds_city` VALUES ('55', '顺昌县', '543');
INSERT INTO `ds_city` VALUES ('55', '浦城县', '544');
INSERT INTO `ds_city` VALUES ('55', '光泽县', '545');
INSERT INTO `ds_city` VALUES ('55', '松溪县', '546');
INSERT INTO `ds_city` VALUES ('55', '政和县', '547');
INSERT INTO `ds_city` VALUES ('56', '蕉城区', '548');
INSERT INTO `ds_city` VALUES ('56', '福安市', '549');
INSERT INTO `ds_city` VALUES ('56', '福鼎市', '550');
INSERT INTO `ds_city` VALUES ('56', '霞浦县', '551');
INSERT INTO `ds_city` VALUES ('56', '古田县', '552');
INSERT INTO `ds_city` VALUES ('56', '屏南县', '553');
INSERT INTO `ds_city` VALUES ('56', '寿宁县', '554');
INSERT INTO `ds_city` VALUES ('56', '周宁县', '555');
INSERT INTO `ds_city` VALUES ('56', '柘荣县', '556');
INSERT INTO `ds_city` VALUES ('57', '城厢区', '557');
INSERT INTO `ds_city` VALUES ('57', '涵江区', '558');
INSERT INTO `ds_city` VALUES ('57', '荔城区', '559');
INSERT INTO `ds_city` VALUES ('57', '秀屿区', '560');
INSERT INTO `ds_city` VALUES ('57', '仙游县', '561');
INSERT INTO `ds_city` VALUES ('58', '鲤城区', '562');
INSERT INTO `ds_city` VALUES ('58', '丰泽区', '563');
INSERT INTO `ds_city` VALUES ('58', '洛江区', '564');
INSERT INTO `ds_city` VALUES ('58', '清濛开发区', '565');
INSERT INTO `ds_city` VALUES ('58', '泉港区', '566');
INSERT INTO `ds_city` VALUES ('58', '石狮市', '567');
INSERT INTO `ds_city` VALUES ('58', '晋江市', '568');
INSERT INTO `ds_city` VALUES ('58', '南安市', '569');
INSERT INTO `ds_city` VALUES ('58', '惠安县', '570');
INSERT INTO `ds_city` VALUES ('58', '安溪县', '571');
INSERT INTO `ds_city` VALUES ('58', '永春县', '572');
INSERT INTO `ds_city` VALUES ('58', '德化县', '573');
INSERT INTO `ds_city` VALUES ('58', '金门县', '574');
INSERT INTO `ds_city` VALUES ('59', '梅列区', '575');
INSERT INTO `ds_city` VALUES ('59', '三元区', '576');
INSERT INTO `ds_city` VALUES ('59', '永安市', '577');
INSERT INTO `ds_city` VALUES ('59', '明溪县', '578');
INSERT INTO `ds_city` VALUES ('59', '清流县', '579');
INSERT INTO `ds_city` VALUES ('59', '宁化县', '580');
INSERT INTO `ds_city` VALUES ('59', '大田县', '581');
INSERT INTO `ds_city` VALUES ('59', '尤溪县', '582');
INSERT INTO `ds_city` VALUES ('59', '沙县', '583');
INSERT INTO `ds_city` VALUES ('59', '沙县', '584');
INSERT INTO `ds_city` VALUES ('59', '泰宁县', '585');
INSERT INTO `ds_city` VALUES ('59', '建宁县', '586');
INSERT INTO `ds_city` VALUES ('60', '思明区', '587');
INSERT INTO `ds_city` VALUES ('60', '海沧区', '588');
INSERT INTO `ds_city` VALUES ('60', '湖里区', '589');
INSERT INTO `ds_city` VALUES ('60', '集美区', '590');
INSERT INTO `ds_city` VALUES ('60', '同安区', '591');
INSERT INTO `ds_city` VALUES ('60', '翔安区', '592');
INSERT INTO `ds_city` VALUES ('61', '芗城区', '593');
INSERT INTO `ds_city` VALUES ('61', '龙文区', '594');
INSERT INTO `ds_city` VALUES ('61', '龙海市', '595');
INSERT INTO `ds_city` VALUES ('61', '云霄县', '596');
INSERT INTO `ds_city` VALUES ('61', '漳浦县', '597');
INSERT INTO `ds_city` VALUES ('61', '诏安县', '598');
INSERT INTO `ds_city` VALUES ('61', '长泰县', '599');
INSERT INTO `ds_city` VALUES ('61', '东山县', '600');
INSERT INTO `ds_city` VALUES ('61', '南靖县', '601');
INSERT INTO `ds_city` VALUES ('61', '平和县', '602');
INSERT INTO `ds_city` VALUES ('61', '华安县', '603');
INSERT INTO `ds_city` VALUES ('62', '皋兰县', '604');
INSERT INTO `ds_city` VALUES ('62', '城关区', '605');
INSERT INTO `ds_city` VALUES ('62', '七里河区', '606');
INSERT INTO `ds_city` VALUES ('62', '西固区', '607');
INSERT INTO `ds_city` VALUES ('62', '安宁区', '608');
INSERT INTO `ds_city` VALUES ('62', '红古区', '609');
INSERT INTO `ds_city` VALUES ('62', '永登县', '610');
INSERT INTO `ds_city` VALUES ('62', '榆中县', '611');
INSERT INTO `ds_city` VALUES ('63', '白银区', '612');
INSERT INTO `ds_city` VALUES ('63', '平川区', '613');
INSERT INTO `ds_city` VALUES ('63', '会宁县', '614');
INSERT INTO `ds_city` VALUES ('63', '景泰县', '615');
INSERT INTO `ds_city` VALUES ('63', '靖远县', '616');
INSERT INTO `ds_city` VALUES ('63', '临洮县', '617');
INSERT INTO `ds_city` VALUES ('64', '陇西县', '618');
INSERT INTO `ds_city` VALUES ('64', '通渭县', '619');
INSERT INTO `ds_city` VALUES ('64', '渭源县', '620');
INSERT INTO `ds_city` VALUES ('64', '漳县', '621');
INSERT INTO `ds_city` VALUES ('64', '岷县', '622');
INSERT INTO `ds_city` VALUES ('64', '安定区', '623');
INSERT INTO `ds_city` VALUES ('64', '安定区', '624');
INSERT INTO `ds_city` VALUES ('65', '合作市', '625');
INSERT INTO `ds_city` VALUES ('65', '临潭县', '626');
INSERT INTO `ds_city` VALUES ('65', '卓尼县', '627');
INSERT INTO `ds_city` VALUES ('65', '舟曲县', '628');
INSERT INTO `ds_city` VALUES ('65', '迭部县', '629');
INSERT INTO `ds_city` VALUES ('65', '玛曲县', '630');
INSERT INTO `ds_city` VALUES ('65', '碌曲县', '631');
INSERT INTO `ds_city` VALUES ('65', '夏河县', '632');
INSERT INTO `ds_city` VALUES ('66', '嘉峪关市', '633');
INSERT INTO `ds_city` VALUES ('67', '金川区', '634');
INSERT INTO `ds_city` VALUES ('67', '永昌县', '635');
INSERT INTO `ds_city` VALUES ('68', '肃州区', '636');
INSERT INTO `ds_city` VALUES ('68', '玉门市', '637');
INSERT INTO `ds_city` VALUES ('68', '敦煌市', '638');
INSERT INTO `ds_city` VALUES ('68', '金塔县', '639');
INSERT INTO `ds_city` VALUES ('68', '瓜州县', '640');
INSERT INTO `ds_city` VALUES ('68', '肃北', '641');
INSERT INTO `ds_city` VALUES ('68', '阿克塞', '642');
INSERT INTO `ds_city` VALUES ('69', '临夏市', '643');
INSERT INTO `ds_city` VALUES ('69', '临夏县', '644');
INSERT INTO `ds_city` VALUES ('69', '康乐县', '645');
INSERT INTO `ds_city` VALUES ('69', '永靖县', '646');
INSERT INTO `ds_city` VALUES ('69', '广河县', '647');
INSERT INTO `ds_city` VALUES ('69', '和政县', '648');
INSERT INTO `ds_city` VALUES ('69', '东乡族自治县', '649');
INSERT INTO `ds_city` VALUES ('69', '积石山', '650');
INSERT INTO `ds_city` VALUES ('70', '成县', '651');
INSERT INTO `ds_city` VALUES ('70', '徽县', '652');
INSERT INTO `ds_city` VALUES ('70', '康县', '653');
INSERT INTO `ds_city` VALUES ('70', '礼县', '654');
INSERT INTO `ds_city` VALUES ('70', '两当县', '655');
INSERT INTO `ds_city` VALUES ('70', '文县', '656');
INSERT INTO `ds_city` VALUES ('70', '西和县', '657');
INSERT INTO `ds_city` VALUES ('70', '宕昌县', '658');
INSERT INTO `ds_city` VALUES ('70', '武都区', '659');
INSERT INTO `ds_city` VALUES ('71', '崇信县', '660');
INSERT INTO `ds_city` VALUES ('71', '华亭县', '661');
INSERT INTO `ds_city` VALUES ('71', '静宁县', '662');
INSERT INTO `ds_city` VALUES ('71', '灵台县', '663');
INSERT INTO `ds_city` VALUES ('71', '崆峒区', '664');
INSERT INTO `ds_city` VALUES ('71', '庄浪县', '665');
INSERT INTO `ds_city` VALUES ('71', '泾川县', '666');
INSERT INTO `ds_city` VALUES ('72', '合水县', '667');
INSERT INTO `ds_city` VALUES ('72', '华池县', '668');
INSERT INTO `ds_city` VALUES ('72', '环县', '669');
INSERT INTO `ds_city` VALUES ('72', '宁县', '670');
INSERT INTO `ds_city` VALUES ('72', '庆城县', '671');
INSERT INTO `ds_city` VALUES ('72', '西峰区', '672');
INSERT INTO `ds_city` VALUES ('72', '镇原县', '673');
INSERT INTO `ds_city` VALUES ('72', '正宁县', '674');
INSERT INTO `ds_city` VALUES ('73', '甘谷县', '675');
INSERT INTO `ds_city` VALUES ('72', '秦安县', '676');
INSERT INTO `ds_city` VALUES ('72', '清水县', '677');
INSERT INTO `ds_city` VALUES ('72', '秦州区', '678');
INSERT INTO `ds_city` VALUES ('72', '麦积区', '679');
INSERT INTO `ds_city` VALUES ('72', '武山县', '680');
INSERT INTO `ds_city` VALUES ('72', '张家川', '681');
INSERT INTO `ds_city` VALUES ('73', '古浪县', '682');
INSERT INTO `ds_city` VALUES ('73', '民勤县', '683');
INSERT INTO `ds_city` VALUES ('73', '天祝', '684');
INSERT INTO `ds_city` VALUES ('73', '凉州区', '685');
INSERT INTO `ds_city` VALUES ('74', '高台县', '686');
INSERT INTO `ds_city` VALUES ('74', '临泽县', '687');
INSERT INTO `ds_city` VALUES ('74', '民乐县', '688');
INSERT INTO `ds_city` VALUES ('74', '山丹县', '689');
INSERT INTO `ds_city` VALUES ('74', '肃南', '690');
INSERT INTO `ds_city` VALUES ('74', '甘州区', '691');
INSERT INTO `ds_city` VALUES ('75', '从化市', '692');
INSERT INTO `ds_city` VALUES ('75', '天河区', '693');
INSERT INTO `ds_city` VALUES ('75', '东山区', '694');
INSERT INTO `ds_city` VALUES ('75', '白云区', '695');
INSERT INTO `ds_city` VALUES ('75', '海珠区', '696');
INSERT INTO `ds_city` VALUES ('75', '荔湾区', '697');
INSERT INTO `ds_city` VALUES ('75', '越秀区', '698');
INSERT INTO `ds_city` VALUES ('75', '黄埔区', '699');
INSERT INTO `ds_city` VALUES ('75', '番禺区', '700');
INSERT INTO `ds_city` VALUES ('75', '花都区', '701');
INSERT INTO `ds_city` VALUES ('75', '增城区', '702');
INSERT INTO `ds_city` VALUES ('75', '从化区', '703');
INSERT INTO `ds_city` VALUES ('75', '市郊', '704');
INSERT INTO `ds_city` VALUES ('76', '福田区', '705');
INSERT INTO `ds_city` VALUES ('76', '罗湖区', '706');
INSERT INTO `ds_city` VALUES ('76', '南山区', '707');
INSERT INTO `ds_city` VALUES ('76', '宝安区', '708');
INSERT INTO `ds_city` VALUES ('76', '龙岗区', '709');
INSERT INTO `ds_city` VALUES ('76', '盐田区', '710');
INSERT INTO `ds_city` VALUES ('77', '湘桥区', '711');
INSERT INTO `ds_city` VALUES ('77', '潮安县', '712');
INSERT INTO `ds_city` VALUES ('77', '饶平县', '713');
INSERT INTO `ds_city` VALUES ('78', '南城区', '714');
INSERT INTO `ds_city` VALUES ('78', '东城区', '715');
INSERT INTO `ds_city` VALUES ('78', '万江区', '716');
INSERT INTO `ds_city` VALUES ('78', '莞城区', '717');
INSERT INTO `ds_city` VALUES ('78', '石龙镇', '718');
INSERT INTO `ds_city` VALUES ('78', '虎门镇', '719');
INSERT INTO `ds_city` VALUES ('78', '麻涌镇', '720');
INSERT INTO `ds_city` VALUES ('78', '道滘镇', '721');
INSERT INTO `ds_city` VALUES ('78', '石碣镇', '722');
INSERT INTO `ds_city` VALUES ('78', '沙田镇', '723');
INSERT INTO `ds_city` VALUES ('78', '望牛墩镇', '724');
INSERT INTO `ds_city` VALUES ('78', '洪梅镇', '725');
INSERT INTO `ds_city` VALUES ('78', '茶山镇', '726');
INSERT INTO `ds_city` VALUES ('78', '寮步镇', '727');
INSERT INTO `ds_city` VALUES ('78', '大岭山镇', '728');
INSERT INTO `ds_city` VALUES ('78', '大朗镇', '729');
INSERT INTO `ds_city` VALUES ('78', '黄江镇', '730');
INSERT INTO `ds_city` VALUES ('78', '樟木头', '731');
INSERT INTO `ds_city` VALUES ('78', '凤岗镇', '732');
INSERT INTO `ds_city` VALUES ('78', '塘厦镇', '733');
INSERT INTO `ds_city` VALUES ('78', '谢岗镇', '734');
INSERT INTO `ds_city` VALUES ('78', '厚街镇', '735');
INSERT INTO `ds_city` VALUES ('78', '清溪镇', '736');
INSERT INTO `ds_city` VALUES ('78', '常平镇', '737');
INSERT INTO `ds_city` VALUES ('78', '桥头镇', '738');
INSERT INTO `ds_city` VALUES ('78', '横沥镇', '739');
INSERT INTO `ds_city` VALUES ('78', '东坑镇', '740');
INSERT INTO `ds_city` VALUES ('78', '企石镇', '741');
INSERT INTO `ds_city` VALUES ('78', '石排镇', '742');
INSERT INTO `ds_city` VALUES ('78', '长安镇', '743');
INSERT INTO `ds_city` VALUES ('78', '中堂镇', '744');
INSERT INTO `ds_city` VALUES ('78', '高埗镇', '745');
INSERT INTO `ds_city` VALUES ('79', '禅城区', '746');
INSERT INTO `ds_city` VALUES ('79', '南海区', '747');
INSERT INTO `ds_city` VALUES ('79', '顺德区', '748');
INSERT INTO `ds_city` VALUES ('79', '三水区', '749');
INSERT INTO `ds_city` VALUES ('79', '高明区', '750');
INSERT INTO `ds_city` VALUES ('80', '东源县', '751');
INSERT INTO `ds_city` VALUES ('80', '和平县', '752');
INSERT INTO `ds_city` VALUES ('80', '源城区', '753');
INSERT INTO `ds_city` VALUES ('80', '连平县', '754');
INSERT INTO `ds_city` VALUES ('80', '龙川县', '755');
INSERT INTO `ds_city` VALUES ('80', '紫金县', '756');
INSERT INTO `ds_city` VALUES ('81', '惠阳区', '757');
INSERT INTO `ds_city` VALUES ('81', '惠城区', '758');
INSERT INTO `ds_city` VALUES ('81', '大亚湾', '759');
INSERT INTO `ds_city` VALUES ('81', '博罗县', '760');
INSERT INTO `ds_city` VALUES ('81', '惠东县', '761');
INSERT INTO `ds_city` VALUES ('81', '龙门县', '762');
INSERT INTO `ds_city` VALUES ('82', '江海区', '763');
INSERT INTO `ds_city` VALUES ('82', '蓬江区', '764');
INSERT INTO `ds_city` VALUES ('82', '新会区', '765');
INSERT INTO `ds_city` VALUES ('82', '台山市', '766');
INSERT INTO `ds_city` VALUES ('82', '开平市', '767');
INSERT INTO `ds_city` VALUES ('82', '鹤山市', '768');
INSERT INTO `ds_city` VALUES ('82', '恩平市', '769');
INSERT INTO `ds_city` VALUES ('83', '榕城区', '770');
INSERT INTO `ds_city` VALUES ('83', '普宁市', '771');
INSERT INTO `ds_city` VALUES ('83', '揭东县', '772');
INSERT INTO `ds_city` VALUES ('83', '揭西县', '773');
INSERT INTO `ds_city` VALUES ('83', '惠来县', '774');
INSERT INTO `ds_city` VALUES ('84', '茂南区', '775');
INSERT INTO `ds_city` VALUES ('84', '茂港区', '776');
INSERT INTO `ds_city` VALUES ('84', '高州市', '777');
INSERT INTO `ds_city` VALUES ('84', '化州市', '778');
INSERT INTO `ds_city` VALUES ('84', '信宜市', '779');
INSERT INTO `ds_city` VALUES ('84', '电白县', '780');
INSERT INTO `ds_city` VALUES ('85', '梅县', '781');
INSERT INTO `ds_city` VALUES ('85', '梅江区', '782');
INSERT INTO `ds_city` VALUES ('85', '兴宁市', '783');
INSERT INTO `ds_city` VALUES ('85', '大埔县', '784');
INSERT INTO `ds_city` VALUES ('85', '丰顺县', '785');
INSERT INTO `ds_city` VALUES ('85', '五华县', '786');
INSERT INTO `ds_city` VALUES ('85', '平远县', '787');
INSERT INTO `ds_city` VALUES ('85', '蕉岭县', '788');
INSERT INTO `ds_city` VALUES ('86', '清城区', '789');
INSERT INTO `ds_city` VALUES ('86', '英德市', '790');
INSERT INTO `ds_city` VALUES ('86', '连州市', '791');
INSERT INTO `ds_city` VALUES ('86', '佛冈县', '792');
INSERT INTO `ds_city` VALUES ('86', '阳山县', '793');
INSERT INTO `ds_city` VALUES ('86', '清新县', '794');
INSERT INTO `ds_city` VALUES ('86', '连山', '795');
INSERT INTO `ds_city` VALUES ('86', '连南', '796');
INSERT INTO `ds_city` VALUES ('86', '南澳县', '797');
INSERT INTO `ds_city` VALUES ('87', '潮阳区', '798');
INSERT INTO `ds_city` VALUES ('87', '澄海区', '799');
INSERT INTO `ds_city` VALUES ('87', '龙湖区', '800');
INSERT INTO `ds_city` VALUES ('87', '金平区', '801');
INSERT INTO `ds_city` VALUES ('87', '濠江区', '802');
INSERT INTO `ds_city` VALUES ('87', '潮南区', '803');
INSERT INTO `ds_city` VALUES ('88', '城区', '804');
INSERT INTO `ds_city` VALUES ('88', '陆丰市', '805');
INSERT INTO `ds_city` VALUES ('88', '海丰县', '806');
INSERT INTO `ds_city` VALUES ('88', '陆河县', '807');
INSERT INTO `ds_city` VALUES ('89', '曲江县', '808');
INSERT INTO `ds_city` VALUES ('89', '浈江区', '809');
INSERT INTO `ds_city` VALUES ('89', '武江区', '810');
INSERT INTO `ds_city` VALUES ('89', '曲江区', '811');
INSERT INTO `ds_city` VALUES ('89', '乐昌市', '812');
INSERT INTO `ds_city` VALUES ('89', '南雄市', '813');
INSERT INTO `ds_city` VALUES ('89', '始兴县', '814');
INSERT INTO `ds_city` VALUES ('89', '仁化县', '815');
INSERT INTO `ds_city` VALUES ('89', '翁源县', '816');
INSERT INTO `ds_city` VALUES ('89', '新丰县', '817');
INSERT INTO `ds_city` VALUES ('89', '乳源', '818');
INSERT INTO `ds_city` VALUES ('90', '江城区', '819');
INSERT INTO `ds_city` VALUES ('90', '阳春市', '820');
INSERT INTO `ds_city` VALUES ('90', '阳西县', '821');
INSERT INTO `ds_city` VALUES ('90', '阳东县', '822');
INSERT INTO `ds_city` VALUES ('91', '云城区', '823');
INSERT INTO `ds_city` VALUES ('91', '罗定市', '824');
INSERT INTO `ds_city` VALUES ('91', '新兴县', '825');
INSERT INTO `ds_city` VALUES ('91', '郁南县', '826');
INSERT INTO `ds_city` VALUES ('91', '云安县', '827');
INSERT INTO `ds_city` VALUES ('91', '赤坎区', '828');
INSERT INTO `ds_city` VALUES ('92', '霞山区', '829');
INSERT INTO `ds_city` VALUES ('92', '坡头区', '830');
INSERT INTO `ds_city` VALUES ('92', '麻章区', '831');
INSERT INTO `ds_city` VALUES ('92', '廉江市', '832');
INSERT INTO `ds_city` VALUES ('92', '雷州市', '833');
INSERT INTO `ds_city` VALUES ('92', '吴川市', '834');
INSERT INTO `ds_city` VALUES ('92', '遂溪县', '835');
INSERT INTO `ds_city` VALUES ('92', '徐闻县', '836');
INSERT INTO `ds_city` VALUES ('93', '肇庆市', '837');
INSERT INTO `ds_city` VALUES ('93', '高要市', '838');
INSERT INTO `ds_city` VALUES ('93', '四会市', '839');
INSERT INTO `ds_city` VALUES ('93', '广宁县', '840');
INSERT INTO `ds_city` VALUES ('93', '怀集县', '841');
INSERT INTO `ds_city` VALUES ('93', '封开县', '842');
INSERT INTO `ds_city` VALUES ('93', '德庆县', '843');
INSERT INTO `ds_city` VALUES ('94', '石岐街道', '844');
INSERT INTO `ds_city` VALUES ('94', '东区街道', '845');
INSERT INTO `ds_city` VALUES ('94', '西区街道', '846');
INSERT INTO `ds_city` VALUES ('94', '环城街道', '847');
INSERT INTO `ds_city` VALUES ('94', '中山港街道', '848');
INSERT INTO `ds_city` VALUES ('94', '五桂山街道', '849');
INSERT INTO `ds_city` VALUES ('95', '香洲区', '850');
INSERT INTO `ds_city` VALUES ('95', '斗门区', '851');
INSERT INTO `ds_city` VALUES ('95', '金湾区', '852');
INSERT INTO `ds_city` VALUES ('96', '邕宁区', '853');
INSERT INTO `ds_city` VALUES ('96', '青秀区', '854');
INSERT INTO `ds_city` VALUES ('96', '兴宁区', '855');
INSERT INTO `ds_city` VALUES ('96', '良庆区', '856');
INSERT INTO `ds_city` VALUES ('96', '西乡塘区', '857');
INSERT INTO `ds_city` VALUES ('96', '江南区', '858');
INSERT INTO `ds_city` VALUES ('96', '武鸣县', '859');
INSERT INTO `ds_city` VALUES ('96', '隆安县', '860');
INSERT INTO `ds_city` VALUES ('96', '马山县', '861');
INSERT INTO `ds_city` VALUES ('96', '上林县', '862');
INSERT INTO `ds_city` VALUES ('96', '宾阳县', '863');
INSERT INTO `ds_city` VALUES ('96', '横县', '864');
INSERT INTO `ds_city` VALUES ('97', '秀峰区', '865');
INSERT INTO `ds_city` VALUES ('97', '叠彩区', '866');
INSERT INTO `ds_city` VALUES ('97', '象山区', '867');
INSERT INTO `ds_city` VALUES ('97', '七星区', '868');
INSERT INTO `ds_city` VALUES ('97', '雁山区', '869');
INSERT INTO `ds_city` VALUES ('97', '阳朔县', '870');
INSERT INTO `ds_city` VALUES ('97', '临桂县', '871');
INSERT INTO `ds_city` VALUES ('97', '灵川县', '872');
INSERT INTO `ds_city` VALUES ('97', '全州县', '873');
INSERT INTO `ds_city` VALUES ('97', '平乐县', '874');
INSERT INTO `ds_city` VALUES ('97', '兴安县', '875');
INSERT INTO `ds_city` VALUES ('97', '灌阳县', '876');
INSERT INTO `ds_city` VALUES ('97', '荔浦县', '877');
INSERT INTO `ds_city` VALUES ('97', '资源县', '878');
INSERT INTO `ds_city` VALUES ('97', '永福县', '879');
INSERT INTO `ds_city` VALUES ('97', '龙胜', '880');
INSERT INTO `ds_city` VALUES ('97', '恭城', '881');
INSERT INTO `ds_city` VALUES ('98', '右江区', '882');
INSERT INTO `ds_city` VALUES ('98', '凌云县', '883');
INSERT INTO `ds_city` VALUES ('98', '平果县', '884');
INSERT INTO `ds_city` VALUES ('98', '西林县', '885');
INSERT INTO `ds_city` VALUES ('98', '乐业县', '886');
INSERT INTO `ds_city` VALUES ('98', '德保县', '887');
INSERT INTO `ds_city` VALUES ('98', '田林县', '888');
INSERT INTO `ds_city` VALUES ('98', '田阳县', '889');
INSERT INTO `ds_city` VALUES ('98', '靖西县', '890');
INSERT INTO `ds_city` VALUES ('98', '田东县', '891');
INSERT INTO `ds_city` VALUES ('98', '那坡县', '892');
INSERT INTO `ds_city` VALUES ('98', '隆林', '893');
INSERT INTO `ds_city` VALUES ('99', '海城区', '894');
INSERT INTO `ds_city` VALUES ('99', '银海区', '895');
INSERT INTO `ds_city` VALUES ('99', '铁山港区', '896');
INSERT INTO `ds_city` VALUES ('99', '合浦县', '897');
INSERT INTO `ds_city` VALUES ('100', '江州区', '898');
INSERT INTO `ds_city` VALUES ('100', '凭祥市', '899');
INSERT INTO `ds_city` VALUES ('100', '宁明县', '900');
INSERT INTO `ds_city` VALUES ('100', '扶绥县', '901');
INSERT INTO `ds_city` VALUES ('100', '龙州县', '902');
INSERT INTO `ds_city` VALUES ('100', '大新县', '903');
INSERT INTO `ds_city` VALUES ('100', '天等县', '904');
INSERT INTO `ds_city` VALUES ('101', '港口区', '905');
INSERT INTO `ds_city` VALUES ('101', '防城区', '906');
INSERT INTO `ds_city` VALUES ('101', '东兴市', '907');
INSERT INTO `ds_city` VALUES ('101', '上思县', '908');
INSERT INTO `ds_city` VALUES ('102', '港北区', '909');
INSERT INTO `ds_city` VALUES ('102', '港南区', '910');
INSERT INTO `ds_city` VALUES ('102', '覃塘区', '911');
INSERT INTO `ds_city` VALUES ('102', '桂平市', '912');
INSERT INTO `ds_city` VALUES ('102', '平南县', '913');
INSERT INTO `ds_city` VALUES ('103', '金城江区', '914');
INSERT INTO `ds_city` VALUES ('103', '宜州市', '915');
INSERT INTO `ds_city` VALUES ('103', '天峨县', '916');
INSERT INTO `ds_city` VALUES ('103', '凤山县', '917');
INSERT INTO `ds_city` VALUES ('103', '南丹县', '918');
INSERT INTO `ds_city` VALUES ('103', '东兰县', '919');
INSERT INTO `ds_city` VALUES ('103', '都安', '920');
INSERT INTO `ds_city` VALUES ('103', '罗城', '921');
INSERT INTO `ds_city` VALUES ('103', '巴马', '922');
INSERT INTO `ds_city` VALUES ('103', '环江', '923');
INSERT INTO `ds_city` VALUES ('103', '大化', '924');
INSERT INTO `ds_city` VALUES ('104', '八步区', '925');
INSERT INTO `ds_city` VALUES ('104', '钟山县', '926');
INSERT INTO `ds_city` VALUES ('104', '昭平县', '927');
INSERT INTO `ds_city` VALUES ('104', '富川', '928');
INSERT INTO `ds_city` VALUES ('105', '兴宾区', '929');
INSERT INTO `ds_city` VALUES ('105', '合山市', '930');
INSERT INTO `ds_city` VALUES ('105', '象州县', '931');
INSERT INTO `ds_city` VALUES ('105', '武宣县', '932');
INSERT INTO `ds_city` VALUES ('105', '忻城县', '933');
INSERT INTO `ds_city` VALUES ('105', '金秀', '934');
INSERT INTO `ds_city` VALUES ('106', '城中区', '935');
INSERT INTO `ds_city` VALUES ('106', '鱼峰区', '936');
INSERT INTO `ds_city` VALUES ('106', '柳北区', '937');
INSERT INTO `ds_city` VALUES ('106', '柳南区', '938');
INSERT INTO `ds_city` VALUES ('106', '柳江县', '939');
INSERT INTO `ds_city` VALUES ('106', '柳城县', '940');
INSERT INTO `ds_city` VALUES ('106', '鹿寨县', '941');
INSERT INTO `ds_city` VALUES ('106', '融安县', '942');
INSERT INTO `ds_city` VALUES ('106', '融水', '943');
INSERT INTO `ds_city` VALUES ('106', '三江', '944');
INSERT INTO `ds_city` VALUES ('107', '钦南区', '945');
INSERT INTO `ds_city` VALUES ('107', '钦北区', '946');
INSERT INTO `ds_city` VALUES ('107', '灵山县', '947');
INSERT INTO `ds_city` VALUES ('107', '浦北县', '948');
INSERT INTO `ds_city` VALUES ('108', '万秀区', '949');
INSERT INTO `ds_city` VALUES ('108', '蝶山区', '950');
INSERT INTO `ds_city` VALUES ('108', '长洲区', '951');
INSERT INTO `ds_city` VALUES ('108', '岑溪市', '952');
INSERT INTO `ds_city` VALUES ('108', '苍梧县', '953');
INSERT INTO `ds_city` VALUES ('108', '藤县', '954');
INSERT INTO `ds_city` VALUES ('108', '蒙山县', '955');
INSERT INTO `ds_city` VALUES ('109', '玉州区', '956');
INSERT INTO `ds_city` VALUES ('109', '北流市', '957');
INSERT INTO `ds_city` VALUES ('109', '容县', '958');
INSERT INTO `ds_city` VALUES ('109', '陆川县', '959');
INSERT INTO `ds_city` VALUES ('109', '博白县', '960');
INSERT INTO `ds_city` VALUES ('109', '兴业县', '961');
INSERT INTO `ds_city` VALUES ('110', '南明区', '962');
INSERT INTO `ds_city` VALUES ('110', '云岩区', '963');
INSERT INTO `ds_city` VALUES ('110', '花溪区', '964');
INSERT INTO `ds_city` VALUES ('110', '乌当区', '965');
INSERT INTO `ds_city` VALUES ('110', '白云区', '966');
INSERT INTO `ds_city` VALUES ('110', '小河区', '967');
INSERT INTO `ds_city` VALUES ('110', '金阳新区', '968');
INSERT INTO `ds_city` VALUES ('110', '新天园区', '969');
INSERT INTO `ds_city` VALUES ('110', '清镇市', '970');
INSERT INTO `ds_city` VALUES ('110', '开阳县', '971');
INSERT INTO `ds_city` VALUES ('110', '修文县', '972');
INSERT INTO `ds_city` VALUES ('110', '息烽县', '973');
INSERT INTO `ds_city` VALUES ('111', '西秀区', '974');
INSERT INTO `ds_city` VALUES ('111', '关岭', '975');
INSERT INTO `ds_city` VALUES ('111', '镇宁', '976');
INSERT INTO `ds_city` VALUES ('111', '紫云', '977');
INSERT INTO `ds_city` VALUES ('111', '平坝县', '978');
INSERT INTO `ds_city` VALUES ('111', '普定县', '979');
INSERT INTO `ds_city` VALUES ('112', '毕节市', '980');
INSERT INTO `ds_city` VALUES ('112', '大方县', '981');
INSERT INTO `ds_city` VALUES ('112', '黔西县', '982');
INSERT INTO `ds_city` VALUES ('112', '金沙县', '983');
INSERT INTO `ds_city` VALUES ('112', '织金县', '984');
INSERT INTO `ds_city` VALUES ('112', '纳雍县', '985');
INSERT INTO `ds_city` VALUES ('112', '赫章县', '986');
INSERT INTO `ds_city` VALUES ('112', '威宁', '987');
INSERT INTO `ds_city` VALUES ('113', '钟山区', '988');
INSERT INTO `ds_city` VALUES ('113', '六枝特区', '989');
INSERT INTO `ds_city` VALUES ('113', '水城县', '990');
INSERT INTO `ds_city` VALUES ('113', '盘县', '991');
INSERT INTO `ds_city` VALUES ('114', '凯里市', '992');
INSERT INTO `ds_city` VALUES ('114', '黄平县', '993');
INSERT INTO `ds_city` VALUES ('114', '施秉县', '994');
INSERT INTO `ds_city` VALUES ('114', '三穗县', '995');
INSERT INTO `ds_city` VALUES ('114', '镇远县', '996');
INSERT INTO `ds_city` VALUES ('114', '岑巩县', '997');
INSERT INTO `ds_city` VALUES ('114', '天柱县', '998');
INSERT INTO `ds_city` VALUES ('114', '锦屏县', '999');
INSERT INTO `ds_city` VALUES ('114', '剑河县', '1000');
INSERT INTO `ds_city` VALUES ('114', '台江县', '1001');
INSERT INTO `ds_city` VALUES ('114', '黎平县', '1002');
INSERT INTO `ds_city` VALUES ('114', '榕江县', '1003');
INSERT INTO `ds_city` VALUES ('114', '从江县', '1004');
INSERT INTO `ds_city` VALUES ('114', '雷山县', '1005');
INSERT INTO `ds_city` VALUES ('114', '麻江县', '1006');
INSERT INTO `ds_city` VALUES ('114', '丹寨县', '1007');
INSERT INTO `ds_city` VALUES ('115', '都匀市', '1008');
INSERT INTO `ds_city` VALUES ('115', '福泉市', '1009');
INSERT INTO `ds_city` VALUES ('115', '荔波县', '1010');
INSERT INTO `ds_city` VALUES ('115', '贵定县', '1011');
INSERT INTO `ds_city` VALUES ('115', '瓮安县', '1012');
INSERT INTO `ds_city` VALUES ('115', '独山县', '1013');
INSERT INTO `ds_city` VALUES ('115', '平塘县', '1014');
INSERT INTO `ds_city` VALUES ('115', '罗甸县', '1015');
INSERT INTO `ds_city` VALUES ('115', '长顺县', '1016');
INSERT INTO `ds_city` VALUES ('115', '龙里县', '1017');
INSERT INTO `ds_city` VALUES ('115', '惠水县', '1018');
INSERT INTO `ds_city` VALUES ('115', '三都', '1019');
INSERT INTO `ds_city` VALUES ('116', '兴义市', '1020');
INSERT INTO `ds_city` VALUES ('116', '兴仁县', '1021');
INSERT INTO `ds_city` VALUES ('116', '普安县', '1022');
INSERT INTO `ds_city` VALUES ('116', '晴隆县', '1023');
INSERT INTO `ds_city` VALUES ('116', '贞丰县', '1024');
INSERT INTO `ds_city` VALUES ('116', '望谟县', '1025');
INSERT INTO `ds_city` VALUES ('116', '册亨县', '1026');
INSERT INTO `ds_city` VALUES ('116', '安龙县', '1027');
INSERT INTO `ds_city` VALUES ('117', '铜仁市', '1028');
INSERT INTO `ds_city` VALUES ('117', '江口县', '1029');
INSERT INTO `ds_city` VALUES ('117', '石阡县', '1030');
INSERT INTO `ds_city` VALUES ('117', '思南县', '1031');
INSERT INTO `ds_city` VALUES ('117', '德江县', '1032');
INSERT INTO `ds_city` VALUES ('117', '玉屏', '1033');
INSERT INTO `ds_city` VALUES ('117', '印江', '1034');
INSERT INTO `ds_city` VALUES ('117', '沿河', '1035');
INSERT INTO `ds_city` VALUES ('117', '松桃', '1036');
INSERT INTO `ds_city` VALUES ('117', '万山特区', '1037');
INSERT INTO `ds_city` VALUES ('118', '红花岗区', '1038');
INSERT INTO `ds_city` VALUES ('118', '务川县', '1039');
INSERT INTO `ds_city` VALUES ('118', '道真县', '1040');
INSERT INTO `ds_city` VALUES ('118', '汇川区', '1041');
INSERT INTO `ds_city` VALUES ('118', '赤水市', '1042');
INSERT INTO `ds_city` VALUES ('118', '仁怀市', '1043');
INSERT INTO `ds_city` VALUES ('118', '遵义县', '1044');
INSERT INTO `ds_city` VALUES ('118', '桐梓县', '1045');
INSERT INTO `ds_city` VALUES ('118', '绥阳县', '1046');
INSERT INTO `ds_city` VALUES ('118', '正安县', '1047');
INSERT INTO `ds_city` VALUES ('118', '凤冈县', '1048');
INSERT INTO `ds_city` VALUES ('118', '湄潭县', '1049');
INSERT INTO `ds_city` VALUES ('118', '余庆县', '1050');
INSERT INTO `ds_city` VALUES ('118', '习水县', '1051');
INSERT INTO `ds_city` VALUES ('118', '道真', '1052');
INSERT INTO `ds_city` VALUES ('118', '务川', '1053');
INSERT INTO `ds_city` VALUES ('119', '秀英区', '1054');
INSERT INTO `ds_city` VALUES ('119', '龙华区', '1055');
INSERT INTO `ds_city` VALUES ('119', '琼山区', '1056');
INSERT INTO `ds_city` VALUES ('119', '美兰区', '1057');
INSERT INTO `ds_city` VALUES ('137', '市区', '1058');
INSERT INTO `ds_city` VALUES ('137', '洋浦开发区', '1059');
INSERT INTO `ds_city` VALUES ('137', '那大镇', '1060');
INSERT INTO `ds_city` VALUES ('137', '王五镇', '1061');
INSERT INTO `ds_city` VALUES ('137', '雅星镇', '1062');
INSERT INTO `ds_city` VALUES ('137', '大成镇', '1063');
INSERT INTO `ds_city` VALUES ('137', '中和镇', '1064');
INSERT INTO `ds_city` VALUES ('137', '峨蔓镇', '1065');
INSERT INTO `ds_city` VALUES ('137', '南丰镇', '1066');
INSERT INTO `ds_city` VALUES ('137', '白马井镇', '1067');
INSERT INTO `ds_city` VALUES ('137', '兰洋镇', '1068');
INSERT INTO `ds_city` VALUES ('137', '和庆镇', '1069');
INSERT INTO `ds_city` VALUES ('137', '海头镇', '1070');
INSERT INTO `ds_city` VALUES ('137', '排浦镇', '1071');
INSERT INTO `ds_city` VALUES ('137', '东成镇', '1072');
INSERT INTO `ds_city` VALUES ('137', '光村镇', '1073');
INSERT INTO `ds_city` VALUES ('137', '木棠镇', '1074');
INSERT INTO `ds_city` VALUES ('137', '新州镇', '1075');
INSERT INTO `ds_city` VALUES ('137', '三都镇', '1076');
INSERT INTO `ds_city` VALUES ('137', '其他', '1077');
INSERT INTO `ds_city` VALUES ('138', '长安区', '1078');
INSERT INTO `ds_city` VALUES ('138', '桥东区', '1079');
INSERT INTO `ds_city` VALUES ('138', '桥西区', '1080');
INSERT INTO `ds_city` VALUES ('138', '新华区', '1081');
INSERT INTO `ds_city` VALUES ('138', '裕华区', '1082');
INSERT INTO `ds_city` VALUES ('138', '井陉矿区', '1083');
INSERT INTO `ds_city` VALUES ('138', '高新区', '1084');
INSERT INTO `ds_city` VALUES ('138', '辛集市', '1085');
INSERT INTO `ds_city` VALUES ('138', '藁城市', '1086');
INSERT INTO `ds_city` VALUES ('138', '晋州市', '1087');
INSERT INTO `ds_city` VALUES ('138', '新乐市', '1088');
INSERT INTO `ds_city` VALUES ('138', '鹿泉市', '1089');
INSERT INTO `ds_city` VALUES ('138', '井陉县', '1090');
INSERT INTO `ds_city` VALUES ('138', '正定县', '1091');
INSERT INTO `ds_city` VALUES ('138', '栾城县', '1092');
INSERT INTO `ds_city` VALUES ('138', '行唐县', '1093');
INSERT INTO `ds_city` VALUES ('138', '灵寿县', '1094');
INSERT INTO `ds_city` VALUES ('138', '高邑县', '1095');
INSERT INTO `ds_city` VALUES ('138', '深泽县', '1096');
INSERT INTO `ds_city` VALUES ('138', '赞皇县', '1097');
INSERT INTO `ds_city` VALUES ('138', '无极县', '1098');
INSERT INTO `ds_city` VALUES ('138', '平山县', '1099');
INSERT INTO `ds_city` VALUES ('138', '元氏县', '1100');
INSERT INTO `ds_city` VALUES ('138', '赵县', '1101');
INSERT INTO `ds_city` VALUES ('139', '新市区', '1102');
INSERT INTO `ds_city` VALUES ('139', '南市区', '1103');
INSERT INTO `ds_city` VALUES ('139', '北市区', '1104');
INSERT INTO `ds_city` VALUES ('139', '涿州市', '1105');
INSERT INTO `ds_city` VALUES ('139', '定州市', '1106');
INSERT INTO `ds_city` VALUES ('139', '安国市', '1107');
INSERT INTO `ds_city` VALUES ('139', '高碑店市', '1108');
INSERT INTO `ds_city` VALUES ('139', '满城县', '1109');
INSERT INTO `ds_city` VALUES ('139', '清苑县', '1110');
INSERT INTO `ds_city` VALUES ('139', '涞水县', '1111');
INSERT INTO `ds_city` VALUES ('139', '阜平县', '1112');
INSERT INTO `ds_city` VALUES ('139', '徐水县', '1113');
INSERT INTO `ds_city` VALUES ('139', '定兴县', '1114');
INSERT INTO `ds_city` VALUES ('139', '唐县', '1115');
INSERT INTO `ds_city` VALUES ('139', '高阳县', '1116');
INSERT INTO `ds_city` VALUES ('139', '容城县', '1117');
INSERT INTO `ds_city` VALUES ('139', '涞源县', '1118');
INSERT INTO `ds_city` VALUES ('139', '望都县', '1119');
INSERT INTO `ds_city` VALUES ('139', '安新县', '1120');
INSERT INTO `ds_city` VALUES ('139', '易县', '1121');
INSERT INTO `ds_city` VALUES ('139', '曲阳县', '1122');
INSERT INTO `ds_city` VALUES ('139', '蠡县', '1123');
INSERT INTO `ds_city` VALUES ('139', '顺平县', '1124');
INSERT INTO `ds_city` VALUES ('139', '博野县', '1125');
INSERT INTO `ds_city` VALUES ('139', '雄县', '1126');
INSERT INTO `ds_city` VALUES ('140', '运河区', '1127');
INSERT INTO `ds_city` VALUES ('140', '新华区', '1128');
INSERT INTO `ds_city` VALUES ('140', '泊头市', '1129');
INSERT INTO `ds_city` VALUES ('140', '任丘市', '1130');
INSERT INTO `ds_city` VALUES ('140', '黄骅市', '1131');
INSERT INTO `ds_city` VALUES ('140', '河间市', '1132');
INSERT INTO `ds_city` VALUES ('140', '沧县', '1133');
INSERT INTO `ds_city` VALUES ('140', '青县', '1134');
INSERT INTO `ds_city` VALUES ('140', '东光县', '1135');
INSERT INTO `ds_city` VALUES ('140', '海兴县', '1136');
INSERT INTO `ds_city` VALUES ('140', '盐山县', '1137');
INSERT INTO `ds_city` VALUES ('140', '肃宁县', '1138');
INSERT INTO `ds_city` VALUES ('140', '南皮县', '1139');
INSERT INTO `ds_city` VALUES ('140', '吴桥县', '1140');
INSERT INTO `ds_city` VALUES ('140', '献县', '1141');
INSERT INTO `ds_city` VALUES ('140', '孟村', '1142');
INSERT INTO `ds_city` VALUES ('141', '双桥区', '1143');
INSERT INTO `ds_city` VALUES ('141', '双滦区', '1144');
INSERT INTO `ds_city` VALUES ('141', '鹰手营子矿区', '1145');
INSERT INTO `ds_city` VALUES ('141', '承德县', '1146');
INSERT INTO `ds_city` VALUES ('141', '兴隆县', '1147');
INSERT INTO `ds_city` VALUES ('141', '平泉县', '1148');
INSERT INTO `ds_city` VALUES ('141', '平泉县', '1149');
INSERT INTO `ds_city` VALUES ('141', '隆化县', '1150');
INSERT INTO `ds_city` VALUES ('141', '丰宁', '1151');
INSERT INTO `ds_city` VALUES ('141', '宽城', '1152');
INSERT INTO `ds_city` VALUES ('141', '围场', '1153');
INSERT INTO `ds_city` VALUES ('142', '从台区', '1154');
INSERT INTO `ds_city` VALUES ('142', '复兴区', '1155');
INSERT INTO `ds_city` VALUES ('142', '邯山区', '1156');
INSERT INTO `ds_city` VALUES ('142', '峰峰矿区', '1157');
INSERT INTO `ds_city` VALUES ('142', '武安市', '1158');
INSERT INTO `ds_city` VALUES ('142', '邯郸县', '1159');
INSERT INTO `ds_city` VALUES ('142', '临漳县', '1160');
INSERT INTO `ds_city` VALUES ('142', '成安县', '1161');
INSERT INTO `ds_city` VALUES ('142', '大名县', '1162');
INSERT INTO `ds_city` VALUES ('142', '涉县', '1163');
INSERT INTO `ds_city` VALUES ('142', '磁县', '1164');
INSERT INTO `ds_city` VALUES ('142', '肥乡县', '1165');
INSERT INTO `ds_city` VALUES ('142', '永年县', '1166');
INSERT INTO `ds_city` VALUES ('142', '邱县', '1167');
INSERT INTO `ds_city` VALUES ('142', '鸡泽县', '1168');
INSERT INTO `ds_city` VALUES ('142', '广平县', '1169');
INSERT INTO `ds_city` VALUES ('142', '馆陶县', '1170');
INSERT INTO `ds_city` VALUES ('142', '魏县', '1171');
INSERT INTO `ds_city` VALUES ('142', '曲周县', '1172');
INSERT INTO `ds_city` VALUES ('143', '桃城区', '1173');
INSERT INTO `ds_city` VALUES ('143', '冀州市', '1174');
INSERT INTO `ds_city` VALUES ('143', '深州市', '1175');
INSERT INTO `ds_city` VALUES ('143', '枣强县', '1176');
INSERT INTO `ds_city` VALUES ('143', '武邑县', '1177');
INSERT INTO `ds_city` VALUES ('143', '武强县', '1178');
INSERT INTO `ds_city` VALUES ('143', '饶阳县', '1179');
INSERT INTO `ds_city` VALUES ('143', '安平县', '1180');
INSERT INTO `ds_city` VALUES ('143', '故城县', '1181');
INSERT INTO `ds_city` VALUES ('143', '景县', '1182');
INSERT INTO `ds_city` VALUES ('143', '阜城县', '1183');
INSERT INTO `ds_city` VALUES ('144', '安次区', '1184');
INSERT INTO `ds_city` VALUES ('144', '广阳区', '1185');
INSERT INTO `ds_city` VALUES ('144', '霸州市', '1186');
INSERT INTO `ds_city` VALUES ('144', '三河市', '1187');
INSERT INTO `ds_city` VALUES ('144', '固安县', '1188');
INSERT INTO `ds_city` VALUES ('144', '永清县', '1189');
INSERT INTO `ds_city` VALUES ('144', '香河县', '1190');
INSERT INTO `ds_city` VALUES ('144', '大城县', '1191');
INSERT INTO `ds_city` VALUES ('144', '文安县', '1192');
INSERT INTO `ds_city` VALUES ('144', '大厂', '1193');
INSERT INTO `ds_city` VALUES ('145', '海港区', '1194');
INSERT INTO `ds_city` VALUES ('145', '山海关区', '1195');
INSERT INTO `ds_city` VALUES ('145', '北戴河区', '1196');
INSERT INTO `ds_city` VALUES ('145', '昌黎县', '1197');
INSERT INTO `ds_city` VALUES ('145', '抚宁县', '1198');
INSERT INTO `ds_city` VALUES ('145', '卢龙县', '1199');
INSERT INTO `ds_city` VALUES ('145', '青龙', '1200');
INSERT INTO `ds_city` VALUES ('146', '路北区', '1201');
INSERT INTO `ds_city` VALUES ('146', '路南区', '1202');
INSERT INTO `ds_city` VALUES ('146', '古冶区', '1203');
INSERT INTO `ds_city` VALUES ('146', '开平区', '1204');
INSERT INTO `ds_city` VALUES ('146', '丰南区', '1205');
INSERT INTO `ds_city` VALUES ('146', '丰润区', '1206');
INSERT INTO `ds_city` VALUES ('146', '遵化市', '1207');
INSERT INTO `ds_city` VALUES ('146', '迁安市', '1208');
INSERT INTO `ds_city` VALUES ('146', '滦县', '1209');
INSERT INTO `ds_city` VALUES ('146', '滦南县', '1210');
INSERT INTO `ds_city` VALUES ('146', '乐亭县', '1211');
INSERT INTO `ds_city` VALUES ('146', '迁西县', '1212');
INSERT INTO `ds_city` VALUES ('146', '玉田县', '1213');
INSERT INTO `ds_city` VALUES ('146', '唐海县', '1214');
INSERT INTO `ds_city` VALUES ('147', '桥东区', '1215');
INSERT INTO `ds_city` VALUES ('147', '桥西区', '1216');
INSERT INTO `ds_city` VALUES ('147', '南宫市', '1217');
INSERT INTO `ds_city` VALUES ('147', '沙河市', '1218');
INSERT INTO `ds_city` VALUES ('147', '邢台县', '1219');
INSERT INTO `ds_city` VALUES ('147', '临城县', '1220');
INSERT INTO `ds_city` VALUES ('147', '内丘县', '1221');
INSERT INTO `ds_city` VALUES ('147', '柏乡县', '1222');
INSERT INTO `ds_city` VALUES ('147', '隆尧县', '1223');
INSERT INTO `ds_city` VALUES ('147', '任县', '1224');
INSERT INTO `ds_city` VALUES ('147', '南和县', '1225');
INSERT INTO `ds_city` VALUES ('147', '宁晋县', '1226');
INSERT INTO `ds_city` VALUES ('147', '巨鹿县', '1227');
INSERT INTO `ds_city` VALUES ('147', '新河县', '1228');
INSERT INTO `ds_city` VALUES ('147', '广宗县', '1229');
INSERT INTO `ds_city` VALUES ('147', '平乡县', '1230');
INSERT INTO `ds_city` VALUES ('147', '威县', '1231');
INSERT INTO `ds_city` VALUES ('147', '清河县', '1232');
INSERT INTO `ds_city` VALUES ('147', '临西县', '1233');
INSERT INTO `ds_city` VALUES ('148', '桥西区', '1234');
INSERT INTO `ds_city` VALUES ('148', '桥东区', '1235');
INSERT INTO `ds_city` VALUES ('148', '宣化区', '1236');
INSERT INTO `ds_city` VALUES ('148', '下花园区', '1237');
INSERT INTO `ds_city` VALUES ('148', '宣化县', '1238');
INSERT INTO `ds_city` VALUES ('148', '张北县', '1239');
INSERT INTO `ds_city` VALUES ('148', '康保县', '1240');
INSERT INTO `ds_city` VALUES ('148', '沽源县', '1241');
INSERT INTO `ds_city` VALUES ('148', '尚义县', '1242');
INSERT INTO `ds_city` VALUES ('148', '蔚县', '1243');
INSERT INTO `ds_city` VALUES ('148', '阳原县', '1244');
INSERT INTO `ds_city` VALUES ('148', '怀安县', '1245');
INSERT INTO `ds_city` VALUES ('148', '万全县', '1246');
INSERT INTO `ds_city` VALUES ('148', '怀来县', '1247');
INSERT INTO `ds_city` VALUES ('148', '涿鹿县', '1248');
INSERT INTO `ds_city` VALUES ('148', '赤城县', '1249');
INSERT INTO `ds_city` VALUES ('148', '崇礼县', '1250');
INSERT INTO `ds_city` VALUES ('149', '金水区', '1251');
INSERT INTO `ds_city` VALUES ('149', '邙山区', '1252');
INSERT INTO `ds_city` VALUES ('149', '二七区', '1253');
INSERT INTO `ds_city` VALUES ('149', '管城区', '1254');
INSERT INTO `ds_city` VALUES ('149', '中原区', '1255');
INSERT INTO `ds_city` VALUES ('149', '上街区', '1256');
INSERT INTO `ds_city` VALUES ('149', '惠济区', '1257');
INSERT INTO `ds_city` VALUES ('149', '郑东新区', '1258');
INSERT INTO `ds_city` VALUES ('149', '经济技术开发区', '1259');
INSERT INTO `ds_city` VALUES ('149', '高新开发区', '1260');
INSERT INTO `ds_city` VALUES ('149', '出口加工区', '1261');
INSERT INTO `ds_city` VALUES ('149', '巩义市', '1262');
INSERT INTO `ds_city` VALUES ('149', '荥阳市', '1263');
INSERT INTO `ds_city` VALUES ('149', '新密市', '1264');
INSERT INTO `ds_city` VALUES ('149', '新郑市', '1265');
INSERT INTO `ds_city` VALUES ('149', '登封市', '1266');
INSERT INTO `ds_city` VALUES ('149', '中牟县', '1267');
INSERT INTO `ds_city` VALUES ('150', '西工区', '1268');
INSERT INTO `ds_city` VALUES ('150', '老城区', '1269');
INSERT INTO `ds_city` VALUES ('150', '涧西区', '1270');
INSERT INTO `ds_city` VALUES ('150', '瀍河回族区', '1271');
INSERT INTO `ds_city` VALUES ('150', '洛龙区', '1272');
INSERT INTO `ds_city` VALUES ('150', '吉利区', '1273');
INSERT INTO `ds_city` VALUES ('150', '偃师市', '1274');
INSERT INTO `ds_city` VALUES ('150', '孟津县', '1275');
INSERT INTO `ds_city` VALUES ('150', '新安县', '1276');
INSERT INTO `ds_city` VALUES ('150', '栾川县', '1277');
INSERT INTO `ds_city` VALUES ('150', '嵩县', '1278');
INSERT INTO `ds_city` VALUES ('150', '汝阳县', '1279');
INSERT INTO `ds_city` VALUES ('150', '宜阳县', '1280');
INSERT INTO `ds_city` VALUES ('150', '洛宁县', '1281');
INSERT INTO `ds_city` VALUES ('150', '伊川县', '1282');
INSERT INTO `ds_city` VALUES ('151', '鼓楼区', '1283');
INSERT INTO `ds_city` VALUES ('151', '龙亭区', '1284');
INSERT INTO `ds_city` VALUES ('151', '顺河回族区', '1285');
INSERT INTO `ds_city` VALUES ('151', '金明区', '1286');
INSERT INTO `ds_city` VALUES ('151', '禹王台区', '1287');
INSERT INTO `ds_city` VALUES ('151', '杞县', '1288');
INSERT INTO `ds_city` VALUES ('151', '通许县', '1289');
INSERT INTO `ds_city` VALUES ('151', '尉氏县', '1290');
INSERT INTO `ds_city` VALUES ('151', '开封县', '1291');
INSERT INTO `ds_city` VALUES ('151', '兰考县', '1292');
INSERT INTO `ds_city` VALUES ('152', '北关区', '1293');
INSERT INTO `ds_city` VALUES ('152', '文峰区', '1294');
INSERT INTO `ds_city` VALUES ('152', '殷都区', '1295');
INSERT INTO `ds_city` VALUES ('152', '龙安区', '1296');
INSERT INTO `ds_city` VALUES ('152', '林州市', '1297');
INSERT INTO `ds_city` VALUES ('152', '安阳县', '1298');
INSERT INTO `ds_city` VALUES ('152', '汤阴县', '1299');
INSERT INTO `ds_city` VALUES ('152', '滑县', '1300');
INSERT INTO `ds_city` VALUES ('152', '内黄县', '1301');
INSERT INTO `ds_city` VALUES ('153', '淇滨区', '1302');
INSERT INTO `ds_city` VALUES ('153', '山城区', '1303');
INSERT INTO `ds_city` VALUES ('153', '鹤山区', '1304');
INSERT INTO `ds_city` VALUES ('153', '浚县', '1305');
INSERT INTO `ds_city` VALUES ('153', '淇县', '1306');
INSERT INTO `ds_city` VALUES ('154', '济源市', '1307');
INSERT INTO `ds_city` VALUES ('155', '解放区', '1308');
INSERT INTO `ds_city` VALUES ('155', '中站区', '1309');
INSERT INTO `ds_city` VALUES ('155', '马村区', '1310');
INSERT INTO `ds_city` VALUES ('155', '山阳区', '1311');
INSERT INTO `ds_city` VALUES ('155', '沁阳市', '1312');
INSERT INTO `ds_city` VALUES ('155', '孟州市', '1313');
INSERT INTO `ds_city` VALUES ('155', '修武县', '1314');
INSERT INTO `ds_city` VALUES ('155', '博爱县', '1315');
INSERT INTO `ds_city` VALUES ('155', '武陟县', '1316');
INSERT INTO `ds_city` VALUES ('155', '温县', '1317');
INSERT INTO `ds_city` VALUES ('156', '卧龙区', '1318');
INSERT INTO `ds_city` VALUES ('156', '宛城区', '1319');
INSERT INTO `ds_city` VALUES ('156', '邓州市', '1320');
INSERT INTO `ds_city` VALUES ('156', '南召县', '1321');
INSERT INTO `ds_city` VALUES ('156', '方城县', '1322');
INSERT INTO `ds_city` VALUES ('156', '西峡县', '1323');
INSERT INTO `ds_city` VALUES ('156', '镇平县', '1324');
INSERT INTO `ds_city` VALUES ('156', '内乡县', '1325');
INSERT INTO `ds_city` VALUES ('156', '淅川县', '1326');
INSERT INTO `ds_city` VALUES ('156', '社旗县', '1327');
INSERT INTO `ds_city` VALUES ('156', '唐河县', '1328');
INSERT INTO `ds_city` VALUES ('156', '新野县', '1329');
INSERT INTO `ds_city` VALUES ('156', '桐柏县', '1330');
INSERT INTO `ds_city` VALUES ('157', '新华区', '1331');
INSERT INTO `ds_city` VALUES ('157', '卫东区', '1332');
INSERT INTO `ds_city` VALUES ('157', '湛河区', '1333');
INSERT INTO `ds_city` VALUES ('157', '石龙区', '1334');
INSERT INTO `ds_city` VALUES ('157', '舞钢市', '1335');
INSERT INTO `ds_city` VALUES ('157', '汝州市', '1336');
INSERT INTO `ds_city` VALUES ('157', '宝丰县', '1337');
INSERT INTO `ds_city` VALUES ('157', '叶县', '1338');
INSERT INTO `ds_city` VALUES ('157', '鲁山县', '1339');
INSERT INTO `ds_city` VALUES ('157', '郏县', '1340');
INSERT INTO `ds_city` VALUES ('158', '湖滨区', '1341');
INSERT INTO `ds_city` VALUES ('158', '义马市', '1342');
INSERT INTO `ds_city` VALUES ('158', '灵宝市', '1343');
INSERT INTO `ds_city` VALUES ('158', '渑池县', '1344');
INSERT INTO `ds_city` VALUES ('158', '陕县', '1345');
INSERT INTO `ds_city` VALUES ('158', '卢氏县', '1346');
INSERT INTO `ds_city` VALUES ('159', '梁园区', '1347');
INSERT INTO `ds_city` VALUES ('159', '睢阳区', '1348');
INSERT INTO `ds_city` VALUES ('159', '永城市', '1349');
INSERT INTO `ds_city` VALUES ('159', '民权县', '1350');
INSERT INTO `ds_city` VALUES ('159', '睢县', '1351');
INSERT INTO `ds_city` VALUES ('159', '宁陵县', '1352');
INSERT INTO `ds_city` VALUES ('159', '虞城县', '1353');
INSERT INTO `ds_city` VALUES ('159', '柘城县', '1354');
INSERT INTO `ds_city` VALUES ('159', '夏邑县', '1355');
INSERT INTO `ds_city` VALUES ('160', '卫滨区', '1356');
INSERT INTO `ds_city` VALUES ('160', '红旗区', '1357');
INSERT INTO `ds_city` VALUES ('160', '凤泉区', '1358');
INSERT INTO `ds_city` VALUES ('160', '牧野区', '1359');
INSERT INTO `ds_city` VALUES ('160', '卫辉市', '1360');
INSERT INTO `ds_city` VALUES ('160', '辉县市', '1361');
INSERT INTO `ds_city` VALUES ('160', '新乡县', '1362');
INSERT INTO `ds_city` VALUES ('160', '获嘉县', '1363');
INSERT INTO `ds_city` VALUES ('160', '原阳县', '1364');
INSERT INTO `ds_city` VALUES ('160', '延津县', '1365');
INSERT INTO `ds_city` VALUES ('160', '封丘县', '1366');
INSERT INTO `ds_city` VALUES ('160', '长垣县', '1367');
INSERT INTO `ds_city` VALUES ('161', '浉河区', '1368');
INSERT INTO `ds_city` VALUES ('161', '平桥区', '1369');
INSERT INTO `ds_city` VALUES ('161', '罗山县', '1370');
INSERT INTO `ds_city` VALUES ('161', '光山县', '1371');
INSERT INTO `ds_city` VALUES ('161', '新县', '1372');
INSERT INTO `ds_city` VALUES ('161', '商城县', '1373');
INSERT INTO `ds_city` VALUES ('161', '固始县', '1374');
INSERT INTO `ds_city` VALUES ('161', '潢川县', '1375');
INSERT INTO `ds_city` VALUES ('161', '淮滨县', '1376');
INSERT INTO `ds_city` VALUES ('161', '息县', '1377');
INSERT INTO `ds_city` VALUES ('162', '魏都区', '1378');
INSERT INTO `ds_city` VALUES ('162', '禹州市', '1379');
INSERT INTO `ds_city` VALUES ('162', '长葛市', '1380');
INSERT INTO `ds_city` VALUES ('162', '许昌县', '1381');
INSERT INTO `ds_city` VALUES ('162', '鄢陵县', '1382');
INSERT INTO `ds_city` VALUES ('162', '襄城县', '1383');
INSERT INTO `ds_city` VALUES ('163', '川汇区', '1384');
INSERT INTO `ds_city` VALUES ('163', '项城市', '1385');
INSERT INTO `ds_city` VALUES ('163', '扶沟县', '1386');
INSERT INTO `ds_city` VALUES ('163', '西华县', '1387');
INSERT INTO `ds_city` VALUES ('163', '商水县', '1388');
INSERT INTO `ds_city` VALUES ('163', '沈丘县', '1389');
INSERT INTO `ds_city` VALUES ('163', '郸城县', '1390');
INSERT INTO `ds_city` VALUES ('163', '淮阳县', '1391');
INSERT INTO `ds_city` VALUES ('163', '太康县', '1392');
INSERT INTO `ds_city` VALUES ('163', '鹿邑县', '1393');
INSERT INTO `ds_city` VALUES ('164', '驿城区', '1394');
INSERT INTO `ds_city` VALUES ('164', '西平县', '1395');
INSERT INTO `ds_city` VALUES ('164', '上蔡县', '1396');
INSERT INTO `ds_city` VALUES ('164', '平舆县', '1397');
INSERT INTO `ds_city` VALUES ('164', '正阳县', '1398');
INSERT INTO `ds_city` VALUES ('164', '确山县', '1399');
INSERT INTO `ds_city` VALUES ('164', '泌阳县', '1400');
INSERT INTO `ds_city` VALUES ('164', '汝南县', '1401');
INSERT INTO `ds_city` VALUES ('164', '遂平县', '1402');
INSERT INTO `ds_city` VALUES ('164', '新蔡县', '1403');
INSERT INTO `ds_city` VALUES ('165', '郾城区', '1404');
INSERT INTO `ds_city` VALUES ('165', '源汇区', '1405');
INSERT INTO `ds_city` VALUES ('165', '召陵区', '1406');
INSERT INTO `ds_city` VALUES ('165', '舞阳县', '1407');
INSERT INTO `ds_city` VALUES ('165', '临颍县', '1408');
INSERT INTO `ds_city` VALUES ('166', '华龙区', '1409');
INSERT INTO `ds_city` VALUES ('166', '清丰县', '1410');
INSERT INTO `ds_city` VALUES ('166', '南乐县', '1411');
INSERT INTO `ds_city` VALUES ('166', '范县', '1412');
INSERT INTO `ds_city` VALUES ('166', '台前县', '1413');
INSERT INTO `ds_city` VALUES ('166', '濮阳县', '1414');
INSERT INTO `ds_city` VALUES ('167', '道里区', '1415');
INSERT INTO `ds_city` VALUES ('167', '南岗区', '1416');
INSERT INTO `ds_city` VALUES ('167', '动力区', '1417');
INSERT INTO `ds_city` VALUES ('167', '平房区', '1418');
INSERT INTO `ds_city` VALUES ('167', '香坊区', '1419');
INSERT INTO `ds_city` VALUES ('167', '太平区', '1420');
INSERT INTO `ds_city` VALUES ('167', '道外区', '1421');
INSERT INTO `ds_city` VALUES ('167', '阿城区', '1422');
INSERT INTO `ds_city` VALUES ('167', '呼兰区', '1423');
INSERT INTO `ds_city` VALUES ('167', '松北区', '1424');
INSERT INTO `ds_city` VALUES ('167', '尚志市', '1425');
INSERT INTO `ds_city` VALUES ('167', '双城市', '1426');
INSERT INTO `ds_city` VALUES ('167', '五常市', '1427');
INSERT INTO `ds_city` VALUES ('167', '方正县', '1428');
INSERT INTO `ds_city` VALUES ('167', '宾县', '1429');
INSERT INTO `ds_city` VALUES ('167', '依兰县', '1430');
INSERT INTO `ds_city` VALUES ('167', '巴彦县', '1431');
INSERT INTO `ds_city` VALUES ('167', '通河县', '1432');
INSERT INTO `ds_city` VALUES ('167', '木兰县', '1433');
INSERT INTO `ds_city` VALUES ('167', '延寿县', '1434');
INSERT INTO `ds_city` VALUES ('168', '萨尔图区', '1435');
INSERT INTO `ds_city` VALUES ('168', '红岗区', '1436');
INSERT INTO `ds_city` VALUES ('168', '龙凤区', '1437');
INSERT INTO `ds_city` VALUES ('168', '让胡路区', '1438');
INSERT INTO `ds_city` VALUES ('168', '大同区', '1439');
INSERT INTO `ds_city` VALUES ('168', '肇州县', '1440');
INSERT INTO `ds_city` VALUES ('168', '肇源县', '1441');
INSERT INTO `ds_city` VALUES ('168', '林甸县', '1442');
INSERT INTO `ds_city` VALUES ('168', '杜尔伯特', '1443');
INSERT INTO `ds_city` VALUES ('169', '呼玛县', '1444');
INSERT INTO `ds_city` VALUES ('169', '漠河县', '1445');
INSERT INTO `ds_city` VALUES ('169', '塔河县', '1446');
INSERT INTO `ds_city` VALUES ('170', '兴山区', '1447');
INSERT INTO `ds_city` VALUES ('170', '工农区', '1448');
INSERT INTO `ds_city` VALUES ('170', '南山区', '1449');
INSERT INTO `ds_city` VALUES ('170', '兴安区', '1450');
INSERT INTO `ds_city` VALUES ('170', '向阳区', '1451');
INSERT INTO `ds_city` VALUES ('170', '东山区', '1452');
INSERT INTO `ds_city` VALUES ('170', '萝北县', '1453');
INSERT INTO `ds_city` VALUES ('170', '绥滨县', '1454');
INSERT INTO `ds_city` VALUES ('171', '爱辉区', '1455');
INSERT INTO `ds_city` VALUES ('171', '五大连池市', '1456');
INSERT INTO `ds_city` VALUES ('171', '北安市', '1457');
INSERT INTO `ds_city` VALUES ('171', '嫩江县', '1458');
INSERT INTO `ds_city` VALUES ('171', '逊克县', '1459');
INSERT INTO `ds_city` VALUES ('171', '孙吴县', '1460');
INSERT INTO `ds_city` VALUES ('172', '鸡冠区', '1461');
INSERT INTO `ds_city` VALUES ('172', '恒山区', '1462');
INSERT INTO `ds_city` VALUES ('172', '城子河区', '1463');
INSERT INTO `ds_city` VALUES ('172', '滴道区', '1464');
INSERT INTO `ds_city` VALUES ('172', '梨树区', '1465');
INSERT INTO `ds_city` VALUES ('172', '虎林市', '1466');
INSERT INTO `ds_city` VALUES ('172', '密山市', '1467');
INSERT INTO `ds_city` VALUES ('172', '鸡东县', '1468');
INSERT INTO `ds_city` VALUES ('173', '前进区', '1469');
INSERT INTO `ds_city` VALUES ('173', '郊区', '1470');
INSERT INTO `ds_city` VALUES ('173', '向阳区', '1471');
INSERT INTO `ds_city` VALUES ('173', '东风区', '1472');
INSERT INTO `ds_city` VALUES ('173', '同江市', '1473');
INSERT INTO `ds_city` VALUES ('173', '富锦市', '1474');
INSERT INTO `ds_city` VALUES ('173', '桦南县', '1475');
INSERT INTO `ds_city` VALUES ('173', '桦川县', '1476');
INSERT INTO `ds_city` VALUES ('173', '汤原县', '1477');
INSERT INTO `ds_city` VALUES ('173', '抚远县', '1478');
INSERT INTO `ds_city` VALUES ('174', '爱民区', '1479');
INSERT INTO `ds_city` VALUES ('174', '东安区', '1480');
INSERT INTO `ds_city` VALUES ('174', '阳明区', '1481');
INSERT INTO `ds_city` VALUES ('174', '西安区', '1482');
INSERT INTO `ds_city` VALUES ('174', '绥芬河市', '1483');
INSERT INTO `ds_city` VALUES ('174', '海林市', '1484');
INSERT INTO `ds_city` VALUES ('174', '宁安市', '1485');
INSERT INTO `ds_city` VALUES ('174', '穆棱市', '1486');
INSERT INTO `ds_city` VALUES ('174', '东宁县', '1487');
INSERT INTO `ds_city` VALUES ('174', '林口县', '1488');
INSERT INTO `ds_city` VALUES ('175', '桃山区', '1489');
INSERT INTO `ds_city` VALUES ('175', '新兴区', '1490');
INSERT INTO `ds_city` VALUES ('175', '茄子河区', '1491');
INSERT INTO `ds_city` VALUES ('175', '勃利县', '1492');
INSERT INTO `ds_city` VALUES ('176', '龙沙区', '1493');
INSERT INTO `ds_city` VALUES ('176', '昂昂溪区', '1494');
INSERT INTO `ds_city` VALUES ('176', '铁峰区', '1495');
INSERT INTO `ds_city` VALUES ('176', '建华区', '1496');
INSERT INTO `ds_city` VALUES ('176', '富拉尔基区', '1497');
INSERT INTO `ds_city` VALUES ('176', '碾子山区', '1498');
INSERT INTO `ds_city` VALUES ('176', '梅里斯达斡尔区', '1499');
INSERT INTO `ds_city` VALUES ('176', '讷河市', '1500');
INSERT INTO `ds_city` VALUES ('176', '龙江县', '1501');
INSERT INTO `ds_city` VALUES ('176', '依安县', '1502');
INSERT INTO `ds_city` VALUES ('176', '泰来县', '1503');
INSERT INTO `ds_city` VALUES ('176', '甘南县', '1504');
INSERT INTO `ds_city` VALUES ('176', '富裕县', '1505');
INSERT INTO `ds_city` VALUES ('176', '克山县', '1506');
INSERT INTO `ds_city` VALUES ('176', '克东县', '1507');
INSERT INTO `ds_city` VALUES ('176', '拜泉县', '1508');
INSERT INTO `ds_city` VALUES ('177', '尖山区', '1509');
INSERT INTO `ds_city` VALUES ('177', '岭东区', '1510');
INSERT INTO `ds_city` VALUES ('177', '四方台区', '1511');
INSERT INTO `ds_city` VALUES ('177', '宝山区', '1512');
INSERT INTO `ds_city` VALUES ('177', '集贤县', '1513');
INSERT INTO `ds_city` VALUES ('177', '友谊县', '1514');
INSERT INTO `ds_city` VALUES ('177', '宝清县', '1515');
INSERT INTO `ds_city` VALUES ('177', '饶河县', '1516');
INSERT INTO `ds_city` VALUES ('178', '北林区', '1517');
INSERT INTO `ds_city` VALUES ('178', '安达市', '1518');
INSERT INTO `ds_city` VALUES ('178', '肇东市', '1519');
INSERT INTO `ds_city` VALUES ('178', '海伦市', '1520');
INSERT INTO `ds_city` VALUES ('178', '望奎县', '1521');
INSERT INTO `ds_city` VALUES ('178', '兰西县', '1522');
INSERT INTO `ds_city` VALUES ('178', '青冈县', '1523');
INSERT INTO `ds_city` VALUES ('178', '庆安县', '1524');
INSERT INTO `ds_city` VALUES ('178', '明水县', '1525');
INSERT INTO `ds_city` VALUES ('178', '绥棱县', '1526');
INSERT INTO `ds_city` VALUES ('179', '伊春区', '1527');
INSERT INTO `ds_city` VALUES ('179', '带岭区', '1528');
INSERT INTO `ds_city` VALUES ('179', '南岔区', '1529');
INSERT INTO `ds_city` VALUES ('179', '金山屯区', '1530');
INSERT INTO `ds_city` VALUES ('179', '西林区', '1531');
INSERT INTO `ds_city` VALUES ('179', '美溪区', '1532');
INSERT INTO `ds_city` VALUES ('179', '乌马河区', '1533');
INSERT INTO `ds_city` VALUES ('179', '翠峦区', '1534');
INSERT INTO `ds_city` VALUES ('179', '友好区', '1535');
INSERT INTO `ds_city` VALUES ('179', '上甘岭区', '1536');
INSERT INTO `ds_city` VALUES ('179', '五营区', '1537');
INSERT INTO `ds_city` VALUES ('179', '红星区', '1538');
INSERT INTO `ds_city` VALUES ('179', '新青区', '1539');
INSERT INTO `ds_city` VALUES ('179', '汤旺河区', '1540');
INSERT INTO `ds_city` VALUES ('179', '乌伊岭区', '1541');
INSERT INTO `ds_city` VALUES ('179', '铁力市', '1542');
INSERT INTO `ds_city` VALUES ('179', '嘉荫县', '1543');
INSERT INTO `ds_city` VALUES ('180', '江岸区', '1544');
INSERT INTO `ds_city` VALUES ('180', '武昌区', '1545');
INSERT INTO `ds_city` VALUES ('180', '江汉区', '1546');
INSERT INTO `ds_city` VALUES ('180', '硚口区', '1547');
INSERT INTO `ds_city` VALUES ('180', '汉阳区', '1548');
INSERT INTO `ds_city` VALUES ('180', '青山区', '1549');
INSERT INTO `ds_city` VALUES ('180', '洪山区', '1550');
INSERT INTO `ds_city` VALUES ('180', '东西湖区', '1551');
INSERT INTO `ds_city` VALUES ('180', '汉南区', '1552');
INSERT INTO `ds_city` VALUES ('180', '蔡甸区', '1553');
INSERT INTO `ds_city` VALUES ('180', '江夏区', '1554');
INSERT INTO `ds_city` VALUES ('180', '黄陂区', '1555');
INSERT INTO `ds_city` VALUES ('180', '新洲区', '1556');
INSERT INTO `ds_city` VALUES ('180', '经济开发区', '1557');
INSERT INTO `ds_city` VALUES ('181', '仙桃市', '1558');
INSERT INTO `ds_city` VALUES ('182', '鄂城区', '1559');
INSERT INTO `ds_city` VALUES ('182', '华容区', '1560');
INSERT INTO `ds_city` VALUES ('182', '梁子湖区', '1561');
INSERT INTO `ds_city` VALUES ('183', '黄州区', '1562');
INSERT INTO `ds_city` VALUES ('183', '麻城市', '1563');
INSERT INTO `ds_city` VALUES ('183', '武穴市', '1564');
INSERT INTO `ds_city` VALUES ('183', '团风县', '1565');
INSERT INTO `ds_city` VALUES ('183', '红安县', '1566');
INSERT INTO `ds_city` VALUES ('183', '罗田县', '1567');
INSERT INTO `ds_city` VALUES ('183', '英山县', '1568');
INSERT INTO `ds_city` VALUES ('183', '浠水县', '1569');
INSERT INTO `ds_city` VALUES ('183', '蕲春县', '1570');
INSERT INTO `ds_city` VALUES ('183', '黄梅县', '1571');
INSERT INTO `ds_city` VALUES ('184', '黄石港区', '1572');
INSERT INTO `ds_city` VALUES ('184', '西塞山区', '1573');
INSERT INTO `ds_city` VALUES ('184', '下陆区', '1574');
INSERT INTO `ds_city` VALUES ('184', '铁山区', '1575');
INSERT INTO `ds_city` VALUES ('184', '大冶市', '1576');
INSERT INTO `ds_city` VALUES ('184', '阳新县', '1577');
INSERT INTO `ds_city` VALUES ('185', '东宝区', '1578');
INSERT INTO `ds_city` VALUES ('185', '掇刀区', '1579');
INSERT INTO `ds_city` VALUES ('185', '钟祥市', '1580');
INSERT INTO `ds_city` VALUES ('185', '京山县', '1581');
INSERT INTO `ds_city` VALUES ('185', '沙洋县', '1582');
INSERT INTO `ds_city` VALUES ('186', '沙市区', '1583');
INSERT INTO `ds_city` VALUES ('186', '荆州区', '1584');
INSERT INTO `ds_city` VALUES ('186', '石首市', '1585');
INSERT INTO `ds_city` VALUES ('186', '洪湖市', '1586');
INSERT INTO `ds_city` VALUES ('186', '松滋市', '1587');
INSERT INTO `ds_city` VALUES ('186', '公安县', '1588');
INSERT INTO `ds_city` VALUES ('186', '监利县', '1589');
INSERT INTO `ds_city` VALUES ('186', '江陵县', '1590');
INSERT INTO `ds_city` VALUES ('187', '潜江市', '1591');
INSERT INTO `ds_city` VALUES ('188', '神农架林区', '1592');
INSERT INTO `ds_city` VALUES ('189', '张湾区', '1593');
INSERT INTO `ds_city` VALUES ('189', '茅箭区', '1594');
INSERT INTO `ds_city` VALUES ('189', '丹江口市', '1595');
INSERT INTO `ds_city` VALUES ('189', '郧县', '1596');
INSERT INTO `ds_city` VALUES ('189', '郧西县', '1597');
INSERT INTO `ds_city` VALUES ('189', '竹山县', '1598');
INSERT INTO `ds_city` VALUES ('189', '竹溪县', '1599');
INSERT INTO `ds_city` VALUES ('189', '房县', '1600');
INSERT INTO `ds_city` VALUES ('190', '曾都区', '1601');
INSERT INTO `ds_city` VALUES ('190', '广水市', '1602');
INSERT INTO `ds_city` VALUES ('191', '天门市', '1603');
INSERT INTO `ds_city` VALUES ('192', '咸安区', '1604');
INSERT INTO `ds_city` VALUES ('192', '赤壁市', '1605');
INSERT INTO `ds_city` VALUES ('192', '嘉鱼县', '1606');
INSERT INTO `ds_city` VALUES ('192', '通城县', '1607');
INSERT INTO `ds_city` VALUES ('192', '崇阳县', '1608');
INSERT INTO `ds_city` VALUES ('192', '通山县', '1609');
INSERT INTO `ds_city` VALUES ('193', '襄城区', '1610');
INSERT INTO `ds_city` VALUES ('193', '樊城区', '1611');
INSERT INTO `ds_city` VALUES ('193', '襄阳区', '1612');
INSERT INTO `ds_city` VALUES ('193', '老河口市', '1613');
INSERT INTO `ds_city` VALUES ('193', '枣阳市', '1614');
INSERT INTO `ds_city` VALUES ('193', '宜城市', '1615');
INSERT INTO `ds_city` VALUES ('193', '南漳县', '1616');
INSERT INTO `ds_city` VALUES ('193', '谷城县', '1617');
INSERT INTO `ds_city` VALUES ('193', '保康县', '1618');
INSERT INTO `ds_city` VALUES ('194', '孝南区', '1619');
INSERT INTO `ds_city` VALUES ('194', '应城市', '1620');
INSERT INTO `ds_city` VALUES ('194', '安陆市', '1621');
INSERT INTO `ds_city` VALUES ('194', '汉川市', '1622');
INSERT INTO `ds_city` VALUES ('194', '孝昌县', '1623');
INSERT INTO `ds_city` VALUES ('194', '大悟县', '1624');
INSERT INTO `ds_city` VALUES ('194', '云梦县', '1625');
INSERT INTO `ds_city` VALUES ('195', '长阳', '1626');
INSERT INTO `ds_city` VALUES ('195', '五峰', '1627');
INSERT INTO `ds_city` VALUES ('195', '西陵区', '1628');
INSERT INTO `ds_city` VALUES ('195', '伍家岗区', '1629');
INSERT INTO `ds_city` VALUES ('195', '点军区', '1630');
INSERT INTO `ds_city` VALUES ('195', '猇亭区', '1631');
INSERT INTO `ds_city` VALUES ('195', '夷陵区', '1632');
INSERT INTO `ds_city` VALUES ('195', '宜都市', '1633');
INSERT INTO `ds_city` VALUES ('195', '当阳市', '1634');
INSERT INTO `ds_city` VALUES ('195', '枝江市', '1635');
INSERT INTO `ds_city` VALUES ('195', '远安县', '1636');
INSERT INTO `ds_city` VALUES ('195', '兴山县', '1637');
INSERT INTO `ds_city` VALUES ('195', '秭归县', '1638');
INSERT INTO `ds_city` VALUES ('196', '恩施市', '1639');
INSERT INTO `ds_city` VALUES ('196', '利川市', '1640');
INSERT INTO `ds_city` VALUES ('196', '建始县', '1641');
INSERT INTO `ds_city` VALUES ('196', '巴东县', '1642');
INSERT INTO `ds_city` VALUES ('196', '宣恩县', '1643');
INSERT INTO `ds_city` VALUES ('196', '咸丰县', '1644');
INSERT INTO `ds_city` VALUES ('196', '来凤县', '1645');
INSERT INTO `ds_city` VALUES ('196', '鹤峰县', '1646');
INSERT INTO `ds_city` VALUES ('197', '岳麓区', '1647');
INSERT INTO `ds_city` VALUES ('197', '芙蓉区', '1648');
INSERT INTO `ds_city` VALUES ('197', '天心区', '1649');
INSERT INTO `ds_city` VALUES ('197', '开福区', '1650');
INSERT INTO `ds_city` VALUES ('197', '雨花区', '1651');
INSERT INTO `ds_city` VALUES ('197', '开发区', '1652');
INSERT INTO `ds_city` VALUES ('197', '浏阳市', '1653');
INSERT INTO `ds_city` VALUES ('197', '长沙县', '1654');
INSERT INTO `ds_city` VALUES ('197', '望城县', '1655');
INSERT INTO `ds_city` VALUES ('197', '宁乡县', '1656');
INSERT INTO `ds_city` VALUES ('198', '永定区', '1657');
INSERT INTO `ds_city` VALUES ('198', '武陵源区', '1658');
INSERT INTO `ds_city` VALUES ('198', '慈利县', '1659');
INSERT INTO `ds_city` VALUES ('198', '桑植县', '1660');
INSERT INTO `ds_city` VALUES ('199', '武陵区', '1661');
INSERT INTO `ds_city` VALUES ('199', '鼎城区', '1662');
INSERT INTO `ds_city` VALUES ('199', '津市市', '1663');
INSERT INTO `ds_city` VALUES ('199', '安乡县', '1664');
INSERT INTO `ds_city` VALUES ('199', '汉寿县', '1665');
INSERT INTO `ds_city` VALUES ('199', '澧县', '1666');
INSERT INTO `ds_city` VALUES ('199', '临澧县', '1667');
INSERT INTO `ds_city` VALUES ('199', '桃源县', '1668');
INSERT INTO `ds_city` VALUES ('199', '石门县', '1669');
INSERT INTO `ds_city` VALUES ('200', '北湖区', '1670');
INSERT INTO `ds_city` VALUES ('200', '苏仙区', '1671');
INSERT INTO `ds_city` VALUES ('200', '资兴市', '1672');
INSERT INTO `ds_city` VALUES ('200', '桂阳县', '1673');
INSERT INTO `ds_city` VALUES ('200', '宜章县', '1674');
INSERT INTO `ds_city` VALUES ('200', '永兴县', '1675');
INSERT INTO `ds_city` VALUES ('200', '嘉禾县', '1676');
INSERT INTO `ds_city` VALUES ('200', '临武县', '1677');
INSERT INTO `ds_city` VALUES ('200', '汝城县', '1678');
INSERT INTO `ds_city` VALUES ('200', '桂东县', '1679');
INSERT INTO `ds_city` VALUES ('200', '安仁县', '1680');
INSERT INTO `ds_city` VALUES ('201', '雁峰区', '1681');
INSERT INTO `ds_city` VALUES ('201', '珠晖区', '1682');
INSERT INTO `ds_city` VALUES ('201', '石鼓区', '1683');
INSERT INTO `ds_city` VALUES ('201', '蒸湘区', '1684');
INSERT INTO `ds_city` VALUES ('201', '南岳区', '1685');
INSERT INTO `ds_city` VALUES ('201', '耒阳市', '1686');
INSERT INTO `ds_city` VALUES ('201', '常宁市', '1687');
INSERT INTO `ds_city` VALUES ('201', '衡阳县', '1688');
INSERT INTO `ds_city` VALUES ('201', '衡南县', '1689');
INSERT INTO `ds_city` VALUES ('201', '衡山县', '1690');
INSERT INTO `ds_city` VALUES ('201', '衡东县', '1691');
INSERT INTO `ds_city` VALUES ('201', '祁东县', '1692');
INSERT INTO `ds_city` VALUES ('202', '鹤城区', '1693');
INSERT INTO `ds_city` VALUES ('202', '靖州', '1694');
INSERT INTO `ds_city` VALUES ('202', '麻阳', '1695');
INSERT INTO `ds_city` VALUES ('202', '通道', '1696');
INSERT INTO `ds_city` VALUES ('202', '新晃', '1697');
INSERT INTO `ds_city` VALUES ('202', '芷江', '1698');
INSERT INTO `ds_city` VALUES ('202', '沅陵县', '1699');
INSERT INTO `ds_city` VALUES ('202', '辰溪县', '1700');
INSERT INTO `ds_city` VALUES ('202', '溆浦县', '1701');
INSERT INTO `ds_city` VALUES ('202', '中方县', '1702');
INSERT INTO `ds_city` VALUES ('202', '会同县', '1703');
INSERT INTO `ds_city` VALUES ('202', '洪江市', '1704');
INSERT INTO `ds_city` VALUES ('203', '娄星区', '1705');
INSERT INTO `ds_city` VALUES ('203', '冷水江市', '1706');
INSERT INTO `ds_city` VALUES ('203', '涟源市', '1707');
INSERT INTO `ds_city` VALUES ('203', '双峰县', '1708');
INSERT INTO `ds_city` VALUES ('203', '新化县', '1709');
INSERT INTO `ds_city` VALUES ('204', '城步', '1710');
INSERT INTO `ds_city` VALUES ('204', '双清区', '1711');
INSERT INTO `ds_city` VALUES ('204', '大祥区', '1712');
INSERT INTO `ds_city` VALUES ('204', '北塔区', '1713');
INSERT INTO `ds_city` VALUES ('204', '武冈市', '1714');
INSERT INTO `ds_city` VALUES ('204', '邵东县', '1715');
INSERT INTO `ds_city` VALUES ('204', '新邵县', '1716');
INSERT INTO `ds_city` VALUES ('204', '邵阳县', '1717');
INSERT INTO `ds_city` VALUES ('204', '隆回县', '1718');
INSERT INTO `ds_city` VALUES ('204', '洞口县', '1719');
INSERT INTO `ds_city` VALUES ('204', '绥宁县', '1720');
INSERT INTO `ds_city` VALUES ('204', '新宁县', '1721');
INSERT INTO `ds_city` VALUES ('205', '岳塘区', '1722');
INSERT INTO `ds_city` VALUES ('205', '雨湖区', '1723');
INSERT INTO `ds_city` VALUES ('205', '湘乡市', '1724');
INSERT INTO `ds_city` VALUES ('205', '韶山市', '1725');
INSERT INTO `ds_city` VALUES ('205', '湘潭县', '1726');
INSERT INTO `ds_city` VALUES ('206', '吉首市', '1727');
INSERT INTO `ds_city` VALUES ('206', '泸溪县', '1728');
INSERT INTO `ds_city` VALUES ('206', '凤凰县', '1729');
INSERT INTO `ds_city` VALUES ('206', '花垣县', '1730');
INSERT INTO `ds_city` VALUES ('206', '保靖县', '1731');
INSERT INTO `ds_city` VALUES ('206', '古丈县', '1732');
INSERT INTO `ds_city` VALUES ('206', '永顺县', '1733');
INSERT INTO `ds_city` VALUES ('206', '龙山县', '1734');
INSERT INTO `ds_city` VALUES ('207', '赫山区', '1735');
INSERT INTO `ds_city` VALUES ('207', '资阳区', '1736');
INSERT INTO `ds_city` VALUES ('207', '沅江市', '1737');
INSERT INTO `ds_city` VALUES ('207', '南县', '1738');
INSERT INTO `ds_city` VALUES ('207', '桃江县', '1739');
INSERT INTO `ds_city` VALUES ('207', '安化县', '1740');
INSERT INTO `ds_city` VALUES ('208', '江华', '1741');
INSERT INTO `ds_city` VALUES ('208', '冷水滩区', '1742');
INSERT INTO `ds_city` VALUES ('208', '零陵区', '1743');
INSERT INTO `ds_city` VALUES ('208', '祁阳县', '1744');
INSERT INTO `ds_city` VALUES ('208', '东安县', '1745');
INSERT INTO `ds_city` VALUES ('208', '双牌县', '1746');
INSERT INTO `ds_city` VALUES ('208', '道县', '1747');
INSERT INTO `ds_city` VALUES ('208', '江永县', '1748');
INSERT INTO `ds_city` VALUES ('208', '宁远县', '1749');
INSERT INTO `ds_city` VALUES ('208', '蓝山县', '1750');
INSERT INTO `ds_city` VALUES ('208', '新田县', '1751');
INSERT INTO `ds_city` VALUES ('209', '岳阳楼区', '1752');
INSERT INTO `ds_city` VALUES ('209', '君山区', '1753');
INSERT INTO `ds_city` VALUES ('209', '云溪区', '1754');
INSERT INTO `ds_city` VALUES ('209', '汨罗市', '1755');
INSERT INTO `ds_city` VALUES ('209', '临湘市', '1756');
INSERT INTO `ds_city` VALUES ('209', '岳阳县', '1757');
INSERT INTO `ds_city` VALUES ('209', '华容县', '1758');
INSERT INTO `ds_city` VALUES ('209', '湘阴县', '1759');
INSERT INTO `ds_city` VALUES ('209', '平江县', '1760');
INSERT INTO `ds_city` VALUES ('210', '天元区', '1761');
INSERT INTO `ds_city` VALUES ('210', '荷塘区', '1762');
INSERT INTO `ds_city` VALUES ('210', '芦淞区', '1763');
INSERT INTO `ds_city` VALUES ('210', '石峰区', '1764');
INSERT INTO `ds_city` VALUES ('210', '醴陵市', '1765');
INSERT INTO `ds_city` VALUES ('210', '株洲县', '1766');
INSERT INTO `ds_city` VALUES ('210', '攸县', '1767');
INSERT INTO `ds_city` VALUES ('210', '茶陵县', '1768');
INSERT INTO `ds_city` VALUES ('210', '炎陵县', '1769');
INSERT INTO `ds_city` VALUES ('211', '朝阳区', '1770');
INSERT INTO `ds_city` VALUES ('211', '宽城区', '1771');
INSERT INTO `ds_city` VALUES ('211', '二道区', '1772');
INSERT INTO `ds_city` VALUES ('211', '南关区', '1773');
INSERT INTO `ds_city` VALUES ('211', '绿园区', '1774');
INSERT INTO `ds_city` VALUES ('211', '双阳区', '1775');
INSERT INTO `ds_city` VALUES ('211', '净月潭开发区', '1776');
INSERT INTO `ds_city` VALUES ('211', '高新技术开发区', '1777');
INSERT INTO `ds_city` VALUES ('211', '经济技术开发区', '1778');
INSERT INTO `ds_city` VALUES ('211', '汽车产业开发区', '1779');
INSERT INTO `ds_city` VALUES ('211', '德惠市', '1780');
INSERT INTO `ds_city` VALUES ('211', '九台市', '1781');
INSERT INTO `ds_city` VALUES ('211', '榆树市', '1782');
INSERT INTO `ds_city` VALUES ('211', '农安县', '1783');
INSERT INTO `ds_city` VALUES ('212', '船营区', '1784');
INSERT INTO `ds_city` VALUES ('212', '昌邑区', '1785');
INSERT INTO `ds_city` VALUES ('212', '龙潭区', '1786');
INSERT INTO `ds_city` VALUES ('212', '丰满区', '1787');
INSERT INTO `ds_city` VALUES ('212', '蛟河市', '1788');
INSERT INTO `ds_city` VALUES ('212', '桦甸市', '1789');
INSERT INTO `ds_city` VALUES ('212', '舒兰市', '1790');
INSERT INTO `ds_city` VALUES ('212', '磐石市', '1791');
INSERT INTO `ds_city` VALUES ('212', '永吉县', '1792');
INSERT INTO `ds_city` VALUES ('213', '洮北区', '1793');
INSERT INTO `ds_city` VALUES ('213', '洮南市', '1794');
INSERT INTO `ds_city` VALUES ('213', '大安市', '1795');
INSERT INTO `ds_city` VALUES ('213', '镇赉县', '1796');
INSERT INTO `ds_city` VALUES ('213', '通榆县', '1797');
INSERT INTO `ds_city` VALUES ('214', '江源区', '1798');
INSERT INTO `ds_city` VALUES ('214', '八道江区', '1799');
INSERT INTO `ds_city` VALUES ('214', '长白', '1800');
INSERT INTO `ds_city` VALUES ('214', '临江市', '1801');
INSERT INTO `ds_city` VALUES ('214', '抚松县', '1802');
INSERT INTO `ds_city` VALUES ('214', '靖宇县', '1803');
INSERT INTO `ds_city` VALUES ('215', '龙山区', '1804');
INSERT INTO `ds_city` VALUES ('215', '西安区', '1805');
INSERT INTO `ds_city` VALUES ('215', '东丰县', '1806');
INSERT INTO `ds_city` VALUES ('215', '东辽县', '1807');
INSERT INTO `ds_city` VALUES ('216', '铁西区', '1808');
INSERT INTO `ds_city` VALUES ('216', '铁东区', '1809');
INSERT INTO `ds_city` VALUES ('216', '伊通', '1810');
INSERT INTO `ds_city` VALUES ('216', '公主岭市', '1811');
INSERT INTO `ds_city` VALUES ('216', '双辽市', '1812');
INSERT INTO `ds_city` VALUES ('216', '梨树县', '1813');
INSERT INTO `ds_city` VALUES ('217', '前郭尔罗斯', '1814');
INSERT INTO `ds_city` VALUES ('217', '宁江区', '1815');
INSERT INTO `ds_city` VALUES ('217', '长岭县', '1816');
INSERT INTO `ds_city` VALUES ('217', '乾安县', '1817');
INSERT INTO `ds_city` VALUES ('217', '扶余县', '1818');
INSERT INTO `ds_city` VALUES ('218', '东昌区', '1819');
INSERT INTO `ds_city` VALUES ('218', '二道江区', '1820');
INSERT INTO `ds_city` VALUES ('218', '梅河口市', '1821');
INSERT INTO `ds_city` VALUES ('218', '集安市', '1822');
INSERT INTO `ds_city` VALUES ('218', '通化县', '1823');
INSERT INTO `ds_city` VALUES ('218', '辉南县', '1824');
INSERT INTO `ds_city` VALUES ('218', '柳河县', '1825');
INSERT INTO `ds_city` VALUES ('219', '延吉市', '1826');
INSERT INTO `ds_city` VALUES ('219', '图们市', '1827');
INSERT INTO `ds_city` VALUES ('219', '敦化市', '1828');
INSERT INTO `ds_city` VALUES ('219', '珲春市', '1829');
INSERT INTO `ds_city` VALUES ('219', '龙井市', '1830');
INSERT INTO `ds_city` VALUES ('219', '和龙市', '1831');
INSERT INTO `ds_city` VALUES ('219', '安图县', '1832');
INSERT INTO `ds_city` VALUES ('219', '汪清县', '1833');
INSERT INTO `ds_city` VALUES ('220', '玄武区', '1834');
INSERT INTO `ds_city` VALUES ('220', '鼓楼区', '1835');
INSERT INTO `ds_city` VALUES ('220', '白下区', '1836');
INSERT INTO `ds_city` VALUES ('220', '建邺区', '1837');
INSERT INTO `ds_city` VALUES ('220', '秦淮区', '1838');
INSERT INTO `ds_city` VALUES ('220', '雨花台区', '1839');
INSERT INTO `ds_city` VALUES ('220', '下关区', '1840');
INSERT INTO `ds_city` VALUES ('220', '栖霞区', '1841');
INSERT INTO `ds_city` VALUES ('220', '浦口区', '1842');
INSERT INTO `ds_city` VALUES ('220', '江宁区', '1843');
INSERT INTO `ds_city` VALUES ('220', '六合区', '1844');
INSERT INTO `ds_city` VALUES ('220', '溧水县', '1845');
INSERT INTO `ds_city` VALUES ('220', '高淳县', '1846');
INSERT INTO `ds_city` VALUES ('221', '沧浪区', '1847');
INSERT INTO `ds_city` VALUES ('221', '金阊区', '1848');
INSERT INTO `ds_city` VALUES ('221', '平江区', '1849');
INSERT INTO `ds_city` VALUES ('221', '虎丘区', '1850');
INSERT INTO `ds_city` VALUES ('221', '吴中区', '1851');
INSERT INTO `ds_city` VALUES ('221', '相城区', '1852');
INSERT INTO `ds_city` VALUES ('221', '园区', '1853');
INSERT INTO `ds_city` VALUES ('221', '新区', '1854');
INSERT INTO `ds_city` VALUES ('221', '常熟市', '1855');
INSERT INTO `ds_city` VALUES ('221', '张家港市', '1856');
INSERT INTO `ds_city` VALUES ('221', '玉山镇', '1857');
INSERT INTO `ds_city` VALUES ('221', '巴城镇', '1858');
INSERT INTO `ds_city` VALUES ('221', '周市镇', '1859');
INSERT INTO `ds_city` VALUES ('221', '陆家镇', '1860');
INSERT INTO `ds_city` VALUES ('221', '花桥镇', '1861');
INSERT INTO `ds_city` VALUES ('221', '淀山湖镇', '1862');
INSERT INTO `ds_city` VALUES ('221', '张浦镇', '1863');
INSERT INTO `ds_city` VALUES ('221', '周庄镇', '1864');
INSERT INTO `ds_city` VALUES ('221', '千灯镇', '1865');
INSERT INTO `ds_city` VALUES ('221', '锦溪镇', '1866');
INSERT INTO `ds_city` VALUES ('221', '开发区', '1867');
INSERT INTO `ds_city` VALUES ('221', '吴江市', '1868');
INSERT INTO `ds_city` VALUES ('221', '太仓市', '1869');
INSERT INTO `ds_city` VALUES ('222', '崇安区', '1870');
INSERT INTO `ds_city` VALUES ('222', '北塘区', '1871');
INSERT INTO `ds_city` VALUES ('222', '南长区', '1872');
INSERT INTO `ds_city` VALUES ('222', '锡山区', '1873');
INSERT INTO `ds_city` VALUES ('222', '惠山区', '1874');
INSERT INTO `ds_city` VALUES ('222', '滨湖区', '1875');
INSERT INTO `ds_city` VALUES ('222', '新区', '1876');
INSERT INTO `ds_city` VALUES ('222', '江阴市', '1877');
INSERT INTO `ds_city` VALUES ('222', '宜兴市', '1878');
INSERT INTO `ds_city` VALUES ('223', '天宁区', '1879');
INSERT INTO `ds_city` VALUES ('223', '钟楼区', '1880');
INSERT INTO `ds_city` VALUES ('223', '戚墅堰区', '1881');
INSERT INTO `ds_city` VALUES ('223', '郊区', '1882');
INSERT INTO `ds_city` VALUES ('223', '新北区', '1883');
INSERT INTO `ds_city` VALUES ('223', '武进区', '1884');
INSERT INTO `ds_city` VALUES ('223', '溧阳市', '1885');
INSERT INTO `ds_city` VALUES ('223', '金坛市', '1886');
INSERT INTO `ds_city` VALUES ('224', '清河区', '1887');
INSERT INTO `ds_city` VALUES ('224', '清浦区', '1888');
INSERT INTO `ds_city` VALUES ('224', '楚州区', '1889');
INSERT INTO `ds_city` VALUES ('224', '淮阴区', '1890');
INSERT INTO `ds_city` VALUES ('224', '涟水县', '1891');
INSERT INTO `ds_city` VALUES ('224', '洪泽县', '1892');
INSERT INTO `ds_city` VALUES ('224', '盱眙县', '1893');
INSERT INTO `ds_city` VALUES ('224', '金湖县', '1894');
INSERT INTO `ds_city` VALUES ('225', '新浦区', '1895');
INSERT INTO `ds_city` VALUES ('225', '连云区', '1896');
INSERT INTO `ds_city` VALUES ('225', '海州区', '1897');
INSERT INTO `ds_city` VALUES ('225', '赣榆县', '1898');
INSERT INTO `ds_city` VALUES ('225', '东海县', '1899');
INSERT INTO `ds_city` VALUES ('225', '灌云县', '1900');
INSERT INTO `ds_city` VALUES ('225', '灌南县', '1901');
INSERT INTO `ds_city` VALUES ('226', '崇川区', '1902');
INSERT INTO `ds_city` VALUES ('226', '港闸区', '1903');
INSERT INTO `ds_city` VALUES ('226', '经济开发区', '1904');
INSERT INTO `ds_city` VALUES ('226', '启东市', '1905');
INSERT INTO `ds_city` VALUES ('226', '如皋市', '1906');
INSERT INTO `ds_city` VALUES ('226', '通州市', '1907');
INSERT INTO `ds_city` VALUES ('226', '海门市', '1908');
INSERT INTO `ds_city` VALUES ('226', '海安县', '1909');
INSERT INTO `ds_city` VALUES ('226', '如东县', '1910');
INSERT INTO `ds_city` VALUES ('227', '宿城区', '1911');
INSERT INTO `ds_city` VALUES ('227', '宿豫区', '1912');
INSERT INTO `ds_city` VALUES ('227', '宿豫县', '1913');
INSERT INTO `ds_city` VALUES ('227', '沭阳县', '1914');
INSERT INTO `ds_city` VALUES ('227', '泗阳县', '1915');
INSERT INTO `ds_city` VALUES ('227', '泗洪县', '1916');
INSERT INTO `ds_city` VALUES ('228', '海陵区', '1917');
INSERT INTO `ds_city` VALUES ('228', '高港区', '1918');
INSERT INTO `ds_city` VALUES ('228', '兴化市', '1919');
INSERT INTO `ds_city` VALUES ('228', '靖江市', '1920');
INSERT INTO `ds_city` VALUES ('228', '泰兴市', '1921');
INSERT INTO `ds_city` VALUES ('228', '姜堰市', '1922');
INSERT INTO `ds_city` VALUES ('229', '云龙区', '1923');
INSERT INTO `ds_city` VALUES ('229', '鼓楼区', '1924');
INSERT INTO `ds_city` VALUES ('229', '九里区', '1925');
INSERT INTO `ds_city` VALUES ('229', '贾汪区', '1926');
INSERT INTO `ds_city` VALUES ('229', '泉山区', '1927');
INSERT INTO `ds_city` VALUES ('229', '新沂市', '1928');
INSERT INTO `ds_city` VALUES ('229', '邳州市', '1929');
INSERT INTO `ds_city` VALUES ('229', '丰县', '1930');
INSERT INTO `ds_city` VALUES ('229', '沛县', '1931');
INSERT INTO `ds_city` VALUES ('229', '铜山县', '1932');
INSERT INTO `ds_city` VALUES ('229', '睢宁县', '1933');
INSERT INTO `ds_city` VALUES ('230', '城区', '1934');
INSERT INTO `ds_city` VALUES ('230', '亭湖区', '1935');
INSERT INTO `ds_city` VALUES ('230', '盐都区', '1936');
INSERT INTO `ds_city` VALUES ('230', '盐都县', '1937');
INSERT INTO `ds_city` VALUES ('230', '东台市', '1938');
INSERT INTO `ds_city` VALUES ('230', '大丰市', '1939');
INSERT INTO `ds_city` VALUES ('230', '响水县', '1940');
INSERT INTO `ds_city` VALUES ('230', '滨海县', '1941');
INSERT INTO `ds_city` VALUES ('230', '阜宁县', '1942');
INSERT INTO `ds_city` VALUES ('230', '射阳县', '1943');
INSERT INTO `ds_city` VALUES ('230', '建湖县', '1944');
INSERT INTO `ds_city` VALUES ('231', '广陵区', '1945');
INSERT INTO `ds_city` VALUES ('231', '维扬区', '1946');
INSERT INTO `ds_city` VALUES ('231', '邗江区', '1947');
INSERT INTO `ds_city` VALUES ('231', '仪征市', '1948');
INSERT INTO `ds_city` VALUES ('231', '高邮市', '1949');
INSERT INTO `ds_city` VALUES ('231', '江都市', '1950');
INSERT INTO `ds_city` VALUES ('231', '宝应县', '1951');
INSERT INTO `ds_city` VALUES ('232', '京口区', '1952');
INSERT INTO `ds_city` VALUES ('232', '润州区', '1953');
INSERT INTO `ds_city` VALUES ('232', '丹徒区', '1954');
INSERT INTO `ds_city` VALUES ('232', '丹阳市', '1955');
INSERT INTO `ds_city` VALUES ('232', '扬中市', '1956');
INSERT INTO `ds_city` VALUES ('232', '句容市', '1957');
INSERT INTO `ds_city` VALUES ('233', '东湖区', '1958');
INSERT INTO `ds_city` VALUES ('233', '西湖区', '1959');
INSERT INTO `ds_city` VALUES ('233', '青云谱区', '1960');
INSERT INTO `ds_city` VALUES ('233', '湾里区', '1961');
INSERT INTO `ds_city` VALUES ('233', '青山湖区', '1962');
INSERT INTO `ds_city` VALUES ('233', '红谷滩新区', '1963');
INSERT INTO `ds_city` VALUES ('233', '昌北区', '1964');
INSERT INTO `ds_city` VALUES ('233', '高新区', '1965');
INSERT INTO `ds_city` VALUES ('233', '南昌县', '1966');
INSERT INTO `ds_city` VALUES ('233', '新建县', '1967');
INSERT INTO `ds_city` VALUES ('233', '安义县', '1968');
INSERT INTO `ds_city` VALUES ('233', '进贤县', '1969');
INSERT INTO `ds_city` VALUES ('234', '临川区', '1970');
INSERT INTO `ds_city` VALUES ('234', '南城县', '1971');
INSERT INTO `ds_city` VALUES ('234', '黎川县', '1972');
INSERT INTO `ds_city` VALUES ('234', '南丰县', '1973');
INSERT INTO `ds_city` VALUES ('234', '崇仁县', '1974');
INSERT INTO `ds_city` VALUES ('234', '乐安县', '1975');
INSERT INTO `ds_city` VALUES ('234', '宜黄县', '1976');
INSERT INTO `ds_city` VALUES ('234', '金溪县', '1977');
INSERT INTO `ds_city` VALUES ('234', '资溪县', '1978');
INSERT INTO `ds_city` VALUES ('234', '东乡县', '1979');
INSERT INTO `ds_city` VALUES ('234', '广昌县', '1980');
INSERT INTO `ds_city` VALUES ('235', '章贡区', '1981');
INSERT INTO `ds_city` VALUES ('235', '于都县', '1982');
INSERT INTO `ds_city` VALUES ('235', '瑞金市', '1983');
INSERT INTO `ds_city` VALUES ('235', '南康市', '1984');
INSERT INTO `ds_city` VALUES ('235', '赣县', '1985');
INSERT INTO `ds_city` VALUES ('235', '信丰县', '1986');
INSERT INTO `ds_city` VALUES ('235', '大余县', '1987');
INSERT INTO `ds_city` VALUES ('235', '上犹县', '1988');
INSERT INTO `ds_city` VALUES ('235', '崇义县', '1989');
INSERT INTO `ds_city` VALUES ('235', '安远县', '1990');
INSERT INTO `ds_city` VALUES ('235', '龙南县', '1991');
INSERT INTO `ds_city` VALUES ('235', '定南县', '1992');
INSERT INTO `ds_city` VALUES ('235', '全南县', '1993');
INSERT INTO `ds_city` VALUES ('235', '宁都县', '1994');
INSERT INTO `ds_city` VALUES ('235', '兴国县', '1995');
INSERT INTO `ds_city` VALUES ('235', '会昌县', '1996');
INSERT INTO `ds_city` VALUES ('235', '寻乌县', '1997');
INSERT INTO `ds_city` VALUES ('235', '石城县', '1998');
INSERT INTO `ds_city` VALUES ('236', '安福县', '1999');
INSERT INTO `ds_city` VALUES ('236', '吉州区', '2000');
INSERT INTO `ds_city` VALUES ('236', '青原区', '2001');
INSERT INTO `ds_city` VALUES ('236', '井冈山市', '2002');
INSERT INTO `ds_city` VALUES ('236', '吉安县', '2003');
INSERT INTO `ds_city` VALUES ('236', '吉水县', '2004');
INSERT INTO `ds_city` VALUES ('236', '峡江县', '2005');
INSERT INTO `ds_city` VALUES ('236', '新干县', '2006');
INSERT INTO `ds_city` VALUES ('236', '永丰县', '2007');
INSERT INTO `ds_city` VALUES ('236', '泰和县', '2008');
INSERT INTO `ds_city` VALUES ('236', '遂川县', '2009');
INSERT INTO `ds_city` VALUES ('236', '万安县', '2010');
INSERT INTO `ds_city` VALUES ('236', '永新县', '2011');
INSERT INTO `ds_city` VALUES ('237', '珠山区', '2012');
INSERT INTO `ds_city` VALUES ('237', '昌江区', '2013');
INSERT INTO `ds_city` VALUES ('237', '乐平市', '2014');
INSERT INTO `ds_city` VALUES ('237', '浮梁县', '2015');
INSERT INTO `ds_city` VALUES ('238', '浔阳区', '2016');
INSERT INTO `ds_city` VALUES ('238', '庐山区', '2017');
INSERT INTO `ds_city` VALUES ('238', '瑞昌市', '2018');
INSERT INTO `ds_city` VALUES ('238', '九江县', '2019');
INSERT INTO `ds_city` VALUES ('238', '武宁县', '2020');
INSERT INTO `ds_city` VALUES ('238', '修水县', '2021');
INSERT INTO `ds_city` VALUES ('238', '永修县', '2022');
INSERT INTO `ds_city` VALUES ('238', '德安县', '2023');
INSERT INTO `ds_city` VALUES ('238', '星子县', '2024');
INSERT INTO `ds_city` VALUES ('238', '都昌县', '2025');
INSERT INTO `ds_city` VALUES ('238', '湖口县', '2026');
INSERT INTO `ds_city` VALUES ('238', '彭泽县', '2027');
INSERT INTO `ds_city` VALUES ('239', '安源区', '2028');
INSERT INTO `ds_city` VALUES ('239', '湘东区', '2029');
INSERT INTO `ds_city` VALUES ('239', '莲花县', '2030');
INSERT INTO `ds_city` VALUES ('239', '芦溪县', '2031');
INSERT INTO `ds_city` VALUES ('239', '上栗县', '2032');
INSERT INTO `ds_city` VALUES ('240', '信州区', '2033');
INSERT INTO `ds_city` VALUES ('240', '德兴市', '2034');
INSERT INTO `ds_city` VALUES ('240', '上饶县', '2035');
INSERT INTO `ds_city` VALUES ('240', '广丰县', '2036');
INSERT INTO `ds_city` VALUES ('240', '玉山县', '2037');
INSERT INTO `ds_city` VALUES ('240', '铅山县', '2038');
INSERT INTO `ds_city` VALUES ('240', '横峰县', '2039');
INSERT INTO `ds_city` VALUES ('240', '弋阳县', '2040');
INSERT INTO `ds_city` VALUES ('240', '余干县', '2041');
INSERT INTO `ds_city` VALUES ('240', '波阳县', '2042');
INSERT INTO `ds_city` VALUES ('240', '万年县', '2043');
INSERT INTO `ds_city` VALUES ('240', '婺源县', '2044');
INSERT INTO `ds_city` VALUES ('241', '渝水区', '2045');
INSERT INTO `ds_city` VALUES ('241', '分宜县', '2046');
INSERT INTO `ds_city` VALUES ('242', '袁州区', '2047');
INSERT INTO `ds_city` VALUES ('242', '丰城市', '2048');
INSERT INTO `ds_city` VALUES ('242', '樟树市', '2049');
INSERT INTO `ds_city` VALUES ('242', '高安市', '2050');
INSERT INTO `ds_city` VALUES ('242', '奉新县', '2051');
INSERT INTO `ds_city` VALUES ('242', '万载县', '2052');
INSERT INTO `ds_city` VALUES ('242', '上高县', '2053');
INSERT INTO `ds_city` VALUES ('242', '宜丰县', '2054');
INSERT INTO `ds_city` VALUES ('242', '靖安县', '2055');
INSERT INTO `ds_city` VALUES ('242', '铜鼓县', '2056');
INSERT INTO `ds_city` VALUES ('243', '月湖区', '2057');
INSERT INTO `ds_city` VALUES ('243', '贵溪市', '2058');
INSERT INTO `ds_city` VALUES ('243', '余江县', '2059');
INSERT INTO `ds_city` VALUES ('244', '沈河区', '2060');
INSERT INTO `ds_city` VALUES ('244', '皇姑区', '2061');
INSERT INTO `ds_city` VALUES ('244', '和平区', '2062');
INSERT INTO `ds_city` VALUES ('244', '大东区', '2063');
INSERT INTO `ds_city` VALUES ('244', '铁西区', '2064');
INSERT INTO `ds_city` VALUES ('244', '苏家屯区', '2065');
INSERT INTO `ds_city` VALUES ('244', '东陵区', '2066');
INSERT INTO `ds_city` VALUES ('244', '沈北新区', '2067');
INSERT INTO `ds_city` VALUES ('244', '于洪区', '2068');
INSERT INTO `ds_city` VALUES ('244', '浑南新区', '2069');
INSERT INTO `ds_city` VALUES ('244', '新民市', '2070');
INSERT INTO `ds_city` VALUES ('244', '辽中县', '2071');
INSERT INTO `ds_city` VALUES ('244', '康平县', '2072');
INSERT INTO `ds_city` VALUES ('244', '法库县', '2073');
INSERT INTO `ds_city` VALUES ('245', '西岗区', '2074');
INSERT INTO `ds_city` VALUES ('245', '中山区', '2075');
INSERT INTO `ds_city` VALUES ('245', '沙河口区', '2076');
INSERT INTO `ds_city` VALUES ('245', '甘井子区', '2077');
INSERT INTO `ds_city` VALUES ('245', '旅顺口区', '2078');
INSERT INTO `ds_city` VALUES ('245', '金州区', '2079');
INSERT INTO `ds_city` VALUES ('245', '开发区', '2080');
INSERT INTO `ds_city` VALUES ('245', '瓦房店市', '2081');
INSERT INTO `ds_city` VALUES ('245', '普兰店市', '2082');
INSERT INTO `ds_city` VALUES ('245', '庄河市', '2083');
INSERT INTO `ds_city` VALUES ('245', '长海县', '2084');
INSERT INTO `ds_city` VALUES ('246', '铁东区', '2085');
INSERT INTO `ds_city` VALUES ('246', '铁西区', '2086');
INSERT INTO `ds_city` VALUES ('246', '立山区', '2087');
INSERT INTO `ds_city` VALUES ('246', '千山区', '2088');
INSERT INTO `ds_city` VALUES ('246', '岫岩', '2089');
INSERT INTO `ds_city` VALUES ('246', '海城市', '2090');
INSERT INTO `ds_city` VALUES ('246', '台安县', '2091');
INSERT INTO `ds_city` VALUES ('247', '本溪', '2092');
INSERT INTO `ds_city` VALUES ('247', '平山区', '2093');
INSERT INTO `ds_city` VALUES ('247', '明山区', '2094');
INSERT INTO `ds_city` VALUES ('247', '溪湖区', '2095');
INSERT INTO `ds_city` VALUES ('247', '南芬区', '2096');
INSERT INTO `ds_city` VALUES ('247', '桓仁', '2097');
INSERT INTO `ds_city` VALUES ('248', '双塔区', '2098');
INSERT INTO `ds_city` VALUES ('248', '龙城区', '2099');
INSERT INTO `ds_city` VALUES ('248', '喀喇沁左翼蒙古族自治县', '2100');
INSERT INTO `ds_city` VALUES ('248', '北票市', '2101');
INSERT INTO `ds_city` VALUES ('248', '凌源市', '2102');
INSERT INTO `ds_city` VALUES ('248', '朝阳县', '2103');
INSERT INTO `ds_city` VALUES ('248', '建平县', '2104');
INSERT INTO `ds_city` VALUES ('249', '振兴区', '2105');
INSERT INTO `ds_city` VALUES ('249', '元宝区', '2106');
INSERT INTO `ds_city` VALUES ('249', '振安区', '2107');
INSERT INTO `ds_city` VALUES ('249', '宽甸', '2108');
INSERT INTO `ds_city` VALUES ('249', '东港市', '2109');
INSERT INTO `ds_city` VALUES ('249', '凤城市', '2110');
INSERT INTO `ds_city` VALUES ('250', '顺城区', '2111');
INSERT INTO `ds_city` VALUES ('250', '新抚区', '2112');
INSERT INTO `ds_city` VALUES ('250', '东洲区', '2113');
INSERT INTO `ds_city` VALUES ('250', '望花区', '2114');
INSERT INTO `ds_city` VALUES ('250', '清原', '2115');
INSERT INTO `ds_city` VALUES ('250', '新宾', '2116');
INSERT INTO `ds_city` VALUES ('250', '抚顺县', '2117');
INSERT INTO `ds_city` VALUES ('251', '阜新', '2118');
INSERT INTO `ds_city` VALUES ('251', '海州区', '2119');
INSERT INTO `ds_city` VALUES ('251', '新邱区', '2120');
INSERT INTO `ds_city` VALUES ('251', '太平区', '2121');
INSERT INTO `ds_city` VALUES ('251', '清河门区', '2122');
INSERT INTO `ds_city` VALUES ('251', '细河区', '2123');
INSERT INTO `ds_city` VALUES ('251', '彰武县', '2124');
INSERT INTO `ds_city` VALUES ('252', '龙港区', '2125');
INSERT INTO `ds_city` VALUES ('252', '南票区', '2126');
INSERT INTO `ds_city` VALUES ('252', '连山区', '2127');
INSERT INTO `ds_city` VALUES ('252', '兴城市', '2128');
INSERT INTO `ds_city` VALUES ('252', '绥中县', '2129');
INSERT INTO `ds_city` VALUES ('252', '建昌县', '2130');
INSERT INTO `ds_city` VALUES ('253', '太和区', '2131');
INSERT INTO `ds_city` VALUES ('253', '古塔区', '2132');
INSERT INTO `ds_city` VALUES ('253', '凌河区', '2133');
INSERT INTO `ds_city` VALUES ('253', '凌海市', '2134');
INSERT INTO `ds_city` VALUES ('253', '北镇市', '2135');
INSERT INTO `ds_city` VALUES ('253', '黑山县', '2136');
INSERT INTO `ds_city` VALUES ('253', '义县', '2137');
INSERT INTO `ds_city` VALUES ('254', '白塔区', '2138');
INSERT INTO `ds_city` VALUES ('254', '文圣区', '2139');
INSERT INTO `ds_city` VALUES ('254', '宏伟区', '2140');
INSERT INTO `ds_city` VALUES ('254', '太子河区', '2141');
INSERT INTO `ds_city` VALUES ('254', '弓长岭区', '2142');
INSERT INTO `ds_city` VALUES ('254', '灯塔市', '2143');
INSERT INTO `ds_city` VALUES ('254', '辽阳县', '2144');
INSERT INTO `ds_city` VALUES ('255', '双台子区', '2145');
INSERT INTO `ds_city` VALUES ('255', '兴隆台区', '2146');
INSERT INTO `ds_city` VALUES ('255', '大洼县', '2147');
INSERT INTO `ds_city` VALUES ('255', '盘山县', '2148');
INSERT INTO `ds_city` VALUES ('256', '银州区', '2149');
INSERT INTO `ds_city` VALUES ('256', '清河区', '2150');
INSERT INTO `ds_city` VALUES ('256', '调兵山市', '2151');
INSERT INTO `ds_city` VALUES ('256', '开原市', '2152');
INSERT INTO `ds_city` VALUES ('256', '铁岭县', '2153');
INSERT INTO `ds_city` VALUES ('256', '西丰县', '2154');
INSERT INTO `ds_city` VALUES ('256', '昌图县', '2155');
INSERT INTO `ds_city` VALUES ('257', '站前区', '2156');
INSERT INTO `ds_city` VALUES ('257', '西市区', '2157');
INSERT INTO `ds_city` VALUES ('257', '鲅鱼圈区', '2158');
INSERT INTO `ds_city` VALUES ('257', '老边区', '2159');
INSERT INTO `ds_city` VALUES ('257', '盖州市', '2160');
INSERT INTO `ds_city` VALUES ('257', '大石桥市', '2161');
INSERT INTO `ds_city` VALUES ('258', '回民区', '2162');
INSERT INTO `ds_city` VALUES ('258', '玉泉区', '2163');
INSERT INTO `ds_city` VALUES ('258', '新城区', '2164');
INSERT INTO `ds_city` VALUES ('258', '赛罕区', '2165');
INSERT INTO `ds_city` VALUES ('258', '清水河县', '2166');
INSERT INTO `ds_city` VALUES ('258', '土默特左旗', '2167');
INSERT INTO `ds_city` VALUES ('258', '托克托县', '2168');
INSERT INTO `ds_city` VALUES ('258', '和林格尔县', '2169');
INSERT INTO `ds_city` VALUES ('258', '武川县', '2170');
INSERT INTO `ds_city` VALUES ('259', '阿拉善左旗', '2171');
INSERT INTO `ds_city` VALUES ('259', '阿拉善右旗', '2172');
INSERT INTO `ds_city` VALUES ('259', '额济纳旗', '2173');
INSERT INTO `ds_city` VALUES ('260', '临河区', '2174');
INSERT INTO `ds_city` VALUES ('260', '五原县', '2175');
INSERT INTO `ds_city` VALUES ('260', '磴口县', '2176');
INSERT INTO `ds_city` VALUES ('260', '乌拉特前旗', '2177');
INSERT INTO `ds_city` VALUES ('260', '乌拉特中旗', '2178');
INSERT INTO `ds_city` VALUES ('260', '乌拉特后旗', '2179');
INSERT INTO `ds_city` VALUES ('260', '杭锦后旗', '2180');
INSERT INTO `ds_city` VALUES ('261', '昆都仑区', '2181');
INSERT INTO `ds_city` VALUES ('261', '青山区', '2182');
INSERT INTO `ds_city` VALUES ('261', '东河区', '2183');
INSERT INTO `ds_city` VALUES ('261', '九原区', '2184');
INSERT INTO `ds_city` VALUES ('261', '石拐区', '2185');
INSERT INTO `ds_city` VALUES ('261', '白云矿区', '2186');
INSERT INTO `ds_city` VALUES ('261', '土默特右旗', '2187');
INSERT INTO `ds_city` VALUES ('261', '固阳县', '2188');
INSERT INTO `ds_city` VALUES ('261', '达尔罕茂明安联合旗', '2189');
INSERT INTO `ds_city` VALUES ('262', '红山区', '2190');
INSERT INTO `ds_city` VALUES ('262', '元宝山区', '2191');
INSERT INTO `ds_city` VALUES ('262', '松山区', '2192');
INSERT INTO `ds_city` VALUES ('262', '阿鲁科尔沁旗', '2193');
INSERT INTO `ds_city` VALUES ('262', '巴林左旗', '2194');
INSERT INTO `ds_city` VALUES ('262', '巴林右旗', '2195');
INSERT INTO `ds_city` VALUES ('262', '林西县', '2196');
INSERT INTO `ds_city` VALUES ('262', '克什克腾旗', '2197');
INSERT INTO `ds_city` VALUES ('262', '翁牛特旗', '2198');
INSERT INTO `ds_city` VALUES ('262', '喀喇沁旗', '2199');
INSERT INTO `ds_city` VALUES ('262', '宁城县', '2200');
INSERT INTO `ds_city` VALUES ('262', '敖汉旗', '2201');
INSERT INTO `ds_city` VALUES ('263', '东胜区', '2202');
INSERT INTO `ds_city` VALUES ('263', '达拉特旗', '2203');
INSERT INTO `ds_city` VALUES ('263', '准格尔旗', '2204');
INSERT INTO `ds_city` VALUES ('263', '鄂托克前旗', '2205');
INSERT INTO `ds_city` VALUES ('263', '鄂托克旗', '2206');
INSERT INTO `ds_city` VALUES ('263', '杭锦旗', '2207');
INSERT INTO `ds_city` VALUES ('263', '乌审旗', '2208');
INSERT INTO `ds_city` VALUES ('263', '伊金霍洛旗', '2209');
INSERT INTO `ds_city` VALUES ('264', '海拉尔区', '2210');
INSERT INTO `ds_city` VALUES ('264', '莫力达瓦', '2211');
INSERT INTO `ds_city` VALUES ('264', '满洲里市', '2212');
INSERT INTO `ds_city` VALUES ('264', '牙克石市', '2213');
INSERT INTO `ds_city` VALUES ('264', '扎兰屯市', '2214');
INSERT INTO `ds_city` VALUES ('264', '额尔古纳市', '2215');
INSERT INTO `ds_city` VALUES ('264', '根河市', '2216');
INSERT INTO `ds_city` VALUES ('264', '阿荣旗', '2217');
INSERT INTO `ds_city` VALUES ('264', '鄂伦春自治旗', '2218');
INSERT INTO `ds_city` VALUES ('264', '鄂温克族自治旗', '2219');
INSERT INTO `ds_city` VALUES ('264', '陈巴尔虎旗', '2220');
INSERT INTO `ds_city` VALUES ('264', '新巴尔虎左旗', '2221');
INSERT INTO `ds_city` VALUES ('264', '新巴尔虎右旗', '2222');
INSERT INTO `ds_city` VALUES ('265', '科尔沁区', '2223');
INSERT INTO `ds_city` VALUES ('265', '霍林郭勒市', '2224');
INSERT INTO `ds_city` VALUES ('265', '科尔沁左翼中旗', '2225');
INSERT INTO `ds_city` VALUES ('265', '科尔沁左翼后旗', '2226');
INSERT INTO `ds_city` VALUES ('265', '开鲁县', '2227');
INSERT INTO `ds_city` VALUES ('265', '库伦旗', '2228');
INSERT INTO `ds_city` VALUES ('265', '奈曼旗', '2229');
INSERT INTO `ds_city` VALUES ('265', '扎鲁特旗', '2230');
INSERT INTO `ds_city` VALUES ('266', '海勃湾区', '2231');
INSERT INTO `ds_city` VALUES ('266', '乌达区', '2232');
INSERT INTO `ds_city` VALUES ('266', '海南区', '2233');
INSERT INTO `ds_city` VALUES ('267', '化德县', '2234');
INSERT INTO `ds_city` VALUES ('267', '集宁区', '2235');
INSERT INTO `ds_city` VALUES ('267', '丰镇市', '2236');
INSERT INTO `ds_city` VALUES ('267', '卓资县', '2237');
INSERT INTO `ds_city` VALUES ('267', '商都县', '2238');
INSERT INTO `ds_city` VALUES ('267', '兴和县', '2239');
INSERT INTO `ds_city` VALUES ('267', '凉城县', '2240');
INSERT INTO `ds_city` VALUES ('267', '察哈尔右翼前旗', '2241');
INSERT INTO `ds_city` VALUES ('267', '察哈尔右翼中旗', '2242');
INSERT INTO `ds_city` VALUES ('267', '察哈尔右翼后旗', '2243');
INSERT INTO `ds_city` VALUES ('267', '四子王旗', '2244');
INSERT INTO `ds_city` VALUES ('268', '二连浩特市', '2245');
INSERT INTO `ds_city` VALUES ('268', '锡林浩特市', '2246');
INSERT INTO `ds_city` VALUES ('268', '阿巴嘎旗', '2247');
INSERT INTO `ds_city` VALUES ('268', '苏尼特左旗', '2248');
INSERT INTO `ds_city` VALUES ('268', '苏尼特右旗', '2249');
INSERT INTO `ds_city` VALUES ('268', '东乌珠穆沁旗', '2250');
INSERT INTO `ds_city` VALUES ('268', '西乌珠穆沁旗', '2251');
INSERT INTO `ds_city` VALUES ('268', '太仆寺旗', '2252');
INSERT INTO `ds_city` VALUES ('268', '镶黄旗', '2253');
INSERT INTO `ds_city` VALUES ('268', '正镶白旗', '2254');
INSERT INTO `ds_city` VALUES ('268', '正蓝旗', '2255');
INSERT INTO `ds_city` VALUES ('268', '多伦县', '2256');
INSERT INTO `ds_city` VALUES ('269', '乌兰浩特市', '2257');
INSERT INTO `ds_city` VALUES ('269', '阿尔山市', '2258');
INSERT INTO `ds_city` VALUES ('269', '科尔沁右翼前旗', '2259');
INSERT INTO `ds_city` VALUES ('269', '科尔沁右翼中旗', '2260');
INSERT INTO `ds_city` VALUES ('269', '扎赉特旗', '2261');
INSERT INTO `ds_city` VALUES ('269', '突泉县', '2262');
INSERT INTO `ds_city` VALUES ('270', '西夏区', '2263');
INSERT INTO `ds_city` VALUES ('270', '金凤区', '2264');
INSERT INTO `ds_city` VALUES ('270', '兴庆区', '2265');
INSERT INTO `ds_city` VALUES ('270', '灵武市', '2266');
INSERT INTO `ds_city` VALUES ('270', '永宁县', '2267');
INSERT INTO `ds_city` VALUES ('270', '贺兰县', '2268');
INSERT INTO `ds_city` VALUES ('271', '原州区', '2269');
INSERT INTO `ds_city` VALUES ('271', '海原县', '2270');
INSERT INTO `ds_city` VALUES ('271', '西吉县', '2271');
INSERT INTO `ds_city` VALUES ('271', '隆德县', '2272');
INSERT INTO `ds_city` VALUES ('271', '泾源县', '2273');
INSERT INTO `ds_city` VALUES ('271', '彭阳县', '2274');
INSERT INTO `ds_city` VALUES ('272', '惠农县', '2275');
INSERT INTO `ds_city` VALUES ('272', '大武口区', '2276');
INSERT INTO `ds_city` VALUES ('272', '惠农区', '2277');
INSERT INTO `ds_city` VALUES ('272', '陶乐县', '2278');
INSERT INTO `ds_city` VALUES ('272', '平罗县', '2279');
INSERT INTO `ds_city` VALUES ('273', '利通区', '2280');
INSERT INTO `ds_city` VALUES ('273', '中卫县', '2281');
INSERT INTO `ds_city` VALUES ('273', '青铜峡市', '2282');
INSERT INTO `ds_city` VALUES ('273', '中宁县', '2283');
INSERT INTO `ds_city` VALUES ('273', '盐池县', '2284');
INSERT INTO `ds_city` VALUES ('273', '同心县', '2285');
INSERT INTO `ds_city` VALUES ('274', '沙坡头区', '2286');
INSERT INTO `ds_city` VALUES ('274', '海原县', '2287');
INSERT INTO `ds_city` VALUES ('274', '中宁县', '2288');
INSERT INTO `ds_city` VALUES ('275', '城中区', '2289');
INSERT INTO `ds_city` VALUES ('275', '城东区', '2290');
INSERT INTO `ds_city` VALUES ('275', '城西区', '2291');
INSERT INTO `ds_city` VALUES ('275', '城北区', '2292');
INSERT INTO `ds_city` VALUES ('275', '湟中县', '2293');
INSERT INTO `ds_city` VALUES ('275', '湟源县', '2294');
INSERT INTO `ds_city` VALUES ('275', '大通', '2295');
INSERT INTO `ds_city` VALUES ('276', '玛沁县', '2296');
INSERT INTO `ds_city` VALUES ('276', '班玛县', '2297');
INSERT INTO `ds_city` VALUES ('276', '甘德县', '2298');
INSERT INTO `ds_city` VALUES ('276', '达日县', '2299');
INSERT INTO `ds_city` VALUES ('276', '久治县', '2300');
INSERT INTO `ds_city` VALUES ('276', '玛多县', '2301');
INSERT INTO `ds_city` VALUES ('277', '海晏县', '2302');
INSERT INTO `ds_city` VALUES ('277', '祁连县', '2303');
INSERT INTO `ds_city` VALUES ('277', '刚察县', '2304');
INSERT INTO `ds_city` VALUES ('277', '门源', '2305');
INSERT INTO `ds_city` VALUES ('278', '平安县', '2306');
INSERT INTO `ds_city` VALUES ('278', '乐都县', '2307');
INSERT INTO `ds_city` VALUES ('278', '民和', '2308');
INSERT INTO `ds_city` VALUES ('278', '互助', '2309');
INSERT INTO `ds_city` VALUES ('278', '化隆', '2310');
INSERT INTO `ds_city` VALUES ('278', '循化', '2311');
INSERT INTO `ds_city` VALUES ('279', '共和县', '2312');
INSERT INTO `ds_city` VALUES ('279', '同德县', '2313');
INSERT INTO `ds_city` VALUES ('279', '贵德县', '2314');
INSERT INTO `ds_city` VALUES ('279', '兴海县', '2315');
INSERT INTO `ds_city` VALUES ('279', '贵南县', '2316');
INSERT INTO `ds_city` VALUES ('280', '德令哈市', '2317');
INSERT INTO `ds_city` VALUES ('280', '格尔木市', '2318');
INSERT INTO `ds_city` VALUES ('280', '乌兰县', '2319');
INSERT INTO `ds_city` VALUES ('280', '都兰县', '2320');
INSERT INTO `ds_city` VALUES ('280', '天峻县', '2321');
INSERT INTO `ds_city` VALUES ('281', '同仁县', '2322');
INSERT INTO `ds_city` VALUES ('281', '尖扎县', '2323');
INSERT INTO `ds_city` VALUES ('281', '泽库县', '2324');
INSERT INTO `ds_city` VALUES ('281', '河南蒙古族自治县', '2325');
INSERT INTO `ds_city` VALUES ('282', '玉树县', '2326');
INSERT INTO `ds_city` VALUES ('282', '杂多县', '2327');
INSERT INTO `ds_city` VALUES ('282', '称多县', '2328');
INSERT INTO `ds_city` VALUES ('282', '治多县', '2329');
INSERT INTO `ds_city` VALUES ('282', '囊谦县', '2330');
INSERT INTO `ds_city` VALUES ('282', '曲麻莱县', '2331');
INSERT INTO `ds_city` VALUES ('283', '市中区', '2332');
INSERT INTO `ds_city` VALUES ('283', '历下区', '2333');
INSERT INTO `ds_city` VALUES ('283', '天桥区', '2334');
INSERT INTO `ds_city` VALUES ('283', '槐荫区', '2335');
INSERT INTO `ds_city` VALUES ('283', '历城区', '2336');
INSERT INTO `ds_city` VALUES ('283', '长清区', '2337');
INSERT INTO `ds_city` VALUES ('283', '章丘市', '2338');
INSERT INTO `ds_city` VALUES ('283', '平阴县', '2339');
INSERT INTO `ds_city` VALUES ('283', '济阳县', '2340');
INSERT INTO `ds_city` VALUES ('283', '商河县', '2341');
INSERT INTO `ds_city` VALUES ('284', '市南区', '2342');
INSERT INTO `ds_city` VALUES ('284', '市北区', '2343');
INSERT INTO `ds_city` VALUES ('284', '城阳区', '2344');
INSERT INTO `ds_city` VALUES ('284', '四方区', '2345');
INSERT INTO `ds_city` VALUES ('284', '李沧区', '2346');
INSERT INTO `ds_city` VALUES ('284', '黄岛区', '2347');
INSERT INTO `ds_city` VALUES ('284', '崂山区', '2348');
INSERT INTO `ds_city` VALUES ('284', '胶州市', '2349');
INSERT INTO `ds_city` VALUES ('284', '即墨市', '2350');
INSERT INTO `ds_city` VALUES ('284', '平度市', '2351');
INSERT INTO `ds_city` VALUES ('284', '胶南市', '2352');
INSERT INTO `ds_city` VALUES ('284', '莱西市', '2353');
INSERT INTO `ds_city` VALUES ('285', '滨城区', '2354');
INSERT INTO `ds_city` VALUES ('285', '惠民县', '2355');
INSERT INTO `ds_city` VALUES ('285', '阳信县', '2356');
INSERT INTO `ds_city` VALUES ('285', '无棣县', '2357');
INSERT INTO `ds_city` VALUES ('285', '沾化县', '2358');
INSERT INTO `ds_city` VALUES ('285', '博兴县', '2359');
INSERT INTO `ds_city` VALUES ('285', '邹平县', '2360');
INSERT INTO `ds_city` VALUES ('286', '德城区', '2361');
INSERT INTO `ds_city` VALUES ('286', '陵县', '2362');
INSERT INTO `ds_city` VALUES ('286', '乐陵市', '2363');
INSERT INTO `ds_city` VALUES ('286', '禹城市', '2364');
INSERT INTO `ds_city` VALUES ('286', '宁津县', '2365');
INSERT INTO `ds_city` VALUES ('286', '庆云县', '2366');
INSERT INTO `ds_city` VALUES ('286', '临邑县', '2367');
INSERT INTO `ds_city` VALUES ('286', '齐河县', '2368');
INSERT INTO `ds_city` VALUES ('286', '平原县', '2369');
INSERT INTO `ds_city` VALUES ('286', '夏津县', '2370');
INSERT INTO `ds_city` VALUES ('286', '武城县', '2371');
INSERT INTO `ds_city` VALUES ('287', '东营区', '2372');
INSERT INTO `ds_city` VALUES ('287', '河口区', '2373');
INSERT INTO `ds_city` VALUES ('287', '垦利县', '2374');
INSERT INTO `ds_city` VALUES ('287', '利津县', '2375');
INSERT INTO `ds_city` VALUES ('287', '广饶县', '2376');
INSERT INTO `ds_city` VALUES ('288', '牡丹区', '2377');
INSERT INTO `ds_city` VALUES ('288', '曹县', '2378');
INSERT INTO `ds_city` VALUES ('288', '单县', '2379');
INSERT INTO `ds_city` VALUES ('288', '成武县', '2380');
INSERT INTO `ds_city` VALUES ('288', '巨野县', '2381');
INSERT INTO `ds_city` VALUES ('288', '郓城县', '2382');
INSERT INTO `ds_city` VALUES ('288', '鄄城县', '2383');
INSERT INTO `ds_city` VALUES ('288', '定陶县', '2384');
INSERT INTO `ds_city` VALUES ('288', '东明县', '2385');
INSERT INTO `ds_city` VALUES ('289', '市中区', '2386');
INSERT INTO `ds_city` VALUES ('289', '任城区', '2387');
INSERT INTO `ds_city` VALUES ('289', '曲阜市', '2388');
INSERT INTO `ds_city` VALUES ('289', '兖州市', '2389');
INSERT INTO `ds_city` VALUES ('289', '邹城市', '2390');
INSERT INTO `ds_city` VALUES ('289', '微山县', '2391');
INSERT INTO `ds_city` VALUES ('289', '鱼台县', '2392');
INSERT INTO `ds_city` VALUES ('289', '金乡县', '2393');
INSERT INTO `ds_city` VALUES ('289', '嘉祥县', '2394');
INSERT INTO `ds_city` VALUES ('289', '汶上县', '2395');
INSERT INTO `ds_city` VALUES ('289', '泗水县', '2396');
INSERT INTO `ds_city` VALUES ('289', '梁山县', '2397');
INSERT INTO `ds_city` VALUES ('290', '莱城区', '2398');
INSERT INTO `ds_city` VALUES ('290', '钢城区', '2399');
INSERT INTO `ds_city` VALUES ('291', '东昌府区', '2400');
INSERT INTO `ds_city` VALUES ('291', '临清市', '2401');
INSERT INTO `ds_city` VALUES ('291', '阳谷县', '2402');
INSERT INTO `ds_city` VALUES ('291', '莘县', '2403');
INSERT INTO `ds_city` VALUES ('291', '茌平县', '2404');
INSERT INTO `ds_city` VALUES ('291', '东阿县', '2405');
INSERT INTO `ds_city` VALUES ('291', '冠县', '2406');
INSERT INTO `ds_city` VALUES ('291', '高唐县', '2407');
INSERT INTO `ds_city` VALUES ('292', '兰山区', '2408');
INSERT INTO `ds_city` VALUES ('292', '罗庄区', '2409');
INSERT INTO `ds_city` VALUES ('292', '河东区', '2410');
INSERT INTO `ds_city` VALUES ('292', '沂南县', '2411');
INSERT INTO `ds_city` VALUES ('292', '郯城县', '2412');
INSERT INTO `ds_city` VALUES ('292', '沂水县', '2413');
INSERT INTO `ds_city` VALUES ('292', '苍山县', '2414');
INSERT INTO `ds_city` VALUES ('292', '费县', '2415');
INSERT INTO `ds_city` VALUES ('292', '平邑县', '2416');
INSERT INTO `ds_city` VALUES ('292', '莒南县', '2417');
INSERT INTO `ds_city` VALUES ('292', '蒙阴县', '2418');
INSERT INTO `ds_city` VALUES ('292', '临沭县', '2419');
INSERT INTO `ds_city` VALUES ('293', '东港区', '2420');
INSERT INTO `ds_city` VALUES ('293', '岚山区', '2421');
INSERT INTO `ds_city` VALUES ('293', '五莲县', '2422');
INSERT INTO `ds_city` VALUES ('293', '莒县', '2423');
INSERT INTO `ds_city` VALUES ('294', '泰山区', '2424');
INSERT INTO `ds_city` VALUES ('294', '岱岳区', '2425');
INSERT INTO `ds_city` VALUES ('294', '新泰市', '2426');
INSERT INTO `ds_city` VALUES ('294', '肥城市', '2427');
INSERT INTO `ds_city` VALUES ('294', '宁阳县', '2428');
INSERT INTO `ds_city` VALUES ('294', '东平县', '2429');
INSERT INTO `ds_city` VALUES ('295', '荣成市', '2430');
INSERT INTO `ds_city` VALUES ('295', '乳山市', '2431');
INSERT INTO `ds_city` VALUES ('295', '环翠区', '2432');
INSERT INTO `ds_city` VALUES ('295', '文登市', '2433');
INSERT INTO `ds_city` VALUES ('296', '潍城区', '2434');
INSERT INTO `ds_city` VALUES ('296', '寒亭区', '2435');
INSERT INTO `ds_city` VALUES ('296', '坊子区', '2436');
INSERT INTO `ds_city` VALUES ('296', '奎文区', '2437');
INSERT INTO `ds_city` VALUES ('296', '青州市', '2438');
INSERT INTO `ds_city` VALUES ('296', '诸城市', '2439');
INSERT INTO `ds_city` VALUES ('296', '寿光市', '2440');
INSERT INTO `ds_city` VALUES ('296', '安丘市', '2441');
INSERT INTO `ds_city` VALUES ('296', '高密市', '2442');
INSERT INTO `ds_city` VALUES ('296', '昌邑市', '2443');
INSERT INTO `ds_city` VALUES ('296', '临朐县', '2444');
INSERT INTO `ds_city` VALUES ('296', '昌乐县', '2445');
INSERT INTO `ds_city` VALUES ('297', '芝罘区', '2446');
INSERT INTO `ds_city` VALUES ('297', '福山区', '2447');
INSERT INTO `ds_city` VALUES ('297', '牟平区', '2448');
INSERT INTO `ds_city` VALUES ('297', '莱山区', '2449');
INSERT INTO `ds_city` VALUES ('297', '开发区', '2450');
INSERT INTO `ds_city` VALUES ('297', '龙口市', '2451');
INSERT INTO `ds_city` VALUES ('297', '莱阳市', '2452');
INSERT INTO `ds_city` VALUES ('297', '莱州市', '2453');
INSERT INTO `ds_city` VALUES ('297', '蓬莱市', '2454');
INSERT INTO `ds_city` VALUES ('297', '招远市', '2455');
INSERT INTO `ds_city` VALUES ('297', '栖霞市', '2456');
INSERT INTO `ds_city` VALUES ('297', '海阳市', '2457');
INSERT INTO `ds_city` VALUES ('297', '长岛县', '2458');
INSERT INTO `ds_city` VALUES ('298', '市中区', '2459');
INSERT INTO `ds_city` VALUES ('298', '山亭区', '2460');
INSERT INTO `ds_city` VALUES ('298', '峄城区', '2461');
INSERT INTO `ds_city` VALUES ('298', '台儿庄区', '2462');
INSERT INTO `ds_city` VALUES ('298', '薛城区', '2463');
INSERT INTO `ds_city` VALUES ('298', '滕州市', '2464');
INSERT INTO `ds_city` VALUES ('299', '张店区', '2465');
INSERT INTO `ds_city` VALUES ('299', '临淄区', '2466');
INSERT INTO `ds_city` VALUES ('299', '淄川区', '2467');
INSERT INTO `ds_city` VALUES ('299', '博山区', '2468');
INSERT INTO `ds_city` VALUES ('299', '周村区', '2469');
INSERT INTO `ds_city` VALUES ('299', '桓台县', '2470');
INSERT INTO `ds_city` VALUES ('299', '高青县', '2471');
INSERT INTO `ds_city` VALUES ('299', '沂源县', '2472');
INSERT INTO `ds_city` VALUES ('300', '杏花岭区', '2473');
INSERT INTO `ds_city` VALUES ('300', '小店区', '2474');
INSERT INTO `ds_city` VALUES ('300', '迎泽区', '2475');
INSERT INTO `ds_city` VALUES ('300', '尖草坪区', '2476');
INSERT INTO `ds_city` VALUES ('300', '万柏林区', '2477');
INSERT INTO `ds_city` VALUES ('300', '晋源区', '2478');
INSERT INTO `ds_city` VALUES ('300', '高新开发区', '2479');
INSERT INTO `ds_city` VALUES ('300', '民营经济开发区', '2480');
INSERT INTO `ds_city` VALUES ('300', '经济技术开发区', '2481');
INSERT INTO `ds_city` VALUES ('300', '清徐县', '2482');
INSERT INTO `ds_city` VALUES ('300', '阳曲县', '2483');
INSERT INTO `ds_city` VALUES ('300', '娄烦县', '2484');
INSERT INTO `ds_city` VALUES ('300', '古交市', '2485');
INSERT INTO `ds_city` VALUES ('301', '城区', '2486');
INSERT INTO `ds_city` VALUES ('301', '郊区', '2487');
INSERT INTO `ds_city` VALUES ('301', '沁县', '2488');
INSERT INTO `ds_city` VALUES ('301', '潞城市', '2489');
INSERT INTO `ds_city` VALUES ('301', '长治县', '2490');
INSERT INTO `ds_city` VALUES ('301', '襄垣县', '2491');
INSERT INTO `ds_city` VALUES ('301', '屯留县', '2492');
INSERT INTO `ds_city` VALUES ('301', '平顺县', '2493');
INSERT INTO `ds_city` VALUES ('301', '黎城县', '2494');
INSERT INTO `ds_city` VALUES ('301', '壶关县', '2495');
INSERT INTO `ds_city` VALUES ('301', '长子县', '2496');
INSERT INTO `ds_city` VALUES ('301', '武乡县', '2497');
INSERT INTO `ds_city` VALUES ('301', '沁源县', '2498');
INSERT INTO `ds_city` VALUES ('302', '城区', '2499');
INSERT INTO `ds_city` VALUES ('302', '矿区', '2500');
INSERT INTO `ds_city` VALUES ('302', '南郊区', '2501');
INSERT INTO `ds_city` VALUES ('302', '新荣区', '2502');
INSERT INTO `ds_city` VALUES ('302', '阳高县', '2503');
INSERT INTO `ds_city` VALUES ('302', '天镇县', '2504');
INSERT INTO `ds_city` VALUES ('302', '广灵县', '2505');
INSERT INTO `ds_city` VALUES ('302', '灵丘县', '2506');
INSERT INTO `ds_city` VALUES ('302', '浑源县', '2507');
INSERT INTO `ds_city` VALUES ('302', '左云县', '2508');
INSERT INTO `ds_city` VALUES ('302', '大同县', '2509');
INSERT INTO `ds_city` VALUES ('303', '城区', '2510');
INSERT INTO `ds_city` VALUES ('303', '高平市', '2511');
INSERT INTO `ds_city` VALUES ('303', '沁水县', '2512');
INSERT INTO `ds_city` VALUES ('303', '阳城县', '2513');
INSERT INTO `ds_city` VALUES ('303', '陵川县', '2514');
INSERT INTO `ds_city` VALUES ('303', '泽州县', '2515');
INSERT INTO `ds_city` VALUES ('304', '榆次区', '2516');
INSERT INTO `ds_city` VALUES ('304', '介休市', '2517');
INSERT INTO `ds_city` VALUES ('304', '榆社县', '2518');
INSERT INTO `ds_city` VALUES ('304', '左权县', '2519');
INSERT INTO `ds_city` VALUES ('304', '和顺县', '2520');
INSERT INTO `ds_city` VALUES ('304', '昔阳县', '2521');
INSERT INTO `ds_city` VALUES ('304', '寿阳县', '2522');
INSERT INTO `ds_city` VALUES ('304', '太谷县', '2523');
INSERT INTO `ds_city` VALUES ('304', '祁县', '2524');
INSERT INTO `ds_city` VALUES ('304', '平遥县', '2525');
INSERT INTO `ds_city` VALUES ('304', '灵石县', '2526');
INSERT INTO `ds_city` VALUES ('305', '尧都区', '2527');
INSERT INTO `ds_city` VALUES ('305', '侯马市', '2528');
INSERT INTO `ds_city` VALUES ('305', '霍州市', '2529');
INSERT INTO `ds_city` VALUES ('305', '曲沃县', '2530');
INSERT INTO `ds_city` VALUES ('305', '翼城县', '2531');
INSERT INTO `ds_city` VALUES ('305', '襄汾县', '2532');
INSERT INTO `ds_city` VALUES ('305', '洪洞县', '2533');
INSERT INTO `ds_city` VALUES ('305', '吉县', '2534');
INSERT INTO `ds_city` VALUES ('305', '安泽县', '2535');
INSERT INTO `ds_city` VALUES ('305', '浮山县', '2536');
INSERT INTO `ds_city` VALUES ('305', '古县', '2537');
INSERT INTO `ds_city` VALUES ('305', '乡宁县', '2538');
INSERT INTO `ds_city` VALUES ('305', '大宁县', '2539');
INSERT INTO `ds_city` VALUES ('305', '隰县', '2540');
INSERT INTO `ds_city` VALUES ('305', '永和县', '2541');
INSERT INTO `ds_city` VALUES ('305', '蒲县', '2542');
INSERT INTO `ds_city` VALUES ('305', '汾西县', '2543');
INSERT INTO `ds_city` VALUES ('306', '离石市', '2544');
INSERT INTO `ds_city` VALUES ('306', '离石区', '2545');
INSERT INTO `ds_city` VALUES ('306', '孝义市', '2546');
INSERT INTO `ds_city` VALUES ('306', '汾阳市', '2547');
INSERT INTO `ds_city` VALUES ('306', '文水县', '2548');
INSERT INTO `ds_city` VALUES ('306', '交城县', '2549');
INSERT INTO `ds_city` VALUES ('306', '兴县', '2550');
INSERT INTO `ds_city` VALUES ('306', '临县', '2551');
INSERT INTO `ds_city` VALUES ('306', '柳林县', '2552');
INSERT INTO `ds_city` VALUES ('306', '石楼县', '2553');
INSERT INTO `ds_city` VALUES ('306', '岚县', '2554');
INSERT INTO `ds_city` VALUES ('306', '方山县', '2555');
INSERT INTO `ds_city` VALUES ('306', '中阳县', '2556');
INSERT INTO `ds_city` VALUES ('306', '交口县', '2557');
INSERT INTO `ds_city` VALUES ('307', '朔城区', '2558');
INSERT INTO `ds_city` VALUES ('307', '平鲁区', '2559');
INSERT INTO `ds_city` VALUES ('307', '山阴县', '2560');
INSERT INTO `ds_city` VALUES ('307', '应县', '2561');
INSERT INTO `ds_city` VALUES ('307', '右玉县', '2562');
INSERT INTO `ds_city` VALUES ('307', '怀仁县', '2563');
INSERT INTO `ds_city` VALUES ('308', '忻府区', '2564');
INSERT INTO `ds_city` VALUES ('308', '原平市', '2565');
INSERT INTO `ds_city` VALUES ('308', '定襄县', '2566');
INSERT INTO `ds_city` VALUES ('308', '五台县', '2567');
INSERT INTO `ds_city` VALUES ('308', '代县', '2568');
INSERT INTO `ds_city` VALUES ('308', '繁峙县', '2569');
INSERT INTO `ds_city` VALUES ('308', '宁武县', '2570');
INSERT INTO `ds_city` VALUES ('308', '静乐县', '2571');
INSERT INTO `ds_city` VALUES ('308', '神池县', '2572');
INSERT INTO `ds_city` VALUES ('308', '五寨县', '2573');
INSERT INTO `ds_city` VALUES ('308', '岢岚县', '2574');
INSERT INTO `ds_city` VALUES ('308', '河曲县', '2575');
INSERT INTO `ds_city` VALUES ('308', '保德县', '2576');
INSERT INTO `ds_city` VALUES ('308', '偏关县', '2577');
INSERT INTO `ds_city` VALUES ('309', '城区', '2578');
INSERT INTO `ds_city` VALUES ('309', '矿区', '2579');
INSERT INTO `ds_city` VALUES ('309', '郊区', '2580');
INSERT INTO `ds_city` VALUES ('309', '平定县', '2581');
INSERT INTO `ds_city` VALUES ('309', '盂县', '2582');
INSERT INTO `ds_city` VALUES ('310', '盐湖区', '2583');
INSERT INTO `ds_city` VALUES ('310', '永济市', '2584');
INSERT INTO `ds_city` VALUES ('310', '河津市', '2585');
INSERT INTO `ds_city` VALUES ('310', '临猗县', '2586');
INSERT INTO `ds_city` VALUES ('310', '万荣县', '2587');
INSERT INTO `ds_city` VALUES ('310', '闻喜县', '2588');
INSERT INTO `ds_city` VALUES ('310', '稷山县', '2589');
INSERT INTO `ds_city` VALUES ('310', '新绛县', '2590');
INSERT INTO `ds_city` VALUES ('310', '绛县', '2591');
INSERT INTO `ds_city` VALUES ('310', '垣曲县', '2592');
INSERT INTO `ds_city` VALUES ('310', '夏县', '2593');
INSERT INTO `ds_city` VALUES ('310', '平陆县', '2594');
INSERT INTO `ds_city` VALUES ('310', '芮城县', '2595');
INSERT INTO `ds_city` VALUES ('311', '莲湖区', '2596');
INSERT INTO `ds_city` VALUES ('311', '新城区', '2597');
INSERT INTO `ds_city` VALUES ('311', '碑林区', '2598');
INSERT INTO `ds_city` VALUES ('311', '雁塔区', '2599');
INSERT INTO `ds_city` VALUES ('311', '灞桥区', '2600');
INSERT INTO `ds_city` VALUES ('311', '未央区', '2601');
INSERT INTO `ds_city` VALUES ('311', '阎良区', '2602');
INSERT INTO `ds_city` VALUES ('311', '临潼区', '2603');
INSERT INTO `ds_city` VALUES ('311', '长安区', '2604');
INSERT INTO `ds_city` VALUES ('311', '蓝田县', '2605');
INSERT INTO `ds_city` VALUES ('311', '周至县', '2606');
INSERT INTO `ds_city` VALUES ('311', '户县', '2607');
INSERT INTO `ds_city` VALUES ('311', '高陵县', '2608');
INSERT INTO `ds_city` VALUES ('312', '汉滨区', '2609');
INSERT INTO `ds_city` VALUES ('312', '汉阴县', '2610');
INSERT INTO `ds_city` VALUES ('312', '石泉县', '2611');
INSERT INTO `ds_city` VALUES ('312', '宁陕县', '2612');
INSERT INTO `ds_city` VALUES ('312', '紫阳县', '2613');
INSERT INTO `ds_city` VALUES ('312', '岚皋县', '2614');
INSERT INTO `ds_city` VALUES ('312', '平利县', '2615');
INSERT INTO `ds_city` VALUES ('312', '镇坪县', '2616');
INSERT INTO `ds_city` VALUES ('312', '旬阳县', '2617');
INSERT INTO `ds_city` VALUES ('312', '白河县', '2618');
INSERT INTO `ds_city` VALUES ('313', '陈仓区', '2619');
INSERT INTO `ds_city` VALUES ('313', '渭滨区', '2620');
INSERT INTO `ds_city` VALUES ('313', '金台区', '2621');
INSERT INTO `ds_city` VALUES ('313', '凤翔县', '2622');
INSERT INTO `ds_city` VALUES ('313', '岐山县', '2623');
INSERT INTO `ds_city` VALUES ('313', '扶风县', '2624');
INSERT INTO `ds_city` VALUES ('313', '眉县', '2625');
INSERT INTO `ds_city` VALUES ('313', '陇县', '2626');
INSERT INTO `ds_city` VALUES ('313', '千阳县', '2627');
INSERT INTO `ds_city` VALUES ('313', '麟游县', '2628');
INSERT INTO `ds_city` VALUES ('313', '凤县', '2629');
INSERT INTO `ds_city` VALUES ('313', '太白县', '2630');
INSERT INTO `ds_city` VALUES ('314', '汉台区', '2631');
INSERT INTO `ds_city` VALUES ('314', '南郑县', '2632');
INSERT INTO `ds_city` VALUES ('314', '城固县', '2633');
INSERT INTO `ds_city` VALUES ('314', '洋县', '2634');
INSERT INTO `ds_city` VALUES ('314', '西乡县', '2635');
INSERT INTO `ds_city` VALUES ('314', '勉县', '2636');
INSERT INTO `ds_city` VALUES ('314', '宁强县', '2637');
INSERT INTO `ds_city` VALUES ('314', '略阳县', '2638');
INSERT INTO `ds_city` VALUES ('314', '镇巴县', '2639');
INSERT INTO `ds_city` VALUES ('314', '留坝县', '2640');
INSERT INTO `ds_city` VALUES ('314', '佛坪县', '2641');
INSERT INTO `ds_city` VALUES ('315', '商州区', '2642');
INSERT INTO `ds_city` VALUES ('315', '洛南县', '2643');
INSERT INTO `ds_city` VALUES ('315', '丹凤县', '2644');
INSERT INTO `ds_city` VALUES ('315', '商南县', '2645');
INSERT INTO `ds_city` VALUES ('315', '山阳县', '2646');
INSERT INTO `ds_city` VALUES ('315', '镇安县', '2647');
INSERT INTO `ds_city` VALUES ('315', '柞水县', '2648');
INSERT INTO `ds_city` VALUES ('316', '耀州区', '2649');
INSERT INTO `ds_city` VALUES ('316', '王益区', '2650');
INSERT INTO `ds_city` VALUES ('316', '印台区', '2651');
INSERT INTO `ds_city` VALUES ('316', '宜君县', '2652');
INSERT INTO `ds_city` VALUES ('317', '临渭区', '2653');
INSERT INTO `ds_city` VALUES ('317', '韩城市', '2654');
INSERT INTO `ds_city` VALUES ('317', '华阴市', '2655');
INSERT INTO `ds_city` VALUES ('317', '华县', '2656');
INSERT INTO `ds_city` VALUES ('317', '潼关县', '2657');
INSERT INTO `ds_city` VALUES ('317', '大荔县', '2658');
INSERT INTO `ds_city` VALUES ('317', '合阳县', '2659');
INSERT INTO `ds_city` VALUES ('317', '澄城县', '2660');
INSERT INTO `ds_city` VALUES ('317', '蒲城县', '2661');
INSERT INTO `ds_city` VALUES ('317', '白水县', '2662');
INSERT INTO `ds_city` VALUES ('317', '富平县', '2663');
INSERT INTO `ds_city` VALUES ('317', '秦都区', '2664');
INSERT INTO `ds_city` VALUES ('317', '渭城区', '2665');
INSERT INTO `ds_city` VALUES ('317', '杨陵区', '2666');
INSERT INTO `ds_city` VALUES ('317', '兴平市', '2667');
INSERT INTO `ds_city` VALUES ('318', '三原县', '2668');
INSERT INTO `ds_city` VALUES ('318', '泾阳县', '2669');
INSERT INTO `ds_city` VALUES ('318', '乾县', '2670');
INSERT INTO `ds_city` VALUES ('318', '礼泉县', '2671');
INSERT INTO `ds_city` VALUES ('318', '永寿县', '2672');
INSERT INTO `ds_city` VALUES ('318', '彬县', '2673');
INSERT INTO `ds_city` VALUES ('318', '长武县', '2674');
INSERT INTO `ds_city` VALUES ('318', '旬邑县', '2675');
INSERT INTO `ds_city` VALUES ('318', '淳化县', '2676');
INSERT INTO `ds_city` VALUES ('318', '武功县', '2677');
INSERT INTO `ds_city` VALUES ('319', '吴起县', '2678');
INSERT INTO `ds_city` VALUES ('319', '宝塔区', '2679');
INSERT INTO `ds_city` VALUES ('319', '延长县', '2680');
INSERT INTO `ds_city` VALUES ('319', '延川县', '2681');
INSERT INTO `ds_city` VALUES ('319', '子长县', '2682');
INSERT INTO `ds_city` VALUES ('319', '安塞县', '2683');
INSERT INTO `ds_city` VALUES ('319', '志丹县', '2684');
INSERT INTO `ds_city` VALUES ('319', '甘泉县', '2685');
INSERT INTO `ds_city` VALUES ('319', '富县', '2686');
INSERT INTO `ds_city` VALUES ('319', '洛川县', '2687');
INSERT INTO `ds_city` VALUES ('319', '宜川县', '2688');
INSERT INTO `ds_city` VALUES ('319', '黄龙县', '2689');
INSERT INTO `ds_city` VALUES ('319', '黄陵县', '2690');
INSERT INTO `ds_city` VALUES ('320', '榆阳区', '2691');
INSERT INTO `ds_city` VALUES ('320', '神木县', '2692');
INSERT INTO `ds_city` VALUES ('320', '府谷县', '2693');
INSERT INTO `ds_city` VALUES ('320', '横山县', '2694');
INSERT INTO `ds_city` VALUES ('320', '靖边县', '2695');
INSERT INTO `ds_city` VALUES ('320', '定边县', '2696');
INSERT INTO `ds_city` VALUES ('320', '绥德县', '2697');
INSERT INTO `ds_city` VALUES ('320', '米脂县', '2698');
INSERT INTO `ds_city` VALUES ('320', '佳县', '2699');
INSERT INTO `ds_city` VALUES ('320', '吴堡县', '2700');
INSERT INTO `ds_city` VALUES ('320', '清涧县', '2701');
INSERT INTO `ds_city` VALUES ('320', '子洲县', '2702');
INSERT INTO `ds_city` VALUES ('321', '长宁区', '2703');
INSERT INTO `ds_city` VALUES ('321', '闸北区', '2704');
INSERT INTO `ds_city` VALUES ('321', '闵行区', '2705');
INSERT INTO `ds_city` VALUES ('321', '徐汇区', '2706');
INSERT INTO `ds_city` VALUES ('321', '浦东新区', '2707');
INSERT INTO `ds_city` VALUES ('321', '杨浦区', '2708');
INSERT INTO `ds_city` VALUES ('321', '普陀区', '2709');
INSERT INTO `ds_city` VALUES ('321', '静安区', '2710');
INSERT INTO `ds_city` VALUES ('321', '卢湾区', '2711');
INSERT INTO `ds_city` VALUES ('321', '虹口区', '2712');
INSERT INTO `ds_city` VALUES ('321', '黄浦区', '2713');
INSERT INTO `ds_city` VALUES ('321', '南汇区', '2714');
INSERT INTO `ds_city` VALUES ('321', '松江区', '2715');
INSERT INTO `ds_city` VALUES ('321', '嘉定区', '2716');
INSERT INTO `ds_city` VALUES ('321', '宝山区', '2717');
INSERT INTO `ds_city` VALUES ('321', '青浦区', '2718');
INSERT INTO `ds_city` VALUES ('321', '金山区', '2719');
INSERT INTO `ds_city` VALUES ('321', '奉贤区', '2720');
INSERT INTO `ds_city` VALUES ('321', '崇明县', '2721');
INSERT INTO `ds_city` VALUES ('322', '青羊区', '2722');
INSERT INTO `ds_city` VALUES ('322', '锦江区', '2723');
INSERT INTO `ds_city` VALUES ('322', '金牛区', '2724');
INSERT INTO `ds_city` VALUES ('322', '武侯区', '2725');
INSERT INTO `ds_city` VALUES ('322', '成华区', '2726');
INSERT INTO `ds_city` VALUES ('322', '龙泉驿区', '2727');
INSERT INTO `ds_city` VALUES ('322', '青白江区', '2728');
INSERT INTO `ds_city` VALUES ('322', '新都区', '2729');
INSERT INTO `ds_city` VALUES ('322', '温江区', '2730');
INSERT INTO `ds_city` VALUES ('322', '高新区', '2731');
INSERT INTO `ds_city` VALUES ('322', '高新西区', '2732');
INSERT INTO `ds_city` VALUES ('322', '都江堰市', '2733');
INSERT INTO `ds_city` VALUES ('322', '彭州市', '2734');
INSERT INTO `ds_city` VALUES ('322', '邛崃市', '2735');
INSERT INTO `ds_city` VALUES ('322', '崇州市', '2736');
INSERT INTO `ds_city` VALUES ('322', '金堂县', '2737');
INSERT INTO `ds_city` VALUES ('322', '双流县', '2738');
INSERT INTO `ds_city` VALUES ('322', '郫县', '2739');
INSERT INTO `ds_city` VALUES ('322', '大邑县', '2740');
INSERT INTO `ds_city` VALUES ('322', '蒲江县', '2741');
INSERT INTO `ds_city` VALUES ('322', '新津县', '2742');
INSERT INTO `ds_city` VALUES ('322', '都江堰市', '2743');
INSERT INTO `ds_city` VALUES ('322', '彭州市', '2744');
INSERT INTO `ds_city` VALUES ('322', '邛崃市', '2745');
INSERT INTO `ds_city` VALUES ('322', '崇州市', '2746');
INSERT INTO `ds_city` VALUES ('322', '金堂县', '2747');
INSERT INTO `ds_city` VALUES ('322', '双流县', '2748');
INSERT INTO `ds_city` VALUES ('322', '郫县', '2749');
INSERT INTO `ds_city` VALUES ('322', '大邑县', '2750');
INSERT INTO `ds_city` VALUES ('322', '蒲江县', '2751');
INSERT INTO `ds_city` VALUES ('322', '新津县', '2752');
INSERT INTO `ds_city` VALUES ('323', '涪城区', '2753');
INSERT INTO `ds_city` VALUES ('323', '游仙区', '2754');
INSERT INTO `ds_city` VALUES ('323', '江油市', '2755');
INSERT INTO `ds_city` VALUES ('323', '盐亭县', '2756');
INSERT INTO `ds_city` VALUES ('323', '三台县', '2757');
INSERT INTO `ds_city` VALUES ('323', '平武县', '2758');
INSERT INTO `ds_city` VALUES ('323', '安县', '2759');
INSERT INTO `ds_city` VALUES ('323', '梓潼县', '2760');
INSERT INTO `ds_city` VALUES ('323', '北川县', '2761');
INSERT INTO `ds_city` VALUES ('324', '马尔康县', '2762');
INSERT INTO `ds_city` VALUES ('324', '汶川县', '2763');
INSERT INTO `ds_city` VALUES ('324', '理县', '2764');
INSERT INTO `ds_city` VALUES ('324', '茂县', '2765');
INSERT INTO `ds_city` VALUES ('324', '松潘县', '2766');
INSERT INTO `ds_city` VALUES ('324', '九寨沟县', '2767');
INSERT INTO `ds_city` VALUES ('324', '金川县', '2768');
INSERT INTO `ds_city` VALUES ('324', '小金县', '2769');
INSERT INTO `ds_city` VALUES ('324', '黑水县', '2770');
INSERT INTO `ds_city` VALUES ('324', '壤塘县', '2771');
INSERT INTO `ds_city` VALUES ('324', '阿坝县', '2772');
INSERT INTO `ds_city` VALUES ('324', '若尔盖县', '2773');
INSERT INTO `ds_city` VALUES ('324', '红原县', '2774');
INSERT INTO `ds_city` VALUES ('325', '巴州区', '2775');
INSERT INTO `ds_city` VALUES ('325', '通江县', '2776');
INSERT INTO `ds_city` VALUES ('325', '南江县', '2777');
INSERT INTO `ds_city` VALUES ('325', '平昌县', '2778');
INSERT INTO `ds_city` VALUES ('326', '通川区', '2779');
INSERT INTO `ds_city` VALUES ('326', '万源市', '2780');
INSERT INTO `ds_city` VALUES ('326', '达县', '2781');
INSERT INTO `ds_city` VALUES ('326', '宣汉县', '2782');
INSERT INTO `ds_city` VALUES ('326', '开江县', '2783');
INSERT INTO `ds_city` VALUES ('326', '大竹县', '2784');
INSERT INTO `ds_city` VALUES ('326', '渠县', '2785');
INSERT INTO `ds_city` VALUES ('327', '旌阳区', '2786');
INSERT INTO `ds_city` VALUES ('327', '广汉市', '2787');
INSERT INTO `ds_city` VALUES ('327', '什邡市', '2788');
INSERT INTO `ds_city` VALUES ('327', '绵竹市', '2789');
INSERT INTO `ds_city` VALUES ('327', '罗江县', '2790');
INSERT INTO `ds_city` VALUES ('327', '中江县', '2791');
INSERT INTO `ds_city` VALUES ('328', '康定县', '2792');
INSERT INTO `ds_city` VALUES ('328', '丹巴县', '2793');
INSERT INTO `ds_city` VALUES ('328', '泸定县', '2794');
INSERT INTO `ds_city` VALUES ('328', '炉霍县', '2795');
INSERT INTO `ds_city` VALUES ('328', '九龙县', '2796');
INSERT INTO `ds_city` VALUES ('328', '甘孜县', '2797');
INSERT INTO `ds_city` VALUES ('328', '雅江县', '2798');
INSERT INTO `ds_city` VALUES ('328', '新龙县', '2799');
INSERT INTO `ds_city` VALUES ('328', '道孚县', '2800');
INSERT INTO `ds_city` VALUES ('328', '白玉县', '2801');
INSERT INTO `ds_city` VALUES ('328', '理塘县', '2802');
INSERT INTO `ds_city` VALUES ('328', '德格县', '2803');
INSERT INTO `ds_city` VALUES ('328', '乡城县', '2804');
INSERT INTO `ds_city` VALUES ('328', '石渠县', '2805');
INSERT INTO `ds_city` VALUES ('328', '稻城县', '2806');
INSERT INTO `ds_city` VALUES ('328', '色达县', '2807');
INSERT INTO `ds_city` VALUES ('328', '巴塘县', '2808');
INSERT INTO `ds_city` VALUES ('328', '得荣县', '2809');
INSERT INTO `ds_city` VALUES ('329', '广安区', '2810');
INSERT INTO `ds_city` VALUES ('329', '华蓥市', '2811');
INSERT INTO `ds_city` VALUES ('329', '岳池县', '2812');
INSERT INTO `ds_city` VALUES ('329', '武胜县', '2813');
INSERT INTO `ds_city` VALUES ('329', '邻水县', '2814');
INSERT INTO `ds_city` VALUES ('330', '利州区', '2815');
INSERT INTO `ds_city` VALUES ('330', '元坝区', '2816');
INSERT INTO `ds_city` VALUES ('330', '朝天区', '2817');
INSERT INTO `ds_city` VALUES ('330', '旺苍县', '2818');
INSERT INTO `ds_city` VALUES ('330', '青川县', '2819');
INSERT INTO `ds_city` VALUES ('330', '剑阁县', '2820');
INSERT INTO `ds_city` VALUES ('330', '苍溪县', '2821');
INSERT INTO `ds_city` VALUES ('331', '峨眉山市', '2822');
INSERT INTO `ds_city` VALUES ('331', '乐山市', '2823');
INSERT INTO `ds_city` VALUES ('331', '犍为县', '2824');
INSERT INTO `ds_city` VALUES ('331', '井研县', '2825');
INSERT INTO `ds_city` VALUES ('331', '夹江县', '2826');
INSERT INTO `ds_city` VALUES ('331', '沐川县', '2827');
INSERT INTO `ds_city` VALUES ('331', '峨边', '2828');
INSERT INTO `ds_city` VALUES ('331', '马边', '2829');
INSERT INTO `ds_city` VALUES ('332', '西昌市', '2830');
INSERT INTO `ds_city` VALUES ('332', '盐源县', '2831');
INSERT INTO `ds_city` VALUES ('332', '德昌县', '2832');
INSERT INTO `ds_city` VALUES ('332', '会理县', '2833');
INSERT INTO `ds_city` VALUES ('332', '会东县', '2834');
INSERT INTO `ds_city` VALUES ('332', '宁南县', '2835');
INSERT INTO `ds_city` VALUES ('332', '普格县', '2836');
INSERT INTO `ds_city` VALUES ('332', '布拖县', '2837');
INSERT INTO `ds_city` VALUES ('332', '金阳县', '2838');
INSERT INTO `ds_city` VALUES ('332', '昭觉县', '2839');
INSERT INTO `ds_city` VALUES ('332', '喜德县', '2840');
INSERT INTO `ds_city` VALUES ('332', '冕宁县', '2841');
INSERT INTO `ds_city` VALUES ('332', '越西县', '2842');
INSERT INTO `ds_city` VALUES ('332', '甘洛县', '2843');
INSERT INTO `ds_city` VALUES ('332', '美姑县', '2844');
INSERT INTO `ds_city` VALUES ('332', '雷波县', '2845');
INSERT INTO `ds_city` VALUES ('332', '木里', '2846');
INSERT INTO `ds_city` VALUES ('333', '东坡区', '2847');
INSERT INTO `ds_city` VALUES ('333', '仁寿县', '2848');
INSERT INTO `ds_city` VALUES ('333', '彭山县', '2849');
INSERT INTO `ds_city` VALUES ('333', '洪雅县', '2850');
INSERT INTO `ds_city` VALUES ('333', '丹棱县', '2851');
INSERT INTO `ds_city` VALUES ('333', '青神县', '2852');
INSERT INTO `ds_city` VALUES ('334', '阆中市', '2853');
INSERT INTO `ds_city` VALUES ('334', '南部县', '2854');
INSERT INTO `ds_city` VALUES ('334', '营山县', '2855');
INSERT INTO `ds_city` VALUES ('334', '蓬安县', '2856');
INSERT INTO `ds_city` VALUES ('334', '仪陇县', '2857');
INSERT INTO `ds_city` VALUES ('334', '顺庆区', '2858');
INSERT INTO `ds_city` VALUES ('334', '高坪区', '2859');
INSERT INTO `ds_city` VALUES ('334', '嘉陵区', '2860');
INSERT INTO `ds_city` VALUES ('334', '西充县', '2861');
INSERT INTO `ds_city` VALUES ('335', '市中区', '2862');
INSERT INTO `ds_city` VALUES ('335', '东兴区', '2863');
INSERT INTO `ds_city` VALUES ('335', '威远县', '2864');
INSERT INTO `ds_city` VALUES ('335', '资中县', '2865');
INSERT INTO `ds_city` VALUES ('335', '隆昌县', '2866');
INSERT INTO `ds_city` VALUES ('336', '东 区', '2867');
INSERT INTO `ds_city` VALUES ('336', '西 区', '2868');
INSERT INTO `ds_city` VALUES ('336', '仁和区', '2869');
INSERT INTO `ds_city` VALUES ('336', '米易县', '2870');
INSERT INTO `ds_city` VALUES ('336', '盐边县', '2871');
INSERT INTO `ds_city` VALUES ('337', '船山区', '2872');
INSERT INTO `ds_city` VALUES ('337', '安居区', '2873');
INSERT INTO `ds_city` VALUES ('337', '蓬溪县', '2874');
INSERT INTO `ds_city` VALUES ('337', '射洪县', '2875');
INSERT INTO `ds_city` VALUES ('337', '大英县', '2876');
INSERT INTO `ds_city` VALUES ('338', '雨城区', '2877');
INSERT INTO `ds_city` VALUES ('338', '名山县', '2878');
INSERT INTO `ds_city` VALUES ('338', '荥经县', '2879');
INSERT INTO `ds_city` VALUES ('338', '汉源县', '2880');
INSERT INTO `ds_city` VALUES ('338', '石棉县', '2881');
INSERT INTO `ds_city` VALUES ('338', '天全县', '2882');
INSERT INTO `ds_city` VALUES ('338', '芦山县', '2883');
INSERT INTO `ds_city` VALUES ('338', '宝兴县', '2884');
INSERT INTO `ds_city` VALUES ('339', '翠屏区', '2885');
INSERT INTO `ds_city` VALUES ('339', '宜宾县', '2886');
INSERT INTO `ds_city` VALUES ('339', '南溪县', '2887');
INSERT INTO `ds_city` VALUES ('339', '江安县', '2888');
INSERT INTO `ds_city` VALUES ('339', '长宁县', '2889');
INSERT INTO `ds_city` VALUES ('339', '高县', '2890');
INSERT INTO `ds_city` VALUES ('339', '珙县', '2891');
INSERT INTO `ds_city` VALUES ('339', '筠连县', '2892');
INSERT INTO `ds_city` VALUES ('339', '兴文县', '2893');
INSERT INTO `ds_city` VALUES ('339', '屏山县', '2894');
INSERT INTO `ds_city` VALUES ('340', '雁江区', '2895');
INSERT INTO `ds_city` VALUES ('340', '简阳市', '2896');
INSERT INTO `ds_city` VALUES ('340', '安岳县', '2897');
INSERT INTO `ds_city` VALUES ('340', '乐至县', '2898');
INSERT INTO `ds_city` VALUES ('341', '大安区', '2899');
INSERT INTO `ds_city` VALUES ('341', '自流井区', '2900');
INSERT INTO `ds_city` VALUES ('341', '贡井区', '2901');
INSERT INTO `ds_city` VALUES ('341', '沿滩区', '2902');
INSERT INTO `ds_city` VALUES ('341', '荣县', '2903');
INSERT INTO `ds_city` VALUES ('341', '富顺县', '2904');
INSERT INTO `ds_city` VALUES ('342', '江阳区', '2905');
INSERT INTO `ds_city` VALUES ('342', '纳溪区', '2906');
INSERT INTO `ds_city` VALUES ('342', '龙马潭区', '2907');
INSERT INTO `ds_city` VALUES ('342', '泸县', '2908');
INSERT INTO `ds_city` VALUES ('342', '合江县', '2909');
INSERT INTO `ds_city` VALUES ('342', '叙永县', '2910');
INSERT INTO `ds_city` VALUES ('342', '古蔺县', '2911');
INSERT INTO `ds_city` VALUES ('343', '和平区', '2912');
INSERT INTO `ds_city` VALUES ('343', '河西区', '2913');
INSERT INTO `ds_city` VALUES ('343', '南开区', '2914');
INSERT INTO `ds_city` VALUES ('343', '河北区', '2915');
INSERT INTO `ds_city` VALUES ('343', '河东区', '2916');
INSERT INTO `ds_city` VALUES ('343', '红桥区', '2917');
INSERT INTO `ds_city` VALUES ('343', '东丽区', '2918');
INSERT INTO `ds_city` VALUES ('343', '津南区', '2919');
INSERT INTO `ds_city` VALUES ('343', '西青区', '2920');
INSERT INTO `ds_city` VALUES ('343', '北辰区', '2921');
INSERT INTO `ds_city` VALUES ('343', '塘沽区', '2922');
INSERT INTO `ds_city` VALUES ('343', '汉沽区', '2923');
INSERT INTO `ds_city` VALUES ('343', '大港区', '2924');
INSERT INTO `ds_city` VALUES ('343', '武清区', '2925');
INSERT INTO `ds_city` VALUES ('343', '宝坻区', '2926');
INSERT INTO `ds_city` VALUES ('343', '经济开发区', '2927');
INSERT INTO `ds_city` VALUES ('343', '宁河县', '2928');
INSERT INTO `ds_city` VALUES ('343', '静海县', '2929');
INSERT INTO `ds_city` VALUES ('343', '蓟县', '2930');
INSERT INTO `ds_city` VALUES ('344', '城关区', '2931');
INSERT INTO `ds_city` VALUES ('344', '林周县', '2932');
INSERT INTO `ds_city` VALUES ('344', '当雄县', '2933');
INSERT INTO `ds_city` VALUES ('344', '尼木县', '2934');
INSERT INTO `ds_city` VALUES ('344', '曲水县', '2935');
INSERT INTO `ds_city` VALUES ('344', '堆龙德庆县', '2936');
INSERT INTO `ds_city` VALUES ('344', '达孜县', '2937');
INSERT INTO `ds_city` VALUES ('344', '墨竹工卡县', '2938');
INSERT INTO `ds_city` VALUES ('345', '噶尔县', '2939');
INSERT INTO `ds_city` VALUES ('345', '普兰县', '2940');
INSERT INTO `ds_city` VALUES ('345', '札达县', '2941');
INSERT INTO `ds_city` VALUES ('345', '日土县', '2942');
INSERT INTO `ds_city` VALUES ('345', '革吉县', '2943');
INSERT INTO `ds_city` VALUES ('345', '改则县', '2944');
INSERT INTO `ds_city` VALUES ('345', '措勤县', '2945');
INSERT INTO `ds_city` VALUES ('346', '昌都县', '2946');
INSERT INTO `ds_city` VALUES ('346', '江达县', '2947');
INSERT INTO `ds_city` VALUES ('346', '贡觉县', '2948');
INSERT INTO `ds_city` VALUES ('346', '类乌齐县', '2949');
INSERT INTO `ds_city` VALUES ('346', '丁青县', '2950');
INSERT INTO `ds_city` VALUES ('346', '察雅县', '2951');
INSERT INTO `ds_city` VALUES ('346', '八宿县', '2952');
INSERT INTO `ds_city` VALUES ('346', '左贡县', '2953');
INSERT INTO `ds_city` VALUES ('346', '芒康县', '2954');
INSERT INTO `ds_city` VALUES ('346', '洛隆县', '2955');
INSERT INTO `ds_city` VALUES ('346', '边坝县', '2956');
INSERT INTO `ds_city` VALUES ('347', '林芝县', '2957');
INSERT INTO `ds_city` VALUES ('347', '工布江达县', '2958');
INSERT INTO `ds_city` VALUES ('347', '米林县', '2959');
INSERT INTO `ds_city` VALUES ('347', '墨脱县', '2960');
INSERT INTO `ds_city` VALUES ('347', '波密县', '2961');
INSERT INTO `ds_city` VALUES ('347', '察隅县', '2962');
INSERT INTO `ds_city` VALUES ('347', '朗县', '2963');
INSERT INTO `ds_city` VALUES ('348', '那曲县', '2964');
INSERT INTO `ds_city` VALUES ('348', '嘉黎县', '2965');
INSERT INTO `ds_city` VALUES ('348', '比如县', '2966');
INSERT INTO `ds_city` VALUES ('348', '聂荣县', '2967');
INSERT INTO `ds_city` VALUES ('348', '安多县', '2968');
INSERT INTO `ds_city` VALUES ('348', '申扎县', '2969');
INSERT INTO `ds_city` VALUES ('348', '索县', '2970');
INSERT INTO `ds_city` VALUES ('348', '班戈县', '2971');
INSERT INTO `ds_city` VALUES ('348', '巴青县', '2972');
INSERT INTO `ds_city` VALUES ('348', '尼玛县', '2973');
INSERT INTO `ds_city` VALUES ('349', '日喀则市', '2974');
INSERT INTO `ds_city` VALUES ('349', '南木林县', '2975');
INSERT INTO `ds_city` VALUES ('349', '江孜县', '2976');
INSERT INTO `ds_city` VALUES ('349', '定日县', '2977');
INSERT INTO `ds_city` VALUES ('349', '萨迦县', '2978');
INSERT INTO `ds_city` VALUES ('349', '拉孜县', '2979');
INSERT INTO `ds_city` VALUES ('349', '昂仁县', '2980');
INSERT INTO `ds_city` VALUES ('349', '谢通门县', '2981');
INSERT INTO `ds_city` VALUES ('349', '白朗县', '2982');
INSERT INTO `ds_city` VALUES ('349', '仁布县', '2983');
INSERT INTO `ds_city` VALUES ('349', '康马县', '2984');
INSERT INTO `ds_city` VALUES ('349', '定结县', '2985');
INSERT INTO `ds_city` VALUES ('349', '仲巴县', '2986');
INSERT INTO `ds_city` VALUES ('349', '亚东县', '2987');
INSERT INTO `ds_city` VALUES ('349', '吉隆县', '2988');
INSERT INTO `ds_city` VALUES ('349', '聂拉木县', '2989');
INSERT INTO `ds_city` VALUES ('349', '萨嘎县', '2990');
INSERT INTO `ds_city` VALUES ('349', '岗巴县', '2991');
INSERT INTO `ds_city` VALUES ('350', '乃东县', '2992');
INSERT INTO `ds_city` VALUES ('350', '扎囊县', '2993');
INSERT INTO `ds_city` VALUES ('350', '贡嘎县', '2994');
INSERT INTO `ds_city` VALUES ('350', '桑日县', '2995');
INSERT INTO `ds_city` VALUES ('350', '琼结县', '2996');
INSERT INTO `ds_city` VALUES ('350', '曲松县', '2997');
INSERT INTO `ds_city` VALUES ('350', '措美县', '2998');
INSERT INTO `ds_city` VALUES ('350', '洛扎县', '2999');
INSERT INTO `ds_city` VALUES ('350', '加查县', '3000');
INSERT INTO `ds_city` VALUES ('350', '隆子县', '3001');
INSERT INTO `ds_city` VALUES ('350', '错那县', '3002');
INSERT INTO `ds_city` VALUES ('350', '浪卡子县', '3003');
INSERT INTO `ds_city` VALUES ('351', '天山区', '3004');
INSERT INTO `ds_city` VALUES ('351', '沙依巴克区', '3005');
INSERT INTO `ds_city` VALUES ('351', '新市区', '3006');
INSERT INTO `ds_city` VALUES ('351', '水磨沟区', '3007');
INSERT INTO `ds_city` VALUES ('351', '头屯河区', '3008');
INSERT INTO `ds_city` VALUES ('351', '达坂城区', '3009');
INSERT INTO `ds_city` VALUES ('351', '米东区', '3010');
INSERT INTO `ds_city` VALUES ('351', '乌鲁木齐县', '3011');
INSERT INTO `ds_city` VALUES ('352', '阿克苏市', '3012');
INSERT INTO `ds_city` VALUES ('352', '温宿县', '3013');
INSERT INTO `ds_city` VALUES ('352', '库车县', '3014');
INSERT INTO `ds_city` VALUES ('352', '沙雅县', '3015');
INSERT INTO `ds_city` VALUES ('352', '新和县', '3016');
INSERT INTO `ds_city` VALUES ('352', '拜城县', '3017');
INSERT INTO `ds_city` VALUES ('352', '乌什县', '3018');
INSERT INTO `ds_city` VALUES ('352', '阿瓦提县', '3019');
INSERT INTO `ds_city` VALUES ('352', '柯坪县', '3020');
INSERT INTO `ds_city` VALUES ('353', '阿拉尔市', '3021');
INSERT INTO `ds_city` VALUES ('354', '库尔勒市', '3022');
INSERT INTO `ds_city` VALUES ('354', '轮台县', '3023');
INSERT INTO `ds_city` VALUES ('354', '尉犁县', '3024');
INSERT INTO `ds_city` VALUES ('354', '若羌县', '3025');
INSERT INTO `ds_city` VALUES ('354', '且末县', '3026');
INSERT INTO `ds_city` VALUES ('354', '焉耆', '3027');
INSERT INTO `ds_city` VALUES ('354', '和静县', '3028');
INSERT INTO `ds_city` VALUES ('354', '和硕县', '3029');
INSERT INTO `ds_city` VALUES ('354', '博湖县', '3030');
INSERT INTO `ds_city` VALUES ('355', '博乐市', '3031');
INSERT INTO `ds_city` VALUES ('355', '精河县', '3032');
INSERT INTO `ds_city` VALUES ('355', '温泉县', '3033');
INSERT INTO `ds_city` VALUES ('356', '呼图壁县', '3034');
INSERT INTO `ds_city` VALUES ('356', '米泉市', '3035');
INSERT INTO `ds_city` VALUES ('356', '昌吉市', '3036');
INSERT INTO `ds_city` VALUES ('356', '阜康市', '3037');
INSERT INTO `ds_city` VALUES ('356', '玛纳斯县', '3038');
INSERT INTO `ds_city` VALUES ('356', '奇台县', '3039');
INSERT INTO `ds_city` VALUES ('356', '吉木萨尔县', '3040');
INSERT INTO `ds_city` VALUES ('356', '木垒', '3041');
INSERT INTO `ds_city` VALUES ('357', '哈密市', '3042');
INSERT INTO `ds_city` VALUES ('357', '伊吾县', '3043');
INSERT INTO `ds_city` VALUES ('357', '巴里坤', '3044');
INSERT INTO `ds_city` VALUES ('358', '和田市', '3045');
INSERT INTO `ds_city` VALUES ('358', '和田县', '3046');
INSERT INTO `ds_city` VALUES ('358', '墨玉县', '3047');
INSERT INTO `ds_city` VALUES ('358', '皮山县', '3048');
INSERT INTO `ds_city` VALUES ('358', '洛浦县', '3049');
INSERT INTO `ds_city` VALUES ('358', '策勒县', '3050');
INSERT INTO `ds_city` VALUES ('358', '于田县', '3051');
INSERT INTO `ds_city` VALUES ('358', '民丰县', '3052');
INSERT INTO `ds_city` VALUES ('359', '喀什市', '3053');
INSERT INTO `ds_city` VALUES ('359', '疏附县', '3054');
INSERT INTO `ds_city` VALUES ('359', '疏勒县', '3055');
INSERT INTO `ds_city` VALUES ('359', '英吉沙县', '3056');
INSERT INTO `ds_city` VALUES ('359', '泽普县', '3057');
INSERT INTO `ds_city` VALUES ('359', '莎车县', '3058');
INSERT INTO `ds_city` VALUES ('359', '叶城县', '3059');
INSERT INTO `ds_city` VALUES ('359', '麦盖提县', '3060');
INSERT INTO `ds_city` VALUES ('359', '岳普湖县', '3061');
INSERT INTO `ds_city` VALUES ('359', '伽师县', '3062');
INSERT INTO `ds_city` VALUES ('359', '巴楚县', '3063');
INSERT INTO `ds_city` VALUES ('359', '塔什库尔干', '3064');
INSERT INTO `ds_city` VALUES ('360', '克拉玛依市', '3065');
INSERT INTO `ds_city` VALUES ('361', '阿图什市', '3066');
INSERT INTO `ds_city` VALUES ('361', '阿克陶县', '3067');
INSERT INTO `ds_city` VALUES ('361', '阿合奇县', '3068');
INSERT INTO `ds_city` VALUES ('361', '乌恰县', '3069');
INSERT INTO `ds_city` VALUES ('362', '石河子市', '3070');
INSERT INTO `ds_city` VALUES ('363', '图木舒克市', '3071');
INSERT INTO `ds_city` VALUES ('364', '吐鲁番市', '3072');
INSERT INTO `ds_city` VALUES ('364', '鄯善县', '3073');
INSERT INTO `ds_city` VALUES ('364', '托克逊县', '3074');
INSERT INTO `ds_city` VALUES ('365', '五家渠市', '3075');
INSERT INTO `ds_city` VALUES ('366', '阿勒泰市', '3076');
INSERT INTO `ds_city` VALUES ('366', '布克赛尔', '3077');
INSERT INTO `ds_city` VALUES ('366', '伊宁市', '3078');
INSERT INTO `ds_city` VALUES ('366', '布尔津县', '3079');
INSERT INTO `ds_city` VALUES ('366', '奎屯市', '3080');
INSERT INTO `ds_city` VALUES ('366', '乌苏市', '3081');
INSERT INTO `ds_city` VALUES ('366', '额敏县', '3082');
INSERT INTO `ds_city` VALUES ('366', '富蕴县', '3083');
INSERT INTO `ds_city` VALUES ('366', '伊宁县', '3084');
INSERT INTO `ds_city` VALUES ('366', '福海县', '3085');
INSERT INTO `ds_city` VALUES ('366', '霍城县', '3086');
INSERT INTO `ds_city` VALUES ('366', '沙湾县', '3087');
INSERT INTO `ds_city` VALUES ('366', '巩留县', '3088');
INSERT INTO `ds_city` VALUES ('366', '哈巴河县', '3089');
INSERT INTO `ds_city` VALUES ('366', '托里县', '3090');
INSERT INTO `ds_city` VALUES ('366', '青河县', '3091');
INSERT INTO `ds_city` VALUES ('366', '新源县', '3092');
INSERT INTO `ds_city` VALUES ('366', '裕民县', '3093');
INSERT INTO `ds_city` VALUES ('366', '和布克赛尔', '3094');
INSERT INTO `ds_city` VALUES ('366', '吉木乃县', '3095');
INSERT INTO `ds_city` VALUES ('366', '昭苏县', '3096');
INSERT INTO `ds_city` VALUES ('366', '特克斯县', '3097');
INSERT INTO `ds_city` VALUES ('366', '尼勒克县', '3098');
INSERT INTO `ds_city` VALUES ('366', '察布查尔', '3099');
INSERT INTO `ds_city` VALUES ('367', '盘龙区', '3100');
INSERT INTO `ds_city` VALUES ('367', '五华区', '3101');
INSERT INTO `ds_city` VALUES ('367', '官渡区', '3102');
INSERT INTO `ds_city` VALUES ('367', '西山区', '3103');
INSERT INTO `ds_city` VALUES ('367', '东川区', '3104');
INSERT INTO `ds_city` VALUES ('367', '安宁市', '3105');
INSERT INTO `ds_city` VALUES ('367', '呈贡县', '3106');
INSERT INTO `ds_city` VALUES ('367', '晋宁县', '3107');
INSERT INTO `ds_city` VALUES ('367', '富民县', '3108');
INSERT INTO `ds_city` VALUES ('367', '宜良县', '3109');
INSERT INTO `ds_city` VALUES ('367', '嵩明县', '3110');
INSERT INTO `ds_city` VALUES ('367', '石林县', '3111');
INSERT INTO `ds_city` VALUES ('367', '禄劝', '3112');
INSERT INTO `ds_city` VALUES ('367', '寻甸', '3113');
INSERT INTO `ds_city` VALUES ('368', '兰坪', '3114');
INSERT INTO `ds_city` VALUES ('368', '泸水县', '3115');
INSERT INTO `ds_city` VALUES ('368', '福贡县', '3116');
INSERT INTO `ds_city` VALUES ('368', '贡山', '3117');
INSERT INTO `ds_city` VALUES ('369', '宁洱', '3118');
INSERT INTO `ds_city` VALUES ('369', '思茅区', '3119');
INSERT INTO `ds_city` VALUES ('369', '墨江', '3120');
INSERT INTO `ds_city` VALUES ('369', '景东', '3121');
INSERT INTO `ds_city` VALUES ('369', '景谷', '3122');
INSERT INTO `ds_city` VALUES ('369', '镇沅', '3123');
INSERT INTO `ds_city` VALUES ('369', '江城', '3124');
INSERT INTO `ds_city` VALUES ('369', '孟连', '3125');
INSERT INTO `ds_city` VALUES ('369', '澜沧', '3126');
INSERT INTO `ds_city` VALUES ('369', '西盟', '3127');
INSERT INTO `ds_city` VALUES ('370', '古城区', '3128');
INSERT INTO `ds_city` VALUES ('370', '宁蒗', '3129');
INSERT INTO `ds_city` VALUES ('370', '玉龙', '3130');
INSERT INTO `ds_city` VALUES ('370', '永胜县', '3131');
INSERT INTO `ds_city` VALUES ('370', '华坪县', '3132');
INSERT INTO `ds_city` VALUES ('371', '隆阳区', '3133');
INSERT INTO `ds_city` VALUES ('371', '施甸县', '3134');
INSERT INTO `ds_city` VALUES ('371', '腾冲县', '3135');
INSERT INTO `ds_city` VALUES ('371', '龙陵县', '3136');
INSERT INTO `ds_city` VALUES ('371', '昌宁县', '3137');
INSERT INTO `ds_city` VALUES ('372', '楚雄市', '3138');
INSERT INTO `ds_city` VALUES ('372', '双柏县', '3139');
INSERT INTO `ds_city` VALUES ('372', '牟定县', '3140');
INSERT INTO `ds_city` VALUES ('372', '南华县', '3141');
INSERT INTO `ds_city` VALUES ('372', '姚安县', '3142');
INSERT INTO `ds_city` VALUES ('372', '大姚县', '3143');
INSERT INTO `ds_city` VALUES ('372', '永仁县', '3144');
INSERT INTO `ds_city` VALUES ('372', '元谋县', '3145');
INSERT INTO `ds_city` VALUES ('372', '武定县', '3146');
INSERT INTO `ds_city` VALUES ('372', '禄丰县', '3147');
INSERT INTO `ds_city` VALUES ('373', '大理市', '3148');
INSERT INTO `ds_city` VALUES ('373', '祥云县', '3149');
INSERT INTO `ds_city` VALUES ('373', '宾川县', '3150');
INSERT INTO `ds_city` VALUES ('373', '弥渡县', '3151');
INSERT INTO `ds_city` VALUES ('373', '永平县', '3152');
INSERT INTO `ds_city` VALUES ('373', '云龙县', '3153');
INSERT INTO `ds_city` VALUES ('373', '洱源县', '3154');
INSERT INTO `ds_city` VALUES ('373', '剑川县', '3155');
INSERT INTO `ds_city` VALUES ('373', '鹤庆县', '3156');
INSERT INTO `ds_city` VALUES ('373', '漾濞', '3157');
INSERT INTO `ds_city` VALUES ('373', '南涧', '3158');
INSERT INTO `ds_city` VALUES ('373', '巍山', '3159');
INSERT INTO `ds_city` VALUES ('374', '潞西市', '3160');
INSERT INTO `ds_city` VALUES ('374', '瑞丽市', '3161');
INSERT INTO `ds_city` VALUES ('374', '梁河县', '3162');
INSERT INTO `ds_city` VALUES ('374', '盈江县', '3163');
INSERT INTO `ds_city` VALUES ('374', '陇川县', '3164');
INSERT INTO `ds_city` VALUES ('375', '香格里拉县', '3165');
INSERT INTO `ds_city` VALUES ('375', '德钦县', '3166');
INSERT INTO `ds_city` VALUES ('375', '维西', '3167');
INSERT INTO `ds_city` VALUES ('376', '泸西县', '3168');
INSERT INTO `ds_city` VALUES ('376', '蒙自县', '3169');
INSERT INTO `ds_city` VALUES ('376', '个旧市', '3170');
INSERT INTO `ds_city` VALUES ('376', '开远市', '3171');
INSERT INTO `ds_city` VALUES ('376', '绿春县', '3172');
INSERT INTO `ds_city` VALUES ('376', '建水县', '3173');
INSERT INTO `ds_city` VALUES ('376', '石屏县', '3174');
INSERT INTO `ds_city` VALUES ('376', '弥勒县', '3175');
INSERT INTO `ds_city` VALUES ('376', '元阳县', '3176');
INSERT INTO `ds_city` VALUES ('376', '红河县', '3177');
INSERT INTO `ds_city` VALUES ('376', '金平', '3178');
INSERT INTO `ds_city` VALUES ('376', '河口', '3179');
INSERT INTO `ds_city` VALUES ('376', '屏边', '3180');
INSERT INTO `ds_city` VALUES ('377', '临翔区', '3181');
INSERT INTO `ds_city` VALUES ('377', '凤庆县', '3182');
INSERT INTO `ds_city` VALUES ('377', '云县', '3183');
INSERT INTO `ds_city` VALUES ('377', '永德县', '3184');
INSERT INTO `ds_city` VALUES ('377', '镇康县', '3185');
INSERT INTO `ds_city` VALUES ('377', '双江', '3186');
INSERT INTO `ds_city` VALUES ('377', '耿马', '3187');
INSERT INTO `ds_city` VALUES ('377', '沧源', '3188');
INSERT INTO `ds_city` VALUES ('378', '麒麟区', '3189');
INSERT INTO `ds_city` VALUES ('378', '宣威市', '3190');
INSERT INTO `ds_city` VALUES ('378', '马龙县', '3191');
INSERT INTO `ds_city` VALUES ('378', '陆良县', '3192');
INSERT INTO `ds_city` VALUES ('378', '师宗县', '3193');
INSERT INTO `ds_city` VALUES ('378', '罗平县', '3194');
INSERT INTO `ds_city` VALUES ('378', '富源县', '3195');
INSERT INTO `ds_city` VALUES ('378', '会泽县', '3196');
INSERT INTO `ds_city` VALUES ('378', '沾益县', '3197');
INSERT INTO `ds_city` VALUES ('379', '文山县', '3198');
INSERT INTO `ds_city` VALUES ('379', '砚山县', '3199');
INSERT INTO `ds_city` VALUES ('379', '西畴县', '3200');
INSERT INTO `ds_city` VALUES ('379', '麻栗坡县', '3201');
INSERT INTO `ds_city` VALUES ('379', '马关县', '3202');
INSERT INTO `ds_city` VALUES ('379', '丘北县', '3203');
INSERT INTO `ds_city` VALUES ('379', '广南县', '3204');
INSERT INTO `ds_city` VALUES ('379', '富宁县', '3205');
INSERT INTO `ds_city` VALUES ('380', '景洪市', '3206');
INSERT INTO `ds_city` VALUES ('380', '勐海县', '3207');
INSERT INTO `ds_city` VALUES ('380', '勐腊县', '3208');
INSERT INTO `ds_city` VALUES ('381', '红塔区', '3209');
INSERT INTO `ds_city` VALUES ('381', '江川县', '3210');
INSERT INTO `ds_city` VALUES ('381', '澄江县', '3211');
INSERT INTO `ds_city` VALUES ('381', '通海县', '3212');
INSERT INTO `ds_city` VALUES ('381', '华宁县', '3213');
INSERT INTO `ds_city` VALUES ('381', '易门县', '3214');
INSERT INTO `ds_city` VALUES ('381', '峨山', '3215');
INSERT INTO `ds_city` VALUES ('381', '新平', '3216');
INSERT INTO `ds_city` VALUES ('381', '元江', '3217');
INSERT INTO `ds_city` VALUES ('382', '昭阳区', '3218');
INSERT INTO `ds_city` VALUES ('382', '鲁甸县', '3219');
INSERT INTO `ds_city` VALUES ('382', '巧家县', '3220');
INSERT INTO `ds_city` VALUES ('382', '盐津县', '3221');
INSERT INTO `ds_city` VALUES ('382', '大关县', '3222');
INSERT INTO `ds_city` VALUES ('382', '永善县', '3223');
INSERT INTO `ds_city` VALUES ('382', '绥江县', '3224');
INSERT INTO `ds_city` VALUES ('382', '镇雄县', '3225');
INSERT INTO `ds_city` VALUES ('382', '彝良县', '3226');
INSERT INTO `ds_city` VALUES ('382', '威信县', '3227');
INSERT INTO `ds_city` VALUES ('382', '水富县', '3228');
INSERT INTO `ds_city` VALUES ('383', '西湖区', '3229');
INSERT INTO `ds_city` VALUES ('383', '上城区', '3230');
INSERT INTO `ds_city` VALUES ('383', '下城区', '3231');
INSERT INTO `ds_city` VALUES ('383', '拱墅区', '3232');
INSERT INTO `ds_city` VALUES ('383', '滨江区', '3233');
INSERT INTO `ds_city` VALUES ('383', '江干区', '3234');
INSERT INTO `ds_city` VALUES ('383', '萧山区', '3235');
INSERT INTO `ds_city` VALUES ('383', '余杭区', '3236');
INSERT INTO `ds_city` VALUES ('383', '市郊', '3237');
INSERT INTO `ds_city` VALUES ('383', '建德市', '3238');
INSERT INTO `ds_city` VALUES ('383', '富阳市', '3239');
INSERT INTO `ds_city` VALUES ('383', '临安市', '3240');
INSERT INTO `ds_city` VALUES ('383', '桐庐县', '3241');
INSERT INTO `ds_city` VALUES ('383', '淳安县', '3242');
INSERT INTO `ds_city` VALUES ('384', '吴兴区', '3243');
INSERT INTO `ds_city` VALUES ('384', '南浔区', '3244');
INSERT INTO `ds_city` VALUES ('384', '德清县', '3245');
INSERT INTO `ds_city` VALUES ('384', '长兴县', '3246');
INSERT INTO `ds_city` VALUES ('384', '安吉县', '3247');
INSERT INTO `ds_city` VALUES ('385', '南湖区', '3248');
INSERT INTO `ds_city` VALUES ('385', '秀洲区', '3249');
INSERT INTO `ds_city` VALUES ('385', '海宁市', '3250');
INSERT INTO `ds_city` VALUES ('385', '嘉善县', '3251');
INSERT INTO `ds_city` VALUES ('385', '平湖市', '3252');
INSERT INTO `ds_city` VALUES ('385', '桐乡市', '3253');
INSERT INTO `ds_city` VALUES ('385', '海盐县', '3254');
INSERT INTO `ds_city` VALUES ('386', '婺城区', '3255');
INSERT INTO `ds_city` VALUES ('386', '金东区', '3256');
INSERT INTO `ds_city` VALUES ('386', '兰溪市', '3257');
INSERT INTO `ds_city` VALUES ('386', '市区', '3258');
INSERT INTO `ds_city` VALUES ('386', '佛堂镇', '3259');
INSERT INTO `ds_city` VALUES ('386', '上溪镇', '3260');
INSERT INTO `ds_city` VALUES ('386', '义亭镇', '3261');
INSERT INTO `ds_city` VALUES ('386', '大陈镇', '3262');
INSERT INTO `ds_city` VALUES ('386', '苏溪镇', '3263');
INSERT INTO `ds_city` VALUES ('386', '赤岸镇', '3264');
INSERT INTO `ds_city` VALUES ('386', '东阳市', '3265');
INSERT INTO `ds_city` VALUES ('386', '永康市', '3266');
INSERT INTO `ds_city` VALUES ('386', '武义县', '3267');
INSERT INTO `ds_city` VALUES ('386', '浦江县', '3268');
INSERT INTO `ds_city` VALUES ('386', '磐安县', '3269');
INSERT INTO `ds_city` VALUES ('387', '莲都区', '3270');
INSERT INTO `ds_city` VALUES ('387', '龙泉市', '3271');
INSERT INTO `ds_city` VALUES ('387', '青田县', '3272');
INSERT INTO `ds_city` VALUES ('387', '缙云县', '3273');
INSERT INTO `ds_city` VALUES ('387', '遂昌县', '3274');
INSERT INTO `ds_city` VALUES ('387', '松阳县', '3275');
INSERT INTO `ds_city` VALUES ('387', '云和县', '3276');
INSERT INTO `ds_city` VALUES ('387', '庆元县', '3277');
INSERT INTO `ds_city` VALUES ('387', '景宁', '3278');
INSERT INTO `ds_city` VALUES ('388', '海曙区', '3279');
INSERT INTO `ds_city` VALUES ('388', '江东区', '3280');
INSERT INTO `ds_city` VALUES ('388', '江北区', '3281');
INSERT INTO `ds_city` VALUES ('388', '镇海区', '3282');
INSERT INTO `ds_city` VALUES ('388', '北仑区', '3283');
INSERT INTO `ds_city` VALUES ('388', '鄞州区', '3284');
INSERT INTO `ds_city` VALUES ('388', '余姚市', '3285');
INSERT INTO `ds_city` VALUES ('388', '慈溪市', '3286');
INSERT INTO `ds_city` VALUES ('388', '奉化市', '3287');
INSERT INTO `ds_city` VALUES ('388', '象山县', '3288');
INSERT INTO `ds_city` VALUES ('388', '宁海县', '3289');
INSERT INTO `ds_city` VALUES ('389', '越城区', '3290');
INSERT INTO `ds_city` VALUES ('389', '上虞市', '3291');
INSERT INTO `ds_city` VALUES ('389', '嵊州市', '3292');
INSERT INTO `ds_city` VALUES ('389', '绍兴县', '3293');
INSERT INTO `ds_city` VALUES ('389', '新昌县', '3294');
INSERT INTO `ds_city` VALUES ('389', '诸暨市', '3295');
INSERT INTO `ds_city` VALUES ('390', '椒江区', '3296');
INSERT INTO `ds_city` VALUES ('390', '黄岩区', '3297');
INSERT INTO `ds_city` VALUES ('390', '路桥区', '3298');
INSERT INTO `ds_city` VALUES ('390', '温岭市', '3299');
INSERT INTO `ds_city` VALUES ('390', '临海市', '3300');
INSERT INTO `ds_city` VALUES ('390', '玉环县', '3301');
INSERT INTO `ds_city` VALUES ('390', '三门县', '3302');
INSERT INTO `ds_city` VALUES ('390', '天台县', '3303');
INSERT INTO `ds_city` VALUES ('390', '仙居县', '3304');
INSERT INTO `ds_city` VALUES ('391', '鹿城区', '3305');
INSERT INTO `ds_city` VALUES ('391', '龙湾区', '3306');
INSERT INTO `ds_city` VALUES ('391', '瓯海区', '3307');
INSERT INTO `ds_city` VALUES ('391', '瑞安市', '3308');
INSERT INTO `ds_city` VALUES ('391', '乐清市', '3309');
INSERT INTO `ds_city` VALUES ('391', '洞头县', '3310');
INSERT INTO `ds_city` VALUES ('391', '永嘉县', '3311');
INSERT INTO `ds_city` VALUES ('391', '平阳县', '3312');
INSERT INTO `ds_city` VALUES ('391', '苍南县', '3313');
INSERT INTO `ds_city` VALUES ('391', '文成县', '3314');
INSERT INTO `ds_city` VALUES ('391', '泰顺县', '3315');
INSERT INTO `ds_city` VALUES ('392', '定海区', '3316');
INSERT INTO `ds_city` VALUES ('392', '普陀区', '3317');
INSERT INTO `ds_city` VALUES ('392', '岱山县', '3318');
INSERT INTO `ds_city` VALUES ('392', '嵊泗县', '3319');
INSERT INTO `ds_city` VALUES ('393', '衢州市', '3320');
INSERT INTO `ds_city` VALUES ('393', '江山市', '3321');
INSERT INTO `ds_city` VALUES ('393', '常山县', '3322');
INSERT INTO `ds_city` VALUES ('393', '开化县', '3323');
INSERT INTO `ds_city` VALUES ('393', '龙游县', '3324');
INSERT INTO `ds_city` VALUES ('394', '合川区', '3325');
INSERT INTO `ds_city` VALUES ('394', '江津区', '3326');
INSERT INTO `ds_city` VALUES ('394', '南川区', '3327');
INSERT INTO `ds_city` VALUES ('394', '永川区', '3328');
INSERT INTO `ds_city` VALUES ('394', '南岸区', '3329');
INSERT INTO `ds_city` VALUES ('394', '渝北区', '3330');
INSERT INTO `ds_city` VALUES ('394', '万盛区', '3331');
INSERT INTO `ds_city` VALUES ('394', '大渡口区', '3332');
INSERT INTO `ds_city` VALUES ('394', '万州区', '3333');
INSERT INTO `ds_city` VALUES ('394', '北碚区', '3334');
INSERT INTO `ds_city` VALUES ('394', '沙坪坝区', '3335');
INSERT INTO `ds_city` VALUES ('394', '巴南区', '3336');
INSERT INTO `ds_city` VALUES ('394', '涪陵区', '3337');
INSERT INTO `ds_city` VALUES ('394', '江北区', '3338');
INSERT INTO `ds_city` VALUES ('394', '九龙坡区', '3339');
INSERT INTO `ds_city` VALUES ('394', '渝中区', '3340');
INSERT INTO `ds_city` VALUES ('394', '黔江开发区', '3341');
INSERT INTO `ds_city` VALUES ('394', '长寿区', '3342');
INSERT INTO `ds_city` VALUES ('394', '双桥区', '3343');
INSERT INTO `ds_city` VALUES ('394', '綦江县', '3344');
INSERT INTO `ds_city` VALUES ('394', '潼南县', '3345');
INSERT INTO `ds_city` VALUES ('394', '铜梁县', '3346');
INSERT INTO `ds_city` VALUES ('394', '大足县', '3347');
INSERT INTO `ds_city` VALUES ('394', '荣昌县', '3348');
INSERT INTO `ds_city` VALUES ('394', '璧山县', '3349');
INSERT INTO `ds_city` VALUES ('394', '垫江县', '3350');
INSERT INTO `ds_city` VALUES ('394', '武隆县', '3351');
INSERT INTO `ds_city` VALUES ('394', '丰都县', '3352');
INSERT INTO `ds_city` VALUES ('394', '城口县', '3353');
INSERT INTO `ds_city` VALUES ('394', '梁平县', '3354');
INSERT INTO `ds_city` VALUES ('394', '开县', '3355');
INSERT INTO `ds_city` VALUES ('394', '巫溪县', '3356');
INSERT INTO `ds_city` VALUES ('394', '巫山县', '3357');
INSERT INTO `ds_city` VALUES ('394', '奉节县', '3358');
INSERT INTO `ds_city` VALUES ('394', '云阳县', '3359');
INSERT INTO `ds_city` VALUES ('394', '忠县', '3360');
INSERT INTO `ds_city` VALUES ('394', '石柱', '3361');
INSERT INTO `ds_city` VALUES ('394', '彭水', '3362');
INSERT INTO `ds_city` VALUES ('394', '酉阳', '3363');
INSERT INTO `ds_city` VALUES ('394', '秀山', '3364');
INSERT INTO `ds_city` VALUES ('395', '沙田区', '3365');
INSERT INTO `ds_city` VALUES ('395', '东区', '3366');
INSERT INTO `ds_city` VALUES ('395', '观塘区', '3367');
INSERT INTO `ds_city` VALUES ('395', '黄大仙区', '3368');
INSERT INTO `ds_city` VALUES ('395', '九龙城区', '3369');
INSERT INTO `ds_city` VALUES ('395', '屯门区', '3370');
INSERT INTO `ds_city` VALUES ('395', '葵青区', '3371');
INSERT INTO `ds_city` VALUES ('395', '元朗区', '3372');
INSERT INTO `ds_city` VALUES ('395', '深水埗区', '3373');
INSERT INTO `ds_city` VALUES ('395', '西贡区', '3374');
INSERT INTO `ds_city` VALUES ('395', '大埔区', '3375');
INSERT INTO `ds_city` VALUES ('395', '湾仔区', '3376');
INSERT INTO `ds_city` VALUES ('395', '油尖旺区', '3377');
INSERT INTO `ds_city` VALUES ('395', '北区', '3378');
INSERT INTO `ds_city` VALUES ('395', '南区', '3379');
INSERT INTO `ds_city` VALUES ('395', '荃湾区', '3380');
INSERT INTO `ds_city` VALUES ('395', '中西区', '3381');
INSERT INTO `ds_city` VALUES ('395', '离岛区', '3382');
INSERT INTO `ds_city` VALUES ('396', '澳门', '3383');
INSERT INTO `ds_city` VALUES ('397', '台北', '3384');
INSERT INTO `ds_city` VALUES ('397', '高雄', '3385');
INSERT INTO `ds_city` VALUES ('397', '基隆', '3386');
INSERT INTO `ds_city` VALUES ('397', '台中', '3387');
INSERT INTO `ds_city` VALUES ('397', '台南', '3388');
INSERT INTO `ds_city` VALUES ('397', '新竹', '3389');
INSERT INTO `ds_city` VALUES ('397', '嘉义', '3390');
INSERT INTO `ds_city` VALUES ('397', '宜兰县', '3391');
INSERT INTO `ds_city` VALUES ('397', '桃园县', '3392');
INSERT INTO `ds_city` VALUES ('397', '苗栗县', '3393');
INSERT INTO `ds_city` VALUES ('397', '彰化县', '3394');
INSERT INTO `ds_city` VALUES ('397', '南投县', '3395');
INSERT INTO `ds_city` VALUES ('397', '云林县', '3396');
INSERT INTO `ds_city` VALUES ('397', '屏东县', '3397');
INSERT INTO `ds_city` VALUES ('397', '台东县', '3398');
INSERT INTO `ds_city` VALUES ('397', '花莲县', '3399');
INSERT INTO `ds_city` VALUES ('397', '澎湖县', '3400');
INSERT INTO `ds_city` VALUES ('3', '合肥', '3401');
INSERT INTO `ds_city` VALUES ('3401', '庐阳', '3402');
INSERT INTO `ds_city` VALUES ('3401', '瑶海区', '3403');
INSERT INTO `ds_city` VALUES ('3401', '蜀山区', '3404');
INSERT INTO `ds_city` VALUES ('3401', '包河区', '3405');
INSERT INTO `ds_city` VALUES ('3401', '长丰县', '3406');
INSERT INTO `ds_city` VALUES ('3401', '肥东县', '3407');
INSERT INTO `ds_city` VALUES ('3401', '肥西县', '3408');

-- ----------------------------
-- Table structure for `ds_collection`
-- ----------------------------
DROP TABLE IF EXISTS `ds_collection`;
CREATE TABLE `ds_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nper` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `money` decimal(15,2) NOT NULL,
  `interest` decimal(15,2) NOT NULL,
  `time` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `surplus` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_coverdue`
-- ----------------------------
DROP TABLE IF EXISTS `ds_coverdue`;
CREATE TABLE `ds_coverdue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `money` decimal(15,2) NOT NULL,
  `interest` decimal(15,2) NOT NULL,
  `days` tinyint(4) NOT NULL DEFAULT '1',
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_coverdue
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_instation`
-- ----------------------------
DROP TABLE IF EXISTS `ds_instation`;
CREATE TABLE `ds_instation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_instation
-- ----------------------------
INSERT INTO `ds_instation` VALUES ('1', '0', '1', '0', '会员注册成功', '13196666302您的账号已注册成功！', '0', '0', '1498309734');

-- ----------------------------
-- Table structure for `ds_links`
-- ----------------------------
DROP TABLE IF EXISTS `ds_links`;
CREATE TABLE `ds_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL,
  `url` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `time` varchar(12) NOT NULL,
  `img` varchar(25) NOT NULL,
  `order` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_links
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_membership_grade`
-- ----------------------------
DROP TABLE IF EXISTS `ds_membership_grade`;
CREATE TABLE `ds_membership_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `img` varchar(30) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_membership_grade
-- ----------------------------
INSERT INTO `ds_membership_grade` VALUES ('10', '三级', '3.gif', '51', '100');
INSERT INTO `ds_membership_grade` VALUES ('9', '二级', '2.gif', '21', '50');
INSERT INTO `ds_membership_grade` VALUES ('8', '一级', '1.gif', '1', '20');
INSERT INTO `ds_membership_grade` VALUES ('11', '四级', '4.gif', '101', '150');
INSERT INTO `ds_membership_grade` VALUES ('12', '五级', '5.gif', '151', '200');
INSERT INTO `ds_membership_grade` VALUES ('13', '六级', '6.gif', '201', '300');
INSERT INTO `ds_membership_grade` VALUES ('14', '七级', '7.gif', '301', '400');
INSERT INTO `ds_membership_grade` VALUES ('15', '八级', '8.gif', '401', '650');
INSERT INTO `ds_membership_grade` VALUES ('16', '九级', '9.gif', '651', '800');
INSERT INTO `ds_membership_grade` VALUES ('17', '十级', '10.gif', '801', '1000');
INSERT INTO `ds_membership_grade` VALUES ('18', '十一级', '11.gif', '1001', '1300');
INSERT INTO `ds_membership_grade` VALUES ('19', '十二级', '12.gif', '1301', '1600');
INSERT INTO `ds_membership_grade` VALUES ('20', '十三级', '13.gif', '1601', '2000');
INSERT INTO `ds_membership_grade` VALUES ('21', '十四级', '14.gif', '2001', '2500');
INSERT INTO `ds_membership_grade` VALUES ('22', '十五级', '15.gif', '2501', '3200');
INSERT INTO `ds_membership_grade` VALUES ('23', '十六级', '16.gif', '3201', '3700');
INSERT INTO `ds_membership_grade` VALUES ('24', '十七级', '17.gif', '3701', '4200');
INSERT INTO `ds_membership_grade` VALUES ('25', '十八级', '18.gif', '4201', '4800');
INSERT INTO `ds_membership_grade` VALUES ('26', '十九级', '19.gif', '4801', '5500');
INSERT INTO `ds_membership_grade` VALUES ('27', '二十级', '20.gif', '5501', '999999');

-- ----------------------------
-- Table structure for `ds_money`
-- ----------------------------
DROP TABLE IF EXISTS `ds_money`;
CREATE TABLE `ds_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `total_money` decimal(20,10) unsigned NOT NULL,
  `available_funds` decimal(20,10) unsigned NOT NULL,
  `freeze_funds` decimal(20,10) unsigned NOT NULL,
  `due_in` decimal(20,10) unsigned NOT NULL,
  `stay_still` decimal(20,10) unsigned NOT NULL,
  `stay_interest` decimal(20,10) unsigned NOT NULL,
  `make_interest` decimal(20,10) unsigned NOT NULL,
  `make_reward` decimal(15,2) unsigned NOT NULL,
  `overdue` decimal(20,10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_money
-- ----------------------------
INSERT INTO `ds_money` VALUES ('1', '1', '0.0000000000', '0.0000000000', '0.0000000000', '0.0000000000', '0.0000000000', '0.0000000000', '0.0000000000', '0.00', '0.0000000000');

-- ----------------------------
-- Table structure for `ds_money_log`
-- ----------------------------
DROP TABLE IF EXISTS `ds_money_log`;
CREATE TABLE `ds_money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `finetype` tinyint(2) NOT NULL,
  `actionname` varchar(80) NOT NULL,
  `total_money` decimal(20,10) NOT NULL,
  `available_funds` decimal(20,10) NOT NULL,
  `freeze_funds` decimal(20,10) NOT NULL,
  `operation` decimal(20,10) NOT NULL,
  `counterparty` varchar(16) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_money_log
-- ----------------------------
INSERT INTO `ds_money_log` VALUES ('1', '1', '1', '1', '', '1.0000000000', '1.0000000000', '0.0000000000', '0.0000000000', '平台', '1498309734', '127.0.0.1');

-- ----------------------------
-- Table structure for `ds_offline`
-- ----------------------------
DROP TABLE IF EXISTS `ds_offline`;
CREATE TABLE `ds_offline` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `type` smallint(3) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bank` varchar(25) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_offline
-- ----------------------------
INSERT INTO `ds_offline` VALUES ('2', '2', '宁波支行', '天发网络', '33103333333333333333333', '5');

-- ----------------------------
-- Table structure for `ds_online`
-- ----------------------------
DROP TABLE IF EXISTS `ds_online`;
CREATE TABLE `ds_online` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `pid` varchar(16) NOT NULL,
  `checking` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `introduce` varchar(200) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `order` smallint(3) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_online
-- ----------------------------
INSERT INTO `ds_online` VALUES ('1', '支付宝', 'alipay.gif', '', '', '', '支付宝标准双接口', '0', '5');

-- ----------------------------
-- Table structure for `ds_operation`
-- ----------------------------
DROP TABLE IF EXISTS `ds_operation`;
CREATE TABLE `ds_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `page` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ip` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='操作记录';

-- ----------------------------
-- Records of ds_operation
-- ----------------------------
INSERT INTO `ds_operation` VALUES ('1', 'admin', '/index.php/Admin/Logo.html', '管理员登陆成功', '127.0.0.1', '1445248230');
INSERT INTO `ds_operation` VALUES ('2', 'admin', '/index.php/Admin/Logo.html', '管理员登陆成功', '127.0.0.1', '1445339745');
INSERT INTO `ds_operation` VALUES ('3', 'admin', '/index.php/Admin/Site/tfUpda', '更新成功', '127.0.0.1', '1445339801');
INSERT INTO `ds_operation` VALUES ('4', 'admin', '/index.php/Admin/Logo/index.html', '管理员登陆成功', '127.0.0.1', '1498307078');
INSERT INTO `ds_operation` VALUES ('5', 'admin', '/index.php/Admin/Logo/index.html', '管理员登陆成功', '127.0.0.1', '1498311179');
INSERT INTO `ds_operation` VALUES ('6', 'admin', '/index.php/Admin/Index/savesy', '参数修改成功', '127.0.0.1', '1498311306');

-- ----------------------------
-- Table structure for `ds_overdue`
-- ----------------------------
DROP TABLE IF EXISTS `ds_overdue`;
CREATE TABLE `ds_overdue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `money` decimal(15,2) NOT NULL,
  `days` tinyint(4) NOT NULL DEFAULT '1',
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_overdue
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `ds_recharge`;
CREATE TABLE `ds_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL,
  `nid` varchar(30) NOT NULL,
  `genre` tinyint(2) NOT NULL,
  `money` decimal(10,2) unsigned NOT NULL,
  `poundage` decimal(6,2) unsigned NOT NULL,
  `account_money` decimal(10,2) unsigned NOT NULL,
  `time` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `handlers` varchar(16) NOT NULL,
  `audittime` int(11) NOT NULL,
  `date` text NOT NULL,
  `oid` smallint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_refund`
-- ----------------------------
DROP TABLE IF EXISTS `ds_refund`;
CREATE TABLE `ds_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nper` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `money` decimal(15,2) NOT NULL,
  `interest` decimal(15,2) NOT NULL,
  `time` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_refund
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_shuffling`
-- ----------------------------
DROP TABLE IF EXISTS `ds_shuffling`;
CREATE TABLE `ds_shuffling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `time` varchar(12) NOT NULL,
  `img` varchar(25) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='轮播';

-- ----------------------------
-- Records of ds_shuffling
-- ----------------------------
INSERT INTO `ds_shuffling` VALUES ('11', '1', '1', '0', '1481793042', '1481793041.2397.png', '0', 'javascript:void(0)');

-- ----------------------------
-- Table structure for `ds_site`
-- ----------------------------
DROP TABLE IF EXISTS `ds_site`;
CREATE TABLE `ds_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` tinyint(4) DEFAULT '1',
  `pid` int(11) DEFAULT '0',
  `aid` int(11) DEFAULT NULL,
  `catpid` varchar(100) CHARACTER SET latin1 DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `page_tpl` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `list_tpl` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `content_tpl` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `type` tinyint(1) DEFAULT '1',
  `orde` int(11) NOT NULL DEFAULT '5',
  `addtime` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_site
-- ----------------------------
INSERT INTO `ds_site` VALUES ('1', '1', '0', '1', '0', '关于我们', '', '', 'page', 'list', 'page', 'about', '22', '1', '3', '7', '1399622878');
INSERT INTO `ds_site` VALUES ('3', '1', '0', '3', '0', '首页', 'Dswjcms|P2P|P2P源码|网贷系统|网贷源码|宁波P2P|宁波P2P网贷系统|宁波网贷源码', 'Dswjcms(case.tifaweb.com) 是目前中国互联网金融中P2P软件系统中，界面最美观、性能最优、安全系数最高的一款P2P网贷系统', 'page', 'list', 'content', '/', '22', '1', '1', '1', '1404695936');
INSERT INTO `ds_site` VALUES ('4', '1', '0', '4', '0', '我要投资', '', '', 'page', 'list', 'content', '/Loan.html', '22', '1', '1', '2', '1389678778');
INSERT INTO `ds_site` VALUES ('5', '1', '0', '5', '0', '我要借款', '', '', 'page', 'list', 'content', '/Borrow/welfare.html', '22', '1', '1', '3', '1384762501');
INSERT INTO `ds_site` VALUES ('7', '2', '5', '7', '0-5', '发布抵押标', '', '', 'page', 'list', 'content', '/Borrow/index/mortgage.html', '22', '1', '1', '5', '1384762542');
INSERT INTO `ds_site` VALUES ('16', '1', '0', '16', '0', '新闻中心', '', '', 'page', 'list', 'content', 'new', '22', '1', '2', '6', '1385002935');
INSERT INTO `ds_site` VALUES ('8', '2', '5', '8', '0-5', '发布质押标', '', '', 'page', 'list', 'content', '/Borrow/index/pledge.html', '22', '1', '1', '5', '1384762552');
INSERT INTO `ds_site` VALUES ('13', '1', '0', '13', '0', '计算器', '', '', 'page', 'list', 'content', '/Index/counter.html', '22', '1', '1', '8', '1389678808');
INSERT INTO `ds_site` VALUES ('14', '1', '0', '14', '0', '我的账户', '', '', 'page', 'list', 'content', '/Center.html', '22', '1', '1', '4', '1384762467');
INSERT INTO `ds_site` VALUES ('17', '1', '0', '17', '0', '登陆', '', '', 'page', 'list', 'content', '/Logo/login.html', '22', '1', '1', '5', '1384764322');
INSERT INTO `ds_site` VALUES ('18', '1', '0', '18', '0', '注册', '', '', 'page', 'list', 'content', '/Logo/register.html', '22', '1', '1', '5', '1384764337');
INSERT INTO `ds_site` VALUES ('19', '1', '0', '19', '0', '忘记密码', '', '', 'page', 'list', 'content', '/Logo/forgotpass.html', '22', '1', '1', '5', '1384764387');
INSERT INTO `ds_site` VALUES ('21', '1', '0', '21', '0', '联系我们', '', '', 'page', 'list', 'page', 'contact', '22', '1', '3', '5', '1399622890');
INSERT INTO `ds_site` VALUES ('28', '1', '0', '28', '0', '名词解释', '', '', null, 'list', 'content', 'explanation', '1', '1', '2', '5', '1385780428');
INSERT INTO `ds_site` VALUES ('29', '1', '0', '29', '0', '收费规则', '收费规则', '收费规则', null, 'list', 'page', 'rules', '1', '1', '3', '5', '1385811710');
INSERT INTO `ds_site` VALUES ('31', '1', '0', '31', '0', '帮助中心', '', '', null, 'list', 'content', 'help', '1', '1', '2', '5', '1389527300');
INSERT INTO `ds_site` VALUES ('32', '1', '0', '32', '0', '平台公告', '网站公告', '网站公告', null, 'list', 'content', 'abouts', '1', '1', '2', '5', '1404559961');
INSERT INTO `ds_site` VALUES ('34', '1', '0', '34', '0', '安全保障', '安全保障', '安全保障', null, 'list', 'page', 'security', '1', '1', '3', '5', '1445339801');

-- ----------------------------
-- Table structure for `ds_site_add`
-- ----------------------------
DROP TABLE IF EXISTS `ds_site_add`;
CREATE TABLE `ds_site_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `litpic` varchar(150) DEFAULT NULL,
  `model` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `uptime` char(10) CHARACTER SET latin1 DEFAULT NULL,
  `upid` int(11) DEFAULT NULL,
  `upip` varchar(20) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_site_add
-- ----------------------------
INSERT INTO `ds_site_add` VALUES ('1', null, 'article', '1399622878', null, null, '');
INSERT INTO `ds_site_add` VALUES ('3', null, 'article', '1404695936', null, null, '');
INSERT INTO `ds_site_add` VALUES ('4', null, 'article', '1389678778', null, null, '');
INSERT INTO `ds_site_add` VALUES ('5', null, 'article', '1384743799', null, null, '');
INSERT INTO `ds_site_add` VALUES ('7', null, 'article', '1384743883', null, null, '');
INSERT INTO `ds_site_add` VALUES ('8', null, 'article', '1384743990', null, null, '');
INSERT INTO `ds_site_add` VALUES ('13', null, 'article', '1389678808', null, null, '');
INSERT INTO `ds_site_add` VALUES ('14', null, 'article', '1384744387', null, null, '');
INSERT INTO `ds_site_add` VALUES ('16', null, 'article', '1384749803', null, null, '');
INSERT INTO `ds_site_add` VALUES ('17', null, 'article', '1384764322', null, null, '');
INSERT INTO `ds_site_add` VALUES ('18', null, 'article', '1384764337', null, null, '');
INSERT INTO `ds_site_add` VALUES ('19', null, 'article', '1384764366', null, null, '');
INSERT INTO `ds_site_add` VALUES ('21', null, 'article', '1399622890', null, null, '');
INSERT INTO `ds_site_add` VALUES ('28', null, 'article', '1385780428', null, null, '');
INSERT INTO `ds_site_add` VALUES ('29', null, 'article', '1385811710', null, null, '<div>\r\n	<h4 class=\"h3\">\r\n		理财人费用\r\n	</h4>\r\n	<div>\r\n		<p class=\"h4\">\r\n			<span><strong>1. 充值费用</strong></span> \r\n		</p>\r\n充值分为第三方充值和线下充值，第三方充值需收取5‰的手续费，线下充值有免费额度，本平台的免费额度为1000元，超出部分按剩余充值金额*1‰收取\r\n	</div>\r\n	<div>\r\n		<p class=\"h4\">\r\n			<span id=\"investor-withdrawn-fee\"><strong>2. 提现费用</strong></span> \r\n		</p>\r\n当理财人进行提现操作时，会发生提现费用。提现有免费额度，本平台的免费额度为100元，超出部分按剩余提现金额*1‰收取\r\n	</div>\r\n	<div>\r\n		<p class=\"h4\">\r\n			<span><strong>3. VIP会费</strong></span> \r\n		</p>\r\n本平台有会员制度，理财人可以申请成为VIP享受更好服务和体验。\r\n	</div>\r\n</div>\r\n<div>\r\n	<h4 class=\"h3 mt15\">\r\n		借款人费用\r\n	</h4>\r\n	<div>\r\n		除理财人列举的费用外，还有以下几种费用：<br />\r\n	</div>\r\n	<div>\r\n		<p class=\"h4\">\r\n			<span><strong>1. 借款管理费</strong></span> \r\n		</p>\r\n本平台将按照借款人的借款期限，每月向借款人收取其借款本金的5‰作为借款管理费。\r\n	</div>\r\n	<div>\r\n		<p class=\"h4\">\r\n			<span><strong>2. 逾期罚息</strong></span> \r\n		</p>\r\n		<p>\r\n			当用户的借款发生逾期时，正常利息停止计算。按以下公式进行计算\r\n		</p>\r\n		<p>\r\n			罚息总额=逾期本息*逾期罚息费*逾期天数\r\n		</p>\r\n		<p class=\"h4\">\r\n			<span><strong>3. 逾期管理费</strong></span> \r\n		</p>\r\n		<p>\r\n			当用户的借款发生逾期时，正常借款管理费用停止计算。按以下公式进行计算\r\n		</p>\r\n逾期管理总费用=逾期本息*逾期管理费*逾期天数\r\n		<p>\r\n			<br />\r\n		</p>\r\n		<p>\r\n			<br />\r\n		</p>\r\n	</div>\r\n	<div>\r\n	</div>\r\n</div>');
INSERT INTO `ds_site_add` VALUES ('31', null, 'article', '1389527300', null, null, '');
INSERT INTO `ds_site_add` VALUES ('32', null, 'article', '1404559961', null, null, '');
INSERT INTO `ds_site_add` VALUES ('34', null, 'article', '1445339801', null, null, '本息保障计划是如何运作的？<br />\r\n平台主要是通过风险控制及风险基金使本金保障计划正常运作。<br />\r\n1、风险控制<br />\r\nDswjcms拥有自己的一套审批系统和方法，对借款用户进行信用风险分析及信用等级分级。同时建立了完整严谨的风险管理体系，包括贷前审核、贷中审查和贷后管理，以控制借款逾期违约的风险。<br />\r\n1）贷前审核：<br />\r\n&nbsp; &nbsp; \r\n在客户提出借款申请后，Dswjcms会对客户的基本资料进行分析。通过网络、电话及其他可以掌握的有效渠道进行详实、仔细的调查，避免不良客户的欺诈风险。在资\r\n料信息核实完成后，还将根据个人信用风险分析系统进行评估，由经验丰富的贷款审核人员进行双重审核确认后最终决定批核结果。<br />\r\n2）贷中审查：<br />\r\n&nbsp; &nbsp; 贷中审核人员会对借款中客户资料的有效期、资料属性及客户的还款状态进行实时监控，对客户信息变动进行更新。保持与客户的畅通联系，避免失去联系导致借款产生风险。对异常客户转入贷后管理系统。<br />\r\n3）贷后管理：<br />\r\n&nbsp; &nbsp; \r\n如果用户逾期未归还贷款，贷后管理部门将第一时间通过短信、电话等方式提醒用户进行还款，若用户在5天内仍未归还当期借款，仁盛贷将会联系该用户的紧急联\r\n系人、直系亲属、单位等督促用户尽快还款。此后如果用户仍未还款，则交由专业的催收团队与第三方专业机构合作进行包括上门等一系列的催收工作，直至采取法\r\n律手段。<br />\r\n&nbsp;<br />\r\n2、风险基金<br />\r\n平台每笔借款成交时，提取一定比例的金额作为风险基金。一旦\r\n借款者发生逾期，需要网站垫付，仁盛贷将从风险基金中提取这部分资金来垫付给投资者，借款人所偿还的逾期款本息重新回到风险基金中。如果风险准备金小于\r\n100w，平台将会拿出自有资金来垫付给投资者，以此来保证投资人的权益。<br />\r\n<br />\r\n<br />\r\n一.严格准入机制<br />\r\n<br />\r\n<br />\r\n第一道机构准入门槛：合作机构经过严格的尽职调查，包括成立时间、实际控制人背景调查、公司资产、过往业绩、从业人员、信用记录等多维度审核。<br />\r\n第二道产品准入门槛，以实物抵押类为主，包括房产、车辆、实物等，线下实地审查借款项目，抵押物价值能够覆盖借款金额，项目还款来源明确、借款人具备还款与再融资能力。<br />\r\n二.双重保证金机制<br />\r\n<br />\r\n<br />\r\n第一重保证金：合作机构按在保金额10%的比例缴纳保证金，一旦发生借款人违约情况，立即启动本息全额垫付机制，逾期率接近8%临界线即启动风险预警机制，在风险项目处置完毕之前，停止新增借款。<br />\r\n第二重保证金，平台按居间服务费的同等金额计提风险准备金；<br />\r\n<br />\r\n三.过程控制<br />\r\n<br />\r\n<br />\r\n借款人信息，担保函等相关资料全部公示，给予投资者们完整的知情权，合时代与担保公司分别对项目的贷前、贷中、贷后采取对应的风控措施，严格要求担保公司调整其提供的担保杠杆，评估抵押物价值，以及在保金额。<br />\r\n五.信息技术安全<br />\r\nDswjcms团队重视每一行代码的优化，每一个安全细节的完善，\r\n每一次系统的测试。引入SSL (Security Socket \r\nLayer)证书为用户信息在网络中的传输撑起安全保护伞；并斥巨资购入行业内最先进硬件防火墙，为用户资金交易安全保驾护航；同时承诺对用户隐私信息进\r\n行严格保护，未经用户同意，不向任何第三方公司、组织和个人披露用户个人信息、账户信息以及交易信息（法律法规另有规定的除外）');

-- ----------------------------
-- Table structure for `ds_smtp`
-- ----------------------------
DROP TABLE IF EXISTS `ds_smtp`;
CREATE TABLE `ds_smtp` (
  `id` tinyint(1) NOT NULL,
  `smtp` varchar(255) NOT NULL,
  `validation` tinyint(1) NOT NULL,
  `send_email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `addresser` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `send_email` (`send_email`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_smtp
-- ----------------------------
INSERT INTO `ds_smtp` VALUES ('1', 'smtp.126.com', '1', 'tifawebcesi@126.com', 'abcd12345', '宁波天发网络');

-- ----------------------------
-- Table structure for `ds_system`
-- ----------------------------
DROP TABLE IF EXISTS `ds_system`;
CREATE TABLE `ds_system` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `state` varchar(25) NOT NULL,
  `prompt` varchar(30) NOT NULL,
  `value` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_system
-- ----------------------------
INSERT INTO `ds_system` VALUES ('1', '网站名称', '请输入网站名称', 'Dswjcms(www.dswjcms.com) - 基于Dswjcms，响应式开发的网贷平台', 'sys_name', '1');
INSERT INTO `ds_system` VALUES ('2', '网站关键字', '请输入关键字', 'Dswjcms|网贷|免费网贷系统|免费借贷系统', 'sys_keyword', '1');
INSERT INTO `ds_system` VALUES ('3', '网站描述', '请输入描述', 'Dswjcms(www.dswjcms.com) - 基于Dswjcms，响应式开发的网贷平台', 'sys_describe', '2');
INSERT INTO `ds_system` VALUES ('4', '网站LOGO', '请输入LOGO', '1409534532.9625.png', 'sys_logo', '3');
INSERT INTO `ds_system` VALUES ('5', '联系电话', '请输入电话', '13198883015', 'sys_phone', '1');
INSERT INTO `ds_system` VALUES ('8', '手机', '请输入手机号', '13081971646', 'sys_cellphone', '1');
INSERT INTO `ds_system` VALUES ('6', '地址', '请输入地址', '浙江省宁波市鄞州区南部商务区博纳大厦2004-2', 'sys_address', '1');
INSERT INTO `ds_system` VALUES ('7', '邮箱', '请输入邮箱', '819016953@qq.com', 'sys_email', '1');
INSERT INTO `ds_system` VALUES ('9', '联系人', '请输入联系人', '吴先生', 'sys_contact', '1');
INSERT INTO `ds_system` VALUES ('10', '邮编', '请输入邮编', '315100', 'sys_code', '1');
INSERT INTO `ds_system` VALUES ('11', '传真', '请输入传真', '', 'sys_fax', '1');
INSERT INTO `ds_system` VALUES ('12', '版权信息', '请输入版权信息', 'Copyright ©2014-2016 Dswjcms，打造中国网贷第一品牌', 'sys_copy', '1');
INSERT INTO `ds_system` VALUES ('13', '借款管理费', '请输入借款管理费', '0.005', 'sys_InterestMF', '1');
INSERT INTO `ds_system` VALUES ('15', '提现手续费免费额度', '请输入额度', '100', 'sys_wFPoundage', '1');
INSERT INTO `ds_system` VALUES ('16', '提现手续费率', '请输入提现手续费', '0.001', 'sys_withdrawalPoundage', '1');
INSERT INTO `ds_system` VALUES ('17', '网站标题（简）', '请输入网站标题', 'Dswjcms', 'sys_briefTitle', '1');
INSERT INTO `ds_system` VALUES ('19', '充值手续费免费额度', '请输入免费额度', '1000', 'sys_rechargeFA', '1');
INSERT INTO `ds_system` VALUES ('20', '充值手续费', '请输入充值手续费', '0.001', 'sys_topUpFees', '1');
INSERT INTO `ds_system` VALUES ('21', '充值手续费额度大于为0小于为1', '大于为0小于为1', '0', 'sys_topUFC', '1');
INSERT INTO `ds_system` VALUES ('22', '线上充值手续费', '请输入线上充值手续费', '0.004', 'sys_onlinePoundage', '1');
INSERT INTO `ds_system` VALUES ('25', '逾期30天内的管理费', '请输入逾期30天内的管理费', '0.001', 'sys_overdue', '1');
INSERT INTO `ds_system` VALUES ('26', '逾期30天后的管理费', '请输入逾期30天后的管理费', '0.005', 'sys_overdues', '1');
INSERT INTO `ds_system` VALUES ('27', '还款到期提前提醒天数', '请输入还款到期提前提醒天数', '5', 'sys_refundDue', '1');
INSERT INTO `ds_system` VALUES ('31', '公司', '请输入公司名', '宁波天发网络', 'sys_company', '1');
INSERT INTO `ds_system` VALUES ('34', '视频认证费用', '请输入金额', '20', 'sys_video', '1');
INSERT INTO `ds_system` VALUES ('35', '现场认证费用', '请输入金额', '100', 'sys_site', '1');
INSERT INTO `ds_system` VALUES ('36', '协议书编号', '请输入协议书码号', 'NB-TF', 'sys_agreement', '1');
INSERT INTO `ds_system` VALUES ('37', '公司所在地', '请输入办公地址', '浙江省宁波市鄞州区南部商务区博纳大厦2004-2', 'sys_officeAddress', '1');
INSERT INTO `ds_system` VALUES ('39', '逾期30天内的罚息利率', '请数据1到100之间的值', '0.0005', 'sys_penaltyint', '1');
INSERT INTO `ds_system` VALUES ('40', '逾期30天后的罚息利率', '请输入1到100之间的值', '0.001', 'sys_penaltyints', '1');
INSERT INTO `ds_system` VALUES ('42', '手机认证方式0人工1自动', '请输入0或1', '0', 'sys_appphone', '1');
INSERT INTO `ds_system` VALUES ('43', '是否关闭站点1是0否', '请输入1或0', '0', 'sys_site_switch', '1');
INSERT INTO `ds_system` VALUES ('44', '站点关闭显示内容', '请输入内容', '网站升级中，升级时间：2013-12-23 13：10：00 至 2013-12-24 08:00:00', 'sys_site_cause', '2');
INSERT INTO `ds_system` VALUES ('47', '合同显示平台名称', '请输入名称', 'Dswjcms', 'sys_bargainName', '1');
INSERT INTO `ds_system` VALUES ('48', '利息管理费', '请输入百分比', '0', 'sys_interestManagement', '1');

-- ----------------------------
-- Table structure for `ds_unite`
-- ----------------------------
DROP TABLE IF EXISTS `ds_unite`;
CREATE TABLE `ds_unite` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) NOT NULL,
  `pid` mediumint(8) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(15) NOT NULL,
  `order` mediumint(8) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=275 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_unite
-- ----------------------------
INSERT INTO `ds_unite` VALUES ('1', '0', '1', '短期周转', '0', '5');
INSERT INTO `ds_unite` VALUES ('2', '0', '1', '生意周转', '1', '5');
INSERT INTO `ds_unite` VALUES ('3', '0', '1', '生活周转', '2', '5');
INSERT INTO `ds_unite` VALUES ('4', '0', '1', '购物消费', '3', '5');
INSERT INTO `ds_unite` VALUES ('5', '0', '1', '不提现借款', '4', '5');
INSERT INTO `ds_unite` VALUES ('6', '0', '1', '其它借款', '5', '5');
INSERT INTO `ds_unite` VALUES ('7', '0', '1', '创业借款', '6', '5');
INSERT INTO `ds_unite` VALUES ('8', '0', '2', '1个月', '1', '5');
INSERT INTO `ds_unite` VALUES ('9', '0', '2', '2个月', '2', '5');
INSERT INTO `ds_unite` VALUES ('10', '0', '2', '3个月', '3', '5');
INSERT INTO `ds_unite` VALUES ('11', '0', '2', '4个月', '4', '5');
INSERT INTO `ds_unite` VALUES ('12', '0', '2', '5个月', '5', '5');
INSERT INTO `ds_unite` VALUES ('13', '0', '2', '6个月', '6', '5');
INSERT INTO `ds_unite` VALUES ('14', '0', '2', '7个月', '7', '5');
INSERT INTO `ds_unite` VALUES ('15', '0', '2', '8个月', '8', '5');
INSERT INTO `ds_unite` VALUES ('16', '0', '2', '9个月', '9', '5');
INSERT INTO `ds_unite` VALUES ('17', '0', '2', '10个月', '10', '5');
INSERT INTO `ds_unite` VALUES ('18', '0', '2', '11个月', '11', '5');
INSERT INTO `ds_unite` VALUES ('19', '0', '2', '12个月', '12', '5');
INSERT INTO `ds_unite` VALUES ('32', '0', '3', '1天', '1', '5');
INSERT INTO `ds_unite` VALUES ('33', '0', '3', '2天', '2', '5');
INSERT INTO `ds_unite` VALUES ('34', '0', '3', '3天', '3', '5');
INSERT INTO `ds_unite` VALUES ('35', '0', '3', '4天', '4', '5');
INSERT INTO `ds_unite` VALUES ('36', '0', '3', '5天', '5', '5');
INSERT INTO `ds_unite` VALUES ('37', '0', '3', '6天', '6', '5');
INSERT INTO `ds_unite` VALUES ('38', '0', '3', '7天', '7', '5');
INSERT INTO `ds_unite` VALUES ('39', '0', '3', '8天', '8', '5');
INSERT INTO `ds_unite` VALUES ('40', '0', '3', '9天', '9', '5');
INSERT INTO `ds_unite` VALUES ('41', '0', '3', '10天', '10', '5');
INSERT INTO `ds_unite` VALUES ('42', '0', '3', '11天', '11', '5');
INSERT INTO `ds_unite` VALUES ('43', '0', '3', '12天', '12', '5');
INSERT INTO `ds_unite` VALUES ('44', '0', '3', '13天', '13', '5');
INSERT INTO `ds_unite` VALUES ('45', '0', '3', '14天', '14', '5');
INSERT INTO `ds_unite` VALUES ('46', '0', '3', '15天', '15', '5');
INSERT INTO `ds_unite` VALUES ('47', '0', '3', '16天', '16', '5');
INSERT INTO `ds_unite` VALUES ('48', '0', '3', '17天', '17', '5');
INSERT INTO `ds_unite` VALUES ('49', '0', '3', '18天', '18', '5');
INSERT INTO `ds_unite` VALUES ('50', '0', '3', '19天', '19', '5');
INSERT INTO `ds_unite` VALUES ('51', '0', '3', '20天', '20', '5');
INSERT INTO `ds_unite` VALUES ('52', '0', '3', '21天', '21', '5');
INSERT INTO `ds_unite` VALUES ('53', '0', '3', '22天', '22', '5');
INSERT INTO `ds_unite` VALUES ('54', '0', '3', '23天', '23', '5');
INSERT INTO `ds_unite` VALUES ('55', '0', '3', '24天', '24', '5');
INSERT INTO `ds_unite` VALUES ('56', '0', '3', '25天', '25', '5');
INSERT INTO `ds_unite` VALUES ('57', '0', '3', '26天', '26', '5');
INSERT INTO `ds_unite` VALUES ('58', '0', '3', '27天', '27', '5');
INSERT INTO `ds_unite` VALUES ('59', '0', '3', '28天', '28', '5');
INSERT INTO `ds_unite` VALUES ('60', '0', '3', '29天', '29', '5');
INSERT INTO `ds_unite` VALUES ('61', '0', '3', '30天', '30', '5');
INSERT INTO `ds_unite` VALUES ('62', '0', '4', '月付息到期还本', '0', '5');
INSERT INTO `ds_unite` VALUES ('63', '0', '4', '按月还本息', '1', '5');
INSERT INTO `ds_unite` VALUES ('64', '0', '5', '1天', '1', '5');
INSERT INTO `ds_unite` VALUES ('65', '0', '5', '2天', '2', '5');
INSERT INTO `ds_unite` VALUES ('66', '0', '5', '3天', '3', '5');
INSERT INTO `ds_unite` VALUES ('67', '0', '5', '4天', '4', '5');
INSERT INTO `ds_unite` VALUES ('68', '0', '5', '5天', '5', '5');
INSERT INTO `ds_unite` VALUES ('69', '0', '5', '6天', '6', '5');
INSERT INTO `ds_unite` VALUES ('70', '0', '5', '7天', '7', '5');
INSERT INTO `ds_unite` VALUES ('71', '0', '5', '8天', '8', '5');
INSERT INTO `ds_unite` VALUES ('72', '0', '5', '9天', '9', '5');
INSERT INTO `ds_unite` VALUES ('73', '0', '5', '10天', '10', '5');
INSERT INTO `ds_unite` VALUES ('74', '0', '5', '11天', '11', '5');
INSERT INTO `ds_unite` VALUES ('75', '0', '5', '12天', '12', '5');
INSERT INTO `ds_unite` VALUES ('76', '0', '5', '13天', '13', '5');
INSERT INTO `ds_unite` VALUES ('77', '0', '5', '14天', '14', '5');
INSERT INTO `ds_unite` VALUES ('78', '0', '5', '15天', '15', '5');
INSERT INTO `ds_unite` VALUES ('79', '0', '5', '16天', '16', '5');
INSERT INTO `ds_unite` VALUES ('80', '0', '5', '17天', '17', '5');
INSERT INTO `ds_unite` VALUES ('81', '0', '5', '18天', '18', '5');
INSERT INTO `ds_unite` VALUES ('82', '0', '5', '19天', '19', '5');
INSERT INTO `ds_unite` VALUES ('83', '0', '5', '20天', '20', '5');
INSERT INTO `ds_unite` VALUES ('84', '0', '5', '21天', '21', '5');
INSERT INTO `ds_unite` VALUES ('85', '0', '5', '22天', '22', '5');
INSERT INTO `ds_unite` VALUES ('86', '0', '5', '23天', '23', '5');
INSERT INTO `ds_unite` VALUES ('87', '0', '5', '24天', '24', '5');
INSERT INTO `ds_unite` VALUES ('88', '0', '5', '25天', '25', '5');
INSERT INTO `ds_unite` VALUES ('89', '0', '5', '26天', '26', '5');
INSERT INTO `ds_unite` VALUES ('90', '0', '5', '27天', '27', '5');
INSERT INTO `ds_unite` VALUES ('91', '0', '5', '28天', '28', '5');
INSERT INTO `ds_unite` VALUES ('92', '0', '5', '29天', '29', '5');
INSERT INTO `ds_unite` VALUES ('93', '0', '5', '30天', '30', '5');
INSERT INTO `ds_unite` VALUES ('94', '0', '6', '20元', '20', '5');
INSERT INTO `ds_unite` VALUES ('95', '0', '6', '40元', '40', '5');
INSERT INTO `ds_unite` VALUES ('96', '0', '6', '50元', '50', '5');
INSERT INTO `ds_unite` VALUES ('97', '0', '6', '100元', '100', '5');
INSERT INTO `ds_unite` VALUES ('98', '0', '6', '150元', '150', '5');
INSERT INTO `ds_unite` VALUES ('99', '0', '6', '200元', '200', '5');
INSERT INTO `ds_unite` VALUES ('100', '0', '6', '250元', '250', '5');
INSERT INTO `ds_unite` VALUES ('101', '0', '6', '300元', '300', '5');
INSERT INTO `ds_unite` VALUES ('102', '0', '6', '350元', '350', '5');
INSERT INTO `ds_unite` VALUES ('103', '0', '6', '400元', '400', '5');
INSERT INTO `ds_unite` VALUES ('104', '0', '6', '450元', '450', '5');
INSERT INTO `ds_unite` VALUES ('105', '0', '6', '500元', '500', '5');
INSERT INTO `ds_unite` VALUES ('106', '0', '7', '无限制', '0', '5');
INSERT INTO `ds_unite` VALUES ('107', '0', '7', '50元', '50', '5');
INSERT INTO `ds_unite` VALUES ('108', '0', '7', '100元', '100', '5');
INSERT INTO `ds_unite` VALUES ('109', '0', '7', '200元', '200', '5');
INSERT INTO `ds_unite` VALUES ('110', '0', '7', '300元', '300', '5');
INSERT INTO `ds_unite` VALUES ('111', '0', '7', '500元', '500', '5');
INSERT INTO `ds_unite` VALUES ('112', '0', '7', '1000元', '1000', '5');
INSERT INTO `ds_unite` VALUES ('113', '0', '7', '2000元', '2000', '5');
INSERT INTO `ds_unite` VALUES ('114', '0', '7', '3000元', '3000', '5');
INSERT INTO `ds_unite` VALUES ('115', '0', '7', '5000元', '5000', '5');
INSERT INTO `ds_unite` VALUES ('116', '0', '7', '10000元', '10000', '5');
INSERT INTO `ds_unite` VALUES ('117', '0', '7', '50000元', '50000', '5');
INSERT INTO `ds_unite` VALUES ('118', '0', '7', '100000元', '100000', '5');
INSERT INTO `ds_unite` VALUES ('119', '0', '8', '初中以下', '1', '5');
INSERT INTO `ds_unite` VALUES ('120', '0', '8', '初中', '2', '5');
INSERT INTO `ds_unite` VALUES ('121', '0', '8', '高中', '3', '5');
INSERT INTO `ds_unite` VALUES ('122', '0', '8', '大专', '4', '5');
INSERT INTO `ds_unite` VALUES ('123', '0', '8', '本科', '5', '5');
INSERT INTO `ds_unite` VALUES ('124', '0', '8', '研究生', '6', '5');
INSERT INTO `ds_unite` VALUES ('125', '0', '8', '博士', '7', '5');
INSERT INTO `ds_unite` VALUES ('126', '0', '8', '博士后', '8', '5');
INSERT INTO `ds_unite` VALUES ('127', '0', '9', '2000元以下', '1', '5');
INSERT INTO `ds_unite` VALUES ('128', '0', '9', '2001-4500元', '2', '5');
INSERT INTO `ds_unite` VALUES ('129', '0', '9', '4501-5000元', '3', '5');
INSERT INTO `ds_unite` VALUES ('130', '0', '9', '5001-10000元', '4', '5');
INSERT INTO `ds_unite` VALUES ('131', '0', '9', '10001-20000元', '5', '5');
INSERT INTO `ds_unite` VALUES ('132', '0', '9', '20000元以上', '6', '5');
INSERT INTO `ds_unite` VALUES ('133', '0', '10', '租房', '1', '5');
INSERT INTO `ds_unite` VALUES ('134', '0', '10', '与父母同住', '2', '5');
INSERT INTO `ds_unite` VALUES ('135', '0', '10', '有一套房', '3', '5');
INSERT INTO `ds_unite` VALUES ('136', '0', '10', '有一套房以上', '4', '5');
INSERT INTO `ds_unite` VALUES ('137', '0', '11', '无', '1', '5');
INSERT INTO `ds_unite` VALUES ('138', '0', '11', '租车', '2', '5');
INSERT INTO `ds_unite` VALUES ('139', '0', '11', '一辆车', '3', '5');
INSERT INTO `ds_unite` VALUES ('140', '0', '11', '一辆车以上', '4', '5');
INSERT INTO `ds_unite` VALUES ('141', '0', '12', 'IT信息技术', '1', '5');
INSERT INTO `ds_unite` VALUES ('142', '0', '12', '金融', '2', '5');
INSERT INTO `ds_unite` VALUES ('143', '0', '12', '互联网', '3', '5');
INSERT INTO `ds_unite` VALUES ('144', '0', '12', '广告传媒', '4', '5');
INSERT INTO `ds_unite` VALUES ('145', '0', '12', '贸易零售', '5', '5');
INSERT INTO `ds_unite` VALUES ('146', '0', '12', '交通物流', '6', '5');
INSERT INTO `ds_unite` VALUES ('147', '0', '12', '房地产', '7', '5');
INSERT INTO `ds_unite` VALUES ('148', '0', '12', '旅游餐饮', '8', '5');
INSERT INTO `ds_unite` VALUES ('149', '0', '12', '加工制造业', '9', '5');
INSERT INTO `ds_unite` VALUES ('150', '0', '12', '石化采掘', '10', '5');
INSERT INTO `ds_unite` VALUES ('151', '0', '12', '农林牧渔', '11', '5');
INSERT INTO `ds_unite` VALUES ('152', '0', '12', '社会服务', '12', '5');
INSERT INTO `ds_unite` VALUES ('153', '0', '12', '医药生物', '13', '5');
INSERT INTO `ds_unite` VALUES ('154', '0', '12', '教育培训科研', '14', '5');
INSERT INTO `ds_unite` VALUES ('155', '0', '13', '满族', '1', '5');
INSERT INTO `ds_unite` VALUES ('156', '0', '13', '朝鲜族', '2', '5');
INSERT INTO `ds_unite` VALUES ('157', '0', '13', '赫哲族', '3', '5');
INSERT INTO `ds_unite` VALUES ('158', '0', '13', '达斡尔族', '4', '5');
INSERT INTO `ds_unite` VALUES ('159', '0', '13', '鄂伦春族', '5', '5');
INSERT INTO `ds_unite` VALUES ('160', '0', '13', '鄂温克族', '6', '5');
INSERT INTO `ds_unite` VALUES ('161', '0', '13', '蒙古族', '7', '5');
INSERT INTO `ds_unite` VALUES ('162', '0', '13', '回族', '8', '5');
INSERT INTO `ds_unite` VALUES ('163', '0', '13', '东乡族', '9', '5');
INSERT INTO `ds_unite` VALUES ('164', '0', '13', '保安族', '10', '5');
INSERT INTO `ds_unite` VALUES ('165', '0', '13', '撒拉族', '11', '5');
INSERT INTO `ds_unite` VALUES ('166', '0', '13', '土族', '12', '5');
INSERT INTO `ds_unite` VALUES ('167', '0', '13', '裕固族', '13', '5');
INSERT INTO `ds_unite` VALUES ('168', '0', '13', '俄罗斯族', '14', '5');
INSERT INTO `ds_unite` VALUES ('169', '0', '13', '乌兹别克族', '15', '5');
INSERT INTO `ds_unite` VALUES ('170', '0', '13', '塔塔尔族', '16', '5');
INSERT INTO `ds_unite` VALUES ('171', '0', '13', '锡伯族', '17', '5');
INSERT INTO `ds_unite` VALUES ('172', '0', '13', '哈萨克族', '18', '5');
INSERT INTO `ds_unite` VALUES ('173', '0', '13', '克尔克孜族', '19', '5');
INSERT INTO `ds_unite` VALUES ('174', '0', '13', '维吾尔族', '20', '5');
INSERT INTO `ds_unite` VALUES ('175', '0', '13', '塔吉克族', '21', '5');
INSERT INTO `ds_unite` VALUES ('176', '0', '13', '藏族', '22', '5');
INSERT INTO `ds_unite` VALUES ('177', '0', '13', '珞巴族', '23', '5');
INSERT INTO `ds_unite` VALUES ('178', '0', '13', '门巴族', '24', '5');
INSERT INTO `ds_unite` VALUES ('179', '0', '13', '纳西族', '25', '5');
INSERT INTO `ds_unite` VALUES ('180', '0', '13', '彝族', '26', '5');
INSERT INTO `ds_unite` VALUES ('181', '0', '13', '普米族', '27', '5');
INSERT INTO `ds_unite` VALUES ('182', '0', '13', '白族', '28', '5');
INSERT INTO `ds_unite` VALUES ('183', '0', '13', '傈僳族', '29', '5');
INSERT INTO `ds_unite` VALUES ('184', '0', '13', '怒族', '30', '5');
INSERT INTO `ds_unite` VALUES ('185', '0', '13', '独龙族', '31', '5');
INSERT INTO `ds_unite` VALUES ('186', '0', '13', '景颇族', '32', '5');
INSERT INTO `ds_unite` VALUES ('187', '0', '13', '阿昌族', '33', '5');
INSERT INTO `ds_unite` VALUES ('188', '0', '13', '德昂族', '34', '5');
INSERT INTO `ds_unite` VALUES ('189', '0', '13', '佤族', '35', '5');
INSERT INTO `ds_unite` VALUES ('190', '0', '13', '拉祜族', '36', '5');
INSERT INTO `ds_unite` VALUES ('191', '0', '13', '布朗族', '37', '5');
INSERT INTO `ds_unite` VALUES ('192', '0', '13', '傣族', '38', '5');
INSERT INTO `ds_unite` VALUES ('193', '0', '13', '基诺族', '39', '5');
INSERT INTO `ds_unite` VALUES ('194', '0', '13', '哈尼族', '40', '5');
INSERT INTO `ds_unite` VALUES ('195', '0', '13', '京族', '41', '5');
INSERT INTO `ds_unite` VALUES ('196', '0', '13', '黎族', '42', '5');
INSERT INTO `ds_unite` VALUES ('197', '0', '13', '毛南族', '43', '5');
INSERT INTO `ds_unite` VALUES ('198', '0', '13', '壮族', '44', '5');
INSERT INTO `ds_unite` VALUES ('199', '0', '13', '仫佬族', '45', '5');
INSERT INTO `ds_unite` VALUES ('200', '0', '13', '瑶族', '46', '5');
INSERT INTO `ds_unite` VALUES ('201', '0', '13', '侗族', '47', '5');
INSERT INTO `ds_unite` VALUES ('202', '0', '13', '苗族', '48', '5');
INSERT INTO `ds_unite` VALUES ('203', '0', '13', '水族', '49', '5');
INSERT INTO `ds_unite` VALUES ('204', '0', '13', '布依族', '50', '5');
INSERT INTO `ds_unite` VALUES ('205', '0', '13', '仡佬族', '51', '5');
INSERT INTO `ds_unite` VALUES ('206', '0', '13', '羌族', '52', '5');
INSERT INTO `ds_unite` VALUES ('207', '0', '13', '土家族', '53', '5');
INSERT INTO `ds_unite` VALUES ('208', '0', '13', '畲族', '54', '5');
INSERT INTO `ds_unite` VALUES ('209', '0', '13', '高山族', '55', '5');
INSERT INTO `ds_unite` VALUES ('210', '0', '13', '汉族', '56', '5');
INSERT INTO `ds_unite` VALUES ('236', '0', '14', '工商银行', '1', '5');
INSERT INTO `ds_unite` VALUES ('237', '0', '14', '农业银行', '2', '5');
INSERT INTO `ds_unite` VALUES ('238', '0', '14', '中国银行', '3', '5');
INSERT INTO `ds_unite` VALUES ('239', '0', '14', '建设银行', '4', '5');
INSERT INTO `ds_unite` VALUES ('240', '0', '14', '光大银行', '5', '5');
INSERT INTO `ds_unite` VALUES ('241', '0', '14', '民生银行', '6', '5');
INSERT INTO `ds_unite` VALUES ('242', '0', '14', '华夏银行', '7', '5');
INSERT INTO `ds_unite` VALUES ('243', '0', '14', '中信银行', '8', '5');
INSERT INTO `ds_unite` VALUES ('244', '0', '14', '恒丰银行', '9', '5');
INSERT INTO `ds_unite` VALUES ('245', '0', '14', '上海浦东发展银行', '10', '5');
INSERT INTO `ds_unite` VALUES ('246', '0', '14', '交通银行', '11', '5');
INSERT INTO `ds_unite` VALUES ('247', '0', '14', '浙商银行', '12', '5');
INSERT INTO `ds_unite` VALUES ('248', '0', '14', '兴业银行', '13', '5');
INSERT INTO `ds_unite` VALUES ('249', '0', '14', '深圳发展银行', '14', '5');
INSERT INTO `ds_unite` VALUES ('250', '0', '14', '招商银行', '15', '5');
INSERT INTO `ds_unite` VALUES ('251', '0', '14', '广东发展银行', '16', '5');
INSERT INTO `ds_unite` VALUES ('252', '0', '15', '线下充值', '0', '5');
INSERT INTO `ds_unite` VALUES ('254', '0', '16', 'EMS', 'ems', '5');
INSERT INTO `ds_unite` VALUES ('255', '0', '16', '申通', 'shentong', '5');
INSERT INTO `ds_unite` VALUES ('256', '0', '16', '顺丰速递', 'shunfeng', '5');
INSERT INTO `ds_unite` VALUES ('257', '0', '16', '顺丰', 'shunfengen', '5');
INSERT INTO `ds_unite` VALUES ('258', '0', '16', '天天快递', 'tiantian', '5');
INSERT INTO `ds_unite` VALUES ('259', '0', '16', '圆通速递', 'yuantong', '5');
INSERT INTO `ds_unite` VALUES ('260', '0', '16', '韵达快运', 'yunda', '5');
INSERT INTO `ds_unite` VALUES ('261', '0', '16', '中通速递', 'zhongtong', '5');
INSERT INTO `ds_unite` VALUES ('262', '0', '16', '宅急送', 'zhaijisong', '5');
INSERT INTO `ds_unite` VALUES ('263', '0', '17', '首页', '1', '5');
INSERT INTO `ds_unite` VALUES ('264', '0', '17', '系统设置', '2', '5');
INSERT INTO `ds_unite` VALUES ('265', '0', '17', '基础配置', '3', '5');
INSERT INTO `ds_unite` VALUES ('266', '0', '17', '文章管理', '4', '5');
INSERT INTO `ds_unite` VALUES ('267', '0', '17', '贷款管理', '5', '5');
INSERT INTO `ds_unite` VALUES ('268', '0', '17', '认证管理', '6', '5');
INSERT INTO `ds_unite` VALUES ('269', '0', '17', '资金管理', '7', '5');
INSERT INTO `ds_unite` VALUES ('271', '0', '17', '联动管理', '9', '5');
INSERT INTO `ds_unite` VALUES ('273', '0', '17', '用户管理', '11', '5');
INSERT INTO `ds_unite` VALUES ('274', '0', '15', '支付宝', '1', '5');

-- ----------------------------
-- Table structure for `ds_user`
-- ----------------------------
DROP TABLE IF EXISTS `ds_user`;
CREATE TABLE `ds_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(32) NOT NULL,
  `pay_password` char(32) NOT NULL,
  `pid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_user
-- ----------------------------
INSERT INTO `ds_user` VALUES ('1', '0', '13196666302', '', 'fa5dc6202fcfdae23e3f8248578ec2c0', '496c89f9075e00ccb18dc47219f9c017', '0', '1498309734');

-- ----------------------------
-- Table structure for `ds_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `ds_userinfo`;
CREATE TABLE `ds_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` varchar(13) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `national` smallint(2) NOT NULL,
  `born` varchar(12) NOT NULL,
  `idcard` varchar(18) NOT NULL,
  `idcard_img` varchar(50) NOT NULL,
  `native_place` varchar(23) NOT NULL,
  `location` varchar(23) NOT NULL,
  `marriage` tinyint(1) NOT NULL,
  `education` tinyint(2) NOT NULL,
  `monthly_income` tinyint(2) NOT NULL,
  `housing` tinyint(1) NOT NULL,
  `buy_cars` tinyint(1) NOT NULL,
  `industry` tinyint(2) NOT NULL,
  `company` varchar(15) NOT NULL,
  `qq` varchar(12) NOT NULL,
  `bank` smallint(3) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `bank_account` varchar(19) NOT NULL,
  `fixed_line` varchar(15) NOT NULL,
  `cellphone` varchar(11) NOT NULL,
  `certification` tinyint(1) NOT NULL,
  `email_audit` tinyint(1) NOT NULL,
  `cellphone_audit` tinyint(1) NOT NULL,
  `video_audit` tinyint(1) NOT NULL,
  `site_audit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_userinfo
-- ----------------------------
INSERT INTO `ds_userinfo` VALUES ('1', '1', '', '0', '0', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '', '13196666302', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ds_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `ds_user_log`;
CREATE TABLE `ds_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `actionname` varchar(40) NOT NULL,
  `page` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_user_log
-- ----------------------------
INSERT INTO `ds_user_log` VALUES ('1', '1', '会员注册成功', '/index.php/Win/Logo/addreg.html', '1498309734', '127.0.0.1');

-- ----------------------------
-- Table structure for `ds_withdrawal`
-- ----------------------------
DROP TABLE IF EXISTS `ds_withdrawal`;
CREATE TABLE `ds_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `money` decimal(10,2) unsigned NOT NULL,
  `name` varchar(13) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `bank_account` varchar(19) NOT NULL,
  `withdrawal_poundage` decimal(10,2) NOT NULL,
  `account` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `handlers` varchar(16) NOT NULL,
  `audittime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_withdrawal
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_admin`
-- ----------------------------
DROP TABLE IF EXISTS `pre_admin`;
CREATE TABLE `pre_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `department_id` smallint(6) DEFAULT NULL,
  `leader_id` int(10) DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态 0-表示无效  1-正常',
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `login_time` int(10) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '255',
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_admin
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_admin_custom`
-- ----------------------------
DROP TABLE IF EXISTS `pre_admin_custom`;
CREATE TABLE `pre_admin_custom` (
  `username` varchar(15) NOT NULL,
  `custom` text COMMENT '常用菜单项',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_admin_custom
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_apply_search`
-- ----------------------------
DROP TABLE IF EXISTS `pre_apply_search`;
CREATE TABLE `pre_apply_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `obj_id` int(10) unsigned DEFAULT NULL COMMENT '标的ID',
  `initiative_uid` int(10) unsigned DEFAULT NULL COMMENT '申请用户ID',
  `passive_uid` int(10) unsigned DEFAULT NULL COMMENT '申请调查的UID',
  `initiative_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `passive_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `type` tinyint(2) unsigned DEFAULT '1' COMMENT '调查类型 1-自主调查  2-委托调查',
  `create_time` int(10) DEFAULT NULL,
  `money` decimal(8,2) DEFAULT NULL COMMENT '费用',
  `status` tinyint(2) unsigned DEFAULT '1' COMMENT '状态 1-未调查  2-已调查',
  `admin_id` int(10) DEFAULT NULL,
  `pass_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_apply_search
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_auth_info`
-- ----------------------------
DROP TABLE IF EXISTS `pre_auth_info`;
CREATE TABLE `pre_auth_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '上传证件存放地址',
  `path2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `auth_type` smallint(6) unsigned DEFAULT NULL COMMENT '验证的类型 对应  pre_auth_type 表的ID',
  `status` tinyint(2) unsigned DEFAULT '1' COMMENT '验证状态:1-未验证 -- 2-表示验证未通过 -- 3-验证通过',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '审核提交时间',
  `pass_time` int(10) unsigned DEFAULT NULL COMMENT '验证通过时间',
  `admin_id` int(10) DEFAULT NULL COMMENT '验证人的ID(后台用户)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '验证备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_auth_info
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `pre_auth_item`;
CREATE TABLE `pre_auth_item` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '验证名称 如房产证',
  `score` smallint(6) DEFAULT NULL COMMENT '信用分数',
  `status` tinyint(2) unsigned DEFAULT '1' COMMENT '是否启用该验证 1-不启用  2-启用',
  `must` tinyint(2) unsigned DEFAULT '1' COMMENT '是否必须认证 1-否  2-是',
  `type` tinyint(2) unsigned DEFAULT '1' COMMENT '验证类型  1-个人认证信息 -- 2-机构认证信息',
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_auth_item
-- ----------------------------
INSERT INTO `pre_auth_item` VALUES ('1', '身份认证', '10', '2', '2', '1', '1546987987');
INSERT INTO `pre_auth_item` VALUES ('2', '工作认证', '10', '2', '2', '1', '1386814799');
INSERT INTO `pre_auth_item` VALUES ('3', '银行信用报告认证', '10', '2', '2', '1', null);
INSERT INTO `pre_auth_item` VALUES ('4', '收入认证', '10', '2', '1', '1', null);
INSERT INTO `pre_auth_item` VALUES ('5', '房产认证', '10', '2', '1', '1', null);
INSERT INTO `pre_auth_item` VALUES ('6', '技术职称认证', '10', '2', '1', '1', null);
INSERT INTO `pre_auth_item` VALUES ('7', '购车证明', '10', '2', '1', '1', null);
INSERT INTO `pre_auth_item` VALUES ('8', '结婚认证', '10', '2', '1', '1', null);
INSERT INTO `pre_auth_item` VALUES ('9', '居住地证明', '10', '2', '1', '1', null);
INSERT INTO `pre_auth_item` VALUES ('10', '视频认证', '10', '2', '1', '1', null);
INSERT INTO `pre_auth_item` VALUES ('50', '其他认证', '0', '2', '1', '1', '1394489523');

-- ----------------------------
-- Table structure for `pre_bank`
-- ----------------------------
DROP TABLE IF EXISTS `pre_bank`;
CREATE TABLE `pre_bank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `status` tinyint(2) unsigned DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_bank
-- ----------------------------
INSERT INTO `pre_bank` VALUES ('1', '工商银行', '20131220/52b3d819d9483.jpg', '2', '1387517977');
INSERT INTO `pre_bank` VALUES ('2', '农业银行', '20131220/52b3d82f51a8c.jpg', '2', '1387517999');

-- ----------------------------
-- Table structure for `pre_bid`
-- ----------------------------
DROP TABLE IF EXISTS `pre_bid`;
CREATE TABLE `pre_bid` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `obj_id` int(10) unsigned DEFAULT NULL COMMENT '标的ID',
  `uid` int(10) DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '投资人名字',
  `money` decimal(12,2) DEFAULT NULL COMMENT '投标金额',
  `lilv` decimal(4,2) unsigned DEFAULT NULL COMMENT '利率',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '投标时间',
  `status` tinyint(2) unsigned DEFAULT '1' COMMENT '1--未操作---2-已中标--3-未中标 -- 4、已撤销--5、流标',
  `lock_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_bid
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_capital_record`
-- ----------------------------
DROP TABLE IF EXISTS `pre_capital_record`;
CREATE TABLE `pre_capital_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '流水号',
  `uid` int(10) unsigned DEFAULT NULL COMMENT '用户ID',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '减少查询,冗余username',
  `fee` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '手续费',
  `outlay` decimal(12,2) DEFAULT '0.00' COMMENT '支出',
  `income` decimal(12,2) DEFAULT '0.00' COMMENT '收入',
  `overdue` decimal(12,2) DEFAULT '0.00',
  `overdue_fee` decimal(12,2) DEFAULT '0.00',
  `balance` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '发生该笔交易后,用户的余额',
  `type` tinyint(2) unsigned DEFAULT NULL COMMENT '交易的类型：1-充值，2-投标成功，3-招标成功，4-偿还本息，5-回收本息，6-成功提现',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `admin_id` int(10) unsigned DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '发生时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_capital_record
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_credit_limit`
-- ----------------------------
DROP TABLE IF EXISTS `pre_credit_limit`;
CREATE TABLE `pre_credit_limit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `min_credit_score` smallint(6) unsigned DEFAULT '0' COMMENT '该等级的最低信用分',
  `max_credit_score` smallint(6) unsigned DEFAULT '0' COMMENT '该等级的最高信用得分',
  `limit` int(10) DEFAULT NULL COMMENT '信用额度',
  `symbol` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '等级符号',
  `symbol_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图标地址',
  `type` tinyint(2) unsigned DEFAULT '1' COMMENT '类型 1-普通用户   2-机构用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_credit_limit
-- ----------------------------
INSERT INTO `pre_credit_limit` VALUES ('1', '0', '30', '1000', 'E', null, '1');
INSERT INTO `pre_credit_limit` VALUES ('2', '30', '50', '2000', 'D', null, '1');
INSERT INTO `pre_credit_limit` VALUES ('3', '50', '70', '5000', 'C', null, '1');
INSERT INTO `pre_credit_limit` VALUES ('4', '70', '90', '15000', 'B', null, '1');
INSERT INTO `pre_credit_limit` VALUES ('5', '90', '1000', '20000', 'A', null, '1');

-- ----------------------------
-- Table structure for `pre_department`
-- ----------------------------
DROP TABLE IF EXISTS `pre_department`;
CREATE TABLE `pre_department` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '部门名称',
  `pid` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '父部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_department
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_ejrb_log`
-- ----------------------------
DROP TABLE IF EXISTS `pre_ejrb_log`;
CREATE TABLE `pre_ejrb_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `fund` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '操作金额',
  `status` tinyint(2) unsigned DEFAULT '1' COMMENT '转入状态 1-未操作 2-成功  3-失败',
  `type` tinyint(2) unsigned DEFAULT '1' COMMENT '类型  1-转入  2-收益  3-转出本金   4-转出利息',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '操作时间',
  `op_time` int(10) unsigned DEFAULT '0' COMMENT '收益时为收益时间 -- 转入时为审核通过时间 -- 转出时等于create_time',
  `balance` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '用户E额宝本金',
  `interest` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '利息余额',
  `lilv` varchar(20) DEFAULT '0' COMMENT '当日利率',
  `msg` varchar(255) DEFAULT NULL COMMENT '信息',
  `admin_id` int(10) unsigned DEFAULT '0' COMMENT '后台审核人ID',
  `lock_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_ejrb_log
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_ejrb_user_data`
-- ----------------------------
DROP TABLE IF EXISTS `pre_ejrb_user_data`;
CREATE TABLE `pre_ejrb_user_data` (
  `uid` int(10) unsigned NOT NULL,
  `fund` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '本金',
  `interest` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '所得利息',
  `start_time` int(10) unsigned DEFAULT '0' COMMENT '最后转入时间',
  `update_time` int(10) unsigned DEFAULT '0' COMMENT '最近一次获得利息的时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_ejrb_user_data
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_fee`
-- ----------------------------
DROP TABLE IF EXISTS `pre_fee`;
CREATE TABLE `pre_fee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '对应资金记录表number',
  `uid` int(10) unsigned DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fund` decimal(12,2) unsigned DEFAULT NULL COMMENT '手续费',
  `type` tinyint(2) unsigned DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_fee
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_fund_lock_record`
-- ----------------------------
DROP TABLE IF EXISTS `pre_fund_lock_record`;
CREATE TABLE `pre_fund_lock_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT '0',
  `fund` decimal(12,2) DEFAULT '0.00',
  `type` tinyint(2) unsigned DEFAULT '1' COMMENT '1-提现；2-投资；3-转入E额宝',
  `status` tinyint(2) unsigned DEFAULT '0',
  `remark` varchar(255) DEFAULT '',
  `create_time` int(10) unsigned DEFAULT '0',
  `unlock_time` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_fund_lock_record
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_limit_manage`
-- ----------------------------
DROP TABLE IF EXISTS `pre_limit_manage`;
CREATE TABLE `pre_limit_manage` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `maxLimit` double DEFAULT NULL COMMENT '最大利率',
  `minLimit` double DEFAULT NULL COMMENT '最小利率',
  `create_time` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_limit_manage
-- ----------------------------
INSERT INTO `pre_limit_manage` VALUES ('1', '50', '1', '2014', '0');

-- ----------------------------
-- Table structure for `pre_link`
-- ----------------------------
DROP TABLE IF EXISTS `pre_link`;
CREATE TABLE `pre_link` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `webname` varchar(20) NOT NULL COMMENT '网站名称',
  `stname` varchar(20) NOT NULL COMMENT '站长名称',
  `stemail` varchar(255) NOT NULL COMMENT '站长邮箱',
  `link_type` tinyint(1) unsigned NOT NULL COMMENT '链接类型',
  `web_url` varchar(255) NOT NULL COMMENT '网站地址',
  `logo_url` varchar(255) NOT NULL COMMENT 'LOGO地址',
  `sort` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '审核',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_link
-- ----------------------------
