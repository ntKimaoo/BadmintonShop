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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <!-- Main CSS-->
        <link href="css/theme.css" rel="stylesheet" media="all">

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
                            <li class="has-sub">
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
                            <li class="active">
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
                    <div class="header-search" style="display: flex">
                        <form action="search" method="post">
                            <div class="header-search-wrapper" style="display: flex; justify-content: center">
                                <input type="search" class="form-control" name="searchbyname" id="q" placeholder="Search in..." required style="width: 200px">
                                <button type="submit" class="search-button" style="margin-left: 10px;"><i class="fas fa-search"></i></button>
                            </div><!-- End .header-search-wrapper -->
                        </form>
                        <a href="add" class="au-btn au-btn-icon au-btn--blue" style="position: absolute; right: 0;">
                            <i class="zmdi zmdi-plus"></i> Add Item
                        </a>
                    </div><!-- End .header-search -->
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ItemId</th>
                                <th>Tên sản phẩm</th>
                                <th>Giá</th>
                                <th>Tồn kho</th>
                                <th>Ra mắt</th>
                                <th>Descibe</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Image</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listProduct}" var="list">
                                <tr>
                                    <td>${list.itemId}</td>
                                    <td>${list.name}</td>
                                    <td>${list.price}</td>                      
                                    <td>${list.quantity}</td>
                                    <td>${list.releaseDate}</td>
                                    <td>${list.describe}</td>
                                    <td><span class="status ${list.status=='Còn hàng' ? "text-success":"text-danger"}">&bull;</span> ${list.status}</td>
                                    <td class="text-center"><img src="${list.image}" alt="alt" width="50%"/></td>
                                    <td>
                                        <div class="d-flex">
                                            <form action="edit" method="get" style="display:inline;">
                                                <input type="hidden" name="itemId" value="${list.itemId}">
                                                <button type="submit" class="btn btn-link" title="Edit" data-toggle="tooltip">
                                                    <i class="material-icons">&#xE8B8;</i>
                                                </button>
                                            </form>
                                            <form action="delete" method="post" style="display:inline;">
                                                <input type="hidden" name="itemId" value="${list.itemId}">
                                                <button type="submit" class="btn btn-link text-danger" title="Delete" data-toggle="tooltip">
                                                    <i class="material-icons">&#xE5C9;</i>
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr
                            </c:forEach>
                        </tbody>
                    </table>
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
