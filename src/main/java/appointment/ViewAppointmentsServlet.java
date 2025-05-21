package appointment;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.*;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/view_appointments")
public class ViewAppointmentsServlet extends HttpServlet {

    private static final String FILE_PATH = "C:/Users/nadun/OneDrive/Documents/Appointment.txt";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Appointment> appointments = new ArrayList<>();
        Gson gson = new Gson();

        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                Appointment appointment = gson.fromJson(line, Appointment.class);
                appointments.add(appointment);
            }
        } catch (FileNotFoundException e) {
            // File doesn't exist yet (no appointments)
        } catch (IOException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error reading appointments");
            return;
        }

        request.setAttribute("appointments", appointments);
        request.getRequestDispatcher("/appointmentlist.jsp").forward(request, response);
    }
}
