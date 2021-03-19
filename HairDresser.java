/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessObjects;

/**
 *
 * @author Jean, Rene
 * hairDresser business object
 * THS System Project
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HairDresser {

    private static int rawdb;
    //Properties
    String hairDresserId,hairDresserUsername, hairDresserPw;
    String hairDresserFname, hairDresserLname, hairDresserAddress, hairDresserPhone
           , hairDresserEmail, timeOff;
    boolean fullTime;
    int hoursRequested, hoursGiven;
    Double PayRate;
    public static List rowValues = new ArrayList();
    public HairDresserList hdList = new HairDresserList();
    public static ArrayList<HairDresser> customerList = new ArrayList<>();
    
    //Constructor that passes none
    public HairDresser() {
        //set everything to null
        this.hairDresserId = this.hairDresserUsername =this.hairDresserPw = 
        this.hairDresserFname = this.hairDresserLname =this.hairDresserAddress = 
        this.hairDresserPhone = this.hairDresserEmail = this.timeOff = null;
        this.hoursRequested = hoursGiven = 0;
        this.PayRate=0.0;
    }
    
    //Constructor that takes all arguments
    public HairDresser(String hairDresserId, String hairDresserUsername, 
            String hairDresserPw, String hairDresserFname, String hairDresserLname,
            String hairDresserAddress, String hairDresserPhone, String hairDresserEmail,
            boolean fullTime,String timeOff, int hoursRequested,int hoursGiven, Double PayRate) {
        //Take all arguments
        this.hairDresserId = hairDresserId;this.hairDresserUsername = hairDresserUsername;
        this.hairDresserPw = hairDresserPw;this.hairDresserFname = hairDresserFname;
        this.hairDresserLname = hairDresserLname;this.hairDresserAddress = hairDresserAddress;
        this.hairDresserPhone = hairDresserPhone;this.hairDresserEmail = hairDresserEmail;
        this.fullTime = fullTime;this.timeOff = timeOff;this.hoursRequested = hoursRequested;
        this.hoursGiven = hoursGiven;this.PayRate = PayRate;
    }
            //main****************************************************************
            public static void main(String [] args){
            //Test Instanciating a hairDresser object
            //HairDresser hd1 = new HairDresser();
            //hd1.selectDB("2007");
            /*hd1.insertDB("2007","idTest","pwTsest","fname","lname","address",
                    "404-770-6498","email@gmail.com",true,"TW",24,24,12.0);*/
            //hd1.deleteDB();
            //display
            //hd1.displayHairDresser();
            //hd1.displayHairDresser();
        }
            
        //display method
        public void displayHairDresser(){
            System.out.println("Data:\n"+
                    "ID: " + hairDresserId+" Username: " + hairDresserUsername+ 
                    " PW: "+ hairDresserPw +
                    "\nInfo:\n"+
                    " First Name: " + hairDresserFname 
                    + " Last Name " + hairDresserLname +" Address: " + hairDresserAddress + 
                     " Phone " + hairDresserPhone+" Email: " + hairDresserEmail+ 
                    "\nAvailability:\n"+
                    " Full Time?: " + fullTime+ " TimeOff: " + timeOff+
                    " Hours Requested: "+ hoursRequested+ " Hours Given: " + hoursGiven+" PayRate: "+ PayRate      
            );
           hdList.displayList();
        }
        //This is a static arrayList that gets hairdressers from getallhairdressers method
        public static ArrayList<HairDresser> getAllHairDressers() throws ClassNotFoundException, SQLException {
     try {    
//Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rst = stmt.executeQuery("Select * from Hairdresser2 ");
            System.out.println("executingquery");
            //Process ResultSet

    while (rst.next()) {
        HairDresser hairdresser = new HairDresser(
            rst.getString("ID"),
            rst.getString(1),
            rst.getString(2),
            rst.getString(3),
            rst.getString(4),
            rst.getString(5),
            rst.getString(6),
            rst.getString(7),
            rst.getBoolean(8),
            rst.getString(9),
            rst.getInt(10),
            rst.getInt(11),
            rst.getDouble(12));
        customerList.add(hairdresser);
    }
    
    }catch (Exception se) {
            System.out.println(se);
        }
        return customerList;
        }
        //selectDB method to select all
        public static void selectAllDB(){
        try {
            //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select ID from Hairdresser2");
            System.out.println("executingquery");
            //Process ResultSet
            
            while (rs.next()) {
            rowValues.add(rs.getString(1));
           //System.out.println(rowValues);
            }
               c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
        
        }
        
        public static int getCount(){
            try {
            //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select count(*) from Hairdresser2");
            System.out.println("executingquery");
            //Process ResultSet
            
            rs.next();
            rawdb =rs.getInt(1);
           System.out.println(rawdb);
            
               c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
        return rawdb;
        }    
        
        
        //this is used to obtain all hair dressers from db and store them in like an arrayList
        public void getHairDressers(){
            try {    //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from Hairdresser2 ");
            System.out.println("executingquery");
            //Process ResultSet
            String an;
            HairDresser a1;
            while (rs.next()) {
            an = rs.getString(1);
            a1 = new HairDresser();
            a1.selectDB(an);
            hdList.addHairDresser(a1);
            }
        } catch (Exception se) {
            System.out.println(se);
        }
        }   
           
        
        //selectDB*************************************************************
        public void selectDB(String i) {
        hairDresserId = i;
        try {    //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from Hairdresser2 where ID="+i);
            System.out.println("executingquery");
            //Process ResultSet
            rs.next();
            //Data:
            //hairDresserId = rs.getString(0);
            hairDresserUsername = rs.getString(1);
            hairDresserPw = rs.getString(2);
            //Info:
            hairDresserFname = rs.getString(3);
            hairDresserLname = rs.getString(4);
            hairDresserAddress = rs.getString(5);
            hairDresserPhone = rs.getString(6);
            hairDresserEmail = rs.getString(7);
            //Availability:
            fullTime = rs.getBoolean(8);
            timeOff = rs.getString(9);
            hoursRequested = rs.getInt(10);
            hoursGiven = rs.getInt(11);
            PayRate = rs.getDouble(12);
            
            c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
    } //end selectDB()
    
    //insertDB******************************************************************
        public void insertDB(String id, String un, String pw, String fn, String ln, 
                String adr, String phone,String eml, boolean fullt,String timeo,int hreq,
                int hgiv, double pr){
        //assign values
        //Data:
            hairDresserId = id;
            hairDresserUsername = un;
            hairDresserPw = pw;
            //Info:
            hairDresserFname = fn;
            hairDresserLname = ln;
            hairDresserAddress = adr;
            hairDresserPhone = phone;
            hairDresserEmail = eml;
            //Availability:
            fullTime = fullt;
            timeOff = timeo;
            hoursRequested = hreq;
            hoursGiven = hgiv;
            PayRate = pr;
        
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            System.out.println("Betabase connected"); 
            // Create StAtement
            java.sql.Statement stmt = c1.createStatement();
            // Update stAtement definition
            String sql2 = "insert into HairDresser2 (ID,hdUsername,hdPw,FirstName,LastName,"
                    + "Address,PhoneNo,Email,FullTime,TimeOff,HoursRequested,HoursGiven,PayRate)"
                    + " values('"+
                                                            getHairDresserId()+"',"+
                                                        "'"+getHairDresserUsername()+"',"+
                                                      "'"+getHairDresserPw()+"',"+ 
                                                      "'"+getHairDresserFname()+"',"+ 
                                                      "'"+getHairDresserLname()+"',"+
                                                      "'"+getHairDresserAddress()+"',"+
                                                      "'"+getHairDresserPhone()+"',"+
                                                      "'"+getHairDresserEmail()+"',"+ 
                                                      ""+isFullTime()+","+ 
                                                      "'"+getTimeOff()+"',"+
                                                        ""+getHoursRequested()+","+
                                                        ""+getHoursGiven()+","+
                                                      ""+getPayRate()+""+
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
            String sql3 = "Delete from hairDresser2 where ID ='"+getHairDresserId()+"'"; 
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
        
        //getters
        public String getHairDresserId(){return hairDresserId;}
        public String getHairDresserPw(){return hairDresserPw;}
        public String getHairDresserFname() {return hairDresserFname;}
        public String getHairDresserLname() {return hairDresserLname;}
        public String getHairDresserAddress() {return hairDresserAddress;}
        public String getHairDresserEmail() {return hairDresserEmail;}
        public String getHairDresserUsername() {return hairDresserUsername;}
        public String getHairDresserPhone() {return hairDresserPhone;}
        public String getTimeOff() {return timeOff;}
        public boolean isFullTime() {return fullTime;}
        public int getHoursRequested() {return hoursRequested;}
        public int getHoursGiven() {return hoursGiven;}
        public Double getPayRate() {return PayRate;}
        
        
        //Setters
        public void setHairDresserId (String hairDresserId) {this.hairDresserId = hairDresserId;}
        public void setHairDresserPw (String hairDresserPw) {this.hairDresserPw = hairDresserPw;}
        public void setHairDresserFname(String hairDresserFname) {this.hairDresserFname = hairDresserFname;}
        public void setHairDresserLname(String hairDresserLname) {this.hairDresserLname = hairDresserLname;}
        public void setHairDresserAddress(String hairDresserAddress) {this.hairDresserAddress = hairDresserAddress;}
        public void setHairDresserEmail(String hairDresserEmail) {this.hairDresserEmail = hairDresserEmail;}
        public void setHairDresserUsername(String hairDresserUsername) {this.hairDresserUsername = hairDresserUsername;}
        public void setHairDresserPhone(String hairDresserPhone) {this.hairDresserPhone = hairDresserPhone;}
        public void setTimeOff(String timeOff) {this.timeOff = timeOff;}
        public void setFullTime(boolean fullTime) {this.fullTime = fullTime;}
        public void setHoursRequested(int hoursRequested) {this.hoursRequested = hoursRequested;}
        public void setHoursGiven(int hoursGiven) {this.hoursGiven = hoursGiven;}
        public void setPayRate(Double PayRate) {this.PayRate = PayRate;}
    }