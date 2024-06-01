<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>UPDATE TOUR</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
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
            <form action="updateTour" method="post">
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
                <input type="date" name="startDate" value="${update.startDate}" required>

                <label for="endDate">END DATE:</label>
                <input type="date" name="endDate" value="${update.endDate}" required>

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
