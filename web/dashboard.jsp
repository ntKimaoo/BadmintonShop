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
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {

                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                    ['Số Lượng Bán Ra Trong Tháng', ${soLuongDaBanTrongThang}],
                    ['Tổng Sản Phẩm Bán Ra', ${soLuongDaBan}]
                ]);

                var options = {
                    title: '',
                    legend: 'none'
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                chart.draw(data, options);
            }

            google.charts.load('current', {packages: ['corechart', 'bar']});
            google.charts.setOnLoadCallback(drawBasic);

            function drawBasic() {

                var data = new google.visualization.DataTable();
                data.addColumn('timeofday', 'Time of Day');
                data.addColumn('number', 'Motivation Level');

                data.addRows([
                    [{v: [8, 0, 0], f: '8 am'}, 1],
                    [{v: [9, 0, 0], f: '9 am'}, 2],
                    [{v: [10, 0, 0], f: '10 am'}, 3],
                    [{v: [11, 0, 0], f: '11 am'}, 4],
                    [{v: [12, 0, 0], f: '12 pm'}, 5],
                    [{v: [13, 0, 0], f: '1 pm'}, 6],
                    [{v: [14, 0, 0], f: '2 pm'}, 7],
                    [{v: [15, 0, 0], f: '3 pm'}, 8],
                    [{v: [16, 0, 0], f: '4 pm'}, 9],
                    [{v: [17, 0, 0], f: '5 pm'}, 10],
                ]);

                var options = {
                    title: 'Motivation Level Throughout the Day',
                    hAxis: {
                        title: 'Time of Day',
                        format: 'h:mm a',
                        viewWindow: {
                            min: [7, 30, 0],
                            max: [17, 30, 0]
                        }
                    },
                    vAxis: {
                        title: ''
                    }
                };

                var chart = new google.visualization.ColumnChart(
                        document.getElementById('chart_div'));

                chart.draw(data, options);
            }
        </script>
    </head>

    <body class="animsition">
        <div class="page-wrapper">
            <!-- HEADER MOBILE-->
            <header class="header-mobile d-block d-lg-none">
                <div class="header-mobile__bar">
                    <div class="container-fluid">
                        <div class="header-mobile-inner">
                            <a class="logo" href="index.html">
                                <img src="images/icon/logo-blue.png" alt="CoolAdmin" />
                            </a>
                            <button class="hamburger hamburger--slider" type="button">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <nav class="navbar-mobile">
                    <div class="container-fluid">
                        <ul class="navbar-mobile__list list-unstyled">
                            <li class="active has-sub">
                                <a class="js-arrow" href="admin">
                                    <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            </li>
                            <li>
                                <a href="charts">
                                    <i class="fas fa-chart-bar"></i>Charts</a>
                            </li>
                            <li>
                                <a href="manageaccount">
                                    <i class="fas fa-user"></i>Account</a>
                            </li>
                            <li>
                                <a href="manageproduct">
                                    <i class="fa fa-shopping-cart"></i>Product</a>
                            </li>
                            <li>
                                <a href="top5customers">
                                    <i class="fas fa-users"></i>Top 5 customers</a>
                            </li>
                            <li>
                                <a href="top10products">
                                    <i class="fas fa-heart"></i>Top 10 products</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- END HEADER MOBILE-->

            <!-- MENU SIDEBAR-->
            <aside class="menu-sidebar d-none d-lg-block">
                <div class="logo">
                    <a href="">
                        <img src="images/icon/logo.png" alt="Cool Admin" />
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="js-arrow" href="admin">
                                    <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            </li>
                            <li>
                                <a href="charts">
                                    <i class="fas fa-chart-bar"></i>Charts</a>
                            </li>
                            <li>
                                <a href="manageaccount">
                                    <i class="fas fa-user"></i>Account</a>
                            </li>
                            <li>
                                <a href="manageproduct">
                                    <i class="fa fa-shopping-cart"></i>Product</a>
                            </li>
                            <li>
                                <a href="top5customers">
                                    <i class="fas fa-users"></i>Top 5 customers</a>
                            </li>
                            <li>
                                <a href="top10products">
                                    <i class="fas fa-heart"></i>Top 10 products</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END MENU SIDEBAR-->

            <!-- PAGE CONTAINER-->
            <div class="page-container">
                <!-- HEADER DESKTOP-->
                <header class="header-desktop">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap">
                                <div class="header-button">
                                    <div class="account-wrap" style=" width: 200px;position: absolute; right: -10px;">
                                        <div class="account-item clearfix js-item-menu">
                                            <div class="image">
                                                <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                            </div>
                                            <div class="content">
                                                <a class="js-acc-btn" href="#">${user.getCustomer_name()}</a>
                                            </div>
                                            <div class="account-dropdown js-dropdown">
                                                <div class="info clearfix">
                                                    <div class="image">
                                                        <a href="#">
                                                            <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <h5 class="name">
                                                            <a href="#">${user.getCustomer_name()}</a>
                                                        </h5>
                                                        <span class="email">${user.getEmail()}</span>
                                                    </div>
                                                </div>
                                                <div class="account-dropdown__body">
                                                    <div class="account-dropdown__item">
                                                        <a href="profile">
                                                            <i class="zmdi zmdi-account"></i>Account</a>
                                                    </div>     
                                                </div>
                                                <div class="account-dropdown__footer">
                                                    <a href="logout">
                                                        <i class="zmdi zmdi-power"></i>Logout</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <!-- HEADER DESKTOP-->

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1">overview</h2>
                                    </div>
                                </div>
                            </div>
                            <div class="row m-t-25">
                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c1">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-account-o"></i>
                                                </div>
                                                <div class="text">
                                                    <h2>${soLuongAccount}</h2>
                                                    <span>members</span>
                                                </div>
                                            </div>
                                            <div class="overview-chart">
                                                <canvas id="widgetChart1"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c2">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-shopping-cart"></i>
                                                </div>
                                                <div class="text">
                                                    <h2>${soLuongDaBan}</h2>
                                                    <span>items solid</span>
                                                </div>
                                            </div>
                                            <div class="overview-chart">
                                                <canvas id="widgetChart2"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c3">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-calendar-note"></i>
                                                </div>
                                                <div class="text">
                                                    <h2>${soLuongDaBanTrongThang}</h2>
                                                    <span>this month</span>
                                                </div>
                                            </div>
                                            <div class="overview-chart">
                                                <canvas id="widgetChart3"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c4">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-money"></i>
                                                </div>
                                                <div class="text">
                                                    <h2><fmt:formatNumber value="${tongDoanhThu}" pattern="#"/>K</h2>
                                                    <span>total earnings</span>
                                                </div>
                                            </div>
                                            <div class="overview-chart">
                                                <canvas id="widgetChart4"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="au-card recent-report">
                                        <div class="au-card-inner">
                                            <h3 class="title-2">recent reports</h3>
                                            <div class="chart-info">
                                                <div class="chart-info__left">
                                                    <div class="chart-note">
                                                        <span class="dot dot--blue"></span>
                                                        <span>products</span>
                                                    </div>
                                                    <div class="chart-note mr-0">
                                                        <span class="dot dot--green"></span>
                                                        <span>services</span>
                                                    </div>
                                                </div>
                                                <div class="chart-info__right">
                                                    <div class="chart-statis">
                                                        <span class="index incre">
                                                            <i class="zmdi zmdi-long-arrow-up"></i>25%</span>
                                                        <span class="label">products</span>
                                                    </div>
                                                    <div class="chart-statis mr-0">
                                                        <span class="index decre">
                                                            <i class="zmdi zmdi-long-arrow-down"></i>10%</span>
                                                        <span class="label">services</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="recent-report__chart">
                                                <div id="chart_div"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="au-card chart-percent-card">
                                        <div class="au-card-inner">
                                            <h3 class="title-2 tm-b-5">Thống kê</h3>
                                            <div class="row no-gutters">
                                                <div class="col-xl-6">
                                                    <div class="chart-note-wrap">
                                                        <div class="chart-note mr-0 d-block">
                                                            <span class="dot dot--blue"></span>
                                                            <span>Số lượng bán ra trong tháng</span>
                                                        </div>
                                                        <div class="chart-note mr-0 d-block">
                                                            <span class="dot dot--red"></span>
                                                            <span>Tổng sản phẩm bán ra</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-6">
                                                    <div id="piechart" style="width: 100%; height: 350px; "></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2 class="title-1 m-b-25">Đơn mua</h2>
                                    <div class="table-responsive table--no-card m-b-40">
                                        <table class="table table-borderless table-striped table-earning">
                                            <thead>
                                                <tr>
                                                    <th>date</th>
                                                    <th>order ID</th>
                                                    <th>name</th>
                                                    <th class="text-right">quantity</th>
                                                    <th class="text-right">tmpPrice</th>
                                                    <th class="text-right">totalPrice</th>
                                                    <th class="text-right">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${invoiceList}" var="ilist">
                                                    <c:forEach items="${ordersList}" var="olist">
                                                        <c:if test="${ilist.orderId==olist.orderid}">
                                                            <tr>
                                                        <form method="get" action="invoice">
                                                            <td>${ilist.createDate}</td>
                                                            <td>${ilist.orderId}</td>
                                                            <td>${olist.customer_name}</td>
                                                            <td class="text-right">${olist.totalQuantity}</td>
                                                            <td class="text-right">${olist.tmpPrice}</td>
                                                            <td class="text-right">${olist.totalPrice}</td>
                                                            <input type="hidden" name="createDate" value="${ilist.createDate}">
                                                            <input type="hidden" name="orderId" value="${ilist.orderId}">
                                                            <input type="hidden" name="customer_name" value="${olist.customer_name}">
                                                            <input type="hidden" name="totalQuantity" value="${olist.totalQuantity}">
                                                            <input type="hidden" name="tmpPrice" value="${olist.tmpPrice}">
                                                            <input type="hidden" name="totalPrice" value="${olist.totalPrice}">
                                                            <td class="text-right">
                                                                <button type="submit" class="btn btn-primary">View</button>
                                                            </td>
                                                        </form>
                                                        </tr>
                                                    </c:if>
                                                </c:forEach>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="copyright">
                                        <p>Copyright © 2024 TKBShop. All rights reserved. Template by <a href="">Kien</a>.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END MAIN CONTENT-->
                <!-- END PAGE CONTAINER-->
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
