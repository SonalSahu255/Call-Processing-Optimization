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
                     <form action="usercode/complaincode.jsp" method="post">
                        <h2  style="text-align:center; color:black;">
                        Complain Log        
                      </h2>  
                        <table style="margin:0 auto;" cellpadding="10">
                            <tr>
                                <td>Enter Subject</td>
                                <td>
                                    <textarea name="subject" required class="txt1"></textarea>
                                </td>
                            </tr>  
                            <tr>
                                <td>Enter Complain Text</td>
                                <td>
                                    <textarea name="complaintext" required class="txt1"></textarea>
                                </td>
                            </tr>
                            <tr>
                                
                                <td colspan="2">
                                    <input type="submit" class="btn" value="Submit"/>
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