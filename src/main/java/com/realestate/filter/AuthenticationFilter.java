package com.realestate.filter;

import com.realestate.model.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Filter to handle authentication for protected pages
 * Redirects to login page if user is not authenticated
 */
public class AuthenticationFilter implements Filter {

    // Paths that don't require authentication
    private static final List<String> PUBLIC_PATHS = Arrays.asList(
            "/index.jsp",
            "/login.jsp",
            "/auth",
            "/listAgents",
            "/listReviews"
    );

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization code if needed
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        // Get the requested path
        String path = httpRequest.getServletPath();
        
        // Check if the path is public
        if (isPublicPath(path)) {
            chain.doFilter(request, response);
            return;
        }
        
        // Get session, don't create a new one
        HttpSession session = httpRequest.getSession(false);
        
        // Check if user is logged in
        boolean isLoggedIn = session != null && session.getAttribute("user") != null;
        
        if (isLoggedIn) {
            // User is logged in, proceed with the request
            
            // Check role-based access for admin paths
            if (path.startsWith("/admin/")) {
                // Check session and user object to avoid NPE
                if (session != null) {
                    User user = (User) session.getAttribute("user");
                    if (user != null && !"admin".equals(user.getRole())) {
                        // Not an admin, redirect to unauthorized page
                        httpResponse.sendRedirect(httpRequest.getContextPath() + "/error.jsp?message=unauthorized");
                        return;
                    }
                } else {
                    // Session is null, redirect to login
                    httpResponse.sendRedirect(httpRequest.getContextPath() + "/login.jsp");
                    return;
                }
            }
            
            chain.doFilter(request, response);
        } else {
            // User is not logged in, redirect to login page
            // Save the requested URL for redirecting after login
            String queryString = httpRequest.getQueryString();
            String requestedUrl = path + (queryString != null ? "?" + queryString : "");
            
            // Redirect to login page
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/login.jsp?redirect=" + requestedUrl);
        }
    }

    @Override
    public void destroy() {
        // Cleanup code if needed
    }
    
    /**
     * Check if the path is public (doesn't require authentication)
     * @param path The requested path
     * @return true if the path is public, false otherwise
     */
    private boolean isPublicPath(String path) {
        if (path.startsWith("/css/") || path.startsWith("/js/") || path.startsWith("/images/")) {
            return true;
        }
        
        for (String publicPath : PUBLIC_PATHS) {
            if (path.equals(publicPath)) {
                return true;
            }
        }
        
        return false;
    }
}
