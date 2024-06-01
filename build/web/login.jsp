<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Đăng nhập</title>
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
            <section id="login-form">
                <h2>Đăng nhập</h2>
                <form action="LoginServlet" method="post">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <label for="password">Mật khẩu:</label>
                    <input type="password" id="password" name="password" required>
                    <button type="submit">Đăng nhập</button>
                </form>
            </section>
        </main>
        <footer>
            <p>&copy; 2024 Travel Services System</p>
        </footer>
    </body>
</html>
