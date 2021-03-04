<%--
  Created by IntelliJ IDEA.
  User: m1877
  Date: 2020/12/15
  Time: 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

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
    <link rel="stylesheet" href="css/cart.css">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
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
                    <li id="use2" style="display: none">
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
<%--main模块制作start--%>
<div class="w">
    <div class="cart_main_box">
        <div class="cart_top_title_box">
            <h3>全部商品</h3>
            <span>
                <p>3</p>
            </span>
        </div>
        <div class="cart_top_show clearfix">
            <div class="shop clearfix">
                全选
            </div>
            <div class="cart_top_shopname_box">
                商品
            </div>
            <div class="cart_top_props">&nbsp;</div>
            <div class="cart_top_price">
                单价
            </div>
            <div class="cart_top_quantity">
                数量
            </div>
            <div class="cart_top_num">
                小计
            </div>
            <div class="cart_top_action">
                操作
            </div>
        </div>
        <div class="cart_main_book_box" id="tab1" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid1"></p>
                    <input type="checkbox" class="check_btn" id="check1" name="check_btn" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid1" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img1">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name1"></p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur1">

                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price1" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao1" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity1" onblur="gonum(this)">
                    <a href="#" class="add" id="add1" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce1" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix" >
                    <p id="pricenum1" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab2" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid2"></p>
                    <input type="checkbox" class="check_btn" id="check2" name="check_btn" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid2" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img2">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name2">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur2">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price">
                    <p id="price2" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao2" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="2" id="quantity2" onblur="gonum(this)">
                    <a href="#" class="add" id="add2" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce2" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum2" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab3" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid3"></p>
                    <input type="checkbox" class="check_btn" id="check3" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid3" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img3">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name3">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur3">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price3" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao3" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity3" onblur="gonum(this)">
                    <a href="#" class="add" id="add3" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce3" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum3" class=""></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab4" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid4"></p>
                    <input type="checkbox" class="check_btn" id="check4" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid4" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img4">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name4">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur4">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price4" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao4" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity4" onblur="gonum(this)">
                    <a href="#" class="add" id="add4" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce4" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum4" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab5" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid5"></p>
                    <input type="checkbox" class="check_btn" id="check5" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid5" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img5">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name5">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur5">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price5" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao5" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity5" onblur="gonum(this)">
                    <a href="#" class="add" id="add5" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce5" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum5" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab6" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid6"></p>
                    <input type="checkbox" class="check_btn" id="check6" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid6" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img6">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name6">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur6">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price6" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao6" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity6" onblur="gonum(this)">
                    <a href="#" class="add" id="add6" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce6" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum6" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab7" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid7"></p>
                    <input type="checkbox" class="check_btn" id="check7" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid7" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img7">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name7">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur7">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price7" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao7" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity7" onblur="gonum(this)">
                    <a href="#" class="add" id="add7" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce7" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum7" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab8" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid8"></p>
                    <input type="checkbox" class="check_btn" id="check8" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid8" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img8">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name8">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur8">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price8" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao8" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity8" onblur="gonum(this)">
                    <a href="#" class="add" id="add8" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce8" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum8" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab9" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid9"></p>
                    <input type="checkbox" class="check_btn" id="check9" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid9" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img9">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name9">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur9">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price9" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao9" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity9" onblur="gonum(this)">
                    <a href="#" class="add" id="add9" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce9" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum9" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
        <div class="cart_main_book_box" id="tab10" style="display: none">
            <div class="cart_mian_book_show clearfix">
                <div class="book_check_box">
                    <p style="display: none;float: left" id="shopbookid10"></p>
                    <input type="checkbox" class="check_btn" id="check10" onclick="allprice2(this)">
                </div>
                <div class="book_img_box">
                    <div id="setbookid10" style="display: none"></div>
                    <img src="upload/2020120146.jpg" alt="" id="img10">
                </div>
            </div>
            <div class="book_name_box clearfix">
                <div class="book_name">
                    <p id="name10">阿里巴巴B2B电商算法实战</p>
                </div>
                <div class="book_autr ">
                    <span>作者：</span>
                    <p id="adur10">
                        阿里集团
                    </p>
                </div>
            </div>
            <div class="book_price_box clearfix">
                <div class="book_price clearfix">
                    <p id="price10" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
                <div class="book_price_war">
                    <p id="chuxiao10" onclick="chuxiao();">促销</p>
                </div>
            </div>
            <div class="book_quantity">
                <div class="choose_amount">
                    <input type="text" value="1" id="quantity10" onblur="gonum(this)">
                    <a href="#" class="add" id="add10" onclick="addnum(this)">+</a>
                    <a href="#" class="reduce" id="reduce10" onclick="reducenum(this)">-</a>
                </div>
            </div>
            <div class="book_pricenum">
                <div class="book_pricenum_box clearfix">
                    <p id="pricenum10" class="fr"></p>
                    <span class="fr">￥</span>
                </div>
            </div>
            <div class="book_action">
                <div class="book_action_box">
                    <a href="#" onclick="deleteshopbook(this)">删除</a>
                </div>
            </div>
        </div>
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
    <div class="cart_bottom_gopay clearfix">
        <div class="shoppayselect clearfix">
            <div class="pay_check_box">
                <input type="checkbox" class="checkbox" id="check_tall" onclick="selectall()">
            </div>
            全选
        </div>
        <div class="cart_bottom_getallprice">
            <div class="bottom_getallprice_box fl">
                <span class="fl">总计￥</span>
                <p class="fl" id="mainprice">0</p>
                <span class="fl">元</span>
            </div>
        </div>
        <div class="cart_bottom_goallpay">
            <div class="bottom_goallpay_box" id="pay">
                <a href="#" onclick="gopay()">去支付</a>
            </div>
        </div>
    </div>
</div>
<%--main模块制作end--%>
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
<%--网页刚加载就运行--%>
<script>
    window.onload=function () {
        onload1();
    }
</script>
<script>
    var use1 =document.getElementById('use1');
    var use2 =document.getElementById('use2');
    var use3 =document.getElementById('use3');
    function onload1() {
        var use3Value = '${sessionScope.customerid}';
        if (use3Value!=''){
            use1.style.display='none';
            use2.style.display='block';
            getshopbookdata();
        }else {
            use1.style.display='block';
            use2.style.display='none';
            alert("请登录才可以使用这个功能！");
            window.location.href="http://localhost:8080/OBSS_war_exploded/login.jsp";
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
<%--主菜单下拉栏--%>
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
<script src="js/ajax.js"></script>
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
            url = 'BookName='+BookName;
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
        if(searValue==''){
            return ;
        }else{
            window.location.href="http://localhost:8080/OBSS_war_exploded/list.jsp?"+searValue;
        }
    }
</script>
<script>
    function chuxiao() {

    }
</script>
<%--获取购物车数据--%>
<script>
    function getshopbookdata() {
        var xhr=new XMLHttpRequest();
        var pareses = 'customerid='+'${sessionScope.customerid}';
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbShopbook/selectid');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1=document.getElementById('paging_num1');
            var paging_num2=document.getElementById('paging_num2');
            //设置最大页数
            paging_num2.innerHTML=maxnum;
            paging_num1.innerHTML='1';
            var num=(res.rows.length)%10;
            for (var i=0;i<res.rows.length&&i<10;i++){
                var quantity=document.getElementById('quantity'+(i+1));
                var pricenum=document.getElementById('pricenum'+(i+1));
                var shopbookid=document.getElementById('shopbookid'+(i+1));
                var setbookid=document.getElementById('setbookid'+(i+1));
                var tab=document.getElementById('tab'+(i+1));
                tab.style.display='block';
                shopbookid.innerHTML=res.rows[i].shopbookid;
                setbookid.innerHTML=res.rows[i].bookid;
                getbookinfor(res.rows[i].bookid,i+1,i);
                quantity.innerHTML=res.rows[i].ordermount;
                pricenum.innerHTML=res.rows[i].price;
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    }
    function getbookinfor(obj,inum,jnum) {
        var xhr=new XMLHttpRequest();
        var pareses = 'BookId='+obj;
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectid');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var name=document.getElementById('name'+inum);
                var adur=document.getElementById('adur'+inum);
                var price=document.getElementById('price'+inum);
                var img=document.getElementById('img'+inum);
                img.src='upload/'+res.rows[0].bookid+'.jpg';
                name.innerHTML=res.rows[0].bookname;
                adur.innerHTML=res.rows[0].bookauthor;
                price.innerHTML=(res.rows[0].bookprice*(0.8));
                console.log('成功查询');
            }else {
                console.log("找不到书籍信息");
            }
        }
    }
</script>
<%--数量变化框--%>
<script>
    function addnum(obj) {
        var getnum=obj.parentNode.children[0];
        var numvalue=parseInt(getnum.value)+1;
        getnum.value=numvalue;
        var getprice=obj.parentNode.parentNode.parentNode.children[2].children[0].children[0];
        var getpricevalue=getprice.innerHTML;
        var getpricenum=obj.parentNode.parentNode.parentNode.children[4].children[0].children[0];
        var getpricenumvalue=Math.floor(numvalue*getpricevalue*100)/100;
        getpricenum.innerHTML=getpricenumvalue;
        var getshopbookid=obj.parentNode.parentNode.parentNode.children[0].children[0].children[0].innerHTML;
        updatashopbook(getshopbookid,getpricenumvalue,numvalue);
    }
    function reducenum(obj) {
        var getnum=obj.parentNode.children[0];
        if (getnum.value<=1){
            return;
        }
        var numvalue=parseInt(getnum.value)-1;
        getnum.value=numvalue;
        var getprice=obj.parentNode.parentNode.parentNode.children[2].children[0].children[0];
        var getpricevalue=getprice.innerHTML;
        var getpricenum=obj.parentNode.parentNode.parentNode.children[4].children[0].children[0];
        var getpricenumvalue=Math.floor(numvalue*getpricevalue*100)/100;
        getpricenum.innerHTML=getpricenumvalue;
        var getshopbookid=obj.parentNode.parentNode.parentNode.children[0].children[0].children[0].innerHTML;
        updatashopbook(getshopbookid,getpricenumvalue,numvalue);
    }
    function gonum(obj) {
        var getnum=obj;
        var numvalue=parseInt(getnum.value);
        getnum.value=numvalue;
        var getprice=obj.parentNode.parentNode.parentNode.children[2].children[0].children[0];
        var getpricevalue=getprice.innerHTML;
        var getpricenum=obj.parentNode.parentNode.parentNode.children[4].children[0].children[0];
        var getpricenumvalue=Math.floor(numvalue*getpricevalue*100)/100;
        getpricenum.innerHTML=getpricenumvalue;
        var getshopbookid=obj.parentNode.parentNode.parentNode.children[0].children[0].children[0].innerHTML;
        console.log(getshopbookid);
        updatashopbook(getshopbookid,getpricenumvalue,numvalue);
    }
    function updatashopbook(getshopbookid,getpricenumvalue,getpricenum){
        var xhr=new XMLHttpRequest();
        var pareses = 'shopbookid='+getshopbookid+'&price='+getpricenumvalue+'&ordermount='+getpricenum;
        console.log(pareses);
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbShopbook/updataforid');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log('更新成功');
            }else {
                console.log('更新失败');
            }
        }
    }
</script>
<%--删除购物车--%>
<script>
    function deleteshopbook(obj) {
        var shopbookid=obj.parentNode.parentNode.parentNode.children[0].children[0].children[0].innerHTML;
        var pareses = 'shopbookid='+shopbookid;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbShopbook/deleteshopbook');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log('删除成功');
                window.location.reload()
            }else {
                console.log('删除失败');
            }
        }
    }
</script>
<%--全选和取消全选--%>
<script>
    function selectall() {
        var checkbox = document.querySelectorAll("input[type='checkbox']");
        if(document.getElementById('check_tall').checked){
            for (var i = 0; i < checkbox.length; i++) {
                checkbox[i].checked = true;
            }
            allprice();
        }else {
            for (var i = 0; i < checkbox.length; i++) {
                checkbox[i].checked = false;
            }
            var mainprice=document.getElementById('mainprice');
            mainprice.innerHTML=0;
        }
    }
</script>
<%--总计--%>
<script>
    // 全选价格变动
    function allprice() {
        var num=0;
        for(var i=1;i<11;i++){
            var pricenum=parseFloat(document.getElementById('pricenum'+i).innerHTML);
            if (pricenum>0){
                num=num+pricenum;
                num=parseInt(num*100)/100;
            }
        }
        var mainprice=document.getElementById('mainprice');
        mainprice.innerHTML=num;
    }
    //单选价格变动
    function allprice2(obj) {
        var mainprice=document.getElementById('mainprice');
        var mainvalue='';
        mainvalue=parseFloat(mainprice.innerHTML);
        mainvalue=parseInt(mainvalue*100)/100;
        var price=parseFloat(obj.parentNode.parentNode.parentNode.children[4].children[0].children[0].innerHTML);
        price=parseInt(price*100)/100;
        if(obj.checked){
            mainvalue+=price;
            mainvalue=parseInt(mainvalue*100)/100;
            mainprice.innerHTML=mainvalue;
        }else {
            mainvalue -= price;
            mainvalue=parseInt(mainvalue*100)/100;
            mainprice.innerHTML = mainvalue;
        }
    }
</script>
<%--去支付--%>
<script>
    function gopay() {
        for (var i=1;i<11;i++){
            var shopbookid=document.getElementById('shopbookid'+i).innerHTML;
            var check=document.getElementById('check'+i);
            if (check.checked&&shopbookid.innerHTML!=''){
                console.log('订单'+i+'选定')
                var ordermount=document.getElementById('quantity'+i).value;
                var totalprice=document.getElementById('pricenum'+i).innerHTML;
                var bookid=document.getElementById('setbookid'+i).innerHTML;
                console.log(totalprice);
                createorder(ordermount,totalprice,bookid,shopbookid)
            }
        }
    }
    // 获取最大orderid
    function getmaxorderid() {
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectAllfororderdesc');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send();
        xhr.onload = function() {
            let res = JSON.parse(xhr.responseText);
            if(res.total==0){
                var orderid=parseInt(res.rows[0].orderid)+1;
                var id=parseInt(res.rows[0].id)+1;
                var returnvalue='orderid='+orderid+'&id='+id;
                console.log('666');
                console.log('returnvalue='+returnvalue)
                return returnvalue;
                alert('查询最大orderid成功！'+orderid)
            }else {
                console.log('错误');
            }
        }
    }
    // 获取最大orderdetillid
    function getmaxorderdetillid() {
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectAlldesc');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send();
        xhr.onload = function() {
            let res = JSON.parse(xhr.responseText);
            if(res.total==0){
                var orderdetailid=parseInt(res.rows[0].orderdetailid)+1;
                var id=parseInt(res.rows[0].id)+1;
                var returnvalue='orderdetailid='+orderdetailid+'&id='+id;
            }else {
                console.log('错误');
            }
        }
    }
    // 获取用户名字,地址，电话
    function getcusnameaddtel() {
        var xhr=new XMLHttpRequest();
        var customerid ='${sessionScope.customerid}';
        var pareses='customerid'+customerid;
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectids');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res = JSON.parse(xhr.responseText);
            if(res.total==0){
                var customerid=res.rows[0].customerid;
                var customername=res.rows[0].customertruename;
                var customertel=res.rows[0].customertel;
                var customeraddr=res.rows[0].customeraddr;
                console.log('888');
                var use='&customerid='+customerid+'&recevername='+customername+'receveraddr'+customeraddr+'&recevertel='+customertel;
                console.log('use='+use)
                return use;
            }else {
                console.log('错误');
            }
        }
    }
    // 创建order
    function createorder(ordermount,totalprice,bookid,shopbookid) {
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectAllfororderdesc');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send();
        xhr.onload = function() {
            let res = JSON.parse(xhr.responseText);
            console.log(res);
            if(res.total==0){
                var orderidvalue='';
                var orderid=parseInt(res.rows[0].orderid)+1;
                var id=parseInt(res.rows[0].id)+1;
                orderidvalue='orderid='+orderid+'&id='+id;

                var xhr2=new XMLHttpRequest();
                var customerid ='${sessionScope.customerid}';
                var pareses2='customerid='+customerid;
                console.log(pareses2)
                var cusinfor='';
                xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectids');
                xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr2.send(pareses2);
                xhr2.onload = function() {
                    let res2 = JSON.parse(xhr2.responseText);
                    if(res2.total==0){
                        var customerid=res2.rows[0].customerid;
                        var customername=res2.rows[0].customertruename;
                        var customertel=res2.rows[0].customertel;
                        var customeraddr=res2.rows[0].customeraddr;
                        cusinfor='&customerid='+customerid+'&recevername='+customername+'&receveraddr='+customeraddr+'&recevertel='+customertel;


                        var xhr3=new XMLHttpRequest();
                        var pareses3 = orderidvalue+cusinfor+'&ordermount='+ordermount+'&message=无'+'&postmethod=无'+'&paymethod=支付宝'+'&memo=无'+'&totalprice='+totalprice;
                        console.log()
                        xhr3.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/addorder');
                        xhr3.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        xhr3.send(pareses3);
                        xhr3.onload = function() {
                            let res3 = JSON.parse(xhr3.responseText);
                            if(res3.total==0){
                                createorderdetill(bookid,ordermount,totalprice,shopbookid);
                                console.log('订单成功！')
                                return true;
                            }else {
                                console.log('错误');
                            }
                        }
                    }else {
                        console.log('错误2');
                    }
                }
            }else {
                console.log('错误');
            }
        }
    }
    // 创建orderdetill
    function createorderdetill(bookid,ordermount,sigletotalprice,shopbookid) {
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectAllfororderdetaildesc');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send();
        xhr.onload = function() {
            let res = JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log(res);
                var orderdetailid=parseInt(res.rows[0].orderdetailld)+1;
                var id=parseInt(res.rows[0].id)+1;
                var returnvalue='orderdetailld='+orderdetailid+'&id='+id;



                var xhr2=new XMLHttpRequest();
                var pareses2 = returnvalue+'&orderid='+orderdetailid+'&bookid='+bookid+'&ordermount='+ordermount+'&poststatus=未发货'+'&recevstatus=未收货'+'&sigletotalprice='+sigletotalprice;
                console.log('createorderdetill======='+pareses2);
                xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/addorderdetail');
                xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr2.send(pareses2);
                xhr2.onload = function() {
                    let res2 = JSON.parse(xhr2.responseText);
                    if(res2.total==0){
                        deleteshobook1(shopbookid);
                        alert('支付成功！');
                        window.location.reload()
                    }else {
                        console.log('错误');
                    }
                }
            }else {
                console.log('错误');
            }
        }
    }
</script>
<%--删除订单--%>
<script>
    function deleteshobook1(shopbookid) {
        var xhr=new XMLHttpRequest();
        var pares='shopbookid='+shopbookid;
        console.log(pares);
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbShopbook/deleteshopbook');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pares);
        xhr.onload = function() {
            let res = JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log('删除成功')
            }else {
                console.log('删除失败')
            }
        }
    }
</script>
</html>
