<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Travel Services System</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <style>
            /* CSS to adjust the size of the image */
            .tour-image {
                width: 100%;
                aspect-ratio: 4 / 3; /* Ensure 4:3 aspect ratio */
                object-fit: cover; /* Crop image to fit the container */
                border-radius: 8px 8px 0 0; /* Round the top corners of the image */
                cursor: pointer; /* Add a pointer cursor to indicate image can be clicked */
            }
            .tour-container {
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                margin: 0; /* Remove extra margin */
                overflow: hidden;
                transition: transform 0.2s;
            }
            .tour-container:hover {
                transform: scale(1.05);
            }
            .tour-details {
                padding: 20px;
                display: none; /* Initially hide the tour details */
            }
            .tour-details table {
                width: 100%;
                border-collapse: collapse;
            }
            .tour-details th, .tour-details td {
                text-align: left;
                padding: 12px 15px;
                border-bottom: 1px solid #ddd;
            }
            .tour-details th {
                background-color: #f2f2f2;
                color: #555;
            }
            .tour-details td {
                color: #333;
            }
            .tour-list {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
                gap: 20px;
                padding: 20px;
            }
            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5f5;
                color: #333;
                margin: 0; /* Remove default margin from body */
                padding: 0; /* Remove default padding from body */
            }
            h2 {
                text-align: center;
                margin: 20px 0;
            }
            a {
                display: inline;
                color: #007BFF;
                text-decoration: none;
                font-weight: bold;
            }
            a:hover {
                color: #0056b3;
            }

            nav ul {
                list-style: none;
                padding: 0;
                text-align: center;
            }
            nav ul li {
                display: inline;
                margin: 0 15px;
            }
            nav ul li a {
                color: #fff;
                text-decoration: none;
                font-weight: bold;
            }
            nav ul li a:hover {
                color: #d1e0ff;
            }

            /* Additional CSS for the search form */
            .search-container {
                text-align: center;
                margin-top: 20px;
            }
            .search-container form {
                display: inline-block;
                position: relative;
                margin: 0 auto;
            }
            .search-container input[type="text"] {
                width: 300px;
                padding: 10px 15px;
                border: 1px solid #ccc;
                border-radius: 25px 0 0 25px;
                font-size: 16px;
                outline: none;
                transition: border-color 0.2s;
            }
            .search-container input[type="text"]:focus {
                border-color: #007BFF;
            }
            .search-container input[type="submit"] {
                padding: 10px 20px;
                border: none;
                background-color: #007BFF;
                color: #fff;
                font-size: 16px;
                cursor: pointer;
                border-radius: 0 25px 25px 0;
                transition: background-color 0.2s;
            }
            .search-container input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
        <script>
            function toggleDetails(event) {
                const details = event.currentTarget.nextElementSibling;
                if (details.style.display === "none" || details.style.display === "") {
                    details.style.display = "block";
                } else {
                    details.style.display = "none";
                }
            }
        </script>
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="main">Trang chủ</a></li>
                    <li><a href="login.jsp">Đăng nhập</a></li>
                    <li><a href="register.jsp">Đăng ký</a></li>
                    <li><a href="list">Tour</a></li>
                </ul>
            </nav>

        </header>
        <main>
            <section id="banner">
                <h1>Welcome to Travel Services System</h1>
                <p>Explore the world with our tours</p>
            </section>
            <section id="featured-tours">
                <h2>Featured Tours</h2>

                <div class="search-container">
                    <form action="main" method="post">
                        <input name="searchT" type="text" placeholder="Enter tour name">
                        <input type="submit" value="Search">
                    </form>
                </div>
                <div class="tour-list">
                    <!-- JSP code to display the list of tours from the database -->
                    <c:forEach var="l" items="${main}">
                        <div class="tour-container">
                            <a href="detail?id=${l.id}">
                                <img src="image/${l.image}" class="tour-image" alt="${l.image}" onclick="toggleDetails(event)" />
                            </a>
                            <div class="tour-details">
                                <table>
                                    <tr>
                                        <th>ID:</th>
                                        <td>${l.id}</td>
                                    </tr>
                                    <tr>
                                        <th>TOUR NAME:</th>
                                        <td>${l.tourname}</td>
                                    </tr>
                                    <tr>
                                        <th>DESCRIPTION:</th>
                                        <td>${l.description}</td>
                                    </tr>
                                    <tr>
                                        <th>LOCATION:</th>
                                        <td>${l.location}</td>
                                    </tr>
                                    <tr>
                                        <th>PRICE:</th>
                                        <td>${l.price}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </section>
        </main>
        <footer>
            <p>&copy; 2024 Travel Services System</p>
        </footer>
    </body>
</html>
