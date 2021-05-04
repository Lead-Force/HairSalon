package Servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
@WebServlet(urlPatterns = {"/HDLoginServlet"})
// Servlet used to Log in a Hairdresser
public class HDLoginServlet extends HttpServlet {
    String a,b = null;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    // Get User and Password from JSP
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("In HairDresser Servlet");
        try (PrintWriter out = response.getWriter()) {
            // Get Hairdresser object
            HayrDresser h1 = new HayrDresser();
            
            // Get User and Password from JSP
            // Main code
            System.out.println("Starting HairDresser login servlet...");
            String HUser, HPass, dbId, dbUser, dbPw;
            HUser = request.getParameter("user");
            HPass = request.getParameter("psw");
            h1.selectDB(HUser);
            System.out.println("(In Servlet) uname = " + HUser); 
            System.out.println("(In Servlet) psw = " + HPass);
            h1.selectDB(HUser);
            System.out.println("h1 = " + h1 );
            // (No Inpurt from JSP) Output: Info:   h1 = BusinessObjects.HairDresser@f6d3bf2
            // (With Input from JSP) Output:Info:   h1 = BusinessObjects.HairDresser@100d00af
            // (With Input from JSP) Output:Info:   h1 = BusinessObjects.HairDresser@4cb06ab7
            
            // Get dbId & dbUser from Database
            dbId = h1.getHayrdresserId(); 
            dbUser = h1.getHayrdresserUser(); 
            System.out.println("dbId = " + dbId );
            System.out.println("dbUser = " + dbUser );
            
            // Get dbPw from Database
            dbPw = h1.getHayrdresserPw(); 
            System.out.println("dbPw = " + dbPw );
            
            // dbPw trim
            //String dbPw1 = dbPw.trim();
            System.out.println("dbPw = " + dbPw);
            
            // dbId & dbUser trim
            //String dbId1 = dbId.trim();
            //String dbUser1 = dbId.trim();
            System.out.println("dbId1 = " + dbId);
            System.out.println("dbUser = " + dbUser);
            
            // Valid login
            System.out.println("DBPW = " + dbPw + " JSP PW = " + HPass);
            System.out.println("Outside IF");
            
            // Test IF:
            // Used to determine if Password from JSP equals Password from Database and Username from JSP equals Username from Database
            if(HPass.equals(dbPw) && HUser.equals(dbId)){
                RequestDispatcher rd = request.getRequestDispatcher("HdLanding.jsp");
                rd.forward(request, response);
                System.out.println("Valid login");
                out.println("<h1>Valid Login!</h1>");
                
               
                HttpSession session = request.getSession(); // Returns the current session
                //Store the Hairdresser object in session
                session.setAttribute("HairDresser", h1);
            }
            
            /*
            if(HPass.equals(dbPw1) && HUser.equals(dbId)){
                RequestDispatcher rd = request.getRequestDispatcher("HairdresserLanding.jsp");
                rd.forward(request, response);
                System.out.println("Valid login");
                out.println("<h1>Valid Login!</h1>");
                HttpSession session = request.getSession(); // Returns the current session
            }
            */
            // Invalid login sends you back to the login 
            else {
                RequestDispatcher rd = request.getRequestDispatcher("HdLogin.jsp");
                rd.forward(request, response);
                System.out.println("Invalid login");
            }
            // White page for testing
            /*
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HDLoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HDLoginServlet located at " + request.getContextPath() + "</h1>");
            // out.println("<h1>Session Name: " + request.getSession() + "</h1>");
            out.println("<h1>Servlet: Hairdresser ID from JSP: " + h1.getHairdresserId() + "</h1>");
            out.println("<h1>Servlet: Hairdresser PW from JSP: " + h1.getHairdresserPw() + "</h1>");
            out.println("<h1>Servlet: Hairdresser User from JSP " + h1.getHairdresserUser() + "</h1>");
            // out.println("<h1>dbPw: " + dbPw + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
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