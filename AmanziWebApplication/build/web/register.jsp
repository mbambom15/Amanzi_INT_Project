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
        <h1>Customer sign-up</h1>
        <form action="CustSignUpServlet" method="POST">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                 <tr>
                    <td>Address</td>
                    <td><input type="text" name="address"></td>
                </tr>
                 <tr>
                    <td>Contact number</td>
                    <td><input type="tel" name="contact"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pswd" required=""></td>
                </tr>
                <tr>
                    <td>Role</td>
                    <td><input type="text" name="role" value="Customer" readonly=""/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="REGISTER"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
