<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
            String message = (String)request.getAttribute("message");
        %>
        <p><%=message%></p>
        <h1>Login</h1>
        <form action="LoginCustServlet" method="POST">
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" required=""></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pswd" required=""></td>
                </tr>
                <tr>
                    <td><input type="submit" value="LOGIN"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
