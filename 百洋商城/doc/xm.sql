/*
 Navicat MySQL Data Transfer

 Source Server         : yaa
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : xm

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/10/2019 12:23:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for footprint
-- ----------------------------
DROP TABLE IF EXISTS `footprint`;
CREATE TABLE `footprint`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float(10, 2) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `uid` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of footprint
-- ----------------------------
INSERT INTO `footprint` VALUES (35, '【美版迪巧儿童钙片】D-Cal 维D钙咀嚼片水果味30片 儿童青少年缺钙补钙 三种水果味【每次1片，每日1-2次】【三种水果味 小象形状钙片】宝宝爱吃 含维生素D3 促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心 \n【迪巧官方福利Q群118772516】\n【产品效期2020-12】', 50.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06051092296005400.jpg!gthumb', '2019-10-12 11:30:52', 0);
INSERT INTO `footprint` VALUES (49, '【淡口味钙 不伤宝宝味蕾】迪巧钙维生素D颗粒小儿碳酸钙D3颗粒15袋 儿童补钙【每日1袋】【仅需5ml温水冲调，方便喂服】不给宝宝的小胃增加负担 淡口味，不影响宝宝味蕾发育', 70.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05808362736571366.jpg!gthumb', '2019-10-12 11:18:40', 1);
INSERT INTO `footprint` VALUES (9, '【迪巧旗舰店】迪巧 钙维生素D咀嚼片1.2g*45片 水果味儿童青少年碳酸钙小儿宝宝补钙 菠萝味', 79.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb', '2019-10-08 19:05:45', 1);
INSERT INTO `footprint` VALUES (46, '【加强版】美版迪巧成人钙片D-Cal 维D钙咀嚼片水果味60片（每片含钙600mg）孕妇中老年补钙【“1片更比2片强”——推荐孕期准妈妈服用】\n【每片含钙量600mg，维生素D3 1000IU】\n高含量钙，健康骨骼，添加更多VD3，高效促进钙吸；添加山梨糖醇，不易便秘，咀嚼服用，好吃易吸收 \n【迪巧官方会员Q群118772516】\n【产品效期2021-12】', 129.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06051092071384625.jpg!gthumb', '2019-10-11 10:39:23', 1);
INSERT INTO `footprint` VALUES (6, '【美版迪巧秀源女性钙】D-Cal迪巧 维D女性补钙钙片30片 添加大豆异黄酮 适合中老年女性【每次1片，每日1-2次，为成年女性设计，适合血脂偏高的成年女性，中老年女性】 \n【迪巧官方会员Q群118772516 】\n【产品效期2020-12】', 149.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052070478926900.jpg!gthumb', '2019-10-08 19:05:59', 1);
INSERT INTO `footprint` VALUES (14, '【儿童补钙】【苹果味】迪巧  钙维生素D咀嚼片  儿童青少年碳酸钙  补钙【全新上市 苹果味 小象形状钙片】\n【每日1片】宝宝爱吃 含维生素D3 促钙吸收；\n【迪巧官方福利Q群118772516】', 89.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076251113851347.jpg!gthumb', '2019-10-08 20:02:11', 1);
INSERT INTO `footprint` VALUES (2, '【迪巧旗舰店】迪巧孕妇钙片106片 成年碳酸钙成年中老年女性孕期补钙', 168.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105404062791947.jpg!gthumb', '2019-10-08 20:02:18', 1);
INSERT INTO `footprint` VALUES (50, '【孕期补钙补铁特惠组合】迪巧孕妇钙片120片+红源达多糖铁10粒*3盒【迪巧钙片：美国进口，无糖配方，添加VD3促进钙吸收，水果味咀嚼吃，每天2-3片，轻松度孕期 】\n【红源达多糖铁：用于孕妇及哺乳期妇女缺铁性贫血，每天1-2粒】', 189.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06034740989901344.jpg!gthumb', '2019-10-08 20:02:33', 1);
INSERT INTO `footprint` VALUES (1, '【超值10盒装】【添加K2助钙成骨】D-cal迪巧 小儿碳酸钙D3颗粒升级版 20袋/盒 金标迪巧【专为3岁以下宝宝设计】维生素D3+维生素K2双效作用，D3促进钙吸收，K2助钙成骨，宝宝骨骼强壮；淡奶口味，不伤味蕾，妈妈更放心；5ml温水喂服，很方便\n【有效期至2020年12月】\n【迪巧官方会员Q群118772516，进群领取会员专属惊喜大优惠】', 790.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05937031530295589.jpg!gthumb', '2019-10-08 21:10:18', 0);
INSERT INTO `footprint` VALUES (22, '【5盒 孕妇钙】迪巧 钙维生素D咀嚼片香草味 1.2g*106片 妊娠期哺乳期补钙【全新上市，香草味 ，嚼出好心情，添加山梨糖醇】\n【每日1-2粒】适合准妈妈 哺乳期妈妈\n【迪巧官方福利Q群118772516】', 790.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076247783962308.jpg!gthumb', '2019-10-08 21:07:44', 1);
INSERT INTO `footprint` VALUES (18, '【宝宝成长好帮手】百适滴海藻油DHA胶囊90粒+迪巧钙维生素D颗粒15袋*2盒宝宝成长好帮手套装：美国进口百适滴海藻油DHA胶囊90粒*1盒 +美国进口迪巧钙维生素D颗粒15袋* 2盒', 627.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06153902517721599.jpg!gthumb', '2019-10-11 11:15:42', 0);
INSERT INTO `footprint` VALUES (28, '【6盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松【赠品数量有限，送完即止】 \n【每日1-2粒】【添加山梨糖醇 降低便秘发生率】准妈妈、中老年、成年人补钙 美国进口 无糖 \n【迪巧官方福利Q群118772516】', 528.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131541359930587.jpg!gthumb', '2019-10-08 20:35:58', 1);
INSERT INTO `footprint` VALUES (8, '【迪巧旗舰店】迪巧 钙维生素D咀嚼片1.2g*45片 水果味儿童青少年碳酸钙小儿宝宝补钙 橙子味', 79.00, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb', '2019-10-12 08:54:47', 69);

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float(10, 0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sum` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05937031530295589.jpg!gthumb', 790, '【超值10盒装】【添加K2助钙成骨】D-cal迪巧 小儿碳酸钙D3颗粒升级版 20袋/盒 金标迪巧【专为3岁以下宝宝设计】维生素D3+维生素K2双效作用，D3促进钙吸收，K2助钙成骨，宝宝骨骼强壮；淡奶口味，不伤味蕾，妈妈更放心；5ml温水喂服，很方便\n【有效期至2020年12月】\n【迪巧官方会员Q群118772516，进群领取会员专属惊喜大优惠】', 213);
INSERT INTO `goodlist` VALUES ('2', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105404062791947.jpg!gthumb', 168, '【迪巧旗舰店】迪巧孕妇钙片106片 成年碳酸钙成年中老年女性孕期补钙', 432);
INSERT INTO `goodlist` VALUES ('3', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06059765044920765.jpg!gthumb', 279, '【特惠3盒装】【添加K2助钙成骨】D-cal迪巧 小儿碳酸钙D3颗粒 20袋/盒 升级版 金标迪巧【专为3岁以下宝宝设计】维生素D3+维生素K2双效作用，D3促进钙吸收，K2助钙成骨，宝宝骨骼强壮；淡奶口味，不伤味蕾，妈妈更放心；5ml温水喂服，很方便\n【有效期至2020年12月】\n【迪巧官方会员Q群118772516，进群领取会员专属惊喜大优惠】', 343);
INSERT INTO `goodlist` VALUES ('4', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06059752019374185.jpg!gthumb', 528, '【特惠6盒装】【添加K2助钙成骨】D-cal迪巧 小儿碳酸钙D3颗粒升级版金标迪巧 宝宝补钙【专为3岁以下宝宝设计】维生素D3+维生素K2双效作用，D3促进钙吸收，K2助钙成骨，宝宝骨骼强壮；淡奶口味，不伤味蕾，妈妈更放心；5ml温水喂服，很方便\n【有效期至2020年12月】\n【迪巧官方会员Q群118772516，进群领取会员专属惊喜大优惠】', 2321);
INSERT INTO `goodlist` VALUES ('5', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06059641401263101.jpg!gthumb', 198, '【特惠2盒】【添加K2助钙成骨】D-cal迪巧 小儿碳酸钙D3颗粒 20袋/盒升级版金标迪巧【专为3岁以下宝宝设计】维生素D3+维生素K2双效作用，D3促进钙吸收，K2助钙成骨，宝宝骨骼强壮；淡奶口味，不伤味蕾，妈妈更放心；5ml温水喂服，很方便\n【有效期至2020年12月】\n【迪巧官方会员Q群118772516，进群领取会员专属惊喜大优惠】', 4);
INSERT INTO `goodlist` VALUES ('6', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052070478926900.jpg!gthumb', 149, '【美版迪巧秀源女性钙】D-Cal迪巧 维D女性补钙钙片30片 添加大豆异黄酮 适合中老年女性【每次1片，每日1-2次，为成年女性设计，适合血脂偏高的成年女性，中老年女性】 \n【迪巧官方会员Q群118772516 】\n【产品效期2020-12】', 443);
INSERT INTO `goodlist` VALUES ('7', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052050820930603.jpg!gthumb', 278, '【2瓶】美版迪巧秀源女性片D-Cal迪巧 维D女性钙30片 含大豆异黄酮 中老年女性 更年期【每次1片，每日1-2次，为成年女性设计，适合血脂偏高的成年女性，中老年女性、更年期女性】\n【产品效期2020-12】\n【迪巧官方福利Q群118772516】', 342);
INSERT INTO `goodlist` VALUES ('8', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb', 79, '【迪巧旗舰店】迪巧 钙维生素D咀嚼片1.2g*45片 水果味儿童青少年碳酸钙小儿宝宝补钙 橙子味', 545);
INSERT INTO `goodlist` VALUES ('9', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb', 79, '【迪巧旗舰店】迪巧 钙维生素D咀嚼片1.2g*45片 水果味儿童青少年碳酸钙小儿宝宝补钙 菠萝味', 565);
INSERT INTO `goodlist` VALUES ('10', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb', 79, '【迪巧旗舰店】迪巧 钙维生素D咀嚼片1.2g*45片 水果味儿童青少年碳酸钙小儿宝宝补钙 苹果味', 76);
INSERT INTO `goodlist` VALUES ('11', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06083923491768190.jpg!gthumb', 378, '【3瓶】美版迪巧秀源女性片D-Cal迪巧 维D女性钙30片 含大豆异黄酮 中老年更年期女性补钙【每次1片，每日1-2次，为成年女性设计，适合血脂偏高的成年女性，中老年女性、更年期女性】 \n【产品效期2020-12】 \n【迪巧官方福利Q群118772516】', 65);
INSERT INTO `goodlist` VALUES ('12', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105402488755862.jpg!gthumb', 168, '【迪巧旗舰店】迪巧 秀源女性钙片 30片 中老年女性补钙 含大豆异黄酮 增加骨密度 调节血脂【每日1-2次，每次1片，专为成年女性设计，适合血脂偏高的成年女性，中老年女性】', 54);
INSERT INTO `goodlist` VALUES ('13', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877383026609268.jpg!gthumb', 99, '【添加K2助钙成骨 助力宝宝身高UP】D-cal迪巧 小儿碳酸钙颗粒剂升级版 20袋/盒 包邮包税【专为3岁以下宝宝设计】维生素D3+维生素K2双效作用，D3促进钙吸收，K2助钙成骨，宝宝骨骼强壮；淡奶口味，不伤味蕾，妈妈更放心；5ml温水喂服，很方便\n【迪巧官方会员Q群118772516】\n【产品效期至2020-12】', 34);
INSERT INTO `goodlist` VALUES ('14', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076251113851347.jpg!gthumb', 89, '【儿童补钙】【苹果味】迪巧  钙维生素D咀嚼片  儿童青少年碳酸钙  补钙【全新上市 苹果味 小象形状钙片】\n【每日1片】宝宝爱吃 含维生素D3 促钙吸收；\n【迪巧官方福利Q群118772516】', 23);
INSERT INTO `goodlist` VALUES ('15', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076252561940857.jpg!gthumb', 89, '【儿童补钙】【橙子味】迪巧  钙维生素D咀嚼片1.2g*45片 儿童青少年碳酸钙  补钙【全新上市  橙子味  小象形状钙片】\n【每日1片】宝宝爱吃 含维生素D3 促钙吸收；\n【迪巧官方福利Q群118772516】', 54);
INSERT INTO `goodlist` VALUES ('16', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076247783962308.jpg!gthumb', 168, '【孕期补钙】迪巧  钙维生素D咀嚼片香草味 1.2g*106片 妊娠期哺乳期补钙【全新上市，香草味 ，嚼出好心情，添加山梨糖醇】\n【每日1-2粒】适合准妈妈 哺乳期妈妈\n【迪巧官方福利Q群118772516】', 343);
INSERT INTO `goodlist` VALUES ('17', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06087287262414710.jpg!gthumb', 265, '【3种口味 儿童钙】迪巧 钙维生素D咀嚼片1.2g*45片（橙子+苹果+菠萝各一瓶）【全新上市  菠萝味  苹果味 橙子味 小象形状钙片】\n【每日1片】宝宝爱吃 含维生素D3 促钙吸收；\n【迪巧官方福利Q群118772516】', 5);
INSERT INTO `goodlist` VALUES ('18', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06153902517721599.jpg!gthumb', 627, '【宝宝成长好帮手】百适滴海藻油DHA胶囊90粒+迪巧钙维生素D颗粒15袋*2盒宝宝成长好帮手套装：美国进口百适滴海藻油DHA胶囊90粒*1盒 +美国进口迪巧钙维生素D颗粒15袋* 2盒', 4);
INSERT INTO `goodlist` VALUES ('19', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076255538870047.jpg!gthumb', 89, '【儿童补钙】【菠萝味】迪巧 钙维生素D咀嚼片菠萝味1.2g*45片 儿童青少年碳酸钙  补钙【全新上市  菠萝味  小象形状钙片】\n【每日1片】宝宝爱吃 含维生素D3 促钙吸收；\n【迪巧官方福利Q群118772516】', 646);
INSERT INTO `goodlist` VALUES ('20', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250438317960.jpg!gthumb', 336, '【2盒 孕妇钙】迪巧 钙维生素D咀嚼片香草味 1.2g*106片 妊娠期哺乳期补钙【全新上市，香草味 ，嚼出好心情，添加山梨糖醇】\n【每日1-2粒】适合准妈妈 哺乳期妈妈\n【迪巧官方福利Q群118772516】', 56);
INSERT INTO `goodlist` VALUES ('21', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076247783962308.jpg!gthumb', 480, '【3盒 孕妇钙】迪巧 钙维生素D咀嚼片香草味 1.2g*106片 妊娠期哺乳期补钙【全新上市，香草味 ，嚼出好心情，添加山梨糖醇】\n【每日1-2粒】适合准妈妈 哺乳期妈妈\n【迪巧官方福利Q群118772516】', 78);
INSERT INTO `goodlist` VALUES ('22', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076247783962308.jpg!gthumb', 790, '【5盒 孕妇钙】迪巧 钙维生素D咀嚼片香草味 1.2g*106片 妊娠期哺乳期补钙【全新上市，香草味 ，嚼出好心情，添加山梨糖醇】\n【每日1-2粒】适合准妈妈 哺乳期妈妈\n【迪巧官方福利Q群118772516】', 89);
INSERT INTO `goodlist` VALUES ('23', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977722725739003.jpg!gthumb', 440, '【5盒送法兰绒毯】迪巧 维D钙咀嚼片120片钙片 孕妇哺乳期成人中老年补钙【赠品数量有限，送完即止】 \n【每日1-2粒】【添加山梨糖醇 降低便秘发生率】准妈妈、中老年、成年人补钙 美国进口 无糖\n【迪巧官方福利Q群118772516】', 67);
INSERT INTO `goodlist` VALUES ('24', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977721254286048.jpg!gthumb', 264, '【3盒送密封罐】迪巧 维D钙咀嚼片120片钙片 孕妇哺乳期成人中老年补钙【赠品数量有限，送完即止】 \n【每日1-2粒】【添加山梨糖醇 降低便秘发生率】准妈妈、中老年、成年人补钙 美国进口 无糖\n【迪巧官方福利Q群118772516】', 324);
INSERT INTO `goodlist` VALUES ('25', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06063886349867935.jpg!gthumb', 238, '【2瓶加强版】美版迪巧成人钙片D-Cal 维D钙咀嚼片水果味60片（每片含钙600mg）孕妇中老年【“1片更比2片强”——推荐孕期准妈妈服用】\n【每片含钙量600mg，维生素D3 1000IU】\n高含量钙，健康骨骼，添加更多VD3，高效促进钙吸；添加山梨糖醇，不易便秘，咀嚼服用，好吃易吸收 \n【迪巧官方会员Q群118772516】\n【产品效期2021-12】', 554);
INSERT INTO `goodlist` VALUES ('26', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06087375590780358.jpg!gthumb', 297, '【3盒装】迪巧 小儿碳酸钙D3颗粒1g*20袋 婴幼儿宝宝儿童婴儿0-3岁补钙', 66);
INSERT INTO `goodlist` VALUES ('27', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131539503935960.jpg!gthumb', 352, '【4盒送陶瓷刀具】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松【赠品数量有限，送完即止】 \n【每日1-2粒】【添加山梨糖醇 降低便秘发生率】准妈妈、中老年、成年人补钙 美国进口 无糖 \n【迪巧官方福利Q群118772516】', 44);
INSERT INTO `goodlist` VALUES ('28', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131541359930587.jpg!gthumb', 528, '【6盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松【赠品数量有限，送完即止】 \n【每日1-2粒】【添加山梨糖醇 降低便秘发生率】准妈妈、中老年、成年人补钙 美国进口 无糖 \n【迪巧官方福利Q群118772516】', 44);
INSERT INTO `goodlist` VALUES ('29', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751375117377322.jpg!gthumb', 168, '【补钙又补雌激素】迪巧 秀源女性钙片 30片 中老年女性补钙 含大豆异黄酮 增加骨密度 调节血脂新旧包装更替中，随机发货，请以收到实物为准\n【每日1-2次，每次1片，专为成年女性设计，适合血脂偏高的成年女性，中老年女性】\n【迪巧官方福利Q群118772516】', 33);
INSERT INTO `goodlist` VALUES ('30', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977722249864488.jpg!gthumb', 176, '【2盒送便携药盒】迪巧 维D钙咀嚼片120片钙片无糖  孕妇哺乳期成人中老年补钙防治骨质疏松【赠品数量有限，送完即止】 \n【每日1-2粒】【添加山梨糖醇 降低便秘发生率】准妈妈、中老年、成年人补钙 美国进口 无糖\n【迪巧官方福利Q群118772516】', 7);
INSERT INTO `goodlist` VALUES ('31', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06087376652410442.jpg!gthumb', 490, '【5盒装】迪巧小儿碳酸钙D3颗粒1g*20袋 婴幼儿宝宝儿童婴儿0-3岁补钙', 788);
INSERT INTO `goodlist` VALUES ('32', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06219719453319073.jpg!gthumb', 198, '【2盒装】迪巧小儿碳酸钙D3颗粒1g*20袋 婴幼儿宝宝儿童婴儿0-3岁补钙', 99);
INSERT INTO `goodlist` VALUES ('33', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974928564105937.jpg!gthumb', 473, '【3盒特惠】迪巧牌秀源女性片30片 中老年更年期补钙钙片 添加大豆异黄酮  增加骨密度 调节血脂新旧包装更替中，随机发货，请以收到实物为准\n【每日1-2次，每次1片，专为成年女性设计，适合血脂偏高的成年女性，中老年女性】 \n【迪巧官方福利Q群118772516】', 32);
INSERT INTO `goodlist` VALUES ('34', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975037977893612.jpg!gthumb', 418, '【6盒送婴儿定型枕】迪巧 钙维生素D颗粒15袋 婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味好吸收【赠品数量有限，送完即止】 \n【每日1袋，仅需5ml温水冲调，方便喂服】不给宝宝的小胃增加负担 淡口味，不影响宝宝味蕾发育 \n【迪巧官方福利Q群118772516】', 34);
INSERT INTO `goodlist` VALUES ('35', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06051092296005400.jpg!gthumb', 50, '【美版迪巧儿童钙片】D-Cal 维D钙咀嚼片水果味30片 儿童青少年缺钙补钙 三种水果味【每次1片，每日1-2次】【三种水果味 小象形状钙片】宝宝爱吃 含维生素D3 促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心 \n【迪巧官方福利Q群118772516】\n【产品效期2020-12】', 222);
INSERT INTO `goodlist` VALUES ('36', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974966482789225.jpg!gthumb', 279, '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收【赠品数量有限，送完即止】\n【每日1袋，仅需5ml温水冲调，方便喂服】不给宝宝的小胃增加负担 淡口味，不影响宝宝味蕾发育 \n【迪巧官方福利Q群118772516】', 343);
INSERT INTO `goodlist` VALUES ('37', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052051265606697.jpg!gthumb', 98, '【2瓶】美版迪巧儿童钙片D-Cal 维D钙咀嚼片30片 儿童青少年缺钙补钙 三种水果味【每次1片，每日1-2次】【三种水果味 小象形状钙片】宝宝爱吃 含维生素D3 促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心 \n【迪巧官方福利Q群118772516】\n【产品效期2020-12】', 55);
INSERT INTO `goodlist` VALUES ('38', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977723517311496.jpg!gthumb', 410, '【5盒送儿童积木】迪巧 儿童维D钙咀嚼片60片钙片 儿童青少年补钙3岁以上缺钙 三种水果味小象造型【赠品数量有限，送完即止】 \n【每日1片】【三种果味 小象形状钙片】宝宝爱吃 含维生素D3 促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心\n【迪巧官方福利Q群118772516】', 666);
INSERT INTO `goodlist` VALUES ('39', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977723334411975.jpg!gthumb', 249, '【3盒送收纳筐】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型【赠品数量有限，送完即止】 \n【每日1片】【三种果味 小象形状钙片】宝宝爱吃 含维生素D3 促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心\n【迪巧官方福利Q群118772516】', 777);
INSERT INTO `goodlist` VALUES ('40', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05978364956125563.jpg!gthumb', 168, '【2盒送身高卷尺】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙  三种水果味小象造型【赠品数量有限，送完即止】 \n【每日1片】【三种果味 小象形状钙片】宝宝爱吃 含维生素D3 促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心\n【迪巧官方福利Q群118772516】', 999);
INSERT INTO `goodlist` VALUES ('41', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06064816242308035.jpg!gthumb', 139, '【3瓶】美版迪巧儿童钙片D-Cal 维D钙咀嚼片30片 儿童青少年缺钙补钙 三种水果味【每次1片，每日1-2次】【三种水果味 小象形状钙片】宝宝爱吃 含维生素D3 促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心 \n【迪巧官方福利Q群118772516】\n【产品效期2020-12】', 332);
INSERT INTO `goodlist` VALUES ('42', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06108085095548861.jpg!gthumb', 298, '【补钙搭档3+1】迪巧小儿碳酸钙颗粒20袋*3盒 +纽特舒玛儿童维生素D3喷剂1瓶【纽特舒玛D3喷剂：每天1喷】喷剂式设计，快速吸收，保证D3活性，促进钙吸收（效期至2020年9月） \n【迪巧钙颗粒：每日1袋】添加维生素K2，促钙成骨，5ml水冲服，淡口味不影响宝宝味蕾发育（效期至2020年12月） \n【会员福利Q群：118772516】', 32);
INSERT INTO `goodlist` VALUES ('43', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131254043314763.jpg!gthumb', 209, '【买3送2原品到手5盒】迪巧 钙维生素D颗粒15袋/盒*5盒 婴幼儿碳酸钙D3颗粒 淡口味好吸收【买赠活动不与其它优惠活动同享，限量1000套，送完即止】 \n【每日1袋，仅需5ml温水冲调，方便喂服】不给宝宝的小胃增加负担 淡口味，不影响宝宝味蕾发育 \n【迪巧官方福利Q群118772516】', 111);
INSERT INTO `goodlist` VALUES ('44', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751360615211285.jpg!gthumb', 88, '【水果口味钙】迪巧 维D钙咀嚼片120片钙片 成人孕妇中老年补钙无糖【每日1-2粒】【添加山梨糖醇 降低便秘发生率】准妈妈、中老年、成年人补钙 美国进口 无糖', 144);
INSERT INTO `goodlist` VALUES ('45', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877384502373694.jpg!gthumb', 218, '【补钙黄金搭档】美国纽特舒玛儿童维生素D3喷剂1瓶+金标迪巧小儿碳酸钙颗粒1盒【纽特舒玛D3喷剂：每天1喷】喷剂式设计，快速吸收，保证D3活性，促进钙吸收（效期至2020年9月） \n【迪巧钙颗粒：每日1袋】添加维生素K2，促钙成骨，5ml水冲服，淡口味不影响宝宝味蕾发育（效期至2020年12月）\n【会员福利Q群：118772516】', 123);
INSERT INTO `goodlist` VALUES ('46', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06051092071384625.jpg!gthumb', 129, '【加强版】美版迪巧成人钙片D-Cal 维D钙咀嚼片水果味60片（每片含钙600mg）孕妇中老年补钙【“1片更比2片强”——推荐孕期准妈妈服用】\n【每片含钙量600mg，维生素D3 1000IU】\n高含量钙，健康骨骼，添加更多VD3，高效促进钙吸；添加山梨糖醇，不易便秘，咀嚼服用，好吃易吸收 \n【迪巧官方会员Q群118772516】\n【产品效期2021-12】', 221);
INSERT INTO `goodlist` VALUES ('47', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05900770188624586.jpg!gthumb', 317, '【补钙搭档2+1】美国迪巧小儿碳酸钙颗粒20袋*2盒+纽特舒玛儿童维生素D3喷剂1瓶【纽特舒玛D3喷剂：每天1喷】喷剂式设计，快速吸收，保证D3活性，促进钙吸收（效期至2020年9月） \n【迪巧钙颗粒：每日1袋】添加维生素K2，促钙成骨，5ml水冲服，淡口味不影响宝宝味蕾发育（效期至2020年12月） \n【会员福利Q群：118772516】', 33);
INSERT INTO `goodlist` VALUES ('48', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751367839528510.jpg!gthumb', 85, '【水果口味 小象造型钙片】迪巧 儿童维D钙咀嚼钙片 60片儿童青少年宝宝补钙【每日1片】【三种果味 小象形状钙片】宝宝爱吃  含维生素D3  促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心', 44);
INSERT INTO `goodlist` VALUES ('49', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05808362736571366.jpg!gthumb', 70, '【淡口味钙 不伤宝宝味蕾】迪巧钙维生素D颗粒小儿碳酸钙D3颗粒15袋 儿童补钙【每日1袋】【仅需5ml温水冲调，方便喂服】不给宝宝的小胃增加负担 淡口味，不影响宝宝味蕾发育', 66);
INSERT INTO `goodlist` VALUES ('50', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06034740989901344.jpg!gthumb', 189, '【孕期补钙补铁特惠组合】迪巧孕妇钙片120片+红源达多糖铁10粒*3盒【迪巧钙片：美国进口，无糖配方，添加VD3促进钙吸收，水果味咀嚼吃，每天2-3片，轻松度孕期 】\n【红源达多糖铁：用于孕妇及哺乳期妇女缺铁性贫血，每天1-2粒】', 33);
INSERT INTO `goodlist` VALUES ('51', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06083915653889180.jpg!gthumb', 345, '【3瓶加强版】美版迪巧成人钙片D-Cal 维D钙咀嚼片水果味60片（每片含钙600mg）孕妇中老年【“1片更比2片强”——推荐孕期准妈妈服用】 \n【每片含钙量600mg，维生素D3 1000IU】 \n高含量钙，健康骨骼，添加更多VD3，高效促进钙吸；添加山梨糖醇，不易便秘，咀嚼服用，好吃易吸收 \n【迪巧官方会员Q群118772516】 \n【产品效期2021-12】', 22);

-- ----------------------------
-- Table structure for imglist
-- ----------------------------
DROP TABLE IF EXISTS `imglist`;
CREATE TABLE `imglist`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imglist
-- ----------------------------
INSERT INTO `imglist` VALUES ('1', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05937031530295589.jpg!gthumb');
INSERT INTO `imglist` VALUES ('1', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877383107581507.jpg!gthumb');
INSERT INTO `imglist` VALUES ('1', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-05-02/800x800/5907e70752b8a_800x800.jpg');
INSERT INTO `imglist` VALUES ('1', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877383189366298.jpg!gthumb');
INSERT INTO `imglist` VALUES ('1', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06116752118632992.jpg!gthumb');
INSERT INTO `imglist` VALUES ('2', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105404062791947.jpg!gthumb');
INSERT INTO `imglist` VALUES ('2', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105404726367661.jpg!gthumb');
INSERT INTO `imglist` VALUES ('2', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105404750106293.jpg!gthumb');
INSERT INTO `imglist` VALUES ('2', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105404775126704.jpg!gthumb');
INSERT INTO `imglist` VALUES ('2', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105404802648934.jpg!gthumb');
INSERT INTO `imglist` VALUES ('3', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06059765044920765.jpg!gthumb');
INSERT INTO `imglist` VALUES ('3', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-04-14/800x800/58f0266e4790e_800x800.jpg');
INSERT INTO `imglist` VALUES ('3', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-07-26/800x800/597844a126e3c_800x800.jpg');
INSERT INTO `imglist` VALUES ('3', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06116752118632992.jpg!gthumb');
INSERT INTO `imglist` VALUES ('3', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-07-26/800x800/597844a10f5a7_800x800.jpg');
INSERT INTO `imglist` VALUES ('4', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06059752019374185.jpg!gthumb');
INSERT INTO `imglist` VALUES ('4', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-04-28/800x800/59029add09a94_800x800.jpg');
INSERT INTO `imglist` VALUES ('4', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-04-28/800x800/59029add13bd0_800x800.jpg');
INSERT INTO `imglist` VALUES ('4', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-04-28/800x800/59029add2541d_800x800.jpg');
INSERT INTO `imglist` VALUES ('4', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06116752118632992.jpg!gthumb');
INSERT INTO `imglist` VALUES ('5', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06059641401263101.jpg!gthumb');
INSERT INTO `imglist` VALUES ('5', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-04-14/800x800/58f02552b2a27_800x800.jpg');
INSERT INTO `imglist` VALUES ('5', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-07-26/800x800/597843497c24b_800x800.jpg');
INSERT INTO `imglist` VALUES ('5', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-07-26/800x800/597843497544a_800x800.jpg');
INSERT INTO `imglist` VALUES ('5', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06116752118632992.jpg!gthumb');
INSERT INTO `imglist` VALUES ('6', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052070478926900.jpg!gthumb');
INSERT INTO `imglist` VALUES ('6', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052070176798371.jpg!gthumb');
INSERT INTO `imglist` VALUES ('6', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-06-17/800x800/5944d7e896e3f_800x800.jpg');
INSERT INTO `imglist` VALUES ('6', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052070115753508.jpg!gthumb');
INSERT INTO `imglist` VALUES ('6', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052070147927366.jpg!gthumb');
INSERT INTO `imglist` VALUES ('7', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052050820930603.jpg!gthumb');
INSERT INTO `imglist` VALUES ('7', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052051003694845.jpg!gthumb');
INSERT INTO `imglist` VALUES ('7', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052050900811536.jpg!gthumb');
INSERT INTO `imglist` VALUES ('7', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052050930980605.jpg!gthumb');
INSERT INTO `imglist` VALUES ('7', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052050959243797.jpg!gthumb');
INSERT INTO `imglist` VALUES ('8', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb');
INSERT INTO `imglist` VALUES ('8', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105388911099586.jpg!gthumb');
INSERT INTO `imglist` VALUES ('8', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105388766484382.jpg!gthumb');
INSERT INTO `imglist` VALUES ('8', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389048845913.jpg!gthumb');
INSERT INTO `imglist` VALUES ('8', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105390386880755.jpg!gthumb');
INSERT INTO `imglist` VALUES ('9', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb');
INSERT INTO `imglist` VALUES ('9', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105388911099586.jpg!gthumb');
INSERT INTO `imglist` VALUES ('9', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105388766484382.jpg!gthumb');
INSERT INTO `imglist` VALUES ('9', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389048845913.jpg!gthumb');
INSERT INTO `imglist` VALUES ('9', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105390386880755.jpg!gthumb');
INSERT INTO `imglist` VALUES ('10', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb');
INSERT INTO `imglist` VALUES ('10', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105388911099586.jpg!gthumb');
INSERT INTO `imglist` VALUES ('10', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105388766484382.jpg!gthumb');
INSERT INTO `imglist` VALUES ('10', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389048845913.jpg!gthumb');
INSERT INTO `imglist` VALUES ('10', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105390386880755.jpg!gthumb');
INSERT INTO `imglist` VALUES ('11', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06083923491768190.jpg!gthumb');
INSERT INTO `imglist` VALUES ('11', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052070478926900.jpg!gthumb');
INSERT INTO `imglist` VALUES ('11', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052069946929449.jpg!gthumb');
INSERT INTO `imglist` VALUES ('11', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052069982259645.jpg!gthumb');
INSERT INTO `imglist` VALUES ('11', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052070176798371.jpg!gthumb');
INSERT INTO `imglist` VALUES ('12', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105402488755862.jpg!gthumb');
INSERT INTO `imglist` VALUES ('12', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105402838603626.jpg!gthumb');
INSERT INTO `imglist` VALUES ('12', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105402868605652.jpg!gthumb');
INSERT INTO `imglist` VALUES ('12', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105402890455903.jpg!gthumb');
INSERT INTO `imglist` VALUES ('12', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105402924399353.jpg!gthumb');
INSERT INTO `imglist` VALUES ('13', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877383026609268.jpg!gthumb');
INSERT INTO `imglist` VALUES ('13', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-04-14/800x800/58f0237a498d7_800x800.jpg');
INSERT INTO `imglist` VALUES ('13', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877383107581507.jpg!gthumb');
INSERT INTO `imglist` VALUES ('13', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877383189366298.jpg!gthumb');
INSERT INTO `imglist` VALUES ('14', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076251113851347.jpg!gthumb');
INSERT INTO `imglist` VALUES ('14', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076251888242191.jpg!gthumb');
INSERT INTO `imglist` VALUES ('14', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076251845676490.jpg!gthumb');
INSERT INTO `imglist` VALUES ('14', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076251822658199.jpg!gthumb');
INSERT INTO `imglist` VALUES ('15', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076252561940857.jpg!gthumb');
INSERT INTO `imglist` VALUES ('15', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076253429903609.jpg!gthumb');
INSERT INTO `imglist` VALUES ('15', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076253451362821.jpg!gthumb');
INSERT INTO `imglist` VALUES ('15', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076253482477395.jpg!gthumb');
INSERT INTO `imglist` VALUES ('15', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076253429903609.jpg!gthumb');
INSERT INTO `imglist` VALUES ('16', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076247783962308.jpg!gthumb');
INSERT INTO `imglist` VALUES ('16', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250438317960.jpg!gthumb');
INSERT INTO `imglist` VALUES ('16', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250464254531.jpg!gthumb');
INSERT INTO `imglist` VALUES ('16', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250486677756.jpg!gthumb');
INSERT INTO `imglist` VALUES ('17', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06087287262414710.jpg!gthumb');
INSERT INTO `imglist` VALUES ('17', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076251888242191.jpg!gthumb');
INSERT INTO `imglist` VALUES ('17', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076255538870047.jpg!gthumb');
INSERT INTO `imglist` VALUES ('17', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076252561940857.jpg!gthumb');
INSERT INTO `imglist` VALUES ('17', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06087287532195398.jpg!gthumb');
INSERT INTO `imglist` VALUES ('18', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06153902517721599.jpg!gthumb');
INSERT INTO `imglist` VALUES ('18', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974229181511980.jpg!gthumb');
INSERT INTO `imglist` VALUES ('18', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06153906699362058.jpg!gthumb');
INSERT INTO `imglist` VALUES ('19', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076255538870047.jpg!gthumb');
INSERT INTO `imglist` VALUES ('19', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076255661405005.jpg!gthumb');
INSERT INTO `imglist` VALUES ('19', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076255687404627.jpg!gthumb');
INSERT INTO `imglist` VALUES ('19', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076255714671968.jpg!gthumb');
INSERT INTO `imglist` VALUES ('19', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076255743702969.jpg!gthumb');
INSERT INTO `imglist` VALUES ('20', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250438317960.jpg!gthumb');
INSERT INTO `imglist` VALUES ('20', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06087391007907822.jpg!gthumb');
INSERT INTO `imglist` VALUES ('20', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250464254531.jpg!gthumb');
INSERT INTO `imglist` VALUES ('20', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250486677756.jpg!gthumb');
INSERT INTO `imglist` VALUES ('20', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250513849445.jpg!gthumb');
INSERT INTO `imglist` VALUES ('21', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076247783962308.jpg!gthumb');
INSERT INTO `imglist` VALUES ('21', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250438317960.jpg!gthumb');
INSERT INTO `imglist` VALUES ('21', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250464254531.jpg!gthumb');
INSERT INTO `imglist` VALUES ('21', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250486677756.jpg!gthumb');
INSERT INTO `imglist` VALUES ('21', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250513849445.jpg!gthumb');
INSERT INTO `imglist` VALUES ('22', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076247783962308.jpg!gthumb');
INSERT INTO `imglist` VALUES ('22', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250438317960.jpg!gthumb');
INSERT INTO `imglist` VALUES ('22', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250464254531.jpg!gthumb');
INSERT INTO `imglist` VALUES ('22', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250486677756.jpg!gthumb');
INSERT INTO `imglist` VALUES ('22', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06076250513849445.jpg!gthumb');
INSERT INTO `imglist` VALUES ('23', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977722725739003.jpg!gthumb');
INSERT INTO `imglist` VALUES ('23', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087818345901.jpg!gthumb');
INSERT INTO `imglist` VALUES ('23', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087850439459.jpg!gthumb');
INSERT INTO `imglist` VALUES ('23', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087890723439.jpg!gthumb');
INSERT INTO `imglist` VALUES ('23', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131504689314423.jpg!gthumb');
INSERT INTO `imglist` VALUES ('24', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977721254286048.jpg!gthumb');
INSERT INTO `imglist` VALUES ('24', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087818345901.jpg!gthumb');
INSERT INTO `imglist` VALUES ('24', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06001683902799280.jpg!gthumb');
INSERT INTO `imglist` VALUES ('24', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087890723439.jpg!gthumb');
INSERT INTO `imglist` VALUES ('24', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087918959847.jpg!gthumb');
INSERT INTO `imglist` VALUES ('25', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06063886349867935.jpg!gthumb');
INSERT INTO `imglist` VALUES ('25', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-09-29/800x800/59ce0a28a32f4_800x800.jpg');
INSERT INTO `imglist` VALUES ('25', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06063886559636760.jpg!gthumb');
INSERT INTO `imglist` VALUES ('25', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06063886592034439.jpg!gthumb');
INSERT INTO `imglist` VALUES ('25', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06063886625466199.jpg!gthumb');
INSERT INTO `imglist` VALUES ('26', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06087375590780358.jpg!gthumb');
INSERT INTO `imglist` VALUES ('26', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06103825536435110.jpg!gthumb');
INSERT INTO `imglist` VALUES ('27', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131539503935960.jpg!gthumb');
INSERT INTO `imglist` VALUES ('27', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977722249864488.jpg!gthumb');
INSERT INTO `imglist` VALUES ('27', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06001949297167538.jpg!gthumb');
INSERT INTO `imglist` VALUES ('27', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06001949296901787.jpg!gthumb');
INSERT INTO `imglist` VALUES ('27', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131540180547223.jpg!gthumb');
INSERT INTO `imglist` VALUES ('28', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131541359930587.jpg!gthumb');
INSERT INTO `imglist` VALUES ('28', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977722249864488.jpg!gthumb');
INSERT INTO `imglist` VALUES ('28', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06001949296316194.jpg!gthumb');
INSERT INTO `imglist` VALUES ('28', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06001949296901787.jpg!gthumb');
INSERT INTO `imglist` VALUES ('28', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131542909171623.jpg!gthumb');
INSERT INTO `imglist` VALUES ('29', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751375117377322.jpg!gthumb');
INSERT INTO `imglist` VALUES ('29', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751375117377322.jpg!gthumb');
INSERT INTO `imglist` VALUES ('29', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751376900797801.jpg!gthumb');
INSERT INTO `imglist` VALUES ('29', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751376928162827.jpg!gthumb');
INSERT INTO `imglist` VALUES ('29', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751376956729440.jpg!gthumb');
INSERT INTO `imglist` VALUES ('30', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977722249864488.jpg!gthumb');
INSERT INTO `imglist` VALUES ('30', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06031918340324121.jpg!gthumb');
INSERT INTO `imglist` VALUES ('30', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087818345901.jpg!gthumb');
INSERT INTO `imglist` VALUES ('30', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087850439459.jpg!gthumb');
INSERT INTO `imglist` VALUES ('30', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975087890723439.jpg!gthumb');
INSERT INTO `imglist` VALUES ('31', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06087376652410442.jpg!gthumb');
INSERT INTO `imglist` VALUES ('32', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06219719453319073.jpg!gthumb');
INSERT INTO `imglist` VALUES ('33', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974928564105937.jpg!gthumb');
INSERT INTO `imglist` VALUES ('33', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974927810503092.jpg!gthumb');
INSERT INTO `imglist` VALUES ('33', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974927807126906.jpg!gthumb');
INSERT INTO `imglist` VALUES ('33', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974927807986875.jpg!gthumb');
INSERT INTO `imglist` VALUES ('34', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975037977893612.jpg!gthumb');
INSERT INTO `imglist` VALUES ('34', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977724139210746.jpg!gthumb');
INSERT INTO `imglist` VALUES ('34', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975038032397601.jpg!gthumb');
INSERT INTO `imglist` VALUES ('34', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975038060114259.jpg!gthumb');
INSERT INTO `imglist` VALUES ('34', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975038092497696.jpg!gthumb');
INSERT INTO `imglist` VALUES ('35', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06051092296005400.jpg!gthumb');
INSERT INTO `imglist` VALUES ('35', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050294907907589.jpg!gthumb');
INSERT INTO `imglist` VALUES ('35', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050295207448344.jpg!gthumb');
INSERT INTO `imglist` VALUES ('35', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-04-25/800x800/58ff10db39301_800x800.jpg');
INSERT INTO `imglist` VALUES ('35', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050295143366543.jpg!gthumb');
INSERT INTO `imglist` VALUES ('36', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06052051265606697.jpg!gthumb');
INSERT INTO `imglist` VALUES ('36', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050294907907589.jpg!gthumb');
INSERT INTO `imglist` VALUES ('36', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050295207448344.jpg!gthumb');
INSERT INTO `imglist` VALUES ('36', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050295143366543.jpg!gthumb');
INSERT INTO `imglist` VALUES ('37', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974966482789225.jpg!gthumb');
INSERT INTO `imglist` VALUES ('37', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977724646302651.jpg!gthumb');
INSERT INTO `imglist` VALUES ('37', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974966518289613.jpg!gthumb');
INSERT INTO `imglist` VALUES ('37', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974966553902426.jpg!gthumb');
INSERT INTO `imglist` VALUES ('37', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05974966583290372.jpg!gthumb');
INSERT INTO `imglist` VALUES ('38', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977723517311496.jpg!gthumb');
INSERT INTO `imglist` VALUES ('38', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06002530196311606.jpg!gthumb');
INSERT INTO `imglist` VALUES ('38', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975071008640425.jpg!gthumb');
INSERT INTO `imglist` VALUES ('38', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975071047876299.jpg!gthumb');
INSERT INTO `imglist` VALUES ('38', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975071097006477.jpg!gthumb');
INSERT INTO `imglist` VALUES ('39', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05977723334411975.jpg!gthumb');
INSERT INTO `imglist` VALUES ('39', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06031934761634828.jpg!gthumb');
INSERT INTO `imglist` VALUES ('39', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975071008640425.jpg!gthumb');
INSERT INTO `imglist` VALUES ('39', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975071047876299.jpg!gthumb');
INSERT INTO `imglist` VALUES ('39', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975071097006477.jpg!gthumb');
INSERT INTO `imglist` VALUES ('40', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05978364956125563.jpg!gthumb');
INSERT INTO `imglist` VALUES ('40', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975070980642201.jpg!gthumb');
INSERT INTO `imglist` VALUES ('40', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975071008640425.jpg!gthumb');
INSERT INTO `imglist` VALUES ('40', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_05975071047876299.jpg!gthumb');
INSERT INTO `imglist` VALUES ('40', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131490518292748.jpg!gthumb');
INSERT INTO `imglist` VALUES ('41', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06064816242308035.jpg!gthumb');
INSERT INTO `imglist` VALUES ('41', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06064816873047292.jpg!gthumb');
INSERT INTO `imglist` VALUES ('41', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06064816904413150.jpg!gthumb');
INSERT INTO `imglist` VALUES ('41', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06064816935612626.jpg!gthumb');
INSERT INTO `imglist` VALUES ('41', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06064816960968687.jpg!gthumb');
INSERT INTO `imglist` VALUES ('42', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06108085095548861.jpg!gthumb');
INSERT INTO `imglist` VALUES ('42', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06064067255263095.jpg!gthumb');
INSERT INTO `imglist` VALUES ('42', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05742520624692348.jpg!gthumb');
INSERT INTO `imglist` VALUES ('43', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06131254043314763.jpg!gthumb');
INSERT INTO `imglist` VALUES ('43', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06124388851243095.jpg!gthumb');
INSERT INTO `imglist` VALUES ('43', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06124388904761266.jpg!gthumb');
INSERT INTO `imglist` VALUES ('43', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06124388948146825.jpg!gthumb');
INSERT INTO `imglist` VALUES ('43', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06124388851243095.jpg!gthumb');
INSERT INTO `imglist` VALUES ('44', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751360615211285.jpg!gthumb');
INSERT INTO `imglist` VALUES ('44', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05827167287864661.jpg!gthumb');
INSERT INTO `imglist` VALUES ('44', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751365793301387.jpg!gthumb');
INSERT INTO `imglist` VALUES ('44', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751365912550281.jpg!gthumb');
INSERT INTO `imglist` VALUES ('44', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751365966204762.jpg!gthumb');
INSERT INTO `imglist` VALUES ('45', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877384502373694.jpg!gthumb');
INSERT INTO `imglist` VALUES ('45', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-03-15/800x800/58c8c650ca2a0_800x800.jpg');
INSERT INTO `imglist` VALUES ('45', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-03-15/800x800/58c8c650dd307_800x800.jpg');
INSERT INTO `imglist` VALUES ('45', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877383107581507.jpg!gthumb');
INSERT INTO `imglist` VALUES ('45', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05877383189366298.jpg!gthumb');
INSERT INTO `imglist` VALUES ('46', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06051092071384625.jpg!gthumb');
INSERT INTO `imglist` VALUES ('46', 'https://static.baiyangwang.com/Uploads/Goods_pic/2017-06-13/800x800/593fa237e8b79_800x800.jpg');
INSERT INTO `imglist` VALUES ('46', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050304857196987.jpg!gthumb');
INSERT INTO `imglist` VALUES ('46', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050305353954558.jpg!gthumb');
INSERT INTO `imglist` VALUES ('46', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06050305305639626.jpg!gthumb');
INSERT INTO `imglist` VALUES ('47', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05900770188624586.jpg!gthumb');
INSERT INTO `imglist` VALUES ('47', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_05742520624692348.jpg!gthumb');
INSERT INTO `imglist` VALUES ('47', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06064067255263095.jpg!gthumb');
INSERT INTO `imglist` VALUES ('48', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751367839528510.jpg!gthumb');
INSERT INTO `imglist` VALUES ('48', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05827157399041800.jpg!gthumb');
INSERT INTO `imglist` VALUES ('48', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751372173233976.jpg!gthumb');
INSERT INTO `imglist` VALUES ('48', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751372203788710.jpg!gthumb');
INSERT INTO `imglist` VALUES ('48', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05751372229945789.jpg!gthumb');
INSERT INTO `imglist` VALUES ('49', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05808362736571366.jpg!gthumb');
INSERT INTO `imglist` VALUES ('49', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05827153654463739.jpg!gthumb');
INSERT INTO `imglist` VALUES ('49', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05808363873751601.jpg!gthumb');
INSERT INTO `imglist` VALUES ('49', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05808363925721327.jpg!gthumb');
INSERT INTO `imglist` VALUES ('49', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05808363962166103.jpg!gthumb');
INSERT INTO `imglist` VALUES ('50', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06034740989901344.jpg!gthumb');
INSERT INTO `imglist` VALUES ('50', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06001949296901787.jpg!gthumb');
INSERT INTO `imglist` VALUES ('50', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06034724594271846.jpg!gthumb');
INSERT INTO `imglist` VALUES ('50', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06034734696016202.jpg!gthumb');
INSERT INTO `imglist` VALUES ('50', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/1/1_06034734726986727.jpg!gthumb');
INSERT INTO `imglist` VALUES ('51', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06083915653889180.jpg!gthumb');
INSERT INTO `imglist` VALUES ('51', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06063886559636760.jpg!gthumb');
INSERT INTO `imglist` VALUES ('51', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06063886592034439.jpg!gthumb');
INSERT INTO `imglist` VALUES ('51', 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06063886625466199.jpg!gthumb');

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar`  (
  `id` int(11) NOT NULL COMMENT '商品id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float(10, 2) NULL DEFAULT NULL,
  `sum` int(11) NULL DEFAULT NULL COMMENT '库存',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `uid` int(11) NULL DEFAULT NULL COMMENT '账号id',
  `num` int(10) NULL DEFAULT NULL COMMENT '添加的商品数量'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------
INSERT INTO `shoppingcar` VALUES (49, '【淡口味钙 不伤宝宝味蕾】迪巧钙维生素D颗粒小儿碳酸钙D3颗粒15袋 儿童补钙【每日1袋】【仅需5ml温水冲调，方便喂服】不给宝宝的小胃增加负担 淡口味，不影响宝宝味蕾发育', 70.00, 66, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/7/7_05808362736571366.jpg!gthumb', '2019-10-12 11:18:49', 1, 1);
INSERT INTO `shoppingcar` VALUES (8, '【迪巧旗舰店】迪巧 钙维生素D咀嚼片1.2g*45片 水果味儿童青少年碳酸钙小儿宝宝补钙 橙子味', 79.00, 545, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/17/17_06105389216049513.jpg!gthumb', '2019-10-12 08:54:50', 69, 1);
INSERT INTO `shoppingcar` VALUES (35, '【美版迪巧儿童钙片】D-Cal 维D钙咀嚼片水果味30片 儿童青少年缺钙补钙 三种水果味【每次1片，每日1-2次】【三种水果味 小象形状钙片】宝宝爱吃 含维生素D3 促钙吸收；无糖配方，不会引起蛀牙，妈妈更放心 \n【迪巧官方福利Q群118772516】\n【产品效期2020-12】', 50.00, 222, 'https://shopncstaticimage.baiyangwang.com/shop/store/goods/2/2_06051092296005400.jpg!gthumb', '2019-10-12 11:18:31', 1, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` tinyint(1) UNSIGNED NULL DEFAULT 1,
  `login_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'yangjia', '123456', 1, NULL);
INSERT INTO `users` VALUES (34, 'yaaaaa', '123456', 1, NULL);
INSERT INTO `users` VALUES (69, 'yaacool', '123456', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
