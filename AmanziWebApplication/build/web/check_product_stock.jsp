<%-- 
    Document   : check_product_stock
    Created on : 10 May 2025, 6:23:22 PM
    Author     : nhlak
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Product Stock</h1>
        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
      
            Integer count = (Integer) request.getAttribute("count");
        %>
        <h4>Products out of stock<%=count%></h4>
        <table>
            <th>ID:</th>
            <th>Product Name:</th>
            <%
                for (Product product : products) {
                    String name = product.getName();
                    Long id = product.getId();
            %>
            <tr>
                <td><%=id%></td>
                <td><%=name%></td>
            </tr>
            <%
                }
            %>
        </table>
        <p>Click <a href="manager_menu.jsp">here</a> to back home</p>
    </body>
</html>
