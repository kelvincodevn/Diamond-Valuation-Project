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
public class ServiceTypeCoverageDTO {

    private String serviceTypeCoverageID;
    private String serviceTypeID;
    private String includedService;
    //private String detailedDescitption;

    public ServiceTypeCoverageDTO() {
    }

    public ServiceTypeCoverageDTO(String serviceTypeCoverageID, String serviceTypeID, String includedService) {
        this.serviceTypeCoverageID = serviceTypeCoverageID;
        this.serviceTypeID = serviceTypeID;
        this.includedService = includedService;
    }

    public String getServiceTypeCoverageID() {
        return serviceTypeCoverageID;
    }

    public void setServiceTypeCoverageID(String serviceTypeCoverageID) {
        this.serviceTypeCoverageID = serviceTypeCoverageID;
    }

    public String getServiceTypeID() {
        return serviceTypeID;
    }

    public void setServiceTypeID(String serviceTypeID) {
        this.serviceTypeID = serviceTypeID;
    }

    public String getIncludedService() {
        return includedService;
    }

    public void setIncludedService(String includedService) {
        this.includedService = includedService;
    }

}
