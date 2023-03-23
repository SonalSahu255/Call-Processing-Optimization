<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:50:54 PM
    Author     : user
--%>
<%
      if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
      {
        response.sendRedirect("../login.jsp");
      }
      else
      {
        
      
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Call Processing Optimization</title>
        <link href="css/style.css" rel="stylesheet"/>
        
    </head>
    <body bgcolor="grey">
             <div id="outer">
                 <%@include  file="../master/header.jsp" %>
                 <%@include file="../master/menu.jsp" %>
              
                 <div id="parent">
                     <form action="search.jsp" method="post">
                     <h2 style="text-align:center; color:black; ">
                         Search Solution
                     </h2>
                         <table style="margin: 0 auto;" cellpadding="10">
                             <tr>
                                 <td>Enter Problem Id or Problem Text</td>
                                 <td>
                                 <textarea name="search" required class="txt1"></textarea>
                                 </td>
                             </tr>
                             <tr>
                                 
                                 <td colspan="2">
                                     <input type="submit" class="btn" value="Search"/>
                                 </td>
                             </tr>
                         </table>
                         </form>
                 </div>
                 <%@include file="../usermaster/footer.jsp" %>
                 </div>
    </body>
</html>
<%  }  %>