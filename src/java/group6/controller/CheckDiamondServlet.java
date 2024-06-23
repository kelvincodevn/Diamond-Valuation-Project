/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import group6.dao.DiamondInfoDAO;
import group6.dao.ErrorRegistration;
import group6.dao.RegistrationDAO;
import group6.entity.DiamondInfoDTO;
import group6.entity.UsersDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class CheckDiamondServlet extends HttpServlet {

    private String DIAMOND_RESULT_PAGE = "DiamondCheckResultVer2.jsp";
    private String DIAMOND_CHECK_PAGE = "DiamondCheck.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String certificateID = request.getParameter("ID");
        DiamondInfoDAO dao = new DiamondInfoDAO();
        DiamondInfoDTO diamond = new DiamondInfoDTO();
        boolean checkErrors = false;
        String url = "";
        String price = null;
        ErrorRegistration errors = new ErrorRegistration();
        String invalid = "";
        String message = null;
        try {
            checkErrors = errors.checkDiamondInputCheckValidation(certificateID); //ok có empty hay là ko
            if (checkErrors) {
                diamond = dao.checkDiamond(certificateID);
                if (diamond == null) {
                    invalid = "Invalid certificate ID";
                    checkErrors = false;
                }
            }
            if (!checkErrors) {
                request.setAttribute("INVALID", invalid);
                request.setAttribute("ERRORS", errors);
                url = DIAMOND_CHECK_PAGE;
            } else {
                price = dao.PriceCheckByID(certificateID);
                request.setAttribute("DIAMOND", diamond);
                request.setAttribute("PRICE_CHECK", price);
                url = DIAMOND_RESULT_PAGE;
            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
