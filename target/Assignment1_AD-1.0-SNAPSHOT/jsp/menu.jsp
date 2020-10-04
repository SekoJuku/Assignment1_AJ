<%@ page import="com.company.User" %><%--
  Created by IntelliJ IDEA.
  User: Арман
  Date: 13.09.2020
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <style>

    </style>
</head>
<body class="d-flex flex-column h-100">
    <% User user = (User) request.getAttribute("user"); %>
<%--  Header  --%>
<%@ include file="header.jsp"%>
<%--  Body  --%>
<%
    /*
        Serikzhan was here! Oldschool rules!
    */
%>
    <div style="text-align: center;">
        <img src="https://sportmassag.ru/assets/images/mumia.png" alt="">
    </div>
    <div style="text-align: center">
        <h4><%=user.getWeight()%> kg</h4>
        <form action="s2" method = "get">
            <div class="form-group">
                <input type="number" placeholder="Weight" name="kg">
            </div>
            <div class="form-group" >
                <input type="hidden" name = "user" value="<%= user.getWeight() %>">
            </div>
            <input type="submit" placeholder="Send">
        </form>
    </div>
<%--  Footer  --%>
<%@include file="footer.jsp"%>
</body>
</html>
