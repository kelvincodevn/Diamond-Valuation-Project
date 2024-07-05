
import group6.dao.DiamondInfoDAO;
import group6.dao.ValuationRequestDAO;
import group6.entity.RequestCount;

import java.sql.SQLException;

import java.text.ParseException;

import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Dell
 */
public class testGeneral {

    public static void main(String[] args) throws SQLException, ClassNotFoundException, ParseException {
                DiamondInfoDAO dao = new DiamondInfoDAO();
                System.out.println(dao.checkDiamond("1624830795").getCarat());
    }
}
