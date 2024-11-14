<%-- 
    Document   : dashboard
    Created on : Jul 6, 2024, 11:02:55 AM
    Author     : kiennn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Title Page-->
        <title>Dashboard</title>

        <!-- Fontfaces CSS-->
        <link href="css/font-face.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

        <!-- Bootstrap CSS-->
        <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

        <!-- Vendor CSS-->
        <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
        <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
        <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
        <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
        <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="css/theme.css" rel="stylesheet" media="all">
        <style>
            /*
  Common invoice styles. These styles will work in a browser or using the HTML
  to PDF anvil endpoint.
            */

            body {
                font-size: 16px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            table tr td {
                padding: 0;
            }

            table tr td:last-child {
                text-align: right;
            }

            .bold {
                font-weight: bold;
            }

            .right {
                text-align: right;
            }

            .large {
                font-size: 1.75em;
            }

            .total {
                font-weight: bold;
                color: #fb7578;
            }

            .logo-container {
                margin: 20px 0 70px 0;
            }

            .invoice-info-container {
                font-size: 0.875em;
            }
            .invoice-info-container td {
                padding: 4px 0;
            }

            .client-name {
                font-size: 1.5em;
                vertical-align: top;
            }

            .line-items-container {
                margin: 70px 0;
                font-size: 0.875em;
            }

            .line-items-container th {
                text-align: left;
                color: #999;
                border-bottom: 2px solid #ddd;
                padding: 10px 0 15px 0;
                font-size: 0.75em;
                text-transform: uppercase;
            }

            .line-items-container th:last-child {
                text-align: right;
            }

            .line-items-container td {
                padding: 15px 0;
            }

            .line-items-container tbody tr:first-child td {
                padding-top: 25px;
            }

            .line-items-container.has-bottom-border tbody tr:last-child td {
                padding-bottom: 25px;
                border-bottom: 2px solid #ddd;
            }

            .line-items-container.has-bottom-border {
                margin-bottom: 0;
            }

            .line-items-container th.heading-quantity {
                width: 50px;
            }
            .line-items-container th.heading-price {
                text-align: right;
                width: 100px;
            }
            .line-items-container th.heading-subtotal {
                width: 100px;
            }

            .payment-info {
                width: 38%;
                font-size: 0.75em;
                line-height: 1.5;
            }

            .footer {
                margin-top: 100px;
            }

            .footer-thanks {
                font-size: 1.125em;
            }

            .footer-thanks img {
                display: inline-block;
                position: relative;
                top: 1px;
                width: 16px;
                margin-right: 4px;
            }

            .footer-info {
                float: right;
                margin-top: 5px;
                font-size: 0.75em;
                color: #ccc;
            }

            .footer-info span {
                padding: 0 5px;
                color: black;
            }

            .footer-info span:last-child {
                padding-right: 0;
            }

            .page-container {
                display: none;
            }
        </style>

    </head>

    <body class="container">


        <div class="page-container">
            Page
            <span class="page"></span>
            of
            <span class="pages"></span>
        </div>

        <div class="logo-container">
            <img
                style="height: 50px"
                src="images/logo-header.jpg"
                >
        </div>

        <table class="invoice-info-container">
            <tr>
                <td rowspan="2" class="client-name">
                    Hóa đơn thanh toán
                </td>
                <td>
                    Địa chỉ giao hàng
                </td>
            </tr>
            <tr>
                <td>
                    ${sessionScope.order.address}
                </td>
            </tr>
            <tr>
                <td>
                    Invoice Date: <strong>${sessionScope.hoadon.createDate}</strong>
                </td>
                <td>
                    Gửi đi từ: <strong>Song Phượng, Đan Phương, Hà Nội</strong>
                </td>
            </tr>
            <tr>
                <td>
                    Invoice No: <strong>${sessionScope.hoadon.invoidid}</strong>
                </td>
                <td>
                    ${sessionScope.order.email}
                </td>
            </tr>
        </table>


        <table class="line-items-container">
            <thead>
                <tr>
                    <th class="heading-description" style="width: 300px">Sản phẩm</th>
                    <th class="heading-description" style="width: 200px">Hình ảnh</th>
                    <th class="heading-quantity">Qty</th>
                    <th class="heading-quantity">Size</th>
                    <th class="heading-price">Đơn giá</th>
                    <th class="heading-subtotal">Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${sessionScope.listodt}" var="list">
                    <c:forEach items="${sessionScope.buyedProduct}" var="buyedP">
                        <c:if test="${list.itemid==buyedP.itemId}">
                            <tr>
                                <td>${buyedP.name}</td>
                                <td><img src="${buyedP.image}" width="30%" alt="alt"/></td>
                                <td>${list.quantity}</td>
                                <td>${list.size}</td>
                                <td class="right">${buyedP.price}</td>
                                <td class="bold">${buyedP.price*list.quantity}</td>
                            </tr>
                        </c:if>
                    </c:forEach>
                </c:forEach>
            </tbody>
        </table>


        <table class="line-items-container has-bottom-border">
            <thead>
                <tr>
                    <th>Payment Info</th>
                    <th>Due By</th>
                    <th>Total Due</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="payment-info">
                        <div>
                            Account No: <strong>${sessionScope.order.accountId}</strong>
                        </div>
                        <div>
                            Routing No: <strong>120000547</strong>
                        </div>
                    </td>
                    <td class="large">${sessionScope.hoadon.createDate}</td>
                    <td class="large total">${sessionScope.order.totalPrice}K VNĐ</td>
                </tr>
            </tbody>
        </table>

        <div class="footer">
            <div class="footer-info">
                <span>hello@trungkiendepzai.com</span> |
                <span>555 444 6666</span> |
                <span>trungkiendepzai.com</span>
            </div>
            <div class="footer-thanks">
                <img src="https://github.com/anvilco/html-pdf-invoice-template/raw/main/img/heart.png" alt="heart">
                <span>Thank you!</span>
            </div>
        </div>


        <!-- Jquery JS-->
        <script src="vendor/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap JS-->
        <script src="vendor/bootstrap-4.1/popper.min.js"></script>
        <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
        <!-- Vendor JS       -->
        <script src="vendor/slick/slick.min.js">
        </script>
        <script src="vendor/wow/wow.min.js"></script>
        <script src="vendor/animsition/animsition.min.js"></script>
        <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
        </script>
        <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
        <script src="vendor/counter-up/jquery.counterup.min.js">
        </script>
        <script src="vendor/circle-progress/circle-progress.min.js"></script>
        <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="vendor/chartjs/Chart.bundle.min.js"></script>
        <script src="vendor/select2/select2.min.js">
        </script>

        <!-- Main JS-->
        <script src="js/main.js"></script>

    </body>

</html>
<!-- end document-->
