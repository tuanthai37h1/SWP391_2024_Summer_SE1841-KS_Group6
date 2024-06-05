<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UPDATE TOUR</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <script type="text/javascript">
            function validateForm() {
                const tourName = document.forms["updateTourForm"]["tourName"].value;
                const description = document.forms["updateTourForm"]["description"].value;
                const location = document.forms["updateTourForm"]["location"].value;
                const price = document.forms["updateTourForm"]["price"].value;
                const startDate = document.forms["updateTourForm"]["startDate"].value;
                const endDate = document.forms["updateTourForm"]["endDate"].value;

                if (tourName == "" || description == "" || location == "" || price == "" || startDate == "" || endDate == "") {
                    alert("All fields must be filled out");
                    return false;
                }

                if (price <= 0) {
                    alert("Price must be a positive number");
                    return false;
                }

                if (new Date(startDate) > new Date(endDate)) {
                    alert("Start date must be before end date");
                    return false;
                }

                return true;
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
            <section id="create-tour-form">
                <h2>UPDATE TOUR</h2>
                <form name="updateTourForm" action="updateTour" method="post" onsubmit="return validateForm();">
                    <label for="id">ID:</label>
                    <input value="${update.id}" type="number" name="id" readonly required>

                    <label for="tourName">TOUR NAME:</label>
                    <input type="text" name="tourName" value="${update.tourname}" required>

                    <label for="description">DESCRIPTION:</label>
                    <input type="text" name="description" value="${update.description}" required>

                    <label for="location">LOCATION:</label>
                    <input type="text" name="location" value="${update.location}" required>

                    <label for="price">PRICE:</label>
                    <input type="number" name="price" value="${update.price}" required>

                    <label for="startDate">START DATE:</label>
                    <input type="date" name="startDate" id="startdate" value="${update.startDate}" required>

                    <label for="endDate">END DATE:</label>
                    <input type="date" name="endDate" id="enddate" value="${update.endDate}" required>

                    <label for="image">IMAGE:</label>
                    <input type="file" name="image" value="${update.image}">

                    <button type="submit">UPDATE</button>
                </form>
            </section>
        </main>

        <footer>
            <p>&copy; 2024 Travel Services System</p>
        </footer>
    </body>
</html>
