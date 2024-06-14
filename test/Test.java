
import group6.dao.DiamondInfoDAO;
import group6.dao.ServiceTypeCoverageDAO;
import group6.dao.ServiceTypeDAO;
import group6.entity.ServiceTypeDTO;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Dell
 */
public class Test {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        String rqID = "RQ01";
            String numericPart = rqID.substring(2);  // This removes the first two characters
            int IDconvert = Integer.parseInt(numericPart);
            System.out.println("The numeric part is: " + IDconvert);
    }
}
