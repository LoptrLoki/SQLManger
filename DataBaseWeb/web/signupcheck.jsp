<%--
  Created by IntelliJ IDEA.
  User: Saber
  Date: 2017/1/3
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@page import="java.sql.*" contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>注册中</title>
</head>
<body>
<%

    String userid1=new String(request.getParameter("account"));
    String password1=new String(request.getParameter("password1"));
    String password2=new String(request.getParameter("password2"));


    if(userid1!=null && !password1.equals("")&&!password2.equals("")) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/torrent", "root", "123456");
            Statement stmt = con.createStatement();
            String sql = "select * from  user where 用户名='" + userid1 + "';";
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='signup.jsp';</script>");
            } else {
                if(!password1.equals(password2)){
                    out.println("<script language='javascript'>alert('两次输入密码不匹配！');window.location.href='signup.jsp';</script>");
                }
                else{

                    /***********************写入数据库*************************/

                    out.println("<script language='javascript'>alert('注册成功！');window.location.href='Main.jsp';</script>");
                }
            }
        }catch(Exception e){
            System.out.println("数据库链接错误！！！");
        }

    }



    else{
        out.println("<script language='javascript'>alert('请输入账号密码！');window.location.href='index.jsp';</script>");
    }
%>

</body>
</html>
