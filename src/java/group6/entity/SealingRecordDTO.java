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
public class SealingRecordDTO {
    private String sealingID;
    private String diaID;
    private String managerID;
    private Date createdDate;
    private String customerID;
    private boolean statusOfApprove;

    public SealingRecordDTO() {
    }

    public SealingRecordDTO(String sealingID, String diaID, String managerID, Date createdDate, String customerID, boolean statusOfApprove) {
        this.sealingID = sealingID;
        this.diaID = diaID;
        this.managerID = managerID;
        this.createdDate = createdDate;
        this.customerID = customerID;
        this.statusOfApprove = statusOfApprove;
    }

    public String getSealingID() {
        return sealingID;
    }

    public void setSealingID(String sealingID) {
        this.sealingID = sealingID;
    }

    public String getDiaID() {
        return diaID;
    }

    public void setDiaID(String diaID) {
        this.diaID = diaID;
    }

    public String getManagerID() {
        return managerID;
    }

    public void setManagerID(String managerID) {
        this.managerID = managerID;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public boolean isStatusOfApprove() {
        return statusOfApprove;
    }

    public void setStatusOfApprove(boolean statusOfApprove) {
        this.statusOfApprove = statusOfApprove;
    }
    
    
}
