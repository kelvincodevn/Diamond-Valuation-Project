/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import group6.entity.RoleDTO;
import group6.entity.UsersDTO;
import group6.utils.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class RegistrationDAO {

    public UsersDTO checkLogin(String userName, String password) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        UsersDTO userInfo = new UsersDTO();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM Users WHERE UserName = ? AND Password = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, userName);
                stm.setString(2, password);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String userID = rs.getString("UserID");
                    String firstName = rs.getString("FirstName");
                    String lastName = rs.getString("LastName");
                    String email = rs.getString("Email");
                    String phoneNumber = rs.getString("PhoneNumber");
                    String gender = rs.getString("Gender");
                    String roleID = rs.getString("RoleID");
                    boolean status = rs.getBoolean("Status");
                    userInfo = new UsersDTO(userID, userName, email, password, firstName, lastName, phoneNumber, status, roleID);
                    return userInfo;
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

    public RoleDTO checkUserRole(String roleID) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        RoleDTO role = new RoleDTO();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Select * from Role where RoleID = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, roleID);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String roleName = rs.getString("RoleName");
                    String roleDescription = rs.getString("RoleDescription");
                    role = new RoleDTO(roleID, roleName, roleDescription);
                    return role;
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
        return null;
    }

    //createUserID sử dụng cho việc sign up
    public String createUserID() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int count = 0;
        String userID = null;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM Users";
                stm = con.prepareStatement(query);
                rs = stm.executeQuery();
                while (rs.next()) {
                    userID = rs.getString("userid");
                }
                int userIDConvert = Integer.parseInt(userID);
                userIDConvert++;
                if (userIDConvert >= 1 && userIDConvert <= 9) {
                    userID = "0" + userIDConvert;
                } else {
                    userID = Integer.toString(userIDConvert);
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
        return userID;
    }

    public boolean checkAccountExisted(String userName) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM Users WHERE UserName = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, userName);
                rs = stm.executeQuery();
                if (rs.next()) {
                    return true;
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
        return false;
    }

    public boolean signUpUser(String userID, String userName, String password, String firstName, String lastName, String email, String phoneNumber, String gender) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "INSERT INTO Users (UserID, UserName, Email, Password, FirstName, LastName, PhoneNumber, Gender, Status, RoleID) VALUES\n"
                        + "(?, ?, ?, ?, ?, ?, ?, ?, 1, ?)";
                stm = con.prepareStatement(query);
                stm.setString(1, userID);
                stm.setString(2, userName);
                stm.setString(3, email);
                stm.setString(4, password);
                stm.setString(5, firstName);
                stm.setString(6, lastName);
                stm.setString(7, phoneNumber);
                stm.setString(8, gender);
                stm.setString(9, "C01");
                int affectedRow = stm.executeUpdate();
                return affectedRow == 1;
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

    //crud account (update info cho admin) only
    public boolean updateInfoUser(String userID, String username, String password, String firstName, String lastName, String email, String phoneNumber) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Update users set UserName = ?, email = ?,  FirstName = ?, LastName = ?, PhoneNumber = ? where UserID = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, username);
                stm.setString(2, email);
                stm.setString(3, firstName);
                stm.setString(4, lastName);
                stm.setString(5, phoneNumber);
                stm.setString(6, userID);
                int affectedRow = stm.executeUpdate();
                return affectedRow == 1;
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

    //change password for admin và các role khác
    public boolean changePassword(String userID, String password) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Update users set Password = ? where UserID = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, password);
                stm.setString(2, userID);
                int affectedRow = stm.executeUpdate();
                return affectedRow == 1;
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

    public UsersDTO viewProfile(String userID) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        UsersDTO userInfo = new UsersDTO();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "select * from Users where UserID = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, userID);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String userName = rs.getString("UserName");
                    String firstName = rs.getString("FirstName");
                    String lastName = rs.getString("LastName");
                    String email = rs.getString("Email");
                    String password = rs.getString("Password");
                    String phoneNumber = rs.getString("PhoneNumber");
                    String gender = rs.getString("Gender");
                    String roleID = rs.getString("RoleID");
                    boolean status = rs.getBoolean("Status");
                    userInfo = new UsersDTO(userID, userName, email, password, firstName, lastName, phoneNumber, status, roleID);
                    return userInfo;
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

//    public UsersDTO getUserByUserID (String userID) throws SQLException, ClassNotFoundException{
//        Connection con = null;
//        PreparedStatement stm = null;
//        ResultSet rs = null;
//        UsersDTO userInfo = new UsersDTO();
//        try {
//            con=DBUtil.getConnection();
//            if(con!=null){
//                String query="SELECT * FROM registration WHERE userid = ?";
//                stm = con.prepareStatement(query);
//                stm.setString(1, userID);
//                rs=stm.executeQuery();
//                if(rs.next()){
//                    String userName = rs.getString("username");
//                    String password = rs.getString("password");
//                    String fullName = rs.getString("fullname");  
//                    String email = rs.getString("email");
//                    String phoneNumber= rs.getString("phonenumber");
//                    boolean isAdmin = rs.getBoolean("isAdmin");
//                    userInfo = new RegistrationDTO(userID, userName, password, fullName, email, phoneNumber, isAdmin);
//                    return userInfo;
//                }
//                return null;
//            }
//            
//        } finally {
//            if (rs!=null) rs.close();
//            if(stm!=null) stm.close();
//            if(con!=null) con.close();
//         }
//        return null;
//    }
    public List<UsersDTO> printAllCustomer() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<UsersDTO> userList = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = " Select * from Users where roleID = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, "C01");
                rs = stm.executeQuery();
                while (rs.next()) {
                    String userID = rs.getString("UserID");
                    String firstName = rs.getString("FirstName");
                    String lastName = rs.getString("LastName");
                    String email = rs.getString("Email");
                    String phoneNumber = rs.getString("PhoneNumber");
                    String gender = rs.getString("Gender");
                    String roleID = rs.getString("RoleID");
                    boolean status = rs.getBoolean("Status");
                    userList.add(new UsersDTO(userID, lastName, email, lastName, firstName, lastName, phoneNumber, status, roleID));
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
        return userList;
    }

    public List<UsersDTO> printAllStaff() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<UsersDTO> staffList = new ArrayList<>();
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "SELECT * FROM Users WHERE RoleID IN ('R03', 'R01', 'R02')";
                stm = con.prepareStatement(query);
//                stm.setString(1, "R01");
//                stm.setString(2, "R02");
//                stm.setString(3, "R03");
                rs = stm.executeQuery();
                while (rs.next()) {
                    String userID = rs.getString("UserID");
                    String firstName = rs.getString("FirstName");
                    String lastName = rs.getString("LastName");
                    String email = rs.getString("Email");
                    String phoneNumber = rs.getString("PhoneNumber");
                    String gender = rs.getString("Gender");
                    String roleID = rs.getString("RoleID");
                    boolean status = rs.getBoolean("Status");
                    staffList.add(new UsersDTO(userID, lastName, email, lastName, firstName, lastName, phoneNumber, status, roleID));
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
        return staffList;
    }
    
      public boolean deleteStaff(String staffID)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        //khi nào mà cần get dữ liệu về thì xài ResultSet
        try {
            con = DBUtil.getConnection();
            if (con != null) {
                String query = "Delete from Users where UserID = ?";
                stm = con.prepareStatement(query);
                stm.setString(1, staffID);
                int affectedRow = stm.executeUpdate();
                return affectedRow > 0;
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
}
