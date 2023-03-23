<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:50:54 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
      if(session.getAttribute("adminid")==null || session.getAttribute("adminid")=="")
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
                         <li><a href="adminhome.jsp">Home</a></li>  
                         <li><a href="enquiries.jsp">Enquiries</a></li>
                         <li><a href="complains.jsp">Complains</a></li>
                         <li><a href="customers.jsp">Customers</a></li>
                         <li><a href="knowledgebase.jsp">Knowledgebase</a></li>
                       <li><a href="logout.jsp">Logout</a></li>
                     </ul>
                 </div>
              
                 <div id="parent">
                     <h2 style="text-align: center; color:black;">
                       View All Customers 
                     </h2>
                     <table border="1" style="margin:0 auto; width:90%;">
                         <tr>
                             <th>Nmae</th>
                             <th>Gender</th>
                             <th>Address</th>
                             <th>Nationality</th>
                             <th>Contact No</th>
                             <th>Email Address</th>
                             <th>Reg. Date</th>
                          </tr>
                          <%
                          
                             DbManager dm=new DbManager();
                             ResultSet rs=dm.selectQuery("select  * from register");
                             while(rs.next())
                             {
                          %>
                          <tr>
                              <td><%=rs.getString("name")%></td>
                              <td><%=rs.getString("gender")%></td>
                              <td><%=rs.getString("address")%></td>
                              <td><%=rs.getString("nationality")%></td>
                              <td><%=rs.getString("contactno")%></td>
                              <td><%=rs.getString("emailaddress")%></td>
                              <td><%=rs.getString("regdate")%></td>
                          </tr>
                          
                          <%   }   %>
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