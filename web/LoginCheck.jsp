<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: jacob
  Date: 6/7/19
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="userCheck" class="dao.UserDao" scope="session"/>
<jsp:useBean id="AdminCheck" class="dao.AdminDao" scope="session"/>
<%
    String username = request.getParameter("username");
    String userPassword = request.getParameter("userPassword");
    try {
        boolean succeed = userCheck.login(username, userPassword);
        if (succeed) {
            response.sendRedirect("./VoteView.jsp");
        } else{
            System.out.println("登录失败");
            //登录失败跳主页
            response.sendRedirect("login.jsp");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
