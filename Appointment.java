/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kimmy
 */
/**********************************************************
 * The Appointment class is to hold all of the Appointment Accounts
 ************************************************************/
public class Appointment {
    //properties
    String HdAptID, AptTime, CustID;
    boolean Taken; 
    String Week, AptDays, Service, Reserved;
    
    //array to store schedule objects
        public static ArrayList<Appointment> HDAppointmentList = new ArrayList<>();
        //array to store how many records are in the schedule
        public static List rowValues = new ArrayList();
        //property to store raw database count
        private static int rawAppointmentDBCount;
    //Constructor that passes no arguments
    public Appointment(){
        HdAptID = null;
        AptTime = null;
        CustID = null;
        Taken = false;
        Week = null;
        AptDays = null;
        Service = null;
        Reserved = null;
    }

    //Constructors that passes all arguments
    public Appointment(String HdAptID, String AptTime, String CustID,  boolean isTaken, String Week, String AptDays, String Service, String Reserved) {
        this.HdAptID = HdAptID;
        this.AptTime = AptTime;
        this.CustID = CustID; 
        this.Taken = Taken;
        this.Week = Week;
        this.AptDays = AptDays;
        this.Service = Service;
        this.Reserved = Reserved;
    }
    
    public static void main(String [] args) throws ClassNotFoundException, SQLException{
            //Test InstAnciating a Customer object
            //Appointment a1 = new Appointment();
            Appointment a1 = new Appointment();
            //s1.getAllAppointment();
            //a1.insertDB("9002", "2 AM", "2323", true, "2021-W18", "W", "Nails", "B");
            //a1.selectDB("9001");
            a1.insertDB("9001", "3 AM", "2323", true, "18", "W", "Nail Service", "B");
            //a1.deleteDB("9010");
//            a1.setEmpID("2006");
//            a1.updateDB();
            a1.display();
            
    }
    //display method
    public void display(){
        System.out.println("HdAptID: " + HdAptID  + "AptTime:" + AptTime + "CustID: " + CustID 
                +  "Taken: " + Taken + "Week:" + Week + "AptDays" + AptDays + "Service: " + Service + "Reserved:" +Reserved);
    }
    
    //This is a static arrayList that gets hairdressers from getallhairdressers method
        public static ArrayList<Appointment> getAllAppointment() throws ClassNotFoundException, SQLException {
     try {    
//Load DB Driver
            Class.forName(Strings.driver);
            Connection c1 = DriverManager.getConnection(Strings.url);

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rst = stmt.executeQuery("Select * From Appointment");
            System.out.println("Executing get all schedlues query");
            //Process ResultSet

    while (rst.next()) {
        Appointment aa1 = new Appointment(
            rst.getString("HdAptID"),
            rst.getString("AptTime"),
            rst.getString("CustID"),
            rst.getBoolean("Taken"),
            rst.getString("Week"),
            rst.getString("AptDays"),
            rst.getString("Service"),
            rst.getString("Reserved"));
            
        HDAppointmentList.add(aa1);
    }
    
    }catch (Exception se) {
            System.out.println(se);
        }
        return HDAppointmentList;
        }
        /********************************************************************
         * getAccountCount() will count the number of records in the Appointment Table
         * ******************************************************************/
        public static int getAppointmentCount(){
            try {
            //Load DB Driver
            Class.forName(Strings.driver);
            Connection c1 = DriverManager.getConnection(Strings.url);

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select count(*) From Appointment");
            System.out.println("Executing Query to get schedule count");
            //Process ResultSet
            
            rs.next();
            rawAppointmentDBCount =rs.getInt(1);
           System.out.println(rawAppointmentDBCount);
            
               c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
        return rawAppointmentDBCount;
        }    
    
    
     /*********************************************************
         *The SelectDB() Method will get one Appointment from the DB
         ********************************************************/
    public void selectDB(String i){
        HdAptID=i;
        try {    //Load DB Driver
            Class.forName(Strings.driver);
            Connection conn = DriverManager.getConnection (Strings.url);
           // System.out.println("Connected to the SelectDB");
            
            Statement stmt = conn.createStatement();
            ResultSet rs;
            String sql = ("Select * From Appointment Where HdAptID = '" + i + "'");
//            System.out.println(sql);
            
            rs = stmt.executeQuery(sql);
            

            //Process ResultSet
            while (rs.next()) {
                
                //adminId = rs.getString(0);
                //this.HdAptID = rs.getString(1);
                this.AptTime = rs.getString("AptTime");
                this.CustID = rs.getString("CustID");
                this.Taken = rs.getBoolean("Taken");
                this.Week = rs.getString("Week");
                this.AptDays = rs.getString("AptDays");
                this.Service = rs.getString("Service");
                this.Reserved = rs.getString("Reserved");
                
                
            }  
            
            conn.close();
            
           
        } catch (ClassNotFoundException | SQLException se) {
            System.out.println(se); 
            
           }
    }//End SelectDB
    
    /*********************************************************
         *The InsertDB() will insert one Appointment to the DB
         ********************************************************/
        public void insertDB(String HdAptID, String AptTime, String CustID, boolean Taken, String Week, String AptDays, String Service, String Reserved){
        //assign values
        setHdAptID(HdAptID);
        setAptTime(AptTime);
        setCustID(CustID);
        setTaken(Taken);
        setWeek(Week);
        setAptDays(AptDays);
        setService(Service);
        setReserved(Reserved);
        try{
            Class.forName(Strings.driver);
            Connection conn = DriverManager.getConnection
                (Strings.url);

            System.out.println("Database connected"); 
            //Create StAtement
            java.sql.Statement stmt = conn.createStatement();
            //update stAtement definition
            String sql2 = "INSERT INTO Appointment(hdAptID, aptTime,custId,taken,week,aptdays, service, reserved) values('"+getHdAptID()+"',"+
                                                        "'"+getAptTime()+"', "+
                                                      "'"+getCustID()+"', "+
                                                      ""+isTaken()+", "+
                                                      "'"+getWeek() + "', " +
                                                        "'"+getAptDays()+"', "+
                                                        "'"+getService()+"', "+
                                                        "'"+getReserved()+"' "+
")"; 
            //print the stAtement
            System.out.println(sql2);
            //check for duplicates
            int n1 = stmt.executeUpdate(sql2);
            conn.close();
            if (n1==1){
                System.out.println("INSERT Successful!!!");
            }
            else {
             System.out.println("INSERT FAILED***********");
        }
            
        }
        catch(Exception e1){
            System.out.println(e1);
        }
        
        
        }
     
     /*********************************************************
         *The DeleteDB() will delete one Appointment from the DB
         ********************************************************/
        public void deleteDB(String i){
            HdAptID=i;
            System.out.println("Ready to Delete");
                        try{
            Class.forName(Strings.driver);
           java.sql.Connection con3 = DriverManager.getConnection(Strings.url);
            System.out.println("DatAbase connected");
            //Create StAtement - Step #3
            java.sql.Statement stmt = con3.createStatement();

            //Execute StAtement - Step #4
            String sql3 = "Delete from Appointment Where HdAptID = '"+ i +"'"; 
            //Print sql stAtement
            System.out.println(sql3);
            //check for duplicates
            int n1 = stmt.executeUpdate(sql3);
            if (n1==1)
                System.out.println("DELETE Successfull!!!");
            else
                System.out.println("DELETE FAILED***********");
            con3.close();
        }
        catch(Exception e1){
            System.out.println(e1);
        }
        
        }//end of deleteDB
    
    /*********************************************************
         *The UpdateDB() will update one Appointment from the DB
         ********************************************************/
    public void updateDB() {
        try{
                Class.forName(Strings.driver);
                
               Connection con4 = DriverManager.getConnection
                       (Strings.url);
               
            System.out.println("Database Connected");
            Statement stmt = con4.createStatement();

            String sql4 = "Update Appointment set AptTime = '"+getAptTime()+"',"+
                                               
                                                "CustID= '" +getCustID() + "',"+
                                                "Taken = '" +isTaken() +"',"+
                                                "Week = '" +getWeek() + "'," +
                                                "AptDays = '" +getAptDays() + "',"+
                                                "Service = '" +getService() + "',"+
                                                "Reserved = '" +getReserved() + "'"+
                                                "Where HdAptID ='"+getHdAptID()+"'";
            System.out.println(sql4);
            System.out.println("Data set");
            int n = stmt.executeUpdate(sql4);
            if(n==1)
                System.out.println("UPDATE Successful!!!");
            else
                System.out.println("UPDATE Failed************");
            con4.close();
            }
            catch(Exception e1){
                System.out.println(e1);
            }
    
        
    }//End UpdateDB
    

    public String getAptTime() {
        return AptTime;
    }

    public void setAptTime(String AptTime) {
        this.AptTime = AptTime;
    }


    public String getCustID() {
        return CustID;
    }

    public void setCustID(String CustID) {
        this.CustID = CustID;
    }

    public String getHdAptID() {
        return HdAptID;
    }

    public void setHdAptID(String HdAptID) {
        this.HdAptID = HdAptID;
    }

    public boolean isTaken() {
        return Taken;
    }

    public void setTaken(boolean Taken) {
        this.Taken = Taken;
    }

    public String getWeek() {
        return Week;
    }

    public void setWeek(String Week) {
        this.Week = Week;
    }

    public String getAptDays() {
        return AptDays;
    }

    public void setAptDays(String AptDays) {
        this.AptDays = AptDays;
    }

    public String getService() {
        return Service;
    }

    public void setService(String Service) {
        this.Service = Service;
    }

    public String getReserved() {
        return Reserved;
    }

    public void setReserved(String Reserved) {
        this.Reserved = Reserved;
    }
}
