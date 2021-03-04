<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人中心</title>
    <!-- 引入favicon图标 -->
    <link rel="shortcut icon" href="favicon.ico" />
    <!-- 引入初始化的css -->
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/common.css">
    <!-- 引入的注册页面的css -->
    <link rel="stylesheet" href="css/personalCenter.css">
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
                    <li><a href="#">购物车</a></li>
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
    <div class="form_myinfor">
        <!-- 面包屑导航 -->
        <div class="form_myinfor_title">
            <a href="index.jsp">书城</a>
            〉 <a href="personalCenter.jsp">个人中心 </a>
        </div>
        <div class="for_myinfor_main">
            <div class="for_myinfor_left_box">
                <div class="for_myinfor_left_title">
                    我的信息
                </div>
                <ul>
                    <li>
                        <div class="left_two_title">订单管理</div>
                        <ul>
                            <li>
                                <a href="#" onclick="gomyorder()">我的订单</a>
                            </li>
                            <li>
                                <a href="#" onclick="gomyorderinfor()">订单查询</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div class="left_two_title">账号管理</div>
                        <ul>
                            <li>
                                <a href="#" onclick="gomyinfor()">账号信息</a>
                            </li>
                            <li>
                                <a href="#" onclick="gomypwd()">更改密码</a>
                            </li>
                            <li>
                                <a href="#" onclick="gomyquer()">更改密保问题</a>
                            </li>
                        </ul>
                    </li>
                    <li >
                        <div class="left_two_title">我的商品</div>
                        <ul>
                            <li>
                                <a href="#" onclick="goshopbook()">我的购物车</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div class="left_two_title">我的评论</div>
                        <ul>
                            <li>
                                <a href="#" onclick="gomycommon()">我的评论</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="for_myinfor_right_box" id="myinfor" style="display:block;">
                <div class="for_myinfor_right_title">账号信息</div>
                <div class="for_myinfor_right_maininfor">
                    <div class="neirong">
                        <ul>
                            <li class="clearfix">
                                <label for="CustomerID" class="fl">会员账号:</label>
                                <p id="CustomerID" class="fl"></p>
                            </li>
                            <li>
                                <label for="CustomerName">用户名字:</label>
                                <input type="text" id="CustomerName">
                            </li>
                            <li>
                                <label for="Customertruename">账号名字:</label>
                                <input type="text" name="name" id="Customertruename">
                                <span style="display: none">
                                    <p>账号名字不能为空！</p>
                                </span>
                            </li>
                            <li>
                                <span>用户性别</span>
                                <label>
                                    <input type="radio" name="sex" value="男" id="man">男
                                </label>
                                <label>
                                    <input type="radio" name="sex" value="女" id="women">女
                                </label>
                                <label>
                                    <input type="radio" name="sex" value="保密" id="nospeak">保密
                                </label>
                            </li>
                            <li>
                                <label for="telephone">电话号码</label>
                                <input type="text" id="telephone">
                                <span style="display: none">
                                    <p>
                                        电话号码不能为空！
                                    </p>
                                </span>
                            </li>
                            <li class="clearfix">
                                <span class="fl">收货地址：</span>
                                <div class="form-group">
                                    <select class="form-control" id="s1" οnchange="chinaChange(this,document.getElementById('city'));">
                                        <option>请选择省份</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" name="city" id="s2">
                                        <option>请选择城市</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" id="s3">
                                        <option>请选择县城</option>
                                    </select>
                                </div>
                            </li>
                            <li class="clearfix">
                                <label for="address" class="fl">详细门牌号：</label>
                                <textarea name="address" id="address" cols="30" rows="5" class="address"></textarea>
                            </li>
                            <li class="clearfix">
                                <label for="createtime" class="fl">注册时间：</label>
                                <p id="createtime" class="fl"></p>
                            </li>
                            <li class="clearfix" id="customerquer_box" style="display: block">
                                <label for="customerquer">设置问题:</label>
                                <input type="text" name="customerquer" id="customerquer" value="">
                            </li>
                            <li class="clearfix" id="customeranswer_box" style="display: block">
                                <label for="customeranswer">问题答案:</label>
                                <input type="text" name="customeranswer" id="customeranswer" value="">
                            </li>
                        </ul>
                        <button class="neirong_btn" id="neirong_btn" onclick="updata()">保存信息</button>
                        <div class="neirong_touxiang_box">
                            <form action="#" enctype="multipart/form-data" method="post" id="uploadimg2">
                                <div id="imgshow2" >
                                    <input type="text" name="imgname" value="" id="imgname2" style="display: none">
                                    <input type="file" onchange="show2(this)" name="myfile" id="myfile2" value="" />
                                </div>
                                <div id="imgaction2">
                                    <button id="clearall2">重置</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="for_myinfor_right_box" id="myorder" style="display:none;">
                <div class="for_myinfor_right_title">我的订单</div>
                <div class="for_title_myorder_box">
                    <div class="for_title_myorder_select" id="allorder" onclick="allorderonclick()">全部订单</div>
                    <div class="for_title_myorder" id="noorder" onclick="noorderonclick()">未收货订单</div>
                    <div class="for_title_myorder" id="histeryorder" onclick="histeryorderonclick()">历史订单</div>
                    <div class="for_title_myorder" id="backorder" onclick="backorderonclick()">申请退货订单</div>
                </div>
                <div class="order_box">
                    <ul>
                        <li>
                            <span>订单编号</span>
                        </li>
                        <li>
                            <span>下单日期</span>
                        </li>
                        <li>
                            <span>总订购数</span>
                        </li>
                        <li>
                            <span>送货方式</span>
                        </li>
                        <li>
                            <span>支付方式</span>
                        </li>
                        <li>
                            <span>收货人姓名</span>
                        </li>
                        <li>
                            <span>收货人地址</span>
                        </li>
                        <li>
                            <span>收货人电话</span>
                        </li>
                        <li>
                            <span>总卖出价</span>
                        </li>
                        <li class="main_action">
                            <span class="main_two_action">操作</span>
                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_1" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_1">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_1">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_1" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_1" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_1">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_1" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_1" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_1" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_1" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder1">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack1">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder1">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder1">确认收货</button>

                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_2" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_2">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_2">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_2" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_2" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_2" >
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_2" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_2" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_2" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_2" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder2">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack2">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder2">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder2">确认收货</button>

                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_3" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_3">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_3">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_3" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_3" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_3">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_3" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_3" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_3" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_3" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder3">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack3">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder3">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder3">确认收货</button>

                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_4" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_4">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_4">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_4" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_4" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_4">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_4" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_4" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_4" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_4" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder4">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack4">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder4">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder4">确认收货</button>

                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_5" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_5">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_5">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_5" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_5" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_5">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_5" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_5" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_5" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_5" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder5">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack5">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder5">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder5">确认收货</button>

                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_6" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_6">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_6">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_6" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_6"readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_6">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_6" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_6" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_6" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_6" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder6">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack6">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder6">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder6">确认收货</button>
                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_7" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_7">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_7">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_7" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_7" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_7">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_7" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_7" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_7" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_7" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder7">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack"7>前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder7">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder7">确认收货</button>
                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_8" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_8">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_8">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_8" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_8" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_8">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_8" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_8" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_8" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_8" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder8">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack8">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder8">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder8">确认收货</button>
                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_9" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_9">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_9">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_9" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_9" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_9">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_9" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_9" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_9" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_9" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder9">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack9">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder9">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder9">确认收货</button>
                        </li>
                    </ul>
                </div>
                <div class="order_data_box" id="tab_order1_1_10" style="display: none">
                    <ul>
                        <li>
                            <input type="text" value="订单编号" readonly="readonly" id="OrderId3_10">
                        </li>
                        <li>
                            <input type="text" value="下单日期" readonly="readonly" id="Orderdate3_10">
                        </li>
                        <li>
                            <input type="text"  id="Ordermount3_10" readonly="readonly" value="数量">
                        </li>
                        <li>
                            <input type="text" value="送货方式" id="postmethod3_10" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="支付方式" readonly="readonly" id="paymethod3_10">
                        </li>
                        <li>
                            <input type="text" value="收入人名字" id="recevername3_10" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货地址" id="receveraddr3_10" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="收货电话" id="recevertel3_10" readonly="readonly">
                        </li>
                        <li>
                            <input type="text" value="总价格" id="totalprice3_10" readonly="readonly">
                        </li>
                        <li class="show_action" >
                            <button onclick="gobackorderaction(this)" style="display: none" id="backorder10">申请退货</button>
                            <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack10">前往评论</button>
                            <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder10">取消退货</button>
                            <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder10">确认收货</button>
                        </li>
                    </ul>
                </div>
                <div class="paging_box">
                    <div class="paging_ul_box">
                        <ul>
                            <li onclick="fistnum_orderinfor()">首页</li>
                            <li onclick="upnum_orderinfor()">上一页</li>
                            <li class="paging_text">目前第
                                <p class="paging_num" id="paging_num1_orderinfor">1</p>
                                页
                            </li>
                            <li onclick="downnum_orderinfor()">下一页</li>
                            <li onclick="lastnum_orderinfor()">尾页</li>
                            <li>共
                                <p class="paging_num" id="paging_num2_orderinfor">1</p>
                                页
                            </li>
                            <li class="paging_text">到
                                <input type="text" value="1" id="shownum_orderinfor">
                                页
                            </li>
                            <li onclick="gonum_orderinfor()">确定</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="for_myinfor_right_box" id="myorderinfor" style="display:block;">
                <div class="for_myinfor_right_title">订单查询</div>
                <div class="main_order_title">
                    <div class="main_order_tips">
                        <span>请输入您要查询的订单ID：</span>
                        <input type="text" value="" id="top_input_orderselect">
                        <input type="button" onclick="selectidinfororder4()" value="确定" class="tab_cusinfor">
                    </div>
                    <div class="order_box">
                        <ul>
                            <li>
                                <span>订单编号</span>
                            </li>
                            <li>
                                <span>下单日期</span>
                            </li>
                            <li>
                                <span>总订购数</span>
                            </li>
                            <li>
                                <span>送货方式</span>
                            </li>
                            <li>
                                <span>支付方式</span>
                            </li>
                            <li>
                                <span>收货人姓名</span>
                            </li>
                            <li>
                                <span>收货人地址</span>
                            </li>
                            <li>
                                <span>收货人电话</span>
                            </li>
                            <li>
                                <span>总卖出价</span>
                            </li>
                            <li class="main_action">
                                <span class="main_two_action">操作</span>
                            </li>
                        </ul>
                    </div>
                    <div class="order_data_box" id="tab_order2_1_1" style="display: none">
                        <ul>
                            <li>
                                <input type="text" value="订单编号" readonly="readonly" id="OrderId2_1">
                            </li>
                            <li>
                                <input type="text" value="下单日期" readonly="readonly" id="Orderdate2_1">
                            </li>
                            <li>
                                <input type="text"  id="Ordermount2_1" readonly="readonly" value="数量">
                            </li>
                            <li>
                                <input type="text" value="送货方式" id="postmethod2_1" readonly="readonly">
                            </li>
                            <li>
                                <input type="text" value="支付方式" readonly="readonly" id="paymethod2_1">
                            </li>
                            <li>
                                <input type="text" value="收入人名字" id="recevername2_1" readonly="readonly">
                            </li>
                            <li>
                                <input type="text" value="收货地址" id="receveraddr2_1" readonly="readonly">
                            </li>
                            <li>
                                <input type="text" value="收货电话" id="recevertel2_1" readonly="readonly">
                            </li>
                            <li>
                                <input type="text" value="总价格" id="totalprice2_1" readonly="readonly">
                            </li>
                            <li class="show_action" >
                                <button onclick="gobackorderaction(this)" style="display: none" id="backorder2_1">申请退货</button>
                                <button onclick="gospeakorderaction(this)" style="display: none" id="gospeack2_1">前往评论</button>
                                <button onclick="goquitbackorderaction(this)" style="display: none" id="cancelorder2_1">取消退货</button>
                                <button onclick="goquitorderaction(this)" style="display: none" id="confirmorder2_1">确认收货</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="for_myinfor_right_box" id="mypwd" style="display:none">
                <div class="for_myinfor_right_title">更改密码</div>
                <div id="get_ans_box" class="get_ans_box" style="display: block">
                    <label for="get_ans" id="set_ans">问题:</label>
                    <input type="text" id="get_ans">
                    <input type="button" value="确定" onclick="updatpasswordaction()" class="btn">
                </div>
                <div id="updata_password_box" class="updata_password_box" style="display: none">
                    <label for="updata_possword1">
                        输入更新的密码：
                        <img src="images/close.png" alt="" id="eye1">
                    </label>
                    <input type="possword" id="updata_possword1">
                    <br>
                    <label for="updata_possword2">
                        请再次输入密码：
                        <img src="images/close.png" alt="" id="eye2">
                    </label>
                    <input type="text" id="updata_possword2">
                    <br>
                    <input type="button" value="确定" class="queit_btn" onclick="updatpasswordaction2()" style="display: none" id="requepwd1">
                </div>
            </div>
            <div class="for_myinfor_right_box" id="myquer" style="display:none">
                <div class="for_myinfor_right_title">更改密保问题</div>
                <div id="get_pwd_box" class="get_pwd_box" style="display: block;">
                    <label for="pwd_updataquer">
                        请输入密码进行验证:
                        <img src="images/close.png" alt="" id="eye3">
                    </label>
                    <input type="password" id="pwd_updataquer">
                    <input type="button" value="确定" onclick="updataanswerand()" class="btn">
                </div>
                <div id="updata_quer_box" class="updata_quer_box" style="display: none">
                    <label for="updata_quer">请输入问题：</label>
                    <input type="text" id="updata_quer">
                    <br>
                    <label for="updata_ans">请输入问题答案：</label>
                    <input type="text" id="updata_ans">
                    <br>
                    <input type="button" value="确定" class="queit_btn" onclick="updataanswerand2()" id="requeanw1">
                </div>
            </div>
            <div class="for_myinfor_right_box" id="mycommon" style="display:block;">
                <div class="for_myinfor_right_title">我的评论</div>
                <div class="mycommon_title" id="mycommon_title">
                    <ul>
                        <li>
                            <div>图书名字</div>
                        </li>
                        <li>
                            <div>
                                图书价格
                            </div>
                        </li>
                        <li>
                            <div>
                                评论时间
                            </div>
                        </li>
                        <li>
                            <div>
                                评论内容
                            </div>
                        </li>
                        <li class="main_action">
                            <div>
                                操作
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show1" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_1" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_1" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_1" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_1" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id1" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show2" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_2" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_2" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_2" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_2" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id2" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show3" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_3" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_3" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_3" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_3" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id3" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show4" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_4" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_4" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_4" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_4" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id4" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show5" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_5" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_5" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_5" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_5" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id5" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show6" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_6" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_6" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_6" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_6" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id6" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show7" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_7" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_7" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_7" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_7" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id7" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show8" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_8" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_8" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_8" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_8" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id8" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show9" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_9" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_9" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_9" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_9" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id9" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="mycommon_show_data" id="mycommon_show10" style="display: none">
                    <ul>
                        <li>
                            <div>
                                <input type="text" id="common_bookname_10" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_price_10" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commontime_10" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div>
                                <input type="text" id="common_commoncontent_10" readonly="readonly">
                            </div>
                        </li>
                        <li>
                            <div class="show_action">
                                <input type="text" id="common_id10" style="display: none" value="">
                                <input type="button" value="删除" onclick="deletecommon(this)" class="mycomon_btn">
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="paging_box">
                    <div class="paging_ul_box">
                        <ul>
                            <li onclick="fistnum_orderinfor()">首页</li>
                            <li onclick="upnum_orderinfor()">上一页</li>
                            <li class="paging_text">目前第
                                <p class="paging_num" id="paging_num1_mycommon">1</p>
                                页
                            </li>
                            <li onclick="downnum_orderinfor()">下一页</li>
                            <li onclick="lastnum_orderinfor()">尾页</li>
                            <li>共
                                <p class="paging_num" id="paging_num2_mycommon">1</p>
                                页
                            </li>
                            <li class="paging_text">到
                                <input type="text" value="1" id="shownum_mycommon">
                                页
                            </li>
                            <li onclick="gonum_orderinfor()">确定</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="for_myinfor_right_box" id="speakcommon" style="display: none">
                <div class="for_myinfor_right_title">对订单评价</div>
                <div class="show_comon_book_box">
                    <div class="common_left_box">
                        <div id="getbookid" style="display: none"></div>
                        <div class="common_book_img_box">
                            <img src="upload/2020120101.jpg" alt="" id="common_bookimg">
                        </div>
                    </div>
                    <div class="common_right_box">
                        <div class="common_book_name_box">
                            <span id="common_bookname">书的名字</span>
                        </div>
                        <div class="common_autor_name_box">
                            <span id="common_bookauthor">作者名字</span>
                        </div>
                        <div class="common_book_price_box">
                            <span id="common_bookprice">书的价格</span>
                        </div>
                    </div>
                </div>
                <div class="get_cus_common">
                    <label for="cus_common">请输入您的评价：</label>
                    <textarea name="cus_common" id="cus_common" cols="50" rows="10"></textarea>
                    <input type="button" value="提交" onclick="insertcommon(this)">
                </div>
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
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<%--表单跳转--%>
<script>
    var myinfor=document.getElementById('myinfor');
    var myorder=document.getElementById('myorder');
    var myorderinfor=document.getElementById('myorderinfor');
    var mypwd=document.getElementById('mypwd');
    var mycommon=document.getElementById('mycommon');
    var myquer =document.getElementById('myquer');
    var speakcommon=document.getElementById('speakcommon');
    function gomyinfor() {
        onload4()
        myinfor.style.display='block';
        myorder.style.display='none';
        myorderinfor.style.display='none';
        mypwd.style.display='none';
        mycommon.style.display='none';
        myquer.style.display='none';
        speakcommon.style.display='none';
    }
    function gomyorder() {
        selectallorder();
        myinfor.style.display='none';
        myorder.style.display='block';
        myorderinfor.style.display='none';
        mypwd.style.display='none';
        mycommon.style.display='none';
        myquer.style.display='none';
        speakcommon.style.display='none';
    }
    function gomyorderinfor() {
        myinfor.style.display='none';
        myorder.style.display='none';
        myorderinfor.style.display='block';
        mypwd.style.display='none';
        mycommon.style.display='none';
        myquer.style.display='none';
        speakcommon.style.display='none';
    }
    function gomypwd() {
        myinfor.style.display='none';
        myorder.style.display='none';
        myorderinfor.style.display='none';
        mypwd.style.display='block';
        mycommon.style.display='none';
        myquer.style.display='none';
        speakcommon.style.display='none';
    }
    function gomycommon() {
        getcommonformycommon();
        myinfor.style.display='none';
        myorder.style.display='none';
        myorderinfor.style.display='none';
        mypwd.style.display='none';
        mycommon.style.display='block';
        myquer.style.display='none';
        speakcommon.style.display='none';
    }
    function gomyquer() {
        myinfor.style.display='none';
        myorder.style.display='none';
        myorderinfor.style.display='none';
        mypwd.style.display='none';
        mycommon.style.display='none';
        myquer.style.display='block';
        speakcommon.style.display='none';
    }
    function goshopbook() {
        myinfor.style.display='none';
        myorder.style.display='none';
        myorderinfor.style.display='none';
        mypwd.style.display='none';
        mycommon.style.display='none';
        myquer.style.display='none';
        speakcommon.style.display='none';
        window.location.href="http://localhost:8080/OBSS_war_exploded/cart.jsp"
    }
</script>
<%--网页加载启用--%>
<script>
    window.onload=function () {
        onload3();
        setup();
        preselect('江苏省');
        promptinfo();
        gomyinfor();
    }
</script>
<%--判断登录用户--%>
<script>
    var use1 =document.getElementById('use1');
    var use2 =document.getElementById('use2');
    var use3 =document.getElementById('use3');
    function onload3() {
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
<%--搜索功能实现--%>
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
<%--菜单下拉栏--%>
<script>
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
<%--更新图片信息--%>
<script>
    function show2(file) {
        // FileReader对象用于读取文件
        var reader = new FileReader();
        //读取File对象的数据
        reader.onload = function(e) {
            $('#imgshow2').css("background-image", "url(" + e.target.result + ")");
        }
        reader.readAsDataURL(file.files[0]);
    }
    function addimg2() {
        var form=document.getElementById('uploadimg2');
        var myfile = $("#myfile2")[0].files;
        //获取文件上传文件的文件名和扩展名
        if (myfile[0] == undefined) {
            console.log('未上传任何图片！');
        } else {
            //异步上传时用到的formDate储存
            var formValue=new FormData(form);
            //异步
            var xhr= new XMLHttpRequest();
            xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/uploadimg');
            // 设置请求参数格式的类型（post请求必须要设置）但是如果是上传的是文件，则这个头就不用设置了，设置了反而有问题
            // xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            // 发送请求
            xhr.send(formValue);
            // 获取服务器端响应的数据
            xhr.onload = function () {
                let res=JSON.parse(xhr.responseText);
                if(res.total==0){
                    alert('上传图片成功');
                    console.log('上传成功！');
                }
                else {
                    alert('上传失败');
                    console.log('上传失败！');
                }
            }
        }
    }
    $("#clearall2").click(function() {
        $("#myfile2").val("");
        $('#imgshow2').css("background-image", "url(../upload/shuruimg.png)");
    });
</script>
<%--更新个人信息数据--%>
<script>
    var neirong_btn=document.getElementById('neirong_btn');
    function updata() {
        addimg2();
        var xhr = new XMLHttpRequest();
        var CustomerID=document.getElementById('CustomerID').innerText;
        var CustomerName=document.getElementById('CustomerName').value;
        var Customertruename=document.getElementById('Customertruename').value;
        var sexvalue='';
        var man=document.getElementById('man');
        var women=document.getElementById('women');
        var nospeak=document.getElementById('nospeak');
        if(man.checked){
            sexvalue='男';
        }
        if (women.checked){
            sexvalue='女'
        }
        if (nospeak.checked&&sexvalue==''){
            sexvalue='保密'
        }
        var customerquer=document.getElementById('customerquer').value;
        var customeranswer=document.getElementById('customeranswer').value;
        var telephone=document.getElementById('telephone').value;
        var s1=document.getElementById('s1');
        var s1Value=s1.options[s1.selectedIndex].value;
        var s2=document.getElementById('s2');
        var s2Value=s2.options[s2.selectedIndex].value;
        var s3=document.getElementById('s3');
        var s3Value=s3.options[s3.selectedIndex].value;
        var address=document.getElementById('address').value;
        var addValue=s1Value+'|'+s2Value+'|'+s3Value+'@'+address;
        var urlValue = 'customerid='+ CustomerID+'&customername='+CustomerName+'&customertruename='+Customertruename+'&customersex='+sexvalue+'&customertel='+telephone+'&customeraddr='+addValue+'&customerquer='+customerquer+'&customeranswer='+customeranswer;
        console.log(urlValue);
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/updateTbCustomer');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                alert('更新成功');
            }
            else{
                alert('更新失败');
                return;
            }
        }
    }
</script>
<%--获取数据--%>
<script>
    function onload4() {
        var usernameValue = '${sessionScope.customerid}';
        var timer = null;
        if (usernameValue==''){
            alert("请先登录才可继续使用该功能!");
            clearTimeout(timer);
            timer = setTimeout(function () {
                window.location.href="http://localhost:8080/OBSS_war_exploded/login.jsp";
            },1000)
        }else {
            var urlValue = 'customerid='+ usernameValue;
            var CustomerIDValue=document.getElementById('CustomerID');
            var CustomerNameValue=document.getElementById('CustomerName');
            var CustomertruenameValue=document.getElementById('Customertruename');
            var telephoneValue=document.getElementById('telephone');
            var createtimeValue=document.getElementById('createtime');
            var customerquer=document.getElementById('customerquer');
            var customeranswer=document.getElementById('customeranswer');
            var set_ans=document.getElementById('set_ans');
            var xhr = new XMLHttpRequest();
            xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectids');
            // 设置请求参数格式的类型（post请求必须要设置）
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            // 发送请求
            xhr.send(urlValue);
            // 获取服务器端响应的数据
            xhr.onload = function () {
                let res=JSON.parse(xhr.responseText);
                CustomerIDValue.innerHTML=res.rows[0].customerid;
                CustomerNameValue.value=res.rows[0].customername;
                CustomertruenameValue.value=res.rows[0].customertruename;
                telephoneValue.value=res.rows[0].customertel;
                createtimeValue.innerHTML=res.rows[0].customerregtime;
                customerquer.value=res.rows[0].customerquer;
                customeranswer.value=res.rows[0].customeranswer;
                set_ans.innerHTML='问题：'+res.rows[0].customerquer;
                setsexaction(res.rows[0].customersex);
                setaddress(res.rows[0].customeraddr);
                var imgshow2=document.getElementById('imgshow2');
                var url="url('upload/"+res.rows[0].customerid+".jpg')";
                imgshow2.style.backgroundImage=url;
                console.log('customerquer='+res.rows[0].customerquer);
                var customerquer_box=document.getElementById('customerquer_box');
                customerquer_box.style.display='block';
                var customeranswer_box=document.getElementById('customeranswer_box');
                customeranswer_box.style.display='block';
                if (res.rows[0].customerquer!=''){
                    customerquer_box.style.display='none';
                    customeranswer_box.style.display='none';
                }
                if(res.total==0){
                    console.log("查询成功");
                }
                else{
                    console.log("失败")
                    return;
                }
            }
        }
    }
</script>
<%--地址下拉栏赋值操作--%>
<script>
    function promptinfo()
    {
        var address = document.getElementById('address').value;
        var s1 = document.getElementById('s1').value;
        var s2 = document.getElementById('s2').value;
        var s3 = document.getElementById('s3').value;
        address=""+s1 + "|" + s2 + "|" + s3;
        return address;
    }

    function Dsy() {
        this.Items = {};
    }
    Dsy.prototype.add = function(id, iArray) {
        this.Items[id] = iArray;
    }
    Dsy.prototype.Exists = function(id) {
        if (typeof (this.Items[id]) == "undefined")
            return false;
        return true;
    }

    function change(v) {
        var str = "0";
        for (i = 0; i < v; i++) {
            str += ("_" + (document.getElementById(s[i]).selectedIndex - 1));
        }

        var ss = document.getElementById(s[v]);
        with (ss) {
            length = 0;
            options[0] = new Option(opt0[v], opt0[v]);
            if (v && document.getElementById(s[v - 1]).selectedIndex > 0 || !v) {
                if (dsy.Exists(str)) {
                    ar = dsy.Items[str];
                    for (i = 0; i < ar.length; i++)
                        options[length] = new Option(ar[i], ar[i]);
                    if (v)
                        options[0].selected = true;
                }
            }
            if (++v < s.length) {
                change(v);
            }
        }
    }

    function preselect(p_key) {
        // alert(p_key);
        var index;
        var provinces = new Array("北京市", "天津市", "上海市", "重庆市", "河北省", "山西省", "内蒙古",
            "辽宁省", "吉林省", "黑龙江省", "江苏省", "浙江省", "安徽省", "福建省", "江西省", "山东省",
            "河南省", "湖北省", "湖南省", "广东省", "广西", "海南省", "四川省", "贵州省", "云南省", "西藏",
            "陕西省", "甘肃省", "青海省", "宁夏", "新疆", "香港", "澳门", "台湾省");
        var cnt = provinces.length;
        // alert(cnt);
        for (i = 0; i < cnt; i++) {
            if (p_key == provinces[i]) {
                index = i;
                break;
            }
        }
        if (index < provinces.length) {
            document.getElementById(s[0]).selectedIndex = index + 1;
            change(1);
        }
    }

    var dsy = new Dsy();


    dsy.add("0_0_0", [ "东城区", "西城区", "崇文区", "宣武区", "朝阳区", "丰台区", "石景山区", "海淀区",
        "门头沟区", "房山区", "通州区", "顺义区", "昌平区", "大兴区", "怀柔区", "平谷区", "密云县", "延庆县",
        "延庆镇" ]);
    dsy.add("0_0", [ "北京市" ]);
    dsy.add("0_1_0", [ "和平区", "河东区", "河西区", "南开区", "河北区", "红桥区", "塘沽区", "汉沽区",
        "大港区", "东丽区", "西青区", "津南区", "北辰区", "武清区", "宝坻区", "蓟县", "宁河县", "芦台镇",
        "静海县", "静海镇" ]);
    dsy.add("0_1", [ "天津市" ]);
    dsy.add("0_2_0", [ "黄浦区", "卢湾区", "徐汇区", "长宁区", "静安区", "普陀区", "闸北区", "虹口区",
        "杨浦区", "闵行区", "宝山区", "嘉定区", "浦东新区", "金山区", "松江区", "青浦区", "南汇区", "奉贤区",
        "崇明县", "城桥镇" ]);
    dsy.add("0_2", [ "上海市" ]);
    dsy.add("0_3_0", [ "渝中区", "大渡口区", "江北区", "沙坪坝区", "九龙坡区", "南岸区", "北碚区", "万盛区",
        "双桥区", "渝北区", "巴南区", "万州区", "涪陵区", "黔江区", "长寿区", "合川市", "永川区市", "江津市",
        "南川市", "綦江县", "潼南县", "铜梁县", "大足县", "荣昌县", "璧山县", "垫江县", "武隆县", "丰都县",
        "城口县", "梁平县", "开县", "巫溪县", "巫山县", "奉节县", "云阳县", "忠县", "石柱土家族自治县",
        "彭水苗族土家族自治县", "酉阳土家族苗族自治县", "秀山土家族苗族自治县" ]);
    dsy.add("0_3", [ "重庆市" ]);
    dsy.add("0_4_0", [ "长安区", "桥东区", "桥西区", "新华区", "裕华区", "井陉矿区", "辛集市", "藁城市",
        "晋州市", "新乐市", "鹿泉市", "井陉县", "微水镇", "正定县", "正定镇", "栾城县", "栾城镇", "行唐县",
        "龙州镇", "灵寿县", "灵寿镇", "高邑县", "高邑镇", "深泽县", "深泽镇", "赞皇县", "赞皇镇", "无极县",
        "无极镇", "平山县", "平山镇", "元氏县", "槐阳镇", "赵县", "赵州镇" ]);
    dsy.add("0_4_1", [ "桥西区", "桥东区", "宣化区", "下花园区", "宣化县", "张家口市宣化区", "张北县", "张北镇",
        "康保县", "康保镇", "沽源县", "平定堡镇", "尚义县", "南壕堑镇", "蔚县", "蔚州镇", "阳原县", "西城镇",
        "怀安县", "柴沟堡镇", "万全县", "孔家庄镇", "怀来县", "沙城镇", "涿鹿县", "涿鹿镇", "赤城县", "赤城镇",
        "崇礼县", "西湾子镇" ]);
    dsy.add("0_4_2", [ "双桥区", "双滦区", "鹰手营子矿区", "承德县", "下板城镇", "兴隆县", "兴隆镇", "平泉县",
        "平泉镇", "滦平县", "滦平镇", "隆化县", "隆化镇", "丰宁满族自治县", "大阁镇", "宽城满族自治县", "宽城镇",
        "围场满族蒙古族自治县", "围场镇" ]);
    dsy.add("0_4_3", [ "海港区", "山海关区", "北戴河区", "昌黎县", "昌黎镇", "抚宁县", "抚宁镇", "卢龙县",
        "卢龙镇", "青龙满族自治县", "青龙镇" ]);
    dsy.add("0_4_4", [ "路北区", "路南区", "古冶区", "开平区", "丰润区", "丰南区", "遵化市", "迁安市",
        "滦县", "滦州镇", "滦南县", "倴城镇", "乐亭县", "乐亭镇", "迁西县", "兴城镇", "玉田县", "玉田镇",
        "唐海县", "唐海镇" ]);
    dsy.add("0_4_5", [ "安次区", "广阳区", "霸州市", "三河市", "固安县", "固安镇", "永清县", "永清镇",
        "香河县", "淑阳镇", "大城县", "平舒镇", "文安县", "文安镇", "大厂回族自治县", "大厂镇" ]);
    dsy.add("0_4_6", [ "新市区", "北市区", "南市区", "定州市", "涿州市", "安国市", "高碑店市", "满城县",
        "满城镇", "清苑县", "清苑镇", "易县", "易州镇", "徐水县", "安肃镇", "涞源县", "涞源镇", "定兴县",
        "定兴镇", "顺平县", "蒲阳镇", "唐县", "仁厚镇", "望都县", "望都镇", "涞水县", "涞水镇", "高阳县",
        "高阳镇", "安新县", "安新镇", "雄县", "雄州镇", "容城县", "容城镇", "曲阳县", "恒州镇", "阜平县",
        "阜平镇", "博野县", "博陵镇", "蠡县", "蠡吾镇" ]);
    dsy.add("0_4_7", [ "桃城区", "冀州市", "深州市", "枣强县", "枣强镇", "武邑县", "武邑镇", "武强县",
        "武强镇", "饶阳县", "饶阳镇", "安平县", "安平镇", "故城县", "郑口镇", "景县", "景州镇", "阜城县",
        "阜城镇" ]);
    dsy.add("0_4_8", [ "运河区", "新华区", "泊头市", "任丘市", "黄骅市", "河间市", "沧县", "沧州市新华区",
        "青县", "清州镇", "东光县", "东光镇", "海兴县", "苏基镇", "盐山县", "盐山镇", "肃宁县", "肃宁镇",
        "南皮县", "南皮镇", "吴桥县", "桑园镇", "献县", "乐寿镇", "孟村回族自治县", "孟村镇" ]);
    dsy.add("0_4_9", [ "桥东区", "桥西区", "南宫市", "沙河市", "邢台县", "邢台市桥东区", "临城县", "临城镇",
        "内丘县", "内丘镇", "柏乡县", "柏乡镇", "隆尧县", "隆尧镇", "任县", "任城镇", "南和县", "和阳镇",
        "宁晋县", "凤凰镇", "巨鹿县", "巨鹿镇", "新河县", "新河镇", "广宗县", "广宗镇", "平乡县", "丰州镇",
        "威县", "洺州镇", "清河县", "葛仙庄镇", "临西县", "临西镇" ]);
    dsy.add("0_4_10", [ "丛台区", "邯山区", "复兴区", "峰峰矿区", "武安市", "邯郸县", "南堡乡东小屯村",
        "临漳县", "临漳镇", "成安县", "成安镇", "大名县", "大名镇", "涉县", "涉城镇", "磁县", "磁州镇",
        "肥乡县", "肥乡镇", "永年县", "临洺关镇", "邱县", "新马头镇", "鸡泽县", "鸡泽镇", "广平县", "广平镇",
        "馆陶县", "馆陶镇", "魏县", "魏城镇", "曲周县", "曲周镇" ]);
    dsy.add("0_4", [ "石家庄市", "张家口市", "承德市", "秦皇岛市", "唐山市", "廊坊市", "保定市", "衡水市",
        "沧州市", "邢台市", "邯郸市" ]);
    dsy.add("0_5_0", [ "杏花岭区", "小店区", "迎泽区", "尖草坪区", "万柏林区", "晋源区", "古交市", "清徐县",
        "清源镇", "阳曲县", "黄寨镇", "娄烦县", "娄烦镇" ]);
    dsy.add("0_5_1", [ "朔城区", "平鲁区", "山阴县", "岱岳乡", "应县", "金城镇", "右玉县", "新城镇",
        "怀仁县", "云中镇" ]);
    dsy.add("0_5_2", [ "城区", "矿区", "南郊区", "新荣区", "阳高县", "龙泉镇", "天镇县", "玉泉镇", "广灵县",
        "壶泉镇", "灵丘县", "武灵镇", "浑源县", "永安镇", "左云县", "云兴镇", "大同县", "西坪镇" ]);
    dsy.add("0_5_3", [ "城区", "矿区", "郊区", "平定县", "冠山镇", "盂县", "秀水镇" ]);
    dsy.add("0_5_4", [ "城区", "郊区", "潞城市", "长治县", "韩店镇", "襄垣县", "古韩镇", "屯留县", "麟绛镇",
        "平顺县", "青羊镇", "黎城县", "黎侯镇", "壶关县", "龙泉镇", "长子县", "丹朱镇", "武乡县", "丰州镇",
        "沁县", "定昌镇", "沁源县", "沁河镇" ]);
    dsy.add("0_5_5", [ "城区", "高平市", "泽州县", "南村镇", "沁水县", "龙港镇", "阳城县", "凤城镇",
        "陵川县", "崇文镇" ]);
    dsy.add("0_5_6", [ "忻府区", "原平市", "定襄县", "晋昌镇", "五台县", "台城镇", "代县", "上馆镇",
        "繁峙县", "繁城镇", "宁武县", "凤凰镇", "静乐县", "鹅城镇", "神池县", "龙泉镇", "五寨县", "砚城镇",
        "岢岚县", "岚漪镇", "河曲县", "文笔镇", "保德县", "东关镇", "偏关县", "新关镇" ]);
    dsy.add("0_5_7", [ "榆次区", "介休市", "榆社县", "箕城镇", "左权县", "辽阳镇", "和顺县", "义兴镇",
        "昔阳县", "乐平镇", "寿阳县", "朝阳镇", "太谷县", "明星镇", "祁县", "昭余镇", "平遥县", "古陶镇",
        "灵石县", "翠峰镇" ]);
    dsy.add("0_5_8", [ "尧都区", "侯马市", "霍州市", "曲沃县", "乐昌镇", "翼城县", "唐兴镇", "襄汾县",
        "新城镇", "洪洞县", "大槐树镇", "古县", "岳阳镇", "安泽县", "府城镇", "浮山县", "天坛镇", "吉县",
        "吉昌镇", "乡宁县", "昌宁镇", "蒲县", "蒲城镇", "大宁县", "昕水镇", "永和县", "芝河镇", "隰县",
        "龙泉镇", "汾西县", "永安镇" ]);
    dsy.add("0_5_9", [ "离石区", "孝义市", "汾阳市", "文水县", "凤城镇", "中阳县", "宁乡镇", "兴县",
        "蔚汾镇", "临县", "临泉镇", "方山县", "圪洞镇", "柳林县", "柳林镇", "岚县", "东村镇", "交口县",
        "水头镇", "交城县", "天宁镇", "石楼县", "灵泉镇" ]);
    dsy.add("0_5_10", [ "盐湖区", "永济市", "河津市", "芮城县", "古魏镇", "临猗县", "猗氏镇", "万荣县",
        "解店镇", "新绛县", "龙兴镇", "稷山县", "稷峰镇", "闻喜县", "桐城镇", "夏县", "瑶峰镇", "绛县",
        "古绛镇", "平陆县", "圣人涧镇", "垣曲县", "新城镇" ]);
    dsy.add("0_5", [ "太原市", "朔州市", "大同市", "阳泉市", "长治市", "晋城市", "忻州市", "晋中市", "临汾市",
        "吕梁市", "运城市" ]);
    dsy.add("0_6_0", [ "回民区", "新城区", "玉泉区", "赛罕区", "托克托县", "双河镇", "武川县", "可可以力更镇",
        "和林格尔县", "城关镇", "清水河县", "城关镇", "土默特左旗", "察素齐镇" ]);
    dsy.add("0_6_1", [ "昆都仑区", "东河区", "青山区", "石拐区", "白云矿区", "九原区", "固阳县", "金山镇",
        "土默特右旗", "萨拉齐镇", "达尔罕茂明安联合旗", "百灵庙镇" ]);
    dsy.add("0_6_2", [ "海勃湾区", "海南区", "乌达区" ]);
    dsy.add("0_6_3", [ "红山区", "元宝山区", "松山区", "宁城县", "天义镇", "林西县", "林西镇", "阿鲁科尔沁旗",
        "天山镇", "巴林左旗", "林东镇", "巴林右旗", "大板镇", "克什克腾旗", "经棚镇", "翁牛特旗", "乌丹镇",
        "喀喇沁旗", "锦山镇", "敖汉旗", "新惠镇" ]);
    dsy.add("0_6_4", [ "科尔沁区", "霍林郭勒市", "开鲁县", "开鲁镇", "库伦旗", "库伦镇", "奈曼旗", "大沁他拉镇",
        "扎鲁特旗", "鲁北镇", "科尔沁左翼中旗", "保康镇", "科尔沁左翼后旗", "甘旗卡镇" ]);
    dsy.add("0_6_5", [ "海拉尔区", "满洲里市", "扎兰屯市", "牙克石市", "根河市", "额尔古纳市", "阿荣旗",
        "那吉镇", "新巴尔虎右旗", "阿拉坦额莫勒镇", "新巴尔虎左旗", "阿穆古郎镇", "陈巴尔虎旗", "巴彦库仁镇",
        "鄂伦春自治旗", "阿里河镇", "鄂温克族自治旗", "巴彦托海镇", "莫力达瓦达斡尔族自治旗", "尼尔基镇" ]);
    dsy.add("0_6_6", [ "东胜区", "达拉特旗", "树林召镇", "准格尔旗", "薛家湾镇", "鄂托克前旗", "敖勒召其镇",
        "鄂托克旗", "乌兰镇", "杭锦旗", "锡尼镇", "乌审旗", "嘎鲁图镇", "伊金霍洛旗", "阿勒腾席热镇" ]);
    dsy.add("0_6_7", [ "集宁区", "丰镇市", "卓资县", "卓资山镇", "化德县", "长顺镇", "商都县", "商都镇",
        "兴和县", "城关镇", "凉城县", "岱海镇", "察哈尔右翼前旗", "土贵乌拉镇", "察哈尔右翼中旗", "科布尔镇",
        "察哈尔右翼后旗", "白音察干镇", "四子王旗", "乌兰花镇" ]);
    dsy.add("0_6_8", [ "临河区", "五原县", "隆兴昌镇", "磴口县", "巴彦高勒镇", "乌拉特前旗", "乌拉山镇",
        "乌拉特中旗", "海流图镇", "乌拉特后旗", "巴音宝力格镇", "杭锦后旗", "陕坝镇" ]);
    dsy.add("0_6_9", [ "乌兰浩特市", "阿尔山市", "突泉县", "突泉镇", "科尔沁右翼前旗", "大坝沟镇", "科尔沁右翼中旗",
        "巴彦呼硕镇", "扎赉特旗", "音德尔镇" ]);
    dsy.add("0_6_10", [ "锡林浩特市", "二连浩特市", "多伦县", "多伦淖尔镇", "阿巴嘎旗", "别力古台镇", "苏尼特左旗",
        "满都拉图镇", "苏尼特右旗", "赛汉塔拉镇", "东乌珠穆沁旗", "乌里雅斯太镇", "西乌珠穆沁旗", "巴拉嘎尔郭勒镇",
        "太仆寺旗", "宝昌镇", "镶黄旗", "新宝拉格镇", "正镶白旗", "明安图镇", "正蓝旗", "上都镇" ]);
    dsy.add("0_6_11", [ "巴彦浩特镇", "阿拉善右旗", "额肯呼都格镇", "额济纳旗", "达来呼布镇" ]);
    dsy.add("0_6", [ "呼和浩特市", "包头市", "乌海市", "赤峰市", "通辽市", "呼伦贝尔市", "鄂尔多斯市",
        "乌兰察布市", "巴彦淖尔市", "兴安盟", "锡林郭勒盟", "阿拉善盟" ]);
    dsy.add("0_7_0", [ "沈河区", "和平区", "大东区", "皇姑区", "铁西区", "苏家屯区", "东陵区", "新城子区",
        "于洪区", "新民市", "辽中县", "辽中镇", "康平县", "康平镇", "法库县", "法库镇" ]);
    dsy.add("0_7_1", [ "双塔区", "龙城区", "北票市", "凌源市", "朝阳县", "朝阳市双塔区", "建平县",
        "喀喇沁左翼蒙古族自治县", "大城子镇" ]);
    dsy.add("0_7_2", [ "海州区", "新邱区", "太平区", "清河门区", "细河区", "彰武县", "彰武镇",
        "阜新蒙古族自治县", "阜新镇" ]);
    dsy.add("0_7_3", [ "银州区", "清河区", "调兵山市", "开原市", "铁岭县", "铁岭市银州区", "西丰县", "西丰镇",
        "昌图县", "昌图镇" ]);
    dsy.add("0_7_4", [ "顺城区", "新抚区", "东洲区", "望花区", "抚顺县", "抚顺市顺城区", "新宾满族自治县",
        "新宾镇", "清原满族自治县", "清原镇" ]);
    dsy.add("0_7_5", [ "平山区", "溪湖区", "明山区", "南芬区", "本溪满族自治县", "小市镇", "桓仁满族自治县",
        "桓仁镇" ]);
    dsy.add("0_7_6", [ "白塔区", "文圣区", "宏伟区", "弓长岭区", "太子河区", "灯塔市", "辽阳县", "首山镇" ]);
    dsy.add("0_7_7", [ "铁东区", "铁西区", "立山区", "千山区", "海城市", "台安县", "台安镇", "岫岩满族自治县",
        "岫岩镇" ]);
    dsy.add("0_7_8", [ "振兴区", "元宝区", "振安区", "凤城市", "东港市", "宽甸满族自治县", "宽甸镇" ]);
    dsy.add("0_7_9", [ "西岗区", "中山区", "沙河口区", "甘井子区", "旅顺口区", "金州区", "瓦房店市", "普兰店市",
        "庄河市", "长海县", "大长山岛镇" ]);
    dsy.add("0_7_10", [ "站前区", "西市区", "鲅鱼圈区", "老边区", "大石桥市", "盖州市" ]);
    dsy.add("0_7_11", [ "兴隆台区", "双台子区", "大洼县", "大洼镇", "盘山县", "盘锦市双台子区" ]);
    dsy.add("0_7_12", [ "太和区", "古塔区", "凌河区", "凌海市", "北宁市", "黑山县", "黑山镇", "义县",
        "义州镇" ]);
    dsy.add("0_7_13", [ "龙港区", "连山区", "南票区", "兴城市", "绥中县", "绥中镇", "建昌县", "建昌镇" ]);
    dsy.add("0_7", [ "沈阳市", "朝阳市", "阜新市", "铁岭市", "抚顺市", "本溪市", "辽阳市", "鞍山市", "丹东市",
        "大连市", "营口市", "盘锦市", "锦州市", "葫芦岛市" ]);
    dsy.add("0_8_0", [ "朝阳区", "南关区", "宽城区", "二道区", "绿园区", "双阳区", "德惠市", "九台市",
        "榆树市", "农安县", "农安镇" ]);
    dsy.add("0_8_1", [ "洮北区", "大安市", "洮南市", "镇赉县", "镇赉镇", "通榆县", "开通镇" ]);
    dsy.add("0_8_2", [ "宁江区", "扶余县", "三岔河镇", "长岭县", "长岭镇", "乾安县", "乾安镇",
        "前郭尔罗斯蒙古族自治县", "前郭镇" ]);
    dsy.add("0_8_3", [ "船营区", "龙潭区", "昌邑区", "丰满区", "磐石市", "蛟河市", "桦甸市", "舒兰市",
        "永吉县", "口前镇" ]);
    dsy.add("0_8_4",
        [ "铁西区", "铁东区", "双辽市", "公主岭市", "梨树县", "梨树镇", "伊通满族自治县", "伊通镇" ]);
    dsy.add("0_8_5", [ "龙山区", "西安区", "东丰县", "东丰镇", "东辽县", "白泉镇" ]);
    dsy.add("0_8_6", [ "东昌区", "二道江区", "梅河口市", "集安市", "通化县", "快大茂镇", "辉南县", "朝阳镇",
        "柳河县", "柳河镇" ]);
    dsy.add("0_8_7", [ "八道江区", "临江市", "江源县", "孙家堡子镇", "抚松县", "抚松镇", "靖宇县", "靖宇镇",
        "长白朝鲜族自治县", "长白镇" ]);
    dsy.add("0_8_8", [ "延吉市", "图们市", "敦化市", "珲春市", "龙井市", "和龙市", "汪清县", "汪清镇",
        "安图县", "明月镇" ]);
    dsy.add("0_8",
        [ "长春市", "白城市", "松原市", "吉林市", "四平市", "辽源市", "通化市", "白山市", "延边州" ]);
    dsy.add("0_9_0", [ "松北区", "道里区", "南岗区", "道外区", "香坊区", "动力区", "平房区", "呼兰区",
        "双城市", "尚志市", "五常市", "阿城市", "依兰县", "依兰镇", "方正县", "方正镇", "宾县", "宾州镇",
        "巴彦县", "巴彦镇", "木兰县", "木兰镇", "通河县", "通河镇", "延寿县", "延寿镇" ]);
    dsy.add("0_9_1", [ "建华区", "龙沙区", "铁锋区", "昂昂溪区", "富拉尔基区", "碾子山区", "梅里斯达斡尔族区",
        "讷河市", "龙江县", "龙江镇", "依安县", "依安镇", "泰来县", "泰来镇", "甘南县", "甘南镇", "富裕县",
        "富裕镇", "克山县", "克山镇", "克东县", "克东镇", "拜泉县", "拜泉镇" ]);
    dsy.add("0_9_2", [ "桃山区", "新兴区", "茄子河区", "勃利县", "勃利镇" ]);
    dsy.add("0_9_3", [ "爱辉区", "北安市", "五大连池市", "嫩江县", "嫩江镇", "逊克县", "边疆镇", "孙吴县",
        "孙吴镇" ]);
    dsy.add("0_9_4", [ "萨尔图区", "龙凤区", "让胡路区", "大同区", "红岗区", "肇州县", "肇州镇", "肇源县",
        "肇源镇", "林甸县", "林甸镇", "杜尔伯特蒙古族自治县", "泰康镇" ]);
    dsy.add("0_9_5", [ "兴山区", "向阳区", "工农区", "南山区", "兴安区", "东山区", "萝北县", "凤翔镇",
        "绥滨县", "绥滨镇" ]);
    dsy.add("0_9_6", [ "伊春区", "南岔区", "友好区", "西林区", "翠峦区", "新青区", "美溪区", "金山屯区",
        "五营区", "乌马河区", "汤旺河区", "带岭区", "乌伊岭区", "红星区", "上甘岭区", "铁力市", "嘉荫县",
        "朝阳镇" ]);
    dsy.add("0_9_7", [ "前进区", "永红区", "向阳区", "东风区", "郊区", "同江市", "富锦市", "桦南县",
        "桦南镇", "桦川县", "悦来镇", "汤原县", "汤原镇", "抚远县", "抚远镇" ]);
    dsy.add("0_9_8", [ "尖山区", "岭东区", "四方台区", "宝山区", "集贤县", "福利镇", "友谊县", "友谊镇",
        "宝清县", "宝清镇", "饶河县", "饶河镇" ]);
    dsy.add("0_9_9", [ "鸡冠区", "恒山区", "滴道区", "梨树区", "城子河区", "麻山区", "虎林市", "密山市",
        "鸡东县", "鸡东镇" ]);
    dsy.add("0_9_10", [ "爱民区", "东安区", "阳明区", "西安区", "穆棱市", "绥芬河市", "海林市", "宁安市",
        "东宁县", "东宁镇", "林口县", "林口镇" ]);
    dsy.add("0_9_11", [ "北林区", "安达市", "肇东市", "海伦市", "望奎县", "望奎镇", "兰西县", "兰西镇",
        "青冈县", "青冈镇", "庆安县", "庆安镇", "明水县", "明水镇", "绥棱县", "绥棱镇" ]);
    dsy.add("0_9_12", [ "呼玛县", "呼玛镇", "塔河县", "塔河镇", "漠河县", "西林吉镇" ]);
    dsy.add("0_9", [ "哈尔滨市", "齐齐哈尔市", "七台河市", "黑河市", "大庆市", "鹤岗市", "伊春市", "佳木斯市",
        "双鸭山市", "鸡西市", "牡丹江市", "绥化市", "大兴安岭地区" ]);
    dsy.add("0_10_0", [ "玄武区", "白下区", "秦淮区", "建邺区", "鼓楼区", "下关区", "浦口区", "六合区",
        "栖霞区", "雨花台区", "江宁区", "溧水县", "永阳镇", "高淳县", "淳溪镇" ]);
    dsy.add("0_10_1", [ "云龙区", "鼓楼区", "九里区", "贾汪区", "泉山区", "邳州市", "新沂市", "铜山县",
        "铜山镇", "睢宁县", "睢城镇", "沛县", "沛城镇", "丰县", "凤城镇" ]);
    dsy.add("0_10_2", [ "新浦区", "连云区", "海州区", "赣榆县", "青口镇", "灌云县", "伊山镇", "东海县",
        "牛山镇", "灌南县", "新安镇" ]);
    dsy.add("0_10_3", [ "宿城区", "宿豫区", "沭阳县", "沭城镇", "泗阳县", "众兴镇", "泗洪县", "青阳镇" ]);
    dsy.add("0_10_4", [ "清河区", "清浦区", "楚州区", "淮阴区", "金湖县", "黎城镇", "盱眙县", "盱城镇",
        "洪泽县", "高良涧镇", "涟水县", "涟城镇" ]);
    dsy.add("0_10_5", [ "亭湖区", "盐都区", "东台市", "大丰市", "射阳县", "合德镇", "阜宁县", "阜城镇",
        "滨海县", "东坎镇", "响水县", "响水镇", "建湖县", "近湖镇" ]);
    dsy.add("0_10_6", [ "维扬区", "广陵区", "邗江区", "仪征市", "江都市", "高邮市", "宝应县", "安宜镇" ]);
    dsy.add("0_10_7", [ "海陵区", "高港区", "靖江市", "泰兴市", "姜堰市", "兴化市" ]);
    dsy.add("0_10_8", [ "崇川区", "港闸区", "海门市", "启东市", "通州市", "如皋市", "如东县", "掘港镇",
        "海安县", "海安镇" ]);
    dsy.add("0_10_9", [ "京口区", "润州区", "丹徒区", "扬中市", "丹阳市", "句容市" ]);
    dsy.add("0_10_10", [ "钟楼区", "天宁区", "戚墅堰区", "新北区", "武进区", "金坛市", "溧阳市" ]);
    dsy.add("0_10_11", [ "崇安区", "南长区", "北塘区", "滨湖区", "惠山区", "锡山区", "江阴市", "宜兴市" ]);
    dsy.add("0_10_12", [ "金阊区", "沧浪区", "平江区", "虎丘区", "吴中区", "相城区", "吴江市", "昆山市",
        "太仓市", "常熟市", "张家港市" ]);
    dsy.add("0_10", [ "南京市", "徐州市", "连云港市", "宿迁市", "淮安市", "盐城市", "扬州市", "泰州市",
        "南通市", "镇江市", "常州市", "无锡市", "苏州市" ]);
    dsy.add("0_11_0", [ "拱墅区", "上城区", "下城区", "江干区", "西湖区", "滨江区", "余杭区", "萧山区",
        "临安市", "富阳市", "建德市", "桐庐县", "淳安县", "千岛湖镇" ]);
    dsy.add("0_11_1", [ "吴兴区", "南浔区", "长兴县", "雉城镇", "德清县", "武康镇", "安吉县", "递铺镇" ]);
    dsy.add("0_11_2", [ "南湖区", "秀洲区", "平湖市", "海宁市", "桐乡市", "嘉善县", "魏塘镇", "海盐县",
        "武原镇" ]);
    dsy.add("0_11_3", [ "定海区", "普陀区", "岱山县", "高亭镇", "嵊泗县", "菜园镇" ]);
    dsy.add("0_11_4", [ "海曙区", "江东区", "江北区", "北仑区", "镇海区", "鄞州区", "慈溪市", "余姚市",
        "奉化市", "宁海县", "象山县" ]);
    dsy.add("0_11_5", [ "越城区", "诸暨市", "上虞市", "嵊州市", "绍兴县", "新昌县", "城关镇" ]);
    dsy.add("0_11_6", [ "柯城区", "衢江区", "江山市", "常山县", "天马镇", "开化县", "城关镇", "龙游县" ]);
    dsy.add("0_11_7", [ "婺城区", "金东区", "兰溪市", "永康市", "义乌市", "东阳市", "武义县", "浦江县",
        "磐安县", "安文镇" ]);
    dsy.add("0_11_8", [ "椒江区", "黄岩区", "路桥区", "临海市", "温岭市", "三门县", "海游镇", "天台县",
        "仙居县", "玉环县", "珠港镇" ]);
    dsy.add("0_11_9", [ "鹿城区", "龙湾区", "瓯海区", "瑞安市", "乐清市", "永嘉县", "上塘镇", "文成县",
        "大峃镇", "平阳县", "昆阳镇", "泰顺县", "罗阳镇", "洞头县", "北岙镇", "苍南县", "灵溪镇" ]);
    dsy.add("0_11_10", [ "莲都区", "龙泉市", "缙云县", "五云镇", "青田县", "鹤城镇", "云和县", "云和镇",
        "遂昌县", "妙高镇", "松阳县", "西屏镇", "庆元县", "松源镇", "景宁畲族自治县", "鹤溪镇" ]);
    dsy.add("0_11", [ "杭州市", "湖州市", "嘉兴市", "舟山市", "宁波市", "绍兴市", "衢州市", "金华市",
        "台州市", "温州市", "丽水市" ]);
    dsy.add("0_12_0", [ "庐阳区", "瑶海区", "蜀山区", "包河区", "长丰县", "水湖镇", "肥东县", "店埠镇",
        "肥西县", "上派镇" ]);
    dsy.add("0_12_1",
        [ "埇桥区", "砀山县", "砀城镇", "萧县", "龙城镇", "灵璧县", "灵城镇", "泗县", "泗城镇" ]);
    dsy.add("0_12_2", [ "相山区", "杜集区", "烈山区", "濉溪县", "濉溪镇" ]);
    dsy.add("0_12_3", [ "谯城区", "涡阳县", "城关镇", "蒙城县", "城关镇", "利辛县", "城关镇" ]);
    dsy.add("0_12_4", [ "颍州区", "颍东区", "颍泉区", "界首市", "临泉县", "城关镇", "太和县", "城关镇",
        "阜南县", "城关镇", "颍上县", "慎城镇" ]);
    dsy.add("0_12_5", [ "蚌山区", "龙子湖区", "禹会区", "淮上区", "怀远县", "城关镇", "五河县", "城关镇",
        "固镇县", "城关镇" ]);
    dsy.add("0_12_6", [ "田家庵区", "大通区", "谢家集区", "八公山区", "潘集区", "凤台县", "城关镇" ]);
    dsy.add("0_12_7", [ "琅区", "南谯区", "明光市", "天长市", "来安县", "新安镇", "全椒县", "襄河镇",
        "定远县", "定城镇", "凤阳县", "府城镇" ]);
    dsy.add("0_12_8", [ "雨山区", "花山区", "金家庄区", "当涂县", "姑孰镇" ]);
    dsy.add("0_12_9", [ "镜湖区", "弋江区", "三山区", "鸠江区", "芜湖县", "湾镇", "繁昌县", "繁阳镇",
        "南陵县", "籍山镇" ]);
    dsy.add("0_12_10", [ "铜官山区", "狮子山区", "郊区", "铜陵县", "五松镇" ]);
    dsy.add("0_12_11", [ "迎江区", "大观区", "宜秀区", "桐城市", "怀宁县", "高河镇", "枞阳县", "枞阳镇",
        "潜山县", "梅城镇", "太湖县", "晋熙镇", "宿松县", "孚玉镇", "望江县", "雷阳镇", "岳西县", "天堂镇" ]);
    dsy.add("0_12_12", [ "屯溪区", "黄山区", "徽州区", "歙县", "徽城镇", "休宁县", "海阳镇", "黟县",
        "碧阳镇", "祁门县", "祁山镇" ]);
    dsy.add("0_12_13", [ "金安区", "裕安区", "寿县", "寿春镇", "霍邱县", "城关镇", "舒城县", "城关镇",
        "金寨县", "梅山镇", "霍山县", "衡山镇" ]);
    dsy.add("0_12_14", [ "居巢区", "庐江县", "庐城镇", "无为县", "无城镇", "含山县", "环峰镇", "和县",
        "历阳镇" ]);
    dsy.add("0_12_15", [ "贵池区", "东至县", "尧渡镇", "石台县", "七里镇", "青阳县", "蓉城镇" ]);
    dsy.add("0_12_16", [ "宣州区", "宁国市", "郎溪县", "建平镇", "广德县", "桃州镇", "泾县", "泾川镇",
        "旌德县", "旌阳镇", "绩溪县", "华阳镇" ]);
    dsy.add("0_12", [ "合肥市", "宿州市", "淮北市", "亳州市", "阜阳市", "蚌埠市", "淮南市", "滁州市",
        "马鞍山市", "芜湖市", "铜陵市", "安庆市", "黄山市", "六安市", "巢湖市", "池州市", "宣城市" ]);
    dsy.add("0_13_0", [ "鼓楼区", "台江区", "仓山区", "马尾区", "晋安区", "福清市", "长乐市", "闽侯县",
        "连江县", "凤城镇", "罗源县", "凤山镇", "闽清县", "梅城镇", "永泰县", "樟城镇", "平潭县", "潭城镇" ]);
    dsy.add("0_13_", [ "延平区", "邵武市", "武夷山市", "建瓯市", "建阳市", "顺昌县", "浦城县", "光泽县",
        "杭川镇", "松溪县", "松源镇", "政和县", "熊山镇" ]);
    dsy.add("0_13_2", [ "城厢区", "涵江区", "荔城区", "秀屿区", "仙游县" ]);
    dsy.add("0_13_3", [ "梅列区", "三元区", "永安市", "明溪县", "雪峰镇", "清流县", "龙津镇", "宁化县",
        "翠江镇", "大田县", "均溪镇", "尤溪县", "城关镇", "沙县", "将乐县", "古镛镇", "泰宁县", "杉城镇",
        "建宁县", "濉城镇" ]);
    dsy.add("0_13_4", [ "鲤城区", "丰泽区", "洛江区", "泉港区", "石狮市", "晋江市", "南安市", "惠安县",
        "螺城镇", "安溪县", "凤城镇", "永春县", "桃城镇", "德化县", "浔中镇", "金门县", "☆" ]);
    dsy.add("0_13_5", [ "思明区", "海沧区", "湖里区", "集美区", "同安区", "翔安区" ]);
    dsy.add("0_13_6", [ "芗城区", "龙文区", "龙海市", "云霄县", "云陵镇", "漳浦县", "绥安镇", "诏安县",
        "南诏镇", "长泰县", "武安镇", "东山县", "西埔镇", "南靖县", "山城镇", "平和县", "小溪镇", "华安县",
        "华丰镇" ]);
    dsy.add("0_13_7", [ "新罗区", "漳平市", "长汀县", "汀州镇", "永定县", "凤城镇", "上杭县", "临江镇",
        "武平县", "平川镇", "连城县", "莲峰镇" ]);
    dsy.add("0_13_8", [ "蕉城区", "福安市", "福鼎市", "寿宁县", "鳌阳镇", "霞浦县", "柘荣县", "双城镇",
        "屏南县", "古峰镇", "古田县", "周宁县", "狮城镇" ]);
    dsy.add("0_13",
        [ "福州市", "南平市", "莆田市", "三明市", "泉州市", "厦门市", "漳州市", "龙岩市", "宁德市" ]);
    dsy.add("0_14_0", [ "东湖区", "西湖区", "青云谱区", "湾里区", "青山湖区", "南昌县", "莲塘镇", "新建县",
        "长堎镇", "安义县", "龙津镇", "进贤县", "民和镇" ]);
    dsy.add("0_14_1", [ "浔阳区", "庐山区", "瑞昌市", "九江县", "沙河街镇", "武宁县", "新宁镇", "修水县",
        "义宁镇", "永修县", "涂埠镇", "德安县", "蒲亭镇", "星子县", "南康镇", "都昌县", "都昌镇", "湖口县",
        "双钟镇", "彭泽县", "龙城镇" ]);
    dsy.add("0_14_2", [ "珠山区", "昌江区", "乐平市", "浮梁县", "浮梁镇" ]);
    dsy.add("0_14_3", [ "月湖区", "贵溪市", "余江县", "邓埠镇" ]);
    dsy.add("0_14_4", [ "渝水区", "分宜县", "分宜镇" ]);
    dsy.add("0_14_5", [ "安源区", "湘东区", "莲花县", "琴亭镇", "上栗县", "上栗镇", "芦溪县", "芦溪镇" ]);
    dsy.add("0_14_6", [ "章贡区", "瑞金市", "南康市", "赣县", "梅林镇", "信丰县", "嘉定镇", "大余县",
        "南安镇", "上犹县", "东山镇", "崇义县", "横水镇", "安远县", "欣山镇", "龙南县", "龙南镇", "定南县",
        "历市镇", "全南县", "城厢镇", "宁都县", "梅江镇", "于都县", "贡江镇", "兴国县", "潋江镇", "会昌县",
        "文武坝镇", "寻乌县", "长宁镇", "石城县", "琴江镇" ]);
    dsy.add("0_14_7", [ "信州区", "德兴市", "上饶县", "旭日镇", "广丰县", "永丰镇", "玉山县", "冰溪镇",
        "铅山县", "河口镇", "横峰县", "岑阳镇", "弋阳县", "弋江镇", "余干县", "玉亭镇", "鄱阳县", "鄱阳镇",
        "万年县", "陈营镇", "婺源县", "紫阳镇" ]);
    dsy.add("0_14_8", [ "临川区", "南城县", "建昌镇", "黎川县", "日峰镇", "南丰县", "琴城镇", "崇仁县",
        "巴山镇", "乐安县", "鳌溪镇", "宜黄县", "凤冈镇", "金溪县", "秀谷镇", "资溪县", "鹤城镇", "东乡县",
        "孝岗镇", "广昌县", "旴江镇" ]);
    dsy.add("0_14_9", [ "袁州区", "丰城市", "樟树市", "高安市", "奉新县", "冯川镇", "万载县", "上高县",
        "宜丰县", "新昌镇", "靖安县", "双溪镇", "铜鼓县", "永宁镇" ]);
    dsy.add("0_14_10", [ "吉州区", "青原区", "井冈山市", "厦坪镇", "吉安县", "敦厚镇", "吉水县", "文峰镇",
        "峡江县", "水边镇", "新干县", "金川镇", "永丰县", "恩江镇", "泰和县", "澄江镇", "遂川县", "泉江镇",
        "万安县", "芙蓉镇", "安福县", "平都镇", "永新县", "禾川镇" ]);
    dsy.add("0_14", [ "南昌市", "九江市", "景德镇市", "鹰潭市", "新余市", "萍乡市", "赣州市", "上饶市",
        "抚州市", "宜春市", "吉安市" ]);
    dsy.add("0_15_0", [ "市中区", "历下区", "槐荫区", "天桥区", "历城区", "长清区", "章丘市", "平阴县",
        "平阴镇", "济阳县", "济阳镇", "商河县" ]);
    dsy.add("0_15_1", [ "市南区", "市北区", "四方区", "黄岛区", "崂山区", "城阳区", "李沧区", "胶州市",
        "即墨市", "平度市", "胶南市", "莱西市" ]);
    dsy.add("0_15_2", [ "东昌府区", "临清市", "阳谷县", "莘县", "茌平县", "东阿县", "冠县", "冠城镇",
        "高唐县" ]);
    dsy.add("0_15_3", [ "德城区", "乐陵市", "禹城市", "陵县", "陵城镇", "平原县", "夏津县", "夏津镇",
        "武城县", "武城镇", "齐河县", "晏城镇", "临邑县", "宁津县", "宁津镇", "庆云县", "庆云镇" ]);
    dsy.add("0_15_4", [ "东营区", "河口区", "垦利县", "垦利镇", "利津县", "利津镇", "广饶县", "广饶镇" ]);
    dsy.add("0_15_5", [ "张店区", "淄川区", "博山区", "临淄区", "周村区", "桓台县", "索镇", "高青县",
        "田镇", "沂源县", "南麻镇" ]);
    dsy.add("0_15_6", [ "潍城区", "寒亭区", "坊子区", "奎文区", "安丘市", "昌邑市", "高密市", "青州市",
        "诸城市", "寿光市", "临朐县", "昌乐县" ]);
    dsy.add("0_15_7", [ "莱山区", "芝罘区", "福山区", "牟平区", "栖霞市", "海阳市", "龙口市", "莱阳市",
        "莱州市", "蓬莱市", "招远市", "长岛县", "南长山镇" ]);
    dsy.add("0_15_8", [ "环翠区", "荣成市", "乳山市", "文登市" ]);
    dsy.add("0_15_9", [ "东港区", "岚山区", "五莲县", "洪凝镇", "莒县", "城阳镇" ]);
    dsy.add("0_15_10", [ "兰山区", "罗庄区", "河东区", "郯城县", "郯城镇", "苍山县", "卞庄镇", "莒南县",
        "十字路镇", "沂水县", "沂水镇", "蒙阴县", "蒙阴镇", "平邑县", "平邑镇", "费县", "费城镇", "沂南县",
        "界湖镇", "临沭县", "临沭镇" ]);
    dsy.add("0_15_11", [ "薛城区", "市中区", "峄城区", "台儿庄区", "山亭区", "滕州市" ]);
    dsy.add("0_15_12", [ "市中区", "任城区", "曲阜市", "兖州市", "邹城市", "微山县", "鱼台县", "谷亭镇",
        "金乡县", "金乡镇", "嘉祥县", "嘉祥镇", "汶上县", "汶上镇", "泗水县", "梁山县", "梁山镇" ]);
    dsy.add("0_15_13", [ "泰山区", "岱岳区", "新泰市", "肥城市", "宁阳县", "宁阳镇", "东平县", "东平镇" ]);
    dsy.add("0_15_14", [ "莱城区", "钢城区" ]);
    dsy.add("0_15_15", [ "滨城区", "惠民县", "惠民镇", "阳信县", "阳信镇", "无棣县", "无棣镇", "沾化县",
        "富国镇", "博兴县", "博兴镇", "邹平县" ]);
    dsy.add("0_15_16", [ "牡丹区", "曹县", "曹城镇", "定陶县", "定陶镇", "成武县", "成武镇", "单县",
        "单城镇", "巨野县", "巨野镇", "郓城县", "郓城镇", "鄄城县", "鄄城镇", "东明县", "城关镇" ]);
    dsy.add("0_15", [ "济南市", "青岛市", "聊城市", "德州市", "东营市", "淄博市", "潍坊市", "烟台市",
        "威海市", "日照市", "临沂市", "枣庄市", "济宁市", "泰安市", "莱芜市", "滨州市", "菏泽市" ]);
    dsy.add("0_16_0", [ "中原区", "二七区", "管城回族区", "金水区", "上街区", "惠济区", "新郑市", "登封市",
        "新密市", "巩义市", "荥阳市", "中牟县", "城关镇" ]);
    dsy.add("0_16_1", [ "鼓楼区", "龙亭区", "顺河回族区", "禹王台区", "金明区", "杞县", "城关镇", "通许县",
        "城关镇", "尉氏县", "城关镇", "开封县", "城关镇", "兰考县", "城关镇" ]);
    dsy.add("0_16_2", [ "湖滨区", "义马市", "灵宝市", "渑池县", "城关镇", "陕县", "大营镇", "卢氏县",
        "城关镇" ]);
    dsy.add("0_16_3", [ "西工区", "老城区", "瀍河回族区", "涧西区", "吉利区", "洛龙区", "偃师市", "孟津县",
        "城关镇", "新安县", "城关镇", "栾川县", "城关镇", "嵩县", "城关镇", "汝阳县", "城关镇", "宜阳县",
        "城关镇", "洛宁县", "城关镇", "伊川县", "城关镇" ]);
    dsy.add("0_16_4", [ "解放区", "山阳区", "中站区", "马村区", "孟州市", "沁阳市", "修武县", "城关镇",
        "博爱县", "清化镇", "武陟县", "木城镇", "温县", "温泉镇" ]);
    dsy.add("0_16_5", [ "卫滨区", "红旗区", "凤泉区", "牧野区", "卫辉市", "辉县市", "新乡县", "新乡市红旗区",
        "获嘉县", "城关镇", "原阳县", "城关镇", "延津县", "城关镇", "封丘县", "城关镇", "长垣县", "城关镇" ]);
    dsy.add("0_16_6", [ "淇滨区", "山城区", "鹤山区", "浚县", "城关镇", "淇县", "朝歌镇" ]);
    dsy.add("0_16_7", [ "北关区", "文峰区", "殷都区", "龙安区", "林州市", "安阳县", "安阳市北关区", "汤阴县",
        "城关镇", "滑县", "道口镇", "内黄县", "城关镇" ]);
    dsy.add("0_16_8", [ "华龙区", "清丰县", "城关镇", "南乐县", "城关镇", "范县", "城关镇", "台前县",
        "城关镇", "濮阳县", "城关镇" ]);
    dsy.add("0_16_9", [ "梁园区", "睢阳区", "永城市", "虞城县", "城关镇", "民权县", "城关镇", "宁陵县",
        "城关镇", "睢县", "城关镇", "夏邑县", "城关镇", "柘城县", "城关镇" ]);
    dsy.add("0_16_10", [ "魏都区", "禹州市", "长葛市", "许昌县", "许昌市魏都区", "鄢陵县", "安陵镇", "襄城县",
        "城关镇" ]);
    dsy.add("0_16_11", [ "源汇区", "郾城区", "召陵区", "舞阳县", "舞泉镇", "临颍县", "城关镇" ]);
    dsy.add("0_16_12", [ "新华区", "卫东区", "湛河区", "石龙区", "舞钢市", "汝州市", "宝丰县", "城关镇",
        "叶县", "昆阳镇", "鲁山县", "鲁阳镇", "郏县", "城关镇" ]);
    dsy.add("0_16_13", [ "卧龙区", "宛城区", "邓州市", "南召县", "城关镇", "方城县", "城关镇", "西峡县",
        "镇平县", "城关镇", "内乡县", "城关镇", "淅川县", "社旗县", "赊店镇", "唐河县", "新野县", "城关镇",
        "桐柏县", "城关镇" ]);
    dsy.add("0_16_14", [ "河区", "平桥区", "息县", "城关镇", "淮滨县", "城关镇", "潢川县", "光山县",
        "固始县", "城关镇", "商城县", "城关镇", "罗山县", "城关镇", "新县", "新集镇" ]);
    dsy.add("0_16_15", [ "川汇区", "项城市", "扶沟县", "城关镇", "西华县", "城关镇", "商水县", "城关镇",
        "太康县", "城关镇", "鹿邑县", "城关镇", "郸城县", "城关镇", "淮阳县", "城关镇", "沈丘县", "槐店镇" ]);
    dsy.add("0_16_16", [ "驿城区", "确山县", "盘龙镇", "泌阳县", "泌水镇", "遂平县", "灈阳镇", "西平县",
        "上蔡县", "蔡都镇", "汝南县", "汝宁镇", "平舆县", "古槐镇", "新蔡县", "古吕镇", "正阳县", "真阳镇" ]);
    dsy.add("0_16", [ "郑州市", "开封市", "三门峡市", "洛阳市", "焦作市", "新乡市", "鹤壁市", "安阳市",
        "濮阳市", "商丘市", "许昌市", "漯河市", "平顶山市", "南阳市", "信阳市", "周口市", "驻马店市" ]);
    dsy.add("0_17_0", [ "江岸区", "江汉区", "硚口区", "汉阳区", "武昌区", "青山区", "洪山区", "东西湖区",
        "汉南区", "蔡甸区", "江夏区", "黄陂区", "新洲区" ]);
    dsy.add("0_17_1", [ "张湾区", "茅箭区", "丹江口市", "郧县", "城关镇", "竹山县", "城关镇", "房县",
        "城关镇", "郧西县", "城关镇", "竹溪县", "城关镇" ]);
    dsy.add("0_17_2", [ "襄城区", "樊城区", "襄阳区", "老河口市", "枣阳市", "宜城市", "南漳县", "城关镇",
        "谷城县", "城关镇", "保康县", "城关镇" ]);
    dsy.add("0_17_3", [ "东宝区", "掇刀区", "钟祥市", "沙洋县", "沙洋镇", "京山县", "新市镇" ]);
    dsy.add("0_17_4", [ "孝南区", "应城市", "安陆市", "汉川市", "孝昌县", "花园镇", "大悟县", "城关镇",
        "云梦县", "城关镇" ]);
    dsy.add("0_17_5", [ "黄州区", "麻城市", "武穴市", "红安县", "城关镇", "罗田县", "凤山镇", "英山县",
        "温泉镇", "浠水县", "清泉镇", "蕲春县", "漕河镇", "黄梅县", "黄梅镇", "团风县", "团风镇" ]);
    dsy.add("0_17_6", [ "鄂城区", "梁子湖区", "华容区" ]);
    dsy.add("0_17_7", [ "黄石港区", "西塞山区", "下陆区", "铁山区", "大冶市", "阳新县", "兴国镇" ]);
    dsy.add("0_17_8", [ "咸安区", "赤壁市", "嘉鱼县", "鱼岳镇", "通城县", "隽水镇", "崇阳县", "天城镇",
        "通山县", "通羊镇" ]);
    dsy.add("0_17_9", [ "沙市区", "荆州区", "石首市", "洪湖市", "松滋市", "江陵县", "郝穴镇", "公安县",
        "斗湖堤镇", "监利县", "容城镇" ]);
    dsy.add("0_17_10", [ "西陵区", "伍家岗区", "点军区", "猇亭区", "夷陵区", "枝江市", "宜都市", "当阳市",
        "远安县", "鸣凤镇", "兴山县", "古夫镇", "秭归县", "茅坪镇", "长阳土家族自治县", "龙舟坪镇",
        "五峰土家族自治县", "五峰镇" ]);
    dsy.add("0_17_11", [ "曾都区", "广水市" ]);
    dsy.add("0_17_12", [ "仙桃市", "天门市", "潜江市", "神农架林区", "松柏镇" ]);
    dsy.add("0_17_13", [ "恩施市", "利川市", "建始县", "业州镇", "巴东县", "信陵镇", "宣恩县", "珠山镇",
        "咸丰县", "高乐山镇", "来凤县", "翔凤镇", "鹤峰县", "容美镇" ]);
    dsy.add("0_17", [ "武汉市", "十堰市", "襄樊市", "荆门市", "孝感市", "黄冈市", "鄂州市", "黄石市",
        "咸宁市", "荆州市", "宜昌市", "随州市", "省直辖县级行政单位", "恩施州" ]);
    dsy.add("0_18_0", [ "长沙市", "岳麓区", "芙蓉区", "天心区", "开福区", "雨花区", "浏阳市", "长沙县",
        "星沙镇", "望城县", "高塘岭镇", "宁乡县", "玉潭镇" ]);
    dsy.add("0_18_1", [ "永定区", "武陵源区", "慈利县", "零阳镇", "桑植县", "澧源镇" ]);
    dsy.add("0_18_2", [ "武陵区", "鼎城区", "津市市", "安乡县", "城关镇", "汉寿县", "龙阳镇", "澧县",
        "澧阳镇", "临澧县", "安福镇", "桃源县", "漳江镇", "石门县", "楚江镇" ]);
    dsy.add("0_18_3", [ "赫山区", "资阳区", "沅江市", "南县", "南洲镇", "桃江县", "桃花江镇", "安化县",
        "东坪镇" ]);
    dsy.add("0_18_4", [ "岳阳楼区", "君山区", "云溪区", "汨罗市", "临湘市", "岳阳县", "荣家湾镇", "华容县",
        "城关镇", "湘阴县", "文星镇", "平江县", "汉昌镇" ]);
    dsy.add("0_18_5", [ "天元区", "荷塘区", "芦淞区", "石峰区", "醴陵市", "株洲县", "渌口镇", "攸县",
        "城关镇", "茶陵县", "城关镇", "炎陵县", "霞阳镇" ]);
    dsy.add("0_18_6", [ "岳塘区", "雨湖区", "湘乡市", "韶山市", "湘潭县", "易俗河镇" ]);
    dsy.add("0_18_7", [ "雁峰区", "珠晖区", "石鼓区", "蒸湘区", "南岳区", "常宁市", "耒阳市", "衡阳县",
        "西渡镇", "衡南县", "云集镇", "衡山县", "开云镇", "衡东县", "城关镇", "祁东县", "洪桥镇" ]);
    dsy.add("0_18_8", [ "北湖区", "苏仙区", "资兴市", "桂阳县", "城关镇", "永兴县", "城关镇", "宜章县",
        "城关镇", "嘉禾县", "城关镇", "临武县", "城关镇", "汝城县", "城关镇", "桂东县", "城关镇", "安仁县",
        "城关镇" ]);
    dsy.add("0_18_9", [ "冷水滩区", "零陵区", "东安县", "白牙市镇", "道县", "道江镇", "宁远县", "舜陵镇",
        "江永县", "潇浦镇", "蓝山县", "塔峰镇", "新田县", "龙泉镇", "双牌县", "泷泊镇", "祁阳县", "浯溪镇",
        "江华瑶族自治县", "沱江镇" ]);
    dsy.add("0_18_10", [ "双清区", "大祥区", "北塔区", "武冈市", "邵东县", "两市镇", "邵阳县", "塘渡口镇",
        "新邵县", "酿溪镇", "隆回县", "桃洪镇", "洞口县", "洞口镇", "绥宁县", "长铺镇", "新宁县", "金石镇",
        "城步苗族自治县", "儒林镇" ]);
    dsy.add("0_18_11", [ "鹤城区", "洪江市", "沅陵县", "沅陵镇", "辰溪县", "辰阳镇", "溆浦县", "卢峰镇",
        "中方县", "中方镇", "会同县", "林城镇", "麻阳苗族自治县", "高村镇", "新晃侗族自治县", "新晃镇",
        "芷江侗族自治县", "芷江镇", "靖州苗族侗族自治县", "渠阳镇", "通道侗族自治县", "双江镇" ]);
    dsy.add("0_18_12", [ "娄星区", "冷水江市", "涟源市", "双峰县", "永丰镇", "新化县", "上梅镇" ]);
    dsy.add("0_18_13", [ "吉首市", "泸溪县", "白沙镇", "凤凰县", "沱江镇", "花垣县", "花垣镇", "保靖县",
        "迁陵镇", "古丈县", "古阳镇", "永顺县", "灵溪镇", "龙山县" ]);
    dsy.add("0_18", [ "长沙市", "张家界市", "常德市", "益阳市", "岳阳市", "株洲市", "湘潭市", "衡阳市",
        "郴州市", "永州市", "邵阳市", "怀化市", "娄底市", "湘西州" ]);
    dsy.add("0_19_0", [ "越秀区", "荔湾区", "海珠区", "天河区", "白云区", "黄埔区", "番禺区", "花都区",
        "南沙区", "萝岗区", "增城市", "从化市" ]);
    dsy.add("0_19_1", [ "福田区", "罗湖区", "南山区", "宝安区", "龙岗区", "盐田区" ]);
    dsy.add("0_19_2", [ "清城区", "英德市", "连州市", "佛冈县", "石角镇", "阳山县", "阳城镇", "清新县",
        "太和镇", "连山壮族瑶族自治县", "吉田镇", "连南瑶族自治县", "三江镇" ]);
    dsy.add("0_19_3", [ "浈江区", "武江区", "曲江区", "乐昌市", "南雄市", "始兴县", "太平镇", "仁化县",
        "仁化镇", "翁源县", "龙仙镇", "新丰县", "乳源瑶族自治县", "乳城镇" ]);
    dsy.add("0_19_4", [ "源城区", "紫金县", "紫城镇", "龙川县", "老隆镇", "连平县", "元善镇", "和平县",
        "阳明镇", "东源县", "仙塘镇" ]);
    dsy.add("0_19_5", [ "梅江区", "兴宁市", "梅县", "程江镇", "大埔县", "湖寮镇", "丰顺县", "汤坑镇",
        "五华县", "水寨镇", "平远县", "大柘镇", "蕉岭县", "蕉城镇" ]);
    dsy.add("0_19_6", [ "湘桥区", "潮安县", "庵埠镇", "饶平县", "黄冈镇" ]);
    dsy.add("0_19_7", [ "金平区", "濠江区", "龙湖区", "潮阳区", "潮南区", "澄海区", "南澳县", "后宅镇" ]);
    dsy.add("0_19_8", [ "榕城区", "普宁市", "揭东县", "曲溪镇", "揭西县", "河婆镇", "惠来县", "惠城镇" ]);
    dsy.add("0_19_9", [ "城区", "陆丰市", "海丰县", "海城镇", "陆河县", "河田镇" ]);
    dsy.add("0_19_10", [ "惠城区", "惠阳区", "博罗县", "罗阳镇", "惠东县", "龙门县" ]);
    dsy.add("0_19_12", [ "香洲区", "斗门区", "金湾区" ]);
    dsy.add("0_19_14", [ "江海区", "蓬江区", "新会区", "恩平市", "台山市", "开平市", "鹤山市" ]);
    dsy.add("0_19_15", [ "禅城区", "南海区", "顺德区", "三水区", "高明区" ]);
    dsy.add("0_19_16", [ "端州区", "鼎湖区", "高要市", "四会市", "广宁县", "南街镇", "怀集县", "怀城镇",
        "封开县", "江口镇", "德庆县" ]);
    dsy.add("0_19_17", [ "云城区", "罗定市", "云安县", "六都镇", "新兴县", "新城镇", "郁南县", "都城镇" ]);
    dsy.add("0_19_18", [ "江城区", "阳春市", "阳西县", "织镇", "阳东县", "东城镇" ]);
    dsy.add("0_19_19", [ "茂南区", "茂港区", "化州市", "信宜市", "高州市", "电白县", "水东镇" ]);
    dsy.add("0_19_20", [ "赤坎区", "霞山区", "坡头区", "麻章区", "吴川市", "廉江市", "雷州市", "遂溪县",
        "遂城镇", "徐闻县", "撤销广州市东山区", "芳村区", "设立广州市南沙区", "萝岗区" ]);
    dsy.add("0_19", [ "广州市", "深圳市", "清远市", "韶关市", "河源市", "梅州市", "潮州市", "汕头市",
        "揭阳市", "汕尾市", "惠州市", "东莞市", "珠海市", "中山市", "江门市", "佛山市", "肇庆市", "云浮市",
        "阳江市", "茂名市", "湛江市" ]);
    dsy.add("0_20_0", [ "青秀区", "兴宁区", "江南区", "西乡塘区", "良庆区", "邕宁区", "武鸣县", "横县",
        "宾阳县", "上林县", "隆安县", "马山县" ]);
    dsy.add("0_20_1", [ "象山区", "叠彩区", "秀峰区", "七星区", "雁山区", "阳朔县", "阳朔镇", "临桂县",
        "临桂镇", "灵川县", "灵川镇", "全州县", "全州镇", "兴安县", "兴安镇", "永福县", "永福镇", "灌阳县",
        "灌阳镇", "资源县", "资源镇", "平乐县", "平乐镇", "荔浦县", "荔城镇", "龙胜各族自治县", "龙胜镇",
        "恭城瑶族自治县", "恭城镇" ]);
    dsy.add("0_20_2", [ "城中区", "鱼峰区", "柳南区", "柳北区", "柳江县", "拉堡镇", "柳城县", "大埔镇",
        "鹿寨县", "鹿寨镇", "融安县", "长安镇", "三江侗族自治县", "古宜镇", "融水苗族自治县", "融水镇" ]);
    dsy.add("0_20_3", [ "万秀区", "蝶山区", "长洲区", "岑溪市", "苍梧县", "龙圩镇", "藤县", "藤州镇",
        "蒙山县", "蒙山镇" ]);
    dsy.add("0_20_4", [ "港北区", "港南区", "覃塘区", "桂平市", "平南县", "平南镇" ]);
    dsy.add("0_20_5", [ "玉州区", "北流市", "兴业县", "石南镇", "容县", "容州镇", "陆川县", "陆城镇",
        "博白县", "博白镇" ]);
    dsy.add("0_20_6", [ "钦南区", "钦北区", "灵山县", "灵城镇", "浦北县", "小江镇" ]);
    dsy.add("0_20_7", [ "海城区", "银海区", "铁山港区", "合浦县", "廉州镇" ]);
    dsy.add("0_20_8", [ "港口区", "防城区", "东兴市", "上思县", "思阳镇" ]);
    dsy.add("0_20_9", [ "江州区", "凭祥市", "扶绥县", "新宁镇", "大新县", "桃城镇", "天等县", "天等镇",
        "宁明县", "城中镇", "龙州县", "龙州镇" ]);
    dsy.add("0_20_10", [ "右江区", "田阳县", "田州镇", "田东县", "平马镇", "平果县", "马头镇", "德保县",
        "城关镇", "靖西县", "新靖镇", "那坡县", "城厢镇", "凌云县", "泗城镇", "乐业县", "同乐镇", "西林县",
        "八达镇", "田林县", "乐里镇", "隆林各族自治县", "新州镇" ]);
    dsy.add("0_20_11", [ "金城江区", "宜州市", "南丹县", "城关镇", "天峨县", "六排镇", "凤山县", "凤城镇",
        "东兰县", "东兰镇", "巴马瑶族自治县", "巴马镇", "都安瑶族自治县", "安阳镇", "大化瑶族自治县", "大化镇",
        "罗城仫佬族自治县", "东门镇", "环江毛南族自治县", "思恩镇" ]);
    dsy.add("0_20_12", [ "兴宾区", "合山市", "象州县", "象州镇", "武宣县", "武宣镇", "忻城县", "城关镇",
        "金秀瑶族自治县", "金秀镇" ]);
    dsy.add("0_20_13", [ "八步区", "昭平县", "昭平镇", "钟山县", "钟山镇", "富川瑶族自治县", "富阳镇" ]);
    dsy.add("0_20", [ "南宁市", "桂林市", "柳州市", "梧州市", "贵港市", "玉林市", "钦州市", "北海市",
        "防城港市", "崇左市", "百色市", "河池市", "来宾市", "贺州市" ]);
    dsy.add("0_21_0", [ "龙华区", "秀英区", "琼山区", "美兰区" ]);
    dsy.add("0_21_2", [ "文昌市", "琼海市", "万宁市", "五指山市", "东方市", "儋州市", "临高县", "临城镇",
        "澄迈县", "金江镇", "定安县", "定城镇", "屯昌县", "屯城镇", "昌江黎族自治县", "石碌镇", "白沙黎族自治县",
        "牙叉镇", "琼中黎族苗族自治县", "营根镇", "陵水黎族自治县", "椰林镇", "保亭黎族苗族自治县", "保城镇",
        "乐东黎族自治县", "抱由镇" ]);
    dsy.add("0_21", [ "海口市", "三亚市", "省直辖行政单位" ]);
    dsy.add("0_22_0", [ "青羊区", "锦江区", "金牛区", "武侯区", "成华区", "龙泉驿区", "青白江区", "新都区",
        "温江区", "都江堰市", "彭州市", "邛崃市", "崇州市", "金堂县", "赵镇", "双流县", "郫县", "郫筒镇",
        "大邑县", "晋原镇", "蒲江县", "鹤山镇", "新津县", "五津镇" ]);
    dsy.add("0_22_1", [ "市中区", "元坝区", "朝天区", "旺苍县", "东河镇", "青川县", "乔庄镇", "剑阁县",
        "下寺镇", "苍溪县", "陵江镇" ]);
    dsy.add("0_22_2", [ "涪城区", "游仙区", "江油市", "三台县", "潼川镇", "盐亭县", "云溪镇", "安县",
        "花荄镇", "梓潼县", "文昌镇", "北川羌族自治县", "曲山镇", "平武县", "龙安镇" ]);
    dsy.add("0_22_3", [ "旌阳区", "什邡市", "广汉市", "绵竹市", "罗江县", "罗江镇", "中江县", "凯江镇" ]);
    dsy.add("0_22_4", [ "顺庆区", "高坪区", "嘉陵区", "阆中市", "南部县", "南隆镇", "营山县", "朗池镇",
        "蓬安县", "周口镇", "仪陇县", "新政镇", "西充县", "晋城镇" ]);
    dsy.add("0_22_5", [ "广安区", "华蓥市", "岳池县", "九龙镇", "武胜县", "沿口镇", "邻水县", "鼎屏镇" ]);
    dsy.add("0_22_6", [ "船山区", "安居区", "蓬溪县", "赤城镇", "射洪县", "太和镇", "大英县", "蓬莱镇" ]);
    dsy.add("0_22_7", [ "市中区", "东兴区", "威远县", "严陵镇", "资中县", "重龙镇", "隆昌县", "金鹅镇" ]);
    dsy
        .add("0_22_8", [ "市中区", "沙湾区", "五通桥区", "金口河区", "峨眉山市", "犍为县", "玉津镇",
            "井研县", "研城镇", "夹江县", "漹城镇", "沐川县", "沐溪镇", "峨边彝族自治县", "沙坪镇",
            "马边彝族自治县", "民建镇" ]);
    dsy.add("0_22_9", [ "自流井区", "大安区", "贡井区", "沿滩区", "荣县", "旭阳镇", "富顺县", "富世镇" ]);
    dsy.add("0_22_10", [ "江阳区", "纳溪区", "龙马潭区", "泸县", "福集镇", "合江县", "合江镇", "叙永县",
        "叙永镇", "古蔺县", "古蔺镇" ]);
    dsy.add("0_22_11", [ "翠屏区", "宜宾县", "柏溪镇", "南溪县", "南溪镇", "江安县", "江安镇", "长宁县",
        "长宁镇", "高县", "庆符镇", "筠连县", "筠连镇", "珙县", "巡场镇", "兴文县", "中城镇", "屏山县",
        "屏山镇" ]);
    dsy.add("0_22_12", [ "东区", "西区", "仁和区", "米易县", "攀莲镇", "盐边县", "桐子林镇" ]);
    dsy.add("0_22_13", [ "巴州区", "通江县", "诺江镇", "南江县", "南江镇", "平昌县", "江口镇" ]);
    dsy.add("0_22_14", [ "通川区", "万源市", "达县", "南外镇", "宣汉县", "东乡镇", "开江县", "新宁镇",
        "大竹县", "竹阳镇", "渠县", "渠江镇" ]);
    dsy.add("0_22_15", [ "雁江区", "简阳市", "乐至县", "天池镇", "安岳县", "岳阳镇" ]);
    dsy.add("0_22_16", [ "东坡区", "仁寿县", "文林镇", "彭山县", "凤鸣镇", "洪雅县", "洪川镇", "丹棱县",
        "丹棱镇", "青神县", "城厢镇" ]);
    dsy.add("0_22_17", [ "雨城区", "名山县", "蒙阳镇", "荥经县", "严道镇", "汉源县", "富林镇", "石棉县",
        "新棉镇", "天全县", "城厢镇", "芦山县", "芦阳镇", "宝兴县", "穆坪镇" ]);
    dsy.add("0_22_18", [ "马尔康县", "马尔康镇", "汶川县", "威州镇", "理县", "杂谷脑镇", "茂县", "凤仪镇",
        "松潘县", "进安镇", "九寨沟县", "永乐镇", "金川县", "金川镇", "小金县", "美兴镇", "黑水县", "芦花镇",
        "壤塘县", "壤柯镇", "阿坝县", "阿坝镇", "若尔盖县", "达扎寺镇", "红原县", "邛溪镇" ]);
    dsy.add("0_22_19", [ "康定县", "炉城镇", "泸定县", "泸桥镇", "丹巴县", "章谷镇", "九龙县", "呷尔镇",
        "雅江县", "河口镇", "道孚县", "鲜水镇", "炉霍县", "新都镇", "甘孜县", "甘孜镇", "新龙县", "茹龙镇",
        "德格县", "更庆镇", "白玉县", "建设镇", "石渠县", "尼呷镇", "色达县", "色柯镇", "理塘县", "高城镇",
        "巴塘县", "夏邛镇", "乡城县", "桑披镇", "稻城县", "金珠镇", "得荣县", "松麦镇" ]);
    dsy.add("0_22_20", [ "西昌市", "盐源县", "盐井镇", "德昌县", "德州镇", "会理县", "城关镇", "会东县",
        "会东镇", "宁南县", "披砂镇", "普格县", "普基镇", "布拖县", "特木里镇", "金阳县", "天地坝镇", "昭觉县",
        "新城镇", "喜德县", "光明镇", "冕宁县", "城厢镇", "越西县", "越城镇", "甘洛县", "新市坝镇", "美姑县",
        "巴普镇", "雷波县", "锦城镇", "木里藏族自治县", "乔瓦镇" ]);
    dsy.add("0_22", [ "成都市", "广元市", "绵阳市", "德阳市", "南充市", "广安市", "遂宁市", "内江市",
        "乐山市", "自贡市", "泸州市", "宜宾市", "攀枝花市", "巴中市", "达州市", "资阳市", "眉山市", "雅安市",
        "阿坝州", "甘孜州", "凉山州" ]);
    dsy.add("0_23_0", [ "乌当区", "南明区", "云岩区", "花溪区", "白云区", "小河区", "清镇市", "开阳县",
        "城关镇", "修文县", "龙场镇", "息烽县", "永靖镇" ]);
    dsy.add("0_23_1", [ "钟山区", "盘县", "红果镇", "六枝特区", "平寨镇", "水城县" ]);
    dsy.add("0_23_2", [ "红花岗区", "汇川区", "赤水市", "仁怀市", "遵义县", "南白镇", "桐梓县", "娄山关镇",
        "绥阳县", "洋川镇", "正安县", "凤仪镇", "凤冈县", "龙泉镇", "湄潭县", "湄江镇", "余庆县", "白泥镇",
        "习水县", "东皇镇", "道真仡佬族苗族自治县", "玉溪镇", "务川仡佬族苗族自治县", "都濡镇" ]);
    dsy.add("0_23_3", [ "西秀区", "平坝县", "城关镇", "普定县", "城关镇", "关岭布依族苗族自治县", "关索镇",
        "镇宁布依族苗族自治县", "城关镇", "紫云苗族布依族自治县", "松山镇" ]);
    dsy.add("0_23_4", [ "毕节市", "大方县", "大方镇", "黔西县", "城关镇", "金沙县", "城关镇", "织金县",
        "城关镇", "纳雍县", "雍熙镇", "赫章县", "城关镇", "威宁彝族回族苗族自治县", "草海镇" ]);
    dsy.add("0_23_5", [ "铜仁市", "江口县", "双江镇", "石阡县", "汤山镇", "思南县", "思唐镇", "德江县",
        "青龙镇", "玉屏侗族自治县", "平溪镇", "印江土家族苗族自治县", "峨岭镇", "沿河土家族自治县", "和平镇",
        "松桃苗族自治县", "蓼皋镇", "万山特区", "万山镇" ]);
    dsy.add("0_23_6", [ "凯里市", "黄平县", "新州镇", "施秉县", "城关镇", "三穗县", "八弓镇", "镇远县",
        "阳镇", "岑巩县", "思旸镇", "天柱县", "凤城镇", "锦屏县", "三江镇", "剑河县", "革东镇", "台江县",
        "台拱镇", "黎平县", "德凤镇", "榕江县", "古州镇", "从江县", "丙妹镇", "雷山县", "丹江镇", "麻江县",
        "杏山镇", "丹寨县", "龙泉镇" ]);
    dsy.add("0_23_7", [ "都匀市", "福泉市", "荔波县", "玉屏镇", "贵定县", "城关镇", "瓮安县", "雍阳镇",
        "独山县", "城关镇", "平塘县", "平湖镇", "罗甸县", "龙坪镇", "长顺县", "长寨镇", "龙里县", "龙山镇",
        "惠水县", "和平镇", "三都水族自治县", "三合镇" ]);
    dsy
        .add("0_23_8", [ "兴义市", "兴仁县", "城关镇", "普安县", "盘水镇", "晴隆县", "莲城镇",
            "贞丰县", "珉谷镇", "望谟县", "复兴镇", "册亨县", "者楼镇", "安龙县", "新安镇",
            "剑河县人民政府驻地由柳川镇迁至革东镇" ]);
    dsy.add("0_23", [ "贵阳市", "六盘水市", "遵义市", "安顺市", "毕节地区", "铜仁地区", "黔东南州", "黔南州",
        "黔西南州" ]);
    dsy.add("0_24_0", [ "盘龙区", "五华区", "官渡区", "西山区", "东川区", "安宁市", "呈贡县", "龙城镇",
        "晋宁县", "昆阳镇", "富民县", "永定镇", "宜良县", "匡远镇", "嵩明县", "嵩阳镇", "石林彝族自治县",
        "鹿阜镇", "禄劝彝族苗族自治县", "屏山镇", "寻甸回族彝族自治县", "仁德镇" ]);
    dsy.add("0_24_1", [ "麒麟区", "宣威市", "马龙县", "通泉镇", "沾益县", "西平镇", "富源县", "中安镇",
        "罗平县", "罗雄镇", "师宗县", "丹凤镇", "陆良县", "中枢镇", "会泽县", "金钟镇" ]);
    dsy.add("0_24_2", [ "红塔区", "江川县", "大街镇", "澄江县", "凤麓镇", "通海县", "秀山镇", "华宁县",
        "宁州镇", "易门县", "龙泉镇", "峨山彝族自治县", "双江镇", "新平彝族傣族自治县", "桂山镇",
        "元江哈尼族彝族傣族自治县", "澧江镇" ]);
    dsy.add("0_24_3", [ "隆阳区", "施甸县", "甸阳镇", "腾冲县", "腾越镇", "龙陵县", "龙山镇", "昌宁县",
        "田园镇" ]);
    dsy.add("0_24_4", [ "昭阳区", "鲁甸县", "文屏镇", "巧家县", "新华镇", "盐津县", "盐井镇", "大关县",
        "翠华镇", "永善县", "溪落渡镇", "绥江县", "中城镇", "镇雄县", "乌峰镇", "彝良县", "角奎镇", "威信县",
        "扎西镇", "水富县", "向家坝镇" ]);
    dsy.add("0_24_5", [ "古城区", "永胜县", "永北镇", "华坪县", "中心镇", "玉龙纳西族自治县", "黄山镇",
        "宁蒗彝族自治县", "大兴镇" ]);
    dsy.add("0_24_6", [ "翠云区", "普洱哈尼族彝族自治县", "宁洱镇", "墨江哈尼族自治县", "联珠镇", "景东彝族自治县",
        "锦屏镇", "景谷傣族彝族自治县", "威远镇", "镇沅彝族哈尼族拉祜族自治县", "恩乐镇", "江城哈尼族彝族自治县", "勐烈镇",
        "孟连傣族拉祜族佤族自治县", "娜允镇", "澜沧拉祜族自治县", "勐朗镇", "西盟佤族自治县", "勐梭镇" ]);
    dsy
        .add("0_24_7", [ "临翔区", "凤庆县", "凤山镇", "云县", "爱华镇", "永德县", "德党镇", "镇康县",
            "南伞镇", "双江拉祜族佤族布朗族傣族自治县", "勐勐镇", "耿马傣族佤族自治县", "耿马镇", "沧源佤族自治县",
            "勐董镇" ]);
    dsy.add("0_24_8", [ "潞西市", "瑞丽市", "梁河县", "遮岛镇", "盈江县", "平原镇", "陇川县", "章凤镇" ]);
    dsy.add("0_24_9", [ "泸水县六库镇", "泸水县", "六库镇", "福贡县", "上帕镇", "贡山独龙族怒族自治县", "茨开镇",
        "兰坪白族普米族自治县", "金顶镇" ]);
    dsy.add("0_24_10", [ "香格里拉县", "建塘镇", "德钦县", "升平镇", "维西傈僳族自治县", "保和镇" ]);
    dsy.add("0_24_11", [ "大理市", "祥云县", "祥城镇", "宾川县", "金牛镇", "弥渡县", "弥城镇", "永平县",
        "博南镇", "云龙县", "诺邓镇", "洱源县", "茈碧湖镇", "剑川县", "金华镇", "鹤庆县", "云鹤镇",
        "漾濞彝族自治县", "苍山西镇", "南涧彝族自治县", "南涧镇", "巍山彝族回族自治县", "南诏镇" ]);
    dsy.add("0_24_12", [ "楚雄市", "双柏县", "妥甸镇", "牟定县", "共和镇", "南华县", "龙川镇", "姚安县",
        "栋川镇", "大姚县", "金碧镇", "永仁县", "永定镇", "元谋县", "元马镇", "武定县", "狮山镇", "禄丰县",
        "金山镇" ]);
    dsy.add("0_24_13", [ "蒙自县", "文澜镇", "个旧市", "开远市", "绿春县", "大兴镇", "建水县", "临安镇",
        "石屏县", "异龙镇", "弥勒县", "弥阳镇", "泸西县", "中枢镇", "元阳县", "南沙镇", "红河县", "迤萨镇",
        "金平苗族瑶族傣族自治县", "金河镇", "河口瑶族自治县", "河口镇", "屏边苗族自治县", "玉屏镇" ]);
    dsy.add("0_24_14", [ "文山县", "开化镇", "砚山县", "江那镇", "西畴县", "西洒镇", "麻栗坡县", "麻栗镇",
        "马关县", "马白镇", "丘北县", "锦屏镇", "广南县", "莲城镇", "富宁县", "新华镇" ]);
    dsy.add("0_24_15", [ "景洪市", "勐海县", "勐海镇", "勐腊县", "勐腊镇" ]);
    dsy.add("0_24", [ "昆明市", "曲靖市", "玉溪市", "保山市", "昭通市", "丽江市", "思茅市", "临沧市",
        "德宏州", "怒江州", "迪庆州", "大理州", "楚雄州", "红河州", "文山州", "西双版纳州" ]);
    dsy.add("0_25_0", [ "城关区", "林周县", "甘丹曲果镇", "当雄县", "当曲卡镇", "尼木县", "塔荣镇", "曲水县",
        "曲水镇", "堆龙德庆县", "东嘎镇", "达孜县", "德庆镇", "墨竹工卡县", "工卡镇" ]);
    dsy.add("0_25_1", [ "那曲县", "那曲镇", "嘉黎县", "阿扎镇", "比如县", "比如镇", "聂荣县", "聂荣镇",
        "安多县", "帕那镇", "申扎县", "申扎镇", "索县", "亚拉镇", "班戈县", "普保镇", "巴青县", "拉西镇",
        "尼玛县", "尼玛镇" ]);
    dsy.add("0_25_2", [ "昌都县", "城关镇", "江达县", "江达镇", "贡觉县", "莫洛镇", "类乌齐县", "桑多镇",
        "丁青县", "丁青镇", "察雅县", "烟多镇", "八宿县", "白玛镇", "左贡县", "旺达镇", "芒康县", "嘎托镇",
        "洛隆县", "孜托镇", "边坝县", "草卡镇" ]);
    dsy.add("0_25_3", [ "林芝县", "八一镇", "工布江达县", "工布江达镇", "米林县", "米林镇", "墨脱县", "墨脱镇",
        "波密县", "扎木镇", "察隅县", "竹瓦根镇", "朗县", "朗镇" ]);
    dsy.add("0_25_4", [ "乃东县", "泽当镇", "扎囊县", "扎塘镇", "贡嘎县", "吉雄镇", "桑日县", "桑日镇",
        "琼结县", "琼结镇", "曲松县", "曲松镇", "措美县", "措美镇", "洛扎县", "洛扎镇", "加查县", "安绕镇",
        "隆子县", "隆子镇", "错那县", "错那镇", "浪卡子县", "浪卡子镇" ]);
    dsy.add("0_25_5", [ "日喀则市", "南木林县", "南木林镇", "江孜县", "江孜镇", "定日县", "协格尔镇", "萨迦县",
        "萨迦镇", "拉孜县", "曲下镇", "昂仁县", "卡嘎镇", "谢通门县", "卡嘎镇", "白朗县", "洛江镇", "仁布县",
        "德吉林镇", "康马县", "康马镇", "定结县", "江嘎镇", "仲巴县", "拉让乡", "亚东县", "下司马镇", "吉隆县",
        "宗嘎镇", "聂拉木县", "聂拉木镇", "萨嘎县", "加加镇", "岗巴县", "岗巴镇" ]);
    dsy.add("0_25_6", [ "噶尔县", "狮泉河镇", "普兰县", "普兰镇", "札达县", "托林镇", "日土县", "日土镇",
        "革吉县", "革吉镇", "改则县", "改则镇", "措勤县", "措勤镇", "林芝县人民政府驻地由林芝镇迁至八一镇" ]);
    dsy.add("0_25", [ "拉萨市", "那曲地区", "昌都地区", "林芝地区", "山南地区", "日喀则地区", "阿里地区" ]);
    dsy.add("0_26_0", [ "莲湖区", "新城区", "碑林区", "灞桥区", "未央区", "雁塔区", "阎良区", "临潼区",
        "长安区", "蓝田县", "蓝关镇", "周至县", "二曲镇", "户县", "甘亭镇", "高陵县", "鹿苑镇" ]);
    dsy.add("0_26_1", [ "宝塔区", "延长县", "七里村镇", "延川县", "延川镇", "子长县", "瓦窑堡镇", "安塞县",
        "真武洞镇", "志丹县", "保安镇", "吴起县", "吴旗镇", "甘泉县", "城关镇", "富县", "富城镇", "洛川县",
        "凤栖镇", "宜川县", "丹州镇", "黄龙县", "石堡镇", "黄陵县", "桥山镇" ]);
    dsy.add("0_26_2", [ "耀州区", "王益区", "印台区", "宜君县", "城关镇" ]);
    dsy.add("0_26_3", [ "临渭区", "华阴市", "韩城市", "华县", "华州镇", "潼关县", "城关镇", "大荔县",
        "城关镇", "蒲城县", "城关镇", "澄城县", "城关镇", "白水县", "城关镇", "合阳县", "城关镇", "富平县",
        "窦村镇" ]);
    dsy.add("0_26_4", [ "秦都区", "杨陵区", "渭城区", "兴平市", "三原县", "城关镇", "泾阳县", "泾干镇",
        "乾县", "城关镇", "礼泉县", "城关镇", "永寿县", "监军镇", "彬县", "城关镇", "长武县", "昭仁镇",
        "旬邑县", "城关镇", "淳化县", "城关镇", "武功县", "普集镇" ]);
    dsy.add("0_26_5", [ "渭滨区", "金台区", "陈仓区", "凤翔县", "城关镇", "岐山县", "凤鸣镇", "扶风县",
        "城关镇", "眉县", "首善镇", "陇县", "城关镇", "千阳县", "城关镇", "麟游县", "九成宫镇", "凤县",
        "双石铺镇", "太白县", "嘴头镇" ]);
    dsy.add("0_26_6", [ "汉台区", "南郑县", "城关镇", "城固县", "博望镇", "洋县", "洋州镇", "西乡县",
        "城关镇", "勉县", "勉阳镇", "宁强县", "汉源镇", "略阳县", "城关镇", "镇巴县", "泾洋镇", "留坝县",
        "城关镇", "佛坪县", "袁家庄镇" ]);
    dsy.add("0_26_7", [ "榆阳区", "神木县", "神木镇", "府谷县", "府谷镇", "横山县", "横山镇", "靖边县",
        "张家畔镇", "定边县", "定边镇", "绥德县", "名州镇", "米脂县", "银州镇", "佳县", "佳芦镇", "吴堡县",
        "宋家川镇", "清涧县", "宽洲镇", "子洲县", "双湖峪镇" ]);
    dsy.add("0_26_8", [ "汉滨区", "汉阴县", "城关镇", "石泉县", "城关镇", "宁陕县", "城关镇", "紫阳县",
        "城关镇", "岚皋县", "城关镇", "平利县", "城关镇", "镇坪县", "城关镇", "旬阳县", "城关镇", "白河县",
        "城关镇" ]);
    dsy.add("0_26_9", [ "商州区", "洛南县", "城关镇", "丹凤县", "龙驹寨镇", "商南县", "城关镇", "山阳县",
        "城关镇", "镇安县", "永乐镇", "柞水县", "乾佑镇" ]);
    dsy.add("0_26", [ "西安市", "延安市", "铜川市", "渭南市", "咸阳市", "宝鸡市", "汉中市", "榆林市",
        "安康市", "商洛市" ]);
    dsy.add("0_27_0", [ "城关区", "七里河区", "西固区", "安宁区", "红古区", "永登县", "城关镇", "皋兰县",
        "石洞镇", "榆中县", "城关镇" ]);
    dsy.add("0_27_1", [ "金昌市", "金川区", "永昌县", "城关镇" ]);
    dsy.add("0_27_2", [ "白银区", "平川区", "靖远县", "乌兰镇", "会宁县", "会师镇", "景泰县", "一条山镇" ]);
    dsy.add("0_27_3", [ "秦州区", "麦积区", "清水县", "永清镇", "秦安县", "兴国镇", "甘谷县", "大像山镇",
        "武山县", "城关镇", "张家川回族自治县", "张家川镇" ]);
    dsy.add("0_27_4", [ "凉州区", "民勤县", "城关镇", "古浪县", "古浪镇", "天祝藏族自治县", "华藏寺镇" ]);
    dsy.add("0_27_5", [ "肃州区", "玉门市", "敦煌市", "金塔县", "金塔镇", "安西县", "渊泉镇",
        "肃北蒙古族自治县", "党城湾镇", "阿克塞哈萨克族自治县", "红柳湾镇" ]);
    dsy.add("0_27_6", [ "甘州区", "民乐县", "洪水镇", "临泽县", "沙河镇", "高台县", "城关镇", "山丹县",
        "清泉镇", "肃南裕固族自治县", "红湾寺镇" ]);
    dsy.add("0_27_7", [ "西峰区", "庆城县", "庆城镇", "环县", "环城镇", "华池县", "柔远镇", "合水县",
        "西华池镇", "正宁县", "山河镇", "宁县", "新宁镇", "镇原县", "城关镇" ]);
    dsy.add("0_27_8", [ "崆峒区", "泾川县", "城关镇", "灵台县", "中台镇", "崇信县", "锦屏镇", "华亭县",
        "东华镇", "庄浪县", "水洛镇", "静宁县", "城关镇" ]);
    dsy.add("0_27_9", [ "安定区", "通渭县", "平襄镇", "临洮县", "洮阳镇", "漳县", "武阳镇", "岷县",
        "岷阳镇", "渭源县", "清源镇", "陇西县", "巩昌镇" ]);
    dsy.add("0_27_10", [ "武都区", "成县", "城关镇", "宕昌县", "城关镇", "康县", "文县", "城关镇",
        "西和县", "汉源镇", "礼县", "城关镇", "两当县", "城关镇", "徽县", "城关镇" ]);
    dsy.add("0_27_11", [ "临夏市", "临夏县", "韩集镇", "康乐县", "附城镇", "永靖县", "刘家峡镇", "广河县",
        "城关镇", "和政县", "城关镇", "东乡族自治县", "锁南坝镇", "积石山保安族东乡族撒拉族自治县", "吹麻滩镇" ]);
    dsy.add("0_27_12", [ "合作市", "临潭县", "城关镇", "卓尼县", "柳林镇", "舟曲县", "城关镇", "迭部县",
        "电尕镇", "玛曲县", "尼玛镇", "碌曲县", "玛艾镇", "夏河县", "拉卜楞镇" ]);
    dsy.add("0_27", [ "兰州市", "嘉峪关市", "白银市", "天水市", "武威市", "酒泉市", "张掖市", "庆阳市",
        "平凉市", "定西市", "陇南市", "临夏州", "甘南州" ]);
    dsy.add("0_28_0", [ "城中区", "城东区", "城西区", "城北区", "大通回族土族自治县", "桥头镇", "湟源县",
        "城关镇", "湟中县", "鲁沙尔镇" ]);
    dsy.add("0_28_1", [ "平安县", "平安镇", "乐都县", "碾伯镇", "民和回族土族自治县", "川口镇", "互助土族自治县",
        "威远镇", "化隆回族自治县", "巴燕镇", "循化撒拉族自治县", "积石镇" ]);
    dsy.add("0_28_2", [ "海晏县", "三角城镇", "祁连县", "八宝镇", "刚察县", "沙柳河镇", "门源回族自治县",
        "浩门镇" ]);
    dsy.add("0_28_3", [ "共和县", "恰卜恰镇", "同德县", "尕巴松多镇", "贵德县", "河阴镇", "兴海县", "子科滩镇",
        "贵南县", "茫曲镇" ]);
    dsy.add("0_28_4", [ "同仁县", "隆务镇", "尖扎县", "马克唐镇", "泽库县", "泽曲镇", "河南蒙古族自治县",
        "优干宁镇" ]);
    dsy.add("0_28_5", [ "玛沁县", "大武镇", "班玛县", "赛来塘镇", "甘德县", "柯曲镇", "达日县", "吉迈镇",
        "久治县", "智青松多镇", "玛多县", "黄河乡" ]);
    dsy.add("0_28_6", [ "玉树县", "结古镇", "杂多县", "萨呼腾镇", "称多县", "称文镇", "治多县", "加吉博洛镇",
        "囊谦县", "香达镇", "曲麻莱县", "约改镇" ]);
    dsy.add("0_28_7",
        [ "德令哈市", "格尔木市", "乌兰县", "希里沟镇", "都兰县", "察汗乌苏镇", "天峻县", "新源镇" ]);
    dsy.add("0_28", [ "西宁市", "海东地区", "海北州", "海南州", "黄南州", "果洛州", "玉树州", "海西州" ]);
    dsy.add("0_29_0", [ "兴庆区", "金凤区", "西夏区", "灵武市", "永宁县", "杨和镇", "贺兰县", "习岗镇" ]);
    dsy.add("0_29_1", [ "大武口区", "惠农区", "平罗县", "城关镇" ]);
    dsy.add("0_29_2", [ "利通区", "青铜峡市", "盐池县", "花马池镇", "同心县", "豫海镇" ]);
    dsy.add("0_29_3", [ "原州区", "西吉县", "吉强镇", "隆德县", "城关镇", "泾源县", "香水镇", "彭阳县",
        "白阳镇" ]);
    dsy.add("0_29_4", [ "沙坡头区", "中宁县", "海原县" ]);
    dsy.add("0_29", [ "银川市", "石嘴山市", "吴忠市", "固原市", "中卫市" ]);
    dsy.add("0_30_0", [ "天山区", "沙依巴克区", "新市区", "水磨沟区", "头屯河区", "达坂城区", "东山区",
        "乌鲁木齐县", "乌鲁木齐市水磨沟区" ]);
    dsy.add("0_30_1", [ "克拉玛依区", "独山子区", "白碱滩区", "乌尔禾区" ]);
    dsy.add("0_30_2", [ "石河子市", "阿拉尔市", "图木舒克市", "五家渠市" ]);
    dsy.add("0_30_3", [ "喀什市", "疏附县", "托克扎克镇", "疏勒县", "疏勒镇", "英吉沙县", "英吉沙镇", "泽普县",
        "泽普镇", "莎车县", "莎车镇", "叶城县", "喀格勒克镇", "麦盖提县", "麦盖提镇", "岳普湖县", "岳普湖镇",
        "伽师县", "巴仁镇", "巴楚县", "巴楚镇", "塔什库尔干塔吉克自治县", "塔什库尔干镇" ]);
    dsy.add("0_30_4", [ "阿克苏市", "温宿县", "温宿镇", "库车县", "库车镇", "沙雅县", "沙雅镇", "新和县",
        "新和镇", "拜城县", "拜城镇", "乌什县", "乌什镇", "阿瓦提县", "阿瓦提镇", "柯坪县", "柯坪镇" ]);
    dsy.add("0_30_5", [ "和田市", "和田县", "墨玉县", "喀拉喀什镇", "皮山县", "固玛镇", "洛浦县", "洛浦镇",
        "策勒县", "策勒镇", "于田县", "木尕拉镇", "民丰县", "尼雅镇" ]);
    dsy.add("0_30_6", [ "吐鲁番市", "鄯善县", "鄯善镇", "托克逊县", "托克逊镇" ]);
    dsy.add("0_30_7", [ "哈密市", "伊吾县", "伊吾镇", "巴里坤哈萨克自治县", "巴里坤镇" ]);
    dsy.add("0_30_8", [ "阿图什市", "阿克陶县", "阿克陶镇", "阿合奇县", "阿合奇镇", "乌恰县", "乌恰镇" ]);
    dsy.add("0_30_9", [ "博乐市", "精河县", "精河镇", "温泉县", "博格达尔镇" ]);
    dsy.add("0_30_10", [ "昌吉市", "阜康市", "米泉市", "呼图壁县", "呼图壁镇", "玛纳斯县", "玛纳斯镇",
        "奇台县", "奇台镇", "吉木萨尔县", "吉木萨尔镇", "木垒哈萨克自治县", "木垒镇" ]);
    dsy.add("0_30_11", [ "库尔勒市", "轮台县", "轮台镇", "尉犁县", "尉犁镇", "若羌县", "若羌镇", "且末县",
        "且末镇", "和静县", "和静镇", "和硕县", "特吾里克镇", "博湖县", "博湖镇", "焉耆回族自治县", "焉耆镇" ]);
    dsy.add("0_30_12", [ "伊宁市", "奎屯市", "伊宁县", "吉里于孜镇", "霍城县", "水定镇", "巩留县", "巩留镇",
        "新源县", "新源镇", "昭苏县", "昭苏镇", "特克斯县", "特克斯镇", "尼勒克县", "尼勒克镇",
        "察布查尔锡伯自治县", "察布查尔镇" ]);
    dsy.add("0_30_13", [ "塔城市", "乌苏市", "额敏县", "额敏镇", "沙湾县", "三道河子镇", "托里县", "托里镇",
        "裕民县", "哈拉布拉镇", "和布克赛尔蒙古自治县", "和布克赛尔镇" ]);
    dsy.add("0_30_14", [ "阿勒泰市", "布尔津县", "布尔津镇", "富蕴县", "库额尔齐斯镇", "福海县", "哈巴河县",
        "青河县", "吉木乃县" ]);
    dsy.add("0_30", [ "乌鲁木齐市", "克拉玛依市", "自治区直辖县级行政单位", "喀什地区", "阿克苏地区", "和田地区",
        "吐鲁番地区", "哈密地区", "克孜勒苏柯州", "博尔塔拉州", "昌吉州", "巴音郭楞州", "伊犁州", "塔城地区",
        "阿勒泰地区" ]);
    dsy.add("0_31_0", [ "中西区", "东区", "九龙城区", "观塘区", "南区", "深水埗区", "湾仔区", "黄大仙区",
        "油尖旺区", "离岛区", "葵青区", "北区", "西贡区", "沙田区", "屯门区", "大埔区", "荃湾区", "元朗区" ]);
    dsy.add("0_31", [ "香港特别行政区" ]);
    dsy.add("0_32_0", [ "澳门特别行政区" ]);
    dsy.add("0_32", [ "澳门特别行政区" ]);
    dsy.add("0_33_0", [ " " ]);
    dsy.add("0_33", [ "台北", "高雄", "台中", "花莲", "基隆", "嘉义", "金门", "连江", "苗栗", "南投",
        "澎湖", "屏东", "台东", "台南", "桃园", "新竹", "宜兰", "云林", "彰化" ]);
    dsy.add("0", [ "北京市", "天津市", "上海市", "重庆市", "河北省", "山西省", "内蒙古", "辽宁省", "吉林省",
        "黑龙江省", "江苏省", "浙江省", "安徽省", "福建省", "江西省", "山东省", "河南省", "湖北省", "湖南省",
        "广东省", "广西", "海南省", "四川省", "贵州省", "云南省", "西藏", "陕西省", "甘肃省", "青海省",
        "宁夏", "新疆", "香港", "澳门", "台湾省" ]);


    var s = [ "s1", "s2", "s3" ];
    var opt0 = [ "省份", "地级市", "市、县级市、县" ];
    function setup() {
        for (i = 0; i < s.length - 1; i++)
            document.getElementById(s[i]).onchange = new Function("change("
                + (i + 1) + ");promptinfo();");
        change(0);
    }
</script>
<%--从数据库读取的地址赋值给地址下拉栏--%>
<script>
    function setaddress(customeraddr) {
        var jnum=0;
        var Residence='';
        var additional='';
        for(var i=0;i<customeraddr.length;i++){
            if (customeraddr[i]=='@'){
                jnum=i;
            }
        }
        for (var j=0;j<jnum;j++){
            Residence+=customeraddr[j];
        }
        for(var k=jnum+1;k<customeraddr.length;k++){
            additional+=customeraddr[k];
        }
        var addressValue=document.getElementById('address');
        addressValue.innerHTML=additional;
        var address = Residence.split("|");
        var index;//第一个下拉框的索引
        var provinces = new Array("北京市", "天津市", "上海市", "重庆市", "河北省", "山西省",
            "内蒙古", "辽宁省", "吉林省", "黑龙江省", "江苏省", "浙江省", "安徽省", "福建省",
            "江西省", "山东省", "河南省", "湖北省", "湖南省", "广东省", "广西", "海南省",
            "四川省", "贵州省", "云南省", "西藏", "陕西省", "甘肃省", "青海省", "宁夏", "新疆",
            "香港", "澳门", "台湾省");
        var cnt = provinces.length;
        for (i = 0; i < cnt; i++) {//求出索引
            if (address[0] == provinces[i]) {//找到与address[0]相同的选项，再将i的值赋给index
                index = i;
                break;
            }
        }
        if (index < provinces.length) {
            document.getElementById(s[0]).selectedIndex = index + 1;//根据索引赋值
            var str = "0";
            for (i = 0; i < 1; i++) {
                str += ("_" + (document.getElementById(s[i]).selectedIndex - 1));
            }
            var ss = document.getElementById(s[1]);
            with (ss) {
                length = 0;
                options[0] = new Option(opt0[1], opt0[1]);
                if (dsy.Exists(str)) {
                    ar = dsy.Items[str];
                    for (i = 0; i < ar.length; i++)
                        options[length] = new Option(ar[i], ar[i]);
                    options[0].selected = true;
                }
                change(2);
            }
            var index1;//第二个下拉框的索引
            var city = ar;
            var cnt1 = city.length;
            for (i = 0; i < cnt1; i++) {
                if (address[1] == city[i]) {
                    index1 = i;
                    break;
                }
            }
            if (index1 < city.length) {
                document.getElementById(s[1]).selectedIndex = index1 + 1;
                var str = "0";
                for (i = 0; i < 2; i++) {
                    str += ("_" + (document.getElementById(s[i]).selectedIndex - 1));
                }

                var ss = document.getElementById(s[2]);
                with (ss) {
                    length = 0;
                    options[0] = new Option(opt0[2], opt0[2]);
                    if (dsy.Exists(str)) {
                        ar = dsy.Items[str];
                        for (i = 0; i < ar.length; i++)
                            options[length] = new Option(ar[i], ar[i]);
                        options[0].selected = true;
                    }
                }
                var index2;//第三个下拉框的索引
                var town=ar;
                var cnt2=town.length;
                for (i = 0; i < cnt2; i++) {
                    if (address[2] == town[i]) {
                        index2 = i;
                        break;
                    }
                }
                if(index2<town.length){
                    document.getElementById(s[2]).selectedIndex=index2+1;
                }
            }
        }
    }
</script>
<%--对数据库获取的性别数据进行处理--%>
<script>
    function setsexaction(sex) {
        var man=document.getElementById('man');
        var women=document.getElementById('women');
        var nospeak=document.getElementById('nospeak');
        if(sex=='男'){
            man.checked=true;
        }else if (sex=='女'){
            women.checked=true;
        }else{
            nospeak.checked=true;
        }
    }
</script>
<%--订单选项切换--%>
<script>
    var allorder=document.getElementById('allorder');
    var noorder=document.getElementById('noorder');
    var histeryorder=document.getElementById('histeryorder');
    var backorder=document.getElementById('backorder');
    function allorderonclick(){
        selectallorder();
        allorder.className='for_title_myorder_select';
        noorder.className='for_title_myorder';
        histeryorder.className='for_title_myorder';
        backorder.className='for_title_myorder';
    }
    function noorderonclick() {
        selectnoorder();
        allorder.className='for_title_myorder';
        noorder.className='for_title_myorder_select';
        histeryorder.className='for_title_myorder';
        backorder.className='for_title_myorder';
    }
    function histeryorderonclick() {
        selecthisteryorder();
        allorder.className='for_title_myorder';
        noorder.className='for_title_myorder';
        histeryorder.className='for_title_myorder_select';
        backorder.className='for_title_myorder';
    }
    function backorderonclick() {
        selectbackorder();
        allorder.className='for_title_myorder';
        noorder.className='for_title_myorder';
        histeryorder.className='for_title_myorder';
        backorder.className='for_title_myorder_select';
    }
</script>
<%--订单样式重置--%>
<script>
    function orderdisplayclear() {
        for (var i=1;i<11;i++){
            var tab_order=document.getElementById('tab_order1_1_'+i);
            var backorder=document.getElementById('backorder'+i);
            var gospeack=document.getElementById('gospeack'+i);
            var cancelorder=document.getElementById('cancelorder'+i);
            var confirmorder=document.getElementById('confirmorder'+i);
            tab_order.style.display='none';
            // backorder.style.display='none';
            // gospeack.style.display='none';
            // cancelorder.style.display='none';
            // confirmorder.style.display='none';
        }
    }
</script>
<%--查询用户的全部订单--%>
<script>
    function selectallorder() {
        orderdisplayclear();
        var use3Value = '${sessionScope.customerid}';
        var parses='customerid='+use3Value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectcusid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num1_orderinfor=document.getElementById('paging_num1_orderinfor');
                var paging_num2_orderinfor=document.getElementById('paging_num2_orderinfor');
                //设置最大页数
                paging_num2_orderinfor.innerHTML=maxnum;
                paging_num1_orderinfor.innerHTML='1';
                var num=(res.rows.length)%10;
                for (var i=0;i<res.rows.length&&i<10;i++) {
                    var OrderId = document.getElementById('OrderId3_' + (i + 1));
                    var Orderdate = document.getElementById('Orderdate3_' + (i + 1));
                    var Ordermount = document.getElementById('Ordermount3_' + (i + 1));
                    var postmethod = document.getElementById('postmethod3_' + (i + 1));
                    var paymethod = document.getElementById('paymethod3_' + (i + 1));
                    var recevername = document.getElementById('recevername3_' + (i + 1));
                    var receveraddr = document.getElementById('receveraddr3_' + (i + 1));
                    var recevertel = document.getElementById('recevertel3_' + (i + 1));
                    var totalprice = document.getElementById('totalprice3_' + (i + 1));
                    var tab_orderinfor = document.getElementById('tab_order1_1_' + (i + 1));
                    tab_orderinfor.style.display = 'block';
                    OrderId.value = res.rows[i].orderid;
                    Orderdate.value = res.rows[i].orderdate;
                    Ordermount.value = res.rows[i].ordermount;
                    postmethod.value = res.rows[i].postmethod;
                    paymethod.value = res.rows[i].paymethod;
                    recevername.value = res.rows[i].recevername;
                    receveraddr.value = res.rows[i].receveraddr;
                    recevertel.value = res.rows[i].recevertel;
                    totalprice.value = res.rows[i].totalprice;
                    infororderstate(res.rows[i].orderid,i+1,i,res.rows[i].customerid);
                }
            }
            else{
                var tab_orderinfor=document.getElementById('tab_order1_1_'+(i+1));
                tab_orderinfor.style.display='block';
                alert("没有订单信息！");
            }
        }
    }
</script>
<%--查询未收货订单--%>
<script>
    function selectnoorder() {
        orderdisplayclear();
        var num=1;
        var use3Value = '${sessionScope.customerid}';
        var parses='customerid='+use3Value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectcusid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                for (var i=0;i<res.rows.length&&i<10;i++) {
                    selecttwonoorder(res.rows[i].orderid,res.rows[i],num);
                }
            }
            else{
                alert("没有订单信息！");
            }
        }
    }
    function selecttwonoorder(orderid,data,num) {
        var parses2='orderid='+orderid;
        var xhr2 = new XMLHttpRequest();
        xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr2.send(parses2);
        // 获取服务器端响应的数据
        xhr2.onload = function () {
            let res2=JSON.parse(xhr2.responseText);
            if(res2.total==0){
                if (res2.rows[0].poststatus=='已发货'&&res2.rows[0].recevstatus=='未收货'){
                    var OrderId = document.getElementById('OrderId3_' + num);
                    var Orderdate = document.getElementById('Orderdate3_' + num);
                    var Ordermount = document.getElementById('Ordermount3_' + num);
                    var postmethod = document.getElementById('postmethod3_' + num);
                    var paymethod = document.getElementById('paymethod3_' + num);
                    var recevername = document.getElementById('recevername3_' + num);
                    var receveraddr = document.getElementById('receveraddr3_' + num);
                    var recevertel = document.getElementById('recevertel3_' + num);
                    var totalprice = document.getElementById('totalprice3_' + num);
                    var tab_orderinfor = document.getElementById('tab_order1_1_' + num);
                    var backorder = document.getElementById('backorder' + num);
                    var confirmorder = document.getElementById('confirmorder' + num);
                    tab_orderinfor.style.display = 'block';
                    backorder.style.display='block';
                    confirmorder.style.display='block';
                    OrderId.value = data.orderid;
                    Orderdate.value = data.orderdate;
                    Ordermount.value = data.ordermount;
                    postmethod.value = data.postmethod;
                    paymethod.value = data.paymethod;
                    recevername.value = data.recevername;
                    receveraddr.value = data.receveraddr;
                    recevertel.value = data.recevertel;
                    totalprice.value = data.totalprice;
                    num++;
                }
            }
            else{
                console.log('失败');
            }
        }
    }
</script>
<%--查询历史订单--%>
<script>
    function selecthisteryorder() {
        orderdisplayclear();
        var num=1;
        var use3Value = '${sessionScope.customerid}';
        var parses='customerid='+use3Value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectcusid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                for (var i=0;i<res.rows.length&&i<10;i++) {
                    selecttwohisteryorder(res.rows[i].orderid,res.rows[i],num);
                }
            }
            else{
                alert("没有订单信息！");
            }
        }
    }
    function selecttwohisteryorder(orderid,data,num) {
        var parses2='orderid='+orderid;
        var xhr2 = new XMLHttpRequest();
        xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr2.send(parses2);
        // 获取服务器端响应的数据
        xhr2.onload = function () {
            let res2=JSON.parse(xhr2.responseText);
            if(res2.total==0){
                if (res2.rows[0].poststatus=='已发货'&&res2.rows[0].recevstatus=='已收货'){
                    var OrderId = document.getElementById('OrderId3_' + num);
                    var Orderdate = document.getElementById('Orderdate3_' + num);
                    var Ordermount = document.getElementById('Ordermount3_' + num);
                    var postmethod = document.getElementById('postmethod3_' + num);
                    var paymethod = document.getElementById('paymethod3_' + num);
                    var recevername = document.getElementById('recevername3_' + num);
                    var receveraddr = document.getElementById('receveraddr3_' + num);
                    var recevertel = document.getElementById('recevertel3_' + num);
                    var totalprice = document.getElementById('totalprice3_' + num);
                    var tab_orderinfor = document.getElementById('tab_order1_1_' + num);
                    tab_orderinfor.style.display = 'block';
                    OrderId.value = data.orderid;
                    Orderdate.value = data.orderdate;
                    Ordermount.value = data.ordermount;
                    postmethod.value = data.postmethod;
                    paymethod.value = data.paymethod;
                    recevername.value = data.recevername;
                    receveraddr.value = data.receveraddr;
                    recevertel.value = data.recevertel;
                    totalprice.value = data.totalprice;
                    num++;
                }
            }
            else{
                console.log('失败');
            }
        }
    }
</script>
<%--查询退款订单--%>
<script>
    function selectbackorder() {
        orderdisplayclear();
        var num=1;
        var use3Value = '${sessionScope.customerid}';
        var parses='customerid='+use3Value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectcusid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                for (var i=0;i<res.rows.length&&i<10;i++) {
                    selecttwobackorder(res.rows[i].orderid,res.rows[i],num);
                }
            }
            else{
                alert("没有订单信息！");
            }
        }
    }
    function selecttwobackorder(orderid,data,num) {
        var parses2='orderid='+orderid;
        var xhr2 = new XMLHttpRequest();
        xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr2.send(parses2);
        // 获取服务器端响应的数据
        xhr2.onload = function () {
            let res2=JSON.parse(xhr2.responseText);
            if(res2.total==0){
                console.log(res2);
                if (res2.rows[0].poststatus=='申请退货'&&res2.rows[0].recevstatus=='未收货'){
                    var OrderId = document.getElementById('OrderId3_' + num);
                    var Orderdate = document.getElementById('Orderdate3_' + num);
                    var Ordermount = document.getElementById('Ordermount3_' + num);
                    var postmethod = document.getElementById('postmethod3_' + num);
                    var paymethod = document.getElementById('paymethod3_' + num);
                    var recevername = document.getElementById('recevername3_' + num);
                    var receveraddr = document.getElementById('receveraddr3_' + num);
                    var recevertel = document.getElementById('recevertel3_' + num);
                    var totalprice = document.getElementById('totalprice3_' + num);
                    var tab_orderinfor = document.getElementById('tab_order1_1_' + num);
                    var cancelorder = document.getElementById('cancelorder' + num);
                    tab_orderinfor.style.display = 'block';
                    cancelorder.style.display='block';
                    OrderId.value = data.orderid;
                    Orderdate.value = data.orderdate;
                    Ordermount.value = data.ordermount;
                    postmethod.value = data.postmethod;
                    paymethod.value = data.paymethod;
                    recevername.value = data.recevername;
                    receveraddr.value = data.receveraddr;
                    recevertel.value = data.recevertel;
                    totalprice.value = data.totalprice;
                    num++;
                }
            }
            else{
                console.log('失败');
            }
        }
    }
</script>
<%--查询收货状态和发货状态--%>
<script>
    function infororderstate(obj,inum,jnum,customerid) {
        var parses='orderid='+obj;
        var backorder=document.getElementById('backorder'+inum);
        var cancelorder=document.getElementById('cancelorder'+inum);
        var confirmorder=document.getElementById('confirmorder'+inum);
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                if(res.rows[0].poststatus=='未发货'){
                    backorder.style.display='block';
                    cancelorder.style.display='none';
                    confirmorder.style.display='none';
                }else if (res.rows[0].poststatus=='申请退货'){
                    cancelorder.style.display='block';
                    backorder.style.display='none';
                    confirmorder.style.display='none';
                }else if(res.rows[0].poststatus=='已发货'){
                    if(res.rows[0].recevstatus=='未收货'){
                        backorder.style.display='block';
                        cancelorder.style.display='none';
                        confirmorder.style.display='block';
                    }else if (res.rows[0].recevstatus=='已收货'){
                        speakdetermine(res.rows[0].bookid,customerid,inum);
                    }else {
                        console.log('出错');
                    }
                }else{
                    console.log('出错');
                }
            }
            else{
                console.log('失败');
            }
        }
    }
</script>
<%--评论判定--%>
<script>
    function speakdetermine(bookid,customerid,inum) {
        var parses='bookid='+bookid+'&customerid='+customerid;
        var gospeack=document.getElementById('gospeack'+inum);
        var backorder=document.getElementById('backorder'+inum);
        var cancelorder=document.getElementById('cancelorder'+inum);
        var confirmorder=document.getElementById('confirmorder'+inum);
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbComment/selectidtwoid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                gospeack.style.display='none';
                backorder.style.display='none';
                cancelorder.style.display='none';
                confirmorder.style.display='none';
                return;
            }else {
                gospeack.style.display='block';
                backorder.style.display='none';
                cancelorder.style.display='none';
                confirmorder.style.display='none';
            }
        }
    }
</script>
<%--订单按钮操作--%>
<script>
    function gobackorderaction(obj) {
        var orderid=obj.parentNode.parentNode.children[0].children[0].value;
        var parses='orderid='+orderid+'&poststatus=申请退款&recevstatus=未收货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/updataorderstatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res2=JSON.parse(xhr2.responseText);
            if(res2.total==0){
                alert('操作成功');
                console.log('成功');
            }else{
                console.log('失败');
            }
        }
    }
    function gospeakorderaction(obj) {
        var orderid=obj.parentNode.parentNode.children[0].children[0].value;
        var speakcommon=document.getElementById('speakcommon');
        var myorder=document.getElementById('myorder');
        var myorderinfor=document.getElementById('myorderinfor')
        speakcommon.style.display='block';
        myorder.style.display='none';
        myorderinfor.style.display='none';
        getcommoninfor3(orderid);
    }
    function goquitbackorderaction(obj) {
        var orderid=obj.parentNode.parentNode.children[0].children[0].value;
        var parses='orderid='+orderid+'&poststatus=未发货&recevstatus=未收货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/updataorderstatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res2=JSON.parse(xhr2.responseText);
            if(res2.total==0){
                alert('操作成功');
                console.log('成功');
            }else{
                console.log('失败');
            }
        }
    }
    function goquitorderaction(obj) {
        var orderid=obj.parentNode.parentNode.children[0].children[0].value;
        var parses='orderid='+orderid+'&poststatus=已发货&recevstatus=已收货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/updataorderstatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res2=JSON.parse(xhr.responseText);
            if(res2.total==0){
                alert('操作成功');
                console.log('成功');
            }else{
                console.log('失败');
            }
        }
    }
</script>
<%--订单查询--%>
<script>
    function selectidinfororder4() {
        var orderidselect=document.getElementById('top_input_orderselect').value;
        var parses='orderid='+orderidselect
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var OrderId2_1=document.getElementById('OrderId2_1');
            var Orderdate2_1=document.getElementById('Orderdate2_1');
            var Ordermount2_1=document.getElementById('Ordermount2_1');
            var postmethod2_1=document.getElementById('postmethod2_1');
            var paymethod2_1=document.getElementById('paymethod2_1');
            var recevername2_1=document.getElementById('recevername2_1');
            var receveraddr2_1=document.getElementById('receveraddr2_1');
            var recevertel2_1=document.getElementById('recevertel2_1');
            var totalprice2_1=document.getElementById('totalprice2_1');

            var tab_order2_1_1=document.getElementById('tab_order2_1_1');
            var backorder2_1=document.getElementById('backorder2_1');
            var gospeack2_1=document.getElementById('gospeack2_1');
            var cancelorder2_1=document.getElementById('cancelorder2_1');
            var confirmorder2_1=document.getElementById('confirmorder2_1');
            if(res.total==0){
                tab_order2_1_1.style.display='block';
                OrderId2_1.value = res.rows[0].orderid;
                Orderdate2_1.value = res.rows[0].orderdate;
                Ordermount2_1.value = res.rows[0].ordermount;
                postmethod2_1.value = res.rows[0].postmethod;
                paymethod2_1.value = res.rows[0].paymethod;
                recevername2_1.value = res.rows[0].recevername;
                receveraddr2_1.value = res.rows[0].receveraddr;
                recevertel2_1.value = res.rows[0].recevertel;
                totalprice2_1.value = res.rows[0].totalprice;
                infororderstate2(res.rows[0].orderid,res.rows[0].customerid)
                console.log('成功');
            }else{
                tab_order2_1_1.style.display='none';
                backorder2_1.style.display='none';
                gospeack2_1.style.display='none';
                cancelorder2_1.style.display='none';
                confirmorder2_1.style.display='none';
                console.log('失败');
                alert('找不到数据');
            }
        }
    }
    function infororderstate2(obj,customerid) {
        var parses='orderid='+obj;
        var backorder2_1=document.getElementById('backorder2_1');
        var gospeack2_1=document.getElementById('gospeack2_1');
        var cancelorder2_1=document.getElementById('cancelorder2_1');
        var confirmorder2_1=document.getElementById('confirmorder2_1');
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                if(res.rows[0].poststatus=='未发货'){
                    backorder2_1.style.display='block';
                    cancelorder2_1.style.display='none';
                    confirmorder2_1.style.display='none';
                }else if (res.rows[0].poststatus=='申请退货'){
                    cancelorder2_1.style.display='block';
                    backorder2_1.style.display='none';
                    confirmorder2_1.style.display='none';
                }else if(res.rows[0].poststatus=='已发货'){
                    if(res.rows[0].recevstatus=='未收货'){
                        backorder2_1.style.display='block';
                        cancelorder2_1.style.display='none';
                        confirmorder2_1.style.display='block';
                    }else if (res.rows[0].recevstatus=='已收货'){
                        speakdetermine2(res.rows[0].bookid,customerid);
                    }else {
                        console.log('出错');
                    }
                }else{
                    console.log('出错');
                }
            }
            else{
                console.log('失败');
            }
        }
    }
    function speakdetermine2(bookid,customerid) {
        var parses='bookid='+bookid+'&customerid='+customerid;
        var backorder2_1=document.getElementById('backorder2_1');
        var gospeack2_1=document.getElementById('gospeack2_1');
        var cancelorder2_1=document.getElementById('cancelorder2_1');
        var confirmorder2_1=document.getElementById('confirmorder2_1');
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbComment/selectidtwoid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                gospeack2_1.style.display='none';
                backorder2_1.style.display='none';
                cancelorder2_1.style.display='none';
                confirmorder2_1.style.display='none';
                return;
            }else {
                gospeack2_1.style.display='block';
                backorder2_1.style.display='none';
                cancelorder2_1.style.display='none';
                confirmorder2_1.style.display='none';
            }
        }
    }
</script>
<%--密码小眼睛--%>
<script>
    // 1. 获取元素
    var eye1 = document.getElementById('eye1');
    var eye2 = document.getElementById('eye2');
    var eye3 = document.getElementById('eye3')
    var pwd1 = document.getElementById('updata_possword1');
    var pwd2 = document.getElementById('updata_possword2');
    var pwd3 = document.getElementById('pwd_updataquer');
    var requepwd1=document.getElementById('requepwd1');
    // 2. 注册事件 处理程序
    var flag = 0;
    eye1.onclick = function () {
        // 点击一次之后， flag 一定要变化
        if (flag == 0) {
            pwd1.type = 'text';
            eye1.src = 'images/open.png';
            flag = 1; // 赋值操作
        } else {
            pwd1.type = 'password';
            eye1.src = 'images/close.png';
            flag = 0;
        }
    }
    eye2.onclick = function () {
        // var flag = 0;
        // 点击一次之后， flag 一定要变化
        if (flag == 0) {
            pwd2.type = 'text';
            eye2.src = 'images/open.png';
            flag = 1; // 赋值操作
        } else {
            pwd2.type = 'password';
            eye2.src = 'images/close.png';
            flag = 0;
        }
    }
    eye3.onclick = function () {
        // var flag = 0;
        // 点击一次之后， flag 一定要变化
        if (flag == 0) {
            pwd3.type = 'text';
            eye3.src = 'images/open.png';
            flag = 1; // 赋值操作
        } else {
            pwd3.type = 'password';
            eye3.src = 'images/close.png';
            flag = 0;
        }
    }
    pwd2.onblur = function () {
        if(pwd2.value==pwd1.value){
            requepwd1.style.display='block';
        }else {
            requepwd1.style.display='none';
            console.log(pwd2);
            console.log(pwd1);
            alert('两次输入密码不一致!')
        }
    }
</script>
<%--修改密码功能--%>
<script>
    function updatpasswordaction() {
        var usernameValue = '${sessionScope.customerid}';
        var urlValue = 'customerid='+ usernameValue;
        var get_ans=document.getElementById('get_ans').value;
        var get_ans_box=document.getElementById('get_ans_box');
        var updata_password_box=document.getElementById('updata_password_box');
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectids');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log(res.rows[0].customeranswer);
                if (get_ans==res.rows[0].customeranswer){
                    get_ans_box.style.display='none';
                    updata_password_box.style.display='block';
                }else {
                    alert('回答错误');
                    return;
                }
                console.log("查询成功");
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function updatpasswordaction2() {
        var updata_possword2=document.getElementById('updata_possword2').value;
        console.log(updata_possword2);
        var usernameValue = '${sessionScope.customerid}';
        var urlValue = 'customerid='+ usernameValue+'&customerpwd='+updata_possword2;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/updatapwd');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                alert('修改成功，请牢记您的密码');
            } else {
                alert('发生了未知错误，修改失败');
            }
        }
    }
</script>
<%--修改密保功能--%>
<script>
    function updataanswerand() {
        var usernameValue = '${sessionScope.customerid}';
        var urlValue = 'customerid='+ usernameValue;
        var pwd_updataquer=document.getElementById('pwd_updataquer').value;
        var updata_quer_box=document.getElementById('updata_quer_box');
        var get_pwd_box=document.getElementById('get_pwd_box');
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectids');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log(res.rows[0].customeranswer);
                if (pwd_updataquer==res.rows[0].customerpwd){
                    get_pwd_box.style.display='none';
                    updata_quer_box.style.display='block';
                }else {
                    get_pwd_box.style.display='block';
                    updata_quer_box.style.display='none';
                    alert('回答错误');
                    return;
                }
                console.log("查询成功");
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function updataanswerand2() {
        var updata_possword2=document.getElementById('updata_possword2').value;
        var usernameValue = '${sessionScope.customerid}';
        var updata_quer=document.getElementById('updata_quer').value;
        var updata_ans=document.getElementById('updata_ans').value;
        var urlValue = 'customerid='+ usernameValue+'&customerquer='+updata_quer+'&customeranswer='+updata_ans;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/updataanswerand');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(urlValue);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                alert('修改成功，请牢记您的密码');
            } else {
                alert('发生了未知错误，修改失败');
            }
        }
    }
</script>
<%--评论订单功能--%>
<script>
    // 获取信息
    function getcommoninfor3(orderid) {
        var use3Value = '${sessionScope.customerid}';
        var parses='orderid='+orderid;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var bookid=res.rows[0].bookid;
                selectbookforbookid(bookid)
            }else{
                console.log('错误');
            }
        }
    }
    // 获取图书信息
    function selectbookforbookid(bookid) {
        var parses2='BookId='+bookid;
        var xhr2 = new XMLHttpRequest();
        xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr2.send(parses2);
        // 获取服务器端响应的数据
        xhr2.onload = function () {
            let res2=JSON.parse(xhr2.responseText);
            console.log(res2);
            var getbookid=document.getElementById('getbookid');
            var common_bookimg=document.getElementById('common_bookimg');
            var common_bookname=document.getElementById('common_bookname');
            var common_bookauthor=document.getElementById('common_bookauthor');
            var common_bookprice=document.getElementById('common_bookprice');
            if(res2.total==0){
                getbookid.innerHTML=res2.rows[0].bookid;
                common_bookimg.src='upload/'+res2.rows[0].bookid+'.jpg';
                common_bookname.innerHTML='作者:'+res2.rows[0].bookname;
                common_bookauthor.innerHTML=res2.rows[0].bookauthor;
                common_bookprice.innerHTML='￥'+res2.rows[0].bookprice*0.8;
            }else{
                console.log('查询数据信息出错');
            }
        }
    }
    // 插入评价表的总操作
    function insertcommon(obj) {
        var bookid=obj.parentNode.parentNode.children[1].children[0].children[0].innerHTML;
        console.log(bookid);
        var xhr2 = new XMLHttpRequest();
        xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbComment/selectAlldesc');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr2.send();
        // 获取服务器端响应的数据
        xhr2.onload = function () {
            let res2=JSON.parse(xhr2.responseText);
            if(res2.total==0){
                var commentid=parseInt(res2.rows[0].commentid)+1;
                var use3Value = '${sessionScope.customerid}';
                var parses='customerid='+use3Value
                var xhr = new XMLHttpRequest();
                xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectid');
                // 设置请求参数格式的类型（post请求必须要设置）
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                // 发送请求
                xhr.send(parses);
                // 获取服务器端响应的数据
                xhr.onload = function () {
                    let res=JSON.parse(xhr.responseText);
                    if(res.total==0){
                        var customerid=res.rows[0].customerid;
                        var customername=res.rows[0].customername;
                        insertcommon2(commentid,customerid,customername,bookid);
                    }else {
                        console.log('获取评级表id出错');
                    }
                }
            }else {
                console.log('获取评级表id出错');
            }
        }
    }
    // 更新评论表
    function insertcommon2(commentid,customerid,customername,bookid) {
        var cus_common=document.getElementById('cus_common').value;
        var parses='commentid='+commentid+'&customerid='+customerid+'&customername='+customername+'&commentcontent='+cus_common+'&bookid='+bookid;
        console.log(parses);
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbComment/addcommon');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                alert('评价成功');
            }else {
                alert('评价失败');
            }
        }
    }
    function getCurrentDate() {
        var now = new Date();
        var year = now.getFullYear(); //得到年份
        var month = now.getMonth();//得到月份
        var date = now.getDate();//得到日期
        var hour = now.getHours();//得到小时
        var minu = now.getMinutes();//得到分钟
        var sec = now.getSeconds();//得到秒
        month = month + 1;
        if (month < 10) month = "0" + month;
        if (date < 10) date = "0" + date;
        if (hour < 10) hour = "0" + hour;
        if (minu < 10) minu = "0" + minu;
        if (sec < 10) sec = "0" + sec;
        var time = "";
        time = year + "-" + month + "-" + date+ " " + hour + ":" + minu + ":" + sec;
        return time;
    }

</script>
<%--删除评价功能--%>
<script>
    function getcommonformycommon() {
        var cusid = '${sessionScope.customerid}';
        var parses='customerid='+cusid;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbComment/selectcusid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0) {
                let res = JSON.parse(xhr.responseText);
                var maxnum = Math.ceil(res.rows.length / 10);
                var paging_num1_bookinfor = document.getElementById('paging_num1_mycommon');
                var paging_num2_bookinfor = document.getElementById('paging_num2_mycommon');
                //设置最大页数
                paging_num2_bookinfor.innerHTML = maxnum;
                paging_num1_bookinfor.innerHTML = '1';
                var num = (res.rows.length) % 10;
                for (var i = 0; i < res.rows.length && i < 10; i++) {
                    if(res.rows[i].commentcontent==''){
                        return;
                    }
                    var common_id=document.getElementById('common_id'+(i+1));
                    var common_commontime = document.getElementById('common_commontime_' + (i + 1));
                    var common_commoncontent = document.getElementById('common_commoncontent_' + (i + 1));
                    var mycommon_show = document.getElementById('mycommon_show' + (i + 1));
                    mycommon_show.style.display = 'block';
                    common_id.value=res.rows[i].customerid;
                    common_commontime.value = res.rows[i].commentdate;
                    common_commoncontent.value = res.rows[i].commentcontent;
                    getcommonformycommon2(res.rows[i].bookid,i+1);
                }
                if (res.total == 0) {
                    console.log("查询成功");
                } else {
                    alert('没有评论信息')
                }
            }
        }
    }
    // 根据图书id查找图书的数据
    function getcommonformycommon2(bookid,inum) {
        var parses='BookId='+bookid;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0) {
                var common_bookname = document.getElementById('common_bookname_' + inum);
                var common_price = document.getElementById('common_price_' + inum);
                common_bookname.value=res.rows[0].bookname;
                common_price.value=res.rows[0].bookprice;
            }else{
                console.log('查找图书数据失败')
            }
        }
    }
    function deletecommon(obj) {
        var commonid=obj.parentNode.children[0];
        var parses='commentid='+commonid+'&commentcontent=1';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbComment/updatacommon');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0) {
                alert('删除成功');
            }else{
                console.log('删除评价数据失败')
            }
        }
    }
</script>
</html>