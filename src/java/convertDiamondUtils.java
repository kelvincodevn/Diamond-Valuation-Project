/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dell
 */
public class convertDiamondUtils {

    public static final double PRICE_PER_CARAT = 11000;

    public static double ConvertOrigin(String input) {
        double index = 1; //default
        if (input.equals("Lab Grow")) {
            index = 0.7;
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
        if (input.equals("Round") || input.equals("Heart") || 
                input.equals("Radiant") || input.equals("Oval")) {
            index = 1.2;
        } else if (input.equals("Marquise") || input.equals("Cushion") 
                || input.equals("Princess") ) {
            index = 1.1;
        } else if (input.equals("Emerald") || input.equals("Asscher") 
                || input.equals("Pear")) {
            index = 1;
        }
        return index;
    }

    public static double PriceCalculator(String shape, String origin, double carat, 
            String color, String clarity, String cut, String polish, String symmetry,
            String flourescence) {
        double price = PRICE_PER_CARAT * carat * ConvertOrigin(origin) * Convert(cut)
                * Convert(polish) * Convert(symmetry) * ConvertFluor(flourescence)
                * ConvertClarify(clarity) * ConvertColor(color) * convertShape(shape);
        return price;
    }
}
