<%-- 
    Document   : login
    Created on : Feb 15, 2021, 5:37:45 PM
    Author     : renel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form name="loginForm" action="http://localhost:8080/THS/LoginServletAdminDB" method="post">
            <table>
                <tr><td>
                        Admin ID:</td><td>
                        <input type="Text" name="idtb"></td>
            </tr>
            <tr><td>
                    Password:</td><td>
                    <input type="Text" name="pwtb"></td>
            </tr>
            <tr><td></td><td>
                    <input type="submit" value="Login">
                <input type="reset" value="Clear"></td>
            </tr>
            </table>
        </form>
    </body>
</html>
