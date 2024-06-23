/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.CommitmentPaperDTO;
import group6.entity.ValuationReportDTO;
import group6.utils.DBUtil;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class ValuationReportDAO {

    public List<ValuationReportDTO> printAllValuationReport() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<ValuationReportDTO> valuationReportList = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Select * from ValuationReport";
                stm = con.prepareStatement(query);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String valuationID = rs.getString("ValuationID");
                    Date valuationDate = rs.getDate("ValutionDate");
                    String customerID = rs.getString("CustomerID");
                    String diaID = rs.getString("DiaID");
                    String serviceTypeID = rs.getString("ServiceTypeID");
                    boolean status = rs.getBoolean("Status");
                    float diamondPrice = rs.getFloat("DiamondPrice");
                    String image = rs.getString("Image");
                    String staffSignature = rs.getString("StaffSignature");
                    valuationReportList.add(new ValuationReportDTO(valuationID, valuationDate, customerID, diaID, serviceTypeID, status, diamondPrice, image, staffSignature));
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
        return valuationReportList;
    }

}
