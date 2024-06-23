/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.utils;

import group6.controller.DiamondPriceServlet;
import group6.entity.DiamondPrice;
import group6.utils.DBUtil;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Dell
 */
public class OnlineFuncUtils {

    public static final double PRICE_PER_CARAT = 11000;
    //lấy ra giá carat từ bên các website khác
    //ứng với mỗi carat sẽ có price khác nhau
    
//    public static double ConvertPriceCarat(String input) throws IOException {
//        List<DiamondPrice> diamondPrice = DiamondPriceCrawler.fetchDiamondPrices();
//        for (int i = 0; i < diamondPrice.size(); i++) {
//            
//        }
//        
//        
//    }
    
//    public static double calculatePrice(double carat) throws IOException {
//        List<DiamondPrice> diamondPrices = DiamondPriceCrawler.fetchDiamondPrices();
//
//        // Define the carat ranges
//        double[] caratRanges = {0.5, 1.0, 1.5, 2.0, 3.0, 4.0, 5.0};
//
//        // Find the appropriate price range for the input carat
//        double basePricePerCarat = 0;
//        for (DiamondPrice price : diamondPrices) {
//            double lowerBound = 0;
//            double upperBound = caratRanges[0];
//
//            for (int i = 0; i < caratRanges.length; i++) {
//                if (i > 0) {
//                    lowerBound = caratRanges[i - 1];
//                }
//                upperBound = caratRanges[i];
//
//                if (carat <= upperBound) {
//                    basePricePerCarat = price.getLeftSidePrice();
//                    break;
//                }
//            }
//
//            if (basePricePerCarat > 0) break;
//        }
//
//        // Calculate the price based on the base price per carat
//        double price = basePricePerCarat * carat;
//        return price;
//    }

        public static double calculatePrice(double carat) throws IOException {
        List<DiamondPrice> diamondPrices = DiamondPriceCrawler.fetchDiamondPrices();

        double[][] caratRanges = {
            {0.01, 0.5},
            {0.5, 1.0},
            {1.0, 1.5},
            {1.5, 2.0},
            {2.0, 3.0},
            {3.0, 4.0},
            {4.0, 5.0}
        };

        double pricePerCaratSegment = 0;

        for (int i = 0; i < caratRanges.length; i++) {
            double lowerBound = caratRanges[i][0];
            double upperBound = caratRanges[i][1];

            if (carat > lowerBound && carat <= upperBound) {
                double pricePerCarat = diamondPrices.get(i).getLeftSidePrice();
                pricePerCaratSegment = pricePerCarat / ((upperBound - lowerBound) * 100);
                break;
            }
        }

        return Math.round(pricePerCaratSegment * carat * 100);
    }
    
    
    
    public static double ConvertOrigin(String input) {
        double index = 1; //default
        if (input.equals("Lab Grow")) {
            index = 0.5;
        }
        return index;
    }

    public static double Convert(String input) {
        double index = 1; //default
        if (input.equals("Fair")) {
            index = 0.8;
        } else if (input.equals("Good")) {
            index = 1;
        } else if (input.equals("V.Good")) {
            index = 1.2;
        } else if (input.equals("EX.")) {
            index = 1.4;
        }
        return index;

    }

    public static double ConvertFluor(String input) {
        double index = 1.1; //default = MED
        if (input.equals("VSTG")) {
            index = 0.8;
        } else if (input.equals("STG")) {
            index = 1;
        } else if (input.equals("MED")) {
            index = 1.1;
        } else if (input.equals("FNT")) {
            index = 1.3;
        } else if (input.equals("NON")) {
            index = 1.5;
        }
        return index;

    }

    public static double ConvertColor(String input) {
        double index = 1.6; //default = grade D-F
        if (input.equals("F") || input.equals("E") || input.equals("D")) {
            index = 1.2;
        } else if (input.equals("G") || input.equals("H") || input.equals("I")
                || input.equals("J")) {
            index = 1.2;
        } else if (input.equals("K") || input.equals("L") || input.equals("M")) {
            index = 1.2;

        }
        return index;
    }

    public static double ConvertClarify(String input) {
        double index = 1.4; //default = grade VVS1,2
        if (input.equals("FL") || input.equals("IF")) {
            index = 1.6;
        } else if (input.equals("VVS1") || input.equals("VVS2")) {
            index = 1.4;
        } else if (input.equals("VS1") || input.equals("VS2")) {
            index = 1.2;
        } else if (input.equals("SI1") || input.equals("SI2")) {
            index = 1;
        }
        return index;
    }

    public static double convertShape(String input) {
        double index = 1.2;
        if (input.equals("Round") || input.equals("Heart")
                || input.equals("Radiant") || input.equals("Oval")) {
            index = 1.2;
        } else if (input.equals("Marquise") || input.equals("Cushion")
                || input.equals("Princess")) {
            index = 1.1;
        } else if (input.equals("Emerald") || input.equals("Asscher")
                || input.equals("Pear")) {
            index = 1;
        }
        return index;
    }

    public static String PriceCalculator(String shape, String origin, double carat,
            String color, String clarity, String cut, String polish, String symmetry,
            String flourescence) throws IOException {
        double price = calculatePrice(carat) * ConvertOrigin(origin) * Convert(cut)
                * Convert(polish) * Convert(symmetry) * ConvertFluor(flourescence)
                * ConvertClarify(clarity) * ConvertColor(color) * convertShape(shape);
        String result = String.format("%.0f", price);
        return result;
    }

    }
