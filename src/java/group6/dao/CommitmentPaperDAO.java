/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.CommitmentPaperDTO;
import group6.entity.UsersDTO;
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
public class CommitmentPaperDAO {

    public List<CommitmentPaperDTO> printAllCommitmentPaper() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<CommitmentPaperDTO> commitmentPaperList = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Select * from CommitmentPaper";
                stm = con.prepareStatement(query);        
                rs = stm.executeQuery();
                while (rs.next()) {
                    String commitmentID = rs.getString("CommitmentID");
                    String managerID = rs.getString("ManagerID");
                     Date createdDate = rs.getDate("CreatedDate");
                    String statementOfCommitment = rs.getString("StatementOfCommitment");
                    String valuationID = rs.getString("ValuationID");
                    String customerID = rs.getString("CustomerID");
                    String customerSignature = rs.getString("CustomerSignature");
                    boolean statusOfApprove = rs.getBoolean("StatusOfApprove");                
                    commitmentPaperList.add(new CommitmentPaperDTO(commitmentID, managerID, createdDate, statementOfCommitment, valuationID, customerID, customerSignature, statusOfApprove));
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
        return commitmentPaperList;
    }

}
