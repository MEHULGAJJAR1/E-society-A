<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin | List Vehicles</title>

    <!-- Optional: Bootstrap CSS for styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            padding: 20px;
            font-family: Arial, sans-serif;
        }
        h2 {
            margin-bottom: 20px;
        }
        th, td {
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Vehicle Entry List</h2>
        <div class="table-responsive">
            <table class="table table-bordered table-hover" id="myTable">
                <thead class="table-dark">
                    <tr>
                        <th>Driver Name</th>
                        <th>Vehicle Number</th>
                        <th>Vehicle Type</th>
                        <th>Flat No</th>
                        <th>Purpose of Visit</th>
                        <th>Contact Number</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${vehiclelist}" var="l">
                        <tr>
                            <td>${l.driverName}</td>
                            <td>${l.vehicleNum}</td>
                            <td>${l.vehicleType}</td>
                            <td>${l.flatNum}</td>
                            <td>${l.purpose}</td>
                            <td>${l.contactNum}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
