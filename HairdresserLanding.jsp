<%-- 
    Document   : HairdresserLanding
    Created on : Mar 15, 2021, 8:16:46 PM
    Author     : Jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BusinessObjects.HairDresser" %>
<!DOCTYPE html>
<html>
    <head>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Copperplate, Papyrus, fantasy;
background-image: url("https://images.squarespace-cdn.com/content/v1/5ab12482cc8fed2171d349a5/1560266303815-SPPMS02LTU54BLWD9PX5/ke17ZwdGBToddI8pDm48kG87Sfbgg29A4BYEDq3OXvgUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcf4OxbJOyh_wHUnyc4kQLQ6SBshRGOku7c30Y_IRDNPta8R2IY5BHMaEj1zOWoDTZ/photo-1527904219733-fddc74937915.jpeg?format=1500w");
background-repeat: no-repeat;
background-position: center;
background-size: cover;
background-blend-mode: screen;
}

img{border-radius: 50%;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover{
  opacity: 0.8;
}
.container {
  padding: 16px;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

h1 {
    text-align:center;
}

h2 {text-align: center;}

span.psw {
  float: right;
  padding-top: 16px;
}

@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
    
    <body>
        <h1>Welcome to the Hairdresser Landing Page</h1>
        <h2>Change Information</h2>
        <form action= "ProfileServlet">
            
            <%  session = request.getSession();
            HairDresser h1 = (HairDresser)(session.getAttribute("Hairdresser"));
            //System.out.println(Hairdresser.display());
            %>
        
    <div class="container">
    
    <%-- 
    <label for="user"><b>New Username</b></label>
    <input type="text" placeholder="Enter Username" name="user" required>
      
    <label for="timeoff"><b>New Time Off</b></label>
    <input type="text" placeholder="Enter Time Off" name="timeoff">
    
    <label for="hoursrequested"><b>New Hours Requested</b></label>
    <input type="text" placeholder="Enter Hours Requested" name="hoursrequested">
    --%>  
    
    <label for="id"><b>Current ID</b></label>
    <input type="text" placeholder="Enter ID" name="id" required>    

    <label for="psw"><b>New Password</b></label>
    <input type="text" placeholder="Enter Password" name="psw">
    
    <label for="fname"><b>New First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="fname">
    
    <label for="lname"><b>New Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="lname">
    
    <label for="email"><b>New Email</b></label>
    <input type="text" placeholder="Enter Email" name="email">
    
    <label for="address"><b>New Address</b></label>
    <input type="text" placeholder="Enter Address" name="address">
    
    <label for="phone"><b>New Phone Number</b></label>
    <input type="text" placeholder="Enter Phone Number" name="phone">
    
    <button type="submit">Change Info</button>
    </div>
    </form>
    </body>
    
    <body>
        <h1>Welcome to the Display Page</h1>
        <h2>Display Appointments</h2>
        
        <label for="CustID"><b>Enter CustID</b></label>
        <input type="text" placeholder="Enter CustID" name="CustID">
        <form action= "DisplayServlet">
        <button type="submit" <!--name="DisplayServlet"--> >Display Appointments</button>
        
        
        <!-- This is a comment
        <form action= "DisplayServlet">
        <h2>Display Customers</h2>
        <button type="submit" name="DisplayCust">Display Customers</button>
        <form action= "DisplayServlet">
        <h2>Display Customer's Appointments</h2>
        <button type="submit" name="DisplayCustAppt">Display Customer's Appointments</button>
        <form action= "DisplayServlet">
         -->
            
        <%--//hair dresser code for availability************************
            HairDresser hd1 = new HairDresser();
            HairDresser k2;
            ArrayList<HairDresser> bList = new ArrayList<HairDresser>();
            k2 = (HairDresser) session.getAttribute("L1");
            
            bList = hd1.getAllHairDressers();
               if (k2!=null){
               //out.println(k2.getHairDresserId());
               //out.println("Test");
               //bList.add(k2);
               }               
                int listSize = HairDresser.getCount();
                out.println(listSize);
                HairDresser[] b = new HairDresser[listSize];
                
                for (int count=0;count<listSize;count++){
                    b[count] = bList.get(count);
                    //out.println(b[count].getHairDresserFname());
                }//end hairdresser******************************
        --%>
            
            <%--session = request.getSession();
            HairDresser h1 = (HairDresser)(session.getAttribute("Hairdresser"));
            --%>
        
    <div class="container">
    </div>
    </form>        
    </body>
</html>
