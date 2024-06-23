/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import group6.controller.*;
import group6.dao.ServiceTypeDAO;
import group6.dao.RegistrationErrors;
import group6.entity.ServiceTypeDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class AddServiceServlet extends HttpServlet {

    private final String SUCCESS_PAGE = "pricing.jsp";
    private final String ERROR_PAGE = "pricing-edit.jsp";//dieu chinh sau

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
        PrintWriter out = response.getWriter();
//        String url = ERROR_PAGE;
//        RegistrationErrors error = new RegistrationErrors();
////        UsersDTO users = new UsersDTO();
//        boolean foundErr = false;
//        String serviceTypeID = request.getParameter("txtsvID");
//            String serviceName = request.getParameter("txtsvName");
//            String serviceDescription = request.getParameter("txtsvDescription");
//            float servicePrice = 0;
//            int executionTime = 0;
//        try {
//            
//            try{
//             servicePrice = Float.parseFloat(request.getParameter("floatPrice"));}
//            catch (NumberFormatException ex){
//                    foundErr = true;
//                    error.setPhoneNumberInvalid("invalid input");
//                    }
//            try{
//             executionTime = Integer.parseInt(request.getParameter("intTime"));}
//            catch (NumberFormatException ex){
//                    foundErr = true;
//                    error.setPhoneNumberInvalid("invalid input");
//                    }
//        
//            if (foundErr) {
//                //catching to attribute and transfer to error page
//                request.setAttribute("CREATE_ERROR", error);
//            } else {
//                //3. Call DAO
//                ServiceTypeDAO dao = new ServiceTypeDAO();
//                ServiceTypeDTO service = new ServiceTypeDTO(serviceTypeID, serviceName, serviceDescription, servicePrice, executionTime);
//                boolean result = dao.addService(service);
//                if (result) {
//                    url = SUCCESS_PAGE;
//                }
//            }//end no users' error
////        } catch (NamingException ex) {
////            log("CreateAccountServlet_Naming: " + ex.getMessage());
//        } catch (SQLException ex) {
//            String msg = ex.getMessage();
//            log("AddServiceServlet_SQL: " + msg);
//            if (msg.contains("duplicate")) {
//                error.setUsernameLengthError(serviceTypeID + " is existed");
//                request.setAttribute("CREATE_ERROR", error);
//            }
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(AddServiceServlet.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            RequestDispatcher rd = request.getRequestDispatcher(url);
//            rd.forward(request, response);
//            out.close();
//        }

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
