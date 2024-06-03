/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import group6.dao.ErrorRegistration;
import group6.dao.PasswordHashing;
import group6.dao.RegistrationDAO;
import group6.dao.RoleDAO;
import group6.entity.RoleDTO;
import group6.entity.UsersDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class EditStaffServlet extends HttpServlet {

    private String STAFF_EDIT_PAGE = "staff-edit.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = STAFF_EDIT_PAGE;
        RegistrationDAO dao = new RegistrationDAO();
        UsersDTO users = new UsersDTO();
        RoleDTO role = new RoleDTO();
        boolean checkCreate = true;
        boolean checkErrors = false;
        ErrorRegistration errors = new ErrorRegistration();
        RoleDAO daoRole = new RoleDAO();
        RoleDTO roleD = new RoleDTO();
        String message = null;
        try {
            String staffID = request.getParameter("txtStaffID");
            String firstName = request.getParameter("txtFirstName");
            String lastName = request.getParameter("txtLastName");
            String email = request.getParameter("txtEmail");
            String phoneNumber = request.getParameter("txtPhoneNumber");
            String userName = request.getParameter("txtUserName");
            //String password = request.getParameter("txtPassword");           
            String roleName = request.getParameter("txtRole");
            UsersDTO staff = dao.viewProfile(staffID);
            HttpSession session = request.getSession();
            session.setAttribute("firstName", request.getParameter("txtFirstName"));
            session.setAttribute("lastName", request.getParameter("txtLastName"));
            session.setAttribute("email", request.getParameter("txtEmail"));
            session.setAttribute("phoneNumber", request.getParameter("txtPhoneNumber"));
            session.setAttribute("username", request.getParameter("txtUserName"));
            //session.setAttribute("password", request.getParameter("txtPassword"));           
            session.setAttribute("rolename", request.getParameter("txtRole"));
            checkErrors = errors.checkUserNameLen(userName, 6, 20) //ok
                    //& errors.checkPasswordLen(password, 8, 30) //ok                  
                    & errors.checkFirstNameLen(firstName, 4, 30) //ok
                    & errors.checkLastNameLen(lastName, 4, 30) //ok
                    & errors.checkEmailValidation(email) //ok
                    & errors.checkPhoneNumberValidation(phoneNumber)//ok
                    & errors.checkRole2(roleName); //ok
            if (checkErrors) {
                if(dao.viewProfile(staffID).getUserName().equals(userName)) {
                    checkErrors = true;
                } else {
                checkErrors = dao.checkAccountExisted(userName);
                if (checkErrors) {
                    checkErrors = false;
                    message = userName + " is already existed";
                    request.setAttribute("ErrorMessage", message);
                } else {
                    checkErrors = true;
                    }
                }
            }
            if (checkErrors) {
                //password = PasswordHashing.toSHA1(password);
                roleD = daoRole.getRoleByRoleName(roleName);
                checkErrors = dao.editStaffAccount(staffID, userName, firstName, lastName, email, phoneNumber, roleD.getRoleID());
                checkErrors = true;
                request.setAttribute("STAFFINFO", staff);  
                request.setAttribute("ROLE", roleD);
                //xóa session
                HttpSession sessionNew = request.getSession(false);
                if (sessionNew != null) {
                    sessionNew.invalidate();
                }
                url = STAFF_EDIT_PAGE;
                
                request.setAttribute("SuccessMessage", "Staff " + staffID + " is updated successfully");
            }
            if (!checkErrors) {
                request.setAttribute("ERRORS", errors);
                request.setAttribute("STAFFINFO", staff);
                request.setAttribute("ROLE", roleD);
                url = STAFF_EDIT_PAGE;
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
