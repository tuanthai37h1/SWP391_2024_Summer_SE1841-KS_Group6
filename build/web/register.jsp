<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Đăng ký</title>
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
            <section id="register-form">
                <h2>Đăng ký</h2>
                <form action="RegisterServlet" method="post">
                    <label for="name">Tên:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <label for="password">Mật khẩu:</label>
                    <input type="password" id="password" name="password" required>
                    <button type="submit">Đăng ký</button>
                </form>
            </section>
        </main>
        <footer>
            <p>&copy; 2024 Travel Services System</p>
        </footer>
    </body>
</html>
