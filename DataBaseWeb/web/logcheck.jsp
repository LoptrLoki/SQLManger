<%--
  Created by IntelliJ IDEA.
  User: Saber
  Date: 2016/12/15
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@page import="java.sql.*" contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>登陆中</title>
</head>
<body>
<%
  
    String userid1=new String(request.getParameter("account"));
    String password1=new String(request.getParameter("password"));
    if(userid1!=null && !password1.equals("")) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/torrent", "root", "123456");
            Statement stmt = con.createStatement();
            String sql = "select * from  user where 用户名='" + userid1 + "';";
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {

                String ps = new String(rs.getString("密码"));
                if (password1.equals(ps)) {
                    session.setAttribute("userid1", userid1);
                    response.sendRedirect("Main.jsp");
                } else {
                    out.println("<script language='javascript'>alert('密码错误！');window.location.href='index.jsp';</script>");
                }
            } else {
                out.println("<script language='javascript'>alert('用户不存在！');window.location.href='index.jsp';</script>");
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


