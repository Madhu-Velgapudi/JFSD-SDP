<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spring Boot MVC Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', 'Segoe UI', Arial, sans-serif;
            background-image: linear-gradient(rgba(255,255,255,0.7), rgba(255,255,255,0.7)), 
                              url('https://images.unsplash.com/photo-1516737490857-847e4f4644d5?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-attachment: fixed;
        }

        h2 {
            color: #2c3e50;
            font-size: 32px;
            padding: 40px 0;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
            letter-spacing: 1px;
            backdrop-filter: blur(5px);
            background-color: rgba(255,255,255,0.6);
            padding: 15px 30px;
            border-radius: 10px;
        }

        .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
            background: rgba(52, 152, 219, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            max-width: 900px;
            width: 90%;
            backdrop-filter: blur(10px);
        }

        .navbar a {
            text-decoration: none;
            color: white;
            padding: 12px 25px;
            border-radius: 25px;
            transition: all 0.3s ease;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            position: relative;
            overflow: hidden;
            text-align: center;
            background: rgba(255,255,255,0.2);
        }

        .navbar a:hover {
            transform: scale(1.05);
            background: rgba(255,255,255,0.3);
        }

        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                width: 95%;
            }

            .navbar a {
                width: 100%;
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <h2>Spring Boot MVC SDP Project</h2>
    <div class="navbar">
        <a href="adminhome">Home</a>
        <a href="viewallemps">View All Students</a>
        <a href="deleteemp">Delete Student</a>
        <a href="updateempstatus">Update Student Status</a>
        <a href="addcustomer">Add Student</a>
        <a href="adminlogout">Logout</a>
    </div>
</body>
</html>