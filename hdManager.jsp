<%-- 
    Document   : hdManager
    Created on : Feb 16, 2021, 1:10:12 AM
    Author     : renel
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessObjects.HairDresserList"%>
<%@page import="BusinessObjects.HairDresser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Stylesheets\adminprofile.css">
        <title>Manager</title>
        <%
                //properties
                    HairDresser hd1 = new HairDresser();
                    HairDresser k2;
                    HairDresser insert1;
                    HairDresser[] b;
                    HairDresser dh2;

                    //Strings
                    String dh3;
                    //hd1 = (HairDresser) session.getAttribute("k1");
                    ArrayList<HairDresser> bList = new ArrayList<HairDresser>();
                    k2 = (HairDresser) session.getAttribute("L1");
                    insert1 = (HairDresser) session.getAttribute("k1");
                    dh2 = (HairDresser) session.getAttribute("dh1");

                    bList = hd1.getAllHairDressers();


                    int listSize = hd1.getCount();
                    out.println(listSize);
                    b = new HairDresser[listSize];

                    for (int count = 0; count < listSize; count++) {
                        //code to populate the array with the arrayList
                        b[count] = bList.get(count);

                        //delete hd jsp
                        //code to remove deleted object from the array list
                        if (dh2 != null) {
                            dh3 = dh2.getHairDresserId();
                            for (Iterator<HairDresser> iterator = bList.iterator(); iterator.hasNext();) {
                                if (iterator.next().getHairDresserId().equals(dh3)) {
                                    iterator.remove();
                                }
                            }
                        }

                        if (insert1 != null) {
                            //code to add the inserted object to the arraylist
                            bList.add(listSize - 1, insert1);
                        }
                    }
               
        %>
        <script type="text/javascript">
            function validateLookup(){
                var id;
                id= document.HairDresserLookupForm.idTb3.value;
                 if(id<2000 || id>3999) {
                    alert("ID must be between 2000 and 3999, all 4 digits");
                    document.HairDresserLookupForm.idTb3.value="";
                    document.HairDresserLookupForm.idTb3.focus();
                    }
			if(isNaN(id)){
			alert("ID must be a number");
                    document.HairDresserLookupForm.idTb3.value="";
                    document.HairDresserLookupForm.idTb3.focus;
                        }
                }
                function validateInsert(){
                    var  fn, ln, adr, phone,email, ft, to, hr, hg, pr;
                    fn= document.HairDresserInsertForm.fNameTb.value;
                    ln= document.HairDresserInsertForm.lNameTb.value;
                    adr= document.HairDresserInsertForm.addressTb.value;
                    phone= document.HairDresserInsertForm.phoneTb.value;
                    email= document.HairDresserInsertForm.emailTb.value;
                    ft= document.HairDresserInsertForm.fullTimeTb.value;
                    to= document.HairDresserInsertForm.timeOffTb.value;
                    hr= document.HairDresserInsertForm.hoursReqTb.value;
                    hg= document.HairDresserInsertForm.hoursGivTb.value;
                    pr= document.HairDresserInsertForm.payRateTb.value;
                    if(fn.length>20 || ln.length>20 || adr.length>30||phone.length>15||email.length>30||to.length>6){
                        alert("Please make sure the value is within bounds");
                    }
                    if(ft!="false" || ft!="true"){
			alert("Full time must be either true or false");
                        document.HairDresserInsertForm.fullTimeTb.value="";
			document.HairDresserInsertForm.fullTimeTb.focus();
                }
                    if(isNaN(hr)|| isNaN(hg)||isNaN(pr)){
			alert("Hours/Payrate must be a number");
                }
                    if(hr<0 || hg<0||pr<7.0){
			alert("Hours/Payrate minimum breached");}

                }
        </script>
    </head>
    
    <header>
    <div class="container">
      <a href="admin.html"><img src="../THS.jpg" alt="logo" class="logo"></a>

      <nav>
        <ul>
          <li><a href="AdminLanding.jsp">Home</a></li>
          <li><a href="cas.jsp">Make Schedule</a></li>
          <li><a href="hadManage.jsp">Manage New Hire</a></li>
          <li><a href="adminprofile.html">My Profile</a></li>
        </ul>
      </nav>
    </div>
</header>    
    <body>
    <div class="main">
<br><br><br>
  <center>
    <!--Code starts here-->

        <h1>Hair Dresser Manager</h1>
        <p>
            <table> <tr>
                        <th>ID:</th>
                        <th>First name:</th>
                        <th>Last name:</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Email:</th>
                        <th>Full Time:</th>
                        <th>TimeOFF</th>
                        <th>Hours Requested</th>
                        <th>Hours Given</th>
                        <th>Pay Rate</th>
                    </tr>
                <% for(int row=0; row < listSize; row++) { %>
        <tr>
            <td><input type="Text" name="idTb2"value="<%= b[row].getHairDresserId() %>"disabled></td>
            <td><input type="Text" name="fNameTb2" value="<%= b[row].getHairDresserFname() %>"disabled></td>
            <td><input type="Text" name="lNameTb2"value="<%= b[row].getHairDresserLname() %>"disabled></td>
            <td><input type="Text" name="addressTb2" value="<%= b[row].getHairDresserAddress() %>"disabled></td>
            <td><input type="Text" name="phoneTb2"value="<%= b[row].getHairDresserPhone() %>"disabled></td>
            <td><input type="Text" name="emailTb2" value="<%= b[row].getHairDresserEmail() %>"disabled></td>
            <td><input type="Text" name="fullTimeTb2"value="<%= b[row].isFullTime() %>"disabled></td>
            <td><input type="Text" name="timeOffTb2" value="<%= b[row].getTimeOff() %>"disabled></td>
            <td><input type="Text" name="hoursReqTb2"value="<%= b[row].getHoursRequested() %>"disabled></td>
            <td><input type="Text" name="hoursGivenTb2" value="<%= b[row].getHoursGiven() %>"disabled></td>
            <td><input type="Text" name="payRateTb2"value="<%= b[row].getPayRate() %>"disabled></td>
        </tr>
            <!-- end loop here-->
            <% } %><tr>
            <td>
                <!--<input type="submit" value="Edit">
                <input type="reset" value="Delete">
                <input type="reset" value="Add New">-->
            </td>
        </tr>   
    </table>
    </p>
    
    <p>Enter the details of a new employee: (Payrate must be in the format xx.x)
        
            <form name="HairDresserInsertForm" action="http://localhost:8080/THS/HdManagerServlet" method="post">
                 <table><tr>
                        <th>First name:</th>
                        <th>Last name:</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Email:</th>
                        <th>Full Time:</th>
                        <th>TimeOFF</th>
                        <th>Hours Requested</th>
                        <th>Hours Given</th>
                        <th>Pay Rate</th>
                    </tr>
                    <tr>
            <td><input type="Text" name="fNameTb" onBlur="validateInsert()" placeholder="John" required></td>
            <td><input type="Text" name="lNameTb" onBlur="validateInsert()" placeholder="Doe" required></td>
            <td><input type="Text" name="addressTb" onBlur="validateInsert()" placeholder="123 Main St" required></td>
            <td><input type="Text" name="phoneTb" onBlur="validateInsert()" placeholder="770 770 7701" required></td>
            <td><input type="Text" name="emailTb" onBlur="validateInsert()" placeholder="jd@ths.com" required></td>
            <td><input type="Text" name="fullTimeTb" onChange="validateInsert()" placeholder="true" required></td>
            <td><input type="Text" name="timeOffTb" onBlur="validateInsert()" placeholder="MTWRF" required></td>
            <td><input type="Text" name="hoursReqTb" onBlur="validateInsert()" placeholder="40" required></td>
            <td><input type="Text" name="hoursGivenTb" onBlur="validateInsert()" placeholder="32" required></td>
            <td><input type="Text" name="payRateTb" onBlur="validateInsert()" placeholder="10.0" required></td>
        </tr>
        <tr>
            <td>
                <button name="button" type="submit" value="Insert">Insert</button>
                <input type="reset" value="Clear">
            </td>
        </tr>
            
            </table> </form>   
        </p>
        <p>Type in an ID that you would like to delete or edit:
            
        
        <form name="HairDresserLookupForm" action="http://localhost:8080/THS/HdManagerServlet">
            <table>
                <tr>
                        <th>ID:</th>
                        <th>First name:</th>
                        <th>Last name:</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Email:</th>
                    </tr>
                    <tr>
           <td><input type="Text" name="idTb3" placeholder="Enter ID" onChange="validateLookup()"
                      value ="<%if (k2!=null){out.print(k2.getHairDresserId());}%>"required></td>
            <td><input type="Text" name="fNameTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserFname());}%>"disabled></td>
            <td><input type="Text" name="lNameTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserLname());}%>"disabled></td>
            <td><input type="Text" name="addressTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserAddress());}%>"disabled></td>
            <td><input type="Text" name="phoneTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserPhone());}%>"disabled></td>
            <td><input type="Text" name="emailTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserEmail());}%>"disabled></td>
        </tr>
            </table>
<button name="button" type="submit" value="Lookup">Lookup</button>
<button name="button" type="submit" value="Delete">Delete</button>
<button type="reset" value="Clear">Clear</button>  
            
        </form>
  </p>
        <!--code ends here-->
  </center>
    </div>
    </body>
</html>

