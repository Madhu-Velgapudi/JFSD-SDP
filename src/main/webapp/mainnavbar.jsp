<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
            color: #333;
        }

        h2 {
            text-align: center;
            font-size: 36px;
            color: #0056b3;
            padding: 30px 0;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Navbar Styles */
        .navbar {
            background-color: #0056b3;
            overflow: hidden;
            position: relative;
            width: 100%;
            padding: 10px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px; /* Moves navbar below the title */
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .navbar a:hover {
            background-color: #ffcc00;
            color: #0056b3;
        }

        /* Styling the container */
        .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #333;
            padding: 12px 0;
        }

        /* Hover effect for links */
        .navbar a {
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #ffcc00;
            color: #0056b3;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            .navbar a {
                padding: 12px 16px;
                font-size: 16px;
            }

            h2 {
                font-size: 28px;
            }
        }
    </style>
</head>
<body>

    <h2>Spring Boot MVC SDP Project</h2>

    <div class="navbar">
        <a href="/">Home</a>
        <a href="empreg">Student Registration</a>
        <a href="emplogin">Student Login</a>
        <a href="adminlogin">Admin Login</a>
    </div>

</body>
</html>
