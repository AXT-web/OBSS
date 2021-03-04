<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>登录页面</title>
    <!-- 引入favicon图标 -->
    <link rel="shortcut icon" href="favicon.ico" />
    <!-- 引入初始化的css -->
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <!-- 引入的注册页面的css -->
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script>
</head>
<body>
    <div class="w">
        <header>
            <div class="logo">
                <a href="index.jsp"> <img src="images/logo.jpg" alt=""></a>
            </div>
        </header>
        <div class="log_wrap">
            <div class="log_form">
                <div class="log_title">登录账户</div>
                <div class="log_box" >
                    <form action="#" method="post">
                        <div class="item_loginname">
                            <label for="loginname" class="login_label name_label"></label>
                            <input type="text" id="loginname" class="log_name" name="username" tabindex="1" autocomplete="off">
                        </div>
                        <div class="item_loginpwd">
                            <label for="loginpwd" class="login_label pwd_label"></label>
                            <input type="password" id="loginpwd" class="log_pwd" name="userpwd" tabindex="1" autocomplete="off">
                        </div>
                        <div class="item_forget">
                            <span class="forget clearfix">
                                <p id="tips">账户或密码错误！</p>
                                <a href="forget_pwd.jsp">忘记密码</a>
                            </span>
                        </div>
                        <div class="item_btn">
                            <a href="#" class="log_btn" id="btn">登录</a>
                        </div>
                    </form>
                    <div class="log_reg clearfix">
                        <div class="fr">还没有账号？<a href="register.jsp">立即注册</a></div>
                    </div>
                </div>
            </div>
        </div>
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
    </div>
</body>
<script>
    var btn = document.getElementById('btn');
    var loginname = document.getElementById('loginname');
    var loginpwd = document.getElementById('loginpwd');
    var tip=document.getElementById('tips');
    // 为按钮添加点击事件
    btn.onclick = function () {
        var xhr = new XMLHttpRequest();
        var nameValue = loginname.value;
        var pwdValue = loginpwd.value;
        var params = 'customerid='+ nameValue +'&customerpwd=' + pwdValue;
        xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/login');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(params);
        // 获取服务器端响应的数据
        xhr.onload = function () {
            let res=JSON.parse(xhr.responseText);
            if(res.total==0){
                tip.style.display='none';
                window.location.href="http://localhost:8080/OBSS_war_exploded/index.jsp";
            }
            else{
                var xhr2 = new XMLHttpRequest();
                var params2='adminid='+ nameValue +'&adminpwd=' + pwdValue;
                console.log(params2)
                xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbManager/login');
                // 设置请求参数格式的类型（post请求必须要设置）
                xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                // 发送请求
                xhr2.send(params2);
                // 获取服务器端响应的数据
                xhr2.onload = function() {
                    let res2=JSON.parse(xhr2.responseText)
                    console.log(xhr2.responseText);
                    if(res2.total==0){
                        tip.style.display='none';
                        window.location.href="http://localhost:8080/OBSS_war_exploded/bsmanagement.jsp";
                    }else {
                        tip.style.display='block';
                        return;
                    }
                }
            }
        }

    }
</script>
</html>