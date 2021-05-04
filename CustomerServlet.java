package BO;

/*
 * Kimmy Wang
 * Advanced System Project: Customer Login Servlet
 * 3/3/2021
 */

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
 * @author kimmy
 */
public class CustomerServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("In Customer Servlet");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Customer c1 = new Customer();
            
            //Main code
            System.out.println("Starting Customers login servlet...");
            String CUser, CPass, dbId, dbPw;
            CUser = request.getParameter("uname");
            CPass = request.getParameter("psw");
            System.out.println("uname = " + CUser); 
            System.out.println("psw = /" + CPass +"/");
            
            c1.selectDB(CUser);
             dbPw=c1.getCPass();
             String dbPw1 = dbPw.trim();
             System.out.println("dbPw1 = /"+ dbPw1+"/");
            //valid login
            System.out.println("outside IF");
            if(CPass.equals(dbPw1)){
                
                HttpSession session = request.getSession();//returns the current session
            
               //Store the customer object in session
                session.setAttribute("customer", c1);
                
                System.out.println("Inside IF");
                RequestDispatcher rd = request.getRequestDispatcher("HomeLogin.jsp");
                rd.forward(request, response);
                System.out.println("/Valid login/");
                
            
            }
           
            
            //invalid login
            else {
                RequestDispatcher rd = request.getRequestDispatcher("CustomerLogin.jsp");
                rd.forward(request, response);
                System.out.println("Invalid login");
            } 
           
            //dbId = c1.getCUser();
            //dbPw = c1.getCPass();
            //System.out.println("dbId" + CUser); 
            //System.out.println("dbPw " + CPass);
            
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