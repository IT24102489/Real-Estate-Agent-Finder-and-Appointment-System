package com.realestate.model;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * Review class representing a review and rating for a real estate agent
 */
public class Review implements Serializable, Comparable<Review> {

    private static final long serialVersionUID = 1L;

    private int id;
    private int agentId;
    private String reviewerName;
    private String reviewerEmail;
    private String reviewText;
    private int rating;  // Rating from 1-5 stars
    private LocalDateTime datePosted;

    // Default constructor
    public Review() {
        this.datePosted = LocalDateTime.now();
    }

    // Constructor with essential fields
    public Review(int id, int agentId, String reviewerName, String reviewText, int rating) {
        this.id = id;
        this.agentId = agentId;
        this.reviewerName = reviewerName;
        this.reviewText = reviewText;
        this.rating = rating;
        this.datePosted = LocalDateTime.now();
    }

    // Full constructor
    public Review(int id, int agentId, String reviewerName, String reviewerEmail, 
                String reviewText, int rating, LocalDateTime datePosted) {
        this.id = id;
        this.agentId = agentId;
        this.reviewerName = reviewerName;
        this.reviewerEmail = reviewerEmail;
        this.reviewText = reviewText;
        this.rating = rating;
        this.datePosted = datePosted != null ? datePosted : LocalDateTime.now();
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAgentId() {
        return agentId;
    }

    public void setAgentId(int agentId) {
        this.agentId = agentId;
    }

    public String getReviewerName() {
        return reviewerName;
    }

    public void setReviewerName(String reviewerName) {
        this.reviewerName = reviewerName;
    }

    public String getReviewerEmail() {
        return reviewerEmail;
    }

    public void setReviewerEmail(String reviewerEmail) {
        this.reviewerEmail = reviewerEmail;
    }

    public String getReviewText() {
        return reviewText;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        // Ensure rating is between 1 and 5
        if(rating < 1) {
            this.rating = 1;
        } else if(rating > 5) {
            this.rating = 5;
        } else {
            this.rating = rating;
        }
    }

    public LocalDateTime getDatePosted() {
        return datePosted;
    }

    public void setDatePosted(LocalDateTime datePosted) {
        this.datePosted = datePosted;
    }
    
    // For sorting reviews by date (newest first)
    @Override
    public int compareTo(Review other) {
        return other.datePosted.compareTo(this.datePosted);
    }
    
    @Override
    public String toString() {
        return "Review{" +
                "id=" + id +
                ", agentId=" + agentId +
                ", reviewerName='" + reviewerName + '\'' +
                ", rating=" + rating +
                ", datePosted=" + datePosted +
                ", reviewText='" + reviewText + '\'' +
                "}";
    }
}
