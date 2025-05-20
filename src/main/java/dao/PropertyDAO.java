package dao;

import model.Property;
import model.PropertyBST;
import java.io.*;
import java.util.*;

/**
 * Data Access Object for Property management
 * Handles saving and retrieving Property objects from files
 */
public class PropertyDAO {
    private final String FILE_NAME = "properties.dat";  // Binary serialized data
    private final String TEXT_FILE_NAME = "properties.txt";  // Human-readable text file
    private PropertyBST propertyBST;

    public PropertyDAO() {
        propertyBST = new PropertyBST();
        // Initialize BST with existing properties
        List<Property> properties = getAllProperties();
        for (Property property : properties) {
            propertyBST.insert(property);
        }
    }

    /**
     * Retrieve all properties from the data file
     * @return List of Property objects
     */
    public List<Property> getAllProperties() {
        List<Property> properties = new ArrayList<>();
        File file = new File(FILE_NAME);
        
        try {
            if (!file.exists()) {
                // Create the file and directory if they don't exist
                file.getParentFile().mkdirs();
                file.createNewFile();
                // Initialize with empty list
                saveAllProperties(properties);
                System.out.println("Created new properties file");
                return properties;
            }
            
            try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(FILE_NAME))) {
                properties = (List<Property>) ois.readObject();
                System.out.println("Retrieved " + properties.size() + " properties from " + FILE_NAME);
            }
        } catch (Exception e) {
            System.out.println("Error reading properties from file: " + e.getMessage());
            e.printStackTrace();
        }
        return properties;
    }

    /**
     * Get all properties sorted by price using BST
     * @return List of Property objects sorted by price
     */
    public List<Property> getAllPropertiesSorted() {
        return propertyBST.getAllPropertiesSorted();
    }

    /**
     * Save all properties to the binary data file
     * @param list List of Property objects to save
     */
    public void saveAllProperties(List<Property> list) {
        try {
            File file = new File(FILE_NAME);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            
            try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(FILE_NAME))) {
                oos.writeObject(list);
                System.out.println("Successfully saved " + list.size() + " properties to " + FILE_NAME);
            }
        } catch (IOException e) {
            System.err.println("Error saving properties to file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    /**
     * Save properties as human-readable text
     * @param list List of Property objects to save as text
     */
    public void saveAllPropertiesAsText(List<Property> list) {
        try (PrintWriter writer = new PrintWriter(new FileWriter(TEXT_FILE_NAME))) {
            for (Property p : list) {
                writer.println(p.toString());
                writer.println("----------------------------------------");
            }
            System.out.println("Saved to " + TEXT_FILE_NAME + " successfully!");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Add a new property to the data store
     * @param property Property object to add
     */
    public void addProperty(Property property) {
        List<Property> list = getAllProperties();

        // Check if ID was provided, if not generate a new one
        if (property.getId() <= 0) {
            property.setId(generateNewId(list));
        } else {
            // Prevent adding a property with a duplicate ID
            for (Property existing : list) {
                if (existing.getId() == property.getId()) {
                    System.out.println("Property with ID " + property.getId() + " already exists.");
                    return;
                }
            }
        }

        list.add(property);
        propertyBST.insert(property);  // Add to BST
        saveAllProperties(list);
        System.out.println("Property added: " + property.getId() + ", Total properties: " + list.size());
    }

    /**
     * Generate a new unique ID for a property
     * @param list List of existing properties
     * @return New unique ID
     */
    private int generateNewId(List<Property> list) {
        int maxId = 0;
        for (Property p : list) {
            if (p.getId() > maxId) {
                maxId = p.getId();
            }
        }
        return maxId + 1;
    }

    /**
     * Delete a property by ID
     * @param id ID of the property to delete
     * @return true if property was deleted, false otherwise
     */
    public boolean deleteProperty(int id) {
        List<Property> list = getAllProperties();
        Property propertyToDelete = null;
        
        for (Property p : list) {
            if (p.getId() == id) {
                propertyToDelete = p;
                break;
            }
        }

        if (propertyToDelete != null) {
            list.remove(propertyToDelete);
            propertyBST.delete(propertyToDelete);  // Remove from BST
            saveAllProperties(list);
            System.out.println("Property with ID " + id + " deleted successfully.");
            return true;
        }

        System.out.println("Property with ID " + id + " not found.");
        return false;
    }

    /**
     * Update an existing property with new data
     * @param updatedProperty Property object with updated fields
     * @return true if update was successful, false if property not found
     */
    public boolean updateProperty(Property updatedProperty) {
        if (updatedProperty == null || updatedProperty.getId() <= 0) {
            System.out.println("Invalid property data for update");
            return false;
        }

        List<Property> list = getAllProperties();
        boolean updated = false;
        Property oldProperty = null;

        // Find and update the property in the list
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getId() == updatedProperty.getId()) {
                oldProperty = list.get(i);
                list.set(i, updatedProperty);
                updated = true;
                break;
            }
        }

        if (updated) {
            // Update the BST
            if (oldProperty != null) {
                propertyBST.delete(oldProperty);  // Remove old property from BST
            }
            propertyBST.insert(updatedProperty);  // Add updated property to BST
            
            // Save the updated list
            saveAllProperties(list);
            // Also save the text version
            saveAllPropertiesAsText(list);
            System.out.println("Property with ID " + updatedProperty.getId() + " updated successfully.");
        } else {
            System.out.println("Property with ID " + updatedProperty.getId() + " not found.");
        }

        return updated;
    }

    /**
     * Get a property by ID
     * @param id ID of the property to retrieve
     * @return Property object if found, null otherwise
     */
    public Property getPropertyById(int id) {
        for (Property p : getAllProperties()) {
            if (p.getId() == id) {
                return p;
            }
        }
        return null;
    }

    /**
     * Get a property by ID (String version)
     * @param id String representation of property ID
     * @return Property object if found, null otherwise
     */
    public Property getPropertyById(String id) {
        try {
            int propertyId = Integer.parseInt(id);
            return getPropertyById(propertyId);
        } catch (NumberFormatException e) {
            System.out.println("Invalid ID format: " + id);
            return null;
        }
    }

    /**
     * Find properties that match search criteria using BST for price range
     * @param searchType Type of property (apartment, house, etc.)
     * @param listingType Listing type (sell or rent)
     * @param minPrice Minimum price
     * @param maxPrice Maximum price
     * @param city City name
     * @return List of matching properties
     */
    public List<Property> searchProperties(String searchType, String listingType,
                                           double minPrice, double maxPrice, String city) {
        // First get properties in price range using BST
        List<Property> priceFiltered = propertyBST.searchByPriceRange(minPrice, maxPrice);
        List<Property> result = new ArrayList<>();

        for (Property p : priceFiltered) {
            boolean match = true;

            // Match property type if specified
            if (searchType != null && !searchType.isEmpty() &&
                    !searchType.equalsIgnoreCase(p.getPropertyType())) {
                match = false;
            }

            // Match listing type if specified
            if (listingType != null && !listingType.isEmpty() &&
                    !listingType.equalsIgnoreCase(p.getListingType())) {
                match = false;
            }

            // Match city if specified
            if (city != null && !city.isEmpty() &&
                    !city.equalsIgnoreCase(p.getCity())) {
                match = false;
            }

            if (match) {
                result.add(p);
            }
        }

        return result;
    }

    /**
     * Find properties with specific amenities
     * @param amenities List of required amenities (parking, pool, etc.)
     * @return List of properties with all specified amenities
     */
    public List<Property> findPropertiesByAmenities(List<String> amenities) {
        if (amenities == null || amenities.isEmpty()) {
            return getAllProperties();
        }

        List<Property> allProperties = getAllProperties();
        List<Property> result = new ArrayList<>();

        for (Property p : allProperties) {
            boolean hasAllAmenities = true;

            for (String amenity : amenities) {
                switch (amenity.toLowerCase()) {
                    case "parking":
                        if (!p.isHasParking()) hasAllAmenities = false;
                        break;
                    case "swimming pool":
                    case "pool":
                        if (!p.isHasSwimmingPool()) hasAllAmenities = false;
                        break;
                    case "garden":
                        if (!p.isHasGarden()) hasAllAmenities = false;
                        break;
                    case "security":
                        if (!p.isHasSecurity()) hasAllAmenities = false;
                        break;
                    case "elevator":
                        if (!p.isHasElevator()) hasAllAmenities = false;
                        break;
                    case "air conditioning":
                    case "ac":
                        if (!p.isHasAirConditioning()) hasAllAmenities = false;
                        break;
                    case "gym":
                        if (!p.isHasGym()) hasAllAmenities = false;
                        break;
                    case "balcony":
                        if (!p.isHasBalcony()) hasAllAmenities = false;
                        break;
                }

                if (!hasAllAmenities) {
                    break;
                }
            }

            if (hasAllAmenities) {
                result.add(p);
            }
        }

        return result;
    }
}