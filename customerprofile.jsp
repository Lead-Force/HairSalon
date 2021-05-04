<%-- 
    Document   : customerprofile
    Created on : Mar 20, 2021, 7:50:55 PM
    Author     : kimmy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BO.Customer" %>
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
<script type="text/javascript">
function validateForm() {
  var FirstName = document.ProfileForm.FirstName.value;
  var LastName = document.ProfileForm.LastName.value;
  var Address = document.ProfileForm.Address.value;
  var PhoneNo = document.ProfileForm.PhoneNo.value;
    var Email = document.ProfileForm.Email.value;
    var psw = document.ProfileForm.psw.value;
    
  if (FirstName.length >30  || LastName.length >30){
    alert("First and Last Name must not be greater than 30 characters");
    document.ProfileForm.FirstName.focus();
    document.ProfileForm.LastName.focus();
  }
  if (document.ProfileForm.Address.value.length >30){
    alert("Address must not be greater than 30 characters");
    document.ProfileForm.Address.focus();
    }
   if (document.ProfileForm.PhoneNo.value.length >13){
    alert("Phone Number must be in XXX-XXX-XXXX format and cannot be greater than 13 Characters!");
    document.ProfileForm.PhoneNo.focus();
    }
  else if (document.ProfileForm.Email.value.length >30){
    alert("Email must not be greater than 30 characters");
    document.ProfileForm.Email.focus();
  }
  if (psw.length >30){
    alert("Password must not be greater than 30 characters");
    psw.focus();
  }
  }
</script>
</head>

<body>
 <img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png" alt="Avatar" width="247" height="300">
 
<form name="ProfileForm" action="ProfileServlet" method = "post">
    
    <%  session = request.getSession();
         Customer c1 = (Customer)(session.getAttribute("customer"));
        %>
    
    
  <div class="container">
    <h1>Customer Profile</h1>
    <hr>

    <label for="CustID"><b>Customer ID Number</b></label>
    <input type="text"  placeholder="Your CustID" name="CustID" value="<%= c1.getCustID() %>" onChange="validateForm()" disabled>
    
    <label for="FirstName"><b>First Name</b></label>
    <input type="text" placeholder="Your FirstName" name="FirstName" value="<%= c1.getFirstName()%> " onChange="validateForm()" >
    
    <label for="LastName"><b>Last Name</b></label>
    <input type="text" placeholder="Your LastName" name="LastName" value="<%= c1.getLastName()%> " onChange="validateForm()" >
    
    <label for="Address"><b>Address</b></label>
    <input type="text" placeholder="Your Address" name="Address" value="<%= c1.getAddress() %>" onChange="validateForm()"> 
   
    <label for="PhoneNo"><b>Phone Number</b></label>
    <input type="text" placeholder="Your PhoneNo" name="PhoneNo" value="<%= c1.getPhoneNo() %>" onChange="validateForm()">
    
    <label for="Email"><b>Email</b></label>
    <input type="text" placeholder="Your Email" name="Email" value="<%= c1.getEmail() %>" onChange="validateForm()">
    
    <label for="CUser"><b>Username</b></label>
    <input type="text" placeholder="Your Username" name="CUser" id="CUser" value="<%= c1.getCUser() %>" disabled>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Your Password" name="psw" value="<%= c1.getCPass() %>" onChange="validateForm()" >

        <hr>
    <input type="submit" name="Update" value="Update">
    <button onclick="location.href='HomeLogin.jsp'" type="button">Back</button>
  </div>

</form> 

</body>
</html>