<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee Status</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #eef2f3, #8e9eab);
            color: #333;
        }

        /* Page Header */
        h3 {
            text-align: center;
            font-size: 28px;
            color: #333;
            margin: 20px 0;
            text-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        }

        h3 u {
            text-decoration: none;
            border-bottom: 3px solid #3a7bd5;
            padding-bottom: 5px;
        }

        /* Navbar Inclusion */
        nav {
            background-color: #0056b3;
            padding: 15px;
            text-align: center;
            color: white;
            font-size: 16px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            font-weight: bold;
        }

        nav a:hover {
            color: #ffcc00;
        }

        /* Table Styling */
        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        /* Table Header */
        th {
            padding: 15px;
            background: #3a7bd5;
            color: white;
            text-transform: uppercase;
            font-size: 14px;
            letter-spacing: 1px;
        }

        /* Table Cells */
        td {
            padding: 12px;
            text-align: center;
            color: #333;
            font-size: 14px;
        }

        /* Row Styling */
        tr:nth-child(even) {
            background: #f7f7f7;
        }

        tr:nth-child(odd) {
            background: #ffffff;
        }

        tr:hover {
            background: #eef2f7;
            transition: background 0.3s ease;
        }

        /* Buttons in Actions */
        .action-buttons a {
            text-decoration: none;
            padding: 8px 12px;
            margin: 5px;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .action-buttons a.accept {
            background: #28a745;
        }

        .action-buttons a.accept:hover {
            background: #218838;
        }

        .action-buttons a.reject {
            background: #dc3545;
        }

        .action-buttons a.reject:hover {
            background: #c82333;
        }

        /* Mobile Responsive Styling */
        @media (max-width: 768px) {
            table, th, td {
                font-size: 12px;
            }

            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>

<%@include file="adminnavbar.jsp" %>

<h3><u>Update Employee Status</u></h3>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Date of Birth</th>
        <th>Department</th>
        <th>Location</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${emplist}" var="emp">
        <tr>
            <td><c:out value="${emp.id}"/></td>
            <td><c:out value="${emp.name}"/></td>
            <td><c:out value="${emp.gender}"/></td>
            <td><c:out value="${emp.dateofbirth}"/></td>
            <td><c:out value="${emp.department}"/></td>
            <td><c:out value="${emp.location}"/></td>
            <td><c:out value="${emp.email}"/></td>
            <td><c:out value="${emp.contact}"/></td>
            <td><c:out value="${emp.status}"/></td>
            <td class="action-buttons">
                <a href='<c:url value="updatestatus?id=${emp.id}&status=Accepted"/>' class="accept">Accept</a>
                <a href='<c:url value="updatestatus?id=${emp.id}&status=Rejected"/>' class="reject">Reject</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
