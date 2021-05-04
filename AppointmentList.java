package BO;

import java.util.ArrayList;


public class AppointmentList {
    int numberOfAppointments;//var used to counts # of accts in list
    public int count;
    public ArrayList<Appointment> appointment = new ArrayList<>();
    
    public Appointment apptArr[] = new Appointment[20];
    public void addAppointment(Appointment a1) {
        
        appointment.add(a1);
        apptArr[count]=a1;
        count++;
        
        numberOfAppointments = appointment.size();//get the size of our list   
    }
    
    public int getCount(){
      
        return count;
    }
    
    public void removeAppointment(Appointment a1) {
        
        appointment.remove(a1);
        apptArr[count]=a1;//possible error here
        count--;
        
        numberOfAppointments = appointment.size()-1;//possible errors here   
    }
   

    /** display the accounts */
    public void displayList() {
        Appointment app;
        for(int i = 0; i <= appointment.size() - 1; i++) {
            app = appointment.get(i); 
            app.display();
        }
        
        System.out.println("number of Accounts in list: " + numberOfAppointments);
    }
    
    public static void main(String[] args) {
        AppointmentList alist = new AppointmentList();
        
            Appointment a = new Appointment("11",  "2323", "9003", true, "18", "W", "Nail Service", "B");
            Appointment b = new Appointment("12",  "2323", "9003", true, "18", "W", "Nail Service", "B");
            Appointment c = new Appointment("13",  "2323", "9003", true, "18", "W", "Nail Service", "B");
        
          
            alist.addAppointment(a);
            alist.addAppointment(b);
            alist.addAppointment(c);
//        
//       Account a = new Account("7777", "3001", "SAV", "$500.00");
//	 Account b = new Account("8888", "3006", "MMA", "$500.00");
//        
//        alist.addAccount(a);
//        alist.addAccount(b);
//
        alist.displayList();

    }
}