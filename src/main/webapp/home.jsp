<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student LMS - Home</title>
    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #9face6);
            margin: 0;
            padding: 0;
            line-height: 1.6;
            color: #333;
        }
        .container {
            width: 80%;
            margin: 30px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            animation: fadeIn 1.5s ease-in-out;
        }
        h1 {
            color: #34495e;
            text-align: center;
            border-bottom: 3px solid #3498db;
            padding-bottom: 10px;
            font-size: 36px;
        }

        /* Welcome Section */
        .welcome-section {
            text-align: center;
            padding: 20px;
            background: linear-gradient(135deg, #f093fb, #f5576c);
            color: #fff;
            border-radius: 8px;
            animation: slideDown 1.2s ease-in-out;
        }
        .welcome-section h2 {
            font-size: 28px;
            margin-bottom: 10px;
        }
        .welcome-section p {
            font-size: 18px;
        }

        /* Info Grid */
        .info-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 20px;
        }
        .info-card {
            background: linear-gradient(135deg, #e0c3fc, #8ec5fc);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .info-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
        }
        .info-card h3 {
            margin-bottom: 10px;
            font-size: 22px;
        }
        .info-card p {
            font-size: 16px;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        @keyframes slideDown {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    
    <div class="container">
        <h1>Student Learning Management System</h1>
        
        <div class="welcome-section">
            <h2>Welcome to Your Educational Portal</h2>
            <p>Access your courses, resources, and academic information in one place.</p>
        </div>
        
        <div class="info-grid">
            <div class="info-card">
                <h3>Course Management</h3>
                <p>View and manage your enrolled courses easily.</p>
            </div>
            <div class="info-card">
                <h3>Academic Resources</h3>
                <p>Access study materials, lecture notes, and additional learning resources.</p>
            </div>
            <div class="info-card">
                <h3>Performance Tracking</h3>
                <p>Monitor your academic progress and grades.</p>
            </div>
        </div>
    </div>
</body>
</html>
