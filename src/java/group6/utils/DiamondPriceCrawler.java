/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.utils;

import group6.entity.DiamondPrice;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 *
 * @author DELL
 */
public class DiamondPriceCrawler {

    private static final String URL = "https://www.diamonds.pro/education/diamond-prices/";

    public static List<DiamondPrice> fetchDiamondPrices() throws IOException {
        List<DiamondPrice> diamondPrices = new ArrayList<>();
        Document document = Jsoup.connect(URL).get();
        Element table = document.select("table").first();

        if (table != null) {
            Elements rows = table.select("tbody tr");

            for (Element row : rows) {
                Elements cols = row.select("td");
                if (cols.size() >= 4) {
                    String caratWeight = cols.get(0).text();
                    String pricePerCarat = cols.get(1).text();
                    String totalPrice = cols.get(2).text();
                    String diamondLink = cols.get(3).select("a").attr("href");

                    DiamondPrice diamondPrice = new DiamondPrice(caratWeight, pricePerCarat, totalPrice, diamondLink);
                    diamondPrices.add(diamondPrice);
                }
            }
        }
        return diamondPrices;
    }
}
