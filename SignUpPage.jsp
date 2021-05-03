<%-- 
    Document   : SignUpPage
    Created on : Apr 27, 2021, 9:35:27 PM
    Author     : kimmy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Copperplate, Papyrus, fantasy;
background-image: url("https://images.squarespace-cdn.com/content/v1/5ab12482cc8fed2171d349a5/1560266303815-SPPMS02LTU54BLWD9PX5/ke17ZwdGBToddI8pDm48kG87Sfbgg29A4BYEDq3OXvgUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcf4OxbJOyh_wHUnyc4kQLQ6SBshRGOku7c30Y_IRDNPta8R2IY5BHMaEj1zOWoDTZ/photo-1527904219733-fddc74937915.jpeg?format=1500w");
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
  var FirstName = document.SignUpForm.FirstName.value;
  var LastName = document.SignUpForm.LastName.value;
  var Address = document.SignUpForm.Address.value;
  var PhoneNo = document.SignUpForm.PhoneNo.value;
  var Email = document.SignUpForm.Email.value;
  var CUser = document.SignUpForm.CUser.value;
  var psw = document.SignUpForm.psw.value;
    
  if (FirstName.length >30  || LastName.length >30){
    alert("First and Last Name must not be greater than 30 characters");
    document.SignUpForm.FirstName.focus();
    document.SignUpForm.LastName.focus();
  }
  if (document.SignUpForm.Address.value.length >30){
    alert("Address must not be greater than 30 characters");
    document.SignUpForm.Address.focus();
    }
   if (document.SignUpForm.PhoneNo.value.length >13){
    alert("Phone Number must be in XXX-XXX-XXXX format and cannot be greater than 13 Characters!");
    document.SignUpForm.PhoneNo.focus();
    }
  else if (document.SignUpForm.Email.value.length >30){
    alert("Email must not be greater than 30 characters");
    document.SignUpForm.Email.focus();
  }
  if (document.SignUpForm.CUser.value.length >30){
    alert("Username must not be greater than 30 characters");
    psw.focus();
  }
  if (psw.length >30){
    alert("Password must not be greater than 30 characters");
    psw.focus();
  }
  }
</script>
</head>

<body>
<h1 style="text-align:center">Welcome New Users to THS Hair Salon!</h1>
<h3 style="text-align:center">Please take a moment to fill out the Form </h3>
 <img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png" alt="Avatar" width="247" height="300">
 
<form name="SignUpForm" action="SignUpServlet" method = "post">
    
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
    <label for="FirstName"><b>First Name</b></label>
    <input type="text" placeholder="Enter your First Name" name="FirstName" onChange="validateForm()" required>
    
    <label for="LastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter your Last Name" name="LastName" onChange="validateForm()" required>
    
    <label for="Address"><b>Address</b></label>
    <input type="text" placeholder="Enter your Address" name="Address" onChange="validateForm()" required> 
   
    <label for="PhoneNo"><b>Phone Number</b></label>
    <input type="text" placeholder="Enter a valid Phone Number in (xxx)xxx-xxxx or xxx-xxx-xxxx Format" name="PhoneNo" onChange="validateForm()" required>
    
    <label for="Email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="Email" onChange="validateForm()" required>
    
    <label for="CUser"><b>Username</b></label>
    <input type="text" placeholder="Enter an Username" name="CUser" id="CUser" onChange="validateForm()" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" onChange="validateForm()" required>
    
    
        <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="THSLogin.jsp">Login</a>.</p>
   </div>

</form> 

</body>
</html>
