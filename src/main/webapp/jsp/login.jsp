<%@ page import="com.company.Login" %><%--
  Created by IntelliJ IDEA.
  User: Арман
  Date: 13.09.2020
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        form {

        }
    </style>
</head>
<body>
<form action="s1" method="post">
    <div class="form-group">
        <label for="username">Username: </label>
        <input type="text" id="username" name="username">
    </div>
    <div class="form-group">
        <label for="userpass">Password: </label>
        <input type="password" id="userpass" name="userpass">
    </div>
    <%
        if(request.getAttribute("err") != null) {
            %>
            <%=request.getAttribute("err")%><br>
            <%
    }
    %>
    <input type="submit" placeholder="Log In">
</form>
</body>
</html>
