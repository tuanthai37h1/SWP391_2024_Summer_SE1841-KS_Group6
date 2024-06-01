<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Travel Services System</title>
        
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <style>
            /* CSS để điều chỉnh kích thước ảnh */
            body, html {
                height: 100%;
                margin: 0;
                font-family: Arial, sans-serif;
            }
            .container {
                display: flex;
                flex-direction: row;
                height: 100%;
            }
            .tour-image {
                flex: 1; /* Đặt ảnh chiếm 1/3 chiều rộng */
                max-width: 33.333%;
                height: auto;
                border-radius: 8px 0 0 8px; /* Bo tròn góc trái của ảnh */
                cursor: pointer; /* Thêm con trỏ để hiển thị rằng ảnh có thể click */
            }
            .tour-info {
                flex: 2; /* Đặt thông tin tour chiếm 2/3 chiều rộng */
                padding: 20px;
            }
            .tour-info h3 {
                margin-top: 0;
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
            <section id="featured-tours">
                <h2>Featured Tours</h2>
                <div class="container">
                    <img class="tour-image" src="image/${t.image}" alt="alt"/>
                    <div class="tour-info">
                        <h3>${t.tourname}</h3>
                        <p>${t.description}</p>
                        <p><strong>Location:</strong> ${t.location}</p>
                        <p><strong>Price:</strong> ${t.price}</p>
                    </div>
                </div>
            </section>
        </main>
        <footer>
            <p>&copy; 2024 Travel Services System</p>
        </footer>
    </body>
</html>
