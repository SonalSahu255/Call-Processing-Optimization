<%@page import="mypack.DbManager"%>
<%
  
      String problemid=request.getParameter("problemid");
      String problemtext=request.getParameter("problemtext");
      String solutiontext=request.getParameter("solutiontext");
      DbManager dm=new DbManager();
      String posteddate=dm.getDate();
      String query="insert into kb(problemid,problemtext,solutiontext,posteddate) values('"+problemid+"','"+problemtext+"','"+solutiontext+"','"+posteddate+"')";
      if(dm.nonQuery(query)==true)
      {
        out.print("<script>alert('Data is saved');window.location.href='../knowledgebase.jsp';</script>");
      }
      else
      {
      out.print("<script>alert('Data is not saved');window.location.href='../knowledgebase.jsp';</script>");
      }
%>