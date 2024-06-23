
import group6.dao.ValuationRequestDAO;
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

        SimpleDateFormat formatter = new SimpleDateFormat("EEE MM/dd/yyyy HH:mm:ss");
//        String a = "Tue Jun 18 2024 13:50:30 GMT+0700 (Indochina Time)";
//        java.util.Date date = formatter.parse(a.substring(0, 25));
        LocalDateTime currentDateTime = LocalDateTime.now();
        System.out.println("Current Date and Time: " + currentDateTime);
        Timestamp sqlTimestamp = Timestamp.valueOf(currentDateTime);
        System.out.println(sqlTimestamp);
//        SimpleDateFormat d = new SimpleDateFormat("EEE MM/dd/yyyy HH:mm:ss");
//        System.out.println(date);
////        String w = d.format(date);
////        System.out.println(w);
//        Timestamp sqlTimestamp = new Timestamp(date.getTime());
//        System.out.println(sqlTimestamp);
        boolean result = (new ValuationRequestDAO()).createRequest("04", "ST002");
        
        System.out.println(result);
        List<ValuationRequestDTO> a = new ValuationRequestDAO().viewAllforCus("04");
        for(ValuationRequestDTO z : a){
            System.out.println(z.toString());
        }
        
    }
}
