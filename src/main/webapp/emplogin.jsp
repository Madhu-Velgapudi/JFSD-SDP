<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Login</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Navbar Styles */
        nav {
            background-color: #0056b3;
            width: 100%;
            padding: 15px 0;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 100;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            font-weight: bold;
            font-size: 18px;
        }

        nav a:hover {
            color: #ffcc00;
        }

        /* Centered Box Styling */
        .form-box {
            background-color: rgba(255, 255, 255, 0.85);
            padding: 40px;
            border-radius: 12px;
            width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin-top: 100px; /* To avoid navbar overlap */
        }

        h3 {
            font-size: 36px;
            color: #0056b3;
            font-weight: bold;
            margin-bottom: 20px;
            margin-top: 0;
        }

        h4 {
            text-align: center;
            color: red;
            font-size: 18px;
            margin-top: 10px;
            margin-bottom: 20px;
        }

        label {
            font-size: 20px;
            margin-bottom: 10px;
            text-align: left;
            display: block;
            font-weight: 600;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 18px;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #007bff;
            color: white;
            font-size: 20px;
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 48%;
            margin: 10px 1%;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #0056b3;
        }

        /* Layout for buttons */
        .button-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-box {
                width: 90%;
                padding: 30px;
            }

            h3 {
                font-size: 28px;
            }

            label,
            input[type="email"],
            input[type="password"],
            input[type="submit"],
            input[type="reset"] {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <%@include file="mainnavbar.jsp" %>

    <div class="form-box">
        <h3><u>Student Login</u></h3>

        <h4><c:out value="${message}"></c:out></h4>

        <form method="post" action="checkemployeelogin">
            <label for="eemail">Enter Email ID</label>
            <input type="email" id="eemail" name="eemail" required/>

            <label for="epwd">Enter Password</label>
            <input type="password" id="epwd" name="epwd" required/>

            <div class="button-container">
                <input type="submit" value="Login"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>

</body>
</html>
