/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.controller;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/submitValuation")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024, // 1 MB
    maxFileSize = 1024 * 1024 * 10, // 10 MB
    maxRequestSize = 1024 * 1024 * 50 // 50 MB
)
public class SubmitValuationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String reportType = request.getParameter("reportType");
        String reportNumber = request.getParameter("reportNumber");
        Part filePart = request.getPart("uploadReport"); // Retrieves <input type="file" name="uploadReport">

        // Get diamond details
        String shape = request.getParameter("shape");
        String caratWeight = request.getParameter("caratWeight");
        String clarity = request.getParameter("clarity");
        String color = request.getParameter("color");
        String cut = request.getParameter("cut");
        String symmetry = request.getParameter("symmetry");
        String polish = request.getParameter("polish");
        String fluorescence = request.getParameter("fluorescence");
        String measurement = request.getParameter("measurement");

        // Get user details
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        // Define the path to save the uploaded file
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        // Save the uploaded file if it exists
        String fileName = null;
        if (filePart != null && filePart.getSize() > 0) {
            fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            filePart.write(uploadPath + File.separator + fileName);
        }

        // Set attributes for the JSP
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("shape", shape);
        request.setAttribute("caratWeight", caratWeight);
        request.setAttribute("clarity", clarity);
        request.setAttribute("color", color);
        request.setAttribute("cut", cut);
        request.setAttribute("symmetry", symmetry);
        request.setAttribute("polish", polish);
        request.setAttribute("fluorescence", fluorescence);
        request.setAttribute("measurement", measurement);
        request.setAttribute("reportType", reportType);
        request.setAttribute("reportNumber", reportNumber);
        request.setAttribute("fileName", fileName);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
    }

}

