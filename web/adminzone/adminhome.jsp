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
                     <form action="admincode/notificationcode.jsp" method="post">
                         <h2 style="text-align: center; color:blue;">
                             Add Notifiication
                         </h2>
                         <table style="margin: 0 auto; width:50%;" border="1">
                             <tr>
                                 <td>Enter Notification</td>
                                 <td>
                                     <textarea name="notificationtext" required style="height:100%; resize:none;"></textarea>
                                 </td>
                             </tr>
                             <tr>
                                 <td>&nbsp;</td>
                                 <td>
                                     <input type="submit" value="Add"/>
                                 </td>
                             </tr>
                         </table>
                     </form>
                     <br/><br/>
                     <table border="1" style="margin: 0 auto; width:90%;">
                         <tr>
                         <th>Id</th>
                         <th>Notification</th>
                          <th>Posted Date</th>
                          <th>Delete</th>
                         </tr>
                         <tr>
                             <%
                                 DbManager dm=new DbManager();
                                 ResultSet rs=dm.selectQuery("select * from notification");
                                while(rs.next())
                                {
                             %>
                         <tr>
                             <td><%=rs.getString("id")%></td>
                             <td><%=rs.getString("notificationtext")%></td>
                             <td><%=rs.getString("posteddate")%></td>
                             <td>
                                 <a href="admincode/deletenotification.jsp?id=<%=rs.getString("id")%>">Delete</a>
                             </td>
                         </tr>
                             <%   }  %>
                        
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