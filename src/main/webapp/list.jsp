<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>列表页-网上书城-网上购物书店首选-正品低价，品质保障，配送及时，轻松购物
    </title>
    <!-- 网站说明 -->
    <meta name="description" content="网上书城-专业的综合网上书城平台，我们的信念是给与您最好的服务体验，为您提供最便捷，诚信的服务。您的愉悦是我们最大的快乐！" />
    <!-- 关键字 -->
    <meta name="keywords" content="网上购物，网上书店，书城首选" />
    <!-- 引入favicon图标 -->
    <link rel="shortcut icon" href="favicon.ico" />
    <!-- 引入初始化样式文件 -->
    <link rel="stylesheet" href="css/base.css">
    <!-- 引入公共的样式文件 -->
    <link rel="stylesheet" href="css/common.css">
    <!-- 引入列表页的css文件 -->
    <link rel="stylesheet" href="css/list.css">
    <style>
    </style>
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
            <a href="cart.jsp">我的购物车</a>
            <i class="count">8</i>
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
                    <li><a href="index.jsp">首页</a></li>
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
    <!-- 列表页主体部分start -->
    <div class="w sk_container">
        <div class="sk_hd clearfix">
            <ul>
                <li>
                    <a href="index.jsp">回到首页</a>
                </li>
                <li>
                    您正在搜索的是：<p id="getsearch" class="getsearch"></p>
                </li>
            </ul>
        </div>
        <div class="sk_bd clearfix">
            <!-- 主体侧边导航栏 -->
            <div class="side_navigation clearfix">
                <h2>排序：</h2>
                <ul>
                    <li class="icon-arrow-up bgcorgen" id="getbookdealmount">成交量</li>
                    <li class="icon-arrow-up" id="getbooklookmount">浏览次数</li>
                    <li class="icon-arrow-up" id="getbookstoremount">库存</li>
                </ul>
            </div>
        </div>
        <div class="w clearfix" id="search_top1" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid1">
                            <img src="upload/2020120110.jpg" alt="" id="search_img1">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did1"><p id="search_name1">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor1">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid1" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice1">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice1">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top2" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid2">
                            <img src="upload/2020120110.jpg" alt="" id="search_img2">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did2"><p id="search_name2">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor2">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid2" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice2">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice2">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top3" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid3">
                            <img src="upload/2020120110.jpg" alt="" id="search_img3">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did3"><p id="search_name3">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor3">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid3" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice3">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice3">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top4" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid4">
                            <img src="upload/2020120110.jpg" alt="" id="search_img4">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did4"><p id="search_name4">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor4">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid4" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice4">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice4">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top5" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid5">
                            <img src="upload/2020120110.jpg" alt="" id="search_img5">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did5"><p id="search_name5">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor5">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid5" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice5">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice5">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top6" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid6">
                            <img src="upload/2020120110.jpg" alt="" id="search_img6">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did6"><p id="search_name6">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor6">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid6" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice6">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice6">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top7" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid7">
                            <img src="upload/2020120110.jpg" alt="" id="search_img7">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did7"><p id="search_name7">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor7">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid7" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice7">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice7">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top8" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid8">
                            <img src="upload/2020120110.jpg" alt="" id="search_img8">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did8"><p id="search_name8">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor8">作者：</span>
                                </p>
                            </li>
                            <li class="price" style="display: none">
                                <ul>
                                    <div id="setbookid8" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice8">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice8">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top9" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid9">
                            <img src="upload/2020120110.jpg" alt="" id="search_img9">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did9"><p id="search_name9">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor9">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid9" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice9">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice9">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w clearfix" id="search_top10" style="display: none">
            <div class="sort_box clearfix">
                <div class="search_tr_box">
                    <div class="search_td_img_box">
                        <a href="detail.jsp?BookId=2020120110" id="search_tid10">
                            <img src="upload/2020120110.jpg" alt="" id="search_img10">
                        </a>
                    </div>
                    <div class="search_td_details_box">
                        <ul>
                            <li>
                                <a href="detail.jsp?BookId=2020120110" id="search_did10"><p id="search_name10">互联网的设计和演化</p></a>
                            </li>
                            <li>
                                <p class="autor">
                                    <span id="search_autor10">作者：</span>
                                </p>
                            </li>
                            <li class="price">
                                <ul>
                                    <div id="setbookid10" style="display: none"></div>
                                    <li>原价：<p style="text-decoration:line-through;" id="search_baseprice10">￥97.3</p></li>
                                    <li>优惠价：<p id="serch_lastprice10">￥39</p></li>
                                    <li class="addShop icon-cart1"><a href="#" onclick="addshopbook(this)">加入购物车</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w" id="tishi" style="display: none">
            找不到查询的书籍！！！
        </div>
        <div class="paging_box w">
            <div class="paging_ul_box">
                <ul>
                    <li onclick="fistnum()">首页</li>
                    <li onclick="upnum()">上一页</li>
                    <li class="paging_text">目前第
                        <p class="paging_num" id="paging_num1">1</p>
                        页
                    </li>
                    <li onclick="downnum()">下一页</li>
                    <li onclick="lastnum()">尾页</li>
                    <li>共
                        <p class="paging_num" id="paging_num2">3</p>
                        页
                    </li>
                    <li class="paging_text">到
                        <input type="text" value="1" id="shownum">
                        页
                    </li>
                    <li onclick="gonum()">确定</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 列表页主体部分end -->
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
                    <dd><a href="#">生活旅行/团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大家电</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">生活旅行/团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大家电</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">生活旅行/团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大家电</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">生活旅行/团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大家电</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>服务指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">生活旅行/团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大家电</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
            </div>
            <div class="mod_copyright">
                <div class="links">
                    <a href="#">关于我们</a> | <a href="#">联系我们</a> | 联系客服 | 商家入驻 | 营销中心 | 手机品优购 | 友情链接 | 销售联盟 | 品优购社区 |
                    品优购公益 | English Site | Contact U
                </div>
                <div class="copyright">
                    地址：北京市昌平区建材城西路金燕龙办公楼一层 邮编：100096 电话：400-618-4000 传真：010-82935100 邮箱: zhanghj+itcast.cn <br>
                    京ICP备08001421号京公网安备110108007702
                </div>
            </div>
        </div>
    </footer>
    <!-- 底部模块end -->
</body>
<script>
    window.onload=function () {
        onload1();
        onload2();
    }
</script>
<script>        //判定注销和显示用户哪个隐藏
var use1 =document.getElementById('use1');
var use2 =document.getElementById('use2');
function onload1() {
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
<script>        //注销操作
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
<script>
    var getbookdealmount=document.getElementById('getbookdealmount');
    var getbooklookmount=document.getElementById('getbooklookmount');
    var getbookstoremount=document.getElementById('getbookstoremount');
    getbookdealmount.onclick=function () {
        getbookdealmount.className='icon-arrow-up bgcorgen';
        getbooklookmount.className='icon-arrow-up';
        getbookstoremount.className='icon-arrow-up';
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookDealmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num2=document.getElementById('paging_num2');
            paging_num2.innerHTML=maxnum;
            console.log(maxnum);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                console.log(i);
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_img.src='upload/'+res.rows[i].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_name.innerHTML=res.rows[i].bookname;
                search_autor.innerHTML='作者：'+res.rows[i].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[i].bookprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
    getbooklookmount.onclick=function () {
        getbookdealmount.className='icon-arrow-up ';
        getbooklookmount.className='icon-arrow-up bgcorgen';
        getbookstoremount.className='icon-arrow-up';
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookLookmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num2=document.getElementById('paging_num2');
            paging_num2.innerHTML=maxnum;
            console.log(maxnum);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                console.log(i);
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_img.src='upload/'+res.rows[i].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_name.innerHTML=res.rows[i].bookname;
                search_autor.innerHTML='作者：'+res.rows[i].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[i].bookprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
    getbookstoremount.onclick=function () {
        getbookdealmount.className='icon-arrow-up ';
        getbooklookmount.className='icon-arrow-up ';
        getbookstoremount.className='icon-arrow-up bgcorgen';
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookLookmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num2=document.getElementById('paging_num2');
            paging_num2.innerHTML=maxnum;
            console.log(maxnum);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                console.log(i);
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_img.src='upload/'+res.rows[i].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_name.innerHTML=res.rows[i].bookname;
                search_autor.innerHTML='作者：'+res.rows[i].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[i].bookprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
</script>
<script>     //主菜单下拉栏
var dropdown = document.getElementById('dropdown');
var dt = document.getElementById('dt');
var dd = document.getElementById('dd');
dropdown.onmouseover=function () {
    ddblock();
}
dropdown.onmouseout=function () {
    ddnone();
}

function ddblock() {
    dd.style.display='block';
}
function ddnone() {
    dd.style.display='none';
}
</script>
<script>                //页面刚加载时获取主体数据
    function onload2() {
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookDealmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num2=document.getElementById('paging_num2');
            paging_num2.innerHTML=maxnum;
            console.log(maxnum);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                var setbookid=document.getElementById('setbookid'+(i+1));
                var serch_lastprice=document.getElementById('serch_lastprice'+(i+1));
                var lastprice=parseFloat(res.rows[i].bookprice)*0.8;
                lastprice= parseInt(lastprice*100)/100;
                serch_lastprice.innerHTML=lastprice;
                setbookid.innerHTML=res.rows[i].bookid;
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_img.src='upload/'+res.rows[i].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_name.innerHTML=res.rows[i].bookname;
                search_autor.innerHTML='作者：'+res.rows[i].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[i].bookprice;

            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
</script>
<script>
    function  fistnum(){
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookDealmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                var setbookid=document.getElementById('setbookid'+(i+1));
                var serch_lastprice=document.getElementById('serch_lastprice'+(i+1));
                var lastprice=parseFloat(res.rows[i].bookprice)*0.8;
                lastprice= parseInt(lastprice*100)/100;
                serch_lastprice.innerHTML=lastprice;
                setbookid.innerHTML=res.rows[i].bookid;
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_img.src='upload/'+res.rows[i].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[i].bookid;
                search_name.innerHTML=res.rows[i].bookname;
                search_autor.innerHTML='作者：'+res.rows[i].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[i].bookprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
    function  lastnum(){
        var paging_num2=document.getElementById('paging_num2').innerHTML-1;
        console.log(paging_num2*10)
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookDealmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(paging_num2*10)+i;
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                var setbookid=document.getElementById('setbookid'+(i+1));
                var serch_lastprice=document.getElementById('serch_lastprice'+(i+1));
                var lastprice=parseFloat(res.rows[i].bookprice)*0.8;
                lastprice= parseInt(lastprice*100)/100;
                serch_lastprice.innerHTML=lastprice;
                setbookid.innerHTML=res.rows[j].bookid;
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[j].bookid;
                search_img.src='upload/'+res.rows[j].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[j].bookid;
                search_name.innerHTML=res.rows[j].bookname;
                search_autor.innerHTML='作者：'+res.rows[j].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[j].bookprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
    function  upnum(){
        var paging_num1=document.getElementById('paging_num1')-1;
        var upnum=0;
        if(paging_num1>0){
            upnum=paging_num1-1;
        }
        else {
            return;
        }
        console.log(upnum);
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookDealmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(upnum*10)+i;
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                var setbookid=document.getElementById('setbookid'+(i+1));
                var serch_lastprice=document.getElementById('serch_lastprice'+(i+1));
                var lastprice=parseFloat(res.rows[i].bookprice)*0.8;
                lastprice= parseInt(lastprice*100)/100;
                serch_lastprice.innerHTML=lastprice;
                setbookid.innerHTML=res.rows[j].bookid;
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[j].bookid;
                search_img.src='upload/'+res.rows[j].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[j].bookid;
                search_name.innerHTML=res.rows[j].bookname;
                search_autor.innerHTML='作者：'+res.rows[j].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[j].bookprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
    function  downnum(){
        var paging_num1=document.getElementById('paging_num1')-1;
        var downnum=0;
        var paging_num2=document.getElementById('paging_num2')-1;
        if (paging_num2>paging_num1){
            downnum=paging_num1+1;
        }else {
            return;
        }
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookDealmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(downnum*10)+i;
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                var setbookid=document.getElementById('setbookid'+(i+1));
                var serch_lastprice=document.getElementById('serch_lastprice'+(i+1));
                var lastprice=parseFloat(res.rows[i].bookprice)*0.8;
                lastprice= parseInt(lastprice*100)/100;
                serch_lastprice.innerHTML=lastprice;
                setbookid.innerHTML=res.rows[j].bookid;
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[j].bookid;
                search_img.src='upload/'+res.rows[j].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[j].bookid;
                search_name.innerHTML=res.rows[j].bookname;
                search_autor.innerHTML='作者：'+res.rows[j].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[j].bookprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
    function  gonum(){
        var shownum=document.getElementById('shownum')-1;
        var gonum=0;
        var paging_num2=document.getElementById('paging_num2')-1;
        if (paging_num2>shownum){
            gonum=shownum;
        }else {
            return;
        }
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        var getsearch=document.getElementById('getsearch');
        URL = URL.split('?')[1]; //获取参数列表
        var BookName=null;
        BookName=decodeURIComponent(URL);
        getsearch.innerHTML=BookName;
        var urlValue = 'BookName='+BookName;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectnamebyBookDealmountdesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res=JSON.parse(xhr.responseText);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(gonum*10)+i;
                var search_top=document.getElementById('search_top'+(i+1));
                var search_tid=document.getElementById('search_tid'+(i+1));
                var search_img=document.getElementById('search_img'+(i+1));
                var search_did=document.getElementById('search_did'+(i+1));
                var search_name=document.getElementById('search_name'+(i+1));
                var search_autor=document.getElementById('search_autor'+(i+1));
                var search_baseprice=document.getElementById('search_baseprice'+(i+1));
                var setbookid=document.getElementById('setbookid'+(i+1));
                var serch_lastprice=document.getElementById('serch_lastprice'+(i+1));
                var lastprice=parseFloat(res.rows[i].bookprice)*0.8;
                lastprice= parseInt(lastprice*100)/100;
                serch_lastprice.innerHTML=lastprice;
                setbookid.innerHTML=res.rows[j].bookid;
                search_top.style.display='block';
                search_tid.href='detail.jsp?BookId='+res.rows[j].bookid;
                search_img.src='upload/'+res.rows[j].bookid+'.jpg';
                search_did.href='detail.jsp?BookId='+res.rows[j].bookid;
                search_name.innerHTML=res.rows[j].bookname;
                search_autor.innerHTML='作者：'+res.rows[j].bookauthor;
                search_baseprice.innerHTML='￥'+res.rows[j].bookprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
                var tishi=document.getElementById('tishi');
                tishi.style.display='block';
                return;
            }
        }
    }
</script>
<%--加入购物车--%>
<script>
    function addshopbook(obj) {
        var use3Value = '${sessionScope.customerid}';
        if (use3Value==''){
            alert("请先登录才能使用购物车功能");
            return;
        }else {
            getbookshop(obj);
        }
    }
    function getbookshop(obj){
        var bookid=obj.parentNode.parentNode.children[0].innerHTML;
        var xhr=new XMLHttpRequest();
        var pareses = 'customerid='+'${sessionScope.customerid}'+'&bookid='+bookid;
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbShopbook/selectidt');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                alert("购物车里已经有同类书籍");
                return;
            }
            else{
                console.log("失败");
                getshopbookid(obj);
            }
        }
    }
    function insertshop(numv,obj) {
        var xhr=new XMLHttpRequest();
        var shopbookid=numv;
        var bookid=obj.parentNode.parentNode.children[0].innerHTML;
        var price=parseInt(obj.parentNode.parentNode.children[2].children[0].innerHTML);
        var mainprice=price;
        var pareses ='shopbookid='+shopbookid+'&customerid='+'${sessionScope.customerid}'+'&bookid='+bookid+'&ordermount=1'+'&price='+mainprice+'&ispay=未付款';
        console.log(pareses);
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbShopbook/addbookshop');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                alert("添加成功");
                return;
            }
            else{
                alert("添加失败");
                console.log("失败");
            }
        }
    }
    function getshopbookid(obj) {
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbShopbook/selectAlldesc');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send();
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var numv='';
                numv=parseInt(res.rows[0].shopbookid)+1;
                console.log(numv);
                insertshop(numv,obj);
            }
            else{
                console.log("失败");
            }
        }
    }
</script>
</html>