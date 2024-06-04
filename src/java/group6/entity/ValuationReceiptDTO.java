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
public class ValuationReceiptDTO {

    private String receiptID;
    private Date receiptDate;
    private String customerID;
    private String platFormID;
    private String diaID;
    private String serviceTypeID;
    private Date estimatedCompletionDate;
    private float serviceFee;
    private float paymentReceived;
    private String paymentMethod;
    private String serviceAgreement;
    private String consultingStaffID;
    private String staffSignature;
    private String status;

    public ValuationReceiptDTO() {
    }

    public ValuationReceiptDTO(String receiptID, Date receiptDate, String customerID, String platFormID, String diaID, String serviceTypeID, Date estimatedCompletionDate, float serviceFee, float paymentReceived, String paymentMethod, String serviceAgreement, String consultingStaffID, String staffSignature, String status) {
        this.receiptID = receiptID;
        this.receiptDate = receiptDate;
        this.customerID = customerID;
        this.platFormID = platFormID;
        this.diaID = diaID;
        this.serviceTypeID = serviceTypeID;
        this.estimatedCompletionDate = estimatedCompletionDate;
        this.serviceFee = serviceFee;
        this.paymentReceived = paymentReceived;
        this.paymentMethod = paymentMethod;
        this.serviceAgreement = serviceAgreement;
        this.consultingStaffID = consultingStaffID;
        this.staffSignature = staffSignature;
        this.status = status;
    }

    public String getReceiptID() {
        return receiptID;
    }

    public void setReceiptID(String receiptID) {
        this.receiptID = receiptID;
    }

    public Date getReceiptDate() {
        return receiptDate;
    }

    public void setReceiptDate(Date receiptDate) {
        this.receiptDate = receiptDate;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getPlatFormID() {
        return platFormID;
    }

    public void setPlatFormID(String platFormID) {
        this.platFormID = platFormID;
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

    public Date getEstimatedCompletionDate() {
        return estimatedCompletionDate;
    }

    public void setEstimatedCompletionDate(Date estimatedCompletionDate) {
        this.estimatedCompletionDate = estimatedCompletionDate;
    }

    public float getServiceFee() {
        return serviceFee;
    }

    public void setServiceFee(float serviceFee) {
        this.serviceFee = serviceFee;
    }

    public float getPaymentReceived() {
        return paymentReceived;
    }

    public void setPaymentReceived(float paymentReceived) {
        this.paymentReceived = paymentReceived;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getServiceAgreement() {
        return serviceAgreement;
    }

    public void setServiceAgreement(String serviceAgreement) {
        this.serviceAgreement = serviceAgreement;
    }

    public String getConsultingStaffID() {
        return consultingStaffID;
    }

    public void setConsultingStaffID(String consultingStaffID) {
        this.consultingStaffID = consultingStaffID;
    }

    public String getStaffSignature() {
        return staffSignature;
    }

    public void setStaffSignature(String staffSignature) {
        this.staffSignature = staffSignature;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
