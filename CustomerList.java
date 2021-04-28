package BusinessObjects;
import java.util.ArrayList;

public class CustomerList {
    int numberOfCustomers;//var used to counts # of accts in list
    
    public ArrayList<Customer> customer = new ArrayList<>();
    
    public void addCustomer(Customer c1) {
        customer.add(c1);
        numberOfCustomers = customer.size();//get the size of our list   
    }
    
    /** display the accounts */
    public void displayList() {
        Customer ch1;
        for(int i = 0; i <= customer.size() - 1; i++) {
            ch1 = customer.get(i); 
            ch1.display();
        }
        System.out.println("Number of Customers in list: " + numberOfCustomers);
    }
    
    public static void main(String[] args) {
        CustomerList clist = new CustomerList();
        
            Customer a = new Customer("9517", "Jessica", "Smith", "10 Hems Mansion","123-456-7789", "JS@gmail.com", "JessicaS", "Smith33");
            Customer b = new Customer("1234", "Jessica", "Smith", "10 Hems Mansion","123-456-7789", "JS@gmail.com", "JessicaS", "Smith33");
            Customer c = new Customer("4321", "Jessica", "Smith", "10 Hems Mansion","123-456-7789", "JS@gmail.com", "JessicaS", "Smith33");
        
            clist.addCustomer(a);
            clist.addCustomer(b);
            clist.addCustomer(c);
            
//       Account a = new Account("7777", "3001", "SAV", "$500.00");
//	 Account b = new Account("8888", "3006", "MMA", "$500.00");
//        clist.addAccount(a);
//        clist.addAccount(b);

        clist.displayList();
    }
}