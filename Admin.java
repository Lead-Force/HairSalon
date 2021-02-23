/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessObjects;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author renel
 * Admin business object for admin login
 * THS System Project
 */
public class Admin {
    
    //Properties
    String adminId, adminPw;
    String adminFname, adminLname, adminAddress, adminEmail;
    
    //Constructor that passes no arguments
    public Admin(){
        adminId = adminPw = null;
        adminFname = adminLname= adminAddress = adminEmail = null;
    }
    
    //Constructor that passes all arguments
    public Admin(String id, String pw, String fName, String lName, String address, String email){
        adminId = id;
        adminPw = pw;
        adminFname = fName;
        adminLname = lName;
        adminAddress = address;
        adminEmail = email;
    }
    
            public static void main(String [] args){
            //Test InstAnciating a Admin object
            Admin c1 = new Admin();
            c1.selectDB("3001");
            //c2.insertDB(300, 963, "Anna", "Williams", "10 Hems Mansion, Dublin", "awilliams@gcorp.co.ire");
            //c2.deleteDB();
            //display
            c1.displayAdmin();
            //int pwdb = c2.getAdminPw();
            //System.out.println("Password for user:" + pwdb );
        }
            
        //display method
        public void displayAdmin(){
            System.out.println("ID: " + adminId+ " PW: "+ adminPw +" First Name: " + adminFname 
                    + " Last Name " + adminLname + " Address: " + adminAddress + 
                    " Email: " + adminEmail);
            
        }
        
    public void selectDB(String i) {
        adminId = i;
        try {    //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from Admin where adminID = " + i);

            //Process ResultSet
            rs.next();
            //adminId = rs.getString(0);
            adminPw = rs.getString(1);
            adminFname = rs.getString(2);
            adminLname = rs.getString(3);
            adminAddress = rs.getString(4);
            adminEmail = rs.getString(5);
            
            c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
    } //end selectDB()
    
    //insertDB
        public void insertDB(String id, String pw, String fn, String ln, String adr, 
                String eml){
        //assign values
        adminId = id;
        adminPw = pw;
        adminFname = fn;
        adminLname = ln;
        adminAddress = adr;
        adminEmail = eml;
        
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            System.out.println("DatAbase connected"); 
            //Create StAtement
            java.sql.Statement stmt = c1.createStatement();
            //update stAtement definition
            String sql2 = "insert into Admin values('"+getAdminId()+"',"+
                                                        "'"+getAdminPw()+"',"+
                                                      "'"+getAdminFname()+"',"+ 
                                                      "'"+getAdminLname()+"',"+ 
                                                      "'"+getAdminAddress()+"',"+
                                                        "'"+getAdminEmail()+"'"+
                                                        ")"; 
            //print the stAtement
            System.out.println(sql2);
            //check for duplicates
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
        //DeleteDB
        public void deleteDB(){
                        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
           java.sql.Connection con3 = DriverManager.getConnection("jdbc:ucanaccess://"
                   + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");
            System.out.println("DatAbase connected");
            //Create StAtement - Step #3
            java.sql.Statement stmt = con3.createStatement();

            //Execute StAtement - Step #4
            String sql3 = "Delete from Admin where adminId ='"+getAdminId()+"'"; 
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
        public String getAdminId(){return adminId;}
        public String getAdminPw(){return adminPw;}
        public String getAdminFname() {return adminFname;}
        public String getAdminLname() {return adminLname;}
        public String getAdminAddress() {return adminAddress;}
        public String getAdminEmail() {return adminEmail;}
            
        //Setters
        public void setAdminId (String adminId) {this.adminId = adminId;}
        public void setAdminPw (String adminPw) {this.adminPw = adminPw;}
        public void setAdminFname(String adminFname) {this.adminFname = adminFname;}
        public void setAdminLname(String adminLname) {this.adminLname = adminLname;}
        public void setAdminAddress(String adminAddress) {this.adminAddress = adminAddress;}
        public void setAdminEmail(String adminEmail) {this.adminEmail = adminEmail;}
    }

