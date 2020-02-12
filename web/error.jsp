<%-- 
    Document   : error
    Created on : Feb 17, 2019, 12:23:20 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> World ends here!</h1>
        <% 
                response.sendRedirect("index.html");
                %>
                       
    </body>
</html>
