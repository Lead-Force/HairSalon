/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import BusinessObjects.Appointment;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author renel
 */
@WebServlet(name = "LookupAppointmentServlet", urlPatterns = {"/LookupAppointmentServlet"})
public class LookupAppointmentServlet extends HttpServlet {

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
            //comment the main codes
            //we will get the week and day parameter from the jsp, store them, and get the appropriate values that meets the criteria
            String Week = request.getParameter("WeekSelect");
            String AptDays = request.getParameter("DaySelect");
            String service = request.getParameter("ServiceSelect");
            String aptTime, empId, custId, hdAptId, reserve;
            boolean taken=false;
            
            String value =request.getParameter("button");
            String iconstant="bookInsert";
            String lookup="lookup";
            
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("Day", AptDays);
            ses1.setAttribute("Week", Week);
            ses1.setAttribute("Service", service);
            System.out.println("HairDresser added to Session/scheduling cas.jsp");
            
            RequestDispatcher rd = request.getRequestDispatcher("bookapptlogin.jsp");
                rd.forward(request, response);
                System.out.println("Lookup complete, bookapptlogin.jsp");
            
            /*
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LookupAppointmentServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LookupAppointmentServlet at " + AptDays + Week+ "</h1>");
            out.println("</body>");
            out.println("</html>");*/
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
