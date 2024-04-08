<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .navbar {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        .navbar img {
            height: 40px;
            width: auto;
            vertical-align: middle;
        }
        .menu {
            position: fixed;
            left: 20px;
            top: 100px;
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        .menu a {
            display: block;
            margin-bottom: 10px;
            color: #fff;
            text-decoration: none;
        }
        .container {
            margin: 20px auto;
            width: 80%;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-row {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .form-group {
            margin-bottom: 15px;
            width: calc(33% - 10px);
        }
        label {
            display: block;
            font-weight: bold;
            color: #333;
        }
        input[type="text"],
        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            float: right;
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }
        button:hover {
            background-color: #555;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
</head>
<body>
<div class="navbar">
    <div>
        <h4>Create Project</h4>
        <img id="logo" src="Logo.svg" alt="Logo">
    </div>
</div>
<div class="menu">
    <a href="/projects/dashboard">Dashboard</a>
    <a href="/projects/list">Project Listing</a>
    <a href="/projects/add">Add Project</a>
    <a href="/logout">Logout</a>
</div>
<div class="container">

    <form action="/addprojectsave" method="post">
        <div class="form-row">
            <div class="form-group">
                <!--<label for="projectName">Enter Project Theme:</label> -->
                <input type="text" id="projectName" name="projectName" placeholder="Enter Project Theme" required>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="reason">Reason:</label>
                <select id="reason" name="reason" required>
                    <option value="Business">For Business</option>
                    <option value="Personal">For Personal</option>
                    <option value="Dealership">For Dealership</option>
                    <option value="Transport">For Transport</option>
                </select>
            </div>
            <div class="form-group">
                <label for="type">Type:</label>
                <select id="type" name="type" required>
                    <option value="Type1">Type 1</option>
                    <option value="Type2">Type 2</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="division">Division:</label>
                <select id="division" name="division" required>
                    <option value="Filters">Filters</option>
                    <option value="Division1">Division 1</option>
                    <option value="Division2">Division 2</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="category">Category:</label>
                <select id="category" name="category" required>
                    <option value="Category1">Quality A</option>
                    <option value="Category2">Quality B</option>
                    <option value="Category3">Quality C</option>
                    <option value="Category4">Quality D</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="priority">Priority:</label>
                <select id="priority" name="priority" required>
                    <option value="High">High</option>
                    <option value="Medium">Medium</option>
                    <option value="Low">Low</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="department">Department:</label>
                <select id="department" name="department" required>
                    <option value="Department1">Strategy</option>
                    <option value="Department2">HR</option>
                    <option value="Department3">Maintenance</option>
                    <option value="Department4">Quality</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="startDate">Start Date:</label>
                <input type="text" id="startDate" name="Startdate" placeholder="DD-MM-YY" required>
            </div>
            <div class="form-group">
                <label for="endDate">End Date:</label>
                <input type="text" id="endDate" name="Enddate" placeholder="DD-MM-YY" required>
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <select id="location" name="location" required>
                    <option value="Location1">Pune</option>
                    <option value="Location2">Mumbai</option>
                    <option value="Location3">Delhi</option>
                    <option value="Location4">Hyderabad</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="status">Status:</label>
                <div class="status" name="Status">Registered</div>
            </div>
        </div>
        <button type="submit">Save Project</button>
    </form>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script>
    $( function() {
        $( "#startDate" ).datepicker({
            dateFormat: 'dd-mm-yy'
        });
        $( "#endDate" ).datepicker({
            dateFormat: 'dd-mm-yy'
        });
    } );
</script>
</body>
</html>
