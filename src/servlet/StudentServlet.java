package servlet;

import dao.StudentDAO;
import model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {

    private StudentDAO dao =
            new StudentDAO();

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String action =
                request.getParameter("action");

        if ("add".equals(action)) {

            addStudent(request, response);

        } else if ("update".equals(action)) {

            updateStudent(request, response);
        }
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String action =
                request.getParameter("action");

        if ("delete".equals(action)) {

            deleteStudent(request, response);
        }
    }

    private void addStudent(HttpServletRequest request,
                            HttpServletResponse response)
            throws IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("studentId"));

        String name =
                request.getParameter("studentName");

        String department =
                request.getParameter("department");

        int marks =
                Integer.parseInt(
                        request.getParameter("marks"));

        String result =
                (marks >= 40) ? "PASS" : "FAIL";

        Student student =
                new Student(id,
                        name,
                        department,
                        marks,
                        result);

        dao.addStudent(student);

        response.sendRedirect(
                "jsp/viewStudents.jsp");
    }

    private void updateStudent(HttpServletRequest request,
                               HttpServletResponse response)
            throws IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("studentId"));

        String name =
                request.getParameter("studentName");

        String department =
                request.getParameter("department");

        int marks =
                Integer.parseInt(
                        request.getParameter("marks"));

        String result =
                (marks >= 40) ? "PASS" : "FAIL";

        Student student =
                new Student(id,
                        name,
                        department,
                        marks,
                        result);

        dao.updateStudent(student);

        response.sendRedirect(
                "jsp/viewStudents.jsp");
    }

    private void deleteStudent(HttpServletRequest request,
                               HttpServletResponse response)
            throws IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("studentId"));

        dao.deleteStudent(id);

        response.sendRedirect(
                "jsp/viewStudents.jsp");
    }
}