/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.utils.DBUtil;
import group6.utils.OnlineFuncUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class DiamondInfoDAO {
    
    public String PriceCheckByID(String ID) throws SQLException, ClassNotFoundException {
        String price = null;
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM DiamondInfo "
                        + "WHERE DiaID = ? ";
                stm = con.prepareStatement(query);
                stm.setString(1, ID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String shape = rs.getString("Shape");
                    String origin = rs.getString("Origin");
                    double carat = rs.getDouble("Carat");
                    String color = rs.getString("Color");
                    String clarity = rs.getString("Clarity");
                    String cut = rs.getString("Cut");
                    String polish = rs.getString("Polish");
                    String symmetry = rs.getString("Symmetry");
                    String flourescence = rs.getString("Flourescence");
                    price = OnlineFuncUtils.PriceCalculator(shape, origin, carat, color, clarity,
                            cut, polish, symmetry, flourescence);
                    return price;
                }
                return price;
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return price;
    }
    
    public static String createDiamondtID() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String rqID = null;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM ValuationRequest";
                stm = con.prepareStatement(query);
                rs = stm.executeQuery();
                while (rs.next()) {
                    rqID = rs.getString("RequestID");
                }
                int IDconvert = Integer.parseInt(rqID.substring(3));
                IDconvert++;
                if (IDconvert >= 1 && IDconvert <= 9) {
                    rqID = "DIA00" + IDconvert;
                } else {
                    rqID = "DIA" + Integer.toString(IDconvert);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return rqID;
    }
}
