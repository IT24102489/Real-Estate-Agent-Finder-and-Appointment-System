package com.realestate.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/**
 * A priority queue implementation for reviews that can be sorted by rating or date.
 * Implements a max heap data structure to efficiently retrieve highest-rated or newest reviews.
 */
public class ReviewPriorityQueue implements Serializable {

    private static final long serialVersionUID = 1L;
    
    private final List<Review> heap;
    private final Comparator<Review> comparator;
    
    // Default constructor - sorts by date (newest first)
    public ReviewPriorityQueue() {
        this.heap = new ArrayList<>();
        this.comparator = (r1, r2) -> r2.getDatePosted().compareTo(r1.getDatePosted());
    }
    
    // Constructor with custom comparator
    public ReviewPriorityQueue(Comparator<Review> comparator) {
        this.heap = new ArrayList<>();
        this.comparator = comparator;
    }
    
    // Static factory method for creating a rating-based priority queue
    public static ReviewPriorityQueue byRating() {
        return new ReviewPriorityQueue((r1, r2) -> Integer.compare(r2.getRating(), r1.getRating()));
    }
    
    // Static factory method for creating a date-based priority queue (newest first)
    public static ReviewPriorityQueue byDate() {
        return new ReviewPriorityQueue();
    }
    
    /**
     * Get the size of the queue
     * @return the number of reviews in the queue
     */
    public int size() {
        return heap.size();
    }
    
    /**
     * Check if the queue is empty
     * @return true if empty, false otherwise
     */
    public boolean isEmpty() {
        return heap.isEmpty();
    }
    
    /**
     * Add a review to the priority queue
     * @param review the review to add
     */
    public void add(Review review) {
        heap.add(review);
        int index = heap.size() - 1;
        heapifyUp(index);
    }
    
    /**
     * Peek at the highest priority review without removing it
     * @return the highest priority review or null if empty
     */
    public Review peek() {
        if (isEmpty()) return null;
        return heap.get(0);
    }
    
    /**
     * Remove and return the highest priority review
     * @return the highest priority review or null if empty
     */
    public Review poll() {
        if (isEmpty()) return null;
        
        Review result = heap.get(0);
        Review lastItem = heap.remove(heap.size() - 1);
        
        if (!isEmpty()) {
            heap.set(0, lastItem);
            heapifyDown(0);
        }
        
        return result;
    }
    
    /**
     * Convert the priority queue to a sorted list
     * @return a list of reviews in priority order
     */
    public List<Review> toSortedList() {
        List<Review> result = new ArrayList<>(heap.size());
        ReviewPriorityQueue copy = new ReviewPriorityQueue(this.comparator);
        
        // Copy all items to the new queue
        for (Review review : heap) {
            copy.add(review);
        }
        
        // Poll each item to get them in sorted order
        while (!copy.isEmpty()) {
            result.add(copy.poll());
        }
        
        return result;
    }
    
    /**
     * Get a list of the top N reviews by priority
     * @param n number of top reviews to retrieve
     * @return list of the top N reviews or all reviews if n > size
     */
    public List<Review> getTopN(int n) {
        int count = Math.min(n, heap.size());
        List<Review> result = new ArrayList<>(count);
        ReviewPriorityQueue copy = new ReviewPriorityQueue(this.comparator);
        
        // Copy all items to the new queue
        for (Review review : heap) {
            copy.add(review);
        }
        
        // Poll the top N items
        for (int i = 0; i < count; i++) {
            result.add(copy.poll());
        }
        
        return result;
    }
    
    /**
     * Update all reviews for a specific agent
     * @param updatedReview the updated review
     */
    public void updateReview(Review updatedReview) {
        for (int i = 0; i < heap.size(); i++) {
            if (heap.get(i).getId() == updatedReview.getId()) {
                heap.set(i, updatedReview);
                heapifyUp(i);
                heapifyDown(i);
                break;
            }
        }
    }
    
    /**
     * Remove a review by its ID
     * @param reviewId the ID of the review to remove
     * @return true if removed, false if not found
     */
    public boolean removeById(int reviewId) {
        for (int i = 0; i < heap.size(); i++) {
            if (heap.get(i).getId() == reviewId) {
                Review lastItem = heap.remove(heap.size() - 1);
                if (i < heap.size()) {
                    heap.set(i, lastItem);
                    heapifyUp(i);
                    heapifyDown(i);
                }
                return true;
            }
        }
        return false;
    }
    
    /**
     * Get all reviews for a specific agent
     * @param agentId the agent ID to filter by
     * @return a new priority queue with only reviews for the specified agent
     */
    public ReviewPriorityQueue getReviewsByAgentId(int agentId) {
        ReviewPriorityQueue result = new ReviewPriorityQueue(this.comparator);
        for (Review review : heap) {
            if (review.getAgentId() == agentId) {
                result.add(review);
            }
        }
        return result;
    }
    
    /**
     * Calculate the average rating for a specific agent
     * @param agentId the agent ID to calculate for
     * @return the average rating or 0 if no reviews
     */
    public double getAverageRatingForAgent(int agentId) {
        int count = 0;
        int sum = 0;
        
        for (Review review : heap) {
            if (review.getAgentId() == agentId) {
                sum += review.getRating();
                count++;
            }
        }
        
        return count == 0 ? 0 : (double) sum / count;
    }
    
    /**
     * Return all reviews as a list
     * @return list of all reviews in the queue
     */
    public List<Review> getAllReviews() {
        return new ArrayList<>(heap);
    }
    
    // Helper method to restore heap property upward
    private void heapifyUp(int index) {
        int parentIndex = getParentIndex(index);
        
        while (index > 0 && comparator.compare(heap.get(index), heap.get(parentIndex)) < 0) {
            // Swap with parent if current item has higher priority
            swap(index, parentIndex);
            index = parentIndex;
            parentIndex = getParentIndex(index);
        }
    }
    
    // Helper method to restore heap property downward
    private void heapifyDown(int index) {
        int smallest = index;
        int leftChildIndex = getLeftChildIndex(index);
        int rightChildIndex = getRightChildIndex(index);
        
        // Check if left child has higher priority than current
        if (leftChildIndex < heap.size() && 
                comparator.compare(heap.get(leftChildIndex), heap.get(smallest)) < 0) {
            smallest = leftChildIndex;
        }
        
        // Check if right child has higher priority than current or left child
        if (rightChildIndex < heap.size() && 
                comparator.compare(heap.get(rightChildIndex), heap.get(smallest)) < 0) {
            smallest = rightChildIndex;
        }
        
        // If a child has higher priority, swap and continue heapifying down
        if (smallest != index) {
            swap(index, smallest);
            heapifyDown(smallest);
        }
    }
    
    // Helper method to swap two elements in the heap
    private void swap(int i, int j) {
        Review temp = heap.get(i);
        heap.set(i, heap.get(j));
        heap.set(j, temp);
    }
    
    // Helper methods to find parent and child indices
    private int getParentIndex(int childIndex) {
        return (childIndex - 1) / 2;
    }
    
    private int getLeftChildIndex(int parentIndex) {
        return 2 * parentIndex + 1;
    }
    
    private int getRightChildIndex(int parentIndex) {
        return 2 * parentIndex + 2;
    }
}
