package Servlets;

import java.io.IOException;
import BO.Customer;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class DisplayApptServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        // Get CustomerId 
        String CustID = request.getParameter("CustID");
        
        Customer c1 = new Customer();
        c1.selectDB(CustID);
       
        // Create a session
        HttpSession session2 = request.getSession();
            
        //Store the customer object in session
        session2.setAttribute("customer" , c1);
                
                
        RequestDispatcher dispatch = request.getRequestDispatcher("/DisplayAppts.jsp");
        
        dispatch.forward(request, response);
        
        out.close();//Close writer
    }
   
 }  