/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import group6.dao.ErrorRegistration;
import group6.dao.PasswordHashing;
import group6.dao.RegistrationDAO;
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

/**
 *
 * @author DELL
 */
public class EditProfileServlet extends HttpServlet {

    String url = "profile-edit.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Cookie[] cookies = request.getCookies();
        RegistrationDAO dao = new RegistrationDAO();
        UsersDTO user = new UsersDTO();
        String userID = null;
        ErrorRegistration errors = new ErrorRegistration();
        boolean checkErrors = false;
        String message = null;
        String messageSuccess = null;
        try {
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    String k = cookie.getName();
                    String v = cookie.getValue();
                    if (k.equals("USERNAMEID")) {
                        userID = v;
                    }
                }
            }
            if (userID != null) {
                user = dao.viewProfile(userID);
            }
            request.setAttribute("UserProfile", user);
            String userName = request.getParameter("txtUserName");
            String firstName = request.getParameter("txtFirstName");
            String lastName = request.getParameter("txtLastName");
            String email = request.getParameter("txtEmail");
            String phoneNumber = request.getParameter("txtPhoneNumber");
            if (userName != null && firstName != null && lastName != null && email != null && phoneNumber != null) {
                checkErrors = errors.checkUserNameLen(userName, 6, 20) //ok                     
                        & errors.checkFirstNameLen(firstName, 4, 30) //ok
                        & errors.checkLastNameLen(lastName, 4, 30) //ok
                        & errors.checkEmailValidation(email) //ok
                        & errors.checkPhoneNumberValidation(phoneNumber); //ok
                if (checkErrors) {
                    //check dưới DB nếu như username dưới DB và username mới nhập vào trùng nhau thì ko cần check account existed
                    UsersDTO uses = dao.viewProfile(userID);                   
                    if (!uses.getUserName().equals(userName)) {
                        checkErrors = dao.checkAccountExisted(userName);
                    }else {
                        checkErrors = false;
                    }
                    if (checkErrors) {
                        checkErrors = true;
                        message = userName + " is already existed";
                        request.setAttribute("ErrorMessage", message);
                    } else {
                        checkErrors = false;
                    }
                }
                if (!checkErrors) {
                    checkErrors = dao.updateInfoUser(userID, userName, lastName, firstName, lastName, email, phoneNumber);
                    if (cookies != null) {
                        for (Cookie cookie : cookies) {
                            if (!cookie.getValue().equals(userName)) {
                                Cookie updateUserNameCookie = new Cookie("USERNAME", userName);
                                updateUserNameCookie.setMaxAge(1800);
                                response.addCookie(updateUserNameCookie);
                            } else if (!cookie.getValue().equals(firstName)) {
                                Cookie updateFirstNameCookie = new Cookie("FIRSTNAME", firstName);
                                updateFirstNameCookie.setMaxAge(1800);
                                response.addCookie(updateFirstNameCookie);
                            } else if (!cookie.getValue().equals(lastName)) {
                                Cookie updateLastNameNameCookie = new Cookie("LASTNAME", lastName);
                                updateLastNameNameCookie.setMaxAge(1800);
                                response.addCookie(updateLastNameNameCookie);
                            } else if (!cookie.getValue().equals(email)) {
                                Cookie updateEmailCookie = new Cookie("EMAIL", email);
                                updateEmailCookie.setMaxAge(1800);
                                response.addCookie(updateEmailCookie);
                            } else if (!cookie.getValue().equals(phoneNumber)) {
                                Cookie updatePhoneNumberCookie = new Cookie("PHONENUMBER", phoneNumber);
                                updatePhoneNumberCookie.setMaxAge(1800);
                                response.addCookie(updatePhoneNumberCookie);
                            }
                        }

                    }

                    messageSuccess = "Update successfully";
                    request.setAttribute("SuccessMessage", message);
                    //checkErrors = true;
                }
                if (checkErrors) {
                    request.setAttribute("ERRORS", errors);
                }
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
