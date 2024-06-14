/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.entity;

import java.util.Date;

public class ValuationRequestDTO {

    private String requestID;
    private String customerID;
//    private String customerName;
//    private String customerEmail;
    private String processID;
    private String diamondID;
    private boolean status;

    private Date signedDate;
    private String serviceTypeID;
//    private String serviceName;
//    private double servicePrice;
//    private int serviceExecutionTime;

    public ValuationRequestDTO(String requestID, String customerID,
            String processID, String diamondID, boolean status,
            Date signedDate, String serviceTypeID) {
        this.requestID = requestID;
        this.customerID = customerID;
        this.processID = processID;
        this.diamondID = diamondID;
        this.status = status;
        this.signedDate = signedDate;
        this.serviceTypeID = serviceTypeID;
    }

    // Getters and setters for all fields
    public String getRequestID() {
        return requestID;
    }

    public void setRequestID(String requestID) {
        this.requestID = requestID;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getProcessID() {
        return processID;
    }

    public void setProcessID(String processID) {
        this.processID = processID;
    }

    public String getDiamondID() {
        return diamondID;
    }

    public void setDiamondID(String diamondID) {
        this.diamondID = diamondID;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getSignedDate() {
        return signedDate;
    }

    public void setSignedDate(Date signedDate) {
        this.signedDate = signedDate;
    }

    public String getServiceTypeID() {
        return serviceTypeID;
    }

    public void setServiceTypeID(String serviceTypeID) {
        this.serviceTypeID = serviceTypeID;
    }

}
//
//
//
//
//
///**
// *
// * @author DELL
// */
//public class ValuationRequestDTO {
//    private String requestID;
//    private String customerID;
//    private String diaID;
//    private String status;
//    private String customerDeclaration;
//    private Date SignedDate;
//    private String serviceTypeID;
//
//    public ValuationRequestDTO() {
//    }
//    
//    public ValuationRequestDTO(String requestID, String customerID, String diaID, String status, String customerDeclaration, Date SignedDate, String serviceTypeID) {
//        this.requestID = requestID;
//        this.customerID = customerID;
//        this.diaID = diaID;
//        this.status = status;
//        this.customerDeclaration = customerDeclaration;
//        this.SignedDate = SignedDate;
//        this.serviceTypeID = serviceTypeID;
//    }
//
//    public String getRequestID() {
//        return requestID;
//    }
//
//    public void setRequestID(String requestID) {
//        this.requestID = requestID;
//    }
//
//    public String getCustomerID() {
//        return customerID;
//    }
//
//    public void setCustomerID(String customerID) {
//        this.customerID = customerID;
//    }
//
//    public String getDiaID() {
//        return diaID;
//    }
//
//    public void setDiaID(String diaID) {
//        this.diaID = diaID;
//    }
//
//    public String getStatus() {
//        return status;
//    }
//
//    public void setStatus(String status) {
//        this.status = status;
//    }
//
//    public String getCustomerDeclaration() {
//        return customerDeclaration;
//    }
//
//    public void setCustomerDeclaration(String customerDeclaration) {
//        this.customerDeclaration = customerDeclaration;
//    }
//
//    public Date getSignedDate() {
//        return SignedDate;
//    }
//
//    public void setSignedDate(Date SignedDate) {
//        this.SignedDate = SignedDate;
//    }
//
//    public String getServiceTypeID() {
//        return serviceTypeID;
//    }
//
//    public void setServiceTypeID(String serviceTypeID) {
//        this.serviceTypeID = serviceTypeID;
//    }
//    
//    
//}
