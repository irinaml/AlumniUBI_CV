<%-- 
    Document   : index
    Created on : Feb 10, 2016, 8:59:17 AM
    Author     : irina.m.lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body>
        <form method="post" action="jsp/ProcessLogin.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>Administradoor</td>
                        <td><input type="checkbox" name="admin" value="ON" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td>
                            <!--<input type="reset" value="Reset" />--></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="jsp/Alumni_old/Register.jsp">Register Here</a></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
