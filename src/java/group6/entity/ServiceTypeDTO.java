/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.entity;

/**
 *
 * @author DELL
 */
public class ServiceTypeDTO {

    private String serviceTypeID;
    private String serviceName;
    //private String serviceDescription;
    private float servicePrice;
    private int executionTime;

    public ServiceTypeDTO() {
    }

    public ServiceTypeDTO(String serviceTypeID, String serviceName, float servicePrice, int executionTime) {
        this.serviceTypeID = serviceTypeID;
        this.serviceName = serviceName;
        this.servicePrice = servicePrice;
        this.executionTime = executionTime;
    }

    public String getServiceTypeID() {
        return serviceTypeID;
    }

    public void setServiceTypeID(String serviceTypeID) {
        this.serviceTypeID = serviceTypeID;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public float getServicePrice() {
        return servicePrice;
    }

    public void setServicePrice(float servicePrice) {
        this.servicePrice = servicePrice;
    }

    public int getExecutionTime() {
        return executionTime;
    }

    public void setExecutionTime(int executionTime) {
        this.executionTime = executionTime;
    }

}
