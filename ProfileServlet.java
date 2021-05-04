package BO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static org.hibernate.validator.internal.util.privilegedactions.ConstructorInstance.action;

/**
 *
 * @author kimmy
 */
public class ProfileServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           //main code
            Customer c1 = new Customer();

        System.out.println("Starting the Profile Servlet");
        
        //Obatain parameters
        String CustID = request.getParameter("CustID");
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

       HttpSession session =  request.getSession();
       c1=(Customer) session.getAttribute("customer");
       
       
       

//       c1.selectDB(CUser);
       c1.setFirstName(FirstName);
       c1.setLastName(LastName);
       c1.setAddress(Address);
       c1.setPhoneNo(PhoneNo);
       c1.setEmail(Email);
 //      c1.setCUser(CUser);
       c1.setCPass(CPass);
       
       //c1.setFirstName(FirstName);
       

       c1.updateDB(); {

//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet NewServlet</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Test "+ FirstName+ LastName + Address + PhoneNo + Email + CPass +"</h1>");
//            out.println("</body>");
//            out.println("</html>");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("customerprofile.jsp");
            requestDispatcher.forward(request, response);      
    }
        
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