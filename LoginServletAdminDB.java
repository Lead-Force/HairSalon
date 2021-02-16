/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            /* TODO output your page here. You may use following sample code. */
            String id, pw, pwdb;
            id = request.getParameter("idtb");
            pw = request.getParameter("pwtb");
            pwdb = null;
            System.out.println("ID " +id + " PW: " + pw);
            try{
                //Load driver
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                
                //get connection
                Connection con = DriverManager.getConnection("jdbc:ucanaccess://" + 
                "B:\\OneDrive - Chattahoochee Technical College\\SPRING21\\SYSTEMS PROJECT\\Databases\\db.accdb");
                
                //Create statement
                Statement stmt = con.createStatement();
                
                //Execute Statement
                ResultSet rs;
                rs = stmt.executeQuery("select * from Admin where AdminId='"+id+"'");
                
                //Process data
                while(rs!=null && rs.next()){
                    //a = rs.getString("AdminId");
                    //b= rs.getString(1);
                    pwdb = rs.getString(1);
                    System.out.println("ID: " + rs.getString("AdminId") + " Password: " + rs.getString(1)+" ");
                    System.out.println("---------------------------");

                }
                
                //close connection
                con.close();
                
            }  catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServletAdminDB.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(LoginServletAdminDB.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (pw.equals(pwdb)){
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServletAdminDB</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Valid Servlet LoginServletAdminDB at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            response.sendRedirect("AdminLanding.jsp");
        }
            else{
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServletAdminDB</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Invalid Servlet LoginServletAdminDB at " + request.getContextPath() + "</h1>");
            //out.println(a);
            //out.println(b);
            out.println("</body>");
            out.println("</html>");
            response.sendRedirect("login.jsp");
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
