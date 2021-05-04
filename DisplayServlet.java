/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BO.Customer;
import BO.HairDresser;
import BO.Appointment; 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import BO.Customer; 
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jean
 */
@WebServlet(name = "DisplayServlet", urlPatterns = {"/DisplayServlet"})
public class DisplayServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        //HttpSession session = request.getSession();
        //PrintWriter writer = response.getWriter();
        //writer.println("Session ID: " + session.getId());
        
        // Get CustomerId 
        String CustID = request.getParameter("CustID");
        
        Customer c1 = new Customer();
        //c1.selectDB("Cust001");
        c1.display();
        c1.selectDB(CustID);
       
        // Create a session
        HttpSession session2 = request.getSession();
        
        out.println("Test");
        //Store the customer object in session
        session2.setAttribute("customer", c1);
             
        //RequestDispatcher dispatch = request.getRequestDispatcher("DisplayAppointment.jsp");
        //dispatch.forward(request, response);
        out.close();//Close writer
        }
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
            
            RequestDispatcher dispatch = request.getRequestDispatcher("DisplayAppointment.jsp");
            dispatch.forward(request, response);
            // Customer code
            //Customer k1 = new Customer(/*rst.getString("ID"), rst.getString(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getDouble(12)*/);
            //Customer k2;
            //ArrayList<Customer> cList = new ArrayList<Customer>();
            // k2 = (Customer) session.getAttribute("L1");
            /*k2 = null;
           
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
                
                for (int count=0;count<listSize;count++){
                    b[count] = cList.get(count);
                    System.out.println(b[count].getFirstName());
                //end customer******************************            
                */
            
            // Appointment code
            //Appointment k1 = new Appointment(/*rst.getString("ID"), rst.getString(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getDouble(12)*/);
            //Appointment k2;
            //ArrayList<Appointment> cList = new ArrayList<Appointment>();
            //           k2 = (Customer) session.getAttribute("L1");
            //k2 = null;
           
            /*
            cList = k1.getAllAppointments();
               if (k2!=null){
               System.out.println(k1.getApptID());
               System.out.println(k2.getCustID());
               System.out.println("Test inside GetAllAppointments()");
               //bList.add(k2);
               }               
                int listSize = Appointment.getCount();
                System.out.println("List size is: " + listSize);
                Appointment[] b = new Appointment[listSize];
                
                for (int count=0;count<listSize;count++){
                    b[count] = cList.get(count);
                    System.out.println(b[count].getApptID());
            */
                //end Appointment******************************            
                
        /*
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DisplayServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DisplayServlet at </h1>");
            out.println("</body>");
            out.println("</html>");
        } */
        }
                
        
            //out.println("<h1>Servlet DisplayServlet at " + cList.get(count) + "</h1>");
            // Returns: BusinessObjects.Appointment@3e4087bf
            //out.println("<h1>Servlet DisplayServlet at " + b[count].getApptID() + "</h1>");
            // Returns: Appt002
            //out.println("<h1>Servlet DisplayServlet at " + b[count].getCustID() + "</h1>");
            //out.println("<h1>Servlet DisplayServlet at " + b[count].getRecurring() + "</h1>");
            
                
            /*
            //Same unfinished test input as the Customer out.println output below
            out.println("<h1>Total Appointments: " + Appointment.getCount() + "</h1>");
            out.println("<h1>Get All Appointments Method : " + k1.getAllAppointments() + "</h1>");
            out.println("<h1>Only one that works : " + cList.get(count) + "</h1>");
            out.println("<h1>K2.getFirstName : " + k2.getApptID() + "</h1>");
            out.println("<h1>Total Appointments: " + listSize + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + cList.get(count) + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getApptID() + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getCustID() + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getCustID() + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getAllAppointments() + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getCount() + "</h1>");
            */
            
            /*
            //Same unfinished test input as the Appointment out.println output above
            out.println("<h1>Total Customers: " + Customer.getCount() + "</h1>");
            out.println("<h1>Get All Customers Method : " + k1.getAllCustomers() + "</h1>");
            out.println("<h1>Only one that works : " + cList.get(count) + "</h1>");
            out.println("<h1>K2.getFirstName : " + k2.getFirstName() + "</h1>");
            out.println("<h1>Total Customers: " + listSize + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + cList.get(count) + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getFirstName() + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getLastName() + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getCustID() + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getAllCustomers() + "</h1>");
            out.println("<h1>Servlet DisplayServlet at " + b[count].getCount() + "</h1>");
            */
            
            
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DisplayServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DisplayServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    /*
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DisplayServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DisplayServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    */

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}