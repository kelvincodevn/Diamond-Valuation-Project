/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class MainController extends HttpServlet {

    private final String HOME_PAGE = "HomePage.jsp";
    private final String SIGN_IN_PAGE = "signin.jsp";
    //đăng nhập và đăng kí account
    private final String LOGIN_SERVLET = "LoginServlet";
    private final String SIGN_UP_SERVLET = "SignUpServlet";
    private final String LOG_OUT_SERVLET = "LogOutServlet";
    private final String COOKIE_SERVLET = "CookieServlet";
    private final String VIEW_PROFILE_SERVLET = "ViewProfileServlet";
    private final String EDIT_PROFILE_SERVLET = "EditProfileServlet";
    private final String VIEW_REQUEST_SERVLET = "ViewRequestServlet";
    private final String VIEW_CUSTOMER_SERVLET = "ViewCustomerServlet";
    private final String VIEW_STAFF_SERVLET = "ViewStaffServlet";
    private final String DELETE_STAFF_SERVLET = "DeleteStaffServlet";
    private final String ADD_STAFF_SERVLET = "AddStaffServlet";
    private final String EDIT_STAFF_SERVLET = "EditStaffServlet";
    private final String LOAD_STAFF_SERVLET = "LoadStaffServlet";
    private final String ONLINE_VALUATION = "OnlineValuationServlet";
    private final String VIEW_SERVICE_SERVLET = "ViewAllServiceServlet";
    private final String ADD_SERVICE_SERVLET = "AddServiceServlet";
    private final String EDIT_SERVICE = "EditDetailServiceServlet";
    private final String ONLINE_CHECKING = "OnlineCheckServlet";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = HOME_PAGE;
        try {
            String btAction = request.getParameter("btAction");
            if (btAction == null) {
                url = COOKIE_SERVLET;
            } else if (btAction.equals("Signin")) {
                url = LOGIN_SERVLET;
            } else if (btAction.equals("Signup")) {
                url = SIGN_UP_SERVLET;
            } else if (btAction.equals("Logout")) {
                url = LOG_OUT_SERVLET;
            } else if(btAction.equals("ViewProfile")) {
                url = VIEW_PROFILE_SERVLET;
            } else if(btAction.equals("Save")) {
                url = EDIT_PROFILE_SERVLET;
            }else if(btAction.equals("ViewRequestList")) {
                url = VIEW_REQUEST_SERVLET;
            }else if(btAction.equals("ViewCustomer")) {
                url = VIEW_CUSTOMER_SERVLET;
            }else if(btAction.equals("ViewStaff")) {
                url = VIEW_STAFF_SERVLET;
            }else if(btAction.equals("DeleteStaff")) {
                url = DELETE_STAFF_SERVLET;
            }else if(btAction.equals("Add Staff")) {
                url = ADD_STAFF_SERVLET;
            }else if(btAction.equals("Edit Staff")) {
                url = EDIT_STAFF_SERVLET;
            }else if(btAction.equals("ViewService")) {
                url = VIEW_SERVICE_SERVLET;
            }else if(btAction.equals("Add Service")) {
                url = ADD_SERVICE_SERVLET;
            }else if(btAction.equals("LoadStaff")) {
                url = LOAD_STAFF_SERVLET;
            } else if(btAction.equals("SaveServiceChange")){
                url = EDIT_SERVICE;
            }else if(btAction.equals("Calculate")){
                url = ONLINE_VALUATION;
            }else if(btAction.equals("Check")){
                url = ONLINE_CHECKING;
            }
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
