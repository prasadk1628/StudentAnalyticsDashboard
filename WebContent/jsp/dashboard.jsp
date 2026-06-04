<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<link rel="stylesheet" href="../css/style.css">
</head>

<body>

<jsp:include page="components/sidebar.jsp"/>

<div class="main-content">

    <div class="header">
        <h1>Student Performance Analytics Dashboard</h1>
    </div>

    <div class="card-container">

        <div class="card">
            <h3>Total Students</h3>
            <p>115</p>
        </div>

        <div class="card">
            <h3>Average Marks</h3>
            <p>74.5</p>
        </div>

        <div class="card">
            <h3>Highest Marks</h3>
            <p>95</p>
        </div>

        <div class="card">
            <h3>Pass Percentage</h3>
            <p>86%</p>
        </div>

    </div>

    <div class="chart-container">
        <h3>Department Wise Average Marks</h3>

        <canvas id="deptChart"></canvas>
    </div>

    <br>

    <h3>Recent Students</h3>

    <table>

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Marks</th>
            <th>Result</th>
        </tr>

        <tr>
            <td>101</td>
            <td>Rahul</td>
            <td>CSE</td>
            <td>85</td>
            <td>PASS</td>
        </tr>

        <tr>
            <td>102</td>
            <td>Priya</td>
            <td>ECE</td>
            <td>72</td>
            <td>PASS</td>
        </tr>

    </table>

</div>

</body>
</html>