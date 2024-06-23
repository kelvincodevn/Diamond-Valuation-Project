package group6.controller;

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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/DiamondPriceServlet")
public class DiamondPriceServlet extends HttpServlet {

    private static final String URL = "https://www.diamonds.pro/education/diamond-prices/";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         List<DiamondPrice> diamondPrices = DiamondPriceCrawler.fetchDiamondPrices();
        request.setAttribute("diamondPrices", diamondPrices);

        String caratInput = request.getParameter("carat");
        if (caratInput != null) {
            try {
                double carat = Double.parseDouble(caratInput);
                double price = OnlineFuncUtils.calculatePrice(carat);
                request.setAttribute("calculatedPrice", price);
            } catch (NumberFormatException e) {
                request.setAttribute("error", "Invalid carat weight input");
            }
        }

        request.getRequestDispatcher("/diamondPrices.jsp").forward(request, response);
    }

}
