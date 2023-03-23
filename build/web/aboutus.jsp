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
                 <div id="parent">
                     <h1 style="text-align:center;">Description of modules:</h1>
                   <h2>1. Customer Management</h2> 
                   <p>This module is used to provide information of  to CSE (Customer service Executive). As BPO company is working in field of Network Equipment Service and support, generally all the customers are corporate customers having large network infrastructure. Although in some of the cases, individual customers are also part of customer information database having limited number of equipment. Customer service Executive has to interact with customer for his queries and day to day problems. While interacting with customer,  CSE should have all the information about him like his name, Address, Email, Fax No., priority etc. to serve him better. Keeping this in mind this module is developed which can give information of customer instantly to CSE as soon as his interaction starts with customer.  
</p>
<h2>2.Knowledgebase Management</h2>
<p> This module is used to auto solve the client’s complain or to 
help CSE (Customer service Executive) to answer client’s problem or query. As BPO company is working 
in field of Network Equipment Service and support, generally all the customers are corporate customers 
having large network infrastructure. Although in some of the cases, individual customers are also part of 
customer information database having limited number of equipment. Customer service Executive has to 
interact with customer for his queries and day to day problems. While interacting with customer, CSE 
should have a strong knowledgebase to resolve customer’s complain and serve him better. Keeping this 
in mind this module is developed which can intelligently search the query/problem from knowledgebase 
having a large number of problems and their solutions. It gives the solution of customer’s problem 
instantly to CSE and he can interact with customer on that basis. It also get integrated with Complain 
logging system so that customer may get a solution of his problem as soon as he submit his complain in 
the system if that query or similar query already exists in the knowledge base.  
  </p>
  <h2>3.Expert Search</h2>
  <p> This is an important module and it is the core component of the expert search. It takes one argument as object.
      As object can have reference to any data type, so this function can be called by passing any type like int, double, 
      char, DateTime, string etc. Type of the argument is identified by RTTI (Run Time Type Identification)  in the function 
      implementation and depending on the type of the argument sql search function is called to search data from the database. </p>
<h2>4.Product Catalog</h2>
<p>This module of project contain the information about products which are sold by traders. </p>
<h2>5.Discussion Forum</h2>
<p>Silent Call is an Instant Messaging based real-time communication between two or more people, which is used to give message call to the colleagues, organizing meeting and broadcasting information among employees of BPO Company via computers connected over a network.  </p>

   
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
