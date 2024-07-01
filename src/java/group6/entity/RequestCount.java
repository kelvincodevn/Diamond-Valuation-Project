/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.entity;

/**
 *
 * @author Dell
 */
public class RequestCount {
    
    private String serviceTypeID;
    private int count;
    private int time;
    private double price;

    public RequestCount(String serviceTypeID, int count) {
        this.serviceTypeID = serviceTypeID;
        this.count = count;
    }

    public RequestCount(String serviceTypeID, int count, int time, double price) {
        this.serviceTypeID = serviceTypeID;
        this.count = count;
        this.time = time;
        this.price = price;
    }
    
    
    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    
    
    public String getServiceTypeID() {
        return serviceTypeID;
    }

    public void setServiceTypeID(String serviceTypeID) {
        this.serviceTypeID = serviceTypeID;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "{ " +
                "label: \"" + this.serviceTypeID + "\"" +
                ", value: " + this.count +
                " }";
    }

   public String testRs(){
       return String.valueOf(this.time);
   }
}


