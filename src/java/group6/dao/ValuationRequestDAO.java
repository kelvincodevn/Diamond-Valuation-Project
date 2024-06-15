/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.ValuationRequestDTO;
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
public class ValuationRequestDAO {

    public String createRequestID() throws SQLException, ClassNotFoundException {
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
                int IDconvert = Integer.parseInt(rqID.substring(2));
                IDconvert++;
                if (IDconvert >= 1 && IDconvert <= 9) {
                    rqID = "RQ0" + IDconvert;
                } else {
                    rqID = "RQ" + Integer.toString(IDconvert);
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

    public boolean createRequest(String customerID, java.util.Date signedDate, String serviceTypeID) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "INSERT INTO ValuationRequest (RequestID, CustomerID, "
                        + "DiaID, Status, SignedDate, ProcessID) "
                        + "VALUES (?, ?, ?, ?, ?, ?, ?)";
                stm = con.prepareStatement(query);
                stm.setString(1, createRequestID());
                stm.setString(2, customerID);
                stm.setString(3, DiamondInfoDAO.createDiamondtID());
                stm.setBoolean(4, true);
                stm.setDate(5, (Date) signedDate);
                stm.setString(6, serviceTypeID);
                stm.setString(7, "P01");
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }

        return false;
    }

    // kiem tra step dang o buoc nao va CHUYEN ID sang buoc tiep theo
    public String checkStep(String rqID) throws SQLException, SQLException, ClassNotFoundException {
        Connection con = null;
        String step = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM ValuationRequest "
                        + "Where RequestID = ? ";
                stm = con.prepareStatement(query);
                stm.setString(1, rqID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int stepNo = Integer.parseInt(rs.getString("processId").substring(1));
                    stepNo++;
                    if (stepNo >= 1 && stepNo <= 8) {
                        step = "P0" + stepNo;
                    } else {
                        step = rs.getString("processId");
                    }
                }

            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return step;
    }

    //chuyen buoc tiep theo
    public boolean nextProcess(String rqID) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        String nextStep = checkStep(rqID);
        boolean result = false;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Update ValuationRequest set processId  = ? "
                        + "where RequestID = ? ";
                stm = con.prepareStatement(query);
                stm.setString(1, nextStep);
                stm.setString(2, rqID);
                int affectedRow = stm.executeUpdate();
                result = affectedRow == 1;
            }

        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }
//    public List<ValuationRequestDTO> printAllValuationRequest() throws SQLException, ClassNotFoundException {
//        Connection con = null;
//        PreparedStatement stm = null;
//        ResultSet rs = null;
//        List<ValuationRequestDTO> listRequest = new ArrayList<>();
//        try {
//            con = DBUtil.getConnection();
//            if (con != null) {
//                String query = " Select * from ValuationRequest";
//                stm = con.prepareStatement(query);
//                rs = stm.executeQuery();
//                while (rs.next()) {
////                    String requestID = rs.getString("RequestID");
////                    String customerID = rs.getString("CustomerID");
////                    String diaID = rs.getString("DiaID");
////                    String status = rs.getString("Status");  
////                    String customerDeclaration = rs.getString("CustomerDeclaration");
////                    Date signedDate= rs.getDate("SignedDate");
////                    String serviceTypeID = rs.getString("ServiceTypeID");
////                    listRequest.add(new ValuationRequestDTO(requestID, customerID, diaID, status, customerDeclaration, signedDate, serviceTypeID));
//                    String requestID = rs.getString("RequestID");
//                    String customerID = rs.getString("CustomerID");
//                    String customerName = rs.getString("CustomerName");
//                    String customerEmail = rs.getString("CustomerEmail");
//                    String processId = rs.getString("processId");
//                    String diaID = rs.getString("DiaID");
//                    boolean status = rs.getBoolean("Status");
////                    String customerDeclaration = rs.getString("CustomerDeclaration");
//                    Date signedDate = rs.getDate("SignedDate");
//                    String serviceTypeID = rs.getString("ServiceTypeID");
//                    String serviceName = rs.getString("ServiceName");
//                    double servicePrice = rs.getDouble("ServicePrice");
//                    int serviceExecutionTime = rs.getInt("ExecutionTime");
//
//                    listRequest.add(new ValuationRequestDTO(requestID, customerID,
//                            processId, customerName, customerEmail, diaID, status, signedDate,
//                            serviceTypeID, serviceName, servicePrice, serviceExecutionTime));
//                }
//            }
//
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
//        return listRequest;
//    }
}
