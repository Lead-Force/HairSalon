<%-- 
    Document   : DisplayAppointmentList
    Created on : Apr 3, 2021, 12:06:12 AM
    Author     : kimmy
--%>

<%@page import="BusinessObjects.Customer"%>
<%@page import="BusinessObjects.Appointment"%>
<%@page import="BusinessObjects.AppointmentList"%>
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
                  
            Customer c1 = (Customer)(httpSession.getAttribute("customer"));
            c1.alist.displayList();
            
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
            <% for (int i = 0; i < c1.alist.appointment.size();i++){%>
            <% a1 = c1.alist.appointment.get(i);%>
            <tr>
                <td><%= a1.getAptID() %></td> 
                <td><%= a1.getAptDate() %></td>
                <td> <%= a1.getAptTime() %></td>
                <td> $<%= a1.getCustID() %> </td>
                <td><%= a1.getHairdresser() %></td>
                <td> <%= a1.getService() %></td>
                <td> $<%= a1.getServiceType() %> </td>
                <% } %>
            </tr>
            

        </table>
    </form>
           
</html>


