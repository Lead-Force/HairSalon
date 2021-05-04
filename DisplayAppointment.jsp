<%-- 
    Document   : DisplayAppointmentList
    Created on : Apr 3, 2021, 12:06:12 AM
    Author     : Jean
--%>

<%@page import="BO.Customer"%>
<%@page import="BO.Appointment"%>
<%@page import="BO.AppointmentList"%>
<%@page import="java.io.PrintWriter;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Accounts</title>
    </head>
    <form>
        
      <%
          
            javax.servlet.http.HttpSession httpSession = request.getSession();
            PrintWriter writer = response.getWriter();
            writer.println("Session ID: " + session.getId());     
            
            Customer c1 = (Customer)(httpSession.getAttribute("customer"));
            out.print("Hello User: You have entered the name: "); 
            //c1.display();
            out.print("Hello User: You have entered the name: " + c1 +"."); 
            //out.print("Hello User: You have entered the name: " + c1.getFirstName()); 
            //c1.alist.displayList();
            
      %>  
    
        <h1> Account Details </h1>
        <table>
             <tr>
                <%-- table headers --%>
                <th>Appointment Number</th>
                <th>Appointment Date</th>
                <th>Appointment Time</th>
                <th>Customer ID</th>
                <th>Hairdresser</th>
                <th>Service</th>
                <th>Service Type </th>  
            </tr>
            
            <%! Appointment a1; %>
            <%// for (int i = 0; i < c1.alist.appointment.size();i++){%>
            <%// a1 = c1.alist.appointment.get(i);%>
            
            <tr>
                <td><%//= a1.getApptID() %></td> 
                <td><%//= a1.getCustID() %></td>
                <td> <%//= a1.getTimeDays() %></td>
                <td> $<%//= a1.getEmpID() %> </td>
                <td><%//= a1.getRecurring() %></td>
                <td> <%//= a1.getServiceID() %></td>
                <td> $<%//= a1.getAUser() %> </td>
                <%// } %>
            </tr>
        </table>
    </form>       
</html>
