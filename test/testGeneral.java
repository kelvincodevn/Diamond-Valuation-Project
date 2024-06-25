
import group6.dao.ValuationRequestDAO;
import group6.entity.RequestCount;
import group6.entity.ValuationRequestDTO;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
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
//        ValuationRequestDAO dao = new ValuationRequestDAO();
//        System.out.println("All");
//        List<RequestCount> list;
//        list= dao.getRequestCountAll();
//        for (RequestCount a : list) {
//            System.out.println(a.toString());
//        }
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
    int a = 180* 3/10;
        System.out.println(a);
    }
}
