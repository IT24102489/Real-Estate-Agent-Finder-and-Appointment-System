package com.realestate.util;

import com.realestate.model.Agent;

/**
 * Node class for the Binary Search Tree of agents
 */
public class AgentNode {
    public Agent agent;          // Made public for BST access
    public AgentNode left, right; // Made public for BST access

    public AgentNode(Agent agent) {
        this.agent = agent;
        this.left = this.right = null;
    }
}
