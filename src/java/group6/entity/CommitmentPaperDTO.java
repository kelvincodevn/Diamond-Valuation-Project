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
public class CommitmentPaperDTO {

    private String commitmentID;
    private String managerID;
    private Date createDate;
    private String statementOfCommitment;
    private String valuationID;
    private String customerID;
    private String customerSignature;
    private boolean statusOfApprove;

    public CommitmentPaperDTO() {
    }

    public CommitmentPaperDTO(String commitmentID, String managerID, Date createDate, String statementOfCommitment, String valuationID, String customerID, String customerSignature, boolean statusOfApprove) {
        this.commitmentID = commitmentID;
        this.managerID = managerID;
        this.createDate = createDate;
        this.statementOfCommitment = statementOfCommitment;
        this.valuationID = valuationID;
        this.customerID = customerID;
        this.customerSignature = customerSignature;
        this.statusOfApprove = statusOfApprove;
    }

    public String getCommitmentID() {
        return commitmentID;
    }

    public void setCommitmentID(String commitmentID) {
        this.commitmentID = commitmentID;
    }

    public String getManagerID() {
        return managerID;
    }

    public void setManagerID(String managerID) {
        this.managerID = managerID;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getStatementOfCommitment() {
        return statementOfCommitment;
    }

    public void setStatementOfCommitment(String statementOfCommitment) {
        this.statementOfCommitment = statementOfCommitment;
    }

    public String getValuationID() {
        return valuationID;
    }

    public void setValuationID(String valuationID) {
        this.valuationID = valuationID;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getCustomerSignature() {
        return customerSignature;
    }

    public void setCustomerSignature(String customerSignature) {
        this.customerSignature = customerSignature;
    }

    public boolean isStatusOfApprove() {
        return statusOfApprove;
    }

    public void setStatusOfApprove(boolean statusOfApprove) {
        this.statusOfApprove = statusOfApprove;
    }

}
