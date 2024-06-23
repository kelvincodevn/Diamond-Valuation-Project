/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import java.security.MessageDigest;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author DELL
 */
public class PasswordHashing {
    public static String toSHA1(String str) {
        String salt = "ryewryiwecbdsfdsncdjefinvvnsxijci:hhf@";
        String result = null;
        str = str + salt;
        try{
            byte[]dataBytes = str.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            result = Base64.encodeBase64String(md.digest(dataBytes));
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
