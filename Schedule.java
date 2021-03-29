/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessObjects;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author renel
 */
public class Schedule {
    //properties
    String EmpId;
    String firstName;
    String lastName;
    String timeOff;
    boolean monday;
    boolean tuesday;
    boolean wednesday;
    boolean thursday;
    boolean friday;
    boolean saturday;
    boolean sunday;
    //arrays
    //array to store schedule objects
        public static ArrayList<Schedule> scheduleList = new ArrayList<>();
        //array to store how many records are in the schedule
        public static List rowValues = new ArrayList();
        //property to store raw database count
        private static int rawScheduleDBCount;
    
    //constructor that takes no
    public Schedule() {
        EmpId =firstName =lastName = timeOff = null;
        monday =tuesday = wednesday = thursday =friday =saturday =sunday = false;
    }
    
    
    //constructor that takes all
        public Schedule(String EmpId, String firstName, String lastName/*,String timeOff*/, boolean monday, boolean tuesday, boolean wednesday, boolean thursday, boolean friday, boolean saturday, boolean sunday) {
        this.EmpId = EmpId;
        this.firstName = firstName;
        this.lastName = lastName;
        //this.timeOff = timeOff;
        this.monday = monday;
        this.tuesday = tuesday;
        this.wednesday = wednesday;
        this.thursday = thursday;
        this.friday = friday;
        this.saturday = saturday;
        this.sunday = sunday;
    }
    
        //main method
        public static void main(String[]args) throws ClassNotFoundException, SQLException{
            //Schedule s1 = new Schedule("2020","Rene","Lisasi",false, false, false, true, true, false, true);
            //Schedule s1 = new Schedule();
            //s1.selectDB("2021");
            //s1.insertDB("2021","Lee","Chaobra",true, true, false, true, true, false, true);
            //s1.setMonday(false);
            //s1.updateDB();
            //add this below to test get all method
            ////s1.getAllSchedules();
            //s1.deleteDB();
            //s1.displaySchedule();
        }
        
        //DB*****************************************************************
        //UpdateDB&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        public void updateDB(){
             try{
                     Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");
              
            Statement stmt = con1.createStatement();
            String sql = "update Schedule2 set firstname = '"+getFirstName() + "',"+
                                            " lastname ='"+getLastName()+"',"+
                                            " m ='"+isMonday()+"',"+
                                            " t ='"+isTuesday()+"',"+
                                            " w = '"+isWednesday() +"',"+
                                            " r ='"+isThursday()+"',"+
                                            " f = '"+isFriday() +"',"+
                                            " s ='"+isSaturday()+"', "+
                                            " z ='"+isSunday()+"' "+
                                            " where EmpId='"+getEmpId()+"'";
            System.out.println(sql);
            int n = stmt.executeUpdate(sql);
            if (n==1)
                System.out.println("UPDATE Successful!!!");
            else
                System.out.println("UPDATE FAILED***********");
            con1.close();
        }
        catch(Exception e1){
            System.out.println(e1);
        }
      
        }
         //selectDB*************************************************************
        public void selectDB(String i) {
        EmpId = i;
        try {    //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");
            /*Dataset from hairdresser2:::::::::::::::::::::::::::::::::::::
            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select ID,firstname,lastname,timeoff from Hairdresser2 where ID="+i);
            System.out.println("executing query");
            //Process ResultSet
            rs.next();
            //EmpId = rs.getString(0);
            firstName = rs.getString(2);
            lastName = rs.getString(3);
            timeOff = rs.getString(4);
            monday = getTimeOff().contains("M");
            tuesday = getTimeOff().contains("T");
            wednesday = getTimeOff().contains("W");
            thursday = getTimeOff().contains("R");
            friday = getTimeOff().contains("F");
            saturday = getTimeOff().contains("S");
            sunday = getTimeOff().contains("Z");*/
            
            //dataset from schedule2:::::::::::::::::::::::::::::::::::::::::::
            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select EmpID,firstname,lastname,M,T,W,R,F,S,Z from Schedule2 where EmpID="+i);
            System.out.println("executing query");
            //Process ResultSet
            rs.next();
            //EmpId = rs.getString(0);
            firstName = rs.getString(2);
            lastName = rs.getString(3);
            
            monday = rs.getBoolean(4);
            tuesday = rs.getBoolean(5);
            wednesday = rs.getBoolean(6);
            thursday = rs.getBoolean(7);
            friday = rs.getBoolean(8);
            saturday = rs.getBoolean(9);
            sunday = rs.getBoolean(10);
            
            c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
    } //end selectDB()
        
        //insertDB******************************************************************
        public void insertDB(String id,String fn, String ln/*, 
                String to, boolean m,boolean t, boolean w, boolean r, boolean f,
                boolean s, boolean z*/){
        //assign values
        //Data:
            EmpId = id;
            //Info:
            firstName = fn;
            lastName = ln;
            //Availability:
           // m = t = w = r = f = s = z = false;
           /*monday = m;
           tuesday = t;
           wednesday = w;
           thursday = r;
           friday = f;
           saturday = s;
           sunday = z;*/
        
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            System.out.println("Betabase connected"); 
            // Create StAtement
            java.sql.Statement stmt = c1.createStatement();
            // Update stAtement definition
            String sql2 = "insert into Schedule2 (EmpID,FirstName,LastName,"
                    + "M,T,W,R,F,S,Z)"
                    + " values('"+
                                                            getEmpId()+"',"+
                                                      "'"+getFirstName()+"',"+ 
                                                      "'"+getLastName()+"',"+
                                                      //"'"+getTimeOff()+"',"+
                                                      "'"+isMonday()+"',"+
                                                      "'"+isTuesday()+"',"+ 
                                                      ""+isWednesday()+","+ 
                                                      "'"+isThursday()+"',"+
                                                        ""+isFriday()+","+
                                                        ""+isSaturday()+","+
                                                      ""+isSunday()+""+
                                                        ")"; 
            // Print the statement
            System.out.println(sql2);
            // Check for duplicates
            int n1 = stmt.executeUpdate(sql2);
            if (n1==1)
                System.out.println("INSERT Successful!!!");
            else
                System.out.println("INSERT FAILED***********");
            c1.close();
        }
        catch(Exception e1){
            System.out.println(e1);
        }
    }
        //DeleteDB***********************************************************
        public void deleteDB(){
                        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
           java.sql.Connection con3 = DriverManager.getConnection("jdbc:ucanaccess://"
                   + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");
            System.out.println("Database connected");
            //Create StAtement - Step #3
            java.sql.Statement stmt = con3.createStatement();

            //Execute StAtement - Step #4
            String sql3 = "Delete from Schedule2 where EmpID ='"+getEmpId()+"'"; 
            //Print sql stAtement
            System.out.println(sql3);
            //check for duplicates
            int n1 = stmt.executeUpdate(sql3);
            if (n1==1)
                System.out.println("DELETE Successful!!!");
            else
                System.out.println("DELETE FAILED***********");
            con3.close();
        }
        catch(Exception e1){
            System.out.println(e1);
        }
        }
        
        //This is a static arrayList that gets hairdressers from getallhairdressers method
        public static ArrayList<Schedule> getAllSchedules() throws ClassNotFoundException, SQLException {
     try {    
//Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rst = stmt.executeQuery("Select * from Schedule2 ");
            System.out.println("Executing get all schedlues query");
            //Process ResultSet

    while (rst.next()) {
        Schedule ss1 = new Schedule(
            rst.getString("EmpID"),
            rst.getString(3),
            rst.getString(4),
            rst.getBoolean(5),
            rst.getBoolean(6),
            rst.getBoolean(7),
            rst.getBoolean(8),
            rst.getBoolean(9),
            rst.getBoolean(10),
            rst.getBoolean(11));
            
        scheduleList.add(ss1);
    }
    
    }catch (Exception se) {
            System.out.println(se);
        }
        return scheduleList;
        }
        //DB method to count the number of records in the
        public static int getScheduleCount(){
            try {
            //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select count(*) from Schedule2");
            System.out.println("Executing Query to get schedule count");
            //Process ResultSet
            
            rs.next();
            rawScheduleDBCount =rs.getInt(1);
           System.out.println(rawScheduleDBCount);
            
               c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
        return rawScheduleDBCount;
        }    
        
        //createTbDB
        public void createTableDB(){
            try {    //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\schedulesDB.accdb");
            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            String sql = "CREATE TABLE SCHEDULE" +
                   "(EmpID INTEGER not NULL, " +
                   " FirstName VARCHAR(255), " + 
                   " LastName VARCHAR(255), " + 
                   " M BIT(1), " + 
                   " PRIMARY KEY ( EmpID ))"; 

      stmt.executeUpdate(sql);
      System.out.println("Created table in given database...");
        }catch(Exception e){
            System.out.println(e);
        }
        }
        
        //END DB*************************************************************
        
        //display method
        public void displaySchedule(){
            System.out.println("EmpId:"+ EmpId +" First name:"+ firstName +
                    " Last name:"+ lastName + " Time Off:"+ timeOff+ " M: "+ monday + " T: "+ tuesday +
                    " W: "+ wednesday + " R: "+ thursday + " F: "+ friday +
                    " S: "+ saturday + " Z: "+ sunday);
        }
        
    //getters n setters
    public String getEmpId() {return EmpId;}
    public void setEmpId(String EmpId) {this.EmpId = EmpId;}
    public String getFirstName() {return firstName;}
    public void setFirstName(String firstName) {this.firstName = firstName;}
    public String getLastName() {return lastName;}
    public void setLastName(String lastName) {this.lastName = lastName;}
    public String getTimeOff() {return timeOff;}
    public void setTimeOff(String timeOff) {this.timeOff = timeOff;}
    public boolean isMonday() {return monday;}
    public void setMonday(boolean monday) {this.monday = monday;}
    public boolean isTuesday() {return tuesday;}
    public void setTuesday(boolean tuesday) {this.tuesday = tuesday;}
    public boolean isWednesday() {return wednesday;}
    public void setWednesday(boolean wednesday) {this.wednesday = wednesday;}
    public boolean isThursday() {return thursday;}
    public void setThursday(boolean thursday) {this.thursday = thursday;}
    public boolean isFriday() {return friday;}
    public void setFriday(boolean friday) {this.friday = friday;}
    public boolean isSaturday() {return saturday;}
    public void setSaturday(boolean saturday) {this.saturday = saturday;}
    public boolean isSunday() {return sunday;}
    public void setSunday(boolean sunday) {this.sunday = sunday;}
}
