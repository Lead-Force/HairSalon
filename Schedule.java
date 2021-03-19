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
    
    //constructor that takes no

    public Schedule() {
        EmpId =firstName =lastName = timeOff = null;
        monday =tuesday = wednesday = thursday =friday =saturday =sunday = false;
    }
    
    
    //constructor that takes all
        public Schedule(String EmpId, String firstName, String lastName,String timeOff/*, boolean monday, boolean tuesday, boolean wednesday, boolean thursday, boolean friday, boolean saturday, boolean sunday*/) {
        this.EmpId = EmpId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.timeOff = timeOff;
        this.monday = monday;
        this.tuesday = tuesday;
        this.wednesday = wednesday;
        this.thursday = thursday;
        this.friday = friday;
        this.saturday = saturday;
        this.sunday = sunday;
    }
    
        //main method
        public static void main(String[]args){
            //Schedule s1 = new Schedule("2020","Rene","Lisasi","MTWS",false, false, false, true, true, false, true);
            Schedule s1 = new Schedule();
            s1.selectDB("2001");
            s1.displaySchedule();
        }
        
        //DB*****************************************************************
         //selectDB*************************************************************
        public void selectDB(String i) {
        EmpId = i;
        try {    //Load DB Driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection c1 = DriverManager.getConnection("jdbc:ucanaccess://"
                    + "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");

            //Execute SQL StAtement
            Statement stmt = c1.createStatement();
            ResultSet rs = stmt.executeQuery("Select ID,firstname,lastname,timeoff from Hairdresser2 where ID="+i);
            System.out.println("executing query");
            //Process ResultSet
            rs.next();
            //Data:
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
            sunday = getTimeOff().contains("Z");
            
            c1.close();
        } catch (Exception se) {
            System.out.println(se);
        }
    } //end selectDB()
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
