package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import mypack.DbManager;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

      if(session.getAttribute("adminid")==null || session.getAttribute("adminid")=="")
      {
        response.sendRedirect("../login.jsp");
      }
      else
      {
        
      

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Call Processing Optimization</title>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\"/>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"grey\">\n");
      out.write("             <div id=\"outer\">\n");
      out.write("                 <div id=\"header\">\n");
      out.write("                     <div id=\"logo\">\n");
      out.write("                         <img src=\"images/logo.png\"/>\n");
      out.write("                     </div>\n");
      out.write("                     <div id=\"banner\">\n");
      out.write("                         Call Processing Optimization\n");
      out.write("                     </div>\n");
      out.write("                 </div>\n");
      out.write("                 <div id=\"menu\">\n");
      out.write("                     <ul>\n");
      out.write("                         <li><a href=\"adminhome.jsp\">Home</a></li>  \n");
      out.write("                         <li><a href=\"enquiries.jsp\">Enquiries</a></li>\n");
      out.write("                         <li><a href=\"complains.jsp\">Complains</a></li>\n");
      out.write("                         <li><a href=\"customers.jsp\">Customers</a></li>\n");
      out.write("                         <li><a href=\"knowledgebase.jsp\">Knowledgebase</a></li>\n");
      out.write("                       <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                     </ul>\n");
      out.write("                 </div>\n");
      out.write("              \n");
      out.write("                 <div id=\"parent\">\n");
      out.write("                     <form action=\"admincode/notificationcode.jsp\" method=\"post\">\n");
      out.write("                         <h2 style=\"text-align: center; color:blue;\">\n");
      out.write("                             Add Notifiication\n");
      out.write("                         </h2>\n");
      out.write("                         <table style=\"margin: 0 auto; width:50%;\" border=\"1\">\n");
      out.write("                             <tr>\n");
      out.write("                                 <td>Enter Notification</td>\n");
      out.write("                                 <td>\n");
      out.write("                                     <textarea name=\"notificationtext\" required style=\"height:100%; resize:none;\"></textarea>\n");
      out.write("                                 </td>\n");
      out.write("                             </tr>\n");
      out.write("                             <tr>\n");
      out.write("                                 <td>&nbsp;</td>\n");
      out.write("                                 <td>\n");
      out.write("                                     <input type=\"submit\" value=\"Add\"/>\n");
      out.write("                                 </td>\n");
      out.write("                             </tr>\n");
      out.write("                         </table>\n");
      out.write("                     </form>\n");
      out.write("                     <br/><br/>\n");
      out.write("                     <table border=\"1\" style=\"margin: 0 auto; width:90%;\">\n");
      out.write("                         <tr>\n");
      out.write("                         <th>Id</th>\n");
      out.write("                         <th>Notification</th>\n");
      out.write("                          <th>Posted Date</th>\n");
      out.write("                          <th>Delete</th>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             ");

                                 DbManager dm=new DbManager();
                                 ResultSet rs=dm.selectQuery("select * from notification");
                                while(rs.next())
                                {
                             
      out.write("\n");
      out.write("                         <tr>\n");
      out.write("                             <td>");
      out.print(rs.getString("id"));
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString("notificationtext"));
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString("posteddate"));
      out.write("</td>\n");
      out.write("                             <td>\n");
      out.write("                                 <a href=\"admincode/deletenotification.jsp?id=");
      out.print(rs.getString("id"));
      out.write("\">Delete</a>\n");
      out.write("                             </td>\n");
      out.write("                         </tr>\n");
      out.write("                             ");
   }  
      out.write("\n");
      out.write("                        \n");
      out.write("                     </table>\n");
      out.write("                 </div>\n");
      out.write("                 <div id=\"footer\">\n");
      out.write("                     <div id=\"lfooter\">\n");
      out.write("                         Copyright &copy; to CPO\n");
      out.write("                     </div>\n");
      out.write("                     <div id=\"rfooter\">\n");
      out.write("                         Developed by  :- Er. Ekta Singh\n");
      out.write("                     </div>\n");
      out.write("                 </div>\n");
      out.write("                 </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
  }  
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
