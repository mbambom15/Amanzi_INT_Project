<%-- 
    Document   : view_outcome
    Created on : 02 May 2025, 1:58:12 PM
    Author     : nhlak
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Orders</title>
    </head>
    <body>
        <h1>Customer Orders</h1>
        <%
            List<Order> orders = (List<Order>) request.getAttribute("orders");
        %>
        <table border="1">
            <th>Name</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Delivery date</th>
            <th>Delivery method</th>
            <th>Quantity </th>
            <th>Price</th>

            <%
                for (int x = 0; x < orders.size(); x++) {
                    String custName = orders.get(x).getCustomer().getName();
                    String contact = orders.get(x).getCustomer().getContactNumber();
                    String address = orders.get(x).getCustomer().getAddress();
                    //
                    String deliveryMethod = orders.get(x).getDeliveryMethod();
                    Date delivery = orders.get(x).getOrderDate();
                    //
                    Integer qty = orders.get(x).getOrderItems().get(x).getQuantity();
                    Double price = orders.get(x).getOrderItems().get(x).getTotalprice();
            %>
            <tr>

                <td><%=custName%></td>
                <td><%=contact%></td>
                <td><%=address%></td>
                <td><%=delivery%></td>
                <td><%=deliveryMethod%></td>
                <td><%=qty%></td>
                <td><%=price%></td>
            </tr>

            <%
                }
            %>

        </table>
        <p>
            Click <a href="manager_menu.jsp">here</a> to go back to dashboard.
        </p>
    </body>
</html>
