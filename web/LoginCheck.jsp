<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: jacob
  Date: 6/7/19
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="userCheck" class="dao.UserDao" scope="session"/>
<jsp:useBean id="AdminCheck" class="dao.AdminDao" scope="session"/>
<%
    String username = request.getParameter("username");
    String userPassword = request.getParameter("userPassword");
    System.out.println(username);
    System.out.println(userPassword);
    try {
        boolean succeed = userCheck.login(username, userPassword);
        if (succeed) {
            System.out.println("登陆成功");
            response.sendRedirect("voteView.html");
        } else{
            System.out.println("登录失败");
//            response.sendRedirect("login.jsp");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>