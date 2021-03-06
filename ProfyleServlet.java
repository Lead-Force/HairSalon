/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BO.HayrDresser;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jean
 */
@WebServlet(name = "ProfileServlet", urlPatterns = {"/ProfileServlet"})
// Servlet used to make changes to the Hairdresser profile (update data on database)
    public class ProfyleServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            // Main code
            HayrDresser h1 = new HayrDresser(); 
            System.out.println("Starting the Profile Servlet");
            
            // Obtain parameters from previous JSP
            String HairdresserId = request.getParameter("HairdresserID"); 
            String HairdresserUser = request.getParameter("Username"); 
            String HairdresserPw = request.getParameter("Password");
            String HairdresserFname = request.getParameter("FirstName"); 
            String HairdresserLname = request.getParameter("LastName"); 
            String HairdresserAddress = request.getParameter("Address"); 
            String HairdresserPhone = request.getParameter("PhoneNumber"); 
            String HairdresserEmail = request.getParameter("Email"); 
            
            // Get the current session
            HttpSession session = request.getSession(); 
            h1=(HayrDresser) session.getAttribute("HairDresser");
            
            //String TimeOff = request.getParameter("TimeOff");
            //String HoursRequested = request.getParameter("hoursrequested");  
            
            /*
            h1.selectDB(HID);
            System.out.println(h1);
            System.out.println("<h1>Servlet: HID is " + h1 + "</h1>");
            */
            
            //h1.setHairdresserId(HID);
            //h1.setHairdresserUser(HUser);
            
            // Set new parameters and update
            h1.setHayrdresserPw(HairdresserPw); 
            h1.setHayrdresserFname(HairdresserFname);
            h1.setHayrdresserLname(HairdresserLname);
            h1.setHayrdresserAddress(HairdresserAddress);
            h1.setHayrdresserPhone(HairdresserPhone);
            h1.setHayrdresserEmail(HairdresserEmail); 
            h1.updateDB();
            
            /* TODO output your page here. You may use following sample code 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProfileServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Hairdresser Updated: </h1>");
            // out.println("<h1>New Hairdresser ID: " + HID + "</h1>");
            out.println("<h1>New Hairdresser PW: " + HPass + "</h1>");
            // out.println("<h1>New Hairdresser User: " + HUser + "</h1>");
            out.println("<h1>New Hairdresser FirstName: " + FirstName + "</h1>");
            out.println("<h1>New Hairdresser LastName: " + LastName + "</h1>");
            out.println("<h1>New Hairdresser Email: " + Email + "</h1>");            
            out.println("<h1>New Hairdresser Address: " + Address + "</h1>");
            out.println("<h1>New Hairdresser PhoneNo: " + PhoneNo + "</h1>");
            // out.println("<h1>New Hairdresser Time Off: " + TimeOff + "</h1>");
            // out.println("<h1>New Hairdresser Hours Requested: " + HoursRequested + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
            
            // Provide feedback of successful update to clients
            System.out.println("End of the Profile Servlet");
            //h1.setHairdresserFname(FirstName);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("myprofile.jsp");
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