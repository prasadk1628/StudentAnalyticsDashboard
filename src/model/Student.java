package model;

public class Student {

    private int studentId;
    private String studentName;
    private String department;
    private int marks;
    private String result;

    public Student() {
    }

    public Student(int studentId, String studentName,
                   String department, int marks,
                   String result) {

        this.studentId = studentId;
        this.studentName = studentName;
        this.department = department;
        this.marks = marks;
        this.result = result;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}