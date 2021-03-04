<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 网页标题 -->
    <title>网上书城-网上购物书店首选-正品低价，品质保障，配送及时，轻松购物</title>
    <!-- 网站说明 -->
    <meta name="descirption" content="网上书城-专业的综合网上书城平台，我们的信念是给与您最好的服务体验，为您提供最便捷，诚信的服务。您的愉悦是我们最大的快乐！" />
    <!-- 关键字 -->
    <mata name="keywords" content="网上购物，网上书店，书城首选"></mata>

    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">

</head>
<body>
    <!-- 快捷导航模块start -->
    <section>
        <div class="shortcat">
            <div class="w">
                <div class="fl">
                    <ul>
                        <li>网上书城欢迎您！&nbsp;</li>
                        <li id="use1"><a href="login.jsp">请登录</a>&nbsp;<a href="register.jsp" class="style_red">免费注册</a></li>
                        <li id="use2" >
                            <p id="use3" style="display: inline-block">${sessionScope.customerid}</p>用户
                            <a href="#" class="style_red" style="display: inline-block" id="cancellation">注销</a>
                        </li>
                    </ul>
                </div>
                <div class="fr">
                    <ul>
                        <li><a href="cart.jsp">购物车</a></li>
                        <li></li>
                        <li><a href="#">我的订单</a></li>
                        <li></li>
                        <li><a href="personalCenter.jsp">个人中心</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- 快捷导航模块end -->
    <!-- 头部模块start -->
    <header class="header w">
        <!-- logo图片 -->
        <div class="logo">
            <h1>
                <a href="index.jsp" title="网上书城">网上书城</a>
            </h1>
        </div>
        <!-- search模块  -->
        <div class="search" id="search_top">
            <input type="search" name="" id="search" value="算法设计与计算分析">
            <button id="searbtn">搜索</button>
            <ul class="list-group" id="list-box" style="display: none">

            </ul>
        </div>
        <!-- hotwords 模块制作 -->
        <div class="hotwords">
            <a href="#">网络与通信</a>
            <a href="#">编程语言与程序设计</a>
            <a href="#">python算法宝典</a>
            <a href="#">操作系统</a>
            <a href="#">人工智能</a>
            <a href="#">算法设计</a>
        </div>
        <!-- 购物车模块 -->
        <div class="shopcar">
            <a href="cart.jsp">
                我的购物车
                <i class="count">8</i>
            </a>
        </div>
    </header>
    <!-- 头部模块end -->
    <!-- nav 模块制作start -->
    <nav class="nav">
        <div class="w">
            <div class="dropdown" id="dropdown">
                <div class="dt" id="dt">全部商品分类</div>
                <div class="dd" id="dd">
                    <ul>
                        <li>
                            <div>
                                <h4>
                                    <em>
                                        <a href="#">&gt;&gt;计算机图书</a>
                                    </em>
                                </h4>
                            </div>
                            <div>
                                <h3>
                                    <a href="list2.jsp?程序设计">程序设计</a>
                                    |
                                    <a href="list2.jsp?软件工程">软件工程</a>
                                    |
                                    <a href="list2.jsp?网络安全">网络安全</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div>
                                <h4>
                                    <em>
                                        <a href="#">&gt;&gt;计算机图书</a>
                                    </em>
                                </h4>
                            </div>
                            <div>
                                <h3>
                                    <a href="list2.jsp?通信技术">通信技术</a>
                                    |
                                    <a href="list2.jsp?机械仪表">机械仪表</a>
                                    |
                                    <a href="list2.jsp?电子电工">电子电工</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div>
                                <h4>
                                    <em>
                                        <a href="#">&gt;&gt;数理化图书</a>
                                    </em>
                                </h4>
                            </div>
                            <div>
                                <h3>
                                    <a href="list2.jsp?数学">数学</a>
                                    |
                                    <a href="list2.jsp?物理">物理</a>
                                    |
                                    <a href="list2.jsp?化学">化学</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div>
                                <h4>
                                    <em>
                                        <a href="#">&gt;&gt;经济管理图书</a>
                                    </em>
                                </h4>
                            </div>
                            <div>
                                <h3>
                                    <a href="list2.jsp?中国经济">中国经济</a>
                                    |
                                    <a href="list2.jsp?企业管理">企业管理</a>
                                    |
                                    <a href="list2.jsp?投资理财">投资理财</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div>
                                <h4>
                                    <em>
                                        <a href="#">&gt;&gt;教材</a>
                                    </em>
                                </h4>
                            </div>
                            <div>
                                <h3>
                                    <a href="list2.jsp?计算机">计算机</a>
                                    |
                                    <a href="list2.jsp?经济管理">经济管理</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div>
                                <h4>
                                    <em>
                                        <a href="#">&gt;&gt;心理哲学图书</a>
                                    </em>
                                </h4>
                            </div>
                            <div>
                                <h3>
                                    <a href="list2.jsp?自然科普">自然科普</a>
                                    |
                                    <a href="list2.jsp?外语">外语</a>
                                    |
                                    <a href="list2.jsp?哲学">哲学</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div>
                                <h4>
                                    <em>
                                        <a href="#">&gt;&gt;历史人文</a>
                                    </em>
                                </h4>
                            </div>
                            <div>
                                <h3>
                                    <a href="list2.jsp?历史">历史</a>
                                    |
                                    <a href="list2.jsp?地理">地理</a>
                                    |
                                    <a href="list2.jsp?艺术">艺术</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div>
                                <h4>
                                    <em>
                                        <a href="#">&gt;&gt;现代文学</a>
                                    </em>
                                </h4>
                            </div>
                            <div>
                                <h3>
                                    <a href="list2.jsp?小说">小说</a>
                                    |
                                    <a href="list2.jsp?文学">文学</a>
                                    |
                                    <a href="list2.jsp?语言文字">语言文字</a>
                                </h3>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="navitems">
                <ul>
                    <li><a href="#">首页</a></li>
                    <li><a href="#">新书</a></li>
                    <li><a href="#">特价书</a></li>
                    <li><a href="#">教材</a></li>
                    <li><a href="#">网络小说</a></li>
                    <li><a href="#">排行</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- nav 模块制作end -->
    <!-- main 模块制作start -->
    <div class="w">
        <div class="main">
            <div class="focus">
                <ul>
                    <li>
                        <a href="detail.jsp?BookId=2020120101">
                            <img src="upload/focus2.jpg" alt="1">
                        </a>
                    </li>
                </ul>
            </div>
            <div class="newsflash">
                <div class="news">
                    <div class="news-hd">
                        <h5>互动播报</h5>
                        <a href="#" class="more">更多</a>
                    </div>
                    <div class="news-bd">
                        <ul>
                            <li><a href="#"><strong>[重磅]</strong> 华章经典--IT科技 经济管理 人文心理</a></li>
                            <li><a href="#"><strong>[重磅]</strong> 认识世界，百科全书</a></li>
                            <li><a href="#"><strong>[重磅]</strong> 客户成功：持续复购和利润徒增的基石--中国SaaS领域10位资深专家推荐</a></li>
                            <li><a href="#"><strong>[重磅]</strong> 宇宙观：一场跨越时空的宇宙探秘之旅</a></li>
                            <li><a href="#"><strong>[重磅]</strong> 5G时代，给未来生活带来怎样的便利</a></li>
                        </ul>
                    </div>
                </div>
                <div class="promotional">
                    <div class="promotional-hd">
                        <h5>促销商品</h5>
                        <a href="#" class="more1">更多</a>
                    </div>
                    <div class="promotional-bd">
                        <div class="goods-box">
                            <div class="img-box">
                                <a href="detail.jsp?BookId=2020120146">
                                    <img src="upload/2020120146.jpg" alt="促销商品">
                                </a>
                            </div>
                            <h5>阿里巴巴B2B电商算法实战</h5>
                        </div>
                        <div class="original-price">
                            <h3>原价：￥</h3>
                            <h4>99.9</h4>
                        </div>
                        <div class="present-price">
                            <h3>现价：￥</h3>
                            <h4>88.8</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- main 模块制作end -->
    <!-- 楼层区域制作start -->
    <div class="floor clearfix">
        <div class="w">
            <div class="mod_recommend">
                <div class="h3_box">
                    <h3>编辑推荐</h3>
                    <h3>出版社推荐</h3>
                    <h3>重磅推荐</h3>
                    <h3>按需印刷推荐</h3>
                </div>
                <div class="classification">
                    <h4 style="display: block;">计算机</h4>
                    <h4 style="display: none;">科学技术</h4>
                    <h4 style="display: none;">经济管理</h4>
                    <h4 style="display: none;">人文社科</h4>
                </div>
                <div class="book">
                    <ul class="book_box">
                        <li>
                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120102">
                                    <img src="upload/2020120102.jpg" alt="推荐书籍1">
                                </a>
                                <div class="number_photo_box">
                                    <img src="images/rank_one.gif" alt="1">
                                </div>
                            </div>
                            <p class="firstp"><a href="#">PyTorch深度学习实战</a></p>
                            <p class="scanp">
                                <span>惊爆价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>

                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120103">
                                    <img src="upload/2020120103.jpg" alt="推荐书籍2">
                                </a>
                                <div class="number_photo_box">
                                    <img src="images/rank_two.gif" alt="">
                                </div>
                            </div>
                            <p class="firstp"><a href="#">Spring Boot技术内幕：架构设计与实现原理</a></p>
                            <p class="scanp">
                                <span>惊爆价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>

                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120104">
                                    <img src="upload/2020120104.jpg" alt="推荐书籍3">
                                </a>
                                <div class="number_photo_box">
                                    <img src="images/rank_three.gif" alt="">
                                </div>
                            </div>
                            <p class="firstp"><a href="#">互联网安全建设从0到1</a></p>
                            <p class="scanp">
                                <span>惊爆价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>

                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120105">
                                    <img src="upload/2020120105.jpg" alt="推荐书籍4">
                                </a>
                                <div class="number_photo_box">
                                    <img src="images/rank_four.gif" alt="">
                                </div>
                            </div>
                            <p class="firstp"><a href="#">CTF特训营:技术详解、解题方法与竞赛技巧</a></p>
                            <p class="scanp">
                                <span>惊爆价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>
                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120106">
                                    <img src="upload/2020120106.jpg" alt="推荐书籍5">
                                </a>
                                <div class="number_photo_box">
                                    <img src="images/rank_five.gif" alt="">
                                </div>
                            </div>
                            <p class="firstp"><a href="#">大数据原理与实践：复杂信息的准备、共享和分析</a></p>
                            <p class="scanp">
                                <span>惊爆价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="mod_bookslist">
                <h5>图书畅销排行榜</h5>
                <div class="nav_booksclass">
                    <ul>
                        <li>
                            <span>计算机</span>
                        </li>
                        <li>
                            <span>
                                科学技术
                            </span>
                        </li>
                        <li>
                            <span>
                                经济管理
                            </span>
                        </li>
                        <li>
                            <span>
                                人文社科
                            </span>
                        </li>
                    </ul>
                </div>
                <div class="bookslist">
                    <ul>
                        <li>
                            <div class="rank_1"></div>
                            <h4><a href="#">计算机组成原理</a></h4>
                        </li>
                        <li>
                            <div class="rank_2"></div>
                            <h4><a href="#">设计模式：可复用面对对象软件的基础（典藏版）</a></h4>
                        </li>
                        <li>
                            <div class="rank_3"></div>
                            <h4><a href="#">数据库系统内幕</a></h4>
                        </li>
                        <li>
                            <div class="rank_4"></div>
                            <h4><a href="#">迁移学习</a></h4>
                        </li>
                        <li>
                            <div class="rank_5"></div>
                            <h4><a href="#">真实世界的算法：初学者</a></h4>
                        </li>
                        <li>
                            <div class="rank_6"></div>
                            <h4><a href="#">Linux内核观测技术BPF</a></h4>
                        </li>
                        <li>
                            <div class="rank_7"></div>
                            <h4><a href="#">Unix/Linux系统编程</a></h4>
                        </li>
                        <li>
                            <div class="rank_8"></div>
                            <h4><a href="#">深度学习进阶：卷积神经网络和对象检测</a></h4>
                        </li>
                        <li>
                            <div class="rank_9"></div>
                            <h4><a href="#">Python开发技术大全</a></h4>
                        </li>
                        <li>
                            <div class="rank_10"></div>
                            <h4><a href="#">ClickHouse原理解析与应用实践</a></h4>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 楼层区域制作end -->
    <!-- 分类图书模块-计算机图书start-->
    <div class="floor">
        <div class="fenleitushu w clearfix">
            <div class="fenlei_title">
                <h2 class="clearfix ">
                    <a href="#">计算机图书</a>
                    <span class="fr">
                        <a href="#">人工智能</a>
                        |
                        <a href="#">程序设计</a>
                        |
                        <a href="#">数理分析</a>
                        |
                        <a href="#">网络安全</a>
                    </span>
                </h2>
            </div>

            <div class="fenleitupian clearfix">
                <div class="fl">
                    <a href="detail.jsp?BookId=2020120107">
                        <img src="upload/jisuanjitushu1.jpg" alt="迁移学习“开山之作”，解决人工智能的“最后一公里”问题">
                    </a>
                </div>
                <div class="fr">
                    <a href="detail.jsp?BookId=2020120105">
                        <img src="upload/jisuanjitushu2.png" alt="CTF特训营：技术详解、解题方法与竞赛技巧">
                    </a>
                </div>
            </div>
            <div class="fenlei_book">
                <ul class="fenlei_book_box">
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120108" title="数据科学概念与实践（原书第2版）">
                                <img src="upload/2020120108.jpg" alt="计算机书籍1">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120108">数据科学概念与实践（原书第2版）</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120109" title="TinyML：基于TensorFlow ">
                                <img src="upload/2020120109.jpg" alt="计算机书籍2">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120109">数据科学概念与实践（原书第2版）</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120110" title="互联网的设计和演化">
                                <img src="upload/2020120110.jpg" alt="计算机书籍3">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120110">互联网的设计和演化</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120111" title="  基于机器学习的数据缺失值填补：理论与）">
                                <img src="upload/2020120111.jpg" alt="计算机书籍4">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120111">  基于机器学习的数据缺失值填补：理论与</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120112" title="嵌入式与实时操作系统">
                                <img src="upload/2020120112.jpg" alt="计算机书籍5">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120112">嵌入式与实时操作系统</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120113" title="量子信息论">
                                <img src="upload/2020120113.jpg" alt="计算机书籍6">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120113">量子信息论</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 分类图书模块-计算机图书end-->
    <!-- 分类图书模块-科技图书start-->
    <div class="floor">
        <div class="fenleitushu w clearfix">
            <div class="fenlei_title">
                <h2 class="clearfix ">
                    <a href="#">科技图书</a>
                    <span class="fr">
                        <a href="#">数学</a>
                        |
                        <a href="#">物理</a>
                        |
                        <a href="#">自然科学</a>
                        |
                        <a href="#">电子电工</a>
                    </span>
                </h2>
            </div>

            <div class="fenleitupian clearfix">
                <div class="fl">
                    <a href="detail.jsp?BookId=2020120114">
                        <img src="upload/kejitushu1.jpg" alt="金融数学">
                    </a>
                </div>
                <div class="fr">
                    <a href="detail.jsp?BookId=2020120115">
                        <img src="upload/kejitushu2.jpg" alt="1小时读懂系列">
                    </a>
                </div>
            </div>
            <div class="fenlei_book">
                <ul class="fenlei_book_box">
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120149" title="数论概论（英文版·原书第4版·典藏版）">
                                <img src="upload/2020120149.jpg" alt="科技书籍1">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120149">数论概论（英文版·原书第4版·典藏版）</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120147" title="图论导引（原书第2版）典藏版">
                                <img src="upload/2020120147.jpg" alt="科技书籍2">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120147">图论导引（原书第2版）典藏版"</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120116" title="数理金融初步(原书第3版)">
                                <img src="upload/2020120116.jpg" alt="科技书籍3">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120116">数理金融初步(原书第3版)</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120145" title="数理统计及其应用（英文版·原书第6版）">
                                <img src="upload/2020120145.jpg" alt="科技书籍4">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120145">数理统计及其应用（英文版·原书第6版）</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120118" title="数学分析原理（英文版·原书第3版·典藏版）">
                                <img src="upload/2020120118.jpg" alt="科技书籍5">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120118">数学分析原理（英文版·原书第3版·典藏版）</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120119" title="实分析与复分析（英文版·原书第3版·典藏版）">
                                <img src="upload/2020120119.jpg" alt="科技书籍6">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120119">实分析与复分析（英文版·原书第3版·典藏版）</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 分类图书模块-科技图书end-->
    <!-- 分类图书模块-经济管理图书start-->
    <div class="floor">
        <div class="fenleitushu w clearfix">
            <div class="fenlei_title">
                <h2 class="clearfix ">
                    <a href="#">经济管理图书</a>
                    <span class="fr">
                        <a href="#">区块链</a>
                        |
                        <a href="#">电商微店</a>
                        |
                        <a href="#">投资理财</a>
                        |
                        <a href="#">管理</a>
                    </span>
                </h2>
            </div>

            <div class="fenleitupian clearfix">
                <div class="fl">
                    <a href="detail.jsp?BookId=2020120120">
                        <img src="upload/jingjiguanli1.jpg" alt="明茨伯格 管理经典丛书">
                    </a>
                </div>
                <div class="fr">
                    <a href="detail.jsp?BookId=2020120121">
                        <img src="upload/jingjiguanli2.png" alt="美国真相：民众、政府和市场势力的失衡与再平衡">
                    </a>
                </div>
            </div>
            <div class="fenlei_book">
                <ul class="fenlei_book_box">
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120122" title="数据产品经理：实战进阶">
                                <img src="upload/2020120122.jpg" alt="经济书籍1">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120122">数据产品经理：实战进阶</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120123" title="卓有成效管理者的实践（纪念版）">
                                <img src="upload/2020120123.jpg" alt="经济书籍2">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120123">卓有成效管理者的实践（纪念版）</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120124" title="清晨领导力：新经理人的50个领导力修炼">
                                <img src="upload/2020120124.jpg" alt="经济书籍3">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120124">清晨领导力：新经理人的50个领导力修炼</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120125" title="内在动机：自主掌控人生的力量">
                                <img src="upload/2020120125.jpg" alt="经济书籍4">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120125">内在动机：自主掌控人生的力量</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120126" title="思维转变：社交网络、游戏、搜索引擎如何影响大脑认知">
                                <img src="upload/2020120126.jpg" alt="经济书籍5">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120126">思维转变：社交网络、游戏、搜索引擎如何影响大脑认知</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                    <li>
                        <div class="book_photo_box">
                            <a href="detail.jsp?BookId=2020120127" title="数字跃迁：数字化变革的战略与战术">
                                <img src="upload/2020120127.jpg" alt="经济书籍6">
                            </a>
                        </div>
                        <p class="firstp"><a href="detail.jsp?BookId=2020120127">数字跃迁：数字化变革的战略与战术</a></p>
                        <p class="scanp fr">
                            <span>特价：</span>
                            <span>￥97.3</span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 分类图书模块-经济管理图书end-->
    <!-- 分类图书模块-人文心理图书start-->
    <div class="floor">
            <div class="fenleitushu w clearfix">
                <div class="fenlei_title">
                    <h2 class="clearfix ">
                        <a href="#">人文心理</a>
                        <span class="fr">
                            <a href="#">社会科学</a>
                            |
                            <a href="#">家庭教育</a>
                            |
                            <a href="#">绘画摄影</a>
                            |
                            <a href="#">健康</a>
                        </span>
                    </h2>
                </div>
    
                <div class="fenleitupian clearfix">
                    <div class="fl">
                        <a href="detail.jsp?BookId=2020120128">
                            <img src="upload/renwenxinli1.jpg" alt="学会幸福：人生的10个基本问题">
                        </a>
                    </div>
                    <div class="fr">
                        <a href="detail.jsp?BookId=2020120129">
                            <img src="upload/renwenxinli2.png" alt="爱的管教：将亲子冲突变为合作的7种技巧">
                        </a>
                    </div>
                </div>
                <div class="fenlei_book">
                    <ul class="fenlei_book_box">
                        <li>
                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120130" title="走出创伤与成瘾，找回最好的自己">
                                    <img src="upload/2020120130.jpg" alt="人文心理1">
                                </a>
                            </div>
                            <p class="firstp"><a href="detail.jsp?BookId=2020120130">走出创伤与成瘾，找回最好的自己</a></p>
                            <p class="scanp fr">
                                <span>特价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>
                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120131" title="进击的心智：优化思维和明智行动的心理学新知">
                                    <img src="upload/2020120131.jpg" alt="人文心理2">
                                </a>
                            </div>
                            <p class="firstp"><a href="detail.jsp?BookId=2020120131">进击的心智：优化思维和明智行动的心理学新知</a></p>
                            <p class="scanp fr">
                                <span>特价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>
                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120132" title="让往事随风而逝：找回平静、自信和安全感的心灵创伤疗愈术[图书]">
                                    <img src="upload/2020120132.jpg" alt="人文心理3">
                                </a>
                            </div>
                            <p class="firstp"><a href="detail.jsp?BookId=2020120132">让往事随风而逝：找回平静、自信和安全感的心灵创伤疗愈术[图书]</a></p>
                            <p class="scanp fr">
                                <span>特价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>
                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120133" title="儿童心理咨询（原书第5版）">
                                    <img src="upload/2020120133.jpg" alt="人文心理4">
                                </a>
                            </div>
                            <p class="firstp"><a href="detail.jsp?BookId=2020120133">儿童心理咨询（原书第5版）</a></p>
                            <p class="scanp fr">
                                <span>特价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>
                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120134" title="母爱的失落（原书第2版·20周年纪念版）">
                                    <img src="upload/2020120134.jpg" alt="人文心理5">
                                </a>
                            </div>
                            <p class="firstp"><a href="detail.jsp?BookId=2020120134">母爱的失落（原书第2版·20周年纪念版）</a></p>
                            <p class="scanp fr">
                                <span>特价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                        <li>
                            <div class="book_photo_box">
                                <a href="detail.jsp?BookId=2020120135" title="成为更好的自己：许燕人格心理学30讲">
                                    <img src="upload/2020120135.jpg" alt="人文心理6">
                                </a>
                            </div>
                            <p class="firstp"><a href="detail.jsp?BookId=2020120135">成为更好的自己：许燕人格心理学30讲</a></p>
                            <p class="scanp fr">
                                <span>特价：</span>
                                <span>￥97.3</span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
    </div>
    <!-- 分类图书模块-人文心理图书end-->
    <!-- 底部模块start -->
    <footer class="footer">
        <div class="w">
            <div class="mod_service">
                <ul>
                    <li>
                        <h5></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>正品保障,提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>正品保障,提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>正品保障,提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>正品保障,提供发票</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="mod_help">
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大书城</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大书城</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大书城</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大书城</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大书城</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
            </div>
            <div class="mod_copyright">
                <div class="links">
                    <a href="#">关于我们</a> | <a href="#">联系我们</a> | <a href="#">联系客服</a> | <a href="#">商家入驻</a> | <a
                        href="#">营销中心</a> | <a href="#">手机书城</a> | <a href="#">友情链接</a> | <a href="#">销售联盟</a> | <a
                        href="#">书城社区</a> |
                    <a href="#">书城公益</a> | <a href="#">English Site</a> | <a href="#">Contact U</a>
                </div>
                <div class="copyright">
                    地址：广西壮族自治区河池市宜州区河池学院 邮编：10086 电话：400-618-4000 传真：010-82935100 邮箱: m18775921835@163.com <br>
                    京ICP备08001421号京公网安备110108007702
                </div>
            </div>
        </div>
    </footer>
    <!-- 底部模块end -->
</body>
<%--顶部登录用户判定--%>
<script>        //判定注销和显示用户哪个隐藏
    var use1 =document.getElementById('use1');
    var use2 =document.getElementById('use2');
    var use3 =document.getElementById('use3');
    window.onload=function () {
        var use3Value = '${sessionScope.customerid}';
        console.log(use3Value);
        if (use3Value!=''){
            use1.style.display='none';
            use2.style.display='block';

        }else {
            use1.style.display='block';
            use2.style.display='none';
        }
    }
</script>
<script>
    var use1 =document.getElementById('use1');
    var use2 =document.getElementById('use2');
    var cancellation =document.getElementById('cancellation');
    cancellation.onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/cancellation');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send();
        use1.style.display='block';
        use2.style.display='none';
    }
</script>
<%--搜索框实现--%>
<script>
    // 获取搜索框
    var searchInp = document.getElementById('search');
    // 获取提示文字的存放容器
    var listBox = document.getElementById('list-box');
    // 存储定时器的变量
    var timer = null;
    // 当用户在文本框中输入的时候触发
    searchInp.oninput = function () {
        //删除ul标签下的所有li
        var listChild=listBox.childNodes;
        for (var i=listChild.length-1;i>=0;i--){
            listBox.removeChild(listChild[i]);
        }
        // 清除上一次开启的定时器
        clearTimeout(timer);
        // 获取用户输入的内容
        var BookName = this.value;
        // 如果用户没有在搜索框中输入内容
        if (BookName.trim().length == 0) {
            // 将提示下拉框隐藏掉
            listBox.style.display = 'none';
            // 阻止程序向下执行
            return;
        }

        // 开启定时器 让请求延迟发送
        timer = setTimeout(function () {
            // 向服务器端发送请求
            // 向服务器端索取和用户输入关键字相关的内容
            var xhr = new XMLHttpRequest();
            var url = 'BookName='+BookName;
            xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectname');
            // 设置请求参数格式的类型（post请求必须要设置）
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            // 发送请求
            xhr.send(url);
            // 获取服务器端响应的数据
            xhr.onload = function () {
                let res3=JSON.parse(xhr.responseText);
                var topli=document.createElement('li');
                topli.setAttribute('id','topli');
                topli.setAttribute('class','list-group-item');
                topli.innerHTML='';
                listBox.appendChild(topli);
                for(var j=0;j<res3.rows.length;j++){
                    var creali=document.createElement('li');
                    creali.setAttribute('id','search'+j);
                    creali.setAttribute('class','list-group-item');
                    creali.setAttribute('onclick','selectli(this)');
                    creali.innerHTML=res3.rows[j].bookname;
                    listBox.appendChild(creali);
                    // listBox.innerHTML = res3.rows[j].bookname;
                    // 显示ul容器
                    listBox.style.display = 'block';
                }
            }
            // 使用模板引擎拼接字符串
        }, 800)
    }
    function selectli(e) {
        console.log(e.innerHTML);
        searchInp.value=e.innerHTML;
    }
    var searchtop=document.getElementById("search_top");
    searchtop.onmouseout=function () {
        clearTimeout(timer);
        timer = setTimeout(function () {
            listBox.style.display='none';
        },2000)
    }
</script>
<script>
    var searbtn=document.getElementById("searbtn");
    searbtn.onclick=function () {
        var searValue=searchInp.value;
        console.log(searValue);
        if(searValue==''){
            return ;
        }else{
            window.location.href="http://localhost:8080/OBSS_war_exploded/list.jsp?"+searValue;
        }
    }
</script>
</html>