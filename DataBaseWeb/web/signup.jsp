<%--
  Created by IntelliJ IDEA.
  User: Saber
  Date: 2017/1/3
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <style type="text/css" media="screen">
        body{
            background-image: url(/image/bk.jpg);
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body style="text-align: center;">

<div id="container"  style="line-height: 20px;background-color:  	 	GhostWhite;text-align: center; align-items: center; width: 40%;height: 99%;margin: 50px auto;margin-top: 100px;opacity: 0.95;">
    <!--title part-->
    <div style="padding-top: 30px">
        <p style="font-size: 40px">用户注册</p>
    </div>
    <!--input part-->
    <div>
        <form style="font-size: 24px;padding-top: 0px" action="signupcheck.jsp" method="post">
            <input type="text" name="account" placeholder="账号" style="font-size: 24px; height: 60px;width: 80%;margin-top: 20px">
            <input type="password" name="password1" placeholder="密码"  style="font-size: 24px;  height: 60px;width: 80%;margin-top: 20px">
            <input type="password" name="password2" placeholder="确认密码"  style="font-size: 24px;  height: 60px;width: 80%;margin-top: 20px">
            <div style="align-content: space-between;margin-top: 30px">

                <input type="submit" name="signin" value="注册"  style="color: white; background-color: darkturquoise; font-size: 24px;height: 50px;width: 80%; opacity: 100; border-radius: 5px;border: none" >
                </input>

            </div>

        </form>
        <form action="index.jsp" method="post">
            <div  style="align-content: space-between;margin-top: 10px">

                <input type="submit" name="signup" value="返回登陆" style="color: white;background-color: crimson; font-size: 24px;height: 50px;width: 80%; opacity: 100; margin-top: 20px;border-radius: 5px;border: none" >
                </input>

            </div>
        </form>
    </div>

</div>



</body>
</html>
