<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Analytics</title>
<link rel="stylesheet" href="../css/style.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>

<jsp:include page="components/sidebar.jsp"/>

<div class="main-content">

    <div class="header">
        <h1>Analytics Dashboard</h1>
    </div>

    <div class="chart-container">
        <h3>Department Wise Average Marks</h3>
        <canvas id="departmentChart"></canvas>
    </div>

    <div class="chart-container">
        <h3>Pass vs Fail</h3>
        <canvas id="resultChart"></canvas>
    </div>

    <div class="chart-container">
        <h3>Marks Distribution</h3>
        <canvas id="distributionChart"></canvas>
    </div>

</div>

<script src="../js/charts.js"></script>

</body>
</html>