/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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
 * @author PC
 */
@WebServlet(name = "AppointmentDateLookupServlet", urlPatterns = {"/AppointmentDateLookupServlet"})
public class AppointmentDateLookupServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            //main code
             // MAIN CODE
            // Step #1 - get the "sid" parameter from the previous HTML file
            String week = request.getParameter("WeekSelect");
            String day = request.getParameter("DaySelect");
            
            // Step #2 - get any objects out of the Session using getAttribute() 
            // no objects in Session needed for this Example
					
            // Step #3 - Create any Objects needed to lookup an AppointmentDate
			
            // Step #4 - Make any decisions necessary
            // No decisions needed here

            //Step #5 - Put Student Object in Session using HttpSession
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("Week", week);
            ses1.setAttribute("Day", day);
            System.out.println("Student added to Session/scheduling JStudentLookup.jsp");
			
             //Step #6 - Use RequestDispatcher to forward to JStudentLookup.jsp
             
             RequestDispatcher rd = request.getRequestDispatcher("todayappointment.jsp");
             rd.forward(request, response);     
             
            /*
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AppointmentDateLookupServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AppointmentDateLookupServlet at " + week + day + "</h1>");
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
