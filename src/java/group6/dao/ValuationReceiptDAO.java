/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.ValuationReceiptDTO;
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
public class ValuationReceiptDAO {

    public List<ValuationReceiptDTO> printAllValuationReceipt() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<ValuationReceiptDTO> valuationReceiptList = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Select * from ValuationReceipt";
                stm = con.prepareStatement(query);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String receiptID = rs.getString("ReceiptID");
                    Date receiptDate = rs.getDate("ReceiptDate");
                    String customerID = rs.getString("CustomerID");
                    String platFormID = rs.getString("PlatFormID");
                    String diaID = rs.getString("DiaID");
                    String serviceTypeID = rs.getString("ServiceTypeID");
                    Date estimatedCompletionDate = rs.getDate("EstimatedCompletionDate");
                    float serviceFee = rs.getFloat("ServiceFee");
                    float paymentReceived = rs.getFloat("PaymentReceived");
                    String paymentMethod = rs.getString("PaymentMethod");
                    String serviceAgreement = rs.getString("ServiceAgreement");
                    String consultingStaffID = rs.getString("ConsultingStaffID");
                    String staffSignature = rs.getString("StaffSignature");
                    String status = rs.getString("Status");
                    valuationReceiptList.add(new ValuationReceiptDTO(receiptID, receiptDate, customerID, platFormID, diaID, serviceTypeID, estimatedCompletionDate, 
                            serviceFee, paymentReceived, paymentMethod, serviceAgreement, consultingStaffID, staffSignature, status));
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
        return valuationReceiptList;
    }

}
