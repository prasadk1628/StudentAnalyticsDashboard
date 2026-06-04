package dao;

import model.Student;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

    public boolean addStudent(Student student) {

        boolean status = false;

        try {

            Connection con =
                    DBConnection.getConnection();

            String query =
                    "INSERT INTO students VALUES(?,?,?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setInt(1, student.getStudentId());
            ps.setString(2, student.getStudentName());
            ps.setString(3, student.getDepartment());
            ps.setInt(4, student.getMarks());
            ps.setString(5, student.getResult());

            status = ps.executeUpdate() > 0;

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public List<Student> getAllStudents() {

        List<Student> list =
                new ArrayList<>();

        try {

            Connection con =
                    DBConnection.getConnection();

            String query =
                    "SELECT * FROM students";

            Statement st =
                    con.createStatement();

            ResultSet rs =
                    st.executeQuery(query);

            while (rs.next()) {

                Student student =
                        new Student();

                student.setStudentId(
                        rs.getInt("student_id"));

                student.setStudentName(
                        rs.getString("student_name"));

                student.setDepartment(
                        rs.getString("department"));

                student.setMarks(
                        rs.getInt("marks"));

                student.setResult(
                        rs.getString("result"));

                list.add(student);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean updateStudent(Student student) {

        boolean status = false;

        try {

            Connection con =
                    DBConnection.getConnection();

            String query =
                    "UPDATE students SET " +
                    "student_name=?," +
                    "department=?," +
                    "marks=?," +
                    "result=? " +
                    "WHERE student_id=?";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setString(1,
                    student.getStudentName());

            ps.setString(2,
                    student.getDepartment());

            ps.setInt(3,
                    student.getMarks());

            ps.setString(4,
                    student.getResult());

            ps.setInt(5,
                    student.getStudentId());

            status =
                    ps.executeUpdate() > 0;

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public boolean deleteStudent(int studentId) {

        boolean status = false;

        try {

            Connection con =
                    DBConnection.getConnection();

            String query =
                    "DELETE FROM students " +
                    "WHERE student_id=?";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setInt(1, studentId);

            status =
                    ps.executeUpdate() > 0;

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}