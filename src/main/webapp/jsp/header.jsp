<%@ page import="com.company.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% User user1 = new User();%>

<nav class="navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="https://startupnetwork.kz/startups/">
        Startup
    </a>
    <span class="navbar-text">
        <h3>Welcome <%=user1.getName()%>!</h3>
    </span>
    <a class="navbar-icon btn btn-danger" href="s3">
        Sign Out
    </a>
</nav>
