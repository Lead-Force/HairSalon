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
    <link rel="stylesheet" href="../Stylesheets/adminprofile.css">
    <title>Manager</title>
</head>

<header>
	<div class="container">
    <a href="AdminLanding.jsp"><img src="../Resources/Logo3.jpg" alt="logo" class="logo"></a>

    <center>
	  <nav>
        <ul>
          <li><a href="AdminLanding.jsp">Home</a></li>
          <li><a href="cas.jsp">Make Schedule</a></li><br><br>
          <li><a href="hdManager.jsp">Manage New Hire</a></li>
          <li><a href="logout.html">Log Out</a></li>
        </ul>
      </nav>
	  </center>
    </div>
</header>    

<body>
 <div class="main">
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
               //This is where we store the data from the database to an array list
               bList = hd1.getAllHairDressers();
               //out.println("Testing bList" + bList);
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
                    out.println("Testing b" + b);
                    if (insert1 !=null){
                   //bList.add(insert1);
                   //code to add the inserted object to the arraylist
                   bList.add(listSize-1,insert1);
               }
                    //out.println("list sizeL: "+listSize+" count: "+count);
                    out.println(b[count].getHairDresserFname());
                }
        %>
			<br><br>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">ID:</th>
								<th class="column2">First Name:</th>
								<th class="column3">Last Name:</th>
								<th class="column4">Address:</th>
								<th class="column5">Phone:</th>
								<th class="column6">Email:</th>
								<th class="column7">Full Time:</th>
								<th class="column8">TimeOFF:</th>
								<th class="column9">Hours Requested:</th>
								<th class="column10">Hours Given:</th>
								<th class="column11">Pay Rate:</th>
							</tr>
                <% for(int row=0; row < listSize; row++) { %>
						</thead>
						
						<tbody>
							<tr>
								<td> <input class="column1" name="idTb2" value="<%= b[row].getHairDresserId() %>" readonly></td>
								<td> <input class="column2" name="fNameTb2" value="<%= b[row].getHairDresserFname() %>" readonly></td>
								<td> <input class="column3" name="lNameTb2" value="<%= b[row].getHairDresserLname() %>" readonly></td>
								<td> <input class="column4" name="addressTb2" value="<%= b[row].getHairDresserAddress() %>" readonly></td>
								<td> <input class="column5" name="phoneTb2" value="<%= b[row].getHairDresserPhone() %>" readonly></td>
								<td> <input class="column6" name="emailTb2" value="<%= b[row].getHairDresserEmail() %>" readonly></td>
								<td> <input class="column7" name="fullTimeTb2" value="<%= b[row].isFullTime() %>" readonly></td>
								<td> <input class="column8" name="timeOffTb2" value="<%= b[row].getTimeOff() %>" readonly></td>
								<td> <input class="column9" name="hoursReqTb2" value="<%= b[row].getHoursRequested() %>" readonly></td>
								<td> <input class="column10" name="hoursGivenTb2" value="<%= b[row].getHoursGiven() %>" readonly></td>
								<td> <input class="column11" name="payRateTb2" value="<%= b[row].getPayRate() %>" readonly></td>
							</tr>
								<!-- end loop here-->
								<% } %>
						</tbody>
					</table>
		</form>
		</p>
    
	<br>
	<p>Insert New Hair Dresser Information:</p>
		<form name="HairDresserInsertForm" action="http://localhost:8080/THS/HdManagerServlet" method="post">
						<table>
							<thead>
								<tr class="table100-head">
									<th class="column1">ID:</th>
									<th class="column2">First Name:</th>
									<th class="column3">Last Name:</th>
									<th class="column4">Address:</th>
									<th class="column5">Phone:</th>
									<th class="column6">Email:</th>
									<th class="column7">Full Time:</th>
									<th class="column8">TimeOFF:</th>
									<th class="column9">Hours Requested:</th>
									<th class="column10">Hours Given:</th>
									<th class="column11">Pay Rate:</th>
								</tr>
							</thead>
							
							<tbody>
								<tr>
									<td> <input class="column1" type="Text" name="idTb"></td>
									<td> <input class="column2" type="Text" name="fNameTb"></td>
									<td> <input class="column3" type="Text" name="lNameTb"></td>
									<td> <input class="column4" type="Text" name="addressTb"></td>
									<td> <input class="column5" type="Text" name="phoneTb"></td>
									<td> <input class="column6" type="Text" name="emailTb"></td>
									<td> <input class="column7" type="Text" name="fullTimeTb"></td>
									<td> <input class="column8" type="Text" name="timeOffTb"></td>
									<td> <input class="column9" type="Text" name="hoursReqTb"></td>
									<td> <input class="column10" type="Text" name="hoursGivenTb"></td>
									<td> <input class="column11" type="Text" name="payRateTb"></td>
								</tr>
							</tbody>
						</table>
						<br>
						<button name="button" type="submit" value="Insert" style="cursor:pointer">Insert</button>
						<button type="reset" value="Clear" style="cursor:pointer">Clear</button>
		</form>
	<br>
		<form name="HairDresserLookupForm" action="http://localhost:8080/THS/HdManagerServlet">
						<table>
							<thead>
								<tr class="table100-head">
								<p>Type in an ID that you would like to delete or edit:</p>
									<th class="column12">ID:</th>
									<th class="column13">First Name:</th>
									<th class="column14">Last Name:</th>
									<th class="column15">Address:</th>
									<th class="column16">Phone:</th>
									<th class="column17">Email:</th>
								</tr>
							</thead>	
							
							<tbody>	
								<tr>
									<td> <input class="column12" type="Text" name="idTb3" value ="<%if (k2!=null){out.print(k2.getHairDresserId());}%>"></td>
									<td> <input class="column13" type="Text" name="fNameTb3" value ="<%if (k2!=null){out.print(k2.getHairDresserFname());}%>"></td>
									<td> <input class="column14" type="Text" name="lNameTb3" value ="<%if (k2!=null){out.print(k2.getHairDresserLname());}%>"></td>
									<td> <input class="column15" type="Text" name="addressTb3" value ="<%if (k2!=null){out.print(k2.getHairDresserAddress());}%>"></td>
									<td> <input class="column16" type="Text" name="phoneTb3" value ="<%if (k2!=null){out.print(k2.getHairDresserPhone());}%>"></td>
									<td> <input class="column17" type="Text" name="emailTb3" value ="<%if (k2!=null){out.print(k2.getHairDresserEmail());}%>"></td>
								</tr>
							</tbody>
						</table>
						<br>
						<button name="button" type="submit" value="Lookup" style="cursor:pointer">Lookup</button>
						<button name="button" type="submit" value="Delete" style="cursor:pointer">Delete</button>
						<button type="reset" value="Clear" style="cursor:pointer">Clear</button>
                                                <br><br>
						</div>
					</div>
				</div>
			</div>
        </form>
	<!--code ends here-->
  </center>
 </div>
</body>
</html>