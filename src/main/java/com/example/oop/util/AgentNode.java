package com.example.oop.util;

import com.example.oop.model.Agent;

public class AgentNode {
    public Agent agent;          // Made public for BST access
    public AgentNode left, right; // Made public for BST access

    public AgentNode(Agent agent) {
        this.agent = agent;
        this.left = this.right = null;
    }
}
