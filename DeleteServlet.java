/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import BO.Appointment;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kimmy
 */
public class DeleteServlet extends HttpServlet {

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
            
            //main codes
            String[] insert = new String[10];
            String iconstant = "deleteBtn";
            String value = request.getParameter("button");
            int count;
            int index =-1;
            for (count =0;count<10;count++){
            insert [count] =iconstant+count;
            if (insert[count].equals(value)) {
            index = count;
            }  }
          //get account number from lookup page
            String HdAptID  = request.getParameter("HdAptID" + index);
            //create a new account
            Appointment a1 = new Appointment();
            //select account from database that matches the input from jsp
            a1.selectDB(HdAptID);
            a1.deleteDB(HdAptID);
            //display account to log
            a1.display();
            //Put student object in session
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("a1", a1);
            System.out.println("Appointment added to Session/scheduling DisplayAppts.jsp");
            
            //Step #6 - Use RequestDispatcher to forward to accountLookup.jsp
            
             RequestDispatcher rd = request.getRequestDispatcher("/DisplayAppts.jsp");
             rd.forward(request, response);  
          
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet DeleteServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Testing" + a1.HdAptID +"</h1>");
//            out.println("</body>");
//            out.println("</html>");
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