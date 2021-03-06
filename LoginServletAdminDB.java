/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BO.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author renel
 */
@WebServlet(name = "LoginServletAdminDB", urlPatterns = {"/LoginServletAdminDB"})
public class LoginServletAdminDB extends HttpServlet {
    String a,b = null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //Get admin object
            Admin z1 = new Admin();
            
            //Main code
            System.out.println("Starting admin login servlet...");
            String id, pw, dbId, dbPw;
            id = request.getParameter("idtb");
            pw = request.getParameter("pwtb");
            z1.selectDB(id);
            dbId = z1.getAdminId();
            dbPw = z1.getAdminPw();
            System.out.println("Jsp Id: " +id + " JspPw " + pw);
            System.out.println("Db Id: " +dbId + " DbPw " + dbPw);
            
            //valid login
            if(pw.equals(dbPw) && id.equals(dbId)){
                RequestDispatcher rd = request.getRequestDispatcher("AdminLanding.jsp");
                rd.forward(request, response);
                System.out.println("Valid login");
            }
            //invalid login
            else{
                RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
                rd.forward(request, response);
                System.out.println("Invalid login");
            } 

            } catch (IOException ex) {
            Logger.getLogger(LoginServletAdminDB.class.getName()).log(Level.SEVERE, null, ex);
        }/*finally{
            out.close();
        }*/
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