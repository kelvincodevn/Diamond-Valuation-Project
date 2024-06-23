/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

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
public class LoginServlet extends HttpServlet {

    private String SIGNIN_PAGE = "login.jsp";
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
        RegistrationDAO dao = new RegistrationDAO();
        String invalid = "";
        String url = SIGNIN_PAGE;
        UsersDTO userInfo = new UsersDTO();
        RoleDTO role = new RoleDTO();
        try {
            String username = request.getParameter("txtUsername");
            String password = request.getParameter("txtPassword");
            password = PasswordHashing.toSHA1(password); //trc khi check login mã hóa password r so sánh hai chuỗi đã mã hóa
            userInfo = dao.checkLogin(username, password); //nên trả về
            if (userInfo == null) {
                invalid = "Invalid username or password";
                request.setAttribute("INVALID", invalid);
            } else {
                //check if the role ò the user
                //1. Goi DAO check role cua user
                //2. Lay roleName tu DAO gui ve va kiem tra xem ung voi role nao thi gui response la chuyen huong
                //sang trang ung voi role cua ho

//                HttpSession session = request.getSession();
//                session.setAttribute("account", userInfo);
                Cookie userNameIDCookie = new Cookie("USERNAMEID", userInfo.getUserID());
                Cookie userNameCookie = new Cookie("USERNAME", userInfo.getUserName());
                Cookie passwordCookie = new Cookie("PASSWORD", userInfo.getPassword());
                Cookie firstNameCookie = new Cookie("FIRSTNAME", userInfo.getFirstName());
                Cookie lastNameCookie = new Cookie("LASTNAME", userInfo.getLastName());
                Cookie phoneNumCookie = new Cookie("PHONENUMBER", userInfo.getPhoneNumber());
                Cookie roleIDCookie = new Cookie("ROLEID", userInfo.getRoleID());
                Cookie emailCookie = new Cookie("EMAIL", userInfo.getEmail());

                userNameIDCookie.setMaxAge(1800);
                userNameCookie.setMaxAge(1800);
                passwordCookie.setMaxAge(1800);
                firstNameCookie.setMaxAge(1800);
                lastNameCookie.setMaxAge(1800);
                phoneNumCookie.setMaxAge(1800);
                roleIDCookie.setMaxAge(1800);
                emailCookie.setMaxAge(1800);

                role = dao.checkUserRole(userInfo.getRoleID());
                if (role.getRoleName().equals("Admin")) {
                    request.setAttribute("FIRSTNAME", userInfo.getFirstName());
                    request.setAttribute("LASTNAME", userInfo.getLastName());
                    url = ADMIN_PAGE;
                } else if (role.getRoleName().equals("Customer")) {
                    url = MAIN_PAGE;
                } else if (role.getRoleName().equals("Consulting Staff")) {
                    url = CONSULTING_PAGE;
                } else if (role.getRoleName().equals("Valuation Staff")) {
                    url = VALUATION_PAGE;
                } else if (role.getRoleName().equals("Manager")) {
                    url = MANAGER_PAGE;
                }
                response.addCookie(userNameIDCookie);
                response.addCookie(userNameCookie);
                response.addCookie(passwordCookie);
                response.addCookie(firstNameCookie);
                response.addCookie(lastNameCookie);
                response.addCookie(emailCookie);
                response.addCookie(phoneNumCookie);
                response.addCookie(roleIDCookie);

                request.setAttribute("USERNAMEID", userInfo.getUserID());
                request.setAttribute("USERNAME", userInfo.getUserName());
                 request.setAttribute("PASSWORD", userInfo.getPassword());
                 request.setAttribute("FIRSTNAME", userInfo.getFirstName());
                 request.setAttribute("LASTNAME", userInfo.getLastName());
                 request.setAttribute("EMAIL", userInfo.getEmail());
                 request.setAttribute("PHONENUMBER", userInfo.getPhoneNumber());
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
