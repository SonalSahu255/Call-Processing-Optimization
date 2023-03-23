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
                     <form action="admincode/knowledgebasecode.jsp" method="post">
                         <h2 style="text-align: center; color:black;">
                             Add Knowledgebase
                         </h2>
                         <table  style="margin: 0 auto;" cellpadding="10">
                             <tr>
                                 <td>Enter Problem Id</td>
                                 <td>
                                     <input type="number" name="problemid" class="txt" required/>
                                 </td>
                                 
                             </tr>
                             <tr>
                                 <td>Enter Problem Text</td>
                                 <td>
                                     <textarea name="problemtext" required class="txt1"></textarea>
                                 </td>
                             </tr>
                             <tr>
                                 <td>Enter Solution Text</td>
                                 <td>
                                     <textarea name="solutiontext" required class="txt1"></textarea>
                                     
                                 </td>
                             </tr>
                             <tr>
                                 
                                 <td colspan="2">
                                     <input type="submit" class="btn" value="Save"/>
                                 </td>
                                
                                     
                            
                             </tr>
                         </table>
                     </form>
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