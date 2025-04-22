<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | List Visitors</title>

    <!-- Optional: Include Bootstrap for better styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            padding: 20px;
            font-family: Arial, sans-serif;
        }
        h2 {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
        }
        th, td {
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Visitor List</h2>
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Visitor Name</th>
                        <th>Contact Number</th>
                        <th>ID Proof Type</th>
                        <th>ID Proof Number</th>
                        <th>Flat No</th>
                        <th>Purpose of Visit</th>
                        <th>Number of Visitors</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${visitorlist}" var="v">
                        <tr>
                            <td>${v.visiterName}</td>
                            <td>${v.contactNum}</td>
                            <td>${v.idProof}</td>
                            <td>${v.idProofNum}</td>
                            <td>${v.flatNum}</td>
                            <td>${v.purpose}</td>
                            <td>${v.numVisitor}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
