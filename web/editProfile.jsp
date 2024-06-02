<%-- 
    Document   : editProfile
    Created on : May 31, 2024, 8:48:07 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            width: 100%;
            margin-top: 20px;
        }
        form p {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <form action="profile" method="post">
        <input type="hidden" name="profileId" value="${p.profileId}" />
        <p>User ID: <input type="text" name="userId" value="${p.userId}" /></p>
        <p>First Name: <input type="text" name="firstName" value="${p.firstName}" /></p>
        <p>Last Name: <input type="text" name="lastName" value="${p.lastName}" /></p>
        <p>Address: <input type="text" name="address" value="${p.address}" /></p>
        <p>Phone Number: <input type="text" name="phoneNumber" value="${p.phoneNumber}" /></p>
        <p><input type="submit" name="update" value="Update" /></p>
    </form>
</html>