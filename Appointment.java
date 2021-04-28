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
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author renel
 */
public class Appointment {
      //properties
    String AptTime, CustID, HdAptID;
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
        AptTime = null;
        CustID = null;
        HdAptID = null;
        Taken = false;
        Week = null;
        AptDays = null;
        Service = null;
        Reserved = null;
    }

    //Constructors that passes all arguments
    public Appointment(String AptTime, String CustID, String HdAptID, boolean Taken, String Week, String AptDays, String Service, String Reserved) {
        this.AptTime = AptTime;
        this.CustID = CustID;
        this.HdAptID = HdAptID;
        this.Taken = Taken;
        this.Week = Week;
        this.AptDays = AptDays;
        this.Service = Service;
        this.Reserved = Reserved;
    }

    public static void main(String[] args) /*throws ClassNotFoundException, SQLException*/ {
        //Test InstAnciating a Customer object
        Appointment a1 = new Appointment();
        //s1.getAllAppointment();

        //a1.selectDB("9001");
        a1.insertDB("4", "2001", "9011", true, "2021-W20", "S", "Nails", "B");
        //a1.deleteDB("9003");
        //a1.updateDB();
        a1.display();
        /*ArrayList <Appointment> table = new ArrayList<Appointment>();
    //properties
            Appointment aa1 = new Appointment();
            String day = "T";
            String week = "2021-W18";
            //out.println(day);
            System.out.println(week);
            //listsize
            int listSize = Appointment.getAppointmentCount();
                //populate the list
                table = Appointment.getAllAppointment();
                //declare reserve var
                //String[] reserve2=new String[5];
                String reserve=null;
                
                  
               List <Appointment> defaults =new ArrayList<Appointment>();
            for (Appointment str : table) {
    if (str.getAptDays().equals(day) && str.getWeek().equals(week)) {
        defaults.add(str);
    }
}
//myArrayList.removeAll(toRemove);
  
            //listsize
            //int listSize = Appointment.getAppointmentCount();
            
            //store the list in an array
            Appointment[] apptArray = new Appointment[5];
            
            //for loop to store list in array
            for (int aCount=0;aCount<defaults.size();aCount++){
                apptArray[aCount]=defaults.get(aCount);
                //out.println(apptArray[aCount].getReserved());
            }                 
        
        for(int row=0; row < listSize; row++) {
            System.out.println(" Time: "+apptArray[row].getAptTime()+
                " id: "+apptArray[row].getHdAptID()+
                    " week: "+apptArray[row].getWeek()+
                    " day: "+apptArray[row].getAptDays()+
                    " reserve: "+apptArray[row].getReserved()+"--\n");
                            
               }*/
    }
    

    //display method
    public void display() {
        System.out.println("AptTime: " + AptTime + " CustID: " + CustID
                + " HdAptID: " + HdAptID + " Taken: " + Taken + " Week:" + Week + " AptDays: " + AptDays + " Service: " + Service + " Reserved:" + Reserved);
    }

    //This is a static arrayList that gets hairdressers from getallhairdressers method
    public static ArrayList<Appointment> getAllAppointment() throws ClassNotFoundException, SQLException {
        try {
//Load DB Driver
            Class.forName(Strings.driver);
            Connection c1 = DriverManager.getConnection(Strings.url);

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rst = stmt.executeQuery("Select * From Appointments");
            System.out.println("Executing get all schedlues query");
            //Process ResultSet

            while (rst.next()) {
                Appointment aa1 = new Appointment(
                        rst.getString("AptTime"),
                        rst.getString("CustID"),
                        rst.getString("HdAptID"),
                        rst.getBoolean("Taken"),
                        rst.getString("Week"),
                        rst.getString("AptDays"),
                        rst.getString("Service"),
                        rst.getString("Reserved"));

                HDAppointmentList.add(aa1);
            }

        } catch (Exception se) {
            System.out.println(se);
        }
        return HDAppointmentList;
    }
    //DB method to count the number of records in the

    public static int getAppointmentCount() {
        try {
            //Load DB Driver
            Class.forName(Strings.driver);
            Connection c1 = DriverManager.getConnection(Strings.url);

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select count(*) From Appointments");
            System.out.println("Executing Query to get schedule count");
            //Process ResultSet

            rs.next();
            rawAppointmentDBCount = rs.getInt(1);
            System.out.println(rawAppointmentDBCount);

            c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
        return rawAppointmentDBCount;
    }

    //The SelectDB will grab the database informations 
    public void selectDB(String i) {
        HdAptID = i;
        try {
            Class.forName(Strings.driver);
            Connection conn = DriverManager.getConnection(Strings.url);

            Statement stmt = conn.createStatement();
            ResultSet rs;
            String sql = ("Select * From Appointments Where HdAptID = '" + i + "'");
//            System.out.println(sql);

            rs = stmt.executeQuery(sql);

            //Process ResultSet
            // while (rs.next()) {
            rs.next();
            //adminId = rs.getString(0);
            this.AptTime = rs.getString("AptTime");
            this.CustID = rs.getString("CustID");
            this.HdAptID = rs.getString("HDAptID");
            this.Taken = rs.getBoolean("Taken");
            this.Week = rs.getString("Week");
            this.AptDays = rs.getString("AptDays");
            this.Service = rs.getString("Service");
            this.Reserved = rs.getString("Reserved");

            //}  
            conn.close();

        } catch (ClassNotFoundException | SQLException se) {
            System.out.println(se);

        }
    }//End SelectDB

     public void insertDB(String AptTime, String CustID, String HdAptID, boolean Taken,String Week, String AptDays, String Service, String Reserved ) {
       
    System.out.println("Starting the InsertDB");
    
    //assign values
    setAptTime(AptTime);
    setCustID(CustID);
    setHdAptID(HdAptID);
    setTaken(Taken);
    setWeek(Week);
    setAptDays(AptDays);
    setService(Service);
    setReserved(Reserved);
           
    try{
        Class.forName(Strings.driver);
        Connection conn = DriverManager.getConnection
        (Strings.url);
        
        System.out.println("Database connected for the InsertDB");
        //Create Statement
        java.sql.Statement stmt = conn.createStatement();
        //update Statement definition
        String sql = "INSERT INTO Appointments values('"+getHdAptID()+"',"+
                                                        ""+isTaken()+","+
                                                        "'"+getWeek()+"',"+
                                                        "'"+getAptDays()+"',"+
                                                        "'"+getService()+"',"+
                                                        "'"+getReserved()+"',"+
                                                        "'"+getCustID()+"',"+
                                                        "'"+getAptTime()+"'"+
")";
        //print the statement
        System.out.println("Insert successful");
        System.out.println(sql);
        //check for duplicates
        int n1 = stmt.executeUpdate(sql);
        conn.close();
        if (n1==1) {
            System.out.println("Insert Successfully!!!!!");
            
            
        }
        else {
            System.out.println("Insert Failed!!!!");
            
        }
       
  
    }
    catch(Exception e1){
        System.out.println(e1);
      
    }
    
    }
    //end of insertDB
    //DeleteDB
    public void deleteDB(String i) {
        HdAptID = i;
        System.out.println("Ready to Delete");
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            java.sql.Connection con3 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "C:\\Users\\kimmy\\OneDrive\\Documents\\Advanced System Project\\THSDatabase.mdb");
            System.out.println("DatAbase connected");
            //Create StAtement - Step #3
            java.sql.Statement stmt = con3.createStatement();

            //Execute StAtement - Step #4
            String sql3 = "Delete from Appointment69 Where HdAptID = '" + i + "'";
            //Print sql stAtement
            System.out.println(sql3);
            //check for duplicates
            int n1 = stmt.executeUpdate(sql3);
            if (n1 == 1) {
                System.out.println("DELETE Successfull!!!");
            } else {
                System.out.println("DELETE FAILED***********");
            }
            con3.close();
        } catch (Exception e1) {
            System.out.println(e1);
        }

    }//end of deleteDB

    //UpdateDB will update the database information if you want to change any records
    public void updateDB() {
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");

            Connection con4 = DriverManager.getConnection("jdbc:ucanaccess://" + "C:\\Users\\kimmy\\OneDrive\\Documents\\Advanced System Project\\THSDatabase.mdb");

            System.out.println("Database Connected");
            Statement stmt = con4.createStatement();

            String sql4 = "Update Appointment69 set AptTime = '" + getAptTime() + "',"
                    + "CustID= '" + getCustID() + "',"
                    + "Taken = '" + isTaken() + "',"
                    + "Week = '" + getWeek() + "',"
                    + "AptDays = '" + getAptDays() + "',"
                    + "Service = '" + getService() + "',"
                    + "Reserved = '" + getReserved() + "'"
                    + "Where HdAptID ='" + getHdAptID() + "'";
            System.out.println(sql4);
            System.out.println("Data set");
            int n = stmt.executeUpdate(sql4);
            if (n == 1) {
                System.out.println("UPDATE Successful!!!");
            } else {
                System.out.println("UPDATE Failed************");
            }
            con4.close();
        } catch (Exception e1) {
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
