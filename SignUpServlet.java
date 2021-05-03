package business;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import business.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kimmy
 */
public class SignUpServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("Starting up the Sign up Servlet");
        /* TODO output your page here. You may use following sample code. */
        
        Customer c1 = new Customer();
        System.out.println("Starting the Sign Up Servlet");


        String CustID = String.valueOf(2000+ Customer.getCustomerCount() +1);// request.getParameter("hdAptIdTb"+index);
        String FirstName = request.getParameter("FirstName");
        String LastName = request.getParameter("LastName");
        String Address = request.getParameter("Address");
        String PhoneNo = request.getParameter("PhoneNo");
        String Email = request.getParameter("Email");
        String CUser = request.getParameter("CUser");
        String CPass = request.getParameter("psw");

        System.out.println("FirstName = " + FirstName);
        System.out.println("LastName = " + LastName);
        System.out.println("Address = " + Address);
        System.out.println("PhoneNo = " + PhoneNo);
        System.out.println("Email = " + Email);
        System.out.println("CUser = " + CUser);
        System.out.println("psw = " + CPass);

      boolean s=c1.insertDB(CustID, FirstName, LastName, Address, PhoneNo, Email, CUser, CPass);
      
      if(s) {
 
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegisterSuccessfull.jsp");
            requestDispatcher.forward(request, response);
        
    }
      else {
          RequestDispatcher requestDispatcher = request.getRequestDispatcher("RegisteredFailed.jsp");
            requestDispatcher.forward(request, response);
      }
          
      }

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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
