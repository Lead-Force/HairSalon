<%-- 
    Document   : hdManager
    Created on : Feb 16, 2021, 1:10:12 AM
    Author     : renel
--%>
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
        <form  name="HairDresserLookupForm" action="http://localhost:8080/THS/HdManagerServlet" method="post">
            <%
            HairDresser hd1 = new HairDresser();
            HairDresser k2;
            HairDresser insert1;
            HairDresser[] b;
                //hd1 = (HairDresser) session.getAttribute("k1");
               ArrayList<HairDresser> bList = new ArrayList<HairDresser>();
               k2 = (HairDresser) session.getAttribute("L1");
               insert1 = (HairDresser) session.getAttribute("k1");

               bList = hd1.getAllHairDressers();
               if (k2!=null){
               out.println(k2.getHairDresserId());
               //out.println("Test");
               //bList.add(k2);
               }
               
               if (insert1 !=null){
                   bList.add(insert1);
                   //out.println("Test");
                   //out.println(insert1.getHairDresserId());
               }
                int listSize = hd1.getCount();
                out.println(listSize);
                b = new HairDresser[listSize];
                
                for (int count=0;count<listSize;count++){
                    //code to populate the array with the arrayList
                    b[count] = bList.get(count);
                    if (insert1 !=null){
                   //bList.add(insert1);
                   //code to add the inserted object to the arraylist
                   bList.add(listSize-1,insert1);
               }
                    //out.println("list sizeL: "+listSize+" count: "+count);
                    out.println(b[count].getHairDresserFname());
                }
        %>

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
            <td><input type="Text" name="idTb2"value="<%= b[row].getHairDresserId() %>"></td>
            <td><input type="Text" name="fNameTb2" value="<%= b[row].getHairDresserFname() %>"></td>
            <td><input type="Text" name="lNameTb2"value="<%= b[row].getHairDresserLname() %>"></td>
            <td><input type="Text" name="addressTb2" value="<%= b[row].getHairDresserAddress() %>"></td>
            <td><input type="Text" name="phoneTb2"value="<%= b[row].getHairDresserPhone() %>"></td>
            <td><input type="Text" name="emailTb2" value="<%= b[row].getHairDresserEmail() %>"></td>
            <td><input type="Text" name="fullTimeTb2"value="<%= b[row].isFullTime() %>"></td>
            <td><input type="Text" name="timeOffTb2" value="<%= b[row].getTimeOff() %>"></td>
            <td><input type="Text" name="hoursReqTb2"value="<%= b[row].getHoursRequested() %>"></td>
            <td><input type="Text" name="hoursGivenTb2" value="<%= b[row].getHoursGiven() %>"></td>
            <td><input type="Text" name="payRateTb2"value="<%= b[row].getPayRate() %>"></td>
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
    </form>
    </p>
    
    <p>
        <table>
            <form name="HairDresserInsertForm" action="http://localhost:8080/THS/HdManagerServlet" method="post">
                 <tr>
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
                    <tr>
           <td><input type="Text" name="idTb"></td>
            <td><input type="Text" name="fNameTb"></td>
            <td><input type="Text" name="lNameTb"></td>
            <td><input type="Text" name="addressTb"></td>
            <td><input type="Text" name="phoneTb"></td>
            <td><input type="Text" name="emailTb"></td>
            <td><input type="Text" name="fullTimeTb"></td>
            <td><input type="Text" name="timeOffTb"></td>
            <td><input type="Text" name="hoursReqTb"></td>
            <td><input type="Text" name="hoursGivenTb"></td>
            <td><input type="Text" name="payRateTb"></td>
        </tr>
        <tr>
            <td>
                <button name="button" type="submit" value="Insert">Insert</button>
                <input type="reset" value="Clear">
            </td>
        </tr>
            </form>
            </table>    
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
           <td><input type="Text" name="idTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserId());}%>"></td>
            <td><input type="Text" name="fNameTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserFname());}%>"></td>
            <td><input type="Text" name="lNameTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserLname());}%>"></td>
            <td><input type="Text" name="addressTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserAddress());}%>"></td>
            <td><input type="Text" name="phoneTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserPhone());}%>"></td>
            <td><input type="Text" name="emailTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserEmail());}%>"></td>
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

