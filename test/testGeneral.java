
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
        ValuationRequestDAO dao = new ValuationRequestDAO();
        System.out.println("All");
        List<RequestCount> list;
        list= dao.getRequestCount("2023-01","2025-01");
        for (RequestCount a : list) {
            System.out.println(a.toString());
        }
        System.out.println("2");
        
        list = dao.getRequestCount2(2023);
        for (RequestCount a : list) {
            System.out.println(a.testRs());
        }
//        System.out.println("Month");
//        list = dao.getRequestCountByMonth(2022, 6);
//        for (RequestCount a : list) {
//            System.out.println(a.toString());
//        }
//        System.out.println("Year");
//        list = dao.getRequestCountByYear(2023);
//        for (RequestCount a : list) {
//            System.out.println(a.toString());
//        }
    }
}
