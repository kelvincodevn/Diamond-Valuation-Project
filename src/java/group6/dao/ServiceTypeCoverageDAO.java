/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.ServiceTypeCoverageDTO;
import group6.entity.ServiceTypeDTO;
import group6.utils.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author DELL
 */
public class ServiceTypeCoverageDAO {

    public List<ServiceTypeCoverageDTO> serviceListCoverage(String serviceTypeID) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        List<ServiceTypeCoverageDTO> serviceListTypeCoverage = new ArrayList();
        ResultSet rs = null;
        try {
            //1.get connection
            con = DBUtil.getConnection();
            if (con != null) {
                //2.create SQL string
                String sql = "Select * from ServiceTypeCoverage where ServiceTypeID = ?";
                //3.create stmt obj
                stm = con.prepareStatement(sql);
                stm.setString(1, serviceTypeID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String serviceTypeCoverageID = rs.getString("ServiceTypeCoverageID");
                    String includedService = rs.getString("IncludedService");
                    serviceListTypeCoverage.add(new ServiceTypeCoverageDTO(serviceTypeCoverageID, serviceTypeID, includedService));
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
        return serviceListTypeCoverage;
    }

        public boolean edit(String coverID, String changes) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
//        List<ServiceTypeCoverageDTO> serviceListTypeCoverage = new ArrayList();
        boolean result=false;
        try {
            //1.get connection
            con = DBUtil.getConnection();
            if (con != null) {
                //2.create SQL string
                String sql = "Update ServiceTypeCoverage "
                        + "set IncludedService = ? "
                        + "where ServiceTypeCoverageID = ? ";
                //3.create stmt obj
                stm = con.prepareStatement(sql);
                stm.setString(1, changes);
                stm.setString(2, coverID);
                //4. Execute Query
                //insert, del, update luon luon dung execute update
                int effectRows = stm.executeUpdate();
                //5. Process result
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

    public int coverAmountString(String serviceTypeID) throws SQLException, ClassNotFoundException {
        return serviceListCoverage(serviceTypeID).size();
    }
}
