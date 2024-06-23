/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import group6.controller.*;
import group6.dao.ServiceTypeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class DeleteServiceServlet extends HttpServlet {
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
        //1 get all para
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR_PAGE;
        String ID = request.getParameter("txtUserName");
        PrintWriter out = response.getWriter();
        try {
            //2. call Model
            //2.1 New DAO obj
            ServiceTypeDAO dao = new ServiceTypeDAO();
            //2.2 call methods of DAO
            boolean result = dao.deleteService(ID);
            //3. process result
            if(result){
                url = SUCCESS_PAGE;//dieu chinh sau
            }
        } catch (SQLException ex) {
                log("DeleteAccountServlet_SQL: " + ex.getMessage());
       }catch (NamingException ex) {
                log("DeleteAccountServlet_Naming: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DeleteServiceServlet.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            response.sendRedirect(url);
            out.close();
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
