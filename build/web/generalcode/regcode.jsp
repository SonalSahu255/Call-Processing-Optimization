<%@page import="mypack.DbManager"%>
<%

    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String nationality=request.getParameter("nationality");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String password=request.getParameter("password");
    DbManager dm=new DbManager();
    String regdate=dm.getDate();
    String usertype="user";
    String query1="insert into register values('"+name+"','"+gender+"','"+address+"','"+nationality+"','"+contactno+"','"+emailaddress+"','"+password+"','"+regdate+"')";
    String query2="insert into login values('"+emailaddress+"','"+password+"','"+usertype+"')";
    if(dm.nonQuery(query1)==true)
    {
      if(dm.nonQuery(query2)==true)
      {
        out.print("<script>alert('Registration is done.');window.location.href='../index.jsp';</script>");
      }
    }
    else
    {
      out.print("<script>alert('Registration is not  done.');window.location.href='../index.jsp';</script>");
    }
%>