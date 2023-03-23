<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:50:54 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
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
                 <div id="header">
                     <div id="logo">
                         <img src="images/logo.png"/>
                     </div>
                     <div id="banner">
                         Call Processing Optimization
                     </div>
                 </div>
                 <div id="menu">
                     <ul>
                         <li><a href="userhome.jsp">Home</a></li>  
                         <li><a href="solution.jsp">Search Sol.</a></li>
                         <li><a href="discussion.jsp">Discussion</a></li>
                         <li><a href="complain.jsp">Complain</a></li>
                         <li><a href="changepassword.jsp">Change Pwd.</a></li>
                       <li><a href="logout.jsp">Logout</a></li>
                     </ul>
                 </div>
              
                 <div id="parent">
                     <h2 style="color:black; text-align: center;">
                         Solution
                     </h2>
                     <table border="1" style="margin:0 auto;" cellpadding="10">
                         <tr>
                             <th>Problem Id</th>
                             <th>Problem Text</th>
                             <th>Solution Text</th>
                         </tr>
                         <%
                         
                            String search=request.getParameter("search");
                            String query="select * from kb where problemid='"+search+"' or problemtext='"+search+"'";
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.selectQuery(query);
                            while(rs.next())
                            {
                         %>
                         <tr>
                             <td><%=rs.getString("problemid")%></td>
                             <td><%=rs.getString("problemtext")%></td>
                             <td><%=rs.getString("solutiontext")%></td>
                         </tr>
                         <%    }   %>
                     </table>
                 </div>
                 <div id="footer">
                     <div id="lfooter">
                         Copyright &copy; to CPO
                     </div>
                     <div id="rfooter">
                         Developed by  :- Er. Ekta Singh
                     </div>
                 </div>
                 </div>
    </body>
</html>
<%  }  %>