/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import group6.dao.RegistrationDAO;
import group6.entity.RoleDTO;
import group6.entity.UsersDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class CookieServlet extends HttpServlet {

    private String HOME_PAGE = "HomePage.jsp";
    private String ADMIN_PAGE = "index.jsp";
    private String MAIN_PAGE = "HomePage.jsp";
    private String CONSULTING_PAGE = "ConsultingHome.jsp";
    private String VALUATION_PAGE = "ValuationHome.jsp";
    private String MANAGER_PAGE = "ManagerHome.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = HOME_PAGE;
        try {
            Cookie[] cookies = request.getCookies();
            String userName = null;
            String password = null;
            String roleID = null;
            RoleDTO role = new RoleDTO();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    String k = cookie.getName();
                    String v = cookie.getValue();
                    if (k.equals("USERNAME")) {
                        userName = v;
                    }
                    if (k.equals("PASSWORD")) {
                        password = v;
                    }
                    if (k.equals("ROLEID")) {
                        roleID = v;
                    }
                    if (userName != null && password != null) {
                        RegistrationDAO dao = new RegistrationDAO();
                        UsersDTO userInfo = dao.checkLogin(userName, password);
                        if (userInfo != null) {
                            role = dao.checkUserRole(userInfo.getRoleID());
                            if (role.getRoleName().equals("Admin")) {
                                url = ADMIN_PAGE;
                            } else if (role.getRoleName().equals("Customer")) {
                                url = MAIN_PAGE;
                            } else if (role.getRoleName().equals("Consulting Staff")) {
                                url = CONSULTING_PAGE;
                            } else if (role.getRoleName().equals("Valuation Staff")) {
                                url = VALUATION_PAGE;
                            } else if (role.getRoleName().equals("Manager")) {
                                url = MANAGER_PAGE;
                            } else {
                                url = HOME_PAGE;
                            }
                        }
                    }
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        } finally {
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
                
                    
        
            () {
        return "Short description";
        }// </editor-fold>

    }
