/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.RequestCount;
import group6.entity.ValuationRequestDTO;
import group6.utils.DBUtil;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
//import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class ValuationRequestDAO {

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
//                    String requestID = rs.getString("RequestID");
//                    String customerID = rs.getString("CustomerID");
//                    String diaID = rs.getString("DiaID");
//                    String status = rs.getString("Status");
//                    String customerDeclaration = rs.getString("CustomerDeclaration");
//                    Date signedDate = rs.getDate("SignedDate");
//                    String serviceTypeID = rs.getString("ServiceTypeID");
//                    listRequest.add(new ValuationRequestDTO(requestID, customerID, diaID, status, customerDeclaration, signedDate, serviceTypeID));
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
                if (rqID != null) {
                    int IDconvert = Integer.parseInt(rqID.substring(2));
                    IDconvert++;
                    if (IDconvert >= 1 && IDconvert <= 9) {
                        rqID = "RQ0" + IDconvert;
                    } else {
                        rqID = "RQ" + Integer.toString(IDconvert);
                    }
                } else {
                    rqID = "RQ01";
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

    public boolean createRequest(String customerID, String serviceTypeID) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "INSERT INTO ValuationRequest (RequestID, CustomerID, DiaID, Status, CreatedDate, DateUpdated, ServiceTypeID, StateID) "
                        + "VALUES (?, ?, ?, 'Submitted', ?, ?, ?, 'S01' )";
                stm = con.prepareStatement(query);
                stm.setString(1, createRequestID());
                stm.setString(2, customerID);
                stm.setString(3, null);
//                stm.setBoolean(5, true);
//                java.sql.Date sqlDate = new java.sql.Date(signedDate.getTime());
//                Timestamp sqlTime = new Timestamp(date.getTime());
                LocalDateTime currentDateTime = LocalDateTime.now();
//                System.out.println("Current Date and Time: " + currentDateTime);
                Timestamp sqlTimestamp = Timestamp.valueOf(currentDateTime);
//                System.out.println(sqlTimestamp);
                stm.setTimestamp(4, sqlTimestamp);
                stm.setTimestamp(5, sqlTimestamp);
//                stm.setTimestamp(4, sqlTimestamp);
                stm.setString(6, serviceTypeID);
                int rowsAffected = stm.executeUpdate();
                if (rowsAffected > 0) {
                    result = true;
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

        return result;
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

    public List<ValuationRequestDTO> viewAllforCus(String cusID) throws SQLException, SQLException, ClassNotFoundException {
        Connection con = null;
        String step = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<ValuationRequestDTO> allRQ = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM ValuationRequest "
                        + "Where CustomerID = ? ";
                stm = con.prepareStatement(query);
                stm.setString(1, cusID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String requestID = rs.getString("RequestID");
                    String customerID = rs.getString("CustomerID");
                    String diaID = rs.getString("DiaID");
                    String status = rs.getString("Status");
                    Date created = rs.getDate("CreatedDate");
                    Date lastUpdate = rs.getDate("DateUpdated");
                    String serviceTypeID = rs.getString("ServiceTypeID");
                    String stateID = rs.getString("StateID");
//                        allRQ.add(valuationRequest);

//                    if (customerID.equals(cusID)) {
                    ValuationRequestDTO rq = new ValuationRequestDTO(requestID, customerID, diaID, status, created, lastUpdate, serviceTypeID, stateID);
                    allRQ.add(rq);
//                    }
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
        return allRQ;
    }

    public List<ValuationRequestDTO> viewAllforOthers() throws SQLException, SQLException, ClassNotFoundException {
        Connection con = null;
//        String step = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<ValuationRequestDTO> allRQ = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM ValuationRequest ";
//                        + "Where CustomerID = ? ";
                stm = con.prepareStatement(query);
//                stm.setString(1, cusID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String requestID = rs.getString("RequestID");
                    String customerID = rs.getString("CustomerID");
                    String diaID = rs.getString("DiaID");
                    String status = rs.getString("Status");
                    Date created = rs.getDate("CreatedDate");
                    Date lastUpdate = rs.getDate("DateUpdated");
                    String serviceTypeID = rs.getString("ServiceTypeID");
                    String stateID = rs.getString("StateID");
                    ValuationRequestDTO rq = new ValuationRequestDTO(requestID, customerID, diaID, status, created, lastUpdate, serviceTypeID, stateID);
                    allRQ.add(rq);

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
        return allRQ;
    }

    //--------------------------------------------------
    // dung de ve bieu do

    public List<RequestCount> getRequestCountByMonth(int year, int month) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<RequestCount> countByMonth = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT ServiceTypeID, COUNT(*) AS RequestCount " +
                           "FROM ValuationRequest " +
                           "WHERE YEAR(CreatedDate) = ? " +
                           "  AND MONTH(CreatedDate) = ? " +
                           "  AND ServiceTypeID IN ('ST001', 'ST002', 'ST003') " +
                           "GROUP BY ServiceTypeID";

                stm = con.prepareStatement(query);
                stm.setInt(1, year);
                stm.setInt(2, month);
                rs = stm.executeQuery();
                
                while (rs.next()) {
                    String serviceTypeID = rs.getString("ServiceTypeID");
                int requestCount = rs.getInt("RequestCount");
                
                RequestCount dto = new RequestCount(serviceTypeID, requestCount);
                countByMonth.add(dto);
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
        return countByMonth;
    }
    
    public List<RequestCount> getRequestCountByYear(int year) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<RequestCount> countByMonth = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT ServiceTypeID, COUNT(*) AS RequestCount " +
                           "FROM ValuationRequest " +
                           "WHERE YEAR(CreatedDate) = ? " +
                           "  AND ServiceTypeID IN ('ST001', 'ST002', 'ST003') " +
                           "GROUP BY ServiceTypeID";

                stm = con.prepareStatement(query);
                stm.setInt(1, year);

                rs = stm.executeQuery();
                
                while (rs.next()) {
                    String serviceTypeID = rs.getString("ServiceTypeID");
                int requestCount = rs.getInt("RequestCount");
                
                RequestCount dto = new RequestCount(serviceTypeID, requestCount);
                countByMonth.add(dto);
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
        return countByMonth;
    }

    
    public List<RequestCount> getRequestCountAll() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<RequestCount> countByMonth = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT ServiceTypeID, COUNT(*) AS RequestCount " +
                           "FROM ValuationRequest " +
                           "WHERE ServiceTypeID IN ('ST001', 'ST002', 'ST003') " +
                           "GROUP BY ServiceTypeID";

                stm = con.prepareStatement(query);
                rs = stm.executeQuery();
                
                while (rs.next()) {
                    String serviceTypeID = rs.getString("ServiceTypeID");
                int requestCount = rs.getInt("RequestCount");
                
                RequestCount dto = new RequestCount(serviceTypeID, requestCount);
                countByMonth.add(dto);
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
        return countByMonth;
    }
}
