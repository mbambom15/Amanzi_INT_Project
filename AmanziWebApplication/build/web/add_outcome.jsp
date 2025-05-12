<%-- 
    Document   : add_outcome
    Created on : 01 May 2025, 11:47:32 PM
    Author     : nhlak
--%>

<%@page import="za.ac.tut.entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Addition outcome page</title>
    </head>
    <body>
        <%
            Product p1 = (Product)request.getAttribute("p1");
            Long id = p1.getId();
        %>
        <h1>Product <%=id%> has been added into database</h1>
        <p>
            Click <a href="manager_menu.jsp">here</a> to go back to menu.
        </p>
    </body>
</html>
