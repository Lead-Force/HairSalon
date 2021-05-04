<%-- 
    Document   : DisplayAppts
    Created on : Mar 29, 2021, 10:12:00 PM
    Author     : kimmy
--%>
<%@page import="BO.Customer"%>
<%@page import="BO.Appointment"%>
<%@page import="BO.AppointmentList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Recent Appointments</title>
        <style>
            body {font-family: Monaco, sans-serif;
                  
background-image: url("https://i.pinimg.com/736x/fc/93/f3/fc93f335af9d39c786653378c854ebc2.jpg");
background-repeat: no-repeat;
background-position: center;
background-size: cover;
}
table, th, td {
  border: 1px solid black;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
            </style>
            
<script>
function goBack() {
  window.history.back();
  
}
</script>

    </head>
    
        
      <%
            javax.servlet.http.HttpSession httpSession = request.getSession();
                  
            Customer c1 = (Customer)(httpSession.getAttribute("customer"));
            c1.alist.displayList();
            
      %>  
    
      <center><h1> Customer Recent Appointment</h1></center>
        <table class="center">
             <tr>
                <%-- table headers --%>
                <th>Appointment Time</th>
                <th>Customer ID</th>
                <th>Hairdresser Appointment ID</th>
                <th>Taken</th>
                <th>Week</th>
                <th>Appointment Days</th>
                <th>Service</th>
                <th>Reserved</th>
            </tr>
            <%! Appointment a1; %>
            <% for (int i = 0; i < c1.alist.appointment.size();i++){%>
            <% a1 = c1.alist.appointment.get(i);%>
            
            <tr>
               
                <td><%= a1.getAptTime() %></td> 
                <td><%= a1.getCustID() %>    </td>
                <td><%= a1.getHdAptID() %>     </td>
                <td><%= a1.isTaken() %>      </td>
                <td><%= a1.getWeek() %>    </td>
                <td><%= a1.getAptDays() %>    </td>
                <td><%= a1.getService() %>  </td>
                <td><%= a1.getReserved() %>    </td>
                <% } %>


        </table>
      <br>
      <br>
      <div style="text-align:center;"> 
            <button onclick="goBack()">Back</button>
            </div>

    </form>
           
</html>