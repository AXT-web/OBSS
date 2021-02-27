-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema obss
--

CREATE DATABASE IF NOT EXISTS obss;
USE obss;

--
-- Definition of table `tb_book`
--

DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book` (
  `BookId` int(10) unsigned NOT NULL auto_increment COMMENT '图书编号',
  `BookTypeId` int(10) unsigned NOT NULL COMMENT '图书类型',
  `BookName` varchar(20) NOT NULL COMMENT '图书名字',
  `BookPress` varchar(20) NOT NULL COMMENT '出版社',
  `BookAuthor` varchar(10) NOT NULL COMMENT '图书作者',
  `BookTanslor` varchar(10) default NULL COMMENT '图书译者',
  `BookPrice` int(10) unsigned NOT NULL COMMENT '图书价格',
  `BookPages` int(10) unsigned NOT NULL COMMENT '图书页码',
  `BookOutline` varchar(200) NOT NULL COMMENT '图书简介',
  `BookDealmount` int(10) unsigned NOT NULL COMMENT '成交量',
  `BookLookmount` int(10) unsigned NOT NULL COMMENT '浏览次数',
  `BookStoremount` int(10) unsigned NOT NULL COMMENT '图书库存量',
  PRIMARY KEY  (`BookId`),
  KEY `FK_tb_book_1` (`BookTypeId`),
  CONSTRAINT `FK_tb_book_1` FOREIGN KEY (`BookTypeId`) REFERENCES `tb_booktype` (`BookTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2020120152 DEFAULT CHARSET=utf8 COMMENT='图书信息表';

--
-- Dumping data for table `tb_book`
--

/*!40000 ALTER TABLE `tb_book` DISABLE KEYS */;
INSERT INTO `tb_book` (`BookId`,`BookTypeId`,`BookName`,`BookPress`,`BookAuthor`,`BookTanslor`,`BookPrice`,`BookPages`,`BookOutline`,`BookDealmount`,`BookLookmount`,`BookStoremount`) VALUES 
 (2020120101,1,'解忧杂货店','南海出版社','东野圭吾','无',16,199,'现代人内心流失的东西，这家杂货店能帮你找回',10,10,9),
 (2020120102,2,'PyTorch深度学习实战','机械工业出版社','[美]谢林·托马斯（','无',97,237,'介绍了PyTorch进行深度学习的方法',10,10,10),
 (2020120103,2,'  Spring Boot技术内幕：架构','机械工业出版社','朱智胜','无',79,267,'Spring Boot布道师、技术专家撰写，帮助读者便捷使用Spring Boot、轻松完成\r\n项目调优为宗旨',20,100,30),
 (2020120104,2,'互联网安全建设从0到1','机械工业出版社','林鹏','无',99,322,'介绍运维涉及的网络安全的基础内容',50,50,10),
 (2020120105,2,'CTF特训营:技术详解、解题方法与竞赛技','机械工业出版社','FlappyPig战','无',89,518,'国内老牌CTF战队FlappyPig撰写，从安全技术，解题方法，竞赛技巧，三大维度全面展开',33,22,5),
 (2020120106,2,'大数据原理与实践：复杂信息的准备、共享和','机械工业出版社','[美]朱尔斯·J. ','张桂刚 邢春晓 任广',119,372,'当大数据资源变得越发复杂时，仅靠更强大的计算机系统已无法解决问题。本书带我们重新审视数据准备环节，重点讨论了其中至关重要但又常常被忽略的主题——标识符、不变性、内省和数据索引。此外，书中也涵盖常见的与大数据设计、架构、操作和分析相关的内容，以及涉及法律、社会和伦理问题的非技术性章节。全书视角独特，涉猎广博，尤以医学大数据分析见长，强调基本原理，不关注编程细节和数学公式，适合企业决策者、技术专家以及',45,45,45),
 (2020120107,2,'迁移学习','机械工业出版社','杨强','庄福振',139,333,'迁移学习：解决人工智能的最后一公里问题',220,260,45),
 (2020120108,2,'数据科学概念与实践（原书第2版）','机械工业出版社','[美]维贾伊·库图（','黄智濒',119,366,' 数据科学已经成为从数据中提取价值的基本工具，任何企业都可以将数据收集、存储和处理作为其业务的一部分。本书搭建了一个易于理解的概念框架，帮助读者掌握数据科学的基础知识，并在学习理论的过程中同步使用RapidMiner平台进行实践。书中将分享实用的数据分析方法，讨论如何揭示隐藏的模式和关系，无论你是新手还是专家，都能借助这些方法做出更好的决策和预测。本书非常适合商务用户、数据分析师、商务分析师、工程',45,76,75),
 (2020120109,2,'TinyML：基于TensorFlow ','机械工业出版社','[美]皮特·沃登（P','无',149,432,'\r\n TinyML是指微型机器学习，更准确地说，TinyML是指工程师们在mW功率以下的设备上，实现机器学习的方法、工具和技术。TinyML将深度学习和嵌入式系统相结合，使得微型设备可以做出令人惊叹的事情。作者解释了如何训练足够小以适合任何环境的模型。对于希望在嵌入式系统中搭建机器学习项目的软件及硬件开发人员而言，本书是一个理想的指南，它将一步步地指导你创建一系列TinyML项目。阅读本书无需任何',44,66,78),
 (2020120110,2,'互联网的设计和演化','机械工业出版社','[美]大卫·D. 克','无',119,288,'\r\n 本书由因特网架构设计师撰写，不只描述了今天的因特网，还讨论了曾经设计过或者未来要设计的网络，强调架构而不展开技术或协议细节。书中内容涵盖因特网基础知识，架构和设计的内涵，未来互联网的设计需求、架构、功能、命名和地址技术，长寿性、安全性、可用性和经济性等影响因素，网络管理和控制，以及互联网如何满足社会需求。本书适合网络设计者、管理者及政策制定者阅读和参考。',76,99,14),
 (2020120111,2,'  基于机器学习的数据缺失值填补：理论与','机械工业出版社','赖晓晨 张立勇 刘辉','无',79,278,' 资深专家多年研究和实践成果总结，内容系统、循序渐进，具备创新性、易用性和工程性',55,78,54),
 (2020120112,2,'嵌入式与实时操作系统','机械工业出版社','[美] 王孔啟（K.','无',139,479,'本书涵盖了操作系统的基本概念和原则，展示了如何将它们应用于设计和实现完整的嵌入式与实时操作系统。包括ARM架构、ARM指令和编程、用于开发程序的工具链、用于软件实现和测试的虚拟机、程序执行映像、函数调用约定、运行时堆栈使用以及用汇编代码链接C程序的所有基础和背景信息。',45,78,96),
 (2020120113,2,'量子信息论','机械工业出版社',' [加]约翰·沃特罗','无',149,484,'本书主要讨论量子信息论中基础理论的精确数学表示和证明，可帮助读者全面理解这一领域的关键结论、证明技术和方法论，进而将其应用到不同的研究方向。书中首先给出线性代数、数学分析和概率论等必要的数学预备知识，在此基础上，对所有结论均给出了清晰和完整的证明。此外，书中还配备了一些有挑战性的练习，目的是帮助读者提升技能，逐步加深对量子信息论的理解。本书主要面向数学、计算机科学和理论物理方向的研究人员和高校研究',78,98,56),
 (2020120114,3,'金融数学：基于Excel的商业计算实用教','机械工业出版社',' [英] 阿拉斯泰尔','无',99,275,'本书介绍了运用Excel解决金融数学问题的实用工具、方法和技术.首先介绍基本金融运算、现金流、收益及现值和未来价值等基础知识，给出净现值和内部收益率的计算方法，随后介绍分析固定收益类产品、衍生品、外汇、股票和租赁的方法.每章配有习题供读者练习.本书既可用作高等院校金融专业、商学院学生的Excel金融应用教材，也可用作金融从业者提高业务能力的参考手册.',78,45,78),
 (2020120115,3,'1小时读懂世界','机械工业出版社','[英]乔尔·利维（J','朱辉',49,345,'一小时读懂世界',89,75,44),
 (2020120116,3,'数理金融初步(原书第3版)','机械工业出版社','(美)Sheldon','无',49,245,'本书清晰简洁地阐述了数理金融学的基本问题，主要包括套利、Black-Scholes期权定价公式以及效用函数、*优资产组合原理、资产本资产定价模型等知识，并将书中所讨论的问题的经济背景、解决这些问题的数学方法和基本思想系统地展示给读者。\r\n本书内容选择得当、结构安排合理，既适合作为高等院校学生（包括财经类专业及应用数学专业）的教材，同时也适合从事金融工作的人员阅读。',55,78,46),
 (2020120118,3,'数学分析原理（英文版·原书第3版·典藏版','机械工业出版社','（美）沃尔特·鲁丁（','无',69,350,'本书涵盖了高等微积分学的丰富内容，最精彩的部分集中在基础拓扑结构、函数项序列与级数、多变量函数以及微分形式的积分等章节。',75,45,98),
 (2020120119,3,'实分析与复分析（英文版·原书第3版·典藏','机械工业出版社','[美]沃尔特·鲁丁（','无',79,426,'本书是分析领域内的一部经典著作。毫不夸张地说，掌握了本书，对数学的理解将会上一个新台阶。在第3版中，作者对一些新的课题进行了讨论，并力求全书条理清晰。\r\n本书体例优美，实用性很强，列举的实例简明精彩。无论是实分析部分还是复分析部分，基本上对所有给出的命题都进行了论证。另外，书中还附有大量设计巧妙的习题，通过这些习题可以真实地检测出读者对课程的理解程度，有的还要求对正文中的原理进行论证。',56,77,56),
 (2020120120,4,'战略过程：概念、情境与案例（原书第5版）','机械工业出版社',' [加]约瑟夫·兰佩','无',99,626,'本书从战略、力量、情境三个角度进行论述，介绍了战略的基本概念，组织构成的基本力量，在特定情境下讨论组织的战略管理等问题。书中的内容以战略管理的十大流派为主线，辅之以管理角色与组织管理的理论，为当今社会的组织战略问题进行了切合实际的讨论。概念部分为我们在纷繁复杂的各种观点网络中描绘出一幅“战略过程”的奇妙图景。情境部分则是讲所有的概念组合在各种不同的情境下的运用。明茨伯格对于战略概念、情境的剖析，与',56,55,78),
 (2020120121,4,'美国真相：民众、政府和市场势力的失衡与再','机械工业出版社','[美]约瑟夫·斯蒂格','刘斌 刘一鸣 刘嘉牧',69,352,'无',64,454,23),
 (2020120122,4,'数据产品经理：实战进阶','机械工业出版社','杨楠楠','无',89,324,'12位来自各行业的资深数据产品人的实战经验总结，阿里、京东、字节跳动、网易、快手等企业的9位专家推荐\r\n全面讲解数据分析、数据埋点、数据中台、数据指标体系、数据管理、数据服务、用户画像等11大数据产品知识体系',45,86,98),
 (2020120123,4,'卓有成效管理者的实践（纪念版）','机械工业出版社',' [美]彼得·德鲁克','宋强',69,264,'德鲁克与马恰列洛为管理者、经理人和知识工作者提供了一个有效行动的指南，作者从德鲁克的经典著作中节选了100多段阅读材料，并对其进行了更新，提出了发人深省的问题，给出了行动指导，便于你不断改进工作。本书还留出了空白的地方供你记录，以便今后进行回顾和反思。《卓有成效管理者的实践》将教会你如何按照德鲁克的管理智慧进行终身学习和自我开发，成为一个更加卓有成效的领导者。',56,42,78),
 (2020120124,4,'清晨领导力：新经理人的50个领导力修炼','机械工业出版社',' 徐中 ','无',69,296,'这是一本高度精简的领导力教程，可以帮助你利用碎片化时间快速了解\"3L领导力\"的精髓。每天清晨5分钟，刷新你的领导力，学以致用、知行合一、举一反三、成就卓越！',66,75,95),
 (2020120125,4,'内在动机：自主掌控人生的力量','机械工业出版社','[美]爱德华·L. ','无',59,254,'你是否常在父母的期望、社会的压力和自己真正喜欢的生活之间挣扎？自我决定论创始人德西带你颠覆传统激励方式，活出真正自我。彭凯平、阳志平、周欣悦、刘建鸿、于是力荐！',75,75,85),
 (2020120126,4,'思维转变：社交网络、游戏、搜索引擎如何影','机械工业出版社','[英] 苏珊·格林菲','无',58,284,'著名神经科学家苏珊·格林菲尔德提出，当前网络时代的技术正在改变我们的思维方式。从近期研究入手，本书指出网络生活正在以前所未有的方式影响着我们的生活环境与想象能力，并探讨在此趋势下，人类大脑的物理功能所发生的适应性改变，包括创造力、同理心、理解能力等方面的改变。本书帮助我们从恐慌中分辨出真正的危险，从炒作中看到真正的机会，向我们提供看待世界发展变化的方式方法，促使我们在整个生命周期的思想不断得以深化',89,78,89),
 (2020120127,4,'数字跃迁：数字化变革的战略与战术','机械工业出版社','[以]拉兹·海飞门（','无',89,340,'本书对数字化转型理论及其如何实践到商业组织中做了详细的阐述。数字化转型不是机器与人的竞争，也不是项目投资报酬率的计算，它如同微观量子世界中的量子跃迁，能把信息技术与商业运作完善地结合，为组织注入跳跃式发展的能量。本书从思维、理论和实践三个角度提供了对数字化转型的解读，并从战略和战术层面指出企业与个人如何应对这次变革。本书是关于数字化转型的系统化入门之作，可以帮助读者理解数字化转型的方方面面，从较宏',98,156,35),
 (2020120128,5,'学会幸福：人生的10个基本问题','机械工业出版社',' 陈赛','无',69,363,'本书由《三联生活周刊》资深主笔陈赛主导策划，经周刊团队超过1000小时打磨，邀请来自中国科学院、北京大学、清华大学等国内一线院校的知名心理学家等专业作者编写，旨在为读者提供一扇窗，帮助读者更深入地理解自我，体悟幸福，思考有关人格、自尊、情绪、童年、爱情等方面的10个人生基本问题，从而通往更高的人生境界。',68,78,95),
 (2020120129,5,'爱的管教：将亲子冲突变为合作的7种技巧','机械工业出版社','[美]贝基·A.贝利','无',59,295,'你能教他人你不知道的东西吗？然而，我们经常要求孩子学会我们自己都欠缺的技能，要求孩子们按照我们说的去做，而不是按照我们做的去做。丈夫和妻子吵架，在争执中谩骂对方并且使用一走了之的方法处理问题。然后，他们要求孩子们通过讨论平静地化解冲突。',75,85,98),
 (2020120130,5,'走出创伤与成瘾，找回最好的自己','机械工业出版社','[美]莉莎·M. 娜','无',69,325,'创伤和成瘾是心理治疗领域中最常见且最困难的两个问题，但它们是可以被治愈的。在本书中，该领域的知名专家莉莎·娜佳维茨解释了创伤与成瘾之间的联系，呈现了以科学为基础的自助策略。每章都有由成功康复人士分享的亲身经历，以及认真设计的反思问题、练习和其他实用工具。\r\n通过本书，你将学会：如何才能建立有效的应对技巧，使未来比过去更美好；让自己保持安全，发现支持的力量；设定自己的目标，制订计划并按照自己的节奏去',75,85,44),
 (2020120131,5,'进击的心智：优化思维和明智行动的心理学新','机械工业出版社','魏知超','无',59,268,'在本书中，作者以情绪、思维和行动三个维度作为全书的框架，对前沿的心理学研究进行了深入浅出的提炼，不仅将我们的日常生活场景与各类心理学知识很好地融合在了一起，而且辅以新奇独到的脑洞，可以帮你构建一个崭新的认知体系，升级心智，明智生活！',45,95,23),
 (2020120132,5,'让往事随风而逝：找回平静、自信和安全感的','机械工业出版社','弗朗辛·夏皮罗（Fr','无',59,265,'西格蒙德 · 弗洛伊德奖”得主眼动脱敏与再处理（EMDR）疗法创始人弗朗辛·夏皮罗十年心血之作',12,8,10),
 (2020120133,5,'儿童心理咨询（原书第5版）','机械工业出版社','[澳]凯瑟琳·格尔德','无',99,425,'本书面向儿童心理咨询师，提供了大量实用的心理咨询策略以及练习活动。主要内容包括以下四个方面：①进行儿童心理咨询和建立咨询师-儿童关系的目标；②有效地与儿童合作的实践框架；③游戏治疗和不同的媒体、活动的使用策略；④用工作表建立自尊和社交技能。本书通俗易懂，以丰富的实例帮助咨询师应对儿童心理咨询实践中的现实挑战，大量的案例研究帮助咨询师在实践的不同阶段、不同的环境中开发适当的技术。',120,520,75),
 (2020120134,5,'母爱的失落（原书第2版·20周年纪念版）','机械工业出版社','[美]霍普·爱德曼(','无',59,356,'在我们的心灵深处，母亲意味着慰藉和安全感。本书最重要和难得的是，它挖掘了女性心中失去母亲后那种不可填补的空虚。作者用她的人生经历和特有的智慧帮助那些失去了母亲的女儿们，以及那些关心爱护她们的人，更好地了解丧母之痛，明白其早期的经历是如何持续影响自身同家人、朋友、爱人和同事的关系的，当然最重要的是如何影响了她们自己，从而使这种经历减少其负面影响。',56,48,120),
 (2020120135,5,'成为更好的自己：许燕人格心理学30讲','机械工业出版社','许燕 ','无',49,264,'在本书中，北京师范大学心理学部教授、博士生导师许燕老师，将结合自己30多年的教学和研究经验，带你走进这个浩瀚而神秘的系统——人格。\r\n人格心理学被视为人生哲学，因为它对人生的思考具有指引价值，这也是我们学习人格心理学的原因。\r\n本书分为8个部分、30讲，为读者讲授人格心理学的概念，破译魅力人格的密码，让读者更好地了解自我，理解他人，塑造健康的人格，展示人格的力量，从而获得最佳成就，创造美好未来。',95,78,65),
 (2020120136,2,'计算机组成原理（第2版）','电子工业出版社','任国林','无',49,320,'理工科大学计算机专业低年级学生，高年级考研需求的学生',295,285,100),
 (2020120137,2,'数据库系统内幕','机械工业出版社','[美]亚历克斯·彼得','无',119,318,'这本书既不是关于关系型数据库的书，也不是关于NoSQL的书，而是关于在各种数据库系统中使用的算法和概念的书，重点是存储引擎和负责数据分布的组件。第一部分讨论节点本地的进程，并着重于存储引擎这个数据库系统的核心组件以及最重要的一个特有元素。第二部分讨论负责数据分布的子系统和组件，介绍如何将多个节点组织到一个数据库集群中。',240,240,125),
 (2020120138,2,'真实世界的算法：初学者','机械工业出版社','[希] 帕诺斯·卢里','无',99,346,'本书通过算法所解决的现实世界的实例来介绍各种算法的思想和技术细节。算法用伪代码给出，使得后续可以很容易地用一种计算机语言来实现。',210,152,156),
 (2020120139,2,'Linux内核观测技术BPF','机械工业出版社','[美]大卫·卡拉维拉','无',79,178,'本书是一本面向系统工程师的实践指南，皆在帮助他们获得Linux内核中BPF虚拟机的专业知识。通过本书，你不仅可以深入了解BPF程序的生命周期，熟悉日常工作所需的基本概念，增强有关性能优化、网络和安全方面的知识。还可以学习如何编写观测和修改内核行为的应用程序，以及通过代码注入的方式对内核事件进行监控、跟踪和安全观测等内容。同时，本书展示了相关的C、Go和Python代码示例。每次学习BPF技术时，我',189,160,56),
 (2020120140,2,'Unix/Linux系统编程','机械工业出版社','[美] K. C. ','无',139,386,'Unix/Linux系统编程提供了广泛的计算机系统软件知识和高级编程技能，使读者能够与操作系统内核交互，有效利用系统资源，开发应用软件。它还为读者提供了从事计算机科学/工程高级研究(如操作系统、嵌入式系统、数据库系统、数据挖掘、人工智能、计算机网络、网络安全、分布式和并行计算)所需的背景知识。',180,159,86),
 (2020120141,2,'深度学习进阶：卷积神经网络和对象检测','机械工业出版社','[瑞士] 翁贝托·米','无',79,218,'本书介绍卷积神经网络的核心——错综复杂的细节和算法的微妙之处。主要包括卷积神经网络的高级主题和使用Keras和TensorFlow的对象检测。',179,160,89),
 (2020120142,2,'Python开发技术大全','机械工业出版社','吴仲治','无',149,564,'50小时同步配套教学视频，大量练手实例，20年开发经验老兵的Python编程感悟，全方位覆盖Python基础知识与应用开发，一本书帮你快速成长为Python开发的多面手',175,155,120),
 (2020120143,2,'ClickHouse原理解析与应用实践','机械工业出版社','朱凯','无',79,292,'本书是一本系统介绍Clickhouse的指导型工具书，全书总共分为11章:\r\n第1章 介绍ClickHouse的由来、发展历程、核心特点与核心特点。第2~6章 介绍了ClickHouse基础使用部分，包括整体架构、如何安装、数据定义、数据引擎、数据查询和函数的特性和使用方法。第7~9章介绍了ClickHouse高级特性部分，包括数据库管理操作，数据分片、数据副本和高可用的特性和使用方法。第10~1',170,150,256),
 (2020120144,2,'设计模式：可复用面向对象软件的基础（典藏','机械工业出版社','[美] 埃里克·伽玛','无',79,299,'本书结合设计实例从面向对象的设计中精选出23个设计模式, 总结了面向对象设计中最有价值的经验, 并且用简洁可复用的形式表达出来。本书分类描述了一组设计良好、 表达清楚的软件设计模式, 这些模式在实用环境下特别有用。 本书适合大学计算机专业的学生、研究生及相关人员参考。',255,256,200),
 (2020120145,3,'数理统计及其应用（英文版·原书第6版）','机械工业出版社','[美]理查德·J. ','无',139,747,'本书以全面而有趣的方式介绍概率论与数理统计的基础知识，不仅讲授了实验设计和数据分析方法，而且重视培养将这些原理应用于实践的技能。',78,89,44),
 (2020120146,4,'阿里巴巴B2B电商算法实战','机械工业出版社','阿里集团','无',99,328,'本书是阿里巴巴CBU技术部（1688.com）深耕B2B电商15年的经验总结。阿里巴巴B2B在战略形态上经历了信息平台、交易平台和营销平台的升级迭代，本书聚焦营销平台商业形态背后的算法和技术能力，试图从技术和商业互为驱动的视角阐述技术如何赋能业务，并结合阿里巴巴集团在基础设域和算法创新上的沉淀，打造出智能B2B商业操作系统。',200,254,153),
 (2020120147,3,'图论导引（原书第2版）典藏版','机械工业出版社','[美] 道格拉斯·B','无',99,489,'内容全面，证明与应用实例并举，不仅包括对证明技巧的讨论、上千道习题、几百幅插图以及许多例题，而且对所有定理都给出了详细完整的证明。',56,78,125),
 (2020120148,3,'数论概论（原书第4版）','机械工业出版社',' （美）约瑟夫 H.','无',59,287,'《华章数学译丛:数论概论(原书第4版)》讲解清晰，语言生动，易于理解，适合作为高等院校相关专业学生的数论入门书，也可以作为有志于学习数论的读者的自学读物。',98,54,12),
 (2020120149,3,'数论概论（英文版·原书第4版·典藏版）','机械工业出版社','[美]约瑟夫·H.西','无',99,405,'本书面向非数学专业学生，讲述了有关数论的知识，教给他们如何用数学方法思考问题，同时介绍了目前数论研究的某些前沿课题。与第3版相比，本版的具体更新如下： 新增一章，详细介绍数学归纳法（第26章）；前言部分给出了各章之间依赖关系的流程图，便于读者选择阅读；调整了内容的组织结构，将反证法的相关材料前移至第8章，原根的相关章节移至二次互反律与平方和之后，第47~50章的内容移至网上；给出了二次互反律的完整',78,85,68),
 (2020120150,6,'java修炼指南：核心框架','机械工业出版社','肖爱良','无',58,201,'通过分析java领域带你走进源码的世界',0,0,100),
 (2020120151,7,'软件开发技术基础','机械工业出版社','赵英良','无',41,251,'本书结合非计算机专业软件开发的特点和一般软件开发技术组织编写。',0,0,125);
/*!40000 ALTER TABLE `tb_book` ENABLE KEYS */;


--
-- Definition of table `tb_booktype`
--

DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype` (
  `BookTypeId` int(10) unsigned NOT NULL auto_increment COMMENT '图书编号',
  `BookTypeName` varchar(50) NOT NULL COMMENT '图书类别',
  PRIMARY KEY  (`BookTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='图书类型信息表';

--
-- Dumping data for table `tb_booktype`
--

/*!40000 ALTER TABLE `tb_booktype` DISABLE KEYS */;
INSERT INTO `tb_booktype` (`BookTypeId`,`BookTypeName`) VALUES 
 (1,'少儿'),
 (2,'计算机'),
 (3,'科技'),
 (4,'经济管理'),
 (5,'心理学'),
 (6,'程序设计'),
 (7,'软件工程');
/*!40000 ALTER TABLE `tb_booktype` ENABLE KEYS */;


--
-- Definition of table `tb_comment`
--

DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `CommentId` char(11) NOT NULL COMMENT '图书评论Id',
  `BookId` int(10) unsigned NOT NULL COMMENT '图书编号',
  `CustomerId` char(11) NOT NULL COMMENT '评论客户Id',
  `Commentname` varchar(20) NOT NULL COMMENT '评论客户名字',
  `Commentdate` datetime NOT NULL COMMENT '评论时间',
  `commentcontent` varchar(100) default NULL COMMENT '评论内容',
  PRIMARY KEY  (`CommentId`),
  KEY `FK_tb_comment_1` (`BookId`),
  KEY `FK_tb_comment_2` (`CustomerId`),
  CONSTRAINT `FK_tb_comment_1` FOREIGN KEY (`BookId`) REFERENCES `tb_book` (`BookId`),
  CONSTRAINT `FK_tb_comment_2` FOREIGN KEY (`CustomerId`) REFERENCES `tb_customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图书评论信息表';

--
-- Dumping data for table `tb_comment`
--

/*!40000 ALTER TABLE `tb_comment` DISABLE KEYS */;
INSERT INTO `tb_comment` (`CommentId`,`BookId`,`CustomerId`,`Commentname`,`Commentdate`,`commentcontent`) VALUES 
 ('10000000000',2020120101,'18775921835','huangsheng','2020-12-01 15:01:01','挺好的');
/*!40000 ALTER TABLE `tb_comment` ENABLE KEYS */;


--
-- Definition of table `tb_customer`
--

DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer` (
  `CustomerID` char(11) NOT NULL COMMENT '用户ID',
  `CustomerName` varchar(20) default NULL COMMENT '用户姓名',
  `CustomerPwd` varchar(20) NOT NULL COMMENT '用户密码',
  `Customertruename` varchar(20) default NULL COMMENT '账号名字',
  `CustomerSex` varchar(2) default NULL COMMENT '用户性别',
  `CustomerTel` varchar(20) default NULL COMMENT '电话号码',
  `CustomerAddr` varchar(20) default NULL COMMENT '收货地址',
  `CustomerRegTime` datetime default NULL COMMENT '注册时间',
  `CustomerQuer` varchar(200) default NULL COMMENT '提示问题',
  `CustomerAnswer` varchar(200) default NULL COMMENT '问题答案',
  PRIMARY KEY  (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- Dumping data for table `tb_customer`
--

/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
INSERT INTO `tb_customer` (`CustomerID`,`CustomerName`,`CustomerPwd`,`Customertruename`,`CustomerSex`,`CustomerTel`,`CustomerAddr`,`CustomerRegTime`,`CustomerQuer`,`CustomerAnswer`) VALUES 
 ('11111111111','111','11111111111','11111111111','未知','11111111111','广西|崇左市|扶绥县@渠旧镇','2020-12-01 12:12:12','11','11'),
 ('13878637247','huangsheng','13878637248','huangsheng','男','18775921835','广西|南宁市|青秀区@78号','2021-01-10 10:41:36','qq','1210563923'),
 ('13878637248',NULL,'13878637248',NULL,NULL,NULL,NULL,'2021-01-10 09:24:04',NULL,NULL),
 ('18775921835','huangsheng','18775921835','huangsheng','男','18775921835','广西|崇左市|扶绥县@渠旧镇','2020-12-01 12:12:12','电话','18775921835');
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;


--
-- Definition of table `tb_manager`
--

DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `AdminId` char(10) NOT NULL COMMENT '管理员ID',
  `AdminName` varchar(10) NOT NULL COMMENT '管理员姓名',
  `AdminPwd` varchar(20) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY  (`AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

--
-- Dumping data for table `tb_manager`
--

/*!40000 ALTER TABLE `tb_manager` DISABLE KEYS */;
INSERT INTO `tb_manager` (`AdminId`,`AdminName`,`AdminPwd`) VALUES 
 ('1210563923','huangsheng','1210563923');
/*!40000 ALTER TABLE `tb_manager` ENABLE KEYS */;


--
-- Definition of table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `OrderId` char(11) NOT NULL COMMENT '订单编号',
  `Id` varchar(11) NOT NULL COMMENT '自动编号',
  `CustomerId` char(11) NOT NULL COMMENT '客户编号',
  `Orderdate` datetime NOT NULL COMMENT '下单日期',
  `Ordermount` int(11) unsigned NOT NULL COMMENT '总订购数量',
  `message` varchar(10) NOT NULL COMMENT '留言',
  `postmethod` varchar(100) NOT NULL COMMENT '送货方式',
  `paymethod` varchar(100) NOT NULL COMMENT '支付方式',
  `recevername` varchar(10) NOT NULL COMMENT '收货人姓名',
  `receveraddr` varchar(20) NOT NULL COMMENT '收货地址',
  `recevertel` char(11) NOT NULL COMMENT '收货人电话',
  `memo` varchar(100) NOT NULL COMMENT '备注',
  `totalprice` float NOT NULL COMMENT '总卖出价',
  PRIMARY KEY  (`OrderId`),
  KEY `FK_tb_order_1` (`CustomerId`),
  CONSTRAINT `FK_tb_order_1` FOREIGN KEY (`CustomerId`) REFERENCES `tb_customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息表';

--
-- Dumping data for table `tb_order`
--

/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
INSERT INTO `tb_order` (`OrderId`,`Id`,`CustomerId`,`Orderdate`,`Ordermount`,`message`,`postmethod`,`paymethod`,`recevername`,`receveraddr`,`recevertel`,`memo`,`totalprice`) VALUES 
 ('10000000000','1','18775921835','2020-12-01 10:10:10',1,'无','邮政','支付宝','黄圣','广西崇左市扶绥县','18775921835','无',1),
 ('10000000001','2','18775921835','2020-12-01 10:10:10',1,'无','无','微信','黄圣','广西崇左市扶绥县','18775921835','无',2),
 ('10000000002','3','18775921835','2020-12-01 10:10:10',1,'无','中通','支付宝','黄圣','广西崇左市扶绥县','18775921835','无',3),
 ('10000000003','4','18775921835','2020-12-01 10:10:10',1,'无','韵达','微信','黄圣','广西崇左市扶绥县','18775921835','无',3),
 ('10000000004','5','18775921835','2021-01-10 11:03:24',1,'无','无','支付宝','huangsheng','广西|崇左市|扶绥县@渠旧镇','18775921835','无',95.2),
 ('10000000005','6','18775921835','2021-01-10 11:06:12',1,'无','无','支付宝','huangsheng','广西|崇左市|扶绥县@渠旧镇','18775921835','无',79.2);
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;


--
-- Definition of table `tb_orderdetail`
--

DROP TABLE IF EXISTS `tb_orderdetail`;
CREATE TABLE `tb_orderdetail` (
  `OrderDetailld` char(11) NOT NULL COMMENT '详细订单编号',
  `Id` varchar(11) NOT NULL COMMENT '自动编号',
  `OrderId` char(11) NOT NULL COMMENT '订单号',
  `BookId` int(10) unsigned NOT NULL COMMENT '图书编号',
  `ordermount` int(10) unsigned NOT NULL COMMENT '订单数量',
  `poststatus` varchar(10) NOT NULL COMMENT '发货状态',
  `Recevstatus` varchar(10) NOT NULL COMMENT '收货状态',
  `sigletotalprice` varchar(45) NOT NULL COMMENT '总价格',
  PRIMARY KEY  (`OrderDetailld`),
  KEY `FK_tb_orderdetail_1` (`OrderId`),
  KEY `FK_tb_orderdetail_2` (`BookId`),
  CONSTRAINT `FK_tb_orderdetail_1` FOREIGN KEY (`OrderId`) REFERENCES `tb_order` (`OrderId`),
  CONSTRAINT `FK_tb_orderdetail_2` FOREIGN KEY (`BookId`) REFERENCES `tb_book` (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详细信息表';

--
-- Dumping data for table `tb_orderdetail`
--

/*!40000 ALTER TABLE `tb_orderdetail` DISABLE KEYS */;
INSERT INTO `tb_orderdetail` (`OrderDetailld`,`Id`,`OrderId`,`BookId`,`ordermount`,`poststatus`,`Recevstatus`,`sigletotalprice`) VALUES 
 ('10000000000','1','10000000000',2020120101,1,'已发货','已收货','1'),
 ('10000000001','2','10000000001',2020120102,1,'已发货','未收货','2'),
 ('10000000002','3','10000000002',2020120103,1,'已发货','未收货','3'),
 ('10000000003','4','10000000003',2020120104,1,'申请退货','未收货','4'),
 ('10000000004','5','10000000004',2020120110,1,'未发货','未收货','95.2'),
 ('10000000005','6','10000000005',2020120146,1,'未发货','未收货','79.2');
/*!40000 ALTER TABLE `tb_orderdetail` ENABLE KEYS */;


--
-- Definition of table `tb_shopbook`
--

DROP TABLE IF EXISTS `tb_shopbook`;
CREATE TABLE `tb_shopbook` (
  `ShopbookId` char(10) NOT NULL COMMENT '购物车Id',
  `CustomerId` char(11) NOT NULL COMMENT '客户Id',
  `BookId` int(10) unsigned NOT NULL COMMENT '图书编号',
  `ordermount` int(10) unsigned NOT NULL COMMENT '订购数量',
  `price` float NOT NULL COMMENT '总价',
  `ispay` varchar(10) NOT NULL COMMENT '是否付款',
  PRIMARY KEY  (`ShopbookId`),
  KEY `FK_tb_shopbook_1` (`CustomerId`),
  KEY `FK_tb_shopbook_2` (`BookId`),
  CONSTRAINT `FK_tb_shopbook_1` FOREIGN KEY (`CustomerId`) REFERENCES `tb_customer` (`CustomerID`),
  CONSTRAINT `FK_tb_shopbook_2` FOREIGN KEY (`BookId`) REFERENCES `tb_book` (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

--
-- Dumping data for table `tb_shopbook`
--

/*!40000 ALTER TABLE `tb_shopbook` DISABLE KEYS */;
INSERT INTO `tb_shopbook` (`ShopbookId`,`CustomerId`,`BookId`,`ordermount`,`price`,`ispay`) VALUES 
 ('1000000000','11111111111',2020120101,1,1,'已支付');
/*!40000 ALTER TABLE `tb_shopbook` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
