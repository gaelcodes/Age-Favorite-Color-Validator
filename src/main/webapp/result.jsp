<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

    <meta charset="UTF-8">
    
    <title>Result</title>
    
    <style>
        body {
        
            font-family: Arial, sans-serif;
            
            background: #000;
            
            display: flex;
            
            justify-content: center;
            
            align-items: center;
            
            height: 100vh;
            
            margin: 0;
        }
        .container {
            
            background: #fff;
            
            padding: 30px;
            
            border-radius: 12px;
            
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            
            width: 350px;
            
            text-align: center;
            
            border: 2px solid #c3b8e0;
        }
        h2 {
            
            margin-bottom: 20px;
            
            color: #5a3e96;
        }
        p {
            
            font-size: 16px;
            
            color: #444;
            
            margin: 10px 0;
        }
        .btn {
            
            display: inline-block;
            
            margin-top: 20px;
            
            text-decoration: none;
            
            background: #7a4ed8;
            
            color: white;
            
            padding: 10px 15px;
            
            border-radius: 8px;
            
            font-weight: bold;
            
            transition: 0.3s ease;
        }
        .btn:hover {
            
            background: #5a3e96;
        }
        
    </style>
    
</head>

<body>

    <div class="container">

        <h2>Results</h2>

        <p><%= request.getAttribute("message") %></p>

        <p><%= request.getAttribute("colorMessage") %></p>

        <a href="index.html" class="btn">Go Back</a>

    </div>

</body>
</html>
