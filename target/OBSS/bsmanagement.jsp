<%--
  Created by IntelliJ IDEA.
  User: m1877
  Date: 2020/12/15
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>后台管理页面</title>
    <!-- 引入favicon图标 -->
    <link rel="shortcut icon" href="favicon.ico" />
    <!-- 引入初始化的css -->
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">

    <link rel="stylesheet" type="text/css" href="css/bsmanagement.css">
</head>
<body>
<!-- 快捷导航模块start -->
<section>
    <div class="shortcat">
        <div class="w">
            <div class="fl">
                <ul>
                    <li>网上书城欢迎您！&nbsp;</li>
                    <li id="use2" >
                        <p id="use3" style="display: inline-block">${sessionScope.adminid}</p>管理员
                        <a href="#" class="style_red" style="display: inline-block" id="cancellation">注销</a>
                    </li>
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
</header>
<!-- 头部模块end -->
<div class="heng"></div>               <%--分割横线--%>
<%--主体模块start--%>
<div class="w managermain_box">
    <div class="mantitlt">
        <span>欢迎管理员使用本系统</span>
    </div>
    <div class="man_main_box clearfix">
        <div class="tab_man_box ">
            <div class="tab_title">操作管理</div>
            <div class="tab_main">
                <ul>
                    <li>
                        <div class="tab_two_title">图书类型管理</div>
                        <div class="tab_two_selectbtn">
                            <ul>
                                <li>
                                    <a href="#" id="booktypeinfor" onclick="booktypeinforonclick()">图书类型查询</a>
                                </li>
                                <li>
                                    <a href="#" id="booktypeupdata" onclick="booktypeupdataonclick()">图书类型修改</a>
                                </li>
                                <li>
                                    <a href="#" id="booktypedelect" onclick="booktypedelectonclick()">图书类型删除</a>
                                </li>
                                <li>
                                    <a href="#" id="booktypeadd" onclick="booktypeaddonclick()">图书类型添加</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="tab_two_title">图书信息管理</div>
                        <div class="tab_two_selectbtn">
                            <ul>
                                <li>
                                    <a href="#" id="bookinfor" onclick="bookinforonclick()">图书信息查询</a>
                                </li>
                                <li>
                                    <a href="#" id="bookupdata" onclick="bookupdataonclick()">图书信息更新</a>
                                </li>
                                <li>
                                    <a href="#" id="bookdelect" onclick="bookupdataonclick()">图书信息删除</a>
                                </li>
                                <li>
                                    <a href="#" id="bookadd" onclick="bookaddonclick()">图书信息添加</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="tab_two_title">客户信息管理</div>
                        <div class="tab_two_selectbtn">
                            <ul>
                                <li>
                                    <a href="#" id="cusinfor" onclick="cusinforonclick()">客户信息查询</a>
                                </li>
                                <li>
                                    <a href="#" id="cusupdata" onclick="cusupdataonclick()">客户信息更新</a>
                                </li>
                                <li>
                                    <a href="#" id="cusdelect" onclick="cusdelectonclick()">客户信息删除</a>
                                </li>
                                <li>
                                    <a href="#" id="cusadd" onclick="cusaddonclick()">添加客户信息</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="tab_two_title">订单信息管理</div>
                        <div class="tab_two_selectbtn">
                            <ul>
                                <li>
                                    <a href="#" id="allorderinfor" onclick="allorderinforonclick()">全部订单查询</a>
                                </li>
                                <li>
                                    <a href="#" id="noorderinfor" onclick="noorderinforonclick()">未处理订单查询</a>
                                </li>
                                <li>
                                    <a href="#" id="backorderinfor" onclick="backorderinforonclick()">申请退款订单查询</a>
                                </li>
                                <li>
                                    <a href="#" id="cusidinfororder" onclick="cusidinfororderonclick()">根据订单Id修改订单信息</a>
                                </li>
                                <li>
                                    <a href="#" id="cusiddelectorder" onclick="cusiddelectorderonclick()">根据订单Id删除订单信息</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
<%--        图书信息查询--%>
        <div class="main_box" style="display: block" id="tab_bookinfor">
            <div class="main_title_box">图书信息查询</div>
            <div class="main_two_title">
                <div class="main_two_tips">
                    <span>请输入您要查询图书的信息：</span>
                    <input type="text" value="" id="top_input_bookinfor" >
                    <input type="button" onclick="inforbookforselect()" value="确定" class="tab_bookinfor">
                </div>
            </div>
            <div class="main_two_title">
                <ul>
                    <li>
                        <span>图书编号</span>
                    </li>
                    <li>
                        <span>图书类型Id</span>
                    </li>
                    <li>
                        <span>图书名字</span>
                    </li>
                    <li>
                        <span>出版社</span>
                    </li>
                    <li>
                        <span>图书作者</span>
                    </li>
                    <li>
                        <span>图书译者</span>
                    </li>
                    <li>
                        <span>图书价格</span>
                    </li>
                    <li>
                        <span>图书页码</span>
                    </li>
                    <li>
                        <span>图书简介</span>
                    </li>
                    <li>
                        <span>成交量</span>
                    </li>
                    <li>
                        <span>浏览量</span>
                    </li>
                    <li>
                        <span>库存量</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_1">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_1">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_1">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_1">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_1">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_1">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_1">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_1">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_1">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_1" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_1">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_1" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_1" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_1" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_2">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_2">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_2">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_2">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_2">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_2">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_2">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_2">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_2">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_2" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_2">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_2">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_2">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_2" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_2" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_2" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_3">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_3">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_3">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_3">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_3">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_3">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_3">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_3">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_3">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_3" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_3">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_3">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_3">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_3" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_3" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_3" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_4">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_4">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_4">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_4">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_4">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_4">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_4">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_4">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_4">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_4" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_4">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_4">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_4">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_4" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_4" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_4" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_5">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_5">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_5">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_5">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_5">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_5">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_5">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_5">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_5">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_5" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_5">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_5">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_5">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_5" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_5" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_5" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_6">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_6">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_6">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_6">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_6">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_6">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_6">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_6">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_6">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_6" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_6">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_6">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_6">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_6" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_6" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_6" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_7">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_7">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_7">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_7">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_7">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_7">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_7">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_7">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_7">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_7" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_7">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_7">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_7">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_7" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_7" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_7" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_8">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_8">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_8">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_8">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_8">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_8">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_8">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_8">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_8">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_8" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_8">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_8">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_8">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_8" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_8" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_8" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_9">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_9">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_9">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_9">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_9">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_9">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_9">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_9">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_9">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_9" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_9">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_9">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_9">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_9" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_9" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_9" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_bookinfor1_10">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId1_10">
                    </li>
                    <li>
                        <input type="text" value="001" id="BookTypeId1_10">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName1_10">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress1_10">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor1_10">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor1_10">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice1_10">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages1_10">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline1_10" maxlength="200">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount1_10">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount1_10">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount1_10">
                    </li>
                    <li class="show_action">
                        <button id="inforbook1_10" onclick="select_bookinfor(this)">详情</button>
                        <button id="delect1_10" onclick="delect_bookinfor(this)">删除</button>
                        <button id="updata1_10" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="paging_box">
                <div class="paging_ul_box">
                    <ul>
                        <li onclick="fistnum_bookinfor()">首页</li>
                        <li onclick="upnum_bookinfor()">上一页</li>
                        <li class="paging_text">目前第
                            <p class="paging_num" id="paging_num1_bookinfor">1</p>
                            页
                        </li>
                        <li onclick="downnum_bookinfor()">下一页</li>
                        <li onclick="lastnum_bookinfor()">尾页</li>
                        <li>共
                            <p class="paging_num" id="paging_num2_bookinfor">1</p>
                            页
                        </li>
                        <li class="paging_text">到
                            <input type="text" value="1" id="shownum_bookinfor">
                            页
                        </li>
                        <li onclick="gonum_bookinfor()">确定</li>
                    </ul>
                </div>
            </div>
        </div>
<%--        图书信息更新--%>
        <div class="main_box" style="display: none" id="tab_bookupdata">
            <div class="main_title_box">图书信息更新</div>
            <div class="main_two_title">
                <div class="main_two_tips">
                    <span>请输入您要更新的图书的编号ID：</span>
                    <input type="text" value="" id="top_input_bookupdata" >
                    <input type="button" onclick="selectidinforbook()" value="确定" class="tab_bookinfor">
                </div>
            </div>
            <div class="main_two_title" id="tab_two_bookinfor" style="display: none">
                <ul>
                    <li>
                        <span>图书编号</span>
                    </li>
                    <li>
                        <span>图书类型Id</span>
                    </li>
                    <li>
                        <span>图书名字</span>
                    </li>
                    <li>
                        <span>出版社</span>
                    </li>
                    <li>
                        <span>图书作者</span>
                    </li>
                    <li>
                        <span>图书译者</span>
                    </li>
                    <li>
                        <span>图书价格</span>
                    </li>
                    <li>
                        <span>图书页码</span>
                    </li>
                    <li>
                        <span>图书简介</span>
                    </li>
                    <li>
                        <span>成交量</span>
                    </li>
                    <li>
                        <span>浏览量</span>
                    </li>
                    <li>
                        <span>库存量</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="main_show_data"id="tab_two_data_bookinfor" style="display: none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId2_1">
                    </li>
                    <li>
                        <input type="text" value="1" id="BookTypeId2_1">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName2_1">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress2_1">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor2_1">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor2_1">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice2_1">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="BookOutline2_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount2_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount2_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount2_1">
                    </li>
                    <li class="show_action" >
                        <button style="margin-left: 35px" onclick="updata_bookinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
        </div>
<%--        图书信息删除--%>
        <div class="main_box" style="display: none" id="tab_bookdelect">
            <div class="main_title_box">图书信息删除</div>
            <div class="main_two_title">
                <div class="main_two_tips">
                    <span>请输入您要删除的图书的编号ID：</span>
                    <input type="text" value="" id="top_input_bookdelete">
                    <input type="button" onclick="selectidinforbook2()" value="确定" class="tab_bookinfor">
                </div>
            </div>
            <div class="main_two_title" style="display: none" id="tab_two_bookdelete">
                <ul>
                    <li>
                        <span>图书编号</span>
                    </li>
                    <li>
                        <span>图书类型Id</span>
                    </li>
                    <li>
                        <span>图书名字</span>
                    </li>
                    <li>
                        <span>出版社</span>
                    </li>
                    <li>
                        <span>图书作者</span>
                    </li>
                    <li>
                        <span>图书译者</span>
                    </li>
                    <li>
                        <span>图书价格</span>
                    </li>
                    <li>
                        <span>图书页码</span>
                    </li>
                    <li>
                        <span>图书简介</span>
                    </li>
                    <li>
                        <span>成交量</span>
                    </li>
                    <li>
                        <span>浏览量</span>
                    </li>
                    <li>
                        <span>库存量</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="main_show_data" style="display: none" id="tab_two_data_bookdelete">
                <ul>
                    <li>
                        <input type="text" value="2020120101" id="BookId3_1">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="BookTypeId3_1">
                    </li>
                    <li>
                        <input type="text" value="解忧杂货店" id="BookName3_1">
                    </li>
                    <li>
                        <input type="text" value="南海出版社" id="BookPress3_1">
                    </li>
                    <li>
                        <input type="text" value="东野圭吾" id="BookAuthor3_1">
                    </li>
                    <li>
                        <input type="text" value="无" id="BookTanslor3_1">
                    </li>
                    <li>
                        <input type="text" value="13" id="BookPrice3_1">
                    </li>
                    <li>
                        <input type="text" value="296" id="BookPages3_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookOutline3_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookDealmount3_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookLookmount3_1">
                    </li>
                    <li>
                        <input type="text" value="10" id="BookStoremount3_1">
                    </li>
                    <li class="show_action" >
                        <button style="margin-left: 35px" onclick="delect_bookinfor(this)">删除</button>
                    </li>
                </ul>
            </div>
        </div>
<%--        图书信息添加--%>
        <div class="main_box" style="display: none" id="tab_bookadd">
            <div class="main_title_box">图书信息添加</div>
            <div id="add_book_tab" class="add_book_tab">
                <ul>
                    <li class="clearfix">
                        <span>图书编号Id:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookId" onblur="getimgname()"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书类型Id:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookTypeId"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书名字</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookName"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>出版社</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookPress"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书作者</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookAuthor"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书译者:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookTanslor"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书价格:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookPrice"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书页码:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookPages"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书简介:</span>
                        <textarea name="addofBookOutline" id="addofBookOutline" cols="60" rows="10"></textarea>
                    </li>
                    <li class="clearfix">
                        <span>成交量:</span>
                        <div>
                            <div contenteditable="false" class="" id="addofBookDealmount">0</div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>浏览量:</span>
                        <div>
                            <div contenteditable="false" class="" id="addofBookLookmount">0</div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>库存量:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofBookStoremount"></div>
                        </div>
                    </li>
                    <li class="add_show_img_box">
                        <form action="#" enctype="multipart/form-data" method="post" id="uploadimg">
                            <div id="imgshow" >
                                <input type="text" name="imgname" value="" id="imgname" style="display: none">
                                <input type="file" onchange="show(this)" name="myfile" id="myfile" value="" />
                            </div>
                            <div id="imgaction">
                                <button id="clearall">重置</button>
                            </div>
                        </form>
                    </li>
                    <li class="clearfix">
                        <input type="button" value="确认添加" class="addbook_btn" onclick="add_book(this)">
                    </li>
                </ul>
            </div>
        </div>
<%--        查看图书详情--%>
        <div class="main_box" style="display: none" id="tab_selectbook">
            <div class="main_title_box">图书信息详情</div>
            <div id="select_book_tab" class="add_book_tab">
                <ul>
                    <li class="clearfix">
                        <span>图书编号Id:</span>
                        <div>
                            <div contenteditable="false" class="" id="selectofBookId"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书类型Id:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofBookTypeId"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书名字</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofBookName"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>出版社</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofBookPress"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书作者</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofBookAuthor"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书译者:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofBookTanslor"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书价格:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofBookPrice"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书页码:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofBookPages"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书简介:</span>
                        <textarea name="addofBookOutline" id="selectofBookOutline" cols="60" rows="10"></textarea>
                    </li>
                    <li class="clearfix">
                        <span>成交量:</span>
                        <div>
                            <div contenteditable="false" class="" id="selectofBookDealmount"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>浏览量:</span>
                        <div>
                            <div contenteditable="false" class="" id="selectofBookLookmount"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>库存量:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofBookStoremount"></div>
                        </div>
                    </li>
                    <li class="add_show_img_box">
                        <div></div>
                        <form action="#" enctype="multipart/form-data" method="post" id="uploadimg1">
                            <div id="imgshow1" >
                                <input type="text" name="imgname" value="" id="imgname1" style="display: none">
                                <input type="file" onchange="show1(this)" name="myfile" id="myfile1" value="" />
                            </div>
                            <div id="imgaction1">
                                <button id="clearall1">重置</button>
                            </div>
                        </form>
                    </li>
                    <li class="clearfix">
                        <input type="button" value="确定更新" class="addbook_btn" onclick="upload_book()">
                        <input type="button" value="返回" class="addbook_btn" onclick="clearupdata()">
                    </li>
                </ul>
            </div>
        </div>

<%--        客户信息查询--%>
        <div class="main_box" style="display: none" id="tab_cusinfor">
            <div class="main_title_box">客户信息查询</div>
            <div class="main_two_title">
                <div class="main_two_tips">
                    <span>请输入您要查询客户的信息：</span>
                    <input type="text" value="" id="top_input_cusinfor" >
                    <input type="button" onclick="inforcusforselect()" value="确定" class="tab_cusinfor">
                </div>
            </div>
            <div class="main_cus_title">
                <ul>
                    <li>
                        <span>用户编号</span>
                    </li>
                    <li>
                        <span>用户姓名</span>
                    </li>
                    <li>
                        <span>用户密码</span>
                    </li>
                    <li>
                        <span>账号名字</span>
                    </li>
                    <li>
                        <span>用户性别</span>
                    </li>
                    <li>
                        <span>电话号码</span>
                    </li>
                    <li>
                        <span>收货地址</span>
                    </li>
                    <li>
                        <span>注册时间</span>
                    </li>
                    <li>
                        <span>提示问题</span>
                    </li>
                    <li>
                        <span>问题答案</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_1" style="display: none">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_1" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_1">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_1">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_1">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_1">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_1">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_1">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_1" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_1">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_1">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_2">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_2" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_2">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_2">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_2">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_2">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_2">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_2">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_2" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_2">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_2">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_3">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_3" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_3">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_3">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_3">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_3">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_3">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_3">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_3" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_3">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_3">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_4">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_4" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_4">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_4">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_4">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_4">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_4">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_4">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_4" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_4">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_4">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_5">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_5" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_5">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_5">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_5">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_5">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_5">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_5">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_5" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_5">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_5">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_6">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_6" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_6">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_6">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_6">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_6">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_6">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_6">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_6" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_6">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_6">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_7">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_7" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_7">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_7">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_7">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_7">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_7">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_7">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_7" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_7">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_7">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_8">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_8" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_8">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_8">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_8">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_8">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_8">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_8">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_8" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_8">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_8">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_9">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_9" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_9">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_9">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_9">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_9">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_9">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_9">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_9" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_9">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_9">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" style="display: none" id="tab_cusinfor2_10">
                <ul>
                    <li>
                        <input type="text" value="18775921835" id="CustomerID2_10" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="CustomerName2_10">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerPwd2_10">
                    </li>
                    <li>
                        <input type="text" value="huangsheng" id="Customertruename2_10">
                    </li>
                    <li>
                        <input type="text" value="男" id="CustomerSex2_10">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="CustomerTel2_10">
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="CustomerAddr2_10">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerRegTime2_10" value="2020-12-01 12:12:12">
                    </li>
                    <li>
                        <input type="text" value="QQ" id="CustomerQuer2_10">
                    </li>
                    <li>
                        <input type="text" value="1210563923" id="CustomerAnswer2_10">
                    </li>
                    <li class="show_action">
                        <button onclick="select_cusinfor(this)">详情</button>
                        <button onclick="select_cusdelete(this)">删除</button>
                        <button onclick="select_cusupdata(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="paging_box">
                <div class="paging_ul_box">
                    <ul>
                        <li onclick="fistnum_cusinfor()">首页</li>
                        <li onclick="upnum_cusinfor()">上一页</li>
                        <li class="paging_text">目前第
                            <p class="paging_num" id="paging_num1_cusinfor">1</p>
                            页
                        </li>
                        <li onclick="downnum_cusinfor()">下一页</li>
                        <li onclick="lastnum_cusinfor()">尾页</li>
                        <li>共
                            <p class="paging_num" id="paging_num2_cusinfor">1</p>
                            页
                        </li>
                        <li class="paging_text">到
                            <input type="text" value="1" id="shownum_cusinfor">
                            页
                        </li>
                        <li onclick="gonum_bookinfor()">确定</li>
                    </ul>
                </div>
            </div>
        </div>
<%--        客户信息更新--%>
        <div class="main_box" style="display: none" id="tab_cusupdata">
            <div class="main_title_box">客户信息更新</div>
            <div class="main_cus_title">
                <div class="main_cus_tips">
                    <span>请输入您要更新的客户的编号ID：</span>
                    <input type="text" value="" id="top_input_cusupdata">
                    <input type="button" onclick="selectidinforcus()" value="确定" class="tab_cusinfor">
                </div>
            </div>
            <div class="main_cus_title" id="tab_two_cusinfor1" style="display: none">
                <ul>
                    <li>
                        <span>用户编号</span>
                    </li>
                    <li>
                        <span>用户姓名</span>
                    </li>
                    <li>
                        <span>用户密码</span>
                    </li>
                    <li>
                        <span>账号名字</span>
                    </li>
                    <li>
                        <span>用户性别</span>
                    </li>
                    <li>
                        <span>电话号码</span>
                    </li>
                    <li>
                        <span>收货地址</span>
                    </li>
                    <li>
                        <span>注册时间</span>
                    </li>
                    <li>
                        <span>提示问题</span>
                    </li>
                    <li>
                        <span>问题答案</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" id="tab_two_data_cusinfor1" style="display: none">
                <ul>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerID2_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerName2_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerPwd2_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="Customertruename2_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerSex2_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerTel2_2_1">
                    </li>
                    <li>
                        <input type="text"  id="CustomerAddr2_2_1">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" value="" id="CustomerRegTime2_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerQuer2_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerAnswer2_2_1">
                    </li>
                    <li class="show_action">
                        <button style="margin-left: 35px" onclick="updata_cusinfor(this)">修改</button>
                    </li>
                </ul>
            </div>
        </div>
<%--        客户信息删除--%>
        <div class="main_box" style="display: none" id="tab_cusdelect">
            <div class="main_title_box">客户信息删除</div>
            <div class="main_cus_title">
                <div class="main_cus_tips">
                    <span>请输入您要删除的客户的编号ID：</span>
                    <input type="text" value="" id="top_input_cusdelete">
                    <input type="button" onclick="selectidinforcus2()" value="确定" class="tab_cusinfor">
                </div>
            </div>
            <div class="main_cus_title" id="tab_two_cusinfor2" style="display: none">
                <ul>
                    <li>
                        <span>用户编号</span>
                    </li>
                    <li>
                        <span>用户姓名</span>
                    </li>
                    <li>
                        <span>用户密码</span>
                    </li>
                    <li>
                        <span>账号名字</span>
                    </li>
                    <li>
                        <span>用户性别</span>
                    </li>
                    <li>
                        <span>电话号码</span>
                    </li>
                    <li>
                        <span>收货地址</span>
                    </li>
                    <li>
                        <span>注册时间</span>
                    </li>
                    <li>
                        <span>提示问题</span>
                    </li>
                    <li>
                        <span>问题答案</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="cus_show_data" id="tab_two_data_cusinfor2" style="display: none">
                <ul>
                    <li>
                        <input type="text" readonly="readonly" id="CustomerID2_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerName2_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerPwd2_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="Customertruename2_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerSex2_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerTel2_3_1">
                    </li>
                    <li>
                        <input type="text"  id="CustomerAddr2_3_1">
                    </li>
                    <li>
                        <input type="text" readonly="readonly" value="" id="CustomerRegTime2_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerQuer2_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="CustomerAnswer2_3_1">
                    </li>
                    <li class="show_action">
                        <button style="margin-left: 35px" onclick="delect_cusinfor(this)">删除</button>
                    </li>
                </ul>
            </div>
        </div>
<%--        客户信息添加--%>
        <div class="main_box" style="display: none" id="tab_cusadd">
            <div class="main_title_box">客户信息添加</div>
            <div class="main_cus_title">
                <div class="main_cus_tips">
                    <span>请输入您要添加的客户的信息</span>
                </div>
            </div>
            <div id="add_cus_tab" class="add_cus_tab">
                <ul>
                    <li class="clearfix">
                        <span>用户编号Id:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCusId"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户名字:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCustomerName"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户密码：</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCustomerPwd"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户昵称：</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCustomertruename"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户性别</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCustomerSex"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户电话:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCustomerTel"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户地址:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCustomerAddr"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>注册时间:</span>
                        <div>
                            <div contenteditable="false" class="" id="addofCustomerRegTime"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>设置问题:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCustomerQuer"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>问题答案:</span>
                        <div>
                            <div contenteditable="true" class="" id="addofCustomerAnswer"></div>
                        </div>
                    </li>
                    <li class="add_show_cus_img_box">
                        <div></div>
                        <form action="#" enctype="multipart/form-data" method="post" id="uploadimg2">
                            <div id="imgshow2" >
                                <input type="text" name="imgname" value="" id="imgname2" style="display: none">
                                <input type="file" onchange="show2(this)" name="myfile" id="myfile2" value="" />
                            </div>
                            <div id="imgaction2">
                                <button id="clearall2">重置</button>
                            </div>
                        </form>
                    </li>
                    <li class="clearfix">
                        <input type="button" value="确定添加" class="addcus_btn" onclick="add_cus(this)">
                        <input type="button" value="返回查询" class="addcus_btn" onclick="clearadd_cus()">
                    </li>
                </ul>
            </div>
        </div>
<%--        查看客户信息详情--%>
        <div class="main_box" style="display: none" id="tab_selectcus">
            <div class="main_title_box">客户信息详情</div>
            <div id="select_cus_tab" class="add_cus_tab">
                <ul>
                    <li class="clearfix">
                        <span>用户编号Id:</span>
                        <div>
                            <div contenteditable="false" class="" id="selectofCusId"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户名字:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofCustomerName"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户密码：</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofCustomerPwd"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户昵称：</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofCustomertruename"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户性别</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofCustomerSex"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户电话:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofCustomerTel"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>用户地址:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofCustomerAddr"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>注册时间:</span>
                        <div>
                            <div contenteditable="false" class="" id="selectofCustomerRegTime"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>设置问题:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofCustomerQuer"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>问题答案:</span>
                        <div>
                            <div contenteditable="true" class="" id="selectofCustomerAnswer"></div>
                        </div>
                    </li>
                    <li class="add_show_cus_img_box">
                        <div></div>
                        <form action="#" enctype="multipart/form-data" method="post" id="uploadimg3">
                            <div id="imgshow3" >
                                <input type="text" name="imgname" value="" id="imgname3" style="display: none">
                                <input type="file" onchange="show3(this)" name="myfile" id="myfile3" value="" />
                            </div>
                            <div id="imgaction3">
                                <button id="clearall3">重置</button>
                            </div>
                        </form>
                    </li>
                    <li class="clearfix">
                        <input type="button" value="确定更新" class="addcus_btn" onclick="upload_cus()">
                        <input type="button" value="返回" class="addcus_btn" onclick="clearupdata_cus()">
                    </li>
                </ul>
            </div>
        </div>

<%--        全部订单信息查询--%>
        <div class="main_box" style="display: none" id="tab_allorderinfor">
            <div class="main_title_box">全部订单信息查询</div>
            <div class="main_two_title">
                <div class="main_two_tips">
                    <span>请输入您要查询订单的信息：</span>
                    <input type="text" value="" id="top_input_orderinfor" >
                    <input type="button" onclick="" value="确定" class="tab_cusinfor">
                </div>
            </div>
            <div class="main_order_title">
                <ul>
                    <li>
                        <span>订单编号</span>
                    </li>
                    <li>
                        <span>自动编号</span>
                    </li>
                    <li>
                        <span>客户编号</span>
                    </li>
                    <li>
                        <span>下单日期</span>
                    </li>
                    <li>
                        <span>总订购数</span>
                    </li>
                    <li>
                        <span>留言</span>
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
                        <span>备注</span>
                    </li>
                    <li>
                        <span>总卖出价</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_1" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="" readonly="readonly" id="OrderId3_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Id3_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="CustomerId3_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Orderdate3_1">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_1" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="" id="message3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="postmethod3_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="paymethod3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevername3_1" >
                    </li>
                    <li>
                        <input type="text" value="" id="receveraddr3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevertel3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="memo3_1">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_1">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_2" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_2">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_2">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_2">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_2">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_2" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_2">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_2">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_2">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_2" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_2">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_2">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_2">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_2">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_3" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_3">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_3">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_3">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_3">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_3" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_3">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_3">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_3">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_3" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_3">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_3">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_3">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_3">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_6" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_6">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_6">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_6">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_6">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_6" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_6">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_6">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_6">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_6" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_6">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_6">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_6">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_6">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_7" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_7">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_7">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_7">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_7">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_7" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_7">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_7">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_7">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_7" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_7">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_7">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_7">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_7">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_8" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_8">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_8">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_8">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_8">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_8" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_8">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_8">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_8">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_8" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_8">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_8">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_8">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_8">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_9" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_9">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_9">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_9">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_9">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_9" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_9">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_9">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_9">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_9" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_9">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_9">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_9">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_9">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_10" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="" readonly="readonly" id="OrderId3_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Id3_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="CustomerId3_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Orderdate3_10">
                    </li>
                    <li>
                        <input type="text"  value=""  readonly="readonly" id="Ordermount3_10">
                    </li>
                    <li>
                        <input type="text" value="" id="message3_10">
                    </li>
                    <li>
                        <input type="text" value="" id="postmethod3_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="paymethod3_10">
                    </li>
                    <li>
                        <input type="text" value="" id="recevername3_10" >
                    </li>
                    <li>
                        <input type="text" value="" id="receveraddr3_10">
                    </li>
                    <li>
                        <input type="text" value="" id="recevertel3_10">
                    </li>
                    <li>
                        <input type="text" value="" id="memo3_10">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_10">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
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
<%--        订单信息修改--%>
        <div class="main_box" style="display: none" id="tab_cusidinfororder">
            <div class="main_title_box">根据订单Id查询订单信息</div>
            <div class="main_order_title">
                <div class="main_order_tips">
                    <span>请输入您要修改的订单的用户ID：</span>
                    <input type="text" value="" id="top_input_orderupdata">
                    <input type="button" onclick="selectidinfororder()" value="确定" class="tab_cusinfor">
                </div>
            </div>
            <div class="main_order_title" style="display: none" id="tab_two_orderinfor">
                <ul>
                    <li>
                        <span>订单编号</span>
                    </li>
                    <li>
                        <span>自动编号</span>
                    </li>
                    <li>
                        <span>客户编号</span>
                    </li>
                    <li>
                        <span>下单日期</span>
                    </li>
                    <li>
                        <span>总订购数</span>
                    </li>
                    <li>
                        <span>留言</span>
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
                        <span>备注</span>
                    </li>
                    <li>
                        <span>总卖出价</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" style="display: none" id="tab_two_data_orderinfor">
                <ul>
                    <li>
                        <input type="text" value="" readonly="readonly" id="OrderId4_2_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Id4_2_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="CustomerId4_2_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Orderdate4_2_1">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount4_2_1" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="" id="message4_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="postmethod4_2_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="paymethod4_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevername4_2_1" >
                    </li>
                    <li>
                        <input type="text" value="" id="receveraddr4_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevertel4_2_1">
                    </li>
                    <li>
                        <input type="text" value="" id="memo4_2_1">
                    </li>
                    <li>
                        <input type="text"  id="totalprice4_2_1">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
        </div>
<%--        订单信息删除--%>
        <div class="main_box" style="display: none" id="tab_cusiddelectorder">
            <div class="main_title_box">根据订单Id删除订单信息</div>
            <div class="main_order_title">
                <div class="main_order_tips">
                    <span>请输入您要删除的订单的用户ID：</span>
                    <input type="text" value="" id="top_input_orderdelete">
                    <input type="button" onclick="selectidinfororder2()" value="确定" class="tab_cusinfor">
                </div>
            </div>
            <div class="main_order_title" style="display: none" id="tab_two_orderinfor2">
                <ul>
                    <li>
                        <span>订单编号</span>
                    </li>
                    <li>
                        <span>自动编号</span>
                    </li>
                    <li>
                        <span>客户编号</span>
                    </li>
                    <li>
                        <span>下单日期</span>
                    </li>
                    <li>
                        <span>总订购数</span>
                    </li>
                    <li>
                        <span>留言</span>
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
                        <span>备注</span>
                    </li>
                    <li>
                        <span>总卖出价</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" style="display: none" id="tab_two_data_orderinfor2">
                <ul>
                    <li>
                        <input type="text" value="" readonly="readonly" id="OrderId4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Id4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="CustomerId4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Orderdate4_3_1">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount4_3_1" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="" id="message4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="postmethod4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="paymethod4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevername4_3_1" >
                    </li>
                    <li>
                        <input type="text" value="" id="receveraddr4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevertel4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="memo4_3_1">
                    </li>
                    <li>
                        <input type="text"  id="totalprice4_3_1">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                    </li>
                </ul>
            </div>
        </div>
<%--        未处理订单查询--%>
        <div class="main_box" style="display: none" id="tab_noorderinfor">
            <div class="main_title_box">未处理订单查询</div>
            <div class="main_order_title">
                <ul>
                    <li>
                        <span>订单编号</span>
                    </li>
                    <li>
                        <span>自动编号</span>
                    </li>
                    <li>
                        <span>客户编号</span>
                    </li>
                    <li>
                        <span>下单日期</span>
                    </li>
                    <li>
                        <span>总订购数</span>
                    </li>
                    <li>
                        <span>留言</span>
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
                        <span>备注</span>
                    </li>
                    <li>
                        <span>总卖出价</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_1" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="" readonly="readonly" id="OrderId3_4_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Id3_4_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="CustomerId3_4_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Orderdate3_4_1">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_1" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="" id="message3_4_1">
                    </li>
                    <li>
                        <input type="text" value="" id="postmethod3_4_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="paymethod3_4_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevername3_4_1" >
                    </li>
                    <li>
                        <input type="text" value="" id="receveraddr3_4_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevertel3_4_1">
                    </li>
                    <li>
                        <input type="text" value="" id="memo3_4_1">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_1">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_2" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4_2">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4_2">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4_2">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4_2">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_2" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4_2">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4_2">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4_2">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4_2" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4_2">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4_2">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4_2">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_2">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_3" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4_3">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4_3">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4_3">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4_3">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_3" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4_3">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4_3">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4_3">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4_3" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4_3">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4_3">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4_3">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_3">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_4" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4_4">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4_4">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4_4">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4_4">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_4" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4_4">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4_4">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4_4">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4_4" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4_4">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4_4">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4_4">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_4">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_5" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4_5">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4_5">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4_5">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4_5">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_5" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4_5">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4_5">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4_5">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4_5" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4_5">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4_5">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4_5">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_5">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_6" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4_6">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4_6">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4_6">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4_6">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_6" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4_6">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4_6">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4_6">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4_6" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4_6">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4_6">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4_6">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_6">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_7" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4_7">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4_7">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4_7">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4_7">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_7" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4_7">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4_7">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4_7">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4_7" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4_7">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4_7">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4_7">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_7">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_8" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4_8">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4_8">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4_8">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4_8">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_8" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4_8">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4_8">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4_8">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4_8" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4_8">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4_8">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4_8">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_8">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_9" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_4_9">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_4_9">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_4_9">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_4_9">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_4_9" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_4_9">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_4_9">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_4_9">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_4_9" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_4_9">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_4_9">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_4_9">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_9">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_4_10" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="" readonly="readonly" id="OrderId3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Id3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="CustomerId3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Orderdate3_4_10">
                    </li>
                    <li>
                        <input type="text"  value=""  readonly="readonly" id="Ordermount3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" id="message3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" id="postmethod3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="paymethod3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" id="recevername3_4_10" >
                    </li>
                    <li>
                        <input type="text" value="" id="receveraddr3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" id="recevertel3_4_10">
                    </li>
                    <li>
                        <input type="text" value="" id="memo3_4_10">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_4_10">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="paging_box">
                <div class="paging_ul_box">
                    <ul>
                        <li onclick="fistnum_noorderinfor()">首页</li>
                        <li onclick="upnum_noorderinfor()">上一页</li>
                        <li class="paging_text">目前第
                            <p class="paging_num" id="paging_num3_4_1">1</p>
                            页
                        </li>
                        <li onclick="downnum_noorderinfor()">下一页</li>
                        <li onclick="lastnum_noorderinfor()">尾页</li>
                        <li>共
                            <p class="paging_num" id="paging_num3_4_2">1</p>
                            页
                        </li>
                        <li class="paging_text">到
                            <input type="text" value="1" id="shownum3_4_1">
                            页
                        </li>
                        <li onclick="gonum_noorderinfor()">确定</li>
                    </ul>
                </div>
            </div>
        </div>
<%--        申请退款订单查询--%>
        <div class="main_box" style="display: none" id="tab_backorderinfor">
            <div class="main_title_box">申请退款订单查询</div>
            <div class="main_order_title">
                <ul>
                    <li>
                        <span>订单编号</span>
                    </li>
                    <li>
                        <span>自动编号</span>
                    </li>
                    <li>
                        <span>客户编号</span>
                    </li>
                    <li>
                        <span>下单日期</span>
                    </li>
                    <li>
                        <span>总订购数</span>
                    </li>
                    <li>
                        <span>留言</span>
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
                        <span>备注</span>
                    </li>
                    <li>
                        <span>总卖出价</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_1" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="" readonly="readonly" id="OrderId3_5_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Id3_5_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="CustomerId3_5_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Orderdate3_5_1">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_1" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="" id="message3_5_1">
                    </li>
                    <li>
                        <input type="text" value="" id="postmethod3_5_1">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="paymethod3_5_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevername3_5_1" >
                    </li>
                    <li>
                        <input type="text" value="" id="receveraddr3_5_1">
                    </li>
                    <li>
                        <input type="text" value="" id="recevertel3_5_1">
                    </li>
                    <li>
                        <input type="text" value="" id="memo3_5_1">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_1">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_2" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5_2">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5_2">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5_2">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5_2">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_2" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5_2">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5_2">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5_2">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5_2" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5_2">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5_2">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5_2">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_2">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_3" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5_3">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5_3">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5_3">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5_3">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_3" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5_3">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5_3">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5_3">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5_3" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5_3">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5_3">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5_3">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_3">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_4" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5_4">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5_4">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5_4">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5_4">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_4" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5_4">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5_4">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5_4">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5_4" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5_4">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5_4">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5_4">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_4">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_5" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5_5">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5_5">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5_5">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5_5">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_5" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5_5">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5_5">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5_5">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5_5" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5_5">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5_5">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5_5">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_5">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_6" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5_6">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5_6">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5_6">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5_6">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_6" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5_6">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5_6">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5_6">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5_6" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5_6">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5_6">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5_6">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_6">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_7" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5_7">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5_7">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5_7">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5_7">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_7" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5_7">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5_7">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5_7">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5_7" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5_7">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5_7">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5_7">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_7">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_8" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5_8">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5_8">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5_8">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5_8">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_8" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5_8">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5_8">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5_8">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5_8" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5_8">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5_8">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5_8">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_8">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_9" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="2020120101" readonly="readonly" id="OrderId3_5_9">
                    </li>
                    <li>
                        <input type="text" value="001" readonly="readonly" id="Id3_5_9">
                    </li>
                    <li>
                        <input type="text" value="1877591835" readonly="readonly" id="CustomerId3_5_9">
                    </li>
                    <li>
                        <input type="text" value="2020-12-01 12:12:12" readonly="readonly" id="Orderdate3_5_9">
                    </li>
                    <li>
                        <input type="text"  id="Ordermount3_5_9" readonly="readonly" value="20">
                    </li>
                    <li>
                        <input type="text" value="无" id="message3_5_9">
                    </li>
                    <li>
                        <input type="text" value="邮政" id="postmethod3_5_9">
                    </li>
                    <li>
                        <input type="text" value="未知" readonly="readonly" id="paymethod3_5_9">
                    </li>
                    <li>
                        <input type="text" value="黄圣" id="recevername3_5_9" >
                    </li>
                    <li>
                        <input type="text" value="广西崇左市扶绥县渠旧镇" id="receveraddr3_5_9">
                    </li>
                    <li>
                        <input type="text" value="18775921835" id="recevertel3_5_9">
                    </li>
                    <li>
                        <input type="text" value="无" id="memo3_5_9">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_9">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="order_show_data" id="tab_orderinfor3_5_10" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="" readonly="readonly" id="OrderId3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Id3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="CustomerId3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="Orderdate3_5_10">
                    </li>
                    <li>
                        <input type="text"  value=""  readonly="readonly" id="Ordermount3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" id="message3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" id="postmethod3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" readonly="readonly" id="paymethod3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" id="recevername3_5_10" >
                    </li>
                    <li>
                        <input type="text" value="" id="receveraddr3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" id="recevertel3_5_10">
                    </li>
                    <li>
                        <input type="text" value="" id="memo3_5_10">
                    </li>
                    <li>
                        <input type="text"  id="totalprice3_5_10">
                    </li>
                    <li class="show_action">
                        <button onclick="ordershowdetailed(this)">详情</button>
                        <button onclick="orderdeleteaction(this)">删除</button>
                        <button onclick="orderupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="paging_box">
                <div class="paging_ul_box">
                    <ul>
                        <li onclick="fistnum()">首页</li>
                        <li onclick="upnum()">上一页</li>
                        <li class="paging_text">目前第
                            <p class="paging_num" id="paging_num3_5_1">1</p>
                            页
                        </li>
                        <li onclick="downnum()">下一页</li>
                        <li onclick="lastnum()">尾页</li>
                        <li>共
                            <p class="paging_num" id="paging_num3_5_2">1</p>
                            页
                        </li>
                        <li class="paging_text">到
                            <input type="text" value="1" id="shownum3_5_2">
                            页
                        </li>
                        <li onclick="gonum()">确定</li>
                    </ul>
                </div>
            </div>
        </div>
        <%--        查看订单详情--%>
        <div class="main_box" style="display: none" id="tab_selecorderdetail">
            <div class="main_title_box">订单信息详情</div>
            <div id="select_orderdetail_tab" class="add_book_tab">
                <ul>
                    <li class="clearfix">
                        <span>详细订单编号:</span>
                        <div>
                            <div contenteditable="false" class="" id="OrderDetailld4_5_1"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>自动编号:</span>
                        <div>
                            <div contenteditable="false" class="" id="Id4_5_1"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>订单号：</span>
                        <div>
                            <div contenteditable="false" class="" id="OrderId4_5_1"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>图书编号：</span>
                        <div>
                            <div contenteditable="false" class="" id="BookId4_5_1"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>订单数量：</span>
                        <div>
                            <div contenteditable="true" class="" id="ordermount4_5_1"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>发货状态:</span>
                        <div>
                            <div contenteditable="true" class="" id="poststatus4_5_1"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>收货状态:</span>
                        <div>
                            <div contenteditable="true" class="" id="Recevstatus4_5_1"></div>
                        </div>
                    </li>
                    <li class="clearfix">
                        <span>总价格:</span>
                        <div>
                            <div contenteditable="true" class="" id="sigletotalprice4_5_1"></div>
                        </div>
                    </li>
                    <li class="add_show_img_box">
                        <div class="add_book_img">
                            <img src="upload/2020120101.jpg" alt="图片" id="orderbookimg">
                        </div>
                    </li>
                    <li class="clearfix">
                        <input type="button" value="确定更新" class="addbook_btn" onclick="upload_ordertail()">
                        <input type="button" value="返回" class="addbook_btn" onclick="backordershow()">
                    </li>
                </ul>
            </div>
        </div>

<%--        图书类型查询--%>
        <div class="main_box" style="display: none" id="tab_booktypeinfor">
            <div class="main_title_box">图书类型查询</div>
            <div class="main_booktype_title">
                <div class="main_booktype_tips">
                    <span>请输入您要查询的图书类型的信息：</span>
                    <input type="text" value="" id="top_input_booktypeinfor">
                    <input type="button" onclick="inforbooktypeforselect()" value="确定" class="tab_booktypeinfor">
                </div>
            </div>
            <div class="main_booktype_title">
                <ul>
                    <li>
                        <span>图书类型编号</span>
                    </li>
                    <li>
                        <span>图书类型名字</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_1" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_1" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_1">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_2" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_2" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_2">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_3" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_3" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_3">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_4" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_4" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_4">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_5" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_5" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_5">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_6" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_6" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_6">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_7" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_7" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_7">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_8" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_8" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_8">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_9" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_9" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_9">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" id="tab_booktypeinfor4_10" style="display:none">
                <ul>
                    <li>
                        <input type="text" value="001" id="booktypeid4_10" readonly="readonly">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="booktypename4_10">
                    </li>

                    <li class="show_action">
                        <button onclick="booktypedeleteaction(this)">删除</button>
                        <button onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
            <div class="paging_box">
                <div class="paging_ul_box">
                    <ul>
                        <li onclick="fistnum_booktypeinfor()">首页</li>
                        <li onclick="upnum_booktypeinfor()">上一页</li>
                        <li class="paging_text">目前第
                            <p class="paging_num" id="paging_num1_booktypeinfor">1</p>
                            页
                        </li>
                        <li onclick="downnum_booktypeinfor()">下一页</li>
                        <li onclick="lastnum_booktypeinfor()">尾页</li>
                        <li>共
                            <p class="paging_num" id="paging_num2_booktypeinfor">1</p>
                            页
                        </li>
                        <li class="paging_text">到
                            <input type="text" value="1" id="shownum_booktypeinfor">
                            页
                        </li>
                        <li onclick="gonum_booktypeinfor()">确定</li>
                    </ul>
                </div>
            </div>
        </div>
<%--        图书类型修改--%>
        <div class="main_box" style="display: none" id="tab_booktypeupdata">
            <div class="main_title_box">图书类型修改</div>
            <div class="main_booktype_title">
                <div class="main_booktype_tips">
                    <span>请输入您要修改的图书类型的编号ID：</span>
                    <input type="text" value="" id="top_input_booktypeupdata">
                    <input type="button" onclick="selectidinforbooktype()" value="确定" class="tab_booktypeinfor">
                </div>
            </div>
            <div class="main_booktype_title" id="tab_two_booktypeinfor" style="display: none">
                <ul>
                    <li>
                        <span>图书类型编号</span>
                    </li>
                    <li>
                        <span>图书类型名字</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div >
            <div class="booktype_show_data" id="tab_two_data_booktypeinfor" style="display: none">
                <ul>
                    <li>
                        <input type="text" value="001" id="BookTypeId4_2_1">
                    </li>
                    <li>
                        <input type="text" value="少儿" id="BookTypeName4_2_1">
                    </li>

                    <li class="show_action">
                        <button style="margin-left: 35px" onclick="booktypeupdataaction(this)">修改</button>
                    </li>
                </ul>
            </div>
        </div>
<%--        图书类型删除--%>
        <div class="main_box" style="display: none" id="tab_booktypedelect">
            <div class="main_title_box">图书类型删除</div>
            <div class="main_booktype_title">
                <div class="main_booktype_tips">
                    <span>请输入您要删除的图书类型的编号ID：</span>
                    <input type="text" value="" id="top_input_booktypedelete">
                    <input type="button" onclick="selectidinforbooktype2()" value="确定" class="tab_booktypeinfor">
                </div>
            </div>
            <div class="main_booktype_title" style="display: none" id="tab_two_booktypedelete">
                <ul>
                    <li>
                        <span>图书类型编号</span>
                    </li>
                    <li>
                        <span>图书类型名字</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data" style="display: none" id="tab_two_data_booktypedelete">
                <ul>
                    <li>
                        <input type="text" value="" id="BookTypeId4_3_1">
                    </li>
                    <li>
                        <input type="text" value="" id="BookTypeName4_3_1">
                    </li>

                    <li class="show_action">
                        <button style="margin-left: 35px" onclick="booktypedeleteaction(this)">删除</button>
                    </li>
                </ul>
            </div>
        </div>
<%--        图书类型添加--%>
        <div class="main_box" style="display: none" id="tab_booktypeadd">
            <div class="main_title_box">图书类型删除</div>
            <div class="main_booktype_title">
                <div class="main_booktype_tips">
                    <span>请输入您要添加的图书类型的信息</span>
                </div>
            </div>
            <div class="main_booktype_title">
                <ul>
                    <li>
                        <span>图书类型编号</span>
                    </li>
                    <li>
                        <span>图书类型名字</span>
                    </li>
                    <li class="main_action">
                        <span class="main_two_action">操作</span>
                    </li>
                </ul>
            </div>
            <div class="booktype_show_data">
                <ul>
                    <li>
                        <input type="text" value="" id="booktypeid4_4_1">
                    </li>
                    <li>
                        <input type="text" value="" id="booktypename4_4_1">
                    </li>

                    <li class="show_action">
                        <button style="margin-left: 35px" onclick="booktypeaddaction(this)">添加</button>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%--主体模块end--%>
<footer>
    <div class="mod_copyright">
        <div class="links">
            <a href="#">关于我们</a> | <a href="#">联系我们</a> | 联系客服 | 商家入驻 | 营销中心 | 手机书城 | 友情链接 | 销售联盟 | 书城社区 |
            网上书城 | English Site | Contact U
        </div>
        <div class="copyright">
            地址：广西河池市庆远镇河池学院 邮编：10086 电话：400-400-4000 传真：010-12345678 邮箱: m18775921835@163.com <br>
            京ICP备08009527号京公网安备110100001111
        </div>
    </div>
</footer>
</body>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<%--浏览器刚加载就执行项目--%>
<script>
    window.onload = function () {
        onload1();
        getbookinfor();
    }
</script>
<%--对进入用户进行判定--%>
<script>
    function onload1() {
    var use3Value = '${sessionScope.customerid}';
    console.log(use3Value);
}
</script>
<%--注销账号--%>
<script>
    var use2 =document.getElementById('use2');
    var cancellation =document.getElementById('cancellation');
    cancellation.onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbManager/cancellation');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send();
        window.location.href="http://localhost:8080/OBSS_war_exploded/index.jsp";
    }
</script>
<%--表单跳转--%>
<script>
    var tab_selectcus=document.getElementById('tab_selectcus');
    var tab_selecorderdetail=document.getElementById('tab_selecorderdetail');
    var tab_selectbook=document.getElementById('tab_selectbook');
    var bookinfor=document.getElementById('bookinfor');
    var bookupdata=document.getElementById('bookupdata');
    var bookdelect=document.getElementById('bookdelect');
    var bookadd=document.getElementById('bookadd');
    var cusinfor=document.getElementById('cusinfor');
    var cusupdata=document.getElementById('cusupdata');
    var cusdelect=document.getElementById('cusdelect');
    var cusadd =document.getElementById('cusadd');
    var allorderinfor=document.getElementById('allorderinfor');
    var noorderinfor=document.getElementById('noorderinfor');
    var backorderinfor=document.getElementById('backorderinfor');
    var cusidinfororder=document.getElementById('cusidinfororder');
    var cusiddelectorder=document.getElementById('cusiddelectorder');
    var booktypeinfor=document.getElementById('booktypeinfor');
    var booktypeupdata=document.getElementById('booktypeupdata');
    var booktypedelect=document.getElementById('booktypedelect');
    var booktypeadd=document.getElementById('booktypeadd');
    var tab_bookinfor=document.getElementById('tab_bookinfor');
    var tab_bookupdata=document.getElementById('tab_bookupdata');
    var tab_bookdelect=document.getElementById('tab_bookdelect');
    var tab_bookadd=document.getElementById('tab_bookadd');
    var tab_cusinfor=document.getElementById('tab_cusinfor');
    var tab_cusupdata=document.getElementById('tab_cusupdata');
    var tab_cusdelect=document.getElementById('tab_cusdelect');
    var tab_cusadd=document.getElementById('tab_cusadd');
    var tab_allorderinfor=document.getElementById('tab_allorderinfor');
    var tab_cusidinfororder=document.getElementById('tab_cusidinfororder');
    var tab_cusiddelectorder=document.getElementById('tab_cusiddelectorder');
    var tab_noorderinfor=document.getElementById('tab_noorderinfor');
    var tab_backorderinfor=document.getElementById('tab_backorderinfor');
    var tab_booktypeinfor=document.getElementById('tab_booktypeinfor');
    var tab_booktypeupdata=document.getElementById('tab_booktypeupdata');
    var tab_booktypedelect=document.getElementById('tab_booktypedelect');
    var tab_booktypeadd=document.getElementById('tab_booktypeadd');
    function bookinforonclick() {
        getbookinfor();
        tab_bookinfor.style.display='block';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function bookupdataonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='block';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function bookdelectonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='block';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function cusinforonclick() {
        getcusfor();
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='block';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function cusupdataonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='block';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function cusdelectonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='block';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function allorderinforonclick() {
        getorderinfor();
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='block';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function cusidinfororderonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='block';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function cusiddelectorderonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='block';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function noorderinforonclick() {
        nomakeorderinfor();
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='block';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function backorderinforonclick() {
        backmakeorderinfor();
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='block';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function booktypeinforonclick() {
        getbooktypeinfor();
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='block';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function booktypeupdataonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='block';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function booktypedelectonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='block';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function bookaddonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='block';
        tab_cusadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function booktypeaddonclick() {
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='block';
        tab_bookadd.style.display='none';
        tab_selectbook.style.display='none';
        tab_cusadd.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
    function cusaddonclick() {
        var gettime=document.getElementById('addofCustomerRegTime');
        gettime.innerHTML=current();
        tab_bookinfor.style.display='none';
        tab_bookupdata.style.display='none';
        tab_bookdelect.style.display='none';
        tab_cusinfor.style.display='none';
        tab_cusupdata.style.display='none';
        tab_cusdelect.style.display='none';
        tab_allorderinfor.style.display='none';
        tab_cusidinfororder.style.display='none';
        tab_cusiddelectorder.style.display='none';
        tab_noorderinfor.style.display='none';
        tab_backorderinfor.style.display='none';
        tab_booktypeinfor.style.display='none';
        tab_booktypeupdata.style.display='none';
        tab_booktypedelect.style.display='none';
        tab_booktypeadd.style.display='none';
        tab_bookadd.style.display='none';
        tab_cusadd.style.display='block';
        tab_selectbook.style.display='none';
        tab_selectcus.style.display='none';
        tab_selecorderdetail.style.display='none';
    }
</script>
<%--实现customer的功能--%>
<script>
    // 重置display:none
    function cuscleardisplay() {
        var tab_cusinfor2_1=document.getElementById('tab_cusinfor2_1');
        var tab_cusinfor2_2=document.getElementById('tab_cusinfor2_2');
        var tab_cusinfor2_3=document.getElementById('tab_cusinfor2_3');
        var tab_cusinfor2_4=document.getElementById('tab_cusinfor2_4');
        var tab_cusinfor2_5=document.getElementById('tab_cusinfor2_5');
        var tab_cusinfor2_6=document.getElementById('tab_cusinfor2_6');
        var tab_cusinfor2_7=document.getElementById('tab_cusinfor2_7');
        var tab_cusinfor2_8=document.getElementById('tab_cusinfor2_8');
        var tab_cusinfor2_9=document.getElementById('tab_cusinfor2_9');
        var tab_cusinfor2_10=document.getElementById('tab_cusinfor2_10');
        tab_cusinfor2_1.style.display='none';
        tab_cusinfor2_2.style.display='none';
        tab_cusinfor2_3.style.display='none';
        tab_cusinfor2_4.style.display='none';
        tab_cusinfor2_5.style.display='none';
        tab_cusinfor2_6.style.display='none';
        tab_cusinfor2_7.style.display='none';
        tab_cusinfor2_8.style.display='none';
        tab_cusinfor2_9.style.display='none';
        tab_cusinfor2_10.style.display='none';
    }
    // 用户地址信息处理
    function addremake(obj) {
        var adrValue=obj;
        var addre='';
        for (var i=0;i<adrValue.length;i++){
            if(adrValue[i]=='|'||adrValue[i]=='@'){
                continue;
            }else {
                addre+=adrValue[i];
            }
        }
        return addre;
    }
    // 查询第一页的数据
    function getcusfor() {
        cuscleardisplay()
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1_cusinfor=document.getElementById('paging_num1_cusinfor');
            var paging_num2_cusinfor=document.getElementById('paging_num2_cusinfor');
            //设置最大页数
            paging_num2_cusinfor.innerHTML=maxnum;
            paging_num1_cusinfor.innerHTML='1';
            console.log(res.rows[0]);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var CustomerID=document.getElementById('CustomerID2_'+(i+1));
                var CustomerName=document.getElementById('CustomerName2_'+(i+1));
                var CustomerPwd=document.getElementById('CustomerPwd2_'+(i+1));
                var Customertruename=document.getElementById('Customertruename2_'+(i+1));
                var CustomerSex=document.getElementById('CustomerSex2_'+(i+1));
                var CustomerTel=document.getElementById('CustomerTel2_'+(i+1));
                var CustomerAddr=document.getElementById('CustomerAddr2_'+(i+1));
                var CustomerRegTime=document.getElementById('CustomerRegTime2_'+(i+1));
                var CustomerQuer=document.getElementById('CustomerQuer2_'+(i+1));
                var CustomerAnswer=document.getElementById('CustomerAnswer2_'+(i+1));
                var tab_cusinfor=document.getElementById('tab_cusinfor2_'+(i+1));
                tab_cusinfor.style.display='block';
                CustomerID.value=res.rows[i].customerid;
                CustomerName.value=res.rows[i].customername;
                CustomerPwd.value=res.rows[i].customerpwd;
                Customertruename.value=res.rows[i].customertruename;
                CustomerSex.value=res.rows[i].customersex;
                CustomerTel.value=res.rows[i].customertel;
                CustomerAddr.value=addremake(res.rows[i].customeraddr);
                CustomerRegTime.value=res.rows[i].customerregtime;
                CustomerQuer.value=res.rows[i].customerquer;
                CustomerAnswer.value=res.rows[i].customeranswer;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
            }
        }
    }
    function fistnum_cusinfor() {
        bookcleardisplay()
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
            var paging_num2_bookinfor=document.getElementById('paging_num2_bookinfor');
            //设置最大页数
            paging_num2_bookinfor.innerHTML=maxnum;
            paging_num1_bookinfor.innerHTML='1';
            for (var i=0;i<res.rows.length&&i<10;i++){
                var CustomerID=document.getElementById('CustomerID2_'+(i+1));
                var CustomerName=document.getElementById('CustomerName2_'+(i+1));
                var CustomerPwd=document.getElementById('CustomerPwd2_'+(i+1));
                var Customertruename=document.getElementById('Customertruename2_'+(i+1));
                var CustomerSex=document.getElementById('CustomerSex2_'+(i+1));
                var CustomerTel=document.getElementById('CustomerTel2_'+(i+1));
                var CustomerAddr=document.getElementById('CustomerAddr2_'+(i+1));
                var CustomerRegTime=document.getElementById('CustomerRegTime2_'+(i+1));
                var CustomerQuer=document.getElementById('CustomerQuer2_'+(i+1));
                var CustomerAnswer=document.getElementById('CustomerAnswer2_'+(i+1));
                var tab_cusinfor=document.getElementById('tab_cusinfor2_'+(i+1));
                tab_cusinfor.style.display='block';
                CustomerID.value=res.rows[i].customerid;
                CustomerName.value=res.rows[i].customername;
                CustomerPwd.value=res.rows[i].customerpwd;
                Customertruename.value=res.rows[i].customertruename;
                CustomerSex.value=res.rows[i].customersex;
                CustomerTel.value=res.rows[i].customertel;
                CustomerAddr.value=addremake(res.rows[i].customeraddr);
                CustomerRegTime.value=res.rows[i].customerregtime;
                CustomerQuer.value=res.rows[i].customerquer;
                CustomerAnswer.value=res.rows[i].customeranswer;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
            }
        }
    }
    function upnum_cusinfor() {
        cuscleardisplay()
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取当前页数
            var paging_num1_cusinfor=document.getElementById('paging_num1_cusinfor');
            var pagenum=paging_num1_cusinfor.innerHTML-1;
            //判定当前页数是否在第一页
            if(pagenum>0) {
                pagenum=pagenum-1;
            }
            else{
                pagenum=pagenum
            }
            paging_num1_cusinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var CustomerID=document.getElementById('CustomerID2_'+(i+1));
                var CustomerName=document.getElementById('CustomerName2_'+(i+1));
                var CustomerPwd=document.getElementById('CustomerPwd2_'+(i+1));
                var Customertruename=document.getElementById('Customertruename2_'+(i+1));
                var CustomerSex=document.getElementById('CustomerSex2_'+(i+1));
                var CustomerTel=document.getElementById('CustomerTel2_'+(i+1));
                var CustomerAddr=document.getElementById('CustomerAddr2_'+(i+1));
                var CustomerRegTime=document.getElementById('CustomerRegTime2_'+(i+1));
                var CustomerQuer=document.getElementById('CustomerQuer2_'+(i+1));
                var CustomerAnswer=document.getElementById('CustomerAnswer2_'+(i+1));
                var tab_cusinfor=document.getElementById('tab_cusinfor2_'+(i+1));
                tab_cusinfor.style.display='block';
                CustomerID.value=res.rows[j].customerid;
                CustomerName.value=res.rows[j].customername;
                CustomerPwd.value=res.rows[j].customerpwd;
                Customertruename.value=res.rows[j].customertruename;
                CustomerSex.value=res.rows[j].customersex;
                CustomerTel.value=res.rows[j].customertel;
                CustomerAddr.value=addremake(res.rows[j].customeraddr);
                CustomerRegTime.value=res.rows[j].customerregtime;
                CustomerQuer.value=res.rows[j].customerquer;
                CustomerAnswer.value=res.rows[j].customeranswer;
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
    function downnum_cusinfor() {
        cuscleardisplay()
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            //获取当前页数
            var paging_num1_cusinfor=document.getElementById('paging_num1_cusinfor');
            var pagenum=paging_num1_cusinfor.innerHTML-1;
            //判定当前页数是否在最后一页
            if(pagenum<maxnum-1) {
                pagenum=pagenum+1;
            }
            else{
                pagenum=pagenum
            }
            paging_num1_cusinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var CustomerID=document.getElementById('CustomerID2_'+(i+1));
                var CustomerName=document.getElementById('CustomerName2_'+(i+1));
                var CustomerPwd=document.getElementById('CustomerPwd2_'+(i+1));
                var Customertruename=document.getElementById('Customertruename2_'+(i+1));
                var CustomerSex=document.getElementById('CustomerSex2_'+(i+1));
                var CustomerTel=document.getElementById('CustomerTel2_'+(i+1));
                var CustomerAddr=document.getElementById('CustomerAddr2_'+(i+1));
                var CustomerRegTime=document.getElementById('CustomerRegTime2_'+(i+1));
                var CustomerQuer=document.getElementById('CustomerQuer2_'+(i+1));
                var CustomerAnswer=document.getElementById('CustomerAnswer2_'+(i+1));
                var tab_cusinfor=document.getElementById('tab_cusinfor2_'+(i+1));
                tab_cusinfor.style.display='block';
                CustomerID.value=res.rows[j].customerid;
                CustomerName.value=res.rows[j].customername;
                CustomerPwd.value=res.rows[j].customerpwd;
                Customertruename.value=res.rows[j].customertruename;
                CustomerSex.value=res.rows[j].customersex;
                CustomerTel.value=res.rows[j].customertel;
                CustomerAddr.value=addremake(res.rows[j].customeraddr);
                CustomerRegTime.value=res.rows[j].customerregtime;
                CustomerQuer.value=res.rows[j].customerquer;
                CustomerAnswer.value=res.rows[j].customeranswer;
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
    function lastnum_cusinfor() {
        cuscleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取最大页数
            var maxnum=Math.ceil(res.rows.length/10);
            //获取当前页数
            var pagenum=maxnum-1;
            var paging_num1_cusinfor=document.getElementById('paging_num1_cusinfor');
            paging_num1_cusinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var CustomerID=document.getElementById('CustomerID2_'+(i+1));
                var CustomerName=document.getElementById('CustomerName2_'+(i+1));
                var CustomerPwd=document.getElementById('CustomerPwd2_'+(i+1));
                var Customertruename=document.getElementById('Customertruename2_'+(i+1));
                var CustomerSex=document.getElementById('CustomerSex2_'+(i+1));
                var CustomerTel=document.getElementById('CustomerTel2_'+(i+1));
                var CustomerAddr=document.getElementById('CustomerAddr2_'+(i+1));
                var CustomerRegTime=document.getElementById('CustomerRegTime2_'+(i+1));
                var CustomerQuer=document.getElementById('CustomerQuer2_'+(i+1));
                var CustomerAnswer=document.getElementById('CustomerAnswer2_'+(i+1));
                var tab_cusinfor=document.getElementById('tab_cusinfor2_'+(i+1));
                tab_cusinfor.style.display='block';
                CustomerID.value=res.rows[j].customerid;
                CustomerName.value=res.rows[j].customername;
                CustomerPwd.value=res.rows[j].customerpwd;
                Customertruename.value=res.rows[j].customertruename;
                CustomerSex.value=res.rows[j].customersex;
                CustomerTel.value=res.rows[j].customertel;
                CustomerAddr.value=addremake(res.rows[j].customeraddr);
                CustomerRegTime.value=res.rows[j].customerregtime;
                CustomerQuer.value=res.rows[j].customerquer;
                CustomerAnswer.value=res.rows[j].customeranswer;
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
    function gonum_cusinfor() {
        cuscleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取最大页数
            var maxnum=Math.ceil(res.rows.length/10);
            //获取输入的跳转页数
            var shownum_cusinfor=document.getElementById('shownum_cusinfor').value-1;
            var paging_num1_cusinfor=document.getElementById('paging_num1_cusinfor');
            paging_num1_cusinfor.innerHTML=(shownum_cusinfor+1);
            var pagenum=shownum_bookinfor;
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var CustomerID=document.getElementById('CustomerID2_'+(i+1));
                var CustomerName=document.getElementById('CustomerName2_'+(i+1));
                var CustomerPwd=document.getElementById('CustomerPwd2_'+(i+1));
                var Customertruename=document.getElementById('Customertruename2_'+(i+1));
                var CustomerSex=document.getElementById('CustomerSex2_'+(i+1));
                var CustomerTel=document.getElementById('CustomerTel2_'+(i+1));
                var CustomerAddr=document.getElementById('CustomerAddr2_'+(i+1));
                var CustomerRegTime=document.getElementById('CustomerRegTime2_'+(i+1));
                var CustomerQuer=document.getElementById('CustomerQuer2_'+(i+1));
                var CustomerAnswer=document.getElementById('CustomerAnswer2_'+(i+1));
                var tab_cusinfor=document.getElementById('tab_cusinfor2_'+(i+1));
                tab_cusinfor.style.display='block';
                CustomerID.value=res.rows[j].customerid;
                CustomerName.value=res.rows[j].customername;
                CustomerPwd.value=res.rows[j].customerpwd;
                Customertruename.value=res.rows[j].customertruename;
                CustomerSex.value=res.rows[j].customersex;
                CustomerTel.value=res.rows[j].customertel;
                CustomerAddr.value=addremake(res.rows[j].customeraddr);
                CustomerRegTime.value=res.rows[j].customerregtime;
                CustomerQuer.value=res.rows[j].customerquer;
                CustomerAnswer.value=res.rows[j].customeranswer;
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
    function inforcusforselect() {
        cuscleardisplay();
        var getinput = document.getElementById('top_input_cusinfor');
        var parse1='customerid='+getinput.value;
        var parse2='customername='+getinput.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse1);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            console.log(res);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num1_cusinfor=document.getElementById('paging_num1_cusinfor');
                var paging_num2_cusinfor=document.getElementById('paging_num2_cusinfor');
                //设置最大页数
                paging_num2_cusinfor.innerHTML=maxnum;
                paging_num1_cusinfor.innerHTML='1';
                var num=(res.rows.length)%10;
                for (var i=0;i<res.rows.length&&i<10;i++) {
                    var CustomerID = document.getElementById('CustomerID2_' + (i + 1));
                    var CustomerName = document.getElementById('CustomerName2_' + (i + 1));
                    var CustomerPwd = document.getElementById('CustomerPwd2_' + (i + 1));
                    var Customertruename = document.getElementById('Customertruename2_' + (i + 1));
                    var CustomerSex = document.getElementById('CustomerSex2_' + (i + 1));
                    var CustomerTel = document.getElementById('CustomerTel2_' + (i + 1));
                    var CustomerAddr = document.getElementById('CustomerAddr2_' + (i + 1));
                    var CustomerRegTime = document.getElementById('CustomerRegTime2_' + (i + 1));
                    var CustomerQuer = document.getElementById('CustomerQuer2_' + (i + 1));
                    var CustomerAnswer = document.getElementById('CustomerAnswer2_' + (i + 1));
                    var tab_cusinfor = document.getElementById('tab_cusinfor2_' + (i + 1));
                    tab_cusinfor.style.display = 'block';
                    CustomerID.value = res.rows[i].customerid;
                    CustomerName.value = res.rows[i].customername;
                    CustomerPwd.value = res.rows[i].customerpwd;
                    Customertruename.value = res.rows[i].customertruename;
                    CustomerSex.value = res.rows[i].customersex;
                    CustomerTel.value = res.rows[i].customertel;
                    CustomerAddr.value = addremake(res.rows[i].customeraddr);
                    CustomerRegTime.value = res.rows[i].customerregtime;
                    CustomerQuer.value = res.rows[i].customerquer;
                    CustomerAnswer.value = res.rows[i].customeranswer;
                }
                console.log("id查询成功")
            }
            else{
                var xhr2 = new XMLHttpRequest();
                xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectname');
                // 设置请求参数格式的类型（post请求必须要设置）
                xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                // 发送请求
                xhr2.send(parse2);
                // 获取服务器端响应的数据
                xhr2.onload = function () {
                    let res2=JSON.parse(xhr2.responseText);
                    if(res2.total==0){
                        var maxnum=Math.ceil(res2.rows.length/10);
                        var paging_num1_cusinfor=document.getElementById('paging_num1_cusinfor');
                        var paging_num2_cusinfor=document.getElementById('paging_num2_cusinfor');
                        //设置最大页数
                        paging_num2_cusinfor.innerHTML=maxnum;
                        paging_num1_cusinfor.innerHTML='1';
                        var num=(res2.rows.length)%10;
                        for (var i=0;i<res2.rows.length&&i<10;i++){
                            var j=(num*10)+i;
                            var CustomerID=document.getElementById('CustomerID2_'+(i+1));
                            var CustomerName=document.getElementById('CustomerName2_'+(i+1));
                            var CustomerPwd=document.getElementById('CustomerPwd2_'+(i+1));
                            var Customertruename=document.getElementById('Customertruename2_'+(i+1));
                            var CustomerSex=document.getElementById('CustomerSex2_'+(i+1));
                            var CustomerTel=document.getElementById('CustomerTel2_'+(i+1));
                            var CustomerAddr=document.getElementById('CustomerAddr2_'+(i+1));
                            var CustomerRegTime=document.getElementById('CustomerRegTime2_'+(i+1));
                            var CustomerQuer=document.getElementById('CustomerQuer2_'+(i+1));
                            var CustomerAnswer=document.getElementById('CustomerAnswer2_'+(i+1));
                            var tab_cusinfor=document.getElementById('tab_cusinfor2_'+(i+1));
                            tab_cusinfor.style.display='block';
                            CustomerID.value=res.rows[j].customerid;
                            CustomerName.value=res.rows[j].customername;
                            CustomerPwd.value=res.rows[j].customerpwd;
                            Customertruename.value=res.rows[j].customertruename;
                            CustomerSex.value=res.rows[j].customersex;
                            CustomerTel.value=res.rows[j].customertel;
                            CustomerAddr.value=addremake(res.rows[j].customeraddr);
                            CustomerRegTime.value=res.rows[j].customerregtime;
                            CustomerQuer.value=res.rows[j].customerquer;
                            CustomerAnswer.value=res.rows[j].customeranswer;
                        }
                    }
                    else{
                        alert("查询失败");
                        console.log("查询失败")
                        return;
                    }
                }
            }
        }
    }
    function select_cusinfor(obj) {
        var tab_cusinfor=document.getElementById('tab_cusinfor');
        tab_cusinfor.style.display='none';
        var tab_selectcus=document.getElementById('tab_selectcus');
        tab_selectcus.style.display='block';
        var customerid=obj.parentNode.parentNode.children[0].children[0].value;
        var parse='customerid='+customerid;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            console.log(res);
            if(res.total==0){
                var CustomerID=document.getElementById("selectofCusId");
                var CustomerName=document.getElementById("selectofCustomerName");
                var CustomerPwd=document.getElementById("selectofCustomerPwd");
                var Customertruename=document.getElementById("selectofCustomertruename");
                var CustomerSex=document.getElementById("selectofCustomerSex");
                var CustomerTel=document.getElementById("selectofCustomerTel");
                var CustomerAddr=document.getElementById("selectofCustomerAddr");
                var CustomerRegTime=document.getElementById("selectofCustomerRegTime");
                var CustomerQuer=document.getElementById("selectofCustomerQuer");
                var CustomerAnswer=document.getElementById("selectofCustomerAnswer");
                var imgname3=document.getElementById("imgname3");
                imgname3.innerHTML=res.rows[0].customerid;
                CustomerID.innerHTML=res.rows[0].customerid;
                CustomerName.innerHTML=res.rows[0].customername;
                CustomerPwd.innerHTML=res.rows[0].customerpwd;
                Customertruename.innerHTML=res.rows[0].customertruename;
                CustomerSex.innerHTML=res.rows[0].customersex;
                CustomerTel.innerHTML=res.rows[0].customertel;
                CustomerAddr.innerHTML=addremake(res.rows[0].customeraddr);
                CustomerRegTime.innerHTML=res.rows[0].customerregtime;
                CustomerQuer.innerHTML=res.rows[0].customerquer;
                CustomerAnswer.innerHTML=res.rows[0].customeranswer;
                var imgshow3=document.getElementById('imgshow3');
                var url="url('upload/"+res.rows[0].customerid+".jpg')";
                imgshow3.style.backgroundImage=url;
            }else {
                console.log('查询失败');
            }
        }
    }
    function select_cusupdata(obj){
        var CustomerID=obj.parentNode.parentNode.children[0].children[0].value;
        var CustomerName=obj.parentNode.parentNode.children[1].children[0].value;
        var CustomerPwd=obj.parentNode.parentNode.children[2].children[0].value;
        var Customertruename=obj.parentNode.parentNode.children[3].children[0].value;
        var CustomerSex=obj.parentNode.parentNode.children[4].children[0].value;
        var CustomerTel=obj.parentNode.parentNode.children[5].children[0].value;
        var CustomerAddr=obj.parentNode.parentNode.children[6].children[0].value;
        var CustomerRegTime=obj.parentNode.parentNode.children[7].children[0].value;
        var CustomerQuer=obj.parentNode.parentNode.children[8].children[0].value;
        var CustomerAnswer=obj.parentNode.parentNode.children[9].children[0].value;
        var parese='customerid=' + CustomerID + '&customername=' + CustomerName+ '&customerpwd='+ CustomerPwd +'&customertruename=' + Customertruename +'&customersex='+CustomerSex+'&customertel='+CustomerTel +'&customeraddr='+CustomerAddr+'&customerquer='+CustomerQuer+'&customeranswer='+CustomerAnswer;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/updateTbCustomer');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parese);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log("修改成功");
                cusinforonclick();
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function select_cusdelete(obj){
        var customerid=obj.parentNode.parentNode.children[0].children[0].value;
        var pareses='customerid='+customerid;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/delete');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                console.log('删除成功')
                cusinforonclick();
            }else {
                console.log('删除失败')
            }
        }
    }
    // 下面是客户添加效果js
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
            alert('未上传任何图片！');
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
                    console.log('上传成功！');
                }
                else {
                    console.log('上传失败！');
                }
            }
        }
    }
    $("#clearall2").click(function() {
        $("#myfile2").val("");
        $('#imgshow2').css("background-image", "url(../upload/shuruimg.png)");
    });
    function add_cus(obj){
        addimg();
        var addofCusId=obj.parentNode.parentNode.children[0].children[1].children[0].innerHTML;
        var addofCustomerName=obj.parentNode.parentNode.children[1].children[1].children[0].innerHTML;
        var addofCustomerPwd=obj.parentNode.parentNode.children[2].children[1].children[0].innerHTML;
        var addofCustomertruename=obj.parentNode.parentNode.children[3].children[1].children[0].innerHTML;
        var addofCustomerSex=obj.parentNode.parentNode.children[4].children[1].children[0].innerHTML;
        var addofCustomerTel=obj.parentNode.parentNode.children[5].children[1].children[0].innerHTML;
        var addofCustomerAddr=obj.parentNode.parentNode.children[6].children[1].children[0].innerHTML;
        var addofCustomerRegTime=obj.parentNode.parentNode.children[7].children[1].children[0].innerHTML;
        var addofCustomerQuer=obj.parentNode.parentNode.children[8].children[1].value;
        var addofCustomerAnswer=obj.parentNode.parentNode.children[9].children[1].children[0].innerHTML;
        var parese='customerid=' + addofCusId + '&customername=' + addofCustomerName+ '&customerpwd='+ addofCustomerPwd +'&customertruename=' + addofCustomertruename +'&customersex='+addofCustomerSex+'&customertel='+addofCustomerTel +'&customeraddr='+addofCustomerAddr+'&customerregtime='+addofCustomerRegTime+'&customerquer='+addofCustomerQuer+'&customeranswer='+addofCustomerAnswer;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/addcus');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(parese);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                console.log('添加成功')
            }else {
                console.log('添加失败')
            }
        }
    }
    function clearadd_cus() {
        var tab_cusadd=document.getElementById('tab_cusadd');
        tab_cusadd.style.display='none';
        cusinforonclick();
    }
    // 下面是客户详情效果js
    function show3(file) {
        // FileReader对象用于读取文件
        var reader = new FileReader();
        //读取File对象的数据
        reader.onload = function(e) {
            $('#imgshow3').css("background-image", "url(" + e.target.result + ")");
        }
        reader.readAsDataURL(file.files[0]);
    }
    function addimg3() {
        var form=document.getElementById('uploadimg3');
        var myfile = $("#myfile3")[0].files;
        //获取文件上传文件的文件名和扩展名
        if (myfile[0] == undefined) {
            alert('未上传任何文件！');
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
                    console.log('上传成功！');
                }
                else {
                    console.log('上传失败！');
                }
            }
        }
    }
    $("#clearall3").click(function() {
        $("#myfile3").val("");
        $('#imgshow3').css("background-image", "url(../upload/shuruimg.png)");
    });
    function upload_cus() {
        addimg3();
        var selectofCusId=document.getElementById('selectofCusId').innerHTML;
        var selectofCustomerName=document.getElementById('selectofCustomerName').innerHTML;
        var selectofCustomerPwd=document.getElementById('selectofCustomerPwd').innerHTML;
        var selectofCustomertruename=document.getElementById('selectofCustomertruename').innerHTML;
        var selectofCustomerSex=document.getElementById('selectofCustomerSex').innerHTML;
        var selectofCustomerTel=document.getElementById('selectofCustomerTel').innerHTML;
        var selectofCustomerAddr=document.getElementById('selectofCustomerAddr').innerHTML;
        var selectofCustomerRegTime=document.getElementById('selectofCustomerRegTime').innerHTML;
        var selectofCustomerQuer=document.getElementById('selectofCustomerQuer').innerHTML;
        var selectofCustomerAnswer=document.getElementById('selectofCustomerAnswer').innerHTML;
        var parese='customerid=' + selectofCusId + '&customername=' + selectofCustomerName+ '&customerpwd='+ selectofCustomerPwd +'&customertruename=' + selectofCustomertruename +'&customersex='+selectofCustomerSex+'&customertel='+selectofCustomerTel +'&customeraddr='+selectofCustomerAddr+'&customerregtime='+selectofCustomerRegTime+'&customerquer='+selectofCustomerQuer+'&customeranswer='+selectofCustomerAnswer;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/updateTbCustomer');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parese);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log("修改成功");
            }
            else{
                alert("更新失败");
                console.log("失败")
                return;
            }
        }
    }
    function clearupdata_cus() {
        var tab_cusinfor=document.getElementById('tab_cusinfor');
        tab_cusinfor.style.display='block';
        var tab_selectcus=document.getElementById('tab_selectcus');
        tab_selectcus.style.display='none';
    }
    //修改功能中根据id查数据
    function selectidinforcus(){
        var top_input_cusupdata=document.getElementById('top_input_cusupdata');
        var parse='customerid='+top_input_cusupdata.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectids');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var tab_two_cusinfor1=document.getElementById('tab_two_cusinfor1');
            var tab_two_data_cusinfor1=document.getElementById('tab_two_data_cusinfor1');
            var CustomerID=document.getElementById('CustomerID2_2_1');
            var CustomerName=document.getElementById('CustomerName2_2_1');
            var CustomerPwd=document.getElementById('CustomerPwd2_2_1');
            var Customertruename=document.getElementById('Customertruename2_2_1');
            var CustomerSex=document.getElementById('CustomerSex2_2_1');
            var CustomerTel=document.getElementById('CustomerTel2_2_1');
            var CustomerAddr=document.getElementById('CustomerAddr2_2_1');
            var CustomerRegTime=document.getElementById('CustomerRegTime2_2_1');
            var CustomerQuer=document.getElementById('CustomerQuer2_2_1');
            var CustomerAnswer=document.getElementById('CustomerAnswer2_2_1');
            if(res.total==0){
                console.log("查询成功");
                tab_two_cusinfor1.style.display='block';
                tab_two_data_cusinfor1.style.display='block';
                CustomerID.value=res.rows[0].customerid;
                CustomerName.value=res.rows[0].customername;
                CustomerPwd.value=res.rows[0].customerpwd;
                Customertruename.value=res.rows[0].customertruename;
                CustomerSex.value=res.rows[0].customersex;
                CustomerTel.value=res.rows[0].customertel;
                CustomerAddr.value=res.rows[0].customeraddr;
                CustomerRegTime.value=res.rows[0].customerregtime;
                CustomerQuer.value=res.rows[0].customerquer;
                CustomerAnswer.value=res.rows[0].customeranswer;
            }
            else{
                tab_two_cusinfor1.style.display='none';
                tab_two_data_cusinfor1.style.display='none';
                alert("查询失败");
                console.log("查询失败")
                return;
            }
        }
    }
    //删除功能中根据id查数据
    function selectidinforcus2(){
        var top_input_cusdelete=document.getElementById('top_input_cusdelete');
        var parse='customerid='+top_input_cusdelete.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectids');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var tab_two_cusinfor=document.getElementById('tab_two_cusinfor2');
            var tab_two_data_cusinfor=document.getElementById('tab_two_data_cusinfor2');
            var CustomerID=document.getElementById('CustomerID2_3_1');
            var CustomerName=document.getElementById('CustomerName2_3_1');
            var CustomerPwd=document.getElementById('CustomerPwd2_3_1');
            var Customertruename=document.getElementById('Customertruename2_3_1');
            var CustomerSex=document.getElementById('CustomerSex2_3_1');
            var CustomerTel=document.getElementById('CustomerTel2_3_1');
            var CustomerAddr=document.getElementById('CustomerAddr2_3_1');
            var CustomerRegTime=document.getElementById('CustomerRegTime2_3_1');
            var CustomerQuer=document.getElementById('CustomerQuer2_3_1');
            var CustomerAnswer=document.getElementById('CustomerAnswer2_3_1');
            if(res.total==0){
                console.log("查询成功");
                tab_two_cusinfor.style.display='block';
                tab_two_data_cusinfor.style.display='block';
                CustomerID.value=res.rows[0].customerid;
                CustomerName.value=res.rows[0].customername;
                CustomerPwd.value=res.rows[0].customerpwd;
                Customertruename.value=res.rows[0].customertruename;
                CustomerSex.value=res.rows[0].customersex;
                CustomerTel.value=res.rows[0].customertel;
                CustomerAddr.value=res.rows[0].customeraddr;
                CustomerRegTime.value=res.rows[0].customerregtime;
                CustomerQuer.value=res.rows[0].customerquer;
                CustomerAnswer.value=res.rows[0].customeranswer;
            }
            else{
                tab_two_cusinfor.style.display='none';
                tab_two_data_cusinfor.style.display='none';
                alert("查询失败");
                console.log("查询失败")
                return;
            }
        }
    }
    function updata_cusinfor(obj) {
        var BookId=obj.parentNode.parentNode.children[0].children[0].value;
        var BookTypeId=obj.parentNode.parentNode.children[1].children[0].value;
        var BookName=obj.parentNode.parentNode.children[2].children[0].value;
        var BookPress=obj.parentNode.parentNode.children[3].children[0].value;
        var BookAuthor=obj.parentNode.parentNode.children[4].children[0].value;
        var BookTanslor=obj.parentNode.parentNode.children[5].children[0].value;
        var BookPages=obj.parentNode.parentNode.children[6].children[0].value;
        var BookOutline=obj.parentNode.parentNode.children[8].children[0].value;
        var BookDealmount=obj.parentNode.parentNode.children[9].children[0].value;
        var parese='customerid=' + BookId + '&customername=' + BookTypeId+ '&customerpwd='+ BookName +'&customertruename=' + BookAuthor +'&customersex='+BookTanslor+'&customertel='+BookPrice +'&customeraddr='+BookOutline+'&customerquer='+BookLookmount+'&customeranswer='+BookStoremount;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/updateTbCustomer');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parese);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log("修改成功");
                cusinforonclick();
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function delect_cusinfor(obj) {
        var customerid=obj.parentNode.parentNode.children[0].children[0].value;
        var pareses='customerid='+customerid;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/delete');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                console.log('删除成功')
                // window.location.reload()
                cusinforonclick();
            }else {
                console.log('删除失败')
            }
        }
    }
</script>
<%--bookinfor功能--%>
<script>
    // 重置display:none
    function bookcleardisplay() {
        var tab_bookinfor1_1=document.getElementById('tab_bookinfor1_1');
        var tab_bookinfor1_2=document.getElementById('tab_bookinfor1_2');
        var tab_bookinfor1_3=document.getElementById('tab_bookinfor1_3');
        var tab_bookinfor1_4=document.getElementById('tab_bookinfor1_4');
        var tab_bookinfor1_5=document.getElementById('tab_bookinfor1_5');
        var tab_bookinfor1_6=document.getElementById('tab_bookinfor1_6');
        var tab_bookinfor1_7=document.getElementById('tab_bookinfor1_7');
        var tab_bookinfor1_8=document.getElementById('tab_bookinfor1_8');
        var tab_bookinfor1_9=document.getElementById('tab_bookinfor1_9');
        var tab_bookinfor1_10=document.getElementById('tab_bookinfor1_10');
        tab_bookinfor1_1.style.display='none';
        tab_bookinfor1_2.style.display='none';
        tab_bookinfor1_3.style.display='none';
        tab_bookinfor1_4.style.display='none';
        tab_bookinfor1_5.style.display='none';
        tab_bookinfor1_6.style.display='none';
        tab_bookinfor1_7.style.display='none';
        tab_bookinfor1_8.style.display='none';
        tab_bookinfor1_9.style.display='none';
        tab_bookinfor1_10.style.display='none';
    }
    // 重置color:black
    function bookclearcolor() {
        var tab_bookinfor1_1=document.getElementById('tab_bookinfor1_1');
        var tab_bookinfor1_2=document.getElementById('tab_bookinfor1_2');
        var tab_bookinfor1_3=document.getElementById('tab_bookinfor1_3');
        var tab_bookinfor1_4=document.getElementById('tab_bookinfor1_4');
        var tab_bookinfor1_5=document.getElementById('tab_bookinfor1_5');
        var tab_bookinfor1_6=document.getElementById('tab_bookinfor1_6');
        var tab_bookinfor1_7=document.getElementById('tab_bookinfor1_7');
        var tab_bookinfor1_8=document.getElementById('tab_bookinfor1_8');
        var tab_bookinfor1_9=document.getElementById('tab_bookinfor1_9');
        var tab_bookinfor1_10=document.getElementById('tab_bookinfor1_10');
        tab_bookinfor1_1.style.color='black';
        tab_bookinfor1_2.style.color='black';
        tab_bookinfor1_3.style.color='black';
        tab_bookinfor1_4.style.color='black';
        tab_bookinfor1_5.style.color='black';
        tab_bookinfor1_6.style.color='black';
        tab_bookinfor1_7.style.color='black';
        tab_bookinfor1_8.style.color='black';
        tab_bookinfor1_9.style.color='black';
        tab_bookinfor1_10.style.color='black';
    }
    function getbookinfor() {
        bookcleardisplay();
        bookclearcolor();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
            var paging_num2_bookinfor=document.getElementById('paging_num2_bookinfor');
            //设置最大页数
            paging_num2_bookinfor.innerHTML=maxnum;
            paging_num1_bookinfor.innerHTML='1';
            var num=(res.rows.length)%10;
            for (var i=0;i<res.rows.length&&i<10;i++){
                var BookId=document.getElementById('BookId1_'+(i+1));
                var BookTypeId=document.getElementById('BookTypeId1_'+(i+1));
                var BookName=document.getElementById('BookName1_'+(i+1));
                var BookPress=document.getElementById('BookPress1_'+(i+1));
                var BookPages=document.getElementById('BookPages1_'+(i+1));
                var BookAuthor=document.getElementById('BookAuthor1_'+(i+1));
                var BookTanslor=document.getElementById('BookTanslor1_'+(i+1));
                var BookPrice=document.getElementById('BookPrice1_'+(i+1));
                var BookOutline=document.getElementById('BookOutline1_'+(i+1));
                var BookDealmount=document.getElementById('BookDealmount1_'+(i+1));
                var BookLookmount=document.getElementById('BookLookmount1_'+(i+1));
                var BookStoremount=document.getElementById('BookStoremount1_'+(i+1));
                var tab_bookinfor=document.getElementById('tab_bookinfor1_'+(i+1));
                tab_bookinfor.style.display='block';
                BookId.value=res.rows[i].bookid;
                BookTypeId.value=res.rows[i].booktypeid;
                BookName.value=res.rows[i].bookname;
                BookPress.value=res.rows[i].bookpress;
                BookPages.value=res.rows[i].bookpages;
                BookAuthor.value=res.rows[i].bookauthor;
                BookTanslor.value=res.rows[i].booktanslor;
                BookPrice.value=res.rows[i].bookprice;
                BookOutline.value=res.rows[i].bookoutline;
                BookDealmount.value=res.rows[i].bookdealmount;
                BookLookmount.value=res.rows[i].booklookmount;
                BookStoremount.value=res.rows[i].bookstoremount;
                if(res.rows[i].bookstoremount <'10'){
                    BookId.style.color='red';
                    BookTypeId.style.color='red';
                    BookName.style.color='red';
                    BookPress.style.color='red';
                    BookPages.style.color='red';
                    BookAuthor.style.color='red';
                    BookTanslor.style.color='red';
                    BookPrice.style.color='red';
                    BookOutline.style.color='red';
                    BookDealmount.style.color='red';
                    BookLookmount.style.color='red';
                    BookStoremount.style.color='red';
                }else if(res.rows[i].bookstoremount >'10'){
                    BookId.style.color='black';
                    BookTypeId.style.color='black';
                    BookName.style.color='black';
                    BookPress.style.color='black';
                    BookPages.style.color='black';
                    BookAuthor.style.color='black';
                    BookTanslor.style.color='black';
                    BookPrice.style.color='black';
                    BookOutline.style.color='black';
                    BookDealmount.style.color='black';
                    BookLookmount.style.color='black';
                    BookStoremount.style.color='black';
                }
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
            }
        }
    }
    function fistnum_bookinfor() {
        bookcleardisplay();
        bookclearcolor();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
            var paging_num2_bookinfor=document.getElementById('paging_num2_bookinfor');
            //设置最大页数
            paging_num2_bookinfor.innerHTML=maxnum;
            paging_num1_bookinfor.innerHTML='1';
            for (var i=0;i<res.rows.length&&i<10;i++){
                var BookId=document.getElementById('BookId1_'+(i+1));
                var BookTypeId=document.getElementById('BookTypeId1_'+(i+1));
                var BookName=document.getElementById('BookName1_'+(i+1));
                var BookPress=document.getElementById('BookPress1_'+(i+1));
                var BookPages=document.getElementById('BookPages1_'+(i+1));
                var BookAuthor=document.getElementById('BookAuthor1_'+(i+1));
                var BookTanslor=document.getElementById('BookTanslor1_'+(i+1));
                var BookPrice=document.getElementById('BookPrice1_'+(i+1));
                var BookOutline=document.getElementById('BookOutline1_'+(i+1));
                var BookDealmount=document.getElementById('BookDealmount1_'+(i+1));
                var BookLookmount=document.getElementById('BookLookmount1_'+(i+1));
                var BookStoremount=document.getElementById('BookStoremount1_'+(i+1));
                var tab_bookinfor=document.getElementById('tab_bookinfor1_'+(i+1));
                tab_bookinfor.style.display='block';
                BookId.value=res.rows[i].bookid;
                BookTypeId.value=res.rows[i].booktypeid;
                BookName.value=res.rows[i].bookname;
                BookPress.value=res.rows[i].bookpress;
                BookPages.value=res.rows[i].bookpages;
                BookAuthor.value=res.rows[i].bookauthor;
                BookTanslor.value=res.rows[i].booktanslor;
                BookPrice.value=res.rows[i].bookprice;
                BookOutline.value=res.rows[i].bookoutline;
                BookDealmount.value=res.rows[i].bookdealmount;
                BookLookmount.value=res.rows[i].booklookmount;
                BookStoremount.value=res.rows[i].bookstoremount;
                if(res.rows[i].bookstoremount <'10'){
                    BookId.style.color='red';
                    BookTypeId.style.color='red';
                    BookName.style.color='red';
                    BookPress.style.color='red';
                    BookPages.style.color='red';
                    BookAuthor.style.color='red';
                    BookTanslor.style.color='red';
                    BookPrice.style.color='red';
                    BookOutline.style.color='red';
                    BookDealmount.style.color='red';
                    BookLookmount.style.color='red';
                    BookStoremount.style.color='red';
                }else if(res.rows[i].bookstoremount >'10'){
                    BookId.style.color='black';
                    BookTypeId.style.color='black';
                    BookName.style.color='black';
                    BookPress.style.color='black';
                    BookPages.style.color='black';
                    BookAuthor.style.color='black';
                    BookTanslor.style.color='black';
                    BookPrice.style.color='black';
                    BookOutline.style.color='black';
                    BookDealmount.style.color='black';
                    BookLookmount.style.color='black';
                    BookStoremount.style.color='black';
                }
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
            }
        }
    }
    function upnum_bookinfor() {
        bookcleardisplay();
        bookclearcolor();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取当前页数
            var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
            var pagenum=paging_num1_bookinfor.innerHTML-1;
            //判定当前页数是否在第一页
            if(pagenum>0) {
                pagenum=pagenum-1;
            }
            else{
                pagenum=pagenum
            }
            paging_num1_bookinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var BookId=document.getElementById('BookId1_'+(i+1));
                var BookTypeId=document.getElementById('BookTypeId1_'+(i+1));
                var BookName=document.getElementById('BookName1_'+(i+1));
                var BookPress=document.getElementById('BookPress1_'+(i+1));
                var BookPages=document.getElementById('BookPages1_'+(i+1));
                var BookAuthor=document.getElementById('BookAuthor1_'+(i+1));
                var BookTanslor=document.getElementById('BookTanslor1_'+(i+1));
                var BookPrice=document.getElementById('BookPrice1_'+(i+1));
                var BookOutline=document.getElementById('BookOutline1_'+(i+1));
                var BookDealmount=document.getElementById('BookDealmount1_'+(i+1));
                var BookLookmount=document.getElementById('BookLookmount1_'+(i+1));
                var BookStoremount=document.getElementById('BookStoremount1_'+(i+1));
                var tab_bookinfor=document.getElementById('tab_bookinfor1_'+(i+1));
                tab_bookinfor.style.display='block';
                BookId.value=res.rows[j].bookid;
                BookTypeId.value=res.rows[j].booktypeid;
                BookName.value=res.rows[j].bookname;
                BookPress.value=res.rows[j].bookpress;
                BookPages.value=res.rows[j].bookpages;
                BookAuthor.value=res.rows[j].bookauthor;
                BookTanslor.value=res.rows[j].booktanslor;
                BookPrice.value=res.rows[j].bookprice;
                BookOutline.value=res.rows[j].bookoutline;
                BookDealmount.value=res.rows[j].bookdealmount;
                BookLookmount.value=res.rows[j].booklookmount;
                BookStoremount.value=res.rows[j].bookstoremount;
                if(res.rows[j].bookstoremount <'10'){
                    BookId.style.color='red';
                    BookTypeId.style.color='red';
                    BookName.style.color='red';
                    BookPress.style.color='red';
                    BookPages.style.color='red';
                    BookAuthor.style.color='red';
                    BookTanslor.style.color='red';
                    BookPrice.style.color='red';
                    BookOutline.style.color='red';
                    BookDealmount.style.color='red';
                    BookLookmount.style.color='red';
                    BookStoremount.style.color='red';
                }else if(res.rows[j].bookstoremount >'10'){
                    BookId.style.color='black';
                    BookTypeId.style.color='black';
                    BookName.style.color='black';
                    BookPress.style.color='black';
                    BookPages.style.color='black';
                    BookAuthor.style.color='black';
                    BookTanslor.style.color='black';
                    BookPrice.style.color='black';
                    BookOutline.style.color='black';
                    BookDealmount.style.color='black';
                    BookLookmount.style.color='black';
                    BookStoremount.style.color='black';
                }
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
    function downnum_bookinfor() {
        bookcleardisplay();
        bookclearcolor();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            //获取当前页数
            var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
            var pagenum=paging_num1_bookinfor.innerHTML-1;
            //判定当前页数是否在最后一页
            if(pagenum<maxnum-1) {
                pagenum=pagenum+1;
            }
            else{
                pagenum=pagenum
            }
            paging_num1_bookinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var BookId=document.getElementById('BookId1_'+(i+1));
                var BookTypeId=document.getElementById('BookTypeId1_'+(i+1));
                var BookName=document.getElementById('BookName1_'+(i+1));
                var BookPress=document.getElementById('BookPress1_'+(i+1));
                var BookPages=document.getElementById('BookPages1_'+(i+1));
                var BookAuthor=document.getElementById('BookAuthor1_'+(i+1));
                var BookTanslor=document.getElementById('BookTanslor1_'+(i+1));
                var BookPrice=document.getElementById('BookPrice1_'+(i+1));
                var BookOutline=document.getElementById('BookOutline1_'+(i+1));
                var BookDealmount=document.getElementById('BookDealmount1_'+(i+1));
                var BookLookmount=document.getElementById('BookLookmount1_'+(i+1));
                var BookStoremount=document.getElementById('BookStoremount1_'+(i+1));
                var tab_bookinfor=document.getElementById('tab_bookinfor1_'+(i+1));
                tab_bookinfor.style.display='block';
                BookId.value=res.rows[j].bookid;
                BookTypeId.value=res.rows[j].booktypeid;
                BookName.value=res.rows[j].bookname;
                BookPress.value=res.rows[j].bookpress;
                BookPages.value=res.rows[j].bookpages;
                BookAuthor.value=res.rows[j].bookauthor;
                BookTanslor.value=res.rows[j].booktanslor;
                BookPrice.value=res.rows[j].bookprice;
                BookOutline.value=res.rows[j].bookoutline;
                BookDealmount.value=res.rows[j].bookdealmount;
                BookLookmount.value=res.rows[j].booklookmount;
                BookStoremount.value=res.rows[j].bookstoremount;
                if(res.rows[j].bookstoremount <'10'){
                    BookId.style.color='red';
                    BookTypeId.style.color='red';
                    BookName.style.color='red';
                    BookPress.style.color='red';
                    BookPages.style.color='red';
                    BookAuthor.style.color='red';
                    BookTanslor.style.color='red';
                    BookPrice.style.color='red';
                    BookOutline.style.color='red';
                    BookDealmount.style.color='red';
                    BookLookmount.style.color='red';
                    BookStoremount.style.color='red';
                }else if(res.rows[j].bookstoremount >'10'){
                    BookId.style.color='black';
                    BookTypeId.style.color='black';
                    BookName.style.color='black';
                    BookPress.style.color='black';
                    BookPages.style.color='black';
                    BookAuthor.style.color='black';
                    BookTanslor.style.color='black';
                    BookPrice.style.color='black';
                    BookOutline.style.color='black';
                    BookDealmount.style.color='black';
                    BookLookmount.style.color='black';
                    BookStoremount.style.color='black';
                }
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
    function lastnum_bookinfor() {
        bookcleardisplay();
        bookclearcolor();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取最大页数
            var maxnum=Math.ceil(res.rows.length/10);
            //获取当前页数
            var pagenum=maxnum-1;
            var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
            paging_num1_bookinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var BookId=document.getElementById('BookId1_'+(i+1));
                var BookTypeId=document.getElementById('BookTypeId1_'+(i+1));
                var BookName=document.getElementById('BookName1_'+(i+1));
                var BookPress=document.getElementById('BookPress1_'+(i+1));
                var BookPages=document.getElementById('BookPages1_'+(i+1));
                var BookAuthor=document.getElementById('BookAuthor1_'+(i+1));
                var BookTanslor=document.getElementById('BookTanslor1_'+(i+1));
                var BookPrice=document.getElementById('BookPrice1_'+(i+1));
                var BookOutline=document.getElementById('BookOutline1_'+(i+1));
                var BookDealmount=document.getElementById('BookDealmount1_'+(i+1));
                var BookLookmount=document.getElementById('BookLookmount1_'+(i+1));
                var BookStoremount=document.getElementById('BookStoremount1_'+(i+1));
                var tab_bookinfor=document.getElementById('tab_bookinfor1_'+(i+1));
                tab_bookinfor.style.display='block';
                BookId.value=res.rows[j].bookid;
                BookTypeId.value=res.rows[j].booktypeid;
                BookName.value=res.rows[j].bookname;
                BookPress.value=res.rows[j].bookpress;
                BookPages.value=res.rows[j].bookpages;
                BookAuthor.value=res.rows[j].bookauthor;
                BookTanslor.value=res.rows[j].booktanslor;
                BookPrice.value=res.rows[j].bookprice;
                BookOutline.value=res.rows[j].bookoutline;
                BookDealmount.value=res.rows[j].bookdealmount;
                BookLookmount.value=res.rows[j].booklookmount;
                BookStoremount.value=res.rows[j].bookstoremount;
                if(res.rows[j].bookstoremount <'10'){
                    BookId.style.color='red';
                    BookTypeId.style.color='red';
                    BookName.style.color='red';
                    BookPress.style.color='red';
                    BookPages.style.color='red';
                    BookAuthor.style.color='red';
                    BookTanslor.style.color='red';
                    BookPrice.style.color='red';
                    BookOutline.style.color='red';
                    BookDealmount.style.color='red';
                    BookLookmount.style.color='red';
                    BookStoremount.style.color='red';
                }else if(res.rows[j].bookstoremount >'10'){
                    BookId.style.color='black';
                    BookTypeId.style.color='black';
                    BookName.style.color='black';
                    BookPress.style.color='black';
                    BookPages.style.color='black';
                    BookAuthor.style.color='black';
                    BookTanslor.style.color='black';
                    BookPrice.style.color='black';
                    BookOutline.style.color='black';
                    BookDealmount.style.color='black';
                    BookLookmount.style.color='black';
                    BookStoremount.style.color='black';
                }
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
    function gonum_bookinfor() {
        bookcleardisplay();
        bookclearcolor();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取最大页数
            var maxnum=Math.ceil(res.rows.length/10);
            //获取输入的跳转页数
            var shownum_bookinfor=document.getElementById('shownum_bookinfor').value-1;
            var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
            paging_num1_bookinfor.innerHTML=(shownum_bookinfor+1);
            var pagenum=shownum_bookinfor;
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var BookId=document.getElementById('BookId1_'+(i+1));
                var BookTypeId=document.getElementById('BookTypeId1_'+(i+1));
                var BookName=document.getElementById('BookName1_'+(i+1));
                var BookPress=document.getElementById('BookPress1_'+(i+1));
                var BookPages=document.getElementById('BookPages1_'+(i+1));
                var BookAuthor=document.getElementById('BookAuthor1_'+(i+1));
                var BookTanslor=document.getElementById('BookTanslor1_'+(i+1));
                var BookPrice=document.getElementById('BookPrice1_'+(i+1));
                var BookOutline=document.getElementById('BookOutline1_'+(i+1));
                var BookDealmount=document.getElementById('BookDealmount1_'+(i+1));
                var BookLookmount=document.getElementById('BookLookmount1_'+(i+1));
                var BookStoremount=document.getElementById('BookStoremount1_'+(i+1));
                var tab_bookinfor=document.getElementById('tab_bookinfor1_'+(i+1));
                tab_bookinfor.style.display='block';
                BookId.value=res.rows[j].bookid;
                BookTypeId.value=res.rows[j].booktypeid;
                BookName.value=res.rows[j].bookname;
                BookPress.value=res.rows[j].bookpress;
                BookPages.value=res.rows[j].bookpages;
                BookAuthor.value=res.rows[j].bookauthor;
                BookTanslor.value=res.rows[j].booktanslor;
                BookPrice.value=res.rows[j].bookprice;
                BookOutline.value=res.rows[j].bookoutline;
                BookDealmount.value=res.rows[j].bookdealmount;
                BookLookmount.value=res.rows[j].booklookmount;
                BookStoremount.value=res.rows[j].bookstoremount;
                if(res.rows[j].bookstoremount <'10'){
                    BookId.style.color='red';
                    BookTypeId.style.color='red';
                    BookName.style.color='red';
                    BookPress.style.color='red';
                    BookPages.style.color='red';
                    BookAuthor.style.color='red';
                    BookTanslor.style.color='red';
                    BookPrice.style.color='red';
                    BookOutline.style.color='red';
                    BookDealmount.style.color='red';
                    BookLookmount.style.color='red';
                    BookStoremount.style.color='red';
                }else if(res.rows[j].bookstoremount >'10'){
                    BookId.style.color='black';
                    BookTypeId.style.color='black';
                    BookName.style.color='black';
                    BookPress.style.color='black';
                    BookPages.style.color='black';
                    BookAuthor.style.color='black';
                    BookTanslor.style.color='black';
                    BookPrice.style.color='black';
                    BookOutline.style.color='black';
                    BookDealmount.style.color='black';
                    BookLookmount.style.color='black';
                    BookStoremount.style.color='black';
                }
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
    function delect_bookinfor(obj) {
        var bookid=obj.parentNode.parentNode.children[0].children[0].value;
        var pareses='bookid='+bookid;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/deletebookforid');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                console.log('删除成功')
                alert('删除成功');
                // window.location.reload()
                bookinforonclick();
            }else {
                alert('删除失败');
                console.log('删除失败')
            }
        }
    }
    function updata_bookinfor(obj) {
        var BookId=obj.parentNode.parentNode.children[0].children[0].value;
        var BookTypeId=obj.parentNode.parentNode.children[1].children[0].value;
        var BookName=obj.parentNode.parentNode.children[2].children[0].value;
        var BookPress=obj.parentNode.parentNode.children[3].children[0].value;
        var BookAuthor=obj.parentNode.parentNode.children[4].children[0].value;
        var BookTanslor=obj.parentNode.parentNode.children[5].children[0].value;
        var BookPages=obj.parentNode.parentNode.children[6].children[0].value;
        var BookPrice=obj.parentNode.parentNode.children[7].children[0].value;
        var BookOutline=obj.parentNode.parentNode.children[8].children[0].value;
        var BookDealmount=obj.parentNode.parentNode.children[9].children[0].value;
        var BookLookmount=obj.parentNode.parentNode.children[10].children[0].value;
        var BookStoremount=obj.parentNode.parentNode.children[11].children[0].value;
        var parese='bookid=' + BookId + '&booktypeid=' + BookTypeId+ '&bookname='+ BookName +'&bookauthor=' + BookAuthor +'&booktanslor='+BookTanslor+'&bookprice='+BookPrice +'&bookoutline='+BookOutline+'&bookdealmount='+BookDealmount+'&booklookmount='+BookLookmount+'&bookstoremount='+BookStoremount+'&bookpress='+BookPress+'&bookpages='+BookPages;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/updatabook');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parese);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log("修改成功");
                bookinforonclick();
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function select_bookinfor(obj) {
        var tab_bookinfor=document.getElementById('tab_bookinfor');
        tab_bookinfor.style.display='none';
        var tab_selectbook=document.getElementById('tab_selectbook');
        tab_selectbook.style.display='block';
        var BookId=obj.parentNode.parentNode.children[0].children[0].value;
        var parse='BookId='+BookId;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                var BookId=document.getElementById('selectofBookId');
                var BookTypeId=document.getElementById('selectofBookTypeId');
                var BookName=document.getElementById('selectofBookName');
                var BookPress=document.getElementById('selectofBookPress');
                var BookPages=document.getElementById('selectofBookPages');
                var BookAuthor=document.getElementById('selectofBookAuthor');
                var BookTanslor=document.getElementById('selectofBookTanslor');
                var BookPrice=document.getElementById('selectofBookPrice');
                var BookOutline=document.getElementById('selectofBookOutline');
                var BookDealmount=document.getElementById('selectofBookDealmount');
                var BookLookmount=document.getElementById('selectofBookLookmount');
                var BookStoremount=document.getElementById('selectofBookStoremount');
                var imgshow1=document.getElementById('imgshow1');
                var url="url('upload/"+res.rows[0].bookid+".jpg')";
                imgshow1.style.backgroundImage=url;
                BookId.innerHTML=res.rows[0].bookid;
                BookTypeId.innerHTML=res.rows[0].booktypeid;
                BookName.innerHTML=res.rows[0].bookname;
                BookPress.innerHTML=res.rows[0].bookpress;
                BookPages.innerHTML=res.rows[0].bookpages;
                BookAuthor.innerHTML=res.rows[0].bookauthor;
                BookTanslor.innerHTML=res.rows[0].booktanslor;
                BookPrice.innerHTML=res.rows[0].bookprice;
                BookOutline.innerHTML=res.rows[0].bookoutline;
                BookDealmount.innerHTML=res.rows[0].bookdealmount;
                BookLookmount.innerHTML=res.rows[0].booklookmount;
                BookStoremount.innerHTML=res.rows[0].bookstoremount;
            }else {
                console.log('删除失败')
            }
        }
    }
    // 图书详细信息获取
    function upload_book() {
        addimg1();
        var BookId=document.getElementById('selectofBookId').innerHTML;
        var BookTypeId=document.getElementById('selectofBookTypeId').innerHTML;
        var BookName=document.getElementById('selectofBookName').innerHTML;
        var BookPress=document.getElementById('selectofBookPress').innerHTML;
        var BookPages=document.getElementById('selectofBookPages').innerHTML;
        var BookAuthor=document.getElementById('selectofBookAuthor').innerHTML;
        var BookTanslor=document.getElementById('selectofBookTanslor').innerHTML;
        var BookPrice=document.getElementById('selectofBookPrice').innerHTML;
        var BookOutline=document.getElementById('selectofBookOutline').innerHTML;
        var BookDealmount=document.getElementById('selectofBookDealmount').innerHTML;
        var BookLookmount=document.getElementById('selectofBookLookmount').innerHTML;
        var BookStoremount=document.getElementById('selectofBookStoremount').innerHTML;
        var parese='bookid=' + BookId + '&booktypeid=' + BookTypeId+ '&bookname='+ BookName +'&bookauthor=' + BookAuthor +'&booktanslor='+BookTanslor+'&bookprice='+BookPrice +'&bookoutline='+BookOutline+'&bookdealmount='+BookDealmount+'&booklookmount='+BookLookmount+'&bookstoremount='+BookStoremount+'&bookpress='+BookPress+'&bookpages='+BookPages;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/updatabook');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parese);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log("修改成功");
            }
            else{
                alter("更新失败");
                console.log("失败")
                return;
            }
        }
    }
    // 返回按钮
    function clearupdata() {
        var tab_bookinfor=document.getElementById('tab_bookinfor');
        tab_bookinfor.style.display='block';
        var tab_selectbook=document.getElementById('tab_selectbook');
        tab_selectbook.style.display='none';
    }
    function show1(file) {
        // FileReader对象用于读取文件
        var reader = new FileReader();
        //读取File对象的数据
        reader.onload = function(e) {
            $('#imgshow1').css("background-image", "url(" + e.target.result + ")");
        }
        reader.readAsDataURL(file.files[0]);
    }
    function addimg1() {
        var form=document.getElementById('uploadimg1');
        var myfile = $("#myfile1")[0].files;
        //获取文件上传文件的文件名和扩展名
        if (myfile[0] == undefined) {
            console.log("未更改图片");
        } else {
            //异步上传时用到的formDate储存
            var formValue=new FormData(form);
            //异步
            var xhr= new XMLHttpRequest();
            xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/uploadimg');
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
    function gouploadimg() {
        var tab_bookadd=document.getElementById('tab_bookadd');
        var tab_bookadd_img=document.getElementById('tab_bookadd_img');
        tab_bookadd.style.display='none';
        tab_bookadd_img.style.display='block';
    }
    function backinset() {
        var tab_bookadd=document.getElementById('tab_bookadd');
        var tab_bookadd_img=document.getElementById('tab_bookadd_img');
        upimg();
        tab_bookadd.style.display='block';
        tab_bookadd_img.style.display='none';
    }
    function add_book(obj) {
        addimg();
        var addofBookId=obj.parentNode.parentNode.children[0].children[1].children[0].innerHTML;
        var addofBookTypeId=obj.parentNode.parentNode.children[1].children[1].children[0].innerHTML;
        var addofBookName=obj.parentNode.parentNode.children[2].children[1].children[0].innerHTML;
        var addofBookPress=obj.parentNode.parentNode.children[3].children[1].children[0].innerHTML;
        var addofBookAuthor=obj.parentNode.parentNode.children[4].children[1].children[0].innerHTML;
        var addofBookTanslor=obj.parentNode.parentNode.children[5].children[1].children[0].innerHTML;
        var addofBookPrice=obj.parentNode.parentNode.children[6].children[1].children[0].innerHTML;
        var addofBookPages=obj.parentNode.parentNode.children[7].children[1].children[0].innerHTML;
        var addofBookOutline=obj.parentNode.parentNode.children[8].children[1].value;
        var addofBookDealmount=obj.parentNode.parentNode.children[9].children[1].children[0].innerHTML;
        var addofBookLookmount=obj.parentNode.parentNode.children[10].children[1].children[0].innerHTML;
        var addofBookStoremount=obj.parentNode.parentNode.children[11].children[1].children[0].innerHTML;
        var pareses='bookid=' + addofBookId + '&booktypeid=' + addofBookTypeId+ '&bookname='+ addofBookName +'&bookauthor=' + addofBookAuthor +'&booktanslor='+addofBookTanslor+'&bookprice='+addofBookPrice +'&bookoutline='+addofBookOutline+'&bookdealmount='+addofBookDealmount+'&booklookmount='+addofBookLookmount+'&bookstoremount='+addofBookStoremount+'&bookpress='+addofBookPress+'&bookpages='+addofBookPages;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/addbook');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                console.log('添加成功')
                alert('图书添加成功');
                window.location.reload();
            }else {
                alert('发生未知错误，图书添加失败');
                console.log('添加失败')
            }
        }
    }
    function getimgname() {
        var addofBookId =document.getElementById('addofBookId');
        var imgname=document.getElementById('imgname');
        imgname.value=addofBookId.innerHTML;
    }
    // 原先的上传图片的功能
    // function uploadimg(){
    //     var form=document.getElementById('uploadimg');
    //     var filename=document.getElementById('filename');
    //     var upimgnam=document.getElementById('upimgnam');
    //     var formData=new FormData(form);
    //     var temp=null;
    //     var len = filename.files.length;
    //     for (var i = 0; i < len; i++) {
    //         temp = filename.files[i].name;
    //     }
    //     upimgnam.src='upload/'+temp;
    //     var xhr= new XMLHttpRequest();
    //     xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/uploadimg');
    //     // 设置请求参数格式的类型（post请求必须要设置）但是如果是上传的是文件，则这个头就不用设置了，设置了反而有问题
    //     // xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    //     // 发送请求
    //     console.log(formData);
    //     xhr.send(formData);
    //     // 获取服务器端响应的数据
    //     xhr.onload = function () {
    //         let res=JSON.parse(xhr.responseText);
    //         if(res.total==0){
    //             alert('上传图片成功');
    //             console.log('上传成功！');
    //         }
    //         else {
    //             alert('上传失败');
    //             console.log('上传失败！');
    //         }
    //     }
    // }
    function selectidinforbook() {
        var top_input_bookupdata=document.getElementById('top_input_bookupdata');
        var parse='BookId='+top_input_bookupdata.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var tab_two_bookinfor=document.getElementById('tab_two_bookinfor');
            var tab_two_data_bookinfor=document.getElementById('tab_two_data_bookinfor');
            var BookId=document.getElementById('BookId2_1');
            var BookTypeId=document.getElementById('BookTypeId2_1');
            var BookName=document.getElementById('BookName2_1');
            var BookPress=document.getElementById('BookPress2_1');
            var BookPages=document.getElementById('BookPages2_1');
            var BookAuthor=document.getElementById('BookAuthor2_1');
            var BookTanslor=document.getElementById('BookTanslor2_1');
            var BookPrice=document.getElementById('BookPrice2_1');
            var BookOutline=document.getElementById('BookOutline2_1');
            var BookDealmount=document.getElementById('BookDealmount2_1');
            var BookLookmount=document.getElementById('BookLookmount2_1');
            var BookStoremount=document.getElementById('BookStoremount2_1');
            if(res.total==0){
                console.log("查询成功");
                tab_two_bookinfor.style.display='block';
                tab_two_data_bookinfor.style.display='block';
                BookId.value=res.rows[0].bookid;
                BookTypeId.value=res.rows[0].booktypeid;
                BookName.value=res.rows[0].bookname;
                BookPress.value=res.rows[0].bookpress;
                BookPages.value=res.rows[0].bookpages;
                BookAuthor.value=res.rows[0].bookauthor;
                BookTanslor.value=res.rows[0].booktanslor;
                BookPrice.value=res.rows[0].bookprice;
                BookOutline.value=res.rows[0].bookoutline;
                BookDealmount.value=res.rows[0].bookdealmount;
                BookLookmount.value=res.rows[0].booklookmount;
                BookStoremount.value=res.rows[0].bookstoremount;
            }
            else{
                tab_two_bookinfor.style.display='none';
                tab_two_data_bookinfor.style.display='none';
                alert("查询失败");
                console.log("查询失败")
                return;
            }
        }
    }
//没时间优化了，就这样吧
    function selectidinforbook2() {
        var top_input_bookdelete=document.getElementById('top_input_bookdelete');
        var parse='BookId='+top_input_bookdelete.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var tab_two_bookdelete=document.getElementById('tab_two_bookdelete');
            var tab_two_data_bookdelete=document.getElementById('tab_two_data_bookdelete');
            var BookId=document.getElementById('BookId3_1');
            var BookTypeId=document.getElementById('BookTypeId3_1');
            var BookName=document.getElementById('BookName3_1');
            var BookPress=document.getElementById('BookPress3_1');
            var BookPages=document.getElementById('BookPages3_1');
            var BookAuthor=document.getElementById('BookAuthor3_1');
            var BookTanslor=document.getElementById('BookTanslor3_1');
            var BookPrice=document.getElementById('BookPrice3_1');
            var BookOutline=document.getElementById('BookOutline3_1');
            var BookDealmount=document.getElementById('BookDealmount3_1');
            var BookLookmount=document.getElementById('BookLookmount3_1');
            var BookStoremount=document.getElementById('BookStoremount3_1');
            if(res.total==0){
                console.log("查询成功");
                tab_two_bookdelete.style.display='block';
                tab_two_data_bookdelete.style.display='block';
                BookId.value=res.rows[0].bookid;
                BookTypeId.value=res.rows[0].booktypeid;
                BookName.value=res.rows[0].bookname;
                BookPress.value=res.rows[0].bookpress;
                BookPages.value=res.rows[0].bookpages;
                BookAuthor.value=res.rows[0].bookauthor;
                BookTanslor.value=res.rows[0].booktanslor;
                BookPrice.value=res.rows[0].bookprice;
                BookOutline.value=res.rows[0].bookoutline;
                BookDealmount.value=res.rows[0].bookdealmount;
                BookLookmount.value=res.rows[0].booklookmount;
                BookStoremount.value=res.rows[0].bookstoremount;
            }
            else{
                tab_two_bookdelete.style.display='none';
                tab_two_data_bookdelete.style.display='none';
                alert("查询失败");
                console.log("查询失败")
                return;
            }
        }
    }
// 图书信息查询那个页面的搜索功能实现
    function inforbookforselect() {
        bookcleardisplay();
        bookclearcolor();
        var getinput = document.getElementById('top_input_bookinfor');
        var parse1='BookId='+getinput.value;
        var parse2='BookName='+getinput.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse1);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
                var paging_num2_bookinfor=document.getElementById('paging_num2_bookinfor');
                //设置最大页数
                paging_num2_bookinfor.innerHTML=maxnum;
                paging_num1_bookinfor.innerHTML='1';
                var num=(res.rows.length)%10;
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var BookId=document.getElementById('BookId1_'+(i+1));
                    var BookTypeId=document.getElementById('BookTypeId1_'+(i+1));
                    var BookName=document.getElementById('BookName1_'+(i+1));
                    var BookPress=document.getElementById('BookPress1_'+(i+1));
                    var BookPages=document.getElementById('BookPages1_'+(i+1));
                    var BookAuthor=document.getElementById('BookAuthor1_'+(i+1));
                    var BookTanslor=document.getElementById('BookTanslor1_'+(i+1));
                    var BookPrice=document.getElementById('BookPrice1_'+(i+1));
                    var BookOutline=document.getElementById('BookOutline1_'+(i+1));
                    var BookDealmount=document.getElementById('BookDealmount1_'+(i+1));
                    var BookLookmount=document.getElementById('BookLookmount1_'+(i+1));
                    var BookStoremount=document.getElementById('BookStoremount1_'+(i+1));
                    var tab_bookinfor=document.getElementById('tab_bookinfor1_'+(i+1));
                    tab_bookinfor.style.display='block';
                    BookId.value=res.rows[i].bookid;
                    BookTypeId.value=res.rows[i].booktypeid;
                    BookName.value=res.rows[i].bookname;
                    BookPress.value=res.rows[i].bookpress;
                    BookPages.value=res.rows[i].bookpages;
                    BookAuthor.value=res.rows[i].bookauthor;
                    BookTanslor.value=res.rows[i].booktanslor;
                    BookPrice.value=res.rows[i].bookprice;
                    BookOutline.value=res.rows[i].bookoutline;
                    BookDealmount.value=res.rows[i].bookdealmount;
                    BookLookmount.value=res.rows[i].booklookmount;
                    BookStoremount.value=res.rows[i].bookstoremount;
                    if(res.rows[i].bookstoremount <'10'){
                        BookId.style.color='red';
                        BookTypeId.style.color='red';
                        BookName.style.color='red';
                        BookPress.style.color='red';
                        BookPages.style.color='red';
                        BookAuthor.style.color='red';
                        BookTanslor.style.color='red';
                        BookPrice.style.color='red';
                        BookOutline.style.color='red';
                        BookDealmount.style.color='red';
                        BookLookmount.style.color='red';
                        BookStoremount.style.color='red';
                    }else if(res.rows[i].bookstoremount >'10'){
                        BookId.style.color='black';
                        BookTypeId.style.color='black';
                        BookName.style.color='black';
                        BookPress.style.color='black';
                        BookPages.style.color='black';
                        BookAuthor.style.color='black';
                        BookTanslor.style.color='black';
                        BookPrice.style.color='black';
                        BookOutline.style.color='black';
                        BookDealmount.style.color='black';
                        BookLookmount.style.color='black';
                        BookStoremount.style.color='black';
                    }
                }
                console.log("id查询成功")
            }
            else{
                var xhr2 = new XMLHttpRequest();
                xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectname');
                // 设置请求参数格式的类型（post请求必须要设置）
                xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                // 发送请求
                xhr2.send(parse2);
                // 获取服务器端响应的数据
                xhr2.onload = function () {
                    let res2=JSON.parse(xhr2.responseText);
                    if(res2.total==0){
                        var maxnum=Math.ceil(res2.rows.length/10);
                        var paging_num1_bookinfor=document.getElementById('paging_num1_bookinfor');
                        var paging_num2_bookinfor=document.getElementById('paging_num2_bookinfor');
                        //设置最大页数
                        paging_num2_bookinfor.innerHTML=maxnum;
                        paging_num1_bookinfor.innerHTML='1';
                        var num=(res2.rows.length)%10;
                        for (var i=0;i<res2.rows.length&&i<10;i++){
                            var BookId=document.getElementById('BookId1_'+(i+1));
                            var BookTypeId=document.getElementById('BookTypeId1_'+(i+1));
                            var BookName=document.getElementById('BookName1_'+(i+1));
                            var BookPress=document.getElementById('BookPress1_'+(i+1));
                            var BookPages=document.getElementById('BookPages1_'+(i+1));
                            var BookAuthor=document.getElementById('BookAuthor1_'+(i+1));
                            var BookTanslor=document.getElementById('BookTanslor1_'+(i+1));
                            var BookPrice=document.getElementById('BookPrice1_'+(i+1));
                            var BookOutline=document.getElementById('BookOutline1_'+(i+1));
                            var BookDealmount=document.getElementById('BookDealmount1_'+(i+1));
                            var BookLookmount=document.getElementById('BookLookmount1_'+(i+1));
                            var BookStoremount=document.getElementById('BookStoremount1_'+(i+1));
                            var tab_bookinfor=document.getElementById('tab_bookinfor1_'+(i+1));
                            tab_bookinfor.style.display='block';
                            BookId.value=res2.rows[i].bookid;
                            BookTypeId.value=res2.rows[i].booktypeid;
                            BookName.value=res2.rows[i].bookname;
                            BookPress.value=res2.rows[i].bookpress;
                            BookPages.value=res2.rows[i].bookpages;
                            BookAuthor.value=res2.rows[i].bookauthor;
                            BookTanslor.value=res2.rows[i].booktanslor;
                            BookPrice.value=res2.rows[i].bookprice;
                            BookOutline.value=res2.rows[i].bookoutline;
                            BookDealmount.value=res2.rows[i].bookdealmount;
                            BookLookmount.value=res2.rows[i].booklookmount;
                            BookStoremount.value=res2.rows[i].bookstoremount;
                            if(res2.rows[i].bookstoremount <'10'){
                                BookId.style.color='red';
                                BookTypeId.style.color='red';
                                BookName.style.color='red';
                                BookPress.style.color='red';
                                BookPages.style.color='red';
                                BookAuthor.style.color='red';
                                BookTanslor.style.color='red';
                                BookPrice.style.color='red';
                                BookOutline.style.color='red';
                                BookDealmount.style.color='red';
                                BookLookmount.style.color='red';
                                BookStoremount.style.color='red';
                            }else if(res2.rows[i].bookstoremount >'10'){
                                BookId.style.color='black';
                                BookTypeId.style.color='black';
                                BookName.style.color='black';
                                BookPress.style.color='black';
                                BookPages.style.color='black';
                                BookAuthor.style.color='black';
                                BookTanslor.style.color='black';
                                BookPrice.style.color='black';
                                BookOutline.style.color='black';
                                BookDealmount.style.color='black';
                                BookLookmount.style.color='black';
                                BookStoremount.style.color='black';
                            }
                        }
                        console.log("name查询成功")
                    }
                    else{
                        alert("查询失败");
                        console.log("查询失败")
                        return;
                    }
                }
            }
        }
    }
</script>
<%--booktype功能--%>
<script>
    function booktypecleardisplay() {
        var tab_booktypeinfor4_1=document.getElementById('tab_booktypeinfor4_1');
        var tab_booktypeinfor4_2=document.getElementById('tab_booktypeinfor4_2');
        var tab_booktypeinfor4_3=document.getElementById('tab_booktypeinfor4_3');
        var tab_booktypeinfor4_4=document.getElementById('tab_booktypeinfor4_4');
        var tab_booktypeinfor4_5=document.getElementById('tab_booktypeinfor4_5');
        var tab_booktypeinfor4_6=document.getElementById('tab_booktypeinfor4_6');
        var tab_booktypeinfor4_7=document.getElementById('tab_booktypeinfor4_7');
        var tab_booktypeinfor4_8=document.getElementById('tab_booktypeinfor4_8');
        var tab_booktypeinfor4_9=document.getElementById('tab_booktypeinfor4_9');
        var tab_booktypeinfor4_10=document.getElementById('tab_booktypeinfor4_10');
        tab_booktypeinfor4_1.style.display='none';
        tab_booktypeinfor4_2.style.display='none';
        tab_booktypeinfor4_3.style.display='none';
        tab_booktypeinfor4_4.style.display='none';
        tab_booktypeinfor4_5.style.display='none';
        tab_booktypeinfor4_6.style.display='none';
        tab_booktypeinfor4_7.style.display='none';
        tab_booktypeinfor4_8.style.display='none';
        tab_booktypeinfor4_9.style.display='none';
        tab_booktypeinfor4_10.style.display='none';
    }
    function getbooktypeinfor() {
        booktypecleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1_booktypeinfor=document.getElementById('paging_num1_booktypeinfor');
            var paging_num2_booktypeinfor=document.getElementById('paging_num2_booktypeinfor');
            //设置最大页数
            paging_num2_booktypeinfor.innerHTML=maxnum;
            paging_num1_booktypeinfor.innerHTML='1';
            var num=(res.rows.length)%10;
            for (var i=0;i<res.rows.length&&i<10;i++){
                var booktypeid=document.getElementById('booktypeid4_'+(i+1));
                var booktypename=document.getElementById('booktypename4_'+(i+1));
                var tab_booktypeinfor=document.getElementById('tab_booktypeinfor4_'+(i+1));
                tab_booktypeinfor.style.display='block';
                booktypeid.value=res.rows[i].booktypeid;
                booktypename.value=res.rows[i].booktypename;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function fistnum_booktypeinfor() {
        booktypecleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1_booktypeinfor=document.getElementById('paging_num1_booktypeinfor');
            var paging_num2_booktypeinfor=document.getElementById('paging_num2_booktypeinfor');
            //设置最大页数
            paging_num2_booktypeinfor.innerHTML=maxnum;
            paging_num1_booktypeinfor.innerHTML='1';
            for (var i=0;i<res.rows.length&&i<10;i++){
                var booktypeid=document.getElementById('booktypeid4_'+(i+1));
                var booktypename=document.getElementById('booktypename4_'+(i+1));
                var tab_booktypeinfor=document.getElementById('tab_booktypeinfor4_'+(i+1));
                tab_booktypeinfor.style.display='block';
                booktypeid.value=res.rows[i].booktypeid;
                booktypename.value=res.rows[i].booktypename;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
            }
        }
    }
    function upnum_booktypeinfor() {
        booktypecleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取当前页数
            var paging_num1_booktypeinfor=document.getElementById('paging_num1_booktypeinfor');
            var pagenum=paging_num1_booktypeinfor.innerHTML-1;
            //判定当前页数是否在第一页
            if(pagenum>0) {
                pagenum=pagenum-1;
            }
            else{
                pagenum=pagenum
            }
            paging_num1_booktypeinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var booktypeid=document.getElementById('booktypeid4_'+(i+1));
                var booktypename=document.getElementById('booktypename4_'+(i+1));
                var tab_booktypeinfor=document.getElementById('tab_booktypeinfor4_'+(i+1));
                tab_booktypeinfor.style.display='block';
                booktypeid.value=res.rows[j].booktypeid;
                booktypename.value=res.rows[j].booktypename;
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
    function downnum_booktypeinfor() {
        booktypecleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            //获取当前页数
            var paging_num1_booktypeinfor=document.getElementById('paging_num1_booktypeinfor');
            var pagenum=paging_num1_booktypeinfor.innerHTML-1;
            //判定当前页数是否在最后一页
            if(pagenum<maxnum-1) {
                pagenum=pagenum+1;
            }
            else{
                pagenum=pagenum
            }
            paging_num1_booktypeinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var booktypeid=document.getElementById('booktypeid4_'+(i+1));
                var booktypename=document.getElementById('booktypename4_'+(i+1));
                var tab_booktypeinfor=document.getElementById('tab_booktypeinfor4_'+(i+1));
                tab_booktypeinfor.style.display='block';
                booktypeid.value=res.rows[j].booktypeid;
                booktypename.value=res.rows[j].booktypename;
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
    function lastnum_booktypeinfor() {
        booktypecleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取最大页数
            var maxnum=Math.ceil(res.rows.length/10);
            //获取当前页数
            var pagenum=maxnum-1;
            var paging_num1_booktypeinfor=document.getElementById('paging_num1_booktypeinfor');
            paging_num1_booktypeinfor.innerHTML=(pagenum+1);
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var booktypeid=document.getElementById('booktypeid4_'+(i+1));
                var booktypename=document.getElementById('booktypename4_'+(i+1));
                var tab_booktypeinfor=document.getElementById('tab_booktypeinfor4_'+(i+1));
                tab_booktypeinfor.style.display='block';
                booktypeid.value=res.rows[j].booktypeid;
                booktypename.value=res.rows[j].booktypename;
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
    function gonum_booktypeinfor() {
        booktypecleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            //获取最大页数
            var maxnum=Math.ceil(res.rows.length/10);
            //获取输入的跳转页数
            var shownum_booktypeinfor=document.getElementById('shownum_booktypeinfor').value-1;
            var paging_num1_booktypeinfor=document.getElementById('paging_num1_booktypeinfor');
            paging_num1_booktypeinfor.innerHTML=(shownum_booktypeinfor+1);
            var pagenum=shownum_booktypeinfor;
            for (var i=0;i<res.rows.length&&i<10;i++){
                var j=(pagenum*10)+i;
                var booktypeid=document.getElementById('     booktypeid4_'+(i+1));
                var booktypename=document.getElementById('booktypename4_'+(i+1));
                var tab_booktypeinfor=document.getElementById('tab_booktypeinfor4_'+(i+1));
                tab_booktypeinfor.style.display='block';
                booktypeid.value=res.rows[j].booktypeid;
                booktypename.value=res.rows[j].booktypename;
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
    function booktypedeleteaction(obj) {
        var id=obj.parentNode.parentNode.children[0].children[0].value;
        var pareses='booktypeid='+id;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/deletebooktypeforid');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                console.log('删除成功');
                alert("删除成功");
                booktypeinforonclick();
            }else {
                console.log('删除失败')
                alert("删除失败");
            }
        }
    }
    function booktypeupdataaction(obj) {
        var booktypeid=obj.parentNode.parentNode.children[0].children[0].value;
        var booktypename=obj.parentNode.parentNode.children[1].children[0].value;
        var pareses='booktypeid='+booktypeid+'&booktypename='+booktypename;
        console.log(pareses);
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/updatabooktype');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                console.log('更新成功');
                alert("更新成功");
                booktypeinforonclick();
            }else {
                console.log('更新失败')
                alert("更新失败");
            }
        }
    }
    function booktypeaddaction(obj) {
        var addofBookTypeId=obj.parentNode.parentNode.children[0].children[0].value;
        var addofBookTypeName=obj.parentNode.parentNode.children[1].children[0].value;
        var pareses='booktypeid=' + addofBookTypeId + '&booktypename=' + addofBookTypeName;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/addbooktype');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText)
            if(res.total==0){
                alert('添加成功');
            }else {
                alert('添加失败');
            }
            if(xhr.status == 500){
                alert("该编号已拥有，添加失败！");
            }
        }
    }
    function inforbooktypeforselect() {
        booktypecleardisplay();
        var getinput = document.getElementById('top_input_booktypeinfor');
        var parse1='BookTypeId='+getinput.value;
        var parse2='BookTypeName='+getinput.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse1);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num1_booktypeinfor=document.getElementById('paging_num1_booktypeinfor');
                var paging_num2_booktypeinfor=document.getElementById('paging_num2_booktypeinfor');
                //设置最大页数
                paging_num2_booktypeinfor.innerHTML=maxnum;
                paging_num1_booktypeinfor.innerHTML='1';
                var num=(res.rows.length)%10;
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var booktypeid=document.getElementById('booktypeid4_'+(i+1));
                    var booktypename=document.getElementById('booktypename4_'+(i+1));
                    var tab_booktypeinfor=document.getElementById('tab_booktypeinfor4_'+(i+1));
                    tab_booktypeinfor.style.display='block';
                    booktypeid.value=res.rows[i].booktypeid;
                    booktypename.value=res.rows[i].booktypename;
                }
                console.log("id查询成功")
            }
            else{
                var xhr2 = new XMLHttpRequest();
                xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectname');
                // 设置请求参数格式的类型（post请求必须要设置）
                xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                // 发送请求
                xhr2.send(parse2);
                // 获取服务器端响应的数据
                xhr2.onload = function () {
                    let res2=JSON.parse(xhr2.responseText);
                    if(res2.total==0){
                        var maxnum=Math.ceil(res2.rows.length/10);
                        var paging_num1_booktypeinfor=document.getElementById('paging_num1_booktypeinfor');
                        var paging_num2_booktypeinfor=document.getElementById('paging_num2_booktypeinfor');
                        //设置最大页数
                        paging_num2_booktypeinfor.innerHTML=maxnum;
                        paging_num1_booktypeinfor.innerHTML='1';
                        var num=(res2.rows.length)%10;
                        for (var i=0;i<res2.rows.length&&i<10;i++){
                            var booktypeid=document.getElementById('booktypeid4_'+(i+1));
                            var booktypename=document.getElementById('booktypename4_'+(i+1));
                            var tab_booktypeinfor=document.getElementById('tab_booktypeinfor4_'+(i+1));
                            tab_booktypeinfor.style.display='block';
                            booktypeid.value=res.rows[i].booktypeid;
                            booktypename.value=res.rows[i].booktypename;
                        }
                        console.log("name查询成功")
                    }
                    else{
                        alert("查询失败");
                        console.log("查询失败")
                        return;
                    }
                }
            }
        }
    }
    function selectidinforbooktype() {
        var top_input_booktypeupdata=document.getElementById('top_input_booktypeupdata');
        var parse='BookTypeId='+top_input_booktypeupdata.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var tab_two_booktypeinfor=document.getElementById('tab_two_booktypeinfor');
            var tab_two_data_booktypeinfor=document.getElementById('tab_two_data_booktypeinfor');
            var BookTypeId=document.getElementById('BookTypeId4_2_1');
            var BookTypeName=document.getElementById('BookTypeName4_2_1');
            if(res.total==0){
                console.log("查询成功");
                tab_two_booktypeinfor.style.display='block';
                tab_two_data_booktypeinfor.style.display='block';
                BookTypeId.value=res.rows[0].booktypeid;
                BookTypeName.value=res.rows[0].booktypename;
            }
            else{
                tab_two_booktypeinfor.style.display='none';
                tab_two_data_booktypeinfor.style.display='none';
                alert("查询失败");
                console.log("查询失败")
                return;
            }
        }
    }
    function selectidinforbooktype2() {
        var top_input_booktypeupdata=document.getElementById('top_input_booktypedelete');
        var parse='BookTypeId='+top_input_booktypeupdata.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var tab_two_booktypedelete=document.getElementById('tab_two_booktypedelete');
            var tab_two_data_booktypedelete=document.getElementById('tab_two_data_booktypedelete');
            var BookTypeId=document.getElementById('BookTypeId4_3_1');
            var BookTypeName=document.getElementById('BookTypeName4_3_1');
            if(res.total==0){
                console.log("查询成功");
                tab_two_booktypedelete.style.display='block';
                tab_two_data_booktypedelete.style.display='block';
                BookTypeId.value=res.rows[0].booktypeid;
                BookTypeName.value=res.rows[0].booktypename;
            }
            else{
                tab_two_booktypedelete.style.display='none';
                tab_two_data_booktypedelete.style.display='none';
                alert("查询失败");
                console.log("查询失败")
                return;
            }
        }
    }
</script>
<%--order订单功能--%>
<script>
    function ordercleardisplay() {
        var tab_orderinfor3_1=document.getElementById('tab_orderinfor3_1');
        var tab_orderinfor3_2=document.getElementById('tab_orderinfor3_2');
        var tab_orderinfor3_3=document.getElementById('tab_orderinfor3_3');
        var tab_orderinfor3_4=document.getElementById('tab_orderinfor3_4');
        var tab_orderinfor3_5=document.getElementById('tab_orderinfor3_5');
        var tab_orderinfor3_6=document.getElementById('tab_orderinfor3_6');
        var tab_orderinfor3_7=document.getElementById('tab_orderinfor3_7');
        var tab_orderinfor3_8=document.getElementById('tab_orderinfor3_8');
        var tab_orderinfor3_9=document.getElementById('tab_orderinfor3_9');
        var tab_orderinfor3_10=document.getElementById('tab_orderinfor3_10');
        tab_orderinfor3_1.style.display='none';
        tab_orderinfor3_2.style.display='none';
        tab_orderinfor3_3.style.display='none';
        tab_orderinfor3_4.style.display='none';
        tab_orderinfor3_5.style.display='none';
        tab_orderinfor3_6.style.display='none';
        tab_orderinfor3_7.style.display='none';
        tab_orderinfor3_8.style.display='none';
        tab_orderinfor3_9.style.display='none';
        tab_orderinfor3_10.style.display='none';
    }
    function ordercleardisplay2() {
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_1');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_2');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_3');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_4');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_5');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_6');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_7');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_8');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_9');
        var tab_orderinfor=document.getElementById('tab_orderinfor3_4_10');
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
        tab_orderinfor.style.display='none';
    }
    function getorderinfor() {
        ordercleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1_orderinfor=document.getElementById('paging_num1_orderinfor');
            var paging_num2_orderinfor=document.getElementById('paging_num2_orderinfor');
            //设置最大页数
            paging_num2_orderinfor.innerHTML=maxnum;
            paging_num1_orderinfor.innerHTML='1';
            var num=(res.rows.length)%10;
            for (var i=0;i<res.rows.length&&i<10;i++){
                var OrderId=document.getElementById('OrderId3_'+(i+1));
                var Id=document.getElementById('Id3_'+(i+1));
                var CustomerId=document.getElementById('CustomerId3_'+(i+1));
                var Orderdate=document.getElementById('Orderdate3_'+(i+1));
                var Ordermount=document.getElementById('Ordermount3_'+(i+1));
                var message=document.getElementById('message3_'+(i+1));
                var postmethod=document.getElementById('postmethod3_'+(i+1));
                var paymethod=document.getElementById('paymethod3_'+(i+1));
                var recevername=document.getElementById('recevername3_'+(i+1));
                var receveraddr=document.getElementById('receveraddr3_'+(i+1));
                var recevertel=document.getElementById('recevertel3_'+(i+1));
                var memo=document.getElementById('memo3_'+(i+1));
                var totalprice=document.getElementById('totalprice3_'+(i+1));
                var tab_orderinfor=document.getElementById('tab_orderinfor3_'+(i+1));
                tab_orderinfor.style.display='block';
                OrderId.value=res.rows[i].orderid;
                Id.value=res.rows[i].id;
                CustomerId.value=res.rows[i].customerid;
                Orderdate.value=res.rows[i].orderdate;
                Ordermount.value=res.rows[i].ordermount;
                message.value=res.rows[i].message;
                postmethod.value=res.rows[i].postmethod;
                paymethod.value=res.rows[i].paymethod;
                recevername.value=res.rows[i].recevername;
                receveraddr.value=res.rows[i].receveraddr;
                recevertel.value=res.rows[i].recevertel;
                memo.value=res.rows[i].memo;
                totalprice.value=res.rows[i].totalprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function fistnum_orderinfor() {
        ordercleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var maxnum=Math.ceil(res.rows.length/10);
            var paging_num1_orderinfor=document.getElementById('paging_num1_orderinfor');
            var paging_num2_orderinfor=document.getElementById('paging_num2_orderinfor');
            //设置最大页数
            paging_num2_orderinfor.innerHTML=maxnum;
            paging_num1_orderinfor.innerHTML='1';
            for (var i=0;i<res.rows.length&&i<10;i++){
                var OrderId=document.getElementById('OrderId3_'+(i+1));
                var Id=document.getElementById('Id3_'+(i+1));
                var CustomerId=document.getElementById('CustomerId3_'+(i+1));
                var Orderdate=document.getElementById('Orderdate3_'+(i+1));
                var Ordermount=document.getElementById('Ordermount3_'+(i+1));
                var message=document.getElementById('message3_'+(i+1));
                var postmethod=document.getElementById('postmethod3_'+(i+1));
                var paymethod=document.getElementById('paymethod3_'+(i+1));
                var recevername=document.getElementById('recevername3_'+(i+1));
                var receveraddr=document.getElementById('receveraddr3_'+(i+1));
                var recevertel=document.getElementById('recevertel3_'+(i+1));
                var memo=document.getElementById('memo3_'+(i+1));
                var totalprice=document.getElementById('totalprice3_'+(i+1));
                var tab_orderinfor=document.getElementById('tab_orderinfor3_'+(i+1));
                tab_orderinfor.style.display='block';
                OrderId.value=res.rows[i].orderid;
                Id.value=res.rows[i].id;
                CustomerId.value=res.rows[i].customerid;
                Orderdate.value=res.rows[i].orderdate;
                Ordermount.value=res.rows[i].ordermount;
                message.value=res.rows[i].message;
                postmethod.value=res.rows[i].postmethod;
                paymethod.value=res.rows[i].paymethod;
                recevername.value=res.rows[i].recevername;
                receveraddr.value=res.rows[i].receveraddr;
                recevertel.value=res.rows[i].recevertel;
                memo.value=res.rows[i].memo;
                totalprice.value=res.rows[i].totalprice;
            }
            if(res.total==0){
                console.log("查询成功");
            }
            else{
                console.log("失败")
            }
        }
    }
    function upnum_orderinfor() {
        ordercleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取当前页数
                var paging_num1_orderinfor=document.getElementById('paging_num1_orderinfor');
                var pagenum=paging_num1_orderinfor.innerHTML-1;
                //判定当前页数是否在第一页
                if(pagenum>0) {
                    pagenum=pagenum-1;
                }
                else{
                    pagenum=pagenum
                }
                paging_num1_orderinfor.innerHTML=(pagenum+1);
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var j=(pagenum*10)+i;
                    var OrderId=document.getElementById('OrderId3_'+(i+1));
                    var Id=document.getElementById('Id3_'+(i+1));
                    var CustomerId=document.getElementById('CustomerId3_'+(i+1));
                    var Orderdate=document.getElementById('Orderdate3_'+(i+1));
                    var Ordermount=document.getElementById('Ordermount3_'+(i+1));
                    var message=document.getElementById('message3_'+(i+1));
                    var postmethod=document.getElementById('postmethod3_'+(i+1));
                    var paymethod=document.getElementById('paymethod3_'+(i+1));
                    var recevername=document.getElementById('recevername3_'+(i+1));
                    var receveraddr=document.getElementById('receveraddr3_'+(i+1));
                    var recevertel=document.getElementById('recevertel3_'+(i+1));
                    var memo=document.getElementById('memo3_'+(i+1));
                    var totalprice=document.getElementById('totalprice3_'+(i+1));
                    var tab_orderinfor=document.getElementById('tab_orderinfor3_'+(i+1));
                    tab_orderinfor.style.display='block';
                    OrderId.value=res.rows[j].orderid;
                    Id.value=res.rows[j].id;
                    CustomerId.value=res.rows[j].customerid;
                    Orderdate.value=res.rows[j].orderdate;
                    Ordermount.value=res.rows[j].ordermount;
                    message.value=res.rows[j].message;
                    postmethod.value=res.rows[j].postmethod;
                    paymethod.value=res.rows[j].paymethod;
                    recevername.value=res.rows[j].recevername;
                    receveraddr.value=res.rows[j].receveraddr;
                    recevertel.value=res.rows[j].recevertel;
                    memo.value=res.rows[j].memo;
                    totalprice.value=res.rows[j].totalprice;
                }
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function downnum_orderinfor() {
        ordercleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res = JSON.parse(xhr.responseText);
            if (res.total == 0) {
                var maxnum = Math.ceil(res.rows.length / 10);
                //获取当前页数
                var paging_num1_orderinfor = document.getElementById('paging_num1_orderinfor');
                var pagenum = paging_num1_orderinfor.innerHTML - 1;
                //判定当前页数是否在最后一页
                if (pagenum < maxnum - 1) {
                    pagenum = pagenum + 1;
                } else {
                    pagenum = pagenum
                }
                paging_num1_orderinfor.innerHTML = (pagenum + 1);
                for (var i = 0; i < res.rows.length && i < 10; i++) {
                    var j = (pagenum * 10) + i;
                    var OrderId = document.getElementById('OrderId3_' + (i + 1));
                    var Id = document.getElementById('Id3_' + (i + 1));
                    var CustomerId = document.getElementById('CustomerId3_' + (i + 1));
                    var Orderdate = document.getElementById('Orderdate3_' + (i + 1));
                    var Ordermount = document.getElementById('Ordermount3_' + (i + 1));
                    var message = document.getElementById('message3_' + (i + 1));
                    var postmethod = document.getElementById('postmethod3_' + (i + 1));
                    var paymethod = document.getElementById('paymethod3_' + (i + 1));
                    var recevername = document.getElementById('recevername3_' + (i + 1));
                    var receveraddr = document.getElementById('receveraddr3_' + (i + 1));
                    var recevertel = document.getElementById('recevertel3_' + (i + 1));
                    var memo = document.getElementById('memo3_' + (i + 1));
                    var totalprice = document.getElementById('totalprice3_' + (i + 1));
                    var tab_orderinfor = document.getElementById('tab_orderinfor3_' + (i + 1));
                    tab_orderinfor.style.display = 'block';
                    OrderId.value = res.rows[j].orderid;
                    Id.value = res.rows[j].id;
                    CustomerId.value = res.rows[j].customerid;
                    Orderdate.value = res.rows[j].orderdate;
                    Ordermount.value = res.rows[j].ordermount;
                    message.value = res.rows[j].message;
                    postmethod.value = res.rows[j].postmethod;
                    paymethod.value = res.rows[j].paymethod;
                    recevername.value = res.rows[j].recevername;
                    receveraddr.value = res.rows[j].receveraddr;
                    recevertel.value = res.rows[j].recevertel;
                    memo.value = res.rows[j].memo;
                    totalprice.value = res.rows[j].totalprice;
                }
            } else {
                console.log("失败")
                return;
            }
        }
    }
    function lastnum_orderinfor() {
        ordercleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log("失败");
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取最大页数
                var maxnum=Math.ceil(res.rows.length/10);
                //获取当前页数
                var pagenum=maxnum-1;
                var paging_num1_orderinfor=document.getElementById('paging_num1_orderinfor');
                paging_num1_orderinfor.innerHTML=(pagenum+1);
                console.log(res);
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var j=(pagenum*10)+i;
                    var OrderId = document.getElementById('OrderId3_' + (i + 1));
                    var Id = document.getElementById('Id3_' + (i + 1));
                    var CustomerId = document.getElementById('CustomerId3_' + (i + 1));
                    var Orderdate = document.getElementById('Orderdate3_' + (i + 1));
                    var Ordermount = document.getElementById('Ordermount3_' + (i + 1));
                    var message = document.getElementById('message3_' + (i + 1));
                    var postmethod = document.getElementById('postmethod3_' + (i + 1));
                    var paymethod = document.getElementById('paymethod3_' + (i + 1));
                    var recevername = document.getElementById('recevername3_' + (i + 1));
                    var receveraddr = document.getElementById('receveraddr3_' + (i + 1));
                    var recevertel = document.getElementById('recevertel3_' + (i + 1));
                    var memo = document.getElementById('memo3_' + (i + 1));
                    var totalprice = document.getElementById('totalprice3_' + (i + 1));
                    var tab_orderinfor = document.getElementById('tab_orderinfor3_' + (i + 1));
                    tab_orderinfor.style.display = 'block';
                    OrderId.value = res.rows[j].orderid;
                    Id.value = res.rows[j].id;
                    CustomerId.value = res.rows[j].customerid;
                    Orderdate.value = res.rows[j].orderdate;
                    Ordermount.value = res.rows[j].ordermount;
                    message.value = res.rows[j].message;
                    postmethod.value = res.rows[j].postmethod;
                    paymethod.value = res.rows[j].paymethod;
                    recevername.value = res.rows[j].recevername;
                    receveraddr.value = res.rows[j].receveraddr;
                    recevertel.value = res.rows[j].recevertel;
                    memo.value = res.rows[j].memo;
                    totalprice.value = res.rows[j].totalprice;
                }
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function gonum_orderinfor() {
        ordercleardisplay();
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectAll');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send();
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取最大页数
                var maxnum=Math.ceil(res.rows.length/10);
                //获取输入的跳转页数
                var shownum_orderinfor=document.getElementById('shownum_orderinfor').value-1;
                var paging_num1_orderinfor=document.getElementById('paging_num1_orderinfor');
                paging_num1_orderinfor.innerHTML=(shownum_orderinfor+1);
                var pagenum=shownum_orderinfor;
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var j=(pagenum*10)+i;
                    var OrderId = document.getElementById('OrderId3_' + (i + 1));
                    var Id = document.getElementById('Id3_' + (i + 1));
                    var CustomerId = document.getElementById('CustomerId3_' + (i + 1));
                    var Orderdate = document.getElementById('Orderdate3_' + (i + 1));
                    var Ordermount = document.getElementById('Ordermount3_' + (i + 1));
                    var message = document.getElementById('message3_' + (i + 1));
                    var postmethod = document.getElementById('postmethod3_' + (i + 1));
                    var paymethod = document.getElementById('paymethod3_' + (i + 1));
                    var recevername = document.getElementById('recevername3_' + (i + 1));
                    var receveraddr = document.getElementById('receveraddr3_' + (i + 1));
                    var recevertel = document.getElementById('recevertel3_' + (i + 1));
                    var memo = document.getElementById('memo3_' + (i + 1));
                    var totalprice = document.getElementById('totalprice3_' + (i + 1));
                    var tab_orderinfor = document.getElementById('tab_orderinfor3_' + (i + 1));
                    tab_orderinfor.style.display = 'block';
                    OrderId.value = res.rows[j].orderid;
                    Id.value = res.rows[j].id;
                    CustomerId.value = res.rows[j].customerid;
                    Orderdate.value = res.rows[j].orderdate;
                    Ordermount.value = res.rows[j].ordermount;
                    message.value = res.rows[j].message;
                    postmethod.value = res.rows[j].postmethod;
                    paymethod.value = res.rows[j].paymethod;
                    recevername.value = res.rows[j].recevername;
                    receveraddr.value = res.rows[j].receveraddr;
                    recevertel.value = res.rows[j].recevertel;
                    memo.value = res.rows[j].memo;
                    totalprice.value = res.rows[j].totalprice;
                }
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function orderdeleteaction(obj) {
        var OrderId=obj.parentNode.parentNode.children[0].children[0].value;
        var pareses='orderid='+OrderId;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/deleteordertailforid');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var xhr2=new XMLHttpRequest();
                xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/deleteorderforid');
                xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr2.send(pareses);
                xhr.onload = function(){
                    let res=JSON.parse(xhr.responseText);
                    if(res.total==0){
                        console.log('删除成功');
                        alert("删除成功");
                        getorderinfor();
                    }
                    else{
                        console.log('删除失败')
                        alert("删除失败");
                        getorderinfor();
                    }
                }
            }else {
                console.log('删除失败')
                alert("删除失败");
            }
        }
    }
    function orderupdataaction(obj) {
        var OrderId=obj.parentNode.parentNode.children[0].children[0].value;
        var Ordermount=obj.parentNode.parentNode.children[4].children[0].value;
        var message=obj.parentNode.parentNode.children[5].children[0].value;
        var postmethod=obj.parentNode.parentNode.children[6].children[0].value;
        var paymethod=obj.parentNode.parentNode.children[7].children[0].value;
        var recevername=obj.parentNode.parentNode.children[8].children[0].value;
        var receveraddr=obj.parentNode.parentNode.children[9].children[0].value
        var recevertel=obj.parentNode.parentNode.children[10].children[0].value;
        var memo=obj.parentNode.parentNode.children[11].children[0].value;
        var totalprice=obj.parentNode.parentNode.children[12].children[0].value;
        var pareses='orderid='+OrderId+'&ordermount='+Ordermount+'&message='+message+'&postmethod='+postmethod+'&paymethod='+paymethod+'&recevername='+recevername+'&receveraddr='+receveraddr+'&recevertel='+recevertel+'&memo='+memo+'&totalprice='+totalprice;
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/updataorder');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log('更新成功');
                alert("更新成功");
                allorderinforonclick();
            }else {
                console.log('更新失败')
                alert("更新失败");
            }
        }
    }
    function ordershowdetailed(obj) {
        var OrderId=obj.parentNode.parentNode.children[0].children[0].value;
        var pareses='orderid='+OrderId;
        console.log(OrderId);
        var xhr=new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectid');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            var OrderDetailld4_5_1=document.getElementById('OrderDetailld4_5_1');
            var Id4_5_1=document.getElementById('Id4_5_1');
            var OrderId4_5_1=document.getElementById('OrderId4_5_1');
            var BookId4_5_1=document.getElementById('BookId4_5_1');
            var ordermount4_5_1=document.getElementById('ordermount4_5_1');
            var poststatus4_5_1=document.getElementById('poststatus4_5_1');
            var Recevstatus4_5_1=document.getElementById('Recevstatus4_5_1');
            var sigletotalprice4_5_1=document.getElementById('sigletotalprice4_5_1');
            var tab_selecorderdetail=document.getElementById('tab_selecorderdetail');
            var tab_allorderinfor=document.getElementById('tab_allorderinfor');
            var tab_noorderinfor=document.getElementById('tab_noorderinfor');
            var tab_backorderinfor=document.getElementById('tab_backorderinfor');
            var orderbookimg=document.getElementById('orderbookimg');
            if(res.total==0){
                orderbookimg.src='upload/'+res.rows[0].bookid+'.jpg'
                OrderDetailld4_5_1.innerHTML=res.rows[0].orderdetailld;
                Id4_5_1.innerHTML=res.rows[0].id;
                OrderId4_5_1.innerHTML=res.rows[0].orderid;
                BookId4_5_1.innerHTML=res.rows[0].bookid;
                ordermount4_5_1.innerHTML=res.rows[0].ordermount;
                poststatus4_5_1.innerHTML=res.rows[0].poststatus;
                Recevstatus4_5_1.innerHTML=res.rows[0].recevstatus;
                sigletotalprice4_5_1.innerHTML=res.rows[0].sigletotalprice;
                tab_allorderinfor.style.display='none';
                tab_selecorderdetail.style.display='block';
                tab_noorderinfor.style.display='none';
                tab_backorderinfor.style.display='none';
            }else{
                tab_allorderinfor.style.display='block';
                tab_selecorderdetail.style.display='none';
                alert("查询失败！");
            }
        }
    }
    function backordershow() {
        allorderinforonclick();
        var tab_selecorderdetail=document.getElementById('tab_selecorderdetail');
        var tab_allorderinfor=document.getElementById('tab_allorderinfor');
        tab_allorderinfor.style.display='block';
        tab_selecorderdetail.style.display='none';
    }
    function upload_ordertail(obj) {
        var OrderDetailld4_5_1=document.getElementById('OrderDetailld4_5_1').innerHTML;
        var Id4_5_1=document.getElementById('Id4_5_1').innerHTML;
        var OrderId4_5_1=document.getElementById('OrderId4_5_1').innerHTML;
        var BookId4_5_1=document.getElementById('BookId4_5_1').innerHTML;
        var ordermount4_5_1=document.getElementById('ordermount4_5_1').innerHTML;
        var poststatus4_5_1=document.getElementById('poststatus4_5_1').innerHTML;
        var Recevstatus4_5_1=document.getElementById('Recevstatus4_5_1').innerHTML;
        var sigletotalprice4_5_1=document.getElementById('sigletotalprice4_5_1').innerHTML;
        var parese='orderdetailid=' + OrderDetailld4_5_1 + '&id=' + Id4_5_1+ '&orderid='+ OrderId4_5_1 +'&bookid=' + BookId4_5_1 +'&ordermount='+ordermount4_5_1+'&poststatus='+poststatus4_5_1 +'&recevstatus='+Recevstatus4_5_1+'&sigletotalprice='+sigletotalprice4_5_1;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/updataorderdetail');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parese);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log("修改成功");
            }
            else{
                alert("更新失败");
                console.log("失败")
                return;
            }
        }
    }
    function selectidinfororder() {
        var top_input_orderupdata=document.getElementById('top_input_orderupdata');
        var parse='orderid='+top_input_orderupdata.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var OrderId=document.getElementById('OrderId4_2_1');
            var Id=document.getElementById('Id4_2_1');
            var CustomerId=document.getElementById('CustomerId4_2_1');
            var Orderdate=document.getElementById('Orderdate4_2_1');
            var Ordermount=document.getElementById('Ordermount4_2_1');
            var message=document.getElementById('message4_2_1');
            var postmethod=document.getElementById('postmethod4_2_1');
            var paymethod=document.getElementById('paymethod4_2_1');
            var recevername=document.getElementById('recevername4_2_1');
            var receveraddr=document.getElementById('receveraddr4_2_1');
            var recevertel=document.getElementById('recevertel4_2_1');
            var memo=document.getElementById('memo4_2_1');
            var totalprice=document.getElementById('totalprice4_2_1');
            var tab_two_orderinfor=document.getElementById('tab_two_orderinfor');
            var tab_two_data_orderinfor=document.getElementById('tab_two_data_orderinfor');
            if(res.total==0){
                console.log("查询成功");
                OrderId.value=res.rows[0].orderid;
                Id.value=res.rows[0].id;
                CustomerId.value=res.rows[0].customerid;
                Orderdate.value=res.rows[0].orderdate;
                Ordermount.value=res.rows[0].ordermount;
                message.value=res.rows[0].message;
                postmethod.value=res.rows[0].postmethod;
                paymethod.value=res.rows[0].paymethod;
                recevername.value=res.rows[0].recevername;
                receveraddr.value=res.rows[0].receveraddr;
                recevertel.value=res.rows[0].recevertel;
                memo.value=res.rows[0].memo;
                totalprice.value=res.rows[0].totalprice;
                tab_two_orderinfor.style.display='block';
                tab_two_data_orderinfor.style.display='block';
            }
            else{
                tab_allorderinfor.style.display='none';
                tab_selecorderdetail.style.display='none';
                alert("查询失败");
                console.log("查询失败")
                return;
            }
        }
    }
    function selectidinfororder2() {
        var top_input_orderupdata=document.getElementById('top_input_orderdelete');
        var parse='orderid='+top_input_orderupdata.value;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(parse);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            var OrderId=document.getElementById('OrderId4_3_1');
            var Id=document.getElementById('Id4_3_1');
            var CustomerId=document.getElementById('CustomerId4_3_1');
            var Orderdate=document.getElementById('Orderdate4_3_1');
            var Ordermount=document.getElementById('Ordermount4_3_1');
            var message=document.getElementById('message4_3_1');
            var postmethod=document.getElementById('postmethod4_3_1');
            var paymethod=document.getElementById('paymethod4_3_1');
            var recevername=document.getElementById('recevername4_3_1');
            var receveraddr=document.getElementById('receveraddr4_3_1');
            var recevertel=document.getElementById('recevertel4_3_1');
            var memo=document.getElementById('memo4_3_1');
            var totalprice=document.getElementById('totalprice4_3_1');
            var tab_two_orderinfor=document.getElementById('tab_two_orderinfor2');
            var tab_two_data_orderinfor=document.getElementById('tab_two_data_orderinfor2');
            if(res.total==0){
                console.log("查询成功");
                OrderId.value=res.rows[0].orderid;
                Id.value=res.rows[0].id;
                CustomerId.value=res.rows[0].customerid;
                Orderdate.value=res.rows[0].orderdate;
                Ordermount.value=res.rows[0].ordermount;
                message.value=res.rows[0].message;
                postmethod.value=res.rows[0].postmethod;
                paymethod.value=res.rows[0].paymethod;
                recevername.value=res.rows[0].recevername;
                receveraddr.value=res.rows[0].receveraddr;
                recevertel.value=res.rows[0].recevertel;
                memo.value=res.rows[0].memo;
                totalprice.value=res.rows[0].totalprice;
                tab_two_orderinfor.style.display='block';
                tab_two_data_orderinfor.style.display='block';
            }
            else{
                tab_allorderinfor.style.display='none';
                tab_selecorderdetail.style.display='none';
                alert("查询失败");
                console.log("查询失败")
                return;
            }
        }
    }
    // 未处理订单查询
    function nomakeorderinfor() {
        ordercleardisplay2();
        var pareses='poststatus=未发货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num3_4_1=document.getElementById('paging_num3_4_1');
                var paging_num3_4_2=document.getElementById('paging_num3_4_2');
                //设置最大页数
                paging_num3_4_2.innerHTML=maxnum;
                paging_num3_4_1.innerHTML='1';
                var num=(res.rows.length)%10;
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=i+1;
                    nomakeorderinfor2(res.rows[i].orderid,i,jnum);
                }
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function nomakeorderinfor2(obj,inum,jnum) {
        console.log(obj);
        var pareses='orderid='+obj;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log(res);
                console.log(inum);
                console.log(jnum);
                var OrderId=document.getElementById('OrderId3_4_'+jnum);
                var Id=document.getElementById('Id3_4_'+jnum);
                var CustomerId=document.getElementById('CustomerId3_4_'+jnum);
                var Orderdate=document.getElementById('Orderdate3_4_'+jnum);
                var Ordermount=document.getElementById('Ordermount3_4_'+jnum);
                var message=document.getElementById('message3_4_'+jnum);
                var postmethod=document.getElementById('postmethod3_4_'+jnum);
                var paymethod=document.getElementById('paymethod3_4_'+jnum);
                var recevername=document.getElementById('recevername3_4_'+jnum);
                var receveraddr=document.getElementById('receveraddr3_4_'+jnum);
                var recevertel=document.getElementById('recevertel3_4_'+jnum);
                var memo=document.getElementById('memo3_4_'+jnum);
                var totalprice=document.getElementById('totalprice3_4_'+jnum);
                var tab_orderinfor=document.getElementById('tab_orderinfor3_4_'+jnum);
                tab_orderinfor.style.display='block';
                OrderId.value=res.rows[0].orderid;
                console.log(res.rows[0].orderid);
                Id.value=res.rows[0].id;
                CustomerId.value=res.rows[0].customerid;
                Orderdate.value=res.rows[0].orderdate;
                Ordermount.value=res.rows[0].ordermount;
                message.value=res.rows[0].message;
                postmethod.value=res.rows[0].postmethod;
                paymethod.value=res.rows[0].paymethod;
                recevername.value=res.rows[0].recevername;
                receveraddr.value=res.rows[0].receveraddr;
                recevertel.value=res.rows[0].recevertel;
                memo.value=res.rows[0].memo;
                totalprice.value=res.rows[0].totalprice;
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function fistnum_noorderinfor() {
        ordercleardisplay2();
        var pareses='poststatus=未发货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num3_4_1=document.getElementById('paging_num3_4_1');
                var paging_num3_4_2=document.getElementById('paging_num3_4_2');
                //设置最大页数
                paging_num3_4_2.innerHTML=maxnum;
                paging_num3_4_1.innerHTML='1';
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=i+1;
                    nomakeorderinfor2(res.rows[0].orderid,i,jnum);
                }
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function upnum_noorderinfor() {
        ordercleardisplay2();
        var pareses='poststatus=未发货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取当前页数
                var paging_num1_orderinfor=document.getElementById('paging_num3_4_1');
                var pagenum=paging_num1_orderinfor.innerHTML-1;
                //判定当前页数是否在第一页
                if(pagenum>0) {
                    pagenum=pagenum-1;
                }
                else{
                    pagenum=pagenum
                }
                paging_num1_orderinfor.innerHTML=(pagenum+1);
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=(pagenum*10)+i;
                    nomakeorderinfor2(res.rows[0].orderid,jnum,i+1);
                }
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function downnum_noorderinfor() {
        ordercleardisplay();
        var pareses='poststatus=未发货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res = JSON.parse(xhr.responseText);
            if (res.total == 0) {
                var maxnum = Math.ceil(res.rows.length / 10);
                //获取当前页数
                var paging_num1_orderinfor = document.getElementById('paging_num3_4_1');
                var pagenum = paging_num1_orderinfor.innerHTML - 1;
                //判定当前页数是否在最后一页
                if (pagenum < maxnum - 1) {
                    pagenum = pagenum + 1;
                } else {
                    pagenum = pagenum
                }
                paging_num1_orderinfor.innerHTML = (pagenum + 1);
                for (var i = 0; i < res.rows.length && i < 10; i++) {
                    var jnum=(pagenum*10)+i;
                    nomakeorderinfor2(res.rows[0].orderid,jnum,i+1);
                }
            } else {
                console.log("失败")
                return;
            }
        }
    }
    function lastnum_noorderinfor() {
        ordercleardisplay();
        var pareses='poststatus=未发货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取最大页数
                var maxnum=Math.ceil(res.rows.length/10);
                //获取当前页数
                var pagenum=maxnum-1;
                var paging_num1_orderinfor=document.getElementById('paging_num3_4_1');
                paging_num1_orderinfor.innerHTML=(pagenum+1);
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=(pagenum*10)+i;
                    nomakeorderinfor2(res.rows[0].orderid,jnum,i+1);
                }
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function gonum_noorderinfor() {
        ordercleardisplay();
        var pareses='poststatus=未发货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取最大页数
                var maxnum=Math.ceil(res.rows.length/10);
                //获取输入的跳转页数
                var shownum_orderinfor=document.getElementById('shownum3_4_1').value-1;
                var paging_num1_orderinfor=document.getElementById('paging_num3_4_1');
                paging_num1_orderinfor.innerHTML=(shownum_orderinfor+1);
                var pagenum=shownum_orderinfor;
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=(pagenum*10)+i;
                    nomakeorderinfor2(res.rows[0].orderid,jnum,i+1);
                }
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    // 申请退款订单查询
    function backmakeorderinfor() {
        ordercleardisplay2();
        var pareses='poststatus=申请退货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num3_5_1=document.getElementById('paging_num3_5_1');
                var paging_num3_5_2=document.getElementById('paging_num3_5_2');
                //设置最大页数
                paging_num3_5_2.innerHTML=maxnum;
                paging_num3_5_1.innerHTML='1';
                var num=(res.rows.length)%10;
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=i+1;
                    backmakeorderinfor2(res.rows[0].orderid,i,jnum);
                }
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function backmakeorderinfor2(obj,inum,jnum) {
        var pareses='orderid='+obj;
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrder/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                console.log(res)
                var OrderId=document.getElementById('OrderId3_5_'+jnum);
                var Id=document.getElementById('Id3_5_'+jnum);
                var CustomerId=document.getElementById('CustomerId3_5_'+jnum);
                var Orderdate=document.getElementById('Orderdate3_5_'+jnum);
                var Ordermount=document.getElementById('Ordermount3_5_'+jnum);
                var message=document.getElementById('message3_5_'+jnum);
                var postmethod=document.getElementById('postmethod3_5_'+jnum);
                var paymethod=document.getElementById('paymethod3_5_'+jnum);
                var recevername=document.getElementById('recevername3_5_'+jnum);
                var receveraddr=document.getElementById('receveraddr3_5_'+jnum);
                var recevertel=document.getElementById('recevertel3_5_'+jnum);
                var memo=document.getElementById('memo3_5_'+jnum);
                var totalprice=document.getElementById('totalprice3_5_'+jnum);
                var tab_orderinfor=document.getElementById('tab_orderinfor3_5_'+jnum);
                tab_orderinfor.style.display='block';
                OrderId.value=res.rows[0].orderid;
                Id.value=res.rows[0].id;
                CustomerId.value=res.rows[0].customerid;
                Orderdate.value=res.rows[0].orderdate;
                Ordermount.value=res.rows[0].ordermount;
                message.value=res.rows[0].message;
                postmethod.value=res.rows[0].postmethod;
                paymethod.value=res.rows[0].paymethod;
                recevername.value=res.rows[0].recevername;
                receveraddr.value=res.rows[0].receveraddr;
                recevertel.value=res.rows[0].recevertel;
                memo.value=res.rows[0].memo;
                totalprice.value=res.rows[0].totalprice;
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function fistnum_backorderinfor() {
        ordercleardisplay2();
        var pareses='poststatus=申请退货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num3_5_1=document.getElementById('paging_num3_5_1');
                var paging_num3_5_2=document.getElementById('paging_num3_5_2');
                //设置最大页数
                paging_num3_5_2.innerHTML=maxnum;
                paging_num3_5_1.innerHTML='1';
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=i+1;
                    backmakeorderinfor2(res.rows[0].orderid,i,jnum);
                }
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function upnum_backorderinfor() {
        ordercleardisplay2();
        var pareses='poststatus=申请退货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取当前页数
                var paging_num1_orderinfor=document.getElementById('paging_num3_5_1');
                var pagenum=paging_num1_orderinfor.innerHTML-1;
                //判定当前页数是否在第一页
                if(pagenum>0) {
                    pagenum=pagenum-1;
                }
                else{
                    pagenum=pagenum
                }
                paging_num1_orderinfor.innerHTML=(pagenum+1);
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=(pagenum*10)+i;
                    backmakeorderinfor2(res.rows[0].orderid,jnum,i+1);
                }
                console.log("查询成功");
            }
            else{
                console.log("失败");
                alert("查询不到数据！");
            }
        }
    }
    function downnum_backorderinfor() {
        ordercleardisplay();
        var pareses='poststatus=申请退货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res = JSON.parse(xhr.responseText);
            if (res.total == 0) {
                var maxnum = Math.ceil(res.rows.length / 10);
                //获取当前页数
                var paging_num1_orderinfor = document.getElementById('paging_num3_5_1');
                var pagenum = paging_num1_orderinfor.innerHTML - 1;
                //判定当前页数是否在最后一页
                if (pagenum < maxnum - 1) {
                    pagenum = pagenum + 1;
                } else {
                    pagenum = pagenum
                }
                paging_num1_orderinfor.innerHTML = (pagenum + 1);
                for (var i = 0; i < res.rows.length && i < 10; i++) {
                    var jnum=(pagenum*10)+i;
                    backmakeorderinfor2(res.rows[0].orderid,jnum,i+1);
                }
            } else {
                console.log("失败")
                return;
            }
        }
    }
    function lastnum_backorderinfor() {
        ordercleardisplay();
        var pareses='poststatus=申请退货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取最大页数
                var maxnum=Math.ceil(res.rows.length/10);
                //获取当前页数
                var pagenum=maxnum-1;
                var paging_num1_orderinfor=document.getElementById('paging_num3_5_1');
                paging_num1_orderinfor.innerHTML=(pagenum+1);
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=(pagenum*10)+i;
                    backmakeorderinfor2(res.rows[0].orderid,jnum,i+1);
                }
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function gonum_backorderinfor() {
        ordercleardisplay();
        var pareses='poststatus=申请退货';
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbOrderdetail/selectpoststatus');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(pareses);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                //获取最大页数
                var maxnum=Math.ceil(res.rows.length/10);
                //获取输入的跳转页数
                var shownum_orderinfor=document.getElementById('shownum3_5_1').value-1;
                var paging_num1_orderinfor=document.getElementById('paging_num3_5_1');
                paging_num1_orderinfor.innerHTML=(shownum_orderinfor+1);
                var pagenum=shownum_orderinfor;
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var jnum=(pagenum*10)+i;
                    backmakeorderinfor2(res.rows[0].orderid,jnum,i+1);
                }
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
</script>
<%--//实验用的--%>
<script>
    function show(file) {
        // FileReader对象用于读取文件
        var reader = new FileReader();
        //读取File对象的数据
        reader.onload = function(e) {
            $('#imgshow').css("background-image", "url(" + e.target.result + ")");
        }
        reader.readAsDataURL(file.files[0]);
    }
    function addimg() {
        var form=document.getElementById('uploadimg');
        var myfile = $("#myfile")[0].files;
        //获取文件上传文件的文件名和扩展名
        if (myfile[0] == undefined) {
            alert('未上传任何文件！');
        } else {
            //异步上传时用到的formDate储存
            var formValue=new FormData(form);
            //异步
            var xhr= new XMLHttpRequest();
            xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/uploadimg');
            // 设置请求参数格式的类型（post请求必须要设置）但是如果是上传的是文件，则这个头就不用设置了，设置了反而有问题
            // xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            // 发送请求
            xhr.send(formValue);
            // 获取服务器端响应的数据
            xhr.onload = function () {
                let res=JSON.parse(xhr.responseText);
                if(res.total==0){
                    console.log('上传成功！');
                }
                else {
                    console.log('上传失败！');
                }
            }
        }
    }
    //点击后重置所有效果
    $("#clearall").click(function() {
        $("#myfile").val("");
        $('#imgshow').css("background-image", "url(../upload/shuruimg.png)");
    });
</script>
<%--获取当前时间处理--%>
<script>
    function current() {
        var d = new Date(),
            str = '';
        str += d.getFullYear() + '-'; //获取当前年份
        str += d.getMonth() + 1 + '-'; //获取当前月份（0——11）
        str += d.getDate() + ' ';
        str += d.getHours() + ':';
        str += d.getMinutes() + ':';
        str += d.getSeconds();
        return str;
    }
</script>
</html>
