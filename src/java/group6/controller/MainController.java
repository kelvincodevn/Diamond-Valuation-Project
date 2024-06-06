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

    private String HOME_PAGE = "HomePage.jsp";
    private String SIGN_IN_PAGE = "signin.jsp";
    //đăng nhập và đăng kí account
    private String LOGIN_SERVLET = "LoginServlet";
    private String SIGN_UP_SERVLET = "SignUpServlet";
    private String LOG_OUT_SERVLET = "LogOutServlet";
    private String COOKIE_SERVLET = "CookieServlet";
    private String VIEW_PROFILE_SERVLET = "ViewProfileServlet";
    private String EDIT_PROFILE_SERVLET = "EditProfileServlet";
    private String EDIT_PASSWORD_SERVLET = "EditPasswordServlet";
    private String VIEW_REQUEST_SERVLET = "ViewRequestServlet";
    private String VIEW_CUSTOMER_SERVLET = "ViewCustomerServlet";
    private String VIEW_STAFF_SERVLET = "ViewStaffServlet";
    private String DELETE_STAFF_SERVLET = "DeleteStaffServlet";
    private String ADD_STAFF_SERVLET = "AddStaffServlet";
    private String EDIT_STAFF_SERVLET = "EditStaffServlet";
    private String LOAD_STAFF_SERVLET = "LoadStaffServlet";
    
    
    //phần làm lại của Xuân Mai
    private String VIEW_SERVICE_SERVLET = "ViewAllServiceServlet";
    private String ADD_SERVICE_SERVLET = "AddServiceServlet";
    private final String EDIT_SERVICE = "EditDetailServiceServlet";
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
            }else if(btAction.equals("Change Password")) {
                url = EDIT_PASSWORD_SERVLET;
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
            }else if(btAction.equals("SaveServiceChange")){
                url = EDIT_SERVICE;
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
