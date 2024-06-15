
import group6.dao.ValuationRequestDAO;
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
        ValuationRequestDAO dao = new ValuationRequestDAO();
        System.out.println(dao.checkStep("RQ01"));
        System.out.println(dao.nextProcess("RQ01"));
        System.out.println(dao.checkStep("RQ01"));

    }
}
