package com.realestate.dao;

import com.realestate.model.Review;
import com.realestate.model.ReviewPriorityQueue;

import java.io.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

/**
 * Data Access Object for Review management
 * Handles saving and retrieving Review objects from files
 */
public class ReviewDAO {
    private static final String DATA_DIR = "data";
    private final String BINARY_FILE_NAME = DATA_DIR + File.separator + "reviews.dat";
    private final String TEXT_FILE_NAME = DATA_DIR + File.separator + "reviews.txt";
    
    // Ensure data directory exists
    static {
        File dir = new File(DATA_DIR);
        if (!dir.exists()) {
            boolean created = dir.mkdirs();
            System.out.println("Data directory created: " + created);
        }
    }
    private final ReviewPriorityQueue reviewsByDate;
    private final ReviewPriorityQueue reviewsByRating;

    public ReviewDAO() {
        // Initialize with reviews sorted by date (newest first)
        reviewsByDate = ReviewPriorityQueue.byDate();
        // Initialize with reviews sorted by rating (highest first)
        reviewsByRating = ReviewPriorityQueue.byRating();
        
        // Load existing reviews into both priority queues
        List<Review> reviews = loadReviews();
        for (Review review : reviews) {
            reviewsByDate.add(review);
            reviewsByRating.add(review);
        }
    }

    /**
     * Internal helper method to load reviews - used by constructor to avoid calling overridable method
     */
    private List<Review> loadReviews() {
        return getAllReviewsInternal();
    }
    
    /**
     * Internal implementation for retrieving reviews
     */
    private List<Review> getAllReviewsInternal() {
        List<Review> reviews = new ArrayList<>();
        File file = new File(BINARY_FILE_NAME);
        
        try {
            if (!file.exists()) {
                // Create the file and directory if they don't exist
                file.getParentFile().mkdirs();
                file.createNewFile();
                // Initialize with empty list
                saveAllReviews(reviews);
                System.out.println("Created new reviews file");
                return reviews;
            }
            
            try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(BINARY_FILE_NAME))) {
                reviews = (List<Review>) ois.readObject();
                System.out.println("Retrieved " + reviews.size() + " reviews from " + BINARY_FILE_NAME);
            }
        } catch (IOException e) {
            System.out.println("Error reading reviews from file: " + e.getMessage());
            System.out.println(e);
        } catch (ClassNotFoundException e) {
            System.out.println("Class not found when reading reviews: " + e.getMessage());
            System.out.println(e);
        }
        return reviews;
    }
    
    /**
     * Retrieve all reviews from the data file
     * @return List of Review objects
     */
    public List<Review> getAllReviews() {
        List<Review> reviews = new ArrayList<>();
        File file = new File(BINARY_FILE_NAME);
        
        try {
            if (!file.exists()) {
                // Create the file and directory if they don't exist
                file.getParentFile().mkdirs();
                file.createNewFile();
                // Initialize with empty list
                saveAllReviews(reviews);
                System.out.println("Created new reviews file");
                return reviews;
            }
            
            try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(BINARY_FILE_NAME))) {
                reviews = (List<Review>) ois.readObject();
                System.out.println("Retrieved " + reviews.size() + " reviews from " + BINARY_FILE_NAME);
            }
        } catch (IOException e) {
            System.out.println("Error reading reviews from file: " + e.getMessage());
            System.out.println(e);
        } catch (ClassNotFoundException e) {
            System.out.println("Class not found when reading reviews: " + e.getMessage());
            System.out.println(e);
        }
        return reviews;
    }

    /**
     * Save all reviews to the binary data file
     * @param reviews List of Review objects to save
     */
    public void saveAllReviews(List<Review> reviews) {
        try {
            File file = new File(BINARY_FILE_NAME);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            
            try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(BINARY_FILE_NAME))) {
                oos.writeObject(reviews);
                System.out.println("Successfully saved " + reviews.size() + " reviews to " + BINARY_FILE_NAME);
            }
        } catch (IOException e) {
            System.err.println("Error saving reviews to file: " + e.getMessage());
            System.out.println(e);
        }
    }

    /**
     * Save reviews as human-readable text
     * @param reviews List of Review objects to save as text
     */
    public void saveAllReviewsAsText(List<Review> reviews) {
        try (PrintWriter writer = new PrintWriter(new FileWriter(TEXT_FILE_NAME))) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            
            for (Review review : reviews) {
                writer.println("Review ID: " + review.getId());
                writer.println("Agent ID: " + review.getAgentId());
                writer.println("Reviewer: " + review.getReviewerName());
                writer.println("Email: " + review.getReviewerEmail());
                writer.println("Rating: " + review.getRating() + " stars");
                writer.println("Date: " + review.getDatePosted().format(formatter));
                writer.println("Review: " + review.getReviewText());
                writer.println("----------------------------------------");
            }
            System.out.println("Saved reviews to " + TEXT_FILE_NAME + " successfully!");
        } catch (IOException e) {
            System.out.println("Error saving reviews as text: " + e.getMessage());
            System.out.println(e);
        }
    }

    /**
     * Add a new review
     * @param review Review object to add
     */
    public void addReview(Review review) {
        List<Review> reviews = getAllReviews();

        // Check if ID was provided, if not generate a new one
        if (review.getId() <= 0) {
            review.setId(generateNewId(reviews));
        } else {
            // Prevent adding a review with a duplicate ID
            for (Review existing : reviews) {
                if (existing.getId() == review.getId()) {
                    System.out.println("Review with ID " + review.getId() + " already exists.");
                    return;
                }
            }
        }

        // Add to list and both priority queues
        reviews.add(review);
        reviewsByDate.add(review);
        reviewsByRating.add(review);
        
        // Save to files
        saveAllReviews(reviews);
        saveAllReviewsAsText(reviews);
        System.out.println("Review added: " + review.getId() + ", Total reviews: " + reviews.size());
    }

    /**
     * Generate a new unique ID for a review
     * @param reviews List of existing reviews
     * @return New unique ID
     */
    private int generateNewId(List<Review> reviews) {
        int maxId = 0;
        for (Review review : reviews) {
            if (review.getId() > maxId) {
                maxId = review.getId();
            }
        }
        return maxId + 1;
    }

    /**
     * Delete a review by ID
     * @param id ID of the review to delete
     * @return true if review was deleted, false otherwise
     */
    public boolean deleteReview(int id) {
        List<Review> reviews = getAllReviews();
        Review reviewToDelete = null;
        
        for (Review review : reviews) {
            if (review.getId() == id) {
                reviewToDelete = review;
                break;
            }
        }

        if (reviewToDelete != null) {
            reviews.remove(reviewToDelete);
            reviewsByDate.removeById(id);
            reviewsByRating.removeById(id);
            saveAllReviews(reviews);
            saveAllReviewsAsText(reviews);
            System.out.println("Review with ID " + id + " deleted successfully.");
            return true;
        }

        System.out.println("Review with ID " + id + " not found.");
        return false;
    }

    /**
     * Update an existing review with new data
     * @param updatedReview Review object with updated fields
     * @return true if update was successful, false if review not found
     */
    public boolean updateReview(Review updatedReview) {
        if (updatedReview == null || updatedReview.getId() <= 0) {
            System.out.println("Invalid review data for update");
            return false;
        }

        List<Review> reviews = getAllReviews();
        boolean updated = false;

        // Find and update the review in the list
        for (int i = 0; i < reviews.size(); i++) {
            if (reviews.get(i).getId() == updatedReview.getId()) {
                reviews.set(i, updatedReview);
                updated = true;
                break;
            }
        }

        if (updated) {
            // Update the review in both priority queues
            reviewsByDate.updateReview(updatedReview);
            reviewsByRating.updateReview(updatedReview);
            
            // Save to files
            saveAllReviews(reviews);
            saveAllReviewsAsText(reviews);
            System.out.println("Review with ID " + updatedReview.getId() + " updated successfully.");
            return true;
        }

        System.out.println("Review with ID " + updatedReview.getId() + " not found.");
        return false;
    }

    /**
     * Get reviews for a specific agent
     * @param agentId ID of the agent to get reviews for
     * @return List of reviews for the specified agent
     */
    public List<Review> getReviewsByAgentId(int agentId) {
        return reviewsByDate.getReviewsByAgentId(agentId).getAllReviews();
    }

    /**
     * Get top rated reviews for a specific agent
     * @param agentId ID of the agent to get reviews for
     * @param limit Maximum number of reviews to return
     * @return List of top rated reviews for the specified agent
     */
    public List<Review> getTopRatedReviewsByAgentId(int agentId, int limit) {
        ReviewPriorityQueue agentReviews = reviewsByRating.getReviewsByAgentId(agentId);
        return agentReviews.getTopN(limit);
    }

    /**
     * Calculate the average rating for a specific agent
     * @param agentId ID of the agent to calculate average rating for
     * @return Average rating for the specified agent or 0 if no reviews
     */
    public double getAverageRatingForAgent(int agentId) {
        return reviewsByRating.getAverageRatingForAgent(agentId);
    }

    /**
     * Get a review by its ID
     * @param id ID of the review to get
     * @return Review object if found, null otherwise
     */
    public Review getReviewById(int id) {
        List<Review> reviews = getAllReviews();
        for (Review review : reviews) {
            if (review.getId() == id) {
                return review;
            }
        }
        return null;
    }

    /**
     * Get the total number of reviews for a specific agent
     * @param agentId ID of the agent to count reviews for
     * @return Number of reviews for the specified agent
     */
    public int getReviewCountForAgent(int agentId) {
        return getReviewsByAgentId(agentId).size();
    }
}
