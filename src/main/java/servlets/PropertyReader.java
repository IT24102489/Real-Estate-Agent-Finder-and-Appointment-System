package servlets;

import model.Property;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;

public class PropertyReader {

    // The directory where property text files are stored
    private static final String DATA_DIRECTORY = "WEB-INF/data/";
    private static final String PROPERTY_FILE = "properties.txt";

    /**
     * Read properties from the text file and return as a list
     */
    public static List<Property> getPropertiesFromFile(String contextPath) {
        List<Property> properties = new ArrayList<>();

        try {
            File file = new File(contextPath + DATA_DIRECTORY + PROPERTY_FILE);
            if (!file.exists()) {
                System.out.println("Properties file not found at: " + file.getAbsolutePath());
                return properties;  // Return empty list if file doesn't exist
            }

            try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
                String line;
                Property currentProperty = null;

                while ((line = reader.readLine()) != null) {
                    if (line.startsWith("PROPERTY ID:")) {
                        // Start of a new property
                        if (currentProperty != null) {
                            properties.add(currentProperty);
                        }

                        int id = Integer.parseInt(line.substring("PROPERTY ID:".length()).trim());
                        String title = reader.readLine().substring("TITLE:".length()).trim();
                        String propertyType = reader.readLine().substring("PROPERTY TYPE:".length()).trim();
                        String listingType = reader.readLine().substring("LISTING TYPE:".length()).trim();

                        currentProperty = new Property(id, title, propertyType, listingType);

                    } else if (currentProperty != null) {
                        // Process property details
                        if (line.startsWith("BEDROOMS:")) {
                            currentProperty.setBedrooms(line.substring("BEDROOMS:".length()).trim());
                        } else if (line.startsWith("BATHROOMS:")) {
                            currentProperty.setBathrooms(line.substring("BATHROOMS:".length()).trim());
                        } else if (line.startsWith("AREA:")) {
                            String areaStr = line.substring("AREA:".length()).trim();
                            if (!areaStr.isEmpty()) {
                                currentProperty.setArea(Double.parseDouble(areaStr));
                            }
                        } else if (line.startsWith("DESCRIPTION:")) {
                            currentProperty.setDescription(line.substring("DESCRIPTION:".length()).trim());
                        } else if (line.startsWith("ADDRESS:")) {
                            currentProperty.setAddress(line.substring("ADDRESS:".length()).trim());
                        } else if (line.startsWith("CITY:")) {
                            currentProperty.setCity(line.substring("CITY:".length()).trim());
                        } else if (line.startsWith("STATE:")) {
                            currentProperty.setState(line.substring("STATE:".length()).trim());
                        } else if (line.startsWith("ZIP CODE:")) {
                            currentProperty.setZipCode(line.substring("ZIP CODE:".length()).trim());
                        } else if (line.startsWith("SELLING PRICE:")) {
                            String priceStr = line.substring("SELLING PRICE:".length()).trim();
                            if (!priceStr.isEmpty()) {
                                currentProperty.setSellingPrice(Double.parseDouble(priceStr));
                            }
                        } else if (line.startsWith("MONTHLY RENT:")) {
                            String rentStr = line.substring("MONTHLY RENT:".length()).trim();
                            if (!rentStr.isEmpty()) {
                                currentProperty.setMonthlyRent(Double.parseDouble(rentStr));
                            }
                        } else if (line.startsWith("SECURITY DEPOSIT:")) {
                            String depositStr = line.substring("SECURITY DEPOSIT:".length()).trim();
                            if (!depositStr.isEmpty()) {
                                currentProperty.setSecurityDeposit(Double.parseDouble(depositStr));
                            }
                        } else if (line.startsWith("LEASE TERM:")) {
                            currentProperty.setLeaseTerm(line.substring("LEASE TERM:".length()).trim());
                        } else if (line.startsWith("AVAILABLE DATE:")) {
                            String dateStr = line.substring("AVAILABLE DATE:".length()).trim();
                            if (!dateStr.isEmpty()) {
                                try {
                                    currentProperty.setAvailableDate(LocalDate.parse(dateStr));
                                } catch (DateTimeParseException e) {
                                    System.out.println("Error parsing date: " + dateStr);
                                }
                            }
                        } else if (line.startsWith("AMENITIES:")) {
                            String amenities = line.substring("AMENITIES:".length()).trim();
                            parseAmenities(currentProperty, amenities);
                        } else if (line.startsWith("IMAGE:")) {
                            String imageUrl = line.substring("IMAGE:".length()).trim();
                            if (!imageUrl.isEmpty()) {
                                currentProperty.addImageUrl(imageUrl);
                            }
                        }
                    }
                }

                // Add the last property if exists
                if (currentProperty != null) {
                    properties.add(currentProperty);
                }
            }

        } catch (IOException e) {
            System.out.println("Error reading properties file: " + e.getMessage());
            e.printStackTrace();
        }

        return properties;
    }

    /**
     * Parse amenities string and set the corresponding property fields
     */
    private static void parseAmenities(Property property, String amenitiesStr) {
        property.setHasParking(amenitiesStr.contains("Parking"));
        property.setHasSwimmingPool(amenitiesStr.contains("Swimming Pool"));
        property.setHasGarden(amenitiesStr.contains("Garden"));
        property.setHasSecurity(amenitiesStr.contains("Security"));
        property.setHasElevator(amenitiesStr.contains("Elevator"));
        property.setHasAirConditioning(amenitiesStr.contains("Air Conditioning"));
        property.setHasGym(amenitiesStr.contains("Gym"));
        property.setHasBalcony(amenitiesStr.contains("Balcony"));
    }
}
