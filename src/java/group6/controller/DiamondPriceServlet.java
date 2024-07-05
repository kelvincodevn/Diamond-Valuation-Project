package group6.controller;

import group6.dao.DiamondInfoDAO;
import group6.dao.ErrorRegistration;
import group6.entity.DiamondInfoDTO;
import group6.entity.DiamondPrice;
import group6.utils.DiamondPriceCrawler;
import group6.utils.OnlineFuncUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/DiamondPriceServlet")
public class DiamondPriceServlet extends HttpServlet {

    private static final String URL = "https://www.diamonds.pro/education/diamond-prices/";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<DiamondPrice> diamondPrices = DiamondPriceCrawler.fetchDiamondPrices();
        DiamondInfoDAO dao = new DiamondInfoDAO();
        request.setAttribute("diamondPrices", diamondPrices);
        ErrorRegistration errors = new ErrorRegistration();
        String ID = request.getParameter("ID");
        String invalid ;
        DiamondInfoDTO dia;
        boolean checkErrors;

        float carat;
        try {
            
            checkErrors = errors.checkDiamondInputCheckValidation(ID); //ok có empty hay là ko
            try {
                Double.parseDouble(ID);
            }catch(NumberFormatException ex) {
                invalid = "Invalid certificate ID";
                request.setAttribute("INVALID", invalid);
                request.setAttribute("ERRORS", errors);
            }
            if (checkErrors && !ID.isEmpty()) {
                dia = dao.checkDiamond(ID);
                carat = dia.getCarat();
                double price = OnlineFuncUtils.calculatePrice(carat);
//                String price = dao.PriceCheckByID(ID);
                request.setAttribute("calculatedPrice", price);
                request.setAttribute("DIAMOND", dia);
            } else{
                invalid = "Invalid certificate ID";
                request.setAttribute("INVALID", invalid);
                request.setAttribute("ERRORS", errors);
                
            }

        } catch (SQLException ex) {
            Logger.getLogger(DiamondPriceServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DiamondPriceServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.getRequestDispatcher("/DiamondCheck.jsp").forward(request, response);
    }

}
