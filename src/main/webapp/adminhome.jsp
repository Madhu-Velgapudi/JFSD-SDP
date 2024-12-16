<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #74ebd5, #9face6);
        margin: 0;
        padding: 0;
        color: #333;
    }
    h2 {
        font-size: 32px;
        color: #2c3e50;
        text-align: center;
        margin-top: 20px;
        animation: fadeIn 1.5s ease-in-out;
    }
    p {
        font-size: 20px;
        text-align: center;
        margin-top: 10px;
        color: #34495e;
        animation: fadeIn 1.8s ease-in-out;
    }
    table {
        margin: 20px auto;
        width: 80%;
        border-collapse: collapse;
        background: #fff;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        border-radius: 8px;
        overflow: hidden;
        animation: fadeIn 2s ease-in-out;
    }
    th, td {
        padding: 15px;
        text-align: center;
        font-size: 18px;
    }
    th {
        background: linear-gradient(135deg, #f093fb, #f5576c);
        color: #fff;
        font-weight: bold;
    }
    td {
        background: #f9f9f9;
    }
    tr:nth-child(even) td {
        background: #ececec;
    }
    a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
        transition: color 0.3s ease;
    }
    a:hover {
        color: #0056b3;
    }

    /* Animation */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<br>
<h2>Welcome to the Admin Page</h2>
<p>Here you can access and manage the data of students efficiently.</p>
<br>
<div style="text-align: center; font-size: 20px; font-weight: bold;">
    Total Students: <c:out value="${empcount}"></c:out>
</div>
<br>

<table>
    <thead>
        <tr>
            <th>Activity</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>View Student Data</td>
            <td><a href="viewStudents">View</a></td>
        </tr>
        <tr>
            <td>Add New Student</td>
            <td><a href="addStudent">Add</a></td>
        </tr>
        <tr>
            <td>Edit Student Details</td>
            <td><a href="editStudent">Edit</a></td>
        </tr>
        <tr>
            <td>Delete Student Records</td>
            <td><a href="deleteStudent">Delete</a></td>
        </tr>
        <tr>
            <td>Generate Reports</td>
            <td><a href="generateReports">Generate</a></td>
        </tr>
    </tbody>
</table>
</body>
</html>
