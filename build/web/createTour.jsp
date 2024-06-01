<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tạo tour mới</title>
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
               
                <h2>Tạo tour mới</h2>
                
                <form action="CreateTourServlet" method="post">
                    
                    <label for="id">ID:</label>
                    <input type="number" id="id" name="id" required>
                    
                    <label for="tourName">TOUR NAME:</label>
                    <input type="text" id="tourName" name="tourName" required>
                    
                    <label for="description">DESCRIPTION:</label>
                    <input type="text" id="description" name="description" required>
                    
                    <label for="location">LOCATION:</label>
                    <input type="text" id="location" name="location" required>
                    
                    <label for="price">PRICE</label>
                    <input type="number" id="price" name="price" required>
                    
                    <label for="startDate">START DATE:</label>
                    <input type="date" id="startDate" name="startdate" required>
                   
                    <label for="endDate">END DATE:</label>
                    <input type="date" id="endDate" name="enddate" required>
                    
                    <label for="image">IMAGE:</label>
                    <input type="file" id="image" name="image" required>
                   
                    <button type="submit">Tạo tour</button>
                </form>
            </section>
        </main>
        <footer>
            <p>&copy; 2024 Travel Services System</p>
        </footer>
    </body>
</html>
