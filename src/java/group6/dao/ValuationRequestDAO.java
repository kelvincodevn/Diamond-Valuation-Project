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
     
    public List<ValuationRequestDTO> printAllValuationRequest() throws SQLException, ClassNotFoundException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<ValuationRequestDTO> listRequest = new ArrayList<>();
        try {
            con=DBUtil.getConnection();
            if(con!=null){
                String query=" Select * from ValuationRequest";
                stm = con.prepareStatement(query);               
                rs=stm.executeQuery();
                while(rs.next()){
                    String requestID = rs.getString("RequestID");
                    String customerID = rs.getString("CustomerID");
                    String diaID = rs.getString("DiaID");
                    String status = rs.getString("Status");  
                    String customerDeclaration = rs.getString("CustomerDeclaration");
                    Date signedDate= rs.getDate("SignedDate");
                    String serviceTypeID = rs.getString("ServiceTypeID");
                    listRequest.add(new ValuationRequestDTO(requestID, customerID, diaID, status, customerDeclaration, signedDate, serviceTypeID));
                }
            }
            
        } finally {
            if (rs!=null) rs.close();
            if(stm!=null) stm.close();
            if(con!=null) con.close();
         }
        return listRequest;
    }
}
