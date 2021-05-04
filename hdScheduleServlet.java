/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import BO.HairDresser;
import BO.Schedule;
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
            //Strings**************************
            String value = request.getParameter("button");
            String insert = "casInsert";
            String lookup = "Lookup";
            String delete = "casDelete";
            String uconstant = "casUpdate";
            //String 
            String[] update = new String[10];
            int count;
            int index =-1;
            for (count =0;count<10;count++){
            update [count] =uconstant+count;
            if (update[count].equals(value)) {
            index = count;
            }  }
            out.println(index); 
            
            //hd properties
            String id,username, pw;
                String fname, lname, address, phone
                        , email, timeOff;
                boolean fullTime;
                int hReq, hGiv;
                Double pr;
                
                //schedule properties
                String empId, empFname, empLname;
                boolean m,t,w,r,f,s,z;
                
            //UPDATE&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
            if (value.equals(uconstant+index)) {
                //step 1
                /*empId = request.getParameter("id2");
                m= Boolean.parseBoolean(request.getParameter("m2"));
                t= Boolean.parseBoolean(request.getParameter("t2"));
                w= Boolean.parseBoolean(request.getParameter("w2"));
                r= Boolean.parseBoolean(request.getParameter("r2"));
                f= Boolean.parseBoolean(request.getParameter("f2"));
                s= Boolean.parseBoolean(request.getParameter("s2"));
                z= Boolean.parseBoolean(request.getParameter("z2"));
                System.out.println("sid retrieved = " + empId);*/

                empId = request.getParameter("sidtb"+index);
                m= Boolean.parseBoolean(request.getParameter("mtb"+index));
                t= Boolean.parseBoolean(request.getParameter("ttb"+index));
                w= Boolean.parseBoolean(request.getParameter("wtb"+index));
                r= Boolean.parseBoolean(request.getParameter("rtb"+index));
                f= Boolean.parseBoolean(request.getParameter("ftb"+index));
                s= Boolean.parseBoolean(request.getParameter("stb"+index));
                z= Boolean.parseBoolean(request.getParameter("ztb"+index));

                // Step #2 - get any objects out of the Session using getAttribute() 
                // no objects in Session needed for this Example
                //Step #3 - Create any Objects needed to lookup a Student
                Schedule us1;
                us1 = new Schedule();

                us1.selectDB(empId);
                System.out.println("FName =" + us1.getFirstName());

                //Step #4 - Make any decisions necessary
                us1.setMonday(m);
                us1.setTuesday(t);
                us1.setWednesday(w);
                us1.setThursday(r);
                us1.setFriday(f);
                us1.setSaturday(s);
                us1.setSunday(z);
                us1.updateDB();
                //Step #5 - Put Student Object in Session using HttpSession
                HttpSession ses1;
                ses1 = request.getSession();
                ses1.setAttribute("us1", us1);
                System.out.println("Update sending x to cas.jsp");
                /*
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet hdScheduleServlet</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Id: " + us1.getEmpId()+", booleans: "+ us1.isMonday() + "</h1>");
                out.println("</body>");
                out.println("</html>");
                */
                //Step #6 - Use RequestDispatcher to forward to JStudentLookup.jsp
                RequestDispatcher rd = request.getRequestDispatcher("cas.jsp");
                rd.forward(request, response);
            }
            //INSERT***************************
           if (value.equals(insert)){
                /*String id,username, pw;
                String fname, lname, address, phone
                        , email, timeOff;
                boolean fullTime;
                int hReq, hGiv;
                Double pr;*/
                id = request.getParameter("casIdtb3");
                fname = request.getParameter("casFnameTb3");
                lname = request.getParameter("casLnameTb3");
                Schedule is1 = new Schedule();
                is1.setEmpId(id);
                is1.insertDB(id,fname,lname);
                System.out.println(is1+" has been added to the list");
                //set the values of k1 to the ones we just added
                
                //Step 5
                HttpSession ses1;
                ses1 = request.getSession();
                ses1.setAttribute("is1", is1);
                System.out.println("HairDresser added to Session/scheduling cas.jsp");
                RequestDispatcher rd = request.getRequestDispatcher("cas.jsp");
                rd.forward(request, response);
                System.out.println("Add to schedule complete, back to cas.jsp");
            }
            //LOOKUP***************************
            if (value.equals(lookup)){
            //second initialize placeholder variables
            /*String id,username, pw;
            String fname, lname, address, phone
           , email, timeOff;
            boolean fullTime;
            int hReq, hGiv;
            Double pr;*/
            //third get the parameters from the user
            id = request.getParameter("casIdtb3");
            //third instanciate a new hairdresser object
            HairDresser L1 = new HairDresser();
            //last perform a db function
            L1.selectDB(id);
            System.out.println(L1+" has been added to the list");
            
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("L1", L1);
            System.out.println("HairDresser added to Session/scheduling cas.jsp");
            
            RequestDispatcher rd = request.getRequestDispatcher("cas.jsp");
                rd.forward(request, response);
                System.out.println("Lookup complete, back to cas.jsp");
            }
            //DELETE***************************
            if (value.equals(delete)){
            //second initialize placeholder variables
            //String id;
            //third get the parameters from the user
            id = request.getParameter("casIdtb3");
            //get any objects out of the session
            request.getAttribute("casIdtb3");
            //third instanciate a new schedule object
            Schedule ds1 = new Schedule();
            //last perform a db function
            ds1.selectDB(id);
            System.out.println(ds1+" has been added to the list");
            ds1.deleteDB();
            System.out.println(ds1+" has been deleted from list");
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("ds1", ds1);
            System.out.println("Deleted schedule from db sending object to cas.jsp");
            
            RequestDispatcher rd = request.getRequestDispatcher("cas.jsp");
                rd.forward(request, response);
                System.out.println("Delete complete back to cas.jsp");
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