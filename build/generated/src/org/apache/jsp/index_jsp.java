package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import mypack.DbManager;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Call Processing Optimization</title>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"js/slider.js\" type=\"text/javascript\"></script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"grey\" onload=\"moveSlider()\">\n");
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
      out.write("                         <li><a href=\"index.jsp\">Home</a></li>  \n");
      out.write("                         <li><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("                         <li><a href=\"registration.jsp\">Registration</a></li>\n");
      out.write("                         <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                         <li><a href=\"contactus.jsp\">Contacts Us</a></li>\n");
      out.write("                     </ul>\n");
      out.write("                 </div>\n");
      out.write("                 <div id=\"slider\">\n");
      out.write("                     <img id=\"slide\" width=\"100%\" height=\"400px\"/>\n");
      out.write("                 </div>\n");
      out.write("                 <div id=\"parent\" >\n");
      out.write("                  <h1 style=\"text-align: center;\">Call Processing Optimization</h1> \n");
      out.write("                 <h2>Introduction</h2>\n");
      out.write("                 <p style=\"text-align: justify;\">\n");
      out.write("                    Call Processing Optimization is a web based application to handle the customer’s enquiries. This is an expert system which automatically handles the customer queries and gives the relevant result without any human interaction. In this web application there is a strong knowledgebase which handles the query.  \n");
      out.write("                 </p>\n");
      out.write("                 <h2>Client Information</h2>\n");
      out.write("                 <p>This web application is developed for BPO sector, a renowned BPO Norbel placed in Lucknow, Uttar Pradesh, India. </p>\n");
      out.write("                 <h2>Existing System</h2>\n");
      out.write("                 <p> The Client faced many problems to solve the customer’s queries. The client was used the manual system to maintain the customer records in excel files and there was not automated system for solving the queries of customers. There are following drawbacks of existing system</p>\n");
      out.write("                 <ul>\n");
      out.write("                     <li>Maintenance of Client’s record is very typical, since there are numerous clients spread globally. </li>\n");
      out.write("                     <li>Maintenance of a large amount of Queries and its Solution is a tedious job.</li>\n");
      out.write("                     <li> Searching and matching the queries with its solution was very tedious.</li>\n");
      out.write("                     <li>Calculating a particular person’s efficiency that solves the client’s problem is very hard. </li>\n");
      out.write("                     <li>One query may arise several times and different administrators may solve it differently, so it is \n");
      out.write("difficult to derive the optimal solution of that problem.  </li>\n");
      out.write("                     <li>The most importantly, it took time to provide services manually, thus more chances of client’s \n");
      out.write("dissatisfaction. </li>\n");
      out.write("                 </ul>\n");
      out.write("                 <h2>Tools and Technology used</h2>\n");
      out.write("                 <ul>\n");
      out.write("                     <li>J2EE (Servlets, JSP) </li>\n");
      out.write("                      <li> Spring framework as application architecture</li>\n");
      out.write("                       <li> Netbeans as IDE </li>\n");
      out.write("                        <li>MySql for back end database </li>\n");
      out.write("                 </ul>\n");
      out.write("                 \n");
      out.write("\n");
      out.write("\n");
      out.write("                 </div>\n");
      out.write("                 <div id=\"show\">\n");
      out.write("                     \n");
      out.write("                     <marquee direction=\"up\" height=\"200\" onmouseover=\"stop()\" onmouseout=\"start()\">\n");
      out.write("                        ");

                           DbManager dm=new DbManager();
                           ResultSet rs=dm.selectQuery("select * from notification");
                           while(rs.next())
                           {
                         
      out.write("\n");
      out.write("                         <span style=\"text-align: center;\">\n");
      out.write("                             <p style=\"color:blue; font-size: 25px;\">");
      out.print(rs.getString("notificationtext"));
      out.write("</p>\n");
      out.write("                             <p>");
      out.print(rs.getString("posteddate"));
      out.write("</p>\n");
      out.write("                          </span>\n");
      out.write("                         ");
    }  
      out.write("\n");
      out.write("                         </marquee>\n");
      out.write("                     </div>\n");
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
