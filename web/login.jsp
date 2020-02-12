<%-- 
    Document   : login
    Created on : Feb 16, 2019, 11:05:54 PM
    Author     : lenovo
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
            String nm= request.getParameter("user");
            String p=request.getParameter("pass");
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            boolean status=false;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","05031999");
            ps=con.prepareStatement("select * from student where username=? and password=?");
            ps.setString(1,nm);
            ps.setString(2,p);
            rs=ps.executeQuery();
            status=rs.next();
            if(status){
                session.setAttribute("nm", nm);
                
         %>
         
        <jsp:include page="welc.jsp"></jsp:include>
        <%
        }
            else
            {
                response.sendRedirect("error.jsp");
                
            }
            %>
    </body>
</html>
