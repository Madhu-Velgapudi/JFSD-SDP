<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee</title>
    <style>
        /* Global Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            font-size: 28px;
            color: #3a7bd5;
            margin-top: 30px;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        u {
            border-bottom: 3px solid #3a7bd5;
            padding-bottom: 5px;
        }

        /* Navbar Styling */
        nav {
            background-color: #0056b3;
            padding: 15px;
            text-align: center;
            color: white;
            font-size: 16px;
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

        /* Table Container Styling */
        .table-container {
            width: 80%;
            margin: 40px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th {
            padding: 12px;
            background-color: #3a7bd5;
            color: white;
            font-weight: bold;
            text-align: center;
            text-transform: uppercase;
        }

        td {
            padding: 12px;
            text-align: center;
            font-size: 14px;
        }

        /* Alternating Row Colors */
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }

        /* Hover Effects for Table */
        tr:hover {
            background-color: #f1f1f1;
        }

        /* Action Link Styling */
        a {
            text-decoration: none;
            color: #ff5c5c;
            font-weight: bold;
            padding: 8px 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #ffb3b3;
        }

        /* Button Container */
        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button-container a {
            padding: 10px 20px;
            background-color: #337ab7;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            margin: 10px;
        }

        .button-container a:hover {
            background-color: #23527c;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table, th, td {
                font-size: 12px;
                padding: 10px;
            }

            th, td {
                padding: 8px;
            }

            .table-container {
                width: 95%;
            }
        }
    </style>
</head>
<body>

    <%@include file="adminnavbar.jsp" %>

    <h3><u>Delete Employee</u></h3>

    <div class="table-container">
        <table>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>DATE OF BIRTH</th>
                <th>DEPARTMENT</th>
                <th>LOCATION</th>
                <th>EMAIL</th>
                <th>CONTACT</th>
                <th>STATUS</th>
                <th>ACTION</th>
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
                    <td>
                        <a href='<c:url value="delete?id=${emp.id}"></c:url>'>Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
