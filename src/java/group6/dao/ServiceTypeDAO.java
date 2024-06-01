/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.ServiceTypeDTO;
import group6.entity.UsersDTO;
import group6.utils.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class ServiceTypeDAO {
    public ServiceTypeDTO viewService(String serviceTypeID) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ServiceTypeDTO service = new ServiceTypeDTO();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Select * from ServiceType where ServiceTypeID = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, serviceTypeID);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String serviceName = rs.getString("ServiceName");
                    String ServiceDescription = rs.getString("ServiceDescription");
                    float servicePrice = rs.getFloat("ServicePrice");
                    int executionTime = rs.getInt("ExecutionTime");             
                    service = new ServiceTypeDTO(serviceTypeID, serviceName, ServiceDescription, servicePrice, executionTime);
                    return service;
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
