<%@page import="mypack.DbManager"%>
<%

     String id=request.getParameter("id");
     String query="delete from complain where id='"+id+"'";
     DbManager dm=new DbManager();
     if(dm.nonQuery(query)==true)
     {
       out.print("<script>alert('Complain is deleted');window.location.href='../complains.jsp';</script>");
     }
     else
     {
       out.print("<script>alert('Complain is not deleted');window.location.href='../complains.jsp';</script>");
     }
   
%>