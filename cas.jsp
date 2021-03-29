<%-- 
    Document   : cas
    Created on : Feb 16, 2021, 1:09:44 AM
    Author     : renel
--%>


<%@page import="java.util.ListIterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="BusinessObjects.Schedule"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessObjects.HairDresser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Stylesheets\adminprofile.css">
        <title>CAS</title>
        <%//hair dresser code for availability************************
            HairDresser hd1 = new HairDresser();
            HairDresser k2;
                //hd1 = (HairDresser) session.getAttribute("k1");
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
                
                //SChedule code************************
                //Create 2 schedule objects
                Schedule ss1 = new Schedule();
                Schedule is2;//this schedule will store the new inserted schedule
                Schedule ds2;//this schedule will store the deleted schedule
                Schedule us2;//this schedule will store the updated schedule
                ArrayList<Schedule> scheduleList = new ArrayList<Schedule>();
                is2 = (Schedule) session.getAttribute("is1");
                ds2 = (Schedule) session.getAttribute("ds1");
                us2 = (Schedule) session.getAttribute("us1");
                
                String uconstant = "casUpdate";
                String value="casUpdate0";
            //String 
            String[] update = new String[10];
            int count;
            int index =-1;
            for (count =0;count<10;count++){
            update [count] =uconstant+count;
            if (update[count].equals(value)) {
            index = count;
            }  }
            out.println(index);
            
                 
                //collect the data 
                scheduleList = ss1.getAllSchedules();
                //check to see if a new schedule was inserted
                /*if (is2!=null){
                    scheduleList.add(is2);
               //out.println(is2.getEmpId());
               } */              
                int sListSize = Schedule.getScheduleCount();
                //out.println("Schedule list size: "+sListSize);
                Schedule[] casSchedule = new Schedule[sListSize];
                //out.println("schedule array:  "+casSchedule);
                //for loop to store the list values in an array
                for (int sCount=0;sCount<sListSize;sCount++){
                    //out.println("Schedule list size: "+sListSize);
                    //out.println(scheduleList.get(0));
                    //populate the array with the array list
                    casSchedule[sCount] = scheduleList.get(sCount);
                    //out.println(" Object# "+casSchedule[sCount].getEmpId());
                    //out.println(" "+scheduleList.get(sCount)+"---");
                    
                    //code to remove deleted object from the array list
                    if (ds2 !=null){
                     String ds3 =ds2.getEmpId();
                        for(Iterator<Schedule> iterator = scheduleList.iterator(); iterator.hasNext(); ) {
                            if(iterator.next().getEmpId().equals(ds3))
                                iterator.remove();
                        }
                    }  
                    //code to add the inserted object to the arraylist
                    if (is2 !=null){
                   //bList.add(insert1);
                   scheduleList.add(sListSize-1,is2);
                   }
                    //update code
                    if (us2 != null) {
                        //get schedule id
                            String us3 = us2.getEmpId();
                            //iterate the list of schedules
                            for (ListIterator<Schedule> iterator = scheduleList.listIterator(); iterator.hasNext();) {
                            //get the schedule that matches id selected
                                if (iterator.next().getEmpId().equals(us3)) {
                                    iterator.set(us2);
                                    //out.println(".next id"+iterator.next().getEmpId());
                                    //out.println("iterator2"+iterator.next().isMonday());
                                    /*scheduleList.iterator().next().setMonday(us2.isMonday());
                                    scheduleList.iterator().next().setTuesday(us2.isTuesday());
                                    scheduleList.iterator().next().setWednesday(us2.isWednesday());
                                    scheduleList.iterator().next().setThursday(us2.isThursday());
                                    scheduleList.iterator().next().setFriday(us2.isFriday());
                                    scheduleList.iterator().next().setSaturday(us2.isSaturday());
                                    scheduleList.iterator().next().setSunday(us2.isSunday());*/
                                /*ListIterator<Schedule> iterator = scheduleList.listIterator();
                                while (iterator.hasNext()){
                                if (iterator.next().getEmpId().equals(us3)) {
                                //iterator.set(us2);
                                
                                }*/
                                
                                }
                            }
                    //out.println(" test before for loop " +scheduleList.indexOf(ds2.getEmpId()));
                    }

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
        <!-- Main Table *********************************************-->
        <h2>Schedule</h2>
        <form name="scheduleForm" action="http://localhost:8080/THS/hdScheduleServlet" method="post">
            <table>
                <tr>
                    <th>Employee:</th>
                    <th>First Name</th>
                    <th> Last Name</th>
                    <th>M</th>
                    <th>T</th>
                    <th>W</th>
                    <th>R</th>
                    <th>F</th>
                    <th>S</th>
                    <th>Z</th>
                </tr>
                <% for(int row=0; row < sListSize; row++) { %>
                <tr>
                    <td><input name="sidtb<%=scheduleList.indexOf(casSchedule[row])%>" value="<%= casSchedule[row].getEmpId()%>"/></td>
                    <td><%= casSchedule[row].getFirstName()%></td>
                    <td><%= casSchedule[row].getLastName()%></td>
                    <!-- Text boxes-->
                    
                    <td><input name="mtb<%=scheduleList.indexOf(casSchedule[row])%>" type ="text" value="<%= casSchedule[row].isMonday()%>"/></td>
                    <td><input name="ttb<%=scheduleList.indexOf(casSchedule[row])%>" type ="text" value="<%= casSchedule[row].isTuesday()%>"/></td>
                    <td><input name="wtb<%=scheduleList.indexOf(casSchedule[row])%>" type ="text" value="<%= casSchedule[row].isWednesday()%>"/></td>
                    <td><input name="rtb<%=scheduleList.indexOf(casSchedule[row])%>" type ="text" value="<%= casSchedule[row].isThursday()%>"/></td>
                    <td><input name="ftb<%=scheduleList.indexOf(casSchedule[row])%>" type ="text" value="<%= casSchedule[row].isFriday()%>"/></td>
                    <td><input name="stb<%=scheduleList.indexOf(casSchedule[row])%>" type ="text" value="<%= casSchedule[row].isSaturday()%>"/></td>
                    <td><input name="ztb<%=scheduleList.indexOf(casSchedule[row])%>" type ="text" value="<%= casSchedule[row].isSunday()%>"/></td>
                    <td><button type="submit" name="button" value="casUpdate<%=scheduleList.indexOf(casSchedule[row])%>">Update<%=scheduleList.indexOf(casSchedule[row])%></button></td>
            
                    
                    <!-- true/false buttons-->
                    <!--
            <td><button name="casBtn" type ="text" value="mbtn"><%= casSchedule[row].isMonday()%></button></td>
            <td><button name="casBtn" type ="text" value="tbtn"><%= casSchedule[row].isTuesday()%></button></td>
            <td><button name="casBtn" type ="text" value="wbtn"><%= casSchedule[row].isWednesday()%></button></td>
            <td><button name="casBtn" type ="text" value="rbtn"><%= casSchedule[row].isThursday()%></button></td>
            <td><button name="casBtn" type ="text" value="fbtn"><%= casSchedule[row].isFriday()%></button></td>
            <td><button name="casBtn" type ="text" value="sbtn"><%= casSchedule[row].isSaturday()%></button></td>
            <td><button name="casBtn" type ="text" value="zbtn"><%= casSchedule[row].isSunday()%></button></td>
                -->
                </tr>
                <% } %>
            </table>
            
        </form>
            <p>Update records:
            <form name="ScheduleUpdateForm" action="http://localhost:8080/THS/hdScheduleServlet">
            <table>
                <tr>
                    <!--<th>Employee:</th>-->
                    <th>Employee2:</th>
                    <th>First Name</th>
                    <th> Last Name</th>
                    <th>M</th>
                    <th>T</th>
                    <th>W</th>
                    <th>R</th>
                    <th>F</th>
                    <th>S</th>
                    <th>Z</th>
                </tr><tr>
                    <!--<td><input type="Text" name="id2" 
            value ="<%if (us2!=null){out.print(us2.getEmpId());}%>"></td>-->
                    <td><input type="Text" name="id2" 
            value ="<%if (us2!=null){out.print(us2.getEmpId());}%>"></td>
            <td><input type="Text" name="fn2" 
            value ="<%if (us2!=null){out.print(us2.getFirstName());}%>"></td>
            <td><input type="Text" name="ln2" 
            value ="<%if (us2!=null){out.print(us2.getLastName());}%>"></td>
           <td><input type="Text" name="m2" 
            value ="<%if (us2!=null){out.print(us2.isMonday());}%>"/></td>
            <td><input type="Text" name="t2" 
            value ="<%if (us2!=null){out.print(us2.isTuesday());}%>"/></td>
            <td><input type="Text" name="w2" 
            value ="<%if (us2!=null){out.print(us2.isWednesday());}%>"/></td>
            <td><input type="Text" name="r2" 
            value ="<%if (us2!=null){out.print(us2.isThursday());}%>"/></td>
            <td><input type="Text" name="f2" 
            value ="<%if (us2!=null){out.print(us2.isFriday());}%>"/></td>
            <td><input type="Text" name="s2" 
            value ="<%if (us2!=null){out.print(us2.isSaturday());}%>"/></td>
            <td><input type="Text" name="z2" 
            value ="<%if (us2!=null){out.print(us2.isSunday());}%>"/></td>
        </tr>
            </table>
<button type="submit" name="button" value="casUpdate">Update Record</button>
<button type="reset" value="Clear">Clear</button>  
            
        </form>
            </p>
            
            <!-- FUNCTIONS-------------------------------------->
                 <p>Type in an ID that you would like to delete or edit:
            
        <p>
        <form name="HairDresserLookupForm" action="http://localhost:8080/THS/hdScheduleServlet">
            <table>
                <tr>
                        <th>ID:</th>
                        <th>First name:</th>
                        <th>Last name:</th>
                        <th>Phone</th>
                    </tr>
                    <tr>
           <td><input type="Text" name="casIdtb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserId());}%>"></td>
            <td><input type="Text" name="casFnameTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserFname());}%>"></td>
            <td><input type="Text" name="casLnameTb3" 
            value ="<%if (k2!=null){out.print(k2.getHairDresserLname());}%>"></td>
            <td><%if (k2!=null){out.print(k2.getHairDresserPhone());}%></td>
        </tr>
            </table>
<button type="submit" name="button" value="casInsert">Add to schedule</button>
<button name="button" type="submit" value="Lookup">Lookup Employee</button>
<button name="button" type="submit" value="casDelete">Delete from schedule</button>
<button type="reset" value="Clear">Clear</button>  
            
        </form>
            
            <!-- Availability****************************************-->
            <h2>Availability</h2>
        <form>
            <table border="2">
                <tr>
                    <th>Employee ID:</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone</th>
                    <th>Full Time</th>
                    <th>Time Off</th>
                    <th>Hours Requested</th>
                    <th>Hours Given</th>
                </tr>
                <% for(int row=0; row < listSize; row++) { %>
                <tr>
                    <td><%= b[row].getHairDresserId()%></td>
                    <td><%= b[row].getHairDresserFname()%></td>
                    <td><%= b[row].getHairDresserLname()%></td>
                    <td><%= b[row].getHairDresserPhone()%></td>
                    <td><%= b[row].isFullTime()%></td>
                    <td><%= b[row].getTimeOff()%></td>
                    <td><%= b[row].getHoursRequested()%></td>
                    <td><%= b[row].getHoursGiven()%></td>
                    
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
            <!--End availability*********************************************-->
        
            
        <p>
        <a href="AdminLanding.jsp">To Landing</a>
        <a href="hdManager.jsp">To Hair Dresser Manager</a>
        </p>
</div>
</body>
</html>