<%-- 
    Document   : ViewCustomer
    Created on : Apr 12, 2021, 10:48:14 AM
    Author     : krism
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BusinessObjects.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>All Customers List</title>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" href="Stylesheets\employee.css">
</head>

<%
    // Code that will get data from database and allow us to display to the JSP
    Customer c1 = new Customer(); 
    // 
    c1.selectDB("Cust001");
    // New array list of customers
    ArrayList<Customer> cList = new ArrayList<Customer>(); 
    // This is where we get the database objects and store them initially (getAllCustomers())
    cList = c1.getAllCustomers();
    // Get Count returns the amount of objects inside database and stores it as listSize
    int listSize = c1.getCount();
    // Create a new array that will pass info from the array list
    Customer[] cArray = new Customer[listSize];
    // For loop to actually store the customers to the array one by one
        for (int count = 0; count < listSize; count++) {
            // Get info from normal array into array list
            cArray[count] = cList.get(count);
            //out.println("This is the array: " + cArray[count].getFirstName());
        }
        
    %>
   

<header>
    <div class="container">
      <a href="employee.jsp"><img src="../Resources/Logo3.jpg" alt="logo" class="logo"></a>

      <center>
	  <nav>
        <ul>
          <li><a href="employee.jsp">Home</a></li>
          <li><a href="todayappointment.jsp">Today's Appts</a></li><br>
          <li><a href="ViewCustomer.jsp">All Customers</a></li>
          <li><a href="recentappointment.jsp">Recent Appts</a></li><br>
          <li>
			<div class="dropdown">
				<button class="dropbtn">Profile</button>
				<div class="dropdown-content">
					<a href="myprofile.jsp">My Profile</a>
					<a href="employeelogin.jsp">Log Out</a>
				</div>
			</div>
		  </li><br><br>
		</ul>
      </nav>
	  </center>
    </div>
</header>

<body style="overflow:auto;">
<div class="main">
<br><br>
  <h1>Customer List</h1>
  <p><%
      /*
      THIS IS TO GIVE AN IDEA OF HOW THINGS WORK
      
      // Start for loop for iterations of rows
      for (int row = 0; row < listSize; row++) {
          // Display each individual parameter for customers in this iteration
          // Display FirstName
          out.println(cArray[row].getFirstName());
          // Display LastName
          out.println(cArray[row].getLastName());
      }
      */
      %></p>
  
  
      <table border="3">
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Customer ID</th>
            <th>First Name</th>
            <th>Address</th>
            <th>Phone</th>
            </tr>
        <% for (int row = 0; row < listSize; row++) { %>
            <tr>
            <td><input type="text"  value="<%=cArray[row].getFirstName() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getAddress() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getCUser() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getCustID() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getLastName() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getPhoneNo() %>" readonly/></td>
            <td><input type="text"  value="<%=cArray[row].getEmail() %>" readonly/></td>
            </tr>
        <% } %>
        <table style="width:50%">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
</div>
</body>
</html>