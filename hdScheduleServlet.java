/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BusinessObjects.HairDresser;
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
@WebServlet(name = "hdScheduleServlet", urlPatterns = {"/hdScheduleServlet"})
public class hdScheduleServlet extends HttpServlet {

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
            /*String value = request.getParameter("button");
            String mbtn = "mbtn";
            String tbtn = "tbtn";
            String wbtn = "wbtn";
            String rbtn = "mbtn";
            String fbtn = "tbtn";
            String sbtn = "wbtn";
            String zbtn = "zbtn";
            
            
            if (value.equals(mbtn)){
            
            }*/
            String y = "True";
            String n = "False";
            String casValue = request.getParameter("mtb");
            String createTable = "createTable";
            String updateAvailability = "update";
            //create***************************
           if (casValue.equals(createTable)){
                String id,username, pw;
                String fname, lname, address, phone
                        , email, timeOff;
                boolean fullTime;
                int hReq, hGiv;
                Double pr;
                id = request.getParameter("idTb");
                fname= "fname";
                lname= "lname";
                address= "address";
                phone= "404 770 6498";
                email= "email@gmail.com";
                fullTime= true;
                timeOff= "TW";
                hReq= 24;
                hGiv= 24;
                pr= 12.0;
                username = fname + lname;
                pw= lname + id;
                
                //
                
            }
            //update***************************
            if (casValue.equals(updateAvailability)){
            //second initialize placeholder variables
            String id,username, pw;
            String fname, lname, address, phone
           , email, timeOff;
            boolean fullTime;
            int hReq, hGiv;
            Double pr;
            //third get the parameters from the user
            id = request.getParameter("idTb3");
            //third instanciate a new hairdresser object
            HairDresser L1 = new HairDresser();
            //last perform a db function
            L1.selectDB(id);
            System.out.println(L1+" has been added to the list");
            
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("L1", L1);
            System.out.println("HairDresser added to Session/scheduling HdManager.jsp");
            
            RequestDispatcher rd = request.getRequestDispatcher("hdManager.jsp");
                rd.forward(request, response);
                System.out.println("Sending back to hdManager.jsp");
            }
            
            
            /*out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet hdScheduleServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet hdScheduleServlet at " + request.getContextPath() + "</h1>");
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
