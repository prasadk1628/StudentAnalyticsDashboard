<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>
<link rel="stylesheet" href="../css/style.css">
</head>

<body>

<jsp:include page="components/sidebar.jsp"/>

<div class="main-content">

    <div class="header">
        <h1>Student Records</h1>
    </div>

    <table>

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Marks</th>
            <th>Result</th>
            <th>Action</th>
        </tr>

        <tr>
            <td>101</td>
            <td>Rahul</td>
            <td>CSE</td>
            <td>85</td>
            <td>PASS</td>
            <td>
                <a href="editStudent.jsp" class="btn-edit">Edit</a>
                <a href="#" class="btn-delete">Delete</a>
            </td>
        </tr>

        <tr>
            <td>102</td>
            <td>Priya</td>
            <td>ECE</td>
            <td>72</td>
            <td>PASS</td>
            <td>
                <a href="editStudent.jsp" class="btn-edit">Edit</a>
                <a href="#" class="btn-delete">Delete</a>
            </td>
        </tr>

    </table>

</div>

</body>
</html>