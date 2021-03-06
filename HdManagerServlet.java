/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BO.HairDresser;
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
@WebServlet(name = "HdManagerServlet", urlPatterns = {"/HdManagerServlet"})
public class HdManagerServlet extends HttpServlet {

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
            //Strings**************************
            String value = request.getParameter("button");
            String insert = "Insert";
            String lookup = "Lookup";
            String delete = "Delete";
            String id,username, pw;
                String fname, lname, address, phone
                        , email, timeOff;
                boolean fullTime;
                int hReq, hGiv;
                Double pr;
            //INSERT***************************
           if (value.equals(insert)){
                HairDresser k1 = new HairDresser();
                id = "200"+String.valueOf(HairDresser.getCount()+1);
                fname= request.getParameter("fNameTb");
                lname= request.getParameter("lNameTb");
                address= request.getParameter("addressTb");
                phone= request.getParameter("phoneTb");
                email= request.getParameter("emailTb");
                fullTime= Boolean.parseBoolean(request.getParameter("fullTimeTb"));
                timeOff= request.getParameter("timeOffTb");
                hReq= Integer.parseInt(request.getParameter("hoursReqTb"));
                hGiv= Integer.parseInt(request.getParameter("hoursGivenTb"));
                pr= Double.parseDouble(request.getParameter("payRateTb"));
                username = fname + lname;
                pw= lname + id;

                k1.setHairDresserId(id);
                k1.insertDB(id, username, pw, fname,lname,address,phone,
                        email,fullTime,timeOff,hReq, hGiv, pr);
                System.out.println(k1+" has been added to the list");
                //set the values of k1 to the ones we just added
                
                //Step 5
                HttpSession ses1;
                ses1 = request.getSession();
                ses1.setAttribute("k1", k1);
                System.out.println("HairDresser added to Session/scheduling HdManager.jsp");
                RequestDispatcher rd = request.getRequestDispatcher("hdManager.jsp");
                rd.forward(request, response);
                System.out.println("Sending back to hdManager.jsp");

            }
            //LOOKUP***************************
            if (value.equals(lookup)){
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
            //DELETE***************************
            if (value.equals(delete)){
            //second initialize placeholder variables
            //String id;
            //third get the parameters from the user
            id = request.getParameter("idTb3");
            //third instanciate a new hairdresser object
            HairDresser dh1 = new HairDresser();
            //last perform a db function
            dh1.selectDB(id);
            System.out.println(dh1+" has been added to the list");
            dh1.deleteDB();
            System.out.println(dh1+" has been deleted from list");
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("dh1", dh1);
            System.out.println("HairDresser added to Session/scheduling HdManager.jsp");
            
            RequestDispatcher rd = request.getRequestDispatcher("hdManager.jsp");
                rd.forward(request, response);
                System.out.println("Sending back to hdManager.jsp");
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