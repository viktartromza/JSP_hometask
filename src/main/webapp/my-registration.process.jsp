<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page Redirection</title>
</head>
<body>
<%
    // New location to be redirected
    String url;
    if (request.getParameter("login").equals("") || request.getParameter("password").equals("")) {
        url = "/my-registration.jsp";
    } else {
        try (FileWriter writer = new FileWriter("D:/test.txt")) {
            writer.write("LOGIN: " + request.getParameter("login") + "\n" + "PASSWORD: " + request.getParameter("password"));
        }
        catch (IOException ex){}

        url = "/registration.html";
    }
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", url);
%>
</body>
</html>
