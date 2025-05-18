package com.example.oop.dao;

import com.example.oop.model.Agent;
import com.example.oop.util.AgentBST;

import java.io.*;
import java.util.*;

public class AgentDAO {
    private static AgentBST bst = new AgentBST();
    private final String filePath;

    public AgentDAO(String filePath) {
        this.filePath = filePath;
        loadAgents();
    }

    private void loadAgents() {
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 6) {
                    Agent agent = new Agent(
                            Integer.parseInt(parts[0]),
                            parts[1],
                            parts[2],
                            parts[3],
                            parts[4],
                            parts[5]
                    );
                    bst.insert(agent);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void saveAgents() {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath))) {
            List<Agent> agents = bst.getAllAgents();
            for (Agent agent : agents) {
                writer.write(String.format("%d,%s,%s,%s,%s,%s",
                        agent.getId(),
                        agent.getName(),
                        agent.getEmail(),
                        agent.getPhone(),
                        agent.getExpertise(),
                        agent.getImagePath()));
                writer.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // 🔄 Modified to use reusable ID
    public void addAgent(Agent agent) {
        int newId = getNextAvailableId(); // ✅ new logic here
        agent.setId(newId);
        bst.insert(agent);
        saveAgents();
    }

    // ✅ NEW: Finds the smallest unused ID
    private int getNextAvailableId() {
        List<Agent> agents = bst.getAllAgents();
        Set<Integer> existingIds = new TreeSet<>();

        for (Agent a : agents) {
            existingIds.add(a.getId());
        }

        int id = 1;
        for (Integer existingId : existingIds) {
            if (id < existingId) {
                break;
            }
            if (id == existingId) {
                id++;
            }
        }

        return id;
    }

    public List<Agent> getAllAgents() {
        return bst.getAllAgents();
    }

    public Agent getAgentById(int id) {
        return bst.search(id);
    }

    public void updateAgent(Agent agent) {
        bst.delete(agent.getId());
        bst.insert(agent);
        saveAgents();
    }

    public void deleteAgent(int id) {
        bst.delete(id);
        saveAgents();
    }
}
