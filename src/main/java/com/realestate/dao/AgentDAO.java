package com.realestate.dao;

import com.realestate.model.Agent;
import com.realestate.util.AgentBST;

import java.io.*;
import java.util.*;

/**
 * Data Access Object for Agent management
 * Handles saving and retrieving Agent objects from files
 */
public final class AgentDAO {
    private static final String DATA_DIR = "data";
    private final String AGENTS_FILE = DATA_DIR + File.separator + "agents.dat";
    private final String AGENTS_TEXT_FILE = DATA_DIR + File.separator + "agents.txt";
    private final AgentBST agentBST;

    public AgentDAO() {
        agentBST = new AgentBST();
        // Load existing agents
        loadAgents();
        
        // If no agents were loaded (first run), create sample agents
        if (getAllAgents().isEmpty()) {
            createSampleAgents();
        }
    }

    /**
     * Create sample agents for testing
     */
    private void createSampleAgents() {
        try {
            // Sample agents with professional information
            addAgent(new Agent(1, "John Smith", "john.smith@realestate.com", "555-123-4567", "Residential Properties", "agent1.jpg", 4.5));
            addAgent(new Agent(2, "Sarah Johnson", "sarah.j@realestate.com", "555-987-6543", "Luxury Homes", "agent2.jpg", 4.8));
            addAgent(new Agent(3, "Michael Brown", "michael.b@realestate.com", "555-456-7890", "Commercial Properties", "agent3.jpg", 4.2));
            addAgent(new Agent(4, "Emily Davis", "emily.d@realestate.com", "555-789-0123", "New Developments", "agent4.jpg", 4.7));
            addAgent(new Agent(5, "James Wilson", "james.w@realestate.com", "555-321-6540", "Property Management", "agent5.jpg", 4.0));
            System.out.println("Created sample agents");
        } catch (Exception e) {
            System.out.println("Error creating sample agents: " + e.getMessage());
        }
    }

    /**
     * Load agents from binary file
     */
    @SuppressWarnings("unchecked")
    private void loadAgents() {
        File file = new File(AGENTS_FILE);
        if (!file.exists()) {
            System.out.println("Agents file does not exist yet. Will be created on first save.");
            return;
        }

        try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(AGENTS_FILE))) {
            List<Agent> agents = (List<Agent>) ois.readObject();
            for (Agent agent : agents) {
                agentBST.insert(agent);
            }
            System.out.println("Loaded " + agents.size() + " agents");
        } catch (IOException | ClassNotFoundException e) {
            System.out.println("Error loading agents: " + e.getMessage());
        }
    }

    /**
     * Save agents to binary file
     */
    private void saveAgents() {
        try {
            // Ensure data directory exists
            File dir = new File(DATA_DIR);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            
            List<Agent> agents = getAllAgents();
            try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(AGENTS_FILE))) {
                oos.writeObject(agents);
                System.out.println("Saved " + agents.size() + " agents");
                
                // Also save as text for easy viewing
                saveAgentsAsText(agents);
            }
        } catch (IOException e) {
            System.out.println("Error saving agents: " + e.getMessage());
            System.out.println(e);
        }
    }

    /**
     * Save agents as human-readable text
     */
    private void saveAgentsAsText(List<Agent> agents) {
        try (PrintWriter writer = new PrintWriter(new FileWriter(AGENTS_TEXT_FILE))) {
            for (Agent agent : agents) {
                writer.println(agent.toString());
                writer.println("----------------------------------------");
            }
            System.out.println("Saved agents to " + AGENTS_TEXT_FILE + " successfully!");
        } catch (IOException e) {
            System.out.println("Error saving agents as text: " + e.getMessage());
        }
    }

    /**
     * Add a new agent
     * @param agent Agent to add
     */
    public void addAgent(Agent agent) {
        // If no ID provided, generate one
        if (agent.getId() <= 0) {
            agent.setId(getNextAvailableId());
        }
        agentBST.insert(agent);
        saveAgents();
    }

    /**
     * Get the next available agent ID
     * @return Next available ID
     */
    private int getNextAvailableId() {
        List<Agent> agents = getAllAgents();
        if (agents.isEmpty()) {
            return 1;
        }
        
        // Find the highest existing ID and add 1
        int maxId = 0;
        for (Agent agent : agents) {
            if (agent.getId() > maxId) {
                maxId = agent.getId();
            }
        }
        return maxId + 1;
    }

    /**
     * Get all agents
     * @return List of all agents
     */
    public List<Agent> getAllAgents() {
        return agentBST.getAllAgents();
    }

    /**
     * Get agents sorted by rating (highest first)
     * @return List of agents sorted by rating
     */
    public List<Agent> getAgentsSortedByRating() {
        return agentBST.getAgentsSortedByRating();
    }

    /**
     * Get agent by ID
     * @param id Agent ID
     * @return Agent if found, null otherwise
     */
    public Agent getAgentById(int id) {
        return agentBST.search(id);
    }

    /**
     * Update an existing agent
     * @param agent Updated agent object
     */
    public void updateAgent(Agent agent) {
        agentBST.delete(agent.getId());
        agentBST.insert(agent);
        saveAgents();
    }

    /**
     * Delete an agent
     * @param id ID of agent to delete
     */
    public void deleteAgent(int id) {
        agentBST.delete(id);
        saveAgents();
    }
    
    /**
     * Update an agent's rating based on reviews
     * @param agentId The agent ID
     * @param newRating The new rating value
     */
    public void updateAgentRating(int agentId, double newRating) {
        Agent agent = getAgentById(agentId);
        if (agent != null) {
            agent.setRating(newRating);
            updateAgent(agent);
        }
    }
}
