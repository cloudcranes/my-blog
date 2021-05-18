/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 20/04/2021 02:26:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `views` int(11) NULL DEFAULT NULL,
  `type_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK292449gwg5yf7ocdlmswv9w4j`(`type_id`) USING BTREE,
  INDEX `FK8ky5rrsxh01nkhctmo7d48p82`(`user_id`) USING BTREE,
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (1, b'1', b'1', '1', '2021-04-20 00:46:22', '1', '1', '1', b'1', b'1', b'1', '1', '2021-04-29 00:46:30', 28, 1, 1);
INSERT INTO `t_blog` VALUES (2, b'0', b'1', '文章目录\r\nSpring Cloud入门系列汇总\r\n为什么需要学习Spring Cloud\r\n什么是Spring Cloud\r\n设计目标与优缺点\r\n设计目标\r\n优缺点\r\nSpring Cloud发展前景\r\n整体架构\r\n主要项目\r\nSpring Cloud Config\r\nSpring Cloud Netflix\r\nSpring Cloud Bus\r\nSpring Cloud Consul\r\nSpring Cloud Security\r\nSpring Cloud Sleuth\r\nSpring Cloud Stream\r\nSpring Cloud Task\r\nSpring Cloud Zookeeper\r\nSpring Cloud Gateway\r\nSpring Cloud OpenFeign\r\nSpring Cloud的版本关系\r\nSpring Cloud和SpringBoot版本对应关系\r\nSpring Cloud和各子项目版本对应关系\r\n和Spring Boot的关系\r\nSpring Cloud入门系列汇总\r\n序号	内容	链接地址\r\n1	Spring Cloud入门-十分钟了解Spring Cloud	https://blog.csdn.net/ThinkWon/article/details/103715146\r\n2	Spring Cloud入门-Eureka服务注册与发现(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103726655\r\n3	Spring Cloud入门-Ribbon服务消费者(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103729080\r\n4	Spring Cloud入门-Hystrix断路器(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103732497\r\n5	Spring Cloud入门-Hystrix Dashboard与Turbine断路器监控(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103734664\r\n6	Spring Cloud入门-OpenFeign服务消费者(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103735751\r\n7	Spring Cloud入门-Zuul服务网关(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103738851\r\n8	Spring Cloud入门-Config分布式配置中心(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103739628\r\n9	Spring Cloud入门-Bus消息总线(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103753372\r\n10	Spring Cloud入门-Sleuth服务链路跟踪(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103753896\r\n11	Spring Cloud入门-Consul服务注册发现与配置中心(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103756139\r\n12	Spring Cloud入门-Gateway服务网关(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103757927\r\n13	Spring Cloud入门-Admin服务监控中心(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103758697\r\n14	Spring Cloud入门-Oauth2授权的使用(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103761687\r\n15	Spring Cloud入门-Oauth2授权之JWT集成(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103763364\r\n16	Spring Cloud入门-Oauth2授权之基于JWT完成单点登录(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103766368\r\n17	Spring Cloud入门-Nacos实现注册和配置中心(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103769680\r\n18	Spring Cloud入门-Sentinel实现服务限流、熔断与降级(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103770879\r\n19	Spring Cloud入门-Seata处理分布式事务问题(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103786102\r\n20	Spring Cloud入门-汇总篇(Hoxton版本)	https://blog.csdn.net/ThinkWon/article/details/103786588\r\n为什么需要学习Spring Cloud\r\n不论是商业应用还是用户应用，在业务初期都很简单，我们通常会把它实现为单体结构的应用。但是，随着业务逐渐发展，产品思想会变得越来越复杂，单体结构的应用也会越来越复杂。这就会给应用带来如下的几个问题：\r\n\r\n代码结构混乱：业务复杂，导致代码量很大，管理会越来越困难。同时，这也会给业务的快速迭代带来巨大挑战；\r\n开发效率变低：开发人员同时开发一套代码，很难避免代码冲突。开发过程会伴随着不断解决冲突的过程，这会严重的影响开发效率；\r\n排查解决问题成本高：线上业务发现 bug，修复 bug 的过程可能很简单。但是，由于只有一套代码，需要重新编译、打包、上线，成本很高。\r\n由于单体结构的应用随着系统复杂度的增高，会暴露出各种各样的问题。近些年来，微服务架构逐渐取代了单体架构，且这种趋势将会越来越流行。Spring Cloud是目前最常用的微服务开发框架，已经在企业级开发中大量的应用。\r\n\r\n什么是Spring Cloud\r\nSpring Cloud是一系列框架的有序集合。它利用Spring Boot的开发便利性巧妙地简化了分布式系统基础设施的开发，如服务发现注册、配置中心、智能路由、消息总线、负载均衡、断路器、数据监控等，都可以用Spring Boot的开发风格做到一键启动和部署。Spring Cloud并没有重复制造轮子，它只是将各家公司开发的比较成熟、经得起实际考验的服务框架组合起来，通过Spring Boot风格进行再封装屏蔽掉了复杂的配置和实现原理，最终给开发者留出了一套简单易懂、易部署和易维护的分布式系统开发工具包。\r\n\r\n设计目标与优缺点\r\n设计目标\r\n协调各个微服务，简化分布式系统开发。\r\n\r\n优缺点\r\n微服务的框架那么多比如：dubbo、Kubernetes，为什么就要使用Spring Cloud的呢？\r\n\r\n优点：\r\n\r\n产出于Spring大家族，Spring在企业级开发框架中无人能敌，来头很大，可以保证后续的更新、完善\r\n轻轻松松几行代码，注解或者配置就完成了熔断、负载均衡、注册中心的各种平台功能\r\nSpring Cloud 社区活跃度很高，教程很丰富，遇到问题很容易找到解决方案\r\n服务拆分粒度更细，耦合度比较低，有利于资源重复利用，有利于提高开发效率\r\n可以更精准的制定优化服务方案，提高系统的可维护性\r\n减轻团队的成本，可以并行开发，不用关注其他人怎么开发，先关注自己的开发\r\n微服务可以是跨平台的，可以用任何一种语言开发\r\n适于互联网时代，产品迭代周期更短\r\n缺点：\r\n\r\n微服务过多，治理成本高，不利于维护系统\r\n分布式系统开发的成本高（容错，分布式事务等）对团队挑战大\r\n总的来说优点大过于缺点，目前看来Spring Cloud是一套非常完善的分布式框架，目前很多企业开始用微服务、Spring Cloud的优势是显而易见的。因此对于想研究微服务架构的同学来说，学习Spring Cloud是一个不错的选择。\r\n\r\nSpring Cloud发展前景\r\nSpring Cloud对于中小型互联网公司来说是一种福音，因为这类公司往往没有实力或者没有足够的资金投入去开发自己的分布式系统基础设施，使用Spring Cloud一站式解决方案能在从容应对业务发展的同时大大减少开发成本。同时，随着近几年微服务架构和Docker容器概念的火爆，也会让Spring Cloud在未来越来越“云”化的软件开发风格中立有一席之地，尤其是在五花八门的分布式解决方案中提供了标准化的、全站式的技术方案，意义可能会堪比当年Servlet规范的诞生，有效推进服务端软件系统技术水平的进步。\r\n\r\n整体架构\r\n\r\n\r\n主要项目\r\nSpring Cloud的子项目，大致可分成两类，一类是对现有成熟框架\"Spring Boot化\"的封装和抽象，也是数量最多的项目；第二类是开发了一部分分布式系统的基础设施的实现，如Spring Cloud Stream扮演的就是kafka, ActiveMQ这样的角色。\r\n\r\nSpring Cloud Config\r\n集中配置管理工具，分布式系统中统一的外部配置管理，默认使用Git来存储配置，可以支持客户端配置的刷新及加密、解密操作。\r\n\r\nSpring Cloud Netflix\r\nNetflix OSS 开源组件集成，包括Eureka、Hystrix、Ribbon、Feign、Zuul等核心组件。\r\n\r\nEureka：服务治理组件，包括服务端的注册中心和客户端的服务发现机制；\r\nRibbon：负载均衡的服务调用组件，具有多种负载均衡调用策略；\r\nHystrix：服务容错组件，实现了断路器模式，为依赖服务的出错和延迟提供了容错能力；\r\nFeign：基于Ribbon和Hystrix的声明式服务调用组件；\r\nZuul：API网关组件，对请求提供路由及过滤功能。\r\nSpring Cloud Bus\r\n用于传播集群状态变化的消息总线，使用轻量级消息代理链接分布式系统中的节点，可以用来动态刷新集群中的服务配置。\r\n\r\nSpring Cloud Consul\r\n基于Hashicorp Consul的服务治理组件。\r\n\r\nSpring Cloud Security\r\n安全工具包，对Zuul代理中的负载均衡OAuth2客户端及登录认证进行支持。\r\n\r\nSpring Cloud Sleuth\r\nSpring Cloud应用程序的分布式请求链路跟踪，支持使用Zipkin、HTrace和基于日志（例如ELK）的跟踪。\r\n\r\nSpring Cloud Stream\r\n轻量级事件驱动微服务框架，可以使用简单的声明式模型来发送及接收消息，主要实现为Apache Kafka及RabbitMQ。\r\n\r\nSpring Cloud Task\r\n用于快速构建短暂、有限数据处理任务的微服务框架，用于向应用中添加功能性和非功能性的特性。\r\n\r\nSpring Cloud Zookeeper\r\n基于Apache Zookeeper的服务治理组件。\r\n\r\nSpring Cloud Gateway\r\nAPI网关组件，对请求提供路由及过滤功能。\r\n\r\nSpring Cloud OpenFeign\r\n基于Ribbon和Hystrix的声明式服务调用组件，可以动态创建基于Spring MVC注解的接口实现用于服务调用，在Spring Cloud 2.0中已经取代Feign成为了一等公民。\r\n\r\nSpring Cloud的版本关系\r\nSpring Cloud是一个由许多子项目组成的综合项目，各子项目有不同的发布节奏。 为了管理Spring Cloud与各子项目的版本依赖关系，发布了一个清单，其中包括了某个Spring Cloud版本对应的子项目版本。 为了避免Spring Cloud版本号与子项目版本号混淆，Spring Cloud版本采用了名称而非版本号的命名，这些版本的名字采用了伦敦地铁站的名字，根据字母表的顺序来对应版本时间顺序，例如Angel是第一个版本，Brixton是第二个版本。 当Spring Cloud的发布内容积累到临界点或者一个重大BUG被解决后，会发布一个\"service releases\"版本，简称SRX版本，比如Greenwich.SR2就是Spring Cloud发布的Greenwich版本的第2个SRX版本。目前Spring Cloud的最新版本是Hoxton。\r\n\r\nSpring Cloud和SpringBoot版本对应关系\r\nSpring Cloud Version	SpringBoot Version\r\nHoxton	2.2.x\r\nGreenwich	2.1.x\r\nFinchley	2.0.x\r\nEdgware	1.5.x\r\nDalston	1.5.x\r\nSpring Cloud和各子项目版本对应关系\r\nComponent	Edgware.SR6	Greenwich.SR2\r\nspring-cloud-bus	1.3.4.RELEASE	2.1.2.RELEASE\r\nspring-cloud-commons	1.3.6.RELEASE	2.1.2.RELEASE\r\nspring-cloud-config	1.4.7.RELEASE	2.1.3.RELEASE\r\nspring-cloud-netflix	1.4.7.RELEASE	2.1.2.RELEASE\r\nspring-cloud-security	1.2.4.RELEASE	2.1.3.RELEASE\r\nspring-cloud-consul	1.3.6.RELEASE	2.1.2.RELEASE\r\nspring-cloud-sleuth	1.3.6.RELEASE	2.1.1.RELEASE\r\nspring-cloud-stream	Ditmars.SR5	Fishtown.SR3\r\nspring-cloud-zookeeper	1.2.3.RELEASE	2.1.2.RELEASE\r\nspring-boot	1.5.21.RELEASE	2.1.5.RELEASE\r\nspring-cloud-task	1.2.4.RELEASE	2.1.2.RELEASE\r\nspring-cloud-gateway	1.0.3.RELEASE	2.1.2.RELEASE\r\nspring-cloud-openfeign	暂无	2.1.2.RELEASE\r\n注意：Hoxton版本是基于SpringBoot 2.2.x版本构建的，不适用于1.5.x版本。随着2019年8月SpringBoot 1.5.x版本停止维护，Edgware版本也将停止维护。\r\n\r\n和Spring Boot的关系\r\nSpring Boot 是 Spring 的一套快速配置脚手架，可以基于Spring Boot 快速开发单个微服务，Spring Cloud是一个基于Spring Boot实现的云应用开发工具。Spring -> Spring Boot > Spring Cloud 这样的关系。\r\nSpring Boot可以离开Spring Cloud独立使用开发项目，但是Spring Cloud离不开Spring Boot，属于依赖的关系\r\nSpring Boot专注于快速、方便集成的单个个体微服务，Spring Cloud是关注全局的服务治理框架\r\nSpring Boot使用了默认大于配置的理念，很多集成方案已经帮你选择好了，能不配置就不配置，Spring Cloud很大的一部分是基于Spring Boot来实现，可以不基于Spring Boot吗？不可以', '2021-04-20 01:54:34', 'Spring Boot 快速学习', 'http://rabbitcrows.top/wp-content/uploads/2020/11/78531807_p0.jpg', '', b'1', b'1', b'0', 'Spring Cloud入门-十分钟了解Spring Cloud', '2021-04-20 02:13:52', 2, 2, 1);

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  INDEX `FK5feau0gb4lq47fdb03uboswm8`(`tags_id`) USING BTREE,
  INDEX `FKh4pacwjwofrugxa9hpwaxg6mr`(`blogs_id`) USING BTREE,
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (1, 1);
INSERT INTO `t_blog_tags` VALUES (2, 1);
INSERT INTO `t_blog_tags` VALUES (2, 2);
INSERT INTO `t_blog_tags` VALUES (2, 3);
INSERT INTO `t_blog_tags` VALUES (2, 4);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_comment` bit(1) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blog_id` bigint(20) NULL DEFAULT NULL,
  `parent_comment_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id`) USING BTREE,
  INDEX `FK4jj284r3pb7japogvo6h72q95`(`parent_comment_id`) USING BTREE,
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, b'1', '1', '1', '2021-03-02 00:47:08', NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (1, 'test');
INSERT INTO `t_tag` VALUES (2, 'Spring Boot');
INSERT INTO `t_tag` VALUES (3, 'Java');
INSERT INTO `t_tag` VALUES (4, 'Spring');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, 'test');
INSERT INTO `t_type` VALUES (2, 'Spring Boot');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '/images/wechat.jpg', '2017-10-15 12:36:04', 'luli_lee@163.com', '管理员', '21232f297a57a5a743894a0e4a801fc3', 1, '2017-10-15 12:36:23', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
