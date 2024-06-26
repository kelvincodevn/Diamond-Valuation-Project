///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
package group6.controller;

import org.json.JSONArray;
import org.json.JSONObject;
import group6.dao.ValuationRequestDAO;
import group6.entity.RequestCount;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class viewChartServlet extends HttpServlet {

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
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = "index.jsp";
        ValuationRequestDAO dao = new ValuationRequestDAO();
        List<RequestCount> list;
//        JSONArray chartData = new JSONArray();
        try {
//            int a = 40;
//            int b = 30;
//            int c = 100;
//            chartData.put(new JSONObject().put("label", "Basic").put("value", a));
//            chartData.put(new JSONObject().put("label", "Advanced").put("value", b));
//            chartData.put(new JSONObject().put("label", "Express").put("value", c));
//            out.print(chartData.toString());

            int month = Integer.parseInt(request.getParameter("month"));
            int year = Integer.parseInt(request.getParameter("year"));
            if (month == 0 && year == 0) {
                list = dao.getRequestCountAll();
                request.setAttribute("DATA", list.toString());
            } else if (month == 0 && year != 0) {
                list = dao.getRequestCountByYear(year);
                request.setAttribute("DATA", list);
            } else if (month != 0 && year != 0) {
                list = dao.getRequestCountByMonth(year, month);
                request.setAttribute("DATA", list.toString());
            } else {
                list = dao.getRequestCountAll();
                request.setAttribute("DATA", list.toString());
            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(viewChartServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
//            data a = new data("ha", a1),
//                    b = new data("b", b1),
//                    c = new data("b", 20);
//
//            List<data> list = new ArrayList<>();
//            list.add(a);
//            list.add(b);
//            list.add(c);
         finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);

            out.flush();
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

    public class data {

        private String label;
        private int value;

        // Constructor
        public data(String label, int value) {
            this.label = label;
            this.value = value;
        }

        public String getLabel() {
            return label;
        }

        public void setLabel(String label) {
            this.label = label;
        }

        public int getValue() {
            return value;
        }

        public void setValue(int value) {
            this.value = value;
        }

        @Override
        public String toString() {
            return "{ "
                    + "label: \"" + label + "\""
                    + ", value: " + value
                    + " }";
        }
    }
}

//            int month = Integer.parseInt(request.getParameter("month"));
//            int year = Integer.parseInt(request.getParameter("year"));
//            if (month == 0 && year == 0) {
//                list = dao.getRequestCountAll();
//                request.setAttribute("DATA", list);
//            } else if (month == 0 && year != 0) {
//                list = dao.getRequestCountByYear(year);
//                request.setAttribute("DATA", list);
//            } else if (month != 0 && year != 0) {
//                list = dao.getRequestCountByMonth(year, month);
//                request.setAttribute("DATA", list);
//            } else {
//                list = dao.getRequestCountAll();
//                request.setAttribute("DATA", list);
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(viewChartServlet.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(viewChartServlet.class.getName()).log(Level.SEVERE, null, ex);
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
///**
// *
// * @author Dell
// */
//public class viewChartServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");
//
//        JSONArray chartData = new JSONArray();
//        int a = 40;
//        int b = 30;
//        int c =100;
//        chartData.put(new JSONObject().put("label", "Basic").put("value", a));
//        chartData.put(new JSONObject().put("label", "Advanced").put("value", b));
//        chartData.put(new JSONObject().put("label", "Express").put("value", c));
//
//        PrintWriter out = response.getWriter();
//        out.print(chartData.toString());
//        out.flush();
//    }
//}
