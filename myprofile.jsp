<%-- 
    Document   : HairDresserprofile
    Created on : Mar 20, 2021, 7:50:55 PM
    Author     : kimmy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BusinessObjects.HairDresser" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Copperplate, Papyrus, fantasy;
background-image: url("https://www.itl.cat/pngfile/big/30-302927_background-pictures-2018-new-cb-background-download-hd.jpg");
background-repeat: no-repeat;
background-position: center;
background-size: cover;
background-blend-mode: screen;
margin:50px 0px;
padding:0px;
    
text-align:center;
    
align:center;
}
form {
    display: block;
}
/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}
/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px;
  margin: 5px 0 22px 0;
  display: block;
  border: 1px solid #ccc;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.registerbtn:hover {
  opacity: 1;
}
/* Add a blue text color to links */
a {
  color: dodgerblue;
}
/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
br {
 clear: left;
}
</style>
<script>
function goBack() {
  window.history.back();
  
}
</script>

</head>

<body>
 <img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png" alt="Avatar" width="247" height="300">

<form action="ProfileServlet" method = "post">
    
        <%  session = request.getSession();
         HairDresser h1 = (HairDresser)(session.getAttribute("HairDresser"));
        %>
    
    
  <div class="container">
    <h1>Hairdresser Profile</h1>
    <hr>

    <label for="HairdresserID"><b>HairDresser ID Number</b></label>
    <input type="text"  placeholder="Your HairdresserID" name="HairdresserID" value="<%= h1.getHairdresserId() %>" disabled>
    
    <label for="Username"><b>Username</b></label>
    <input type="text" placeholder="Your Username" name="Username" value="<%= h1.getHairdresserUser() %> " disabled>
    
    <label for="Password"><b>Password</b></label>
    <input type="text" placeholder="Your Password" name="Password" value="<%= h1.getHairdresserPw() %> " >
    
    <label for="First Name"><b>First Name</b></label>
    <input type="text" placeholder="Your First Name" name="FirstName" value="<%= h1.getHairdresserFname() %>"> 
   
    <label for="Last Name"><b>Last Name</b></label>
    <input type="text" placeholder="Your Last Name" name="LastName" value="<%= h1.getHairdresserLname() %>">
    
    <label for="Address"><b>Address</b></label>
    <input type="text" placeholder="Your Address" name="Address" value="<%= h1.getHairdresserAddress() %>">
    
    <label for="Phone Number"><b>Phone Number</b></label>
    <input type="text" placeholder="Your Phone Number" name="PhoneNumber" value="<%= h1.getHairdresserPhone() %>">
    
    <label for="Email"><b>Email</b></label>
    <input type="text" placeholder="Your Email" name="Email" value="<%= h1.getHairdresserEmail() %>">

        <hr>
    <input type="submit" name="Update" value="Update">
    <button onclick="location.href='employee.jsp'" type="button">Back</button>

  </div>
</form> 
</body>
</html>