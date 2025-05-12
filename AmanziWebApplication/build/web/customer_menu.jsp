<%-- 
    Document   : customer_menu
    Created on : 07 May 2025, 2:25:39 PM
    Author     : khuts
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer page</title>
    </head>
    <body>
        <h1>Customer Menu.</h1>
        <form action="ViewCatalogServlet" method="GET">
            <input type="submit" value="View catalog"/>
        </form>
        <br>
        <form action="CustomerOrderServlet" method="GET">
            <input type="submit" value="View Orders History">
        </form>
    </body>

</html>
