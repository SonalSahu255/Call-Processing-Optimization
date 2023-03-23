<%-- 
    Document   : logout
    Created on : Aug 7, 2019, 2:09:25 PM
    Author     : user
--%>
<%

     session.invalidate();

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout()
            {
                
               window.history.forward();
               window.setTimeout("window.location.href='../index.jsp'",2000);
            }
        </script>
    </head>
    <body bgcolor="teal" onload="logout()">
        
    </body>
</html>
