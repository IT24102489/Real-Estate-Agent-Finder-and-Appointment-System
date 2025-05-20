package servlets;

import dao.PropertyDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteProperty")
public class DeletePropertyServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String idStr = request.getParameter("id");
            if (idStr == null || idStr.trim().isEmpty()) {
                request.setAttribute("errorMessage", "Property ID is required");
                request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
                return;
            }

            int id = Integer.parseInt(idStr);
            PropertyDAO dao = new PropertyDAO();
            boolean success = dao.deleteProperty(id);

            if (success) {
                response.sendRedirect("ViewProperty.jsp?deleted=true");
            } else {
                request.setAttribute("errorMessage", "Failed to delete property");
                request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
            }

        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid property ID format");
            request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("ErrorProperty.jsp").forward(request, response);
        }
    }
}
