package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/AnalyticsServlet")
public class AnalyticsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute(
                "totalStudents",
                115);

        request.setAttribute(
                "averageMarks",
                74.5);

        request.setAttribute(
                "highestMarks",
                95);

        request.setAttribute(
                "passPercentage",
                86);

        request.getRequestDispatcher(
                "jsp/analytics.jsp")
                .forward(request,
                        response);
    }
}