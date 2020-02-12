<%-- 
    Document   : welc
    Created on : Feb 17, 2019, 12:07:26 AM
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
        <h1>heyo!</h1>
        <%    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            response.setHeader("Pragma","no-cache");
            if(session.getAttribute("nm")==null)
            {
                response.sendRedirect("index.html");
            }
        %>
        <form action="logout.jsp"><input type="submit" value="logout">
        </form>
        
    </body>
</html>
