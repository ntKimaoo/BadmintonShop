<%-- 
    Document   : success
    Created on : Jul 14, 2024, 10:27:08 PM
    Author     : kiennn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Đặt hàng thành công</title>
        <style>
            .success-container {
                text-align: center;
                padding: 50px;
            }
            .success-container img {
                width: 300px;
                height: 300px;
            }
            .countdown {
                font-size: 24px;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div class="success-container">
            <img src="images/tickgreen.png" alt="Success">
            <h1>Đặt hàng thành công!</h1>
            <h3>Đơn hàng sẽ được đưa đến bạn trong thời gian sớm nhất!</h3>
            <p>Trang sẽ tự động chuyển về trang chủ sau <span id="countdown">3</span> giây.</p>
        </div>

        <script>
            var countdownElement = document.getElementById('countdown');
            var countdown = 3; // số giây đếm ngược

            var interval = setInterval(function () {
                countdown--;
                countdownElement.textContent = countdown;

                if (countdown <= 0) {
                    clearInterval(interval);
                    window.location.href = 'home'; // thay bằng đường dẫn trang chủ của bạn
                }
            }, 1000);
        </script>
    </body>
</html>
