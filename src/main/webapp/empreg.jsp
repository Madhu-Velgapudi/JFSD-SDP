<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        /* Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #eef2f3, #8e9eab);
            color: #333;
        }

        /* Navbar Styling */
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

        /* Header Styling */
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

        /* Form Container */
        .form-container {
            width: 60%;
            margin: 20px auto;
            background: white;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        /* Form Table */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        /* Table Rows */
        tr {
            margin-bottom: 15px;
        }

        /* Labels */
        label {
            font-weight: bold;
            color: #333;
            display: inline-block;
            margin-bottom: 5px;
        }

        /* Input Fields */
        input[type="text"], input[type="date"], input[type="number"], input[type="email"], input[type="password"], select {
            width: calc(100% - 20px);
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: border 0.3s ease;
        }

        input[type="text"]:focus, input[type="date"]:focus, input[type="number"]:focus, input[type="email"]:focus, input[type="password"]:focus, select:focus {
            border-color: #3a7bd5;
            outline: none;
        }

        /* Radio Buttons */
        input[type="radio"] {
            margin: 0 10px 0 0;
        }

        /* Submit and Reset Buttons */
        .button-container input[type="submit"], .button-container input[type="reset"] {
            padding: 10px 20px;
            font-size: 14px;
            font-weight: bold;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .button-container input[type="submit"] {
            background-color: #28a745;
        }

        .button-container input[type="submit"]:hover {
            background-color: #218838;
        }

        .button-container input[type="reset"] {
            background-color: #dc3545;
        }

        .button-container input[type="reset"]:hover {
            background-color: #c82333;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                width: 90%;
                padding: 15px;
            }

            input[type="text"], input[type="date"], input[type="number"], input[type="email"], input[type="password"], select {
                width: calc(100% - 10px);
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3><u>Student Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertemp">
            <table>
                <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="egender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="ECE">ECE</option>
                            <option value="MECH">MECH</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.01" required/></td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
