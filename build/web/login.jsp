<%-- 
    Document   : index
    Created on : Aug 3, 2019, 3:50:54 PM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Call Processing Optimization</title>
        <link href="css/style.css" rel="stylesheet"/>
        <script src="js/slider.js" type="text/javascript"></script>
        <style>
           
            </style>
    </head>
    <body bgcolor="grey" onload="moveSlider()">
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
                         <li><a href="index.jsp">Home</a></li>  
                         <li><a href="aboutus.jsp">About Us</a></li>
                         <li><a href="registration.jsp">Registration</a></li>
                         <li><a href="login.jsp">Login</a></li>
                         <li><a href="contactus.jsp">Contacts Us</a></li>
                     </ul>
                 </div>
                 <div id="slider">
                     <img id="slide" width="100%" height="400px"/>
                 </div>
                 <div id="parent">
                    
                    
                         <form action="generalcode/logincode.jsp" method="post">
                          <h2 style="color:black;text-align:center;">
                              Login Form
                          </h2>
                          <table style="margin:0 auto;" cellpadding="10">
                              <tr>
                                  <td>Enter User Id</td>
                                  <td>
                                      <input type="text" name="userid" class="txt" required/>
                                  </td>
                                  </tr>
                                 
                                  <tr>
                                      <td>Enter Password</td>
                                      <td>
                                          <input type="password" name="password" class="txt" required/>
                                          </td>
                                  </tr>
                                  <tr>
                                      
                                      <td colspan="2">
                                      <input type="submit" class="btn" value="Login"/>
                                       </td>    
                                  </tr>
                              </table>
                          </form>
                     
                 </div>
                 <div id="show">
                     
                     <marquee direction="up" height="200" onmouseover="stop()" onmouseout="start()">
                         <%
                           DbManager dm=new DbManager();
                           ResultSet rs=dm.selectQuery("select * from notification");
                           while(rs.next())
                           {
                         %>
                         <span style="text-align: center;">
                             <p style="color:blue; font-size: 25px;"><%=rs.getString("notificationtext")%></p>
                             <p><%=rs.getString("posteddate")%></p>
                          </span>
                         <%    }  %>
                         </marquee>
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
