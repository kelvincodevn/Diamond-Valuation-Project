/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.CommitmentPaperDTO;
import group6.entity.SealingRecordDTO;
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
public class SealingRecordDAO {

    public List<SealingRecordDTO> printAllSealingRecord() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<SealingRecordDTO> sealingRecodList = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Select * from SealingRecord";
                stm = con.prepareStatement(query);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String sealingID = rs.getString("SealingID");
                    String diaID = rs.getString("DiaID");
                    String managerID = rs.getString("ManagerID");
                    Date createdDate = rs.getDate("CreatedDate");
                    String customerID = rs.getString("CustomerID");
                    boolean statusOfApprove = rs.getBoolean("StatusOfApprove");
                    sealingRecodList.add(new SealingRecordDTO(sealingID, diaID, managerID, createdDate, customerID, statusOfApprove));
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
        return sealingRecodList;
    }
}
