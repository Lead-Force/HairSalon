
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class THSCustomerLoginPage {
    
     /* ---- properties ------- */
    private String CustID;
    private String FirstName;
    private String LastName;
    private String Address;
    private String City;
    private String State;
    private String Zip;
    private String PhoneNo;
    private String Email;
    private String CustUsername;
    private String CustPassword;
   
    
    
    
    /**default constructor */
    public THSCustomerLoginPage() {
    CustID = "";    
    FirstName="";
    LastName="";
    Address="";
    City="";
    State="";
    Zip="";
    PhoneNo="";
    Email="";
    CustUsername="";
    CustPassword="";
  
    
    }
    
    /** Constructs objects with specified values */
    public THSCustomerLoginPage(String CustID, String FirstName, String LastName, String Address, String City, String State, String Zip, String PhoneNo, String Email, String CustUsername, String CustPassword)
  {
        this.CustID = CustID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Address = Address;
        this.City = City;
        this.State = State;
        this.Zip = Zip;
        this.PhoneNo = PhoneNo;
        this.Email = Email;
        this.CustUsername = CustUsername;
        this.CustPassword = CustPassword;
   
    }

    public String getCustID() {
        return CustID;
    }

    public void setID(String CustID) {
        this.CustID = CustID;
    }


    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }
    
    public String getCity(){
       return City;
    }
    
    public void setCity(String City){
        this.City = City;
    }
    
    public String getState(){
       return State;
    }
    
    public void setState(String State){
        this.State = State;
    }
    
    public String getZip(){
       return Zip;
    }
    
    public void setZip(String Zip){
        this.Zip = Zip;
    }
    
    public String getPhoneNo(){
       return PhoneNo;
    }
    
    public void setPhoneNo(String PhoneNo){
        this.PhoneNo = PhoneNo;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
    public String getCustUsername(){
       return CustUsername;
    }
    
    public void setCustUsername(String CustUsername){
        this.CustUsername = CustUsername;
    }
        public String getCustPassword() {
        return CustPassword;
    }

    public void setCustPassword(String CustPassword) {
        this.CustPassword = CustPassword;}
    
    /** select from DB logic */
    public void selectDB(String I) {
        
        try {
                //load the driver
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                
                //establish a connection
                Connection conn = DriverManager.getConnection
                ("jdbc:ucanaccess:\\C:\\Users\\kimmy\\Downloads\\THS Hair Salon Database1.mdb");
                
                //create a statement
                Statement stmt = conn.createStatement();
                
                //execute statement 
                ResultSet rs;
                String sql = ("select * from Customer where CustID='"+I+"'");
                rs = stmt.executeQuery(sql);
                
                //process results
                while (rs.next() ) {
                    
                    CustID = rs.getString(1);
                    FirstName= rs.getString(2);
                    LastName = rs.getString(3);
                    Address = rs.getString(4);
                    City = rs.getString(5);
                    State= rs.getString(6);
                    Zip = rs.getString(7);
                    PhoneNo = rs.getString(8);
                    Email = rs.getString(9);
                    CustUsername = rs.getString(10);
                    CustPassword = rs.getString(11);//retrieves value of designated column
                }
                

                conn.close();
            }
        catch (ClassNotFoundException | SQLException ex) {
        }      
    }
    
    /** method for inserting new customers into DB */
    public void insertDB(String CustID, String FirstName, String LastName, String Address, String City, String State, String Zip, String PhoneNo, String Email, String CustUsername, String CustPassword) {
        try {
                //load the driver
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                
                //establish a connection
                Connection conn = DriverManager.getConnection
                ("jdbc:ucanaccess:\\C:\\Users\\kimmy\\Downloads\\THS Hair Salon Database1.mdb");

                PreparedStatement pstmt = conn.prepareStatement("Insert into Customer "
                    + "(CustId, FirstName, LastName, Address, City, State, Zip, PhoneNo, Email, CustUsername, CustPassword) values (?,?,?,?,?,?,?,?,?,?,?)");
                
                
                pstmt.setString(1, CustID);//sets the designated parameter to the value
                pstmt.setString(2, FirstName);
                pstmt.setString(3, LastName);
                pstmt.setString(4, Address);
                pstmt.setString(5, City);
                pstmt.setString(6, State);
                pstmt.setString(7, Zip);
                pstmt.setString(8, PhoneNo);
                pstmt.setString(9, Email);
                pstmt.setString(10, CustUsername);
                pstmt.setString(11, CustPassword);
                
                pstmt.executeUpdate();//executes the DML language stmt
                
                pstmt.close();//close stream
                conn.close();
            }
        catch (ClassNotFoundException | SQLException ex) {
        }
    }
    /** delete data from DB */
    public void deleteDB(String CustID) {
        try {
                //load the driver
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                
                //establish a connection
                Connection conn = DriverManager.getConnection
                ("jdbc:ucanaccess:\\C:\\Users\\kimmy\\Downloads\\THS Hair Salon Database1.mdb");

                PreparedStatement pstmt = conn.prepareStatement("Delete from Customer Where CustID = '"+CustID+"'");

                pstmt.executeUpdate();//executes the DML language stmt
                
                pstmt.close();//close stream
                conn.close();
            }
        catch (ClassNotFoundException | SQLException ex) {
        }
    }//end deleteDB
    
    //print details to console 
    public void display () {
        System.out.println(CustID + "\t\t" +FirstName + "\t" + LastName+ "\t" + Address+ "\t" );
        System.out.println(City + "\t" + State + "\t" + Zip);
        System.out.println(PhoneNo + "\t" + Email);
        System.out.println("");
    }
    //main
    public static void main(String [] args) {
        THSCustomerLoginPage c1 = new THSCustomerLoginPage();
        //c1.insertDB("Cust007" , "Kimmy", "Wang", "1234 CCCC Dr", "Austell", "GA", "34567", "(123)-456-7890", "kimmywang810@yahoo.com", "Kwang1", "K1234");
        //c1.deleteDB("00000");
        c1.selectDB("")
        
        c1.display();
        
        
    }
    
}

