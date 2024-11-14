<%-- 
    Document   : qrcode
    Created on : Jul 14, 2024, 10:34:27 PM
    Author     : kiennn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Chuyển khoản</title>
        <style>
            .transfer-container {
                text-align: center;
                padding: 50px;
            }
            .transfer-container img {
                width: 500px;
                height: 500px;
            }
            .countdown {
                font-size: 24px;
                margin-top: 20px;
            }
            .confirm-button {
                font-size: 18px;
                padding: 10px 20px;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div class="transfer-container">
            <h1>Vui lòng chuyển khoản để thanh toán đơn hàng!</h1>
            <img src="images/qrcode.jfif" alt="QR Code">
            <p>Tên người nhận: Nhữ Trung Kiên</p>
            <p>Số tài khoản: 989423639999</p>
            <p>Trang sẽ tự động chuyển về trang chủ sau <span id="countdown">300</span> giây.</p>
            <button class="confirm-button" onclick="confirmTransfer()">Xác nhận đã chuyển khoản</button>
        </div>

        <script>
            var countdownElement = document.getElementById('countdown');
            var countdown = 300; // số giây đếm ngược (5 phút)

            var interval = setInterval(function () {
                countdown--;
                countdownElement.textContent = countdown;

                if (countdown <= 0) {
                    clearInterval(interval);
                    window.location.href = 'success.jsp'; // thay bằng đường dẫn trang chủ của bạn
                }
            }, 1000);

            function confirmTransfer() {
                clearInterval(interval);
                window.location.href = 'success.jsp'; // thay bằng đường dẫn trang chủ của bạn
            }
        </script>
    </body>
</html>
