<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<link rel="stylesheet" href="../css/style.css">
</head>

<body>

<jsp:include page="components/sidebar.jsp"/>

<div class="main-content">

    <div class="header">
        <h1>Add Student</h1>
    </div>

    <div class="card">

        <form action="../StudentServlet?action=add" method="post">

            <div class="form-group">
                <label>Student ID</label>
                <input type="number" name="studentId" required>
            </div>

            <div class="form-group">
                <label>Student Name</label>
                <input type="text" name="studentName" required>
            </div>

            <div class="form-group">
                <label>Department</label>
                <select name="department">
                    <option>CSE</option>
                    <option>ECE</option>
                    <option>EEE</option>
                    <option>MECH</option>
                </select>
            </div>

            <div class="form-group">
                <label>Marks</label>
                <input type="number" name="marks" required>
            </div>

            <button type="submit" class="btn">
                Add Student
            </button>

        </form>

    </div>

</div>

</body>
</html>