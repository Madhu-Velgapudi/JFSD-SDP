<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #f6f9fc, #e0ebf4);
            color: #333;
        }

        /* Header Styling */
        header {
            background: #007BFF;
            padding: 20px;
            text-align: center;
            color: white;
            font-size: 24px;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        /* Navbar Styling */
        nav {
            background-color: #0056b3;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

        /* Form Container */
        .form-container {
            max-width: 700px;
            margin: 40px auto;
            padding: 30px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            font-size: 28px;
            color: #0056b3;
            margin-bottom: 20px;
            text-decoration: underline;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-spacing: 0 10px;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        input[type="file"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background: #f9f9f9;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="file"]:focus {
            border-color: #007BFF;
            background: #eef7ff;
            outline: none;
        }

        /* File Upload */
        input[type="file"] {
            padding: 8px;
            border: 2px dashed #e0e0e0;
            background: #f4f4f9;
            text-align: center;
            font-size: 14px;
            cursor: pointer;
        }

        input[type="file"]:hover {
            border-color: #007BFF;
        }

        /* Button Styling */
        .button-container input[type="submit"],
        .button-container input[type="reset"] {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .button-container input[type="submit"] {
            background: #007BFF;
            color: white;
        }

        .button-container input[type="submit"]:hover {
            background: #0056b3;
        }

        .button-container input[type="reset"] {
            background: #ff4c4c;
            color: white;
        }

        .button-container input[type="reset"]:hover {
            background: #d93636;
        }

        /* Footer Styling */
        footer {
            text-align: center;
            padding: 10px 0;
            background: #f1f1f1;
            color: #666;
            margin-top: 20px;
            border-top: 1px solid #ddd;
            font-size: 14px;
        }
    </style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<div class="form-container">
    <h3>Add Student</h3>
    <form:form modelAttribute="customer" method="post" action="insertcustomer" enctype="multipart/form-data">
        <table>
            <tr>
                <td><label>Student Name</label></td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td><label>Age</label></td>
                <td><input type="number" name="age" required></td>
            </tr>
            <tr>
                <td><label>Profile Picture</label></td>
                <td>
                    <input type="file" name="profilePicture" accept="image/*">
                </td>
            </tr>
            <tr>
                <td><label>Resume/CV</label></td>
                <td>
                    <input type="file" name="resumeDocument" accept=".pdf,.doc,.docx">
                </td>
            </tr>
            <tr>
                <td><label>Additional Documents</label></td>
                <td>
                    <input type="file" name="additionalDocuments" multiple>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-container" style="text-align: center;">
                    <input type="submit" value="Add">
                    <input type="reset" value="Clear">
                </td>
            </tr>
        </table>
    </form:form>
</div>

<footer>
    &copy; 2024 Admin Dashboard | Your Organization
</footer>

</body>
</html>
