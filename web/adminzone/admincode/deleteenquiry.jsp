<%@page import="mypack.DbManager"%>
<%
String id=request.getParameter("id");
String query="delete from enquiry where='"+id+"'";
DbManager dm=new DbManager();
if(dm.nonQuery(query)==true)
{
  out.print("<script>alert('Enquiry is deleted');window.location.href='../enquiries.jsp';</script>");
  
}
else
{
out.print("<script>alert('Enquiry is not deleted');window.location.href='../enquiries.jsp';</script>");
}

%>