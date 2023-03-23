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
              
                 <div id="paren">
                     <div class="top">
                         <div class="img">
                             <img src="images/a.png" height="480" width="98%" border="3px solid white" style="margin-left:2px;"/>
                         </div>
                         <div class="text">
                             <p><h1><b>Strategies in Optimizing Call Center Customer Support for Increased Revenue</b></h1>
                                <h3>Establishing a Customer-First Mindset without Sacrificing Efficiency</h3>
                                    For companies looking to establish a customer-first mindset at their call center, 
                                    the essential part is to understand the customers in terms of their interests, behavior and 
                                    needs. A research by Deloitte and Touche found that customer-centric companies were 60% more 
                                    profitable compared to companies that were not focused on the customer. A study from 
                                    NewVoiceMedia indicates that companies lose more than $62 billion due to poor customer
                                    service. No company can afford to be a customer service laggard.  According to Forrester, 
                                    72% of businesses say that improving the customer experience is their top priority.
                                    Both Amazon and Zappos are prime examples of brands that are customer
                                    centric and have spent years creating a culture around the customer and their needs. 
                                    This is so important that organizations like Oracle developed a Chief Customer Officer
                                    (CCO) to ensure a consistently amazing customer experience across all touch points. 
                                    Companies such as Apple, Samsung, Google and GE are just a few examples of
                                    customer-centric business models. These businesses strive to identify what their
                                    customers want, and do their utmost to fulfill their needs, wants and requirements
                                    with the products and services that they offer. These businesses also excel in
                                    customer-care and after-sales service. However, most companies do 
                                    not have all of the components in place to claim they are customer centric.
                                    By designing the company from the customer’s perspective, the organization 
                                    will be focused on the customer’s needs.</p>
                         </div>
                     </div>
                     <div class="top">
                         <div class="text">
                             <p><h2>Accurately forecasting the demand for your work force is critical</h2> for call center success. 
                             Understaffing increases customer attrition and over-staffing increases costs. By predicting the number of
                             agents required at any point of time, call centers can optimize workforce and cost. The challenge is to identify
                             peaks and troughs of inbound call volume and to assign agents accordingly. The process becomes increasingly 
                             difficult as you add internal and external variables, many of which are beyond your control. Mix in the random 
                             nature of call arrivals and the ordinary variability of human performance and the magnitude of the task can be 
                             huge. And although it may sound strange, small and midsized centers are generally even harder to manage
                             than larger center administrative hours to develop forecast and schedules – Using a forecasting and
                             scheduling solution can reduce administrative time spent developing forecasts and schedules by up to 
                             90 percent.
                             Reduction in excessive agent idle time – A huge payback can be quickly realized when agent 
                             schedules are more closely aligned with call demand. Software is much better suited to the
                             schedule generation task, because computers can assess hundreds of different sets of agent 
                             schedules in minutes.Reduction in agent turnover – By matching workload and the workforce, the 
                             call center experiences less service level volatility, leading to a more predictable work experience
                             for the agents. By involving agents in the scheduling process, agents are empowered to play a 
                             greater role in their work/life balance, further aided by shift swapping and work preferences.
                             Improved agent productivity – With more time available to front-line management, productivity 
                             improvements from focused coaching are realized.</p>
                         </div>
                          <div class="img">
                            <img src="images/b.png" height="480" width="98%" border="3px solid white" style="margin-left:2px;"/>   
                          </div>
                     </div>
                     <div class="top">
                         <div class="img">
                              <img src="images/c.png" height="480" width="98%" border="3px solid white" style="margin-left:2px;"/>
                         </div>
                         <div class="text">
                             <p><h2>Importance of Performance Measurement and Data Analysis</h2>
                             Because call centers are the operational frontline for many companies, they require careful monitoring to determine their
                             ability to effectively provide service and support to callers. This requires tracking and measuring call center metrics and 
                             key performance indicators to evaluate both agent and call center performance. Call centers have to constantly work to 
                             improve their key performance metrics. From average handle time, to call resolutions, to customer experience,
                             call center managers have an enormous challenge before them to make continuous improvements.
                            Call center managers seeking to propel their call center ahead of the competition, wow their 
                            callers with an awesome customer experience, increase revenue and reduce costs should make an effort 
                            to identify relevant call center KPIs, measure them consistently and act on the results. Doing so will
                            allow them to make more informed decisions that will have a measurable impact on their call center’s
                            performance.

                            Without proper performance metrics in place, contact centers miss out valuable opportunities 
                            to drive customer service excellence that results in a better customer experience overall. 
                            The metrics your center embraces have an impact on the customer experience that simply can’t 
                            be ignored. Of course, not every metric can be completely customer-centric — there are operations 
                            costs and business needs that must also be considered — focusing strictly on straight productivity
                            metrics and managing a contact center primarily as a cost center simply is no longer feasible.</p>
                         </div>
                     </div>
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