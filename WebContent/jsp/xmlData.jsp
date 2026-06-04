<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XML Data</title>
<link rel="stylesheet" href="../css/style.css">
</head>

<body>

<jsp:include page="components/sidebar.jsp"/>

<div class="main-content">

    <div class="header">
        <h1>XML Student Data</h1>
    </div>

    <button class="btn">
        Load XML Records
    </button>

    <br><br>

    <table>

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Marks</th>
        </tr>

        <tr>
            <td>201</td>
            <td>Ramesh</td>
            <td>CSE</td>
            <td>82</td>
        </tr>

        <tr>
            <td>202</td>
            <td>Suresh</td>
            <td>ECE</td>
            <td>75</td>
        </tr>

    </table>

</div>

</body>
</html>