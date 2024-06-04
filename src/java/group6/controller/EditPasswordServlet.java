/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import group6.dao.ErrorRegistration;
import group6.dao.PasswordHashing;
import group6.dao.RegistrationDAO;
import group6.entity.RoleDTO;
import group6.entity.UsersDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class EditPasswordServlet extends HttpServlet {

    private String PROFILE_PAGE = "profile.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        RegistrationDAO dao = new RegistrationDAO();
        UsersDTO users = new UsersDTO();
        boolean checkEdit = true;
        boolean checkErrors = false;
        String url = PROFILE_PAGE;
        ErrorRegistration errors = new ErrorRegistration();
        try {
            String oldPaword = request.getParameter("txtOldPassword");
            String newPassword = request.getParameter("txtNewPassword");
            String confirmPassword = request.getParameter("txtConfirmPassword");
            //lưu session tạm thời
            HttpSession session = request.getSession();
            session.setAttribute("oldPassword", request.getParameter("txtOldPassword"));
            session.setAttribute("newPassword", request.getParameter("txtNewPassword"));
            session.setAttribute("confirmPassword", request.getParameter("txtConfirmPassword"));
            Cookie[] cookies = request.getCookies();
            UsersDTO user = new UsersDTO();
            RoleDTO role = new RoleDTO();
            String userID = null;
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    String k = cookie.getName();
                    String v = cookie.getValue();
                    if (k.equals("USERNAMEID")) {
                        userID = v;
                    }
                }
            }
            //check cả ba thằng cùng 1 lúc (check muốn update phải điền đủ 3 field)
            checkErrors = errors.checkOldPasswordInput(oldPaword)
                    & errors.checkNewPasswordInput(newPassword)
                    & errors.checkConfirmPasswordInput(confirmPassword);
            if (checkErrors) {
                //check tiếp pattern của password và password cũ có đúng ko
                oldPaword = PasswordHashing.toSHA1(oldPaword);
                user = dao.checkAccountPassword(userID, oldPaword);
                if(user == null) {
                    request.setAttribute("ERROROLDPASSWORD", "Old password is invalid");
                }
                checkErrors = errors.checkPasswordLen(newPassword, 8, 30) //ok 
                        & errors.checkConfirmNotMatch(newPassword, confirmPassword); //ok        
            }
            if(user != null && checkErrors ==  true) {
                newPassword = PasswordHashing.toSHA1(newPassword);
                checkErrors = dao.changePassword(userID, newPassword);
                HttpSession sessionNew = request.getSession(false);
                if(sessionNew != null) {
                    sessionNew.invalidate();
                }
                url = PROFILE_PAGE;
            }
            if (!checkErrors) {
                request.setAttribute("ERRORS", errors);
                url = PROFILE_PAGE;
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
