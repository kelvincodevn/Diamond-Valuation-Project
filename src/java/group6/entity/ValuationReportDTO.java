/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.entity;

import java.sql.Date;

/**
 *
 * @author DELL
 */
public class ValuationReportDTO {

    private String valuationID;
    private Date valuationDate;
    private String customerID;
    private String diaID;
    private String serviceTypeID;
    private boolean status;
    private float diamondPrice;
    private String image;
    private String staffSignature;

    public ValuationReportDTO() {
    }

    public ValuationReportDTO(String valuationID, Date valuationDate, String customerID, String diaID, String serviceTypeID, boolean status, float diamondPrice, String image, String staffSignature) {
        this.valuationID = valuationID;
        this.valuationDate = valuationDate;
        this.customerID = customerID;
        this.diaID = diaID;
        this.serviceTypeID = serviceTypeID;
        this.status = status;
        this.diamondPrice = diamondPrice;
        this.image = image;
        this.staffSignature = staffSignature;
    }

    public String getValuationID() {
        return valuationID;
    }

    public void setValuationID(String valuationID) {
        this.valuationID = valuationID;
    }

    public Date getValuationDate() {
        return valuationDate;
    }

    public void setValuationDate(Date valuationDate) {
        this.valuationDate = valuationDate;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getDiaID() {
        return diaID;
    }

    public void setDiaID(String diaID) {
        this.diaID = diaID;
    }

    public String getServiceTypeID() {
        return serviceTypeID;
    }

    public void setServiceTypeID(String serviceTypeID) {
        this.serviceTypeID = serviceTypeID;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public float getDiamondPrice() {
        return diamondPrice;
    }

    public void setDiamondPrice(float diamondPrice) {
        this.diamondPrice = diamondPrice;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStaffSignature() {
        return staffSignature;
    }

    public void setStaffSignature(String staffSignature) {
        this.staffSignature = staffSignature;
    }

}
