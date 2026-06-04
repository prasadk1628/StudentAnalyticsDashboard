<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>
<link rel="stylesheet" href="../css/style.css">
</head>

<body>

<jsp:include page="components/sidebar.jsp"/>

<div class="main-content">

    <div class="header">
        <h1>Edit Student</h1>
    </div>

    <div class="card">

        <form action="../StudentServlet?action=update" method="post">

            <div class="form-group">
                <label>Student ID</label>
                <input type="number" name="studentId" value="101" readonly>
            </div>

            <div class="form-group">
                <label>Student Name</label>
                <input type="text" name="studentName" value="Rahul">
            </div>

            <div class="form-group">
                <label>Department</label>
                <select name="department">
                    <option selected>CSE</option>
                    <option>ECE</option>
                    <option>EEE</option>
                    <option>MECH</option>
                </select>
            </div>

            <div class="form-group">
                <label>Marks</label>
                <input type="number" name="marks" value="85">
            </div>

            <button type="submit" class="btn">
                Update Student
            </button>

        </form>

    </div>

</div>

</body>
</html>