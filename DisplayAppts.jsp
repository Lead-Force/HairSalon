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
        <title>Customer Accounts</title>
        <style>
            body {font-family: Monaco, sans-serif;
                  
background-image: url("https://cdn.wallpapersafari.com/54/45/SJpCFb.jpg");
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
                  
            Customer c1 = (Customer)(httpSession.getAttribute("customer")); out.println(c1.getCustID());
            Appointment da1= (Appointment)httpSession.getAttribute("a1");
            if(da1!=null){
                c1.alist.removeAppointment(da1);
            }
            c1.alist.displayList();
            //create accountList array 
                AppointmentList bList = new AppointmentList();
                //equate this new array to the customer's array list
                bList = c1.alist; out.println(c1.alist.count);
                //get the new array's size and store it
                int listSize = bList.getCount();
                //out.println(listSize);
                Appointment[]a1 = new Appointment[listSize];
               
                a1= bList.apptArr;
               
      %>  
    
      <form name="DeleteForm" action ="DeleteServlet" method="post">
      
      <center><h1> Appointment Details </h1></center>
        <table class="center">
             <tr>
                <%-- table headers --%>
                <th>Hairdresser ID</th>
                <th>Appointment Time</th>
                <th>Customer ID</th>
                <th>Taken</th>
                <th>Week</th>
                <th>Appointment Days</th>
                <th>Service</th>
                <th>Reserved</th>
                <th>Delete</th>
            </tr>
            <%  for(int i=0; i < listSize; i++) { %>
            
            <tr>
               
                 <td><input type="text" name="HdAptID<%=i%>" value="<%=a1[i].getHdAptID() %>" disabled></td>
                 <td><input type="text" name="AptTime<%=i%>" value="<%= a1[i].getAptTime() %>" disabled></td> 
                 <td><input type="text" name="CustID<%=i%>" value="<%= a1[i].getCustID() %> "disabled></td>
                <td><input type="text" name="isTaken<%=i%>" value="<%= a1[i].isTaken() %> "disabled></td>
                <td><input type="text" name="Week<%=i%>" value="<%= a1[i].getWeek() %>"disabled></td>
                <td><input type="text" name="AptDays<%=i%>" value="<%= a1[i].getAptDays() %> "disabled></td>
                <td><input type="text" name="Service<%=i%>" value="<%= a1[i].getService() %>  "disabled></td>
                <td><input type="text" name="Reserved<%=i%>" value="<%= a1[i].getReserved() %>    "disabled></td>
                
                <td><button type="Submit" name="button" value="deleteBtn<%=i%>" class="deletebtn">Delete</button></td>
            
                <% } %>


        </table>
      </form>
                
      <br>
      <br>
      <div style="text-align:center;"> 
            <button onclick="location.href='HomeLogin.jsp'" type="button">Back</button>            </div>

    
           
</html>