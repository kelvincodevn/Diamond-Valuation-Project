/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class RoleDAO {
    
//   ,, public getItemByID(String itemID)
//            throws SQLException, ClassNotFoundException {
//        Connection con = null;
//        PreparedStatement stm = null;
//        ResultSet rs = null;
//        try {
//            con = DBUtil.getConnection();
//            if (con != null) {
//                String query = "select * from item where itemID LIKE ?";
//                stm = con.prepareStatement(query);
//                stm.setString(1, itemID);
//                rs = stm.executeQuery();
//                if (rs.next()) {
//                    String itemid = rs.getString("itemID");
//                    String itemname = rs.getString("itemName");
//                    String itemDescription = rs.getString("itemDescription");
//                    int price = rs.getInt("price");
//                    String categoryID = rs.getString("categoryID");
//                    String image = rs.getString("Image");
//                    ItemDTO item = new ItemDTO(itemid, itemname, itemDescription, price, categoryID, image);
//                    return item;
//                }
//            }
//        } finally {
//            if (rs != null) {
//                rs.close();
//            }
//            if (stm != null) {
//                stm.close();
//            }
//            if (con != null) {
//                con.close();
//            }
//        }
//        return null;
//    }
}
