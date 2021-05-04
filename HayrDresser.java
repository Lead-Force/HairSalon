  
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// Package
package BO;

/**
 *
 * @author Renel/Jean
 * Hairdresser business object for Hairdresser login
 * THS System Project
 * 
 */

// Imports
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

// Hairdresser class
public class HayrDresser {
    
    // Properties
    String HayrdresserId, HayrdresserUser, HayrdresserPw;
    String HayrdresserFname, HayrdresserLname, HayrdresserAddress, HayrdresserPhone, HayrdresserEmail;
    // Boolean FullTime; 
    String FullTime; 
    String TimeOff, HoursRequested, HoursGiven; 
    Double PayRate;
    private static int rawdb;
    public static ArrayList<HayrDresser> customerList = new ArrayList<>();
    
    // Constructor that passes all arguments
    public HayrDresser(String HayrdresserId, String HayrdresserUser, String HayrdresserPw, String HayrdresserFname, String HayrdresserLname, String HayrdresserAddress, String HayrdresserPhone, String HayrdresserEmail, String FullTime, String TimeOff, String HoursRequested, String HoursGiven, Double PayRate) {
        this.HayrdresserId = HayrdresserId;
        this.HayrdresserUser = HayrdresserUser;
        this.HayrdresserPw = HayrdresserPw;
        this.HayrdresserFname = HayrdresserFname;
        this.HayrdresserLname = HayrdresserLname;
        this.HayrdresserAddress = HayrdresserAddress;
        this.HayrdresserPhone = HayrdresserPhone;
        this.HayrdresserEmail = HayrdresserEmail;
        this.FullTime = FullTime;
        this.TimeOff = TimeOff;
        this.HoursRequested = HoursRequested;
        this.HoursGiven = HoursGiven;
        this.PayRate = PayRate;
    }
    
    // Constructor that passes no arguments
    public HayrDresser() {
        this.HayrdresserId = null;
        this.HayrdresserUser = null;
        this.HayrdresserPw = null;
        this.HayrdresserFname = null;
        this.HayrdresserLname = null;
        this.HayrdresserAddress = null;
        this.HayrdresserPhone = "0";
        this.HayrdresserEmail = null;
        this.FullTime = null;
        this.TimeOff = null;
        this.HoursRequested = "0";
        this.HoursGiven = "0";
        this.PayRate = null;
    }
    
            // Main constructor
            public static void main(String [] args) throws ClassNotFoundException, SQLException{
            // Test Instanciating a Hairdresser object
            // HairDresser c1 = new HairDresser(/*"3001", "1234", "Peter", "Frampton", "123 Main St", "pframp@gmail.com"*/);
            // h1.selectDB("2003");
            //h2.insertDB(300, 963, "Anna", "Williams", "10 Hems Mansion, Dublin", "awilliams@gcorp.co.ire");
            //h2.deleteDB();
            //display
            // h1.displayHairdresser();
            //int pwdb = c2.getHairdresserPw();
            //System.out.println("Password for user:" + pwdb );
            
            //Test Instanciating a hairDresser object
            //HairDresser hd1 = new HairDresser();
            //hd1.selectDB("2007");
            //h1.updateDB("2007","idTest","pwTsest","fname","lname","address", "404-770-6498","email@gmail.com",true,"TW",24,24,12.0);
            //hd1.deleteDB();
            //display
            //hd1.displayHairDresser();
            //hd1.displayHairDresser();
            
            //Test InstAnciating a Hairdresser object
            HayrDresser h1 = new HayrDresser();
            h1.selectDB("2001");
            // h1.setHairdresserFname("Ron");
            // h1.setHairdresserLname("Weasley"); 
            // h1.setHairdresserAddress("123 Dudley Dr");
            // h1.updateDB();
            h1.displayHayrdresser();
            // h1.updateDB("Harry", "Potter", "Dorsey Dr", "123", "hpotter@gmail.com");
            // h1.updateDB("Harry", "Potter", "Dorsey Dr", "123", "hpotter@gmail.com", null, "Y", "40", null, null);
            // h1.updateDB("JohnD","pwTest","fname","lname","address", "404-770-6498","email@gmail.com");
            System.out.println("Main method");
            //h1.selectDB("BenS");
            //h1.insertDB("8787", "Jessica", "Smith", "10 Hems Mansion","123-456-7789", "JS@gmail.com", "JessicaS", "Smith33");
            //h1.deleteDB("8787");
            // h1.selectDB("BenS");
            // h1.setFirstName("Jinny");
            // h1.updateDB();
            //display
            // h1.display();
            //int pwdb = c2.getAdminPw();
            //System.out.println("Password for user:" + pwdb );
            
            // Get All Hair Dressers method inside Main()
            HayrDresser hd1 = new HayrDresser();
            HayrDresser k2;
            ArrayList<HayrDresser> bList = new ArrayList<HayrDresser>();
            // k2 = (HairDresser) session.getAttribute("L1");
            k2 = null;
           
            bList = hd1.getAllHayrDressers();
               if (k2!=null){
               //out.println(k2.getHairDresserId());
               //out.println("Test");
               //bList.add(k2);
               }               
                int listSize = HayrDresser.getCount();
                System.out.println(listSize);
                HayrDresser[] b = new HayrDresser[listSize];
                
                for (int count=0;count<listSize;count++){
                    b[count] = bList.get(count);
                    System.out.println(b[count].getHayrdresserLname());
                }//end hairdresser****************************** 
        }
            
        // Display method
        public void displayHayrdresser(){
            System.out.println("ID: " + HayrdresserId + " User: " + HayrdresserUser + " Password: " + HayrdresserPw + " First Name: " + HayrdresserFname + " Last Name: " + HayrdresserLname + " Address: " + HayrdresserAddress + " Phone Number: " + HayrdresserPhone + " Email: " + HayrdresserEmail + "Full Time: " + FullTime + " Time Off: " + TimeOff + " Hours Requested: " + HoursRequested + " Hours Given: " + HoursGiven + " Pay Rate: " + PayRate);   
        }
        
        //This is a static arrayList that gets hairdressers from getallhairdressers method
        public static ArrayList<HayrDresser> getAllHayrDressers() throws ClassNotFoundException, SQLException {
            try {    
            // Load DB Driver
                Class.forName(Strings.driver);
                Connection c1 = DriverManager.getConnection(Strings.url);
                System.out.println("Database is connected");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rst = stmt.executeQuery("Select * from Hairdresser ");
            System.out.println("executingquery");
            //Process ResultSet

            while (rst.next()) {
            HayrDresser hayrdresser = new HayrDresser(
            rst.getString("ID"),
            rst.getString(1),
            rst.getString(2),
            rst.getString(3),
            rst.getString(4),
            rst.getString(5),
            rst.getString(6),
            rst.getString(7),
            // rst.getBoolean(8),        
            rst.getString(8),
            rst.getString(9),
            // rst.getInt(10),
            // rst.getInt(11),
            rst.getString(10),
            rst.getString(11),
            rst.getDouble(12));
        customerList.add(hayrdresser);
    }
    
    }catch (Exception se) {
            System.out.println(se);
        }
        return customerList;
        }
        
        public static int getCount(){
            try {
            // Load DB Driver
                Class.forName(Strings.driver);
                Connection c1 = DriverManager.getConnection(Strings.url);
                System.out.println("Database is connected");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select count(*) from Hairdresser");
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
        
        // Select database method
        public void selectDB(String i) {
            
            HayrdresserId = i;
            try { // Load DB Driver
                Class.forName(Strings.driver);
                Connection c1 = DriverManager.getConnection(Strings.url);
                System.out.println("Database is connected");
                
            // Execute SQL statement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from Hairdresser where ID = " + i);
            
            // Process ResultSet
            rs.next(); 
            // HairdresserId = rs.getString(0); 
            HayrdresserUser = rs.getString(1); 
            HayrdresserPw = rs.getString(2); 
            HayrdresserFname = rs.getString(3); 
            HayrdresserLname = rs.getString(4); 
            HayrdresserAddress = rs.getString(5); 
            HayrdresserPhone = rs.getString(6); 
            HayrdresserEmail = rs.getString(7); 
            // FullTime = rs.getBoolean(9); 
            TimeOff = rs.getString(9); 
            HoursRequested = rs.getString(10); 
            HoursGiven = rs.getString(11); 
            PayRate = rs.getDouble(12); 
            System.out.println("ResultSet Processed");
            
            // Close connection
            c1.close(); 
            System.out.println("Connection ended");
            }   catch   (Exception se) {
                System.out.println(se);
            }
    } // End selectDB()

    /*
    public void update(String user, String id, String pw) {
        String sql = "UPDATE Hairdresser2 SET ID = ? , "
                + "hdUsername = ? "
                + "WHERE hdPw = ?";
    }    
    */
        /*
        public void updateDB(String user, String pw, String fname, String lname, String address, String phone, String email) {
        */
        
        /*
        public void updateDB() {
        
        //    fname = "Harry";
        //    lname = "Potter";
        //    address = "Dorsey Dr"; 
        //    phone = "123";
        //    email = "hpotter@gmail.com"; 
       
        
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://" +
            "C:\\Users\\Jean\\Documents\\Systems Project\\Databases\\db.accdb");
            System.out.println("Database is connected");
                
            Statement stmt = c1.createStatement();
            
            String sql = "Update Hairdresser2 set "
            + "hdUsername = '" + HairdresserUser + "'," + "hdPw = '" + HairdresserPw + "'," + "FirstName = '" + HairdresserFname + "'," + "LastName = '" + HairdresserLname + "'," + "Address ='" + HairdresserAddress + "'," +
            "PhoneNo = '" + HairdresserPhone + "'," + "Email = '" + HairdresserEmail + "'," +
            "Where ID ='" + HairdresserId + "'";
            
            System.out.println(sql);
            System.out.println("Data set");
            int n = stmt.executeUpdate(sql);
            if(n==1)
                System.out.println("UPDATE SUCCESSFUL!");
            else
                System.out.println("UPDATE FAILED!");
            c1.close();
            
        }
        catch(Exception e1){
                System.out.println(e1);
            }
    } // End updateDB()
        */
    
        
    public void updateDB() {
        
        
        try {
            Class.forName(Strings.driver);
            Connection c1 = DriverManager.getConnection(Strings.url);
            System.out.println("Database is connected");
                
            Statement stmt = c1.createStatement();
            
            String sql = "Update Hairdresser set FirstName = '"+getHayrdresserFname()+"',"+
                                                "LastName = '"+getHayrdresserLname()+"',"+
                                                "Address ='"+getHayrdresserAddress()+"',"+
                                                "PhoneNo = '"+getHayrdresserPhone()+"',"+
                                                "Email = '"+getHayrdresserEmail()+"',"+
                    
                                                "hdPw = '"+getHayrdresserPw() + "' " +
                                                "Where ID ='"+getHayrdresserId()+"'";
            
            System.out.println(sql);
            System.out.println("Data set");
            int n = stmt.executeUpdate(sql);
            if(n==1)
                System.out.println("UPDATE SUCCESSFUL!");
            else
                System.out.println("UPDATE FAILED!");
            c1.close();
            
        }
        catch(Exception e1){
                System.out.println(e1);
            }
    } // End updateDB()
    
        
     /*****************************************************
     * Getters & Setters
     *****************************************************/    
        
    public void setHayrdresserId(String HairdresserId) {
        this.HayrdresserId = HairdresserId;
    }

    public void setHayrdresserPw(String HairdresserPw) {
        this.HayrdresserPw = HairdresserPw;
    }

    public void setHayrdresserFname(String HairdresserFname) {
        this.HayrdresserFname = HairdresserFname;
    }

    public void setHayrdresserLname(String HairdresserLname) {
        this.HayrdresserLname = HairdresserLname;
    }

    public void setHayrdresserAddress(String HairdresserAddress) {
        this.HayrdresserAddress = HairdresserAddress;
    }

    public void setHayrdresserEmail(String HairdresserEmail) {
        this.HayrdresserEmail = HairdresserEmail;
    }

    public void setHayrdresserUser(String HairdresserUser) {
        this.HayrdresserUser = HairdresserUser;
    }

    public void setHayrdresserPhone(String HairdresserPhone) {
        this.HayrdresserPhone = HairdresserPhone;
    }

    public void setFullTime(String FullTime) {
        this.FullTime = FullTime;
    }

    public void setTimeOff(String TimeOff) {
        this.TimeOff = TimeOff;
    }

    public void setHoursRequested(String HoursRequested) {
        this.HoursRequested = HoursRequested;
    }

    public void setHoursGiven(String HoursGiven) {
        this.HoursGiven = HoursGiven;
    }

    public void setPayRate(Double PayRate) {
        this.PayRate = PayRate;
    }

    public String getHayrdresserId() {
        return HayrdresserId;
    }

    public String getHayrdresserPw() {
        return HayrdresserPw;
    }

    public String getHayrdresserFname() {
        return HayrdresserFname;
    }

    public String getHayrdresserLname() {
        return HayrdresserLname;
    }

    public String getHayrdresserAddress() {
        return HayrdresserAddress;
    }

    public String getHayrdresserEmail() {
        return HayrdresserEmail;
    }

    public String getHayrdresserUser() {
        return HayrdresserUser;
    }

    public String getHayrdresserPhone() {
        return HayrdresserPhone;
    }

    public String getFullTime() {
        return FullTime;
    }

    public String getTimeOff() {
        return TimeOff;
    }

    public String getHoursRequested() {
        return HoursRequested;
    }

    public String getHoursGiven() {
        return HoursGiven;
    }

    public Double getPayRate() {
        return PayRate;
    }    
    
}