<%-- 
    Document   : logout
    Created on : Feb 17, 2019, 12:17:14 AM
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
        <h1>Hello World!</h1>
        <%
            request.removeAttribute("nm");
            session.invalidate();
            %>
    </body>
</html>
