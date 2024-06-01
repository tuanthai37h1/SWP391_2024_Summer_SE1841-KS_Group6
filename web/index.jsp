<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Travel Services System</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <style>
            /* CSS để điều chỉnh kích thước ảnh */
            .tour-image {
                width: 100%; /* Đặt chiều rộng ảnh phù hợp với thẻ card */
                height: auto;
                border-radius: 8px 8px 0 0; /* Bo tròn góc trên của ảnh */
            }
            .tour-container {
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                margin: 20px;
                overflow: hidden;
                transition: transform 0.2s;
            }
            .tour-container:hover {
                transform: scale(1.05);
            }
            .tour-details {
                padding: 20px;
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
        </style>
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
                <div class="tour-list">
                    <!-- Mã JSP để hiển thị danh sách các tour từ cơ sở dữ liệu -->
                    <c:forEach var="l" items="${listT}">
                        <div class="tour-container">
                            <img src="image/${l.image}" class="tour-image" alt="${l.image}"/>
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
