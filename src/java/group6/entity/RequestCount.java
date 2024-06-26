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

    public RequestCount(String serviceTypeID, int count) {
        this.serviceTypeID = serviceTypeID;
        this.count = count;
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

   
}


