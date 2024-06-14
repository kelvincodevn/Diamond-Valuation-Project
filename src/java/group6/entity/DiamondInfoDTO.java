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
public class DiamondInfoDTO {
    private String diaID;
    private String shape;
    private String origin;
    private float carat;
    private String measurements;

    private String color;
    private String clarity;
    private String cut;
    private String proportions;
    private String polish;
    private String symmetry;
    private String flourescence;

    public DiamondInfoDTO() {
    }

    public DiamondInfoDTO(String diaID, String shape, String origin, float carat,
            String measurements, String color, String clarity, String cut, 
            String proportions, String polish, String symmetry, String flourescence) {
        this.diaID = diaID;
        this.shape = shape;
        this.origin = origin;
        this.carat = carat;
        this.measurements = measurements;
        this.color = color;
        this.clarity = clarity;
        this.cut = cut;
        this.proportions = proportions;
        this.polish = polish;
        this.symmetry = symmetry;
        this.flourescence = flourescence;
    }

    public String getDiaID() {
        return diaID;
    }

    public void setDiaID(String diaID) {
        this.diaID = diaID;
    }

    public String getShape() {
        return shape;
    }

    public void setShape(String shape) {
        this.shape = shape;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public float getCarat() {
        return carat;
    }

    public void setCarat(float carat) {
        this.carat = carat;
    }

    public String getMeasurements() {
        return measurements;
    }

    public void setMeasurements(String measurements) {
        this.measurements = measurements;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getClarity() {
        return clarity;
    }

    public void setClarity(String clarity) {
        this.clarity = clarity;
    }

    public String getCut() {
        return cut;
    }

    public void setCut(String cut) {
        this.cut = cut;
    }

    public String getProportions() {
        return proportions;
    }

    public void setProportions(String proportions) {
        this.proportions = proportions;
    }

    public String getPolish() {
        return polish;
    }

    public void setPolish(String polish) {
        this.polish = polish;
    }

    public String getSymmetry() {
        return symmetry;
    }

    public void setSymmetry(String symmetry) {
        this.symmetry = symmetry;
    }

    public String getFlourescence() {
        return flourescence;
    }

    public void setFlourescence(String flourescence) {
        this.flourescence = flourescence;
    }
    
    
}
