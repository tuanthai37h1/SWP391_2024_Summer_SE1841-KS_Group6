<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tạo tour mới</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <script>
            // Example existing IDs (this should ideally come from the server)
            const existingIds = <%= request.getAttribute("existingIds") != null ? request.getAttribute("existingIds") : "[]" %>;

            function validateForm() {
                const id = document.getElementById("id").value;
                const tourName = document.getElementById("tourName").value;
                const description = document.getElementById("description").value;
                const location = document.getElementById("location").value;
                const price = document.getElementById("price").value;
                const startDate = document.getElementById("startDate").value;
                const endDate = document.getElementById("endDate").value;
                const image = document.getElementById("image").value;

                // Simple validation checks
                if (id <= 0) {
                    alert("ID must be a positive number.");
                    return false;
                }
                if (existingIds.includes(parseInt(id))) {
                    alert("ID already exists. Please enter a different ID.");
                    return false;
                }
                if (tourName.trim() === "") {
                    alert("Tour Name is required.");
                    return false;
                }
                if (description.trim() === "") {
                    alert("Description is required.");
                    return false;
                }
                if (location.trim() === "") {
                    alert("Location is required.");
                    return false;
                }
                if (price <= 0) {
                    alert("Price must be a positive number.");
                    return false;
                }
                if (new Date(startDate) > new Date(endDate)) {
                    alert("Start Date must be before End Date.");
                    return false;
                }
                if (!image) {
                    alert("Image is required.");
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

                <h2>Tạo tour mới</h2>

                <form action="CreateTourServlet" method="post" onsubmit="return validateForm();">

                    <label for="id">ID:</label>
                    <input type="number" id="id" name="id" required>

                    <label for="tourName">TOUR NAME:</label>
                    <input type="text" id="tourName" name="tourName" required>

                    <label for="description">DESCRIPTION:</label>
                    <input type="text" id="description" name="description" required>

                    <label for="location">LOCATION:</label>
                    <input type="text" id="location" name="location" required>

                    <label for="price">PRICE:</label>
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
        <%
        String error = (String) request.getAttribute("error");
        String existingIds = "[1, 2, 3]"; // Example existing IDs, this should be fetched from the server
        if (error != null) {
        %>
        <p style="color: red;"><%= error %></p>
        <%
            }
        %>
        <footer>
            <p>&copy; 2024 Travel Services System</p>
        </footer>
    </body>
</html>
