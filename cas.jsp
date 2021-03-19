<%-- 
    Document   : cas
    Created on : Feb 16, 2021, 1:09:44 AM
    Author     : renel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BusinessObjects.HairDresser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Stylesheets\adminprofile.css">
        <title>CAS</title>
        <%
            HairDresser hd1 = new HairDresser();
            HairDresser k2;
                //hd1 = (HairDresser) session.getAttribute("k1");
               ArrayList<HairDresser> bList = new ArrayList<HairDresser>();
               k2 = (HairDresser) session.getAttribute("L1");

               bList = hd1.getAllHairDressers();
               if (k2!=null){
               out.println(k2.getHairDresserId());
               //out.println("Test");
               //bList.add(k2);
               }               
                int listSize = HairDresser.getCount();
                out.println(listSize);
                HairDresser[] b = new HairDresser[listSize];
                
                for (int count=0;count<listSize;count++){
                    b[count] = bList.get(count);
                    out.println(b[count].getHairDresserFname());
                }
        %>
    </head>
    <header>
    <div class="container">
      <a href="admin.html"><img src="../THS.jpg" alt="logo" class="logo"></a>

      <nav>
        <ul>
          <li><a href="AdminLanding.jsp">Home</a></li>
          <li><a href="cas.jsp">Make Schedule</a></li>
          <li><a href="hdManager.jsp">Manage New Hire</a></li>
          <li><a href="adminprofile.html">My Profile</a></li>
        </ul>
      </nav>
    </div>
</header>
    <body>
        <div class="main">
<br>
        <h1>Scheduling</h1>
        <h2>Current Schedule:</h2>
        <form>
            <table>
                <tr>
                    <th>Employee:</th>
                    <th>M</th>
                    <th>T</th>
                    <th>W</th>
                    <th>R</th>
                    <th>F</th>
                    <th>S</th>
                    <th>Z</th>
                </tr>
                <% for(int row=0; row < listSize; row++) { %>
                <tr>
                    <td><%= b[row].getHairDresserId()%></td>
                    <td><input name="mtb" type ="text" value="<%= b[row].getTimeOff().contains("M")%>"/></td>
                    <td><input name="ttb" type ="text" value="<%= b[row].getTimeOff().contains("T")%>"/></td>
                    <td><input name="wtb" type ="text" value="<%= b[row].getTimeOff().contains("W")%>"/></td>
                    <td><input name="rtb" type ="text" value="<%= b[row].getTimeOff().contains("R")%>"/></td>
                    <td><input name="ftb" type ="text" value="<%= b[row].getTimeOff().contains("F")%>"/></td>
                    <td><input name="stb" type ="text" value="<%= b[row].getTimeOff().contains("S")%>"/></td>
                    <td><input name="ztb" type ="text" value="<%= b[row].getTimeOff().contains("Z")%>"/></button></td>
                    
                    <!--<td>2001</td>
            <td><button name="casBtn" type ="text" value="mbtn">true</button></td>
            <td><button name="casBtn" type ="text"><%= "a1.getTimeOff().indexOf('M')"%></button></td>
            <td><button name="casBtn" type ="text">true</button></td>
            <td><button name="casBtn" type ="text">true</button></td>
            <td><button name="casBtn" type ="text">true</button></td>
            <td><button name="casBtn" type ="text">true</button></td>
            <td><button name="casBtn" type ="text">true</button></td>
                --></tr>
                <% } %>
            </table>
            <button type="submit" name="casBtn" value="CreateTable">
                Create Schedule</button>
            
        </form>
            
            Update availability
            
        <p>
        <a href="AdminLanding.jsp">To Landing</a>
        <a href="hdManager.jsp">To Hair Dresser Manager</a>
        </p>
</div>
</body>
</html>
