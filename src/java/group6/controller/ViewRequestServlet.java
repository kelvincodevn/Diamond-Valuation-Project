/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import group6.dao.RegistrationDAO;
import group6.dao.ValuationRequestDAO;
import group6.entity.UsersDTO;
import group6.entity.ValuationRequestDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class ViewRequestServlet extends HttpServlet {

    private String LIST_REQUEST_PAGE = "CustomerDashboard-History.jsp";
    private String LIST_REQUEST_PAGE_STAFF = "request-all.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        ValuationRequestDAO dao = new ValuationRequestDAO();
//        ValuationRequestDTO requestValuation = new ValuationRequestDTO();
//        RegistrationDAO daoRes = new RegistrationDAO();
//        List<ValuationRequestDTO> listRequest = new ArrayList();
//        List<UsersDTO> listCustomer = new ArrayList();
//        String url = "";
//        try {
//            listRequest = dao.printAllValuationRequest();
////            for (ValuationRequestDTO requestVa : listRequest) {
////                listCustomer.add()
////            }
//            request.setAttribute("LISTREQUEST", listRequest);
//            url = LIST_REQUEST_PAGE;
//        } catch (SQLException | ClassNotFoundException ex) {
//            ex.printStackTrace();
//        } finally {
//            RequestDispatcher rd = request.getRequestDispatcher(url);
//            rd.forward(request, response);
//            out.close();
//        }

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        ValuationRequestDAO dao = new ValuationRequestDAO();
        List<ValuationRequestDTO> viewAll;
        String url = LIST_REQUEST_PAGE;
        try {
            Cookie[] cookies = request.getCookies();
            String cusID = "cusID";
            String roleID = "roleID";
            if (cookies != null) {
                for (Cookie cookie : cookies) {

                    if (cookie.getName().equals("USERNAMEID")) {
                        cusID = cookie.getValue();
                    }
                    if (cookie.getName().equals("ROLEID")) {
                        roleID = cookie.getValue();
                    }
                }
            }

            if (roleID.equals("C01")) { // neu nhu user la khach hang
                viewAll = dao.viewAllforCus(cusID);
                request.setAttribute("ALLREQUEST", viewAll);
                url = LIST_REQUEST_PAGE;

            } else { //user la staff, manager, admin
                viewAll = dao.viewAllforOthers();
                request.setAttribute("ALLREQUEST", viewAll);
                url = LIST_REQUEST_PAGE_STAFF;
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
