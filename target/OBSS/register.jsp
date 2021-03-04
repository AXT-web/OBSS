<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人注册</title>
    <!-- 引入favicon图标 -->
    <link rel="shortcut icon" href="favicon.ico" />
    <!-- 引入初始化的css -->
    <link rel="stylesheet" href="css/base.css">
    <!-- 引入的注册页面的css -->
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>
    <div class="w">
        <header>
            <div class="logo">
                <a href="index.jsp"> <img src="images/logo.jpg" alt=""></a>
            </div>
        </header>
        <div class="registerarea">
            <h3>注册新用户
                <div class="login">我有账号，去<a href="login.jsp">登陆</a></div>
            </h3>
            <div class="reg_form">
                <form action="">
                    <ul>
                        <li>
                            <label for="pho">手机号：</label>
                            <input type="text" class="inp" id="pho">
                            <span class="tips1">
                                <p class="message1">请输入您的11位数的手机号码</p>
                            </span>
                        </li>
<%--                        <li><label for="">短信验证码：</label>--%>
<%--                            <input type="text" class="inp" id="dua">--%>
<%--                            <span class="tips2">--%>
<%--                                <p class="message2">请输入您的短信验证码</p>--%>
<%--                            </span></li>--%>
                        <li><label for="pwd1">登录密码：<img src="images/close.png" alt="" id="eye1"></label>
                            <input type="password" class="inp" id="pwd1">
                            <span class="tips3">
                                <p class="message3">请输入您的登录密码</p>
                            </span>
                        </li>
                        <li class="safe">安全程度 <em class="ruo">弱</em> <em class="zhong">中</em> <em class="qiang">强</em>
                        </li>
                        <li><label for="eye2">确认密码：<img src="images/close.png" alt="" id="eye2"></label> <input
                                type="password" class="inp" id="pwd2">
                            <span class="tips4">
                                 <p class="message4">请再次输入您的登录密码</p>
                                </span>
                        </li>
                        <li class="agree"><input type="checkbox" name="" id="">
                            同意协议并注册 <a href="#">《知晓用户协议》</a>
                        </li>
                        <li>
                            <input type="button" value="完成注册" class="btn" id="btn">
                        </li>
                    </ul>
                </form>
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
    // 1. 获取元素
    var eye1 = document.getElementById('eye1');
    var eye2 = document.getElementById('eye2');
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
    var pwd1 = document.getElementById('pwd1');
    var pwd2 = document.getElementById('pwd2');
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

    var pho =document.getElementById('pho');
    var message1 = document.querySelector('.message1');
    pho.onblur = function() {
        var xhr = new XMLHttpRequest();
        var nameValue = pho.value;
        var params = 'customerid='+ nameValue;
        // 根据表单里面值的长度 pho.value.length
        if (!(/^1(3[0-9]|5[189]|8[6789])[0-9]{8}$/.test(nameValue))) {
            // console.log('错误');
            message1.className = 'message1 wrong';
            message1.innerHTML = '请输入正确的手机号码';
        } else {
            xhr.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/selectid');
            // 设置请求参数格式的类型（post请求必须要设置）
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            // 发送请求
            xhr.send(params);
            xhr.onload = function () {
                let res=JSON.parse(xhr.responseText);
                if(res.total==0){
                    message1.className = 'message1 wrong';
                    message1.innerHTML = '该账号已经被注册';
                }
                else{
                    message1.className = 'message1 right';
                    message1.innerHTML = '可以使用该账号注册';
                }
            }
        }
    }

    var message3 = document.querySelector('.message3');
    var message4 = document.querySelector('.message4');

    pwd2.onblur = function(){
        if(pwd1.value === pwd2.value){
            console.log(pwd1.value);
            console.log(pwd2.value);
            message3.className = 'message3 right';
            message4.className = 'message4 right';
            message3.innerHTML = '两次输入密码一致';
            message4.innerHTML = '两次输入密码一致';
        }else{
            message3.className = 'message3 wrong';
            message4.className = 'message4 wrong';
            message3.innerHTML = '密码不一致，请重新输入！';
            message4.innerHTML = '密码不一致，请重新输入！';
        }
    }
    var btn=document.getElementById('btn');
    var timer = null;
    btn.onclick = (function () {
        var xhr2 = new XMLHttpRequest();
        var nameValue = pho.value;
        var pwdValue = pwd2.value;
        var params = 'customerid='+ nameValue +'&customerpwd=' + pwdValue;
        xhr2.open('post', 'http://localhost:8080/OBSS_war_exploded/TbCustomer/register');
        // 设置请求参数格式的类型（post请求必须要设置）
        xhr2.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr2.send(params);
        // 获取服务器端响应的数据
        console.log(666);
        xhr2.onload = function () {
            let res2=JSON.parse(xhr2.responseText);
            console.log(666);
            console.log(res2.total);
            if(res2.total==0){
                console.log(111);
                clearTimeout(timer);
                alert("注册成功，正在跳转登录页面。");
                timer = setTimeout(function () {
                    window.location.href="http://localhost:8080/OBSS_war_exploded/login.jsp";
                },1000)
            }
            else{
                console.log(222);
                alert("注册失败！");
                return;
            }
        }
    })

</script>
</html>