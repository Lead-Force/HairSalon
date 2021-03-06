/***************************************************
*Kimmy Wang
*Advanced System Project
*Customer Business Object
****************************************************/
package BO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Customer {
    
    //Properties
    private String CustID, FirstName, LastName;
    private String Address, PhoneNo, Email, CUser, CPass;
    private static int rawdb;
    public static ArrayList<Customer> customerList = new ArrayList<>();
    
    //public CustomerList clist = new CustomerList();
    public AppointmentList alist = new AppointmentList();
    
    //Constructor that passes no arguments
    public Customer(){
    }
    
    //Constructor that passes all arguments
    public Customer(String CustID, String FirstName, String LastName, String Address, String PhoneNo, String Email, String CUser, String CPass){
        this.CustID= CustID;
        this.FirstName = FirstName;
        this.LastName= LastName;
        this.Address = Address; 
        this.PhoneNo = PhoneNo;
        this.Email = Email;
        this.CUser = CUser;
        this.CPass = CPass;
    }
            public static void main(String [] args) throws ClassNotFoundException, SQLException{
            //Test InstAnciating a Admin object
            Customer c1 = new Customer();
            c1.selectDB("2323");
            //c1.insertDB("8787", "Jessica", "Smith", "10 Hems Mansion","123-456-7789", "JS@gmail.com", "JessicaS", "Smith33");
            //c1.deleteDB("8787");
            
            //c1.selectDB("BenS");
            //c1.setFirstName("Jinny");
            //c1.updateDB();
            //Display
            c1.display();
            //int pwdb = c2.getAdminPw();
            //System.out.println("Password for user:" + pwdb );
            // Get All Hair Dressers method inside Main()
            Customer k1 = new Customer(/*rst.getString("ID"), rst.getString(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getDouble(12)*/);
            Customer k2;
            ArrayList<Customer> cList = new ArrayList<Customer>();
            // k2 = (Customer) session.getAttribute("L1");
            k2 = null;
           
            cList = k1.getAllCustomers();
               if (k2!=null){
               System.out.println(k1.getFirstName());
               System.out.println(k2.getFirstName());
               //out.println("Test");
               //bList.add(k2);
               }               
                int listSize = Customer.getCount();
                System.out.println("List size is: " + listSize);
                Customer[] b = new Customer[listSize];
                
                System.out.println("Customer List: ");
                for (int count=0;count<listSize;count++){
                    b[count] = cList.get(count);
                    System.out.println(b[count].getFirstName());
                }//end customer******************************            
        }
            
        //This is a static arrayList that gets Customers from getallCustomers method
        public static ArrayList<Customer> getAllCustomers() throws ClassNotFoundException, SQLException {
            try {    
            // Load DB Driver
                Class.forName(Strings.driver);
                Connection c1 = DriverManager.getConnection(Strings.url);
                System.out.println("Database is connected");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rst = stmt.executeQuery("Select * from Customers ");
            System.out.println("executing GetAll query");
            //Process ResultSet

            while (rst.next()) {
            Customer customer = new Customer(
            rst.getString("CustID"),
            rst.getString(1),
            rst.getString(2),
            rst.getString(3),
            rst.getString(4),
            rst.getString(5),
            rst.getString(6),
            rst.getString(7));
            // rst.getBoolean(8),        
            //rst.getString(8);
            //rst.getString(9);
            //rst.getString(10),
            //rst.getString(11);
            //rst.getBoolean(12),
            // rst.getInt(10),
            // rst.getInt(11),
            /*rst.getString(10),
            rst.getString(11),
            rst.getDouble(12));*/
        customerList.add(customer);
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
            ResultSet rs = stmt.executeQuery("Select count(*) from Customers");
            System.out.println("executing GetCount query");
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
            
        //display method
        public void display(){
           System.out.println("CustID: " + CustID + "FirstName: " + FirstName + " LastName: " + LastName 
                   +"Address: " + Address 
                    + "PhoneNo: " + PhoneNo
                    + "Email: " + Email 
                    + "CUser" + CUser 
                    + "CPass:" + CPass);
    //    Customer c1 = new Customer();
      //  System.out.println(c1.getCustID() + c1.getFirstName());
    //
    //       alist.displayList();
           
        }
        
        /*
        public void getCustomers (String CustID) {
            try {
                 Class.forName(Strings.driver);
                Connection conn = DriverManager.getConnection(Strings.url);
                  System.out.println("Connected to the SelectDB");

                  Statement stmt = conn.createStatement();
                  
                  ResultSet rs;
                  
                  String sql = ("Select CustID From Customers Where CustID = '" + CustID + "'"
                          + "ORDER BY HdAptID ASC");
                  rs = stmt.executeQuery(sql);
                  
                  Customer c1;
                 
                  //String CustID;
                  while (rs.next()) {
                     
                      CustID = rs.getString(1);
                      
                      c1 = new Customer();
                      c1.selectDB(CustID);
                      
                      clist.addCustomer(c1);
                  }
               
//                  // Process Results
//                  while (rs.next()) {
//                      
//                      AptID = rs.getString(1);
////                      AptDate = rs.getString(2);
////                      AptTime = rs.getString(3);
////                      CustID = rs.getString(4);
////                      Hairdresser = rs.getString(5);
////                     
////                      System.out.println("AptID: " + AptID + "AptDate: " + AptDate + "CustID: " + CustID);
//                      a1.selectDB(AptID); // Get appointment data
//                      alist.addAppointment2(a1);
//                    
//                  }
                  conn.close();
            } catch (ClassNotFoundException | SQLException ex) {
            } 
        }
        */
        
        /***************************************************
         *The Get Appointment Method will grab all of the database record from the Appointment Table
         ****************************************************/
        public void getAppointments(String CustID) {
            try {
                 Class.forName(Strings.driver);
                Connection conn = DriverManager.getConnection(Strings.url);
                  System.out.println("Connected to the SelectDB");

                  Statement stmt = conn.createStatement();
                  ResultSet rs;
                  String sql = ("Select HdAptID From Appointments Where CustID = '" + CustID + "'"
                          + "ORDER BY HdAptID ASC");
                  rs = stmt.executeQuery(sql);
                  
                  Appointment a1;
                  String HdAptID;
                  while (rs.next()) {
                     
                      HdAptID = rs.getString(1);
                      a1 = new Appointment();
                      a1.selectDB(HdAptID);
                      alist.addAppointment(a1);
                  }
               
//                  // Process Results
//                  while (rs.next()) {
//                      
//                      AptID = rs.getString(1);
////                      AptDate = rs.getString(2);
////                      AptTime = rs.getString(3);
////                      CustID = rs.getString(4);
////                      Hairdresser = rs.getString(5);
////                     
////                      System.out.println("AptID: " + AptID + "AptDate: " + AptDate + "CustID: " + CustID);
//                      a1.selectDB(AptID); // Get appointment data
//                      alist.addAppointment2(a1);
//                    
//                  }
                  conn.close();
                 
                  
                
            } catch (ClassNotFoundException | SQLException ex) {
                
            } 
        }
        /***************************************************
         *The SelectDB Method will grab all of the database record from the Customer Table
         ****************************************************/
    public void selectDB(String CustID) { // I is CUser
      
        try {    //Load DB Driver
            Class.forName(Strings.driver);
            Connection conn = DriverManager.getConnection(Strings.url);
           // System.out.println("Connected to the SelectDB");
            
            Statement stmt = conn.createStatement();
            ResultSet rs;
            String sql = ("Select * From Customers Where CustID = '" + CustID + "'");
//            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            
            //Process ResultSet
            while (rs.next()) {
                
                //adminId = rs.getString(0);
                this.CustID = rs.getString(1);
                this.FirstName = rs.getString(2);
                this.LastName = rs.getString(3);
                this.Address = rs.getString(4);
                this.PhoneNo = rs.getString(5);
                this.Email = rs.getString(6);
                this.CUser = rs.getString(7);
                this.CPass = rs.getString(8);
                
            }  
            conn.close();
            getAppointments(CustID);
            //getCustomers(CustID);
        } catch (ClassNotFoundException | SQLException se) {
            System.out.println(se); 
            
           }
    } //end selectDB()
    
    
    /***************************************************
         *The InsertDB Method will enable the users to insert in new data into the Customer Table
         ****************************************************/
        public boolean insertDB(String CustID, String FirstName, String LastName, String Address, String PhoneNo, String Email, String CUser, String CPass){
        //assign values
        setCustID(CustID);
        setFirstName(FirstName);
        setLastName(LastName);
        setAddress(Address);
        setPhoneNo(PhoneNo);
        setEmail(Email);
        setCUser(CUser);
        setCPass(CPass);
        try{
            Class.forName(Strings.driver);
            Connection conn = DriverManager.getConnection
                (Strings.url);

            System.out.println("Database connected"); 
            //Create StAtement
            java.sql.Statement stmt = conn.createStatement();
            //update stAtement definition
            String sql2 = "INSERT INTO Customers values('"+getCustID()+"',"+
                                                        "'"+getFirstName()+"', "+
                                                      "'"+getLastName()+"', "+
                                                      "'"+getAddress()+"', "+
                                                      "'"+getPhoneNo() + "', " +
                                                        "'"+getEmail()+"', "+
                                                        "'"+getCUser()+"', "+
                                                        "'"+getCPass()+"' "+
")"; 
            //print the stAtement
            System.out.println(sql2);
            //check for duplicates
            int n1 = stmt.executeUpdate(sql2);
            conn.close();
            if (n1==1){
                System.out.println("INSERT Successful!!!");
                return true;
            }
            else {
             System.out.println("INSERT FAILED***********");
             return false;
        }
            
        }
        catch(Exception e1){
            System.out.println(e1);
            return false;
        }
        
        
        }
        
        /***************************************************
         *The DeleteDB Method will delete record from the Customer Table
         ****************************************************/
        public void deleteDB(String CustID){
            System.out.println("Ready to Delete");
                        try{
            Class.forName(Strings.driver);
            Connection con3 = DriverManager.getConnection(Strings.url);
            System.out.println("DatAbase connected");
            //Create StAtement - Step #3
            java.sql.Statement stmt = con3.createStatement();

            //Execute StAtement - Step #4
            String sql3 = "Delete from Customers Where CustID = '"+ CustID +"'"; 
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
        
        }
        
        /***************************************************
         *The updateDB Method will update the database information from the Customer Table
         ****************************************************/
        public void updateDB() {
            
            try{
                Class.forName(Strings.driver);
                
               Connection con4 = DriverManager.getConnection
                       (Strings.url);
               
            System.out.println("Database Connected");
            Statement stmt = con4.createStatement();

            String sql4 = "Update Customers set FirstName = '"+getFirstName()+"',"+
                                                "LastName = '"+getLastName()+"',"+
                                                "Address ='"+getAddress()+"',"+
                                                "PhoneNo = '"+getPhoneNo()+"',"+
                                                "Email = '"+getEmail()+"',"+
                    
                                                "CPass = '"+getCPass() + "' " +
                                                "Where CUser ='"+getCUser()+"'";
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
    
        }//end updateDB()
        //getters
        public String getCustID(){return CustID;}
        public String getFirstName(){return FirstName;}
        public String getLastName() {return LastName;}
        public String getAddress() {return Address;}
        public String getPhoneNo() {return PhoneNo;}
        public String getEmail() {return Email;}
        public String getCUser() {return CUser;}
        public String getCPass() {return CPass;}
            
        //Setters
        public void setCustID (String CustID) {this.CustID = CustID;}
        public void setFirstName (String FirstName) {this.FirstName = FirstName;}
        public void setLastName(String LastName) {this.LastName = LastName;}
        public void setAddress(String Address) {this.Address = Address;}
        public void setPhoneNo(String PhoneNo) {this.PhoneNo = PhoneNo;}
        public void setEmail(String Email) {this.Email = Email;}
        public void setCUser(String CUser) {this.CUser = CUser;}
        public void setCPass(String CPass) {this.CPass = CPass;}

    }