<%-- 
    Document   : edit_outcome
    Created on : 02 May 2025, 12:13:15 AM
    Author     : nhlak
--%>

<%@page import="za.ac.tut.entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>End Edit</title>
    </head>
    <body>
        <%
             Product product = (Product)request.getAttribute("product");
             Long id = product.getId();
        %>
        <h1>Product <%=id%> has been updated.</h1>
        <p>
            Click <a href="manager_menu.jsp">here</a> to go back to menu.
        </p>
    </body>
</html>
