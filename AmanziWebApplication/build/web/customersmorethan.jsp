<%-- 
    Document   : customersmorethan
    Created on : 10 May 2025, 5:23:33 PM
    Author     : nhlak
--%>

<%@page import="za.ac.tut.entities.CustomerProfile"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Customers with more than one order.</h1>
        <%
            List<CustomerProfile> customers = (List<CustomerProfile>) request.getAttribute("customer");
        %>
        <table border="1">
            <th>Name</th>
            <th>Address</th>
            <th>Contact</th>
                <%
                    for (CustomerProfile cust : customers) {
                        String name = cust.getName();
                        String address = cust.getAddress();
                        String contact = cust.getContactNumber();
                %>
            <tr>
                <td><%=name%></td>
                <td><%=address%></td>
                <td><%=contact%></td>
            </tr>
            <%
                }
            %>

        </table>
        <p>
            Click <a href="manager_menu.jsp">here</a> to go back menu.
        </p>
    </body>
</html>
