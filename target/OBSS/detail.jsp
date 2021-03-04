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
    <link rel="stylesheet" href="css/detail.css">

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
            我的购物车
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
    <!-- 详情页内容部分	 -->
    <div class="de_container w">
        <!-- 面包屑导航 -->
        <div class="crumb_wrap">
            <a href="index.jsp">书城</a>
            〉 <a href="#" id="BookTypeId">计算机图书 </a>
        </div>
        <!-- 产品介绍模块 -->
        <div class="product_intro clearfix">
            <!-- 预览区域 -->
            <div class="preview_wrap fl">
                <div class="preview_img">
                    <img src="upload/2020120108.jpg" alt="" id="img_big">
                </div>
            </div>
            <!-- 产品详细信息 -->
            <div class="itemInfo_wrap fr">
                <div class="sku_name">
                    <p id="titletop">

                    </p>
                </div>
                <div class="news">
                    为庆祝本站新成立，全场书本八折！！！
                </div>
                <div class="summary">
                    <dl class="summary_price">
                        <dt>价格</dt>
                        <dd>
                            <i class="price" id="price">￥77.35 </i>
                            <a href="#">降价通知</a>

                        </dd>
                    </dl>
                    <dl class="summary_promotion">
                        <dt>促销</dt>
                        <dd>
                            <em>折扣</em>
                            为庆祝本站新成立，全场书本八折！！！
                        </dd>
                    </dl>
                    <dl class="summary_support">
                        <dt>增值服务</dt>
                        <dd>助力环保，传递知识，旧书换新</dd>
                    </dl>
                    <dl class="choose_color">
                        <dt>增值保障</dt>
                        <dd>
                            <a href="javascript:;" class="current">无</a>
                        </dd>
                    </dl>
                    <dl class="choose_version">
                        <dt>白条分期</dt>
                        <dd>
                            <a href="javascript:;" class="current">不分期</a>
                        </dd>
                    </dl>
                    <dl class="choose_type">
                        <dt>购买方式</dt>
                        <dd>
                            <a href="javascript:;" class="current" onclick="makezhifubao(this)">支付宝</a>
                            <a href="javascript:;" onclick="makeweixin(this)">微信</a>
                        </dd>
                    </dl>
                    <div class="choose_btns">
                        <div class="choose_amount">
                            <input type="text" value="1" id="num">
                            <a href="javascript:;" class="add" onclick="addnum()">+</a>
                            <a href="javascript:;" class="reduce" onclick="reducenum()">-</a>
                        </div>
                        <a href="#" class="addcar" onclick="insertbookshop()">加入购物车</a>
                    </div>
                </div>
            </div>
        </div>


        <!-- 产品细节模块 product_detail	 -->
        <div class="product_detail clearfix">
            <!-- aside -->
            <div class="aside fl">
                <div class="tab_list">
                    <ul>
                        <li class="second_tab current">推荐书籍</li>
                    </ul>
                </div>
                <div class="tab_con">
                    <ul>
                        <li>
                            <img src="upload/2020120101.jpg" alt="">
                        </li>
                        <li>
                            <img src="upload/2020120102.jpg" alt="">
                        </li>
                        <li>
                            <img src="upload/2020120103.jpg" alt="">
                        </li>
                        <li>
                            <img src="upload/2020120104.jpg" alt="">
                        </li>
                        <li>
                            <img src="upload/2020120105.jpg" alt="">
                        </li>
                        <li>
                            <img src="upload/2020120106.jpg" alt="">
                        </li>


                    </ul>
                </div>
            </div>
            <!-- detail -->
            <div class="detail fr">
                <div class="detail_tab_list">
                    <ul id="tab_title_box">
                        <li class="current" id="1">书籍信息</li>
                        <li id="2">书籍简介</li>
                        <li id="3">售后保障</li>
                        <li id="4">商品评价</li>
                    </ul>
                </div>
                <div class="detail_tab_con" id="tab_1">
                    <div class="item">
                        <ul class="item_info">
                            <li>
                                作者：<p id="BookAuthor"></p>
                            </li>
                            <li>
                                出版社：<p id="BookPress"></p>
                            </li>
                            <li>
                                图书译者：<p id="BookTanslor"></p>
                            </li>
                            <li>
                                上架时间：
                                <p>
                                    2020-12-01
                                </p>
                            </li>
                            <li>
                                图书页数：<p id="BookPages"></p>
                            </li>
                            <li>
                                开本：
                                <p>16开</p>
                            </li>
                            <li>
                                版次：
                                <p>1-1</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="detail_tab_con" id="tab_2" style="display: none">
                    <div class="item">
                        <ul class="item_info">
                            <li>
                                <p id="BookOutline">

                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="detail_tab_con" id="tab_3" style="display: none">
                    <div class="item">
                        <ul class="item_info">
                            <li>
                                <p>
                                    暂无！
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="detail_tab_con" id="tab_4" style="display: none">
                    <div class="item">
                        <ul class="item_info">
                            <li class="comment_li" id="tab_comment1" style="display: none">
                                <div class="comment_box clearfix" >
                                    <div class="comment_left_box clearfix">
                                        <div class="comment_left_img_box"><img src="upload/18775921835.jpg" alt="" id="userimg1"></div>
                                        <div class="comment_left_name_box"><span id="Commentname1"></span></div>
                                    </div>
                                    <div class="comment_right_box clearfix">
                                        <div class="comment_right_content_box"><p id="commentcontent1"></p></div>
                                        <div class="comment_right_time_box"><p id="Commentdate1"></p></div>
                                    </div>
                                </div>
                            </li>
                            <li class="comment_li" id="tab_comment2" style="display: none">
                                <div class="comment_box clearfix" >
                                    <div class="comment_left_box">
                                        <div class="comment_left_img_box"><img src="upload/18775921835.jpg" alt="" id="userimg2"></div>
                                        <div class="comment_left_name_box"><span id="Commentname2"></span></div>
                                    </div>
                                    <div class="comment_right_box clearfix">
                                        <div class="comment_right_content_box"><p id="commentcontent2"></p></div>
                                        <div class="comment_right_time_box"><p id="Commentdate2"></p></div>
                                    </div>
                                </div>
                            </li>
                            <li class="comment_li" id="tab_comment3" style="display: none">
                                <div class="comment_box clearfix" >
                                    <div class="comment_left_box clearfix">
                                        <div class="comment_left_img_box"><img src="upload/18775921835.jpg" alt="" id="userimg3"></div>
                                        <div class="comment_left_name_box"><span id="Commentname3"></span></div>
                                    </div>
                                    <div class="comment_right_box clearfix">
                                        <div class="comment_right_content_box"><p id="commentcontent3"></p></div>
                                        <div class="comment_right_time_box"><p id="Commentdate3"></p></div>
                                    </div>
                                </div>
                            </li>
                            <li class="comment_li" id="tab_comment4" style="display: none">
                                <div class="comment_box clearfix" >
                                    <div class="comment_left_box clearfix">
                                        <div class="comment_left_img_box"><img src="upload/18775921835.jpg" alt="" id="userimg4"></div>
                                        <div class="comment_left_name_box"><span id="Commentname4"></span></div>
                                    </div>
                                    <div class="comment_right_box clearfix">
                                        <div class="comment_right_content_box"><p id="commentcontent4"></p></div>
                                        <div class="comment_right_time_box"><p id="Commentdate4"></p></div>
                                    </div>
                                </div>
                            </li>
                            <li class="comment_li" id="tab_comment5" style="display: none">
                                <div class="comment_box clearfix" >
                                    <div class="comment_left_box clearfix">
                                        <div class="comment_left_img_box"><img src="upload/18775921835.jpg" alt="" id="userimg5"></div>
                                        <div class="comment_left_name_box"><span id="Commentname5"></span></div>
                                    </div>
                                    <div class="comment_right_box clearfix">
                                        <div class="comment_right_content_box"><p id="commentcontent5"></p></div>
                                        <div class="comment_right_time_box"><p id="Commentdate5"></p></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="paging_box">
                            <div class="paging_ul_box">
                                <ul>
                                    <li onclick="fistnum_noorderinfor()">首页</li>
                                    <li onclick="upnum_noorderinfor()">上一页</li>
                                    <li class="paging_text">目前第
                                        <p class="paging_num" id="paging_num_common1">1</p>
                                        页
                                    </li>
                                    <li onclick="downnum_noorderinfor()">下一页</li>
                                    <li onclick="lastnum_noorderinfor()">尾页</li>
                                    <li>共
                                        <p class="paging_num" id="paging_num_common2">1</p>
                                        页
                                    </li>
                                    <li class="paging_text">到
                                        <input type="text" value="1" id="shownum1">
                                        页
                                    </li>
                                    <li onclick="gonum_noorderinfor()">确定</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 详情页内容部分	 -->
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
<%--开局启用的脚本--%>
<script>
    window.onload=function () {
        // 判定用户登录账号
        onload1();
        // 获取书籍数据
        getbookdate();
    }
</script>
<%--判定登录的用户--%>
<script>
    var use1 =document.getElementById('use1');
    var use2 =document.getElementById('use2');
    var use3 =document.getElementById('use3');
    var cancellation =document.getElementById('cancellation');
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
    // 注销操作
    cancellation.onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/cancellation');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send();
        use1.style.display='block';
        use2.style.display='none';
    }
</script>
<%--获取书籍书籍--%>
<script>
    function getbookdate() {
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        URL = URL.split('?')[1]; //获取参数列表
        var titletop = document.getElementById('titletop');
        var price = document.getElementById('price');
        var BookAuthor = document.getElementById('BookAuthor');
        var BookPress = document.getElementById('BookPress');
        var BookTanslor = document.getElementById('BookTanslor');
        var BookPages = document.getElementById('BookPages');
        var BookOutline = document.getElementById('BookOutline');
        var img_big = document.getElementById('img_big');
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBook/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(URL);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                showbooktypename(res.rows[0].booktypeid);
                titletop.innerHTML=res.rows[0].bookname;
                price.innerHTML=res.rows[0].bookprice;
                BookAuthor.innerHTML=res.rows[0].bookauthor;
                BookPress.innerHTML=res.rows[0].bookpress;
                BookTanslor.innerHTML=res.rows[0].booktanslor;
                BookPages.innerHTML=res.rows[0].bookpages;
                BookOutline.innerHTML=res.rows[0].bookoutline;
                img_big.src='upload/'+res.rows[0].bookid+'.jpg'
            }
            else{
                console.log("失败")
                return;
            }
        }
    }
    function showbooktypename(booktypeid) {
        var BookTypeId = document.getElementById('BookTypeId');
        var xhr = new XMLHttpRequest();
        url = 'BookTypeId='+booktypeid;
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbBooktype/selectid');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(url);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            console.log(xhr.responseText);
            let res2=JSON.parse(xhr.responseText);
            if(res2.total==0){
                BookTypeId.innerHTML=res2.rows[0].booktypename;
            }
        }
    }
</script>
<%--实现商品详情栏跳转--%>
<script>
    var tab_title_box=document.getElementById('tab_title_box');
    var tab_box=document.getElementsByClassName('detail_tab_con');
    // 清除标题的样式
    function clear_tab_title() {
        var tab_titles=tab_title_box.getElementsByTagName('li');
        for (var i=0;i<tab_titles.length;i++){
            tab_titles[i].className='';
        }
    }
    // 清除商品详情信息的样式
    function clear_tab_detail(){
        for (var i=0;i<tab_box.length;i++){
            tab_box[i].style.display='none';
        }
    }
    // 添加点击事务
    tab_title_box.addEventListener('click',function (e) {
        var tab_id=document.getElementById('tab_'+e.target.id);
        clear_tab_title();
        e.target.className='current';
        clear_tab_detail();
        tab_id.style.display='block';
    })
</script>
<%--主菜单下拉栏--%>
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
<script src="js/ajax.js"></script>
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
<%--购物数量变化框--%>
<script>
    function addnum() {
        var num=document.getElementById('num');
        var numvalue=parseInt(num.value);
        numvalue=numvalue+1;
        num.value=numvalue;
    }
    function reducenum() {
        var num=document.getElementById('num');
        var numvalue=parseInt(num.value);
        if (numvalue<=1){
            return;
        }
        numvalue=numvalue-1;
        num.value=numvalue;
    }
</script>
<%--支付方式转换--%>
<script>
    function makezhifubao(obj){
        console.log(obj);
        obj.className='current';
        console.log(obj.parentNode.children[1]);
        obj.parentNode.children[1].className='';
    }
    function makeweixin(obj) {
        obj.className='current';
        obj.parentNode.children[0].className='';
    }
</script>
<%--加入购物车--%>
<script>
    function insertbookshop() {
        datamaincus();
    }
    function datamaincus() {
        var use3Value = '${sessionScope.customerid}';
        if (use3Value==''){
            alert("请先登录才能使用购物车功能");
            return;
        }else {
            getbookshop();
        }
    }
    function getbookshop(){
        var xhr=new XMLHttpRequest();
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        URL = URL.split('?')[1]; //获取参数列表
        var bookid='';
        for (var i=0;i<URL.length;i++){
            if (i>6){
                bookid+=URL[i];
            }
        }
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
                    getshopbookid();
                }
            }
    }
    function insertshop(numv) {
        var xhr=new XMLHttpRequest();
        var shopbookid=numv;
        var num=document.getElementById('num').value;
        var price=parseInt(document.getElementById('price').innerHTML);
        var mainprice=price*num*0.8;
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        URL = URL.split('?')[1]; //获取参数列表
        var bookid='';
        for (var i=0;i<URL.length;i++){
            if (i>6){
                bookid+=URL[i];
            }
        }
        var pareses ='shopbookid='+shopbookid+'&customerid='+'${sessionScope.customerid}'+'&bookid='+bookid+'&ordermount='+num+'&price='+mainprice+'&ispay=未付款';
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
    function getshopbookid() {
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
                insertshop(numv);
            }
            else{
                console.log("失败");
            }
        }
    }
</script>
<%--获取留言信息--%>
<script>
    function displaynone() {
        for (var i=1;i<6;i++){
            var tab_comment=document.getElementById('tab_comment'+i);
            tab_comment.style.display='none';
        }
    }
    function getcommominfor() {
        displaynone();
        var xhr=new XMLHttpRequest();
        var URL = window.location.search; //？xx=aa&yy=b  形式price
        URL = URL.split('?')[1]; //获取参数列表
        var bookid='';
        for (var i=0;i<URL.length;i++){
            if (i>6){
                bookid+=URL[i];
            }
        }
        var pareses ='bookid='+bookid;
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbComment/selectid');
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send(pareses);
        xhr.onload = function() {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                var maxnum=Math.ceil(res.rows.length/10);
                var paging_num_common1=document.getElementById('paging_num_common1');
                var paging_num_common2=document.getElementById('paging_num_common2');
                //设置最大页数
                paging_num_common2.innerHTML=maxnum;
                paging_num_common1.innerHTML='1';
                var num=(res.rows.length)%10;
                for (var i=0;i<res.rows.length&&i<10;i++){
                    var Commentname=document.getElementById('Commentname'+(i+1));
                    var commentcontent=document.getElementById('commentcontent'+(i+1));
                    var Commentdate=document.getElementById('Commentdate'+(i+1));
                    var userimg=document.getElementById('userimg'+(i+1));
                    var tab_comment=document.getElementById('tab_comment'+(i+1));
                    tab_comment.style.display='block';
                    Commentname.innerHTML=res.rows[i].commentname;
                    commentcontent.innerHTML=res.rows[i].commentcontent;
                    Commentdate.innerHTML=res.rows[i].commentdate;
                    userimg.src='upload/'+res.rows[i].customerid+'.jpg';
                }
                console.log("查询成功");
            }
            else{
                console.log("失败")
            }
        }
    }
</script>
</html>