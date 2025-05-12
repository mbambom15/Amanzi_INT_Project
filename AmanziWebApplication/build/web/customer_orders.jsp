<%@page import="za.ac.tut.entities.OrderItem"%>
<%@page import="za.ac.tut.entities.Order"%>
<%@page import="java.util.List"%>
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
            Integer countOrders = (Integer) request.getAttribute("countOrders");
        %>

        <h4>Total Orders: <%= countOrders%></h4>

        <%
            if (orders != null && !orders.isEmpty()) {
                for (Order order : orders) {
        %>
        <table border="1" cellpadding="8" cellspacing="0" style="margin-bottom: 20px;">
            <tr>
                <th colspan="4">Order ID: <%= order.getId()%></th>
            </tr>
            <tr>
                <th>Order Date</th>
                <th>Delivery Method</th>
                <th>Total Price</th>
                <th>Customer Name</th>
            </tr>
            <tr>
                <td><%= order.getOrderDate()%></td>
                <td><%= order.getDeliveryMethod()%></td>
                <td>R<%= order.getTotalPrice()%></td>
                <td><%= order.getCustomer().getName()%></td>
            </tr>
            <tr>
                <th colspan="4">Order Items</th>
            </tr>
            <tr>
                <th>Product Name</th>
                <th>Unit Price</th>
                <th>Quantity</th>
                <th>Item Total</th>
            </tr>
            <%
                List<OrderItem> items = order.getOrderItems();
                for (OrderItem item : items) {
            %>
            <tr>
                <td><%= item.getProduct().getName()%></td>
                <td>R<%= item.getProduct().getUnitPrice()%></td>
                <td><%= item.getQuantity()%></td>
                <td>R<%= item.getTotalprice()%></td>
            </tr>
            <% } %>
        </table>
        <%
            }
        } else {
        %>
        <p>No orders found for this customer.</p>
        <%
            }
        %>
        <p>Click <a href="customer_menu.jsp">here</a> to go back to home</p>
    </body>
</html>
