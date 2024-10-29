<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Note Taker</title>

    <%@include file="all_js_css.jsp" %>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .hero-section {
            background-image: url('css/notetaker.png'); /* Add a suitable background */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
        }

        .hero-text {
            text-align: center;
        }

        h1 {
            font-size: 3rem;
        }

        .container {
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="container-fluid m-0 p-0">
        <%@include file="navbar.jsp"%>
    </div>

    <!-- Hero Section -->
    <div class="hero-section">
        <div class="hero-text">
            <h1>Welcome to Note Taker</h1>
            <p class="lead">Organize your thoughts, ideas, and notes effortlessly</p>
        </div>
    </div>

    <div class="container text-center mt-5">
        <h2>About Note Taker</h2>
        <p class="mt-4">This application helps you manage and organize your notes effectively, making productivity easier than ever!</p>
    </div>

</body>
</html>
