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
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

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
                    float servicePrice = rs.getFloat("ServicePrice");
                    int executionTime = rs.getInt("ExecutionTime");
                    service = new ServiceTypeDTO(serviceTypeID, serviceName, servicePrice, executionTime);
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

    public boolean addService(ServiceTypeDTO service) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1.get connection
            con = DBUtil.getConnection();
            if (con != null) {
                //2.create SQL string
                String sql = "Insert Into ServiceType ("
                        + "ServiceTypeID, ServiceName, ServicePrice, ExecutionTime"
                        + ") Values ("
                        + "?, ?, ?, ?, ?"
                        + ")";
                //3.create stmt obj
                stm = con.prepareStatement(sql);
                stm.setString(1, service.getServiceTypeID());
                stm.setString(2, service.getServiceName());
                stm.setFloat(3, service.getServicePrice());
                stm.setInt(4, service.getExecutionTime());
                //4.execute query
                int effectRows = stm.executeUpdate();
                //5.process result
                if (effectRows > 0) {
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

    public boolean deleteService(String ID)
            throws SQLException, /*ClassNotFoundException,*/ NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1. get connection
            con = DBUtil.getConnection();
            if (con != null) {
                // 2. create SQL String
                String sql = "Delete From ServiceType "
                        + "Where ServiceTypeID = ?";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, ID);
                //4. Execute Query
                //insert, del, update luon luon dung execute update
                int effectRows = stm.executeUpdate();
                //5. Process result
                if (effectRows > 0) {
                    result = true;
                }
            } // end connection has been available

        } finally {
            if (stm != null) {
                stm.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }

    public boolean updateService(ServiceTypeDTO service) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1.get connection
            con = DBUtil.getConnection();
            if (con != null) {
                //2.create SQL string
                String sql = "Update ServiceType "
                        + "Set ServiceName = ? , ServicePrice = ?, ExecutionTime = ? "
                        + "Where ServiceTypeID = ? ";
                //3.create stmt obj
                stm = con.prepareStatement(sql);
                stm.setString(4, service.getServiceTypeID());
                stm.setString(1, service.getServiceName());
                stm.setFloat(2, service.getServicePrice());
                stm.setInt(3, service.getExecutionTime());
                //4.execute query
                int effectRows = stm.executeUpdate();
                //5.process result
                if (effectRows > 0) {
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

    public List<ServiceTypeDTO> serviceList() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        List<ServiceTypeDTO> serviceList = new ArrayList();
        ResultSet rs = null;
        try {
            //1.get connection
            con = DBUtil.getConnection();
            if (con != null) {
                //2.create SQL string
                String sql = "Select * from ServiceType";
                //3.create stmt obj
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String serviceTypeID = rs.getString("ServiceTypeID");
                    String serviceName = rs.getString("ServiceName");
                    float servicePrice = rs.getFloat("ServicePrice");
                    int executionTime = rs.getInt("ExecutionTime");
                    serviceList.add(new ServiceTypeDTO(serviceTypeID, serviceName
                           , servicePrice, executionTime));
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
        return serviceList;
    }
}

