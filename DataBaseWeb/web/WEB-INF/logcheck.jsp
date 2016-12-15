<%--
  Created by IntelliJ IDEA.
  User: Saber
  Date: 2016/12/15
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆中</title>
</head>
<body>
<%
    String userid1=new String(request.getParameter("account"));
    String password1=new String(request.getParameter("password"));
    if(userid1!=null && !password1.equals("")) {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chao", "root", "850629");
        Statement stmt = con.createStatement();
        String sql = "select * from  userinfo where userid='" + userid1 + "';";
        ResultSet rs = stmt.executeQuery(sql);
        if (rs.next()) {
            String password = new String(rs.getString("password"));
            if (password.equals(password1)) {
                session.setAttribute("userid1", userid1);
                response.sendRedirect("sucess.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }
        } else {
            response.sendRedirect("login.jsp");
        }
    }
    else{
        out.println("请先登录");
        out.println("<a href=index.html>返回</a>");
    }
%>

</body>
</html>
<%@page import="java.sql.*" contentType="text/html;charset=utf-8" %>

