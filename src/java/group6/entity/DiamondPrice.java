package group6.entity;

public class DiamondPrice {

    private String caratWeight;
    private String pricePerCarat;
    private String totalPrice;
    private String diamondLink;

    public DiamondPrice(String caratWeight, String pricePerCarat, String totalPrice, String diamondLink) {
        this.caratWeight = caratWeight;
        this.pricePerCarat = pricePerCarat;
        this.totalPrice = totalPrice;
        this.diamondLink = diamondLink;
    }

    public String getCaratWeight() {
        return caratWeight;
    }

    public String getPricePerCarat() {
        return pricePerCarat;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public String getDiamondLink() {
        return diamondLink;
    }

    public double getLeftSidePrice() {
        String[] priceRange = pricePerCarat.split("–");
        return Double.parseDouble(priceRange[0].trim().replaceAll("[$,]", ""));
    }
}
