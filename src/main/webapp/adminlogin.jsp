<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        /* General reset for margins and paddings */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f7ff; /* Light, soft background */
            color: #333;
        }

        /* Navbar styling (if any) */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: #333;
        }

        /* Title */
        h3 {
            text-align: center;
            color: #3a3a3a;
            font-size: 30px;
            margin: 30px 0 20px;
        }

        h3 u {
            color: #f08a5d; /* Warm color for underline */
        }

        /* Form container */
        .form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        /* Hover effect for form container */
        .form-container:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.15);
        }

        table {
            width: 100%;
        }

        /* Input styling */
        td {
            padding: 12px 0;
        }

        label {
            font-weight: 600;
            font-size: 16px;
            color: #333;
            margin-bottom: 8px;
            display: block;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            transition: border-color 0.3s ease;
            box-sizing: border-box;
        }

        /* Focus effect for inputs */
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #f08a5d;
            outline: none;
        }

        /* Submit and Reset buttons */
        input[type="submit"],
        input[type="reset"] {
            background-color: #f08a5d;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 30px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            margin: 20px 10px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #e67e3e;
            transform: translateY(-3px);
        }

        .button-container {
            text-align: center;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                width: 90%;
                padding: 20px;
            }

            h3 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <h3><u>Admin Login</u></h3>

    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required /></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>