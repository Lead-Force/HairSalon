/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BusinessObjects.Appointment;
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
 * @author renel
 */
@WebServlet(name = "BookAppointmentServlet", urlPatterns = {"/BookAppointmentServlet"})
public class BookAppointmentServlet extends HttpServlet {

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
            String Week = request.getParameter("WeekSelect");
            String AptDays = request.getParameter("DaySelect");
            String hdAptId, aptTime, custId, service, reserve;
            boolean taken=false;
            
            String value =request.getParameter("button");
            String iconstant="bookInsert";
            String lookup="lookup";            

//multiple line update loop
            String[] insert = new String[10];
            int count;
            int index =-1;
            for (count =0;count<10;count++){
            insert [count] =iconstant+count;
            if (insert[count].equals(value)) {
            index = count;
            }  }

            //INSERT*****************************
            if (value.equals(iconstant+index)){
                aptTime = request.getParameter("timeTb"+index);
                custId = request.getParameter("CustID");
                hdAptId =String.valueOf(9000+Appointment.getAppointmentCount()+1);// request.getParameter("hdAptIdTb"+index);
                taken = true;
                Week = request.getParameter("weekTb"+index);
                AptDays = request.getParameter("dayTb"+index);
                service = request.getParameter("serviceTb"+index);
                reserve = request.getParameter("reserveTb"+index);
                
                Appointment ia1 = new Appointment();
                ia1.insertDB(hdAptId,aptTime,custId,taken,Week,AptDays,service,reserve);
                System.out.println(ia1+" has been added to the list");
                //set the values of k1 to the ones we just added
            
                //Step 5
                HttpSession ses1 = request.getSession();
                ses1.setAttribute("ia1", ia1);
                System.out.println("Appointment ia1 sent to bookapptlogin.jsp");
                RequestDispatcher rd = request.getRequestDispatcher("bookapptlogin.jsp");
                rd.forward(request, response);
                System.out.println("Insert to appointments complete, back to bookapptlogin.jsp");
                
            
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet BookAppointmentServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet BookAppointmentServlet at " + ia1.getHdAptID()
//                    + ia1.getService()+ ia1.getWeek()+ ia1.getReserved()+ index + Appointment.getAppointmentCount() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
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