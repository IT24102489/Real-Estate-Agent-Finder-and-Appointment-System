package model;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 * Property class representing a real estate property listing
 * with details matching the real estate form fields
 */
public class Property implements Serializable {

    private static final long serialVersionUID = 1L;

    // Basic property info
    private int id;
    private String title;
    private String propertyType; // apartment, house, villa, commercial, land, other
    private String listingType; // "sell" or "rent"

    // Property characteristics
    private String bedrooms; // "No Bedroom", "1 Bedroom", "2 Bedrooms", etc.
    private String bathrooms; // "No Bathroom", "1 Bathroom", "2 Bathrooms", etc.
    private double area; // in square feet
    private String description;

    // Location details
    private String address;
    private String city;
    private String state;
    private String zipCode;

    // Pricing information
    private double sellingPrice;
    private boolean priceNegotiable;

    // Rental specific fields
    private double monthlyRent;
    private double securityDeposit;
    private String leaseTerm; // "month", "6months", "1year", "2years"
    private LocalDate availableDate;

    // Amenities flags
    private boolean hasParking;
    private boolean hasSwimmingPool;
    private boolean hasGarden;
    private boolean hasSecurity;
    private boolean hasElevator;
    private boolean hasAirConditioning;
    private boolean hasGym;
    private boolean hasBalcony;

    // Media
    private List<String> imageUrls;

    // Default constructor
    public Property() {
        this.imageUrls = new ArrayList<>();
    }

    // Constructor with essential fields
    public Property(int id, String title, String propertyType, String listingType) {
        this();
        this.id = id;
        this.title = title;
        this.propertyType = propertyType;
        this.listingType = listingType;
    }

    // Full constructor for selling properties
    public Property(int id, String title, String propertyType, String bedrooms,
                    String bathrooms, double area, String description,
                    String address, String city, String state, String zipCode,
                    double sellingPrice, boolean priceNegotiable) {
        this();
        this.id = id;
        this.title = title;
        this.propertyType = propertyType;
        this.listingType = "sell";
        this.bedrooms = bedrooms;
        this.bathrooms = bathrooms;
        this.area = area;
        this.description = description;
        this.address = address;
        this.city = city;
        this.state = state;
        this.zipCode = zipCode;
        this.sellingPrice = sellingPrice;
        this.priceNegotiable = priceNegotiable;
    }

    // Full constructor for rental properties
    public Property(int id, String title, String propertyType, String bedrooms,
                    String bathrooms, double area, String description,
                    String address, String city, String state, String zipCode,
                    double monthlyRent, double securityDeposit, String leaseTerm,
                    LocalDate availableDate) {
        this();
        this.id = id;
        this.title = title;
        this.propertyType = propertyType;
        this.listingType = "rent";
        this.bedrooms = bedrooms;
        this.bathrooms = bathrooms;
        this.area = area;
        this.description = description;
        this.address = address;
        this.city = city;
        this.state = state;
        this.zipCode = zipCode;
        this.monthlyRent = monthlyRent;
        this.securityDeposit = securityDeposit;
        this.leaseTerm = leaseTerm;
        this.availableDate = availableDate;
    }

    // Getters and Setters for all fields
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(String propertyType) {
        this.propertyType = propertyType;
    }

    public String getListingType() {
        return listingType;
    }

    public void setListingType(String listingType) {
        this.listingType = listingType;
    }

    public String getBedrooms() {
        return bedrooms;
    }

    public void setBedrooms(String bedrooms) {
        this.bedrooms = bedrooms;
    }

    public String getBathrooms() {
        return bathrooms;
    }

    public void setBathrooms(String bathrooms) {
        this.bathrooms = bathrooms;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public double getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(double sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public boolean isPriceNegotiable() {
        return priceNegotiable;
    }

    public void setPriceNegotiable(boolean priceNegotiable) {
        this.priceNegotiable = priceNegotiable;
    }

    public double getMonthlyRent() {
        return monthlyRent;
    }

    public void setMonthlyRent(double monthlyRent) {
        this.monthlyRent = monthlyRent;
    }

    public double getSecurityDeposit() {
        return securityDeposit;
    }

    public void setSecurityDeposit(double securityDeposit) {
        this.securityDeposit = securityDeposit;
    }

    public String getLeaseTerm() {
        return leaseTerm;
    }

    public void setLeaseTerm(String leaseTerm) {
        this.leaseTerm = leaseTerm;
    }

    public LocalDate getAvailableDate() {
        return availableDate;
    }

    public void setAvailableDate(LocalDate availableDate) {
        this.availableDate = availableDate;
    }

    public boolean isHasParking() {
        return hasParking;
    }

    public void setHasParking(boolean hasParking) {
        this.hasParking = hasParking;
    }

    public boolean isHasSwimmingPool() {
        return hasSwimmingPool;
    }

    public void setHasSwimmingPool(boolean hasSwimmingPool) {
        this.hasSwimmingPool = hasSwimmingPool;
    }

    public boolean isHasGarden() {
        return hasGarden;
    }

    public void setHasGarden(boolean hasGarden) {
        this.hasGarden = hasGarden;
    }

    public boolean isHasSecurity() {
        return hasSecurity;
    }

    public void setHasSecurity(boolean hasSecurity) {
        this.hasSecurity = hasSecurity;
    }

    public boolean isHasElevator() {
        return hasElevator;
    }

    public void setHasElevator(boolean hasElevator) {
        this.hasElevator = hasElevator;
    }

    public boolean isHasAirConditioning() {
        return hasAirConditioning;
    }

    public void setHasAirConditioning(boolean hasAirConditioning) {
        this.hasAirConditioning = hasAirConditioning;
    }

    public boolean isHasGym() {
        return hasGym;
    }

    public void setHasGym(boolean hasGym) {
        this.hasGym = hasGym;
    }

    public boolean isHasBalcony() {
        return hasBalcony;
    }

    public void setHasBalcony(boolean hasBalcony) {
        this.hasBalcony = hasBalcony;
    }

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(List<String> imageUrls) {
        this.imageUrls = imageUrls;
    }

    public void addImageUrl(String imageUrl) {
        this.imageUrls.add(imageUrl);
    }

    /**
     * Returns the price based on the listing type
     * @return price as double
     */
    public double getPrice() {
        return "rent".equals(listingType) ? monthlyRent : sellingPrice;
    }

    /**
     * Sets the price based on the listing type
     * @param price the price to set
     */
    public void setPrice(double price) {
        if ("rent".equals(listingType)) {
            this.monthlyRent = price;
        } else {
            this.sellingPrice = price;
        }
    }

    /**
     * Helper method to set all amenities at once
     */
    public void setAmenities(boolean hasParking, boolean hasSwimmingPool, boolean hasGarden,
                             boolean hasSecurity, boolean hasElevator, boolean hasAirConditioning,
                             boolean hasGym, boolean hasBalcony) {
        this.hasParking = hasParking;
        this.hasSwimmingPool = hasSwimmingPool;
        this.hasGarden = hasGarden;
        this.hasSecurity = hasSecurity;
        this.hasElevator = hasElevator;
        this.hasAirConditioning = hasAirConditioning;
        this.hasGym = hasGym;
        this.hasBalcony = hasBalcony;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Property ID: ").append(id).append("\n");
        sb.append("Title: ").append(title).append("\n");
        sb.append("Type: ").append(propertyType).append(" (").append(listingType).append(")\n");
        sb.append("Location: ").append(address).append(", ").append(city).append(", ").append(state).append(" ").append(zipCode).append("\n");

        if ("sell".equals(listingType)) {
            sb.append("Price: Rs.").append(sellingPrice);
            sb.append(priceNegotiable ? " (Negotiable)" : " (Fixed)").append("\n");
        } else {
            sb.append("Monthly Rent: Rs.").append(monthlyRent).append("\n");
            sb.append("Security Deposit: Rs.").append(securityDeposit).append("\n");
            sb.append("Lease Term: ").append(leaseTerm).append("\n");
            sb.append("Available From: ").append(availableDate).append("\n");
        }

        return sb.toString();
    }
}