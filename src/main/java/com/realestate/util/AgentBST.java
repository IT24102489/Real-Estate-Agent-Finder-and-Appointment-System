package com.realestate.util;

import com.realestate.model.Agent;
import java.util.ArrayList;
import java.util.List;

/**
 * Binary Search Tree implementation for Agent objects
 * Uses agent ID as the key for searching and ordering
 */
public class AgentBST {
    private AgentNode root;

    public void insert(Agent agent) {
        root = insertRec(root, agent);
    }

    private AgentNode insertRec(AgentNode node, Agent agent) {
        if (node == null) return new AgentNode(agent);

        if (agent.getId() < node.agent.getId()) {
            node.left = insertRec(node.left, agent);
        } else if (agent.getId() > node.agent.getId()) {
            node.right = insertRec(node.right, agent);
        }
        return node;
    }

    public Agent search(int id) {
        return searchRec(root, id);
    }

    private Agent searchRec(AgentNode node, int id) {
        if (node == null) return null;
        if (id == node.agent.getId()) return node.agent;
        return id < node.agent.getId() ?
                searchRec(node.left, id) :
                searchRec(node.right, id);
    }

    public void delete(int id) {
        root = deleteRec(root, id);
    }

    private AgentNode deleteRec(AgentNode node, int id) {
        if (node == null) return null;

        if (id < node.agent.getId()) {
            node.left = deleteRec(node.left, id);
        } else if (id > node.agent.getId()) {
            node.right = deleteRec(node.right, id);
        } else {
            if (node.left == null) return node.right;
            if (node.right == null) return node.left;

            Agent successor = getMinValue(node.right);
            node.agent = successor;
            node.right = deleteRec(node.right, successor.getId());
        }
        return node;
    }

    private Agent getMinValue(AgentNode node) {
        while (node.left != null) node = node.left;
        return node.agent;
    }

    public List<Agent> getAllAgents() {
        List<Agent> agents = new ArrayList<>();
        inOrder(root, agents);
        return agents;
    }

    private void inOrder(AgentNode node, List<Agent> agents) {
        if (node != null) {
            inOrder(node.left, agents);
            agents.add(node.agent);
            inOrder(node.right, agents);
        }
    }
    
    /**
     * Get all agents sorted by rating (highest first)
     * @return List of agents sorted by rating
     */
    public List<Agent> getAgentsSortedByRating() {
        List<Agent> agents = getAllAgents();
        selectionSortByRating(agents);
        return agents;
    }

    /**
     * Selection sort implementation for sorting agents by rating
     * @param agents List of agents to sort
     */
    private void selectionSortByRating(List<Agent> agents) {
        int n = agents.size();
        for (int i = 0; i < n - 1; i++) {
            int maxIndex = i;
            for (int j = i + 1; j < n; j++) {
                if (agents.get(j).getRating() > agents.get(maxIndex).getRating()) {
                    maxIndex = j;
                }
            }
            if (maxIndex != i) {
                Agent temp = agents.get(i);
                agents.set(i, agents.get(maxIndex));
                agents.set(maxIndex, temp);
            }
        }
    }
}
