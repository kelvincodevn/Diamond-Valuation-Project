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
public class ValuationRequestDTO {
    private String requestID;
    private String customerID;
    private String diaID;
    private String status;
    private Date created;
    private Date lastUpdate;
    private String serviceTypeID;
    private String stateID;

    public ValuationRequestDTO(String requestID, String customerID, String diaID, String status, Date created, Date lastUpdate, String serviceTypeID, String stateID) {
        this.requestID = requestID;
        this.customerID = customerID;
        this.diaID = diaID;
        this.status = status;
        this.created = created;
        this.lastUpdate = lastUpdate;
        this.serviceTypeID = serviceTypeID;
        this.stateID = stateID;
    }

    
    
    /**
     * @return the requestID
     */
    public String getRequestID() {
        return requestID;
    }

    /**
     * @param requestID the requestID to set
     */
    public void setRequestID(String requestID) {
        this.requestID = requestID;
    }

    /**
     * @return the customerID
     */
    public String getCustomerID() {
        return customerID;
    }

    /**
     * @param customerID the customerID to set
     */
    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    /**
     * @return the diaID
     */
    public String getDiaID() {
        return diaID;
    }

    /**
     * @param diaID the diaID to set
     */
    public void setDiaID(String diaID) {
        this.diaID = diaID;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the created
     */
    public Date getCreated() {
        return created;
    }

    /**
     * @param created the created to set
     */
    public void setCreated(Date created) {
        this.created = created;
    }

    /**
     * @return the lastUpdate
     */
    public Date getLastUpdate() {
        return lastUpdate;
    }

    /**
     * @param lastUpdate the lastUpdate to set
     */
    public void setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    /**
     * @return the serviceTypeID
     */
    public String getServiceTypeID() {
        return serviceTypeID;
    }

    /**
     * @param serviceTypeID the serviceTypeID to set
     */
    public void setServiceTypeID(String serviceTypeID) {
        this.serviceTypeID = serviceTypeID;
    }

    /**
     * @return the stateID
     */
    public String getStateID() {
        return stateID;
    }

    /**
     * @param stateID the stateID to set
     */
    public void setStateID(String stateID) {
        this.stateID = stateID;
    }

    @Override // de test thoi
    public String toString() {
        return "ValuationRequestDTO{" + "requestID=" + requestID + ", customerID=" + customerID + ","
                + " diaID=" + diaID + ", status=" + status + ", created=" + created + ", lastUpdate="
                + lastUpdate + ", serviceTypeID=" + serviceTypeID + ", stateID=" + stateID + '}';
    }



    
}
