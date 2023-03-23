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
                 <div id="parent" >
                  <h1 style="text-align: center;">Call Processing Optimization</h1> 
                 <h2>Introduction</h2>
                 <p style="text-align: justify;">
                    Call Processing Optimization is a web based application to handle the customer’s enquiries. This is an expert system which automatically handles the customer queries and gives the relevant result without any human interaction. In this web application there is a strong knowledgebase which handles the query.  
                 </p>
                 <h2>Client Information</h2>
                 <p>This web application is developed for BPO sector, a renowned BPO Norbel placed in Lucknow, Uttar Pradesh, India. </p>
                 <h2>Existing System</h2>
                 <p> The Client faced many problems to solve the customer’s queries. The client was used the manual system to maintain the customer records in excel files and there was not automated system for solving the queries of customers. There are following drawbacks of existing system</p>
                 <ul>
                     <li>Maintenance of Client’s record is very typical, since there are numerous clients spread globally. </li>
                     <li>Maintenance of a large amount of Queries and its Solution is a tedious job.</li>
                     <li> Searching and matching the queries with its solution was very tedious.</li>
                     <li>Calculating a particular person’s efficiency that solves the client’s problem is very hard. </li>
                     <li>One query may arise several times and different administrators may solve it differently, so it is 
difficult to derive the optimal solution of that problem.  </li>
                     <li>The most importantly, it took time to provide services manually, thus more chances of client’s 
dissatisfaction. </li>
                 </ul>
                 <h2>Tools and Technology used</h2>
                 <ul>
                     <li>J2EE (Servlets, JSP) </li>
                      <li> Spring framework as application architecture</li>
                       <li> Netbeans as IDE </li>
                        <li>MySql for back end database </li>
                 </ul>
                 


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
                         Developed by  :- Sonal
                     </div>
                 </div>
                 </div>
    </body>
</html>
