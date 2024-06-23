/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/updateProgressStatus")
public class ProgressStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String stepStr = request.getParameter("step");
        String status = request.getParameter("status");
        String reset = request.getParameter("reset");
        int step = stepStr != null ? Integer.parseInt(stepStr) : -1;

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String formattedDate = now.format(formatter);

        List<String> timestamps = new ArrayList<>();

        if (reset != null && reset.equals("true")) {
            for (int i = 0; i < 7; i++) {
                request.getSession().removeAttribute("stepStatus" + i);
                request.getSession().removeAttribute("timestamp" + i);
            }
        } else {
            for (int i = 0; i <= step; i++) {
                request.getSession().setAttribute("stepStatus" + i, i < step ? "completed" : status);
                if (status.equals("completed") || status.equals("active") || status.equals("cancelled")) {
                    request.getSession().setAttribute("timestamp" + i, formattedDate);
                }
            }
        }

        for (int i = 0; i < 7; i++) {
            String timestamp = (String) request.getSession().getAttribute("timestamp" + i);
            timestamps.add(timestamp != null ? timestamp : "");
        }

        response.setContentType("application/json");
        response.getWriter().write("{\"timestamps\": " + timestamps.toString() + "}");
    }
}











