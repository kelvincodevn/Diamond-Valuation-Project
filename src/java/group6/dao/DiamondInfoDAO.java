/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.DiamondInfoDTO;
import group6.entity.ServiceTypeDTO;
import group6.utils.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class DiamondInfoDAO {

    public DiamondInfoDTO checkDiamond(String diaID) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        DiamondInfoDTO diamond = new DiamondInfoDTO();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Select * from DiamondInfo where DiaID = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, diaID);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String shape = rs.getString("Shape");
                    String origin = rs.getString("Origin");
                    float carat = rs.getFloat("Carat");
                    String measurements = rs.getString("Measurements");
                    float weight = rs.getFloat("Weight");
                    String color = rs.getString("Color");
                    String clarity = rs.getString("Clarity");
                    String cut = rs.getString("Cut");
                    String proportions = rs.getString("Proportions");
                    String polish = rs.getString("Polish");
                    String symmetry = rs.getString("Symmetry");
                    String flourescence = rs.getString("Flourescence");            

                   diamond = new DiamondInfoDTO(diaID, shape, origin, carat, measurements, weight, color, clarity, cut, proportions, polish, symmetry, flourescence);
                    return diamond;
                }
                return null;
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
        return null;
    }
}
