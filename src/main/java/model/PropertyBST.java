package model;

import java.util.ArrayList;
import java.util.List;

/**
 * Binary Search Tree implementation for Property objects
 * This implementation allows for efficient searching and sorting of properties
 */
public class PropertyBST {
    private Node root;

    private class Node {
        Property property;
        Node left;
        Node right;

        Node(Property property) {
            this.property = property;
            this.left = null;
            this.right = null;
        }
    }

    /**
     * Insert a property into the BST
     * @param property Property to insert
     */
    public void insert(Property property) {
        root = insertRec(root, property);
    }

    private Node insertRec(Node root, Property property) {
        if (root == null) {
            return new Node(property);
        }

        // Compare by price for sorting
        if (property.getPrice() < root.property.getPrice()) {
            root.left = insertRec(root.left, property);
        } else if (property.getPrice() > root.property.getPrice()) {
            root.right = insertRec(root.right, property);
        }

        return root;
    }

    /**
     * Search for properties within a price range
     * @param minPrice Minimum price
     * @param maxPrice Maximum price
     * @return List of properties within the price range
     */
    public List<Property> searchByPriceRange(double minPrice, double maxPrice) {
        List<Property> result = new ArrayList<>();
        searchByPriceRangeRec(root, minPrice, maxPrice, result);
        return result;
    }

    private void searchByPriceRangeRec(Node root, double minPrice, double maxPrice, List<Property> result) {
        if (root == null) {
            return;
        }

        if (minPrice < root.property.getPrice()) {
            searchByPriceRangeRec(root.left, minPrice, maxPrice, result);
        }

        if (minPrice <= root.property.getPrice() && root.property.getPrice() <= maxPrice) {
            result.add(root.property);
        }

        if (maxPrice > root.property.getPrice()) {
            searchByPriceRangeRec(root.right, minPrice, maxPrice, result);
        }
    }

    /**
     * Get all properties in sorted order (ascending by price)
     * @return List of properties sorted by price
     */
    public List<Property> getAllPropertiesSorted() {
        List<Property> result = new ArrayList<>();
        inOrderTraversal(root, result);
        return result;
    }

    private void inOrderTraversal(Node root, List<Property> result) {
        if (root != null) {
            inOrderTraversal(root.left, result);
            result.add(root.property);
            inOrderTraversal(root.right, result);
        }
    }

    /**
     * Delete a property from the BST
     * @param property Property to delete
     */
    public void delete(Property property) {
        root = deleteRec(root, property);
    }

    private Node deleteRec(Node root, Property property) {
        if (root == null) {
            return null;
        }

        if (property.getPrice() < root.property.getPrice()) {
            root.left = deleteRec(root.left, property);
        } else if (property.getPrice() > root.property.getPrice()) {
            root.right = deleteRec(root.right, property);
        } else {
            // Found the node to delete
            if (root.left == null) {
                return root.right;
            } else if (root.right == null) {
                return root.left;
            }

            // Node with two children: Get the inorder successor
            root.property = minValue(root.right);
            root.right = deleteRec(root.right, root.property);
        }

        return root;
    }

    private Property minValue(Node root) {
        Property minv = root.property;
        while (root.left != null) {
            minv = root.left.property;
            root = root.left;
        }
        return minv;
    }
} 