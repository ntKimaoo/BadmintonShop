<%-- 
    Document   : home
    Created on : Jun 6, 2024, 10:36:50 AM
    Author     : kiennn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <title>TKB STORE - Chuyên phụ kiện cầu lông</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <meta name="keywords" content="HTML5 Template">
        <meta name="description" content="TKB Store - Chuyên phụ kiện cầu lông">
        <meta name="author" content="p-themes">
        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png">
        <link rel="icon" type="image/jpg" sizes="32x32" href="images/logo-header.jpg">
        <link rel="icon" type="image/jpg" sizes="16x16" href="images/logo-header.jpg">
        <link rel="manifest" href="assets/images/icons/site.html">
        <link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color="#666666">
        <link rel="shortcut icon" href="assets/images/icons/favicon.ico">
        <meta name="apple-mobile-web-app-title" content="Molla">
        <meta name="application-name" content="Molla">
        <meta name="msapplication-TileColor" content="#cc9966">
        <meta name="msapplication-config" content="assets/images/icons/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">
        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css">
        <link rel="stylesheet" href="css/home.css"/>
        <!-- Main CSS File -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/skins/skin-demo-21.css">
        <link rel="stylesheet" href="assets/css/demos/demo-21.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
            body {
                background-color: #f8f9fa;
                font-family: Arial, sans-serif;
            }
            .profile-card {
                width: 400px;
                border: 1px solid #e2e2e2;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin: 50px auto;
                background-color: #fff;
            }
            .profile-card img {
                width: 100%;
                height: auto;
            }
            .profile-card .card-body {
                padding: 30px;
            }
            .profile-card .card-title {
                margin-bottom: 10px;
                font-size: 2.5rem;
                font-weight: bold;
            }
            .profile-card .card-text {
                color: #666;
                margin-bottom: 5px;
            }
            .profile-card .card-text strong {
                color: #333;
            }
            .profile-card .btn-primary {
                background-color: #007bff;
                border-color: #007bff;
            }
            .profile-card .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }
            .profile-card .icon {
                font-size: 30px;
                margin-right: 8px;
            }
        </style>

    </head>
    <body>
        <div class="page-wrapper">
            <header class="header">

                <div class="header-middle sticky-header">
                    <div class="container">
                        <div class="header-left">
                            <button class="mobile-menu-toggler">
                                <span class="sr-only">Toggle mobile menu</span>
                                <i class="icon-bars"></i>
                            </button>

                            <a class="logo">
                                <img src="images/logo-header.jpg" alt="Molla Logo" width="100" height="25">
                            </a>

                            <nav class="main-nav">
                                <ul class="menu sf-arrows">
                                    <li class="active">
                                        <a href="home" class="sf-with-ul">Home</a>
                                    </li>
                                    <li>
                                        <a href="" class="sf-with-ul">Product</a>

                                        <div class="megamenu megamenu-sm">
                                            <div class="row no-gutters">
                                                <div class="col-md-6">
                                                    <div class="menu-col">
                                                        <div class="menu-title">Product Details</div><!-- End .menu-title -->
                                                        <ul>
                                                            <li><a href="shop?name=vợt" style="font-family: sans-serif">Vợt cầu lông</a></li>
                                                            <li><a href="shop?name=áo" style="font-family: sans-serif">Áo thể thao</a></li>
                                                            <li><a href="shop?name=giày" style="font-family: sans-serif">Giày thể thao</a></li>
                                                            <li><a href="shop?name=phụ%20kiện" style="font-family: sans-serif">Phụ kiện vợt</a></li>
                                                        </ul>
                                                    </div><!-- End .menu-col -->
                                                </div><!-- End .col-md-6 -->

                                                <div class="col-md-6">
                                                    <div class="banner banner-overlay">
                                                        <a href="category.html">
                                                            <img src="assets/images/menu/banner-2.jpg" alt="Banner">

                                                            <div class="banner-content banner-content-bottom">
                                                                <div class="banner-title text-white">New Trends<br><span><strong>spring 2024</strong></span></div><!-- End .banner-title -->
                                                            </div><!-- End .banner-content -->
                                                        </a>
                                                    </div><!-- End .banner -->
                                                </div><!-- End .col-md-6 -->
                                            </div><!-- End .row -->
                                        </div><!-- End .megamenu megamenu-sm -->
                                    </li>
                                    <li>
                                        <a href="blog.jsp" class="sf-with-ul">BLOG</a>

                                        <ul>
                                            <li>
                                                <a href="about.jsp" class="">About us</a>
                                            </li>
                                            <li>
                                                <a href="contact.jsp" class="">Privacy</a>    
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="contact.jsp" class="">CONTACT</a>
                                    </li>
                                    <c:if test="${sessionScope.user.getRole()==1}">
                                        <li>
                                            <a href="admin" class="button">ADMIN DASHBOARD</a>
                                        </li>
                                    </c:if>
                                </ul><!-- End .menu -->
                            </nav><!-- End .main-nav -->
                        </div><!-- End .header-left -->

                        <div class="header-right">
                            <div class="header-search">
                                <a href="#" class="search-toggle" role="button" title="Search"><i class="icon-search"></i></a>
                                <form action="search" method="get">
                                    <div class="header-search-wrapper">
                                        <label for="q" class="sr-only">Search</label>
                                        <input type="search" class="form-control" name="name" id="q" placeholder="Search in..." required>
                                    </div><!-- End .header-search-wrapper -->
                                </form>
                            </div><!-- End .header-search -->
                            <div class="dropdown cart-dropdown">
                                <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                                    <i class="icon-heart-o"></i>
                                    <span class="cart-count">${wishlistsize}</span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right">
                                    <div class="dropdown-cart-products">
                                        <c:forEach items="${sessionScope.wishlist.items}" var="wl">
                                            <div class="product">
                                                <div class="product-cart-details">
                                                    <h4 class="product-title">
                                                        <a href="product?itemid=${wl.itemId}">${wl.name}</a>
                                                    </h4>
                                                    <span class="cart-product-info">
                                                        <span class="cart-product-qty" style="margin-right: 50px">1</span>
                                                        ${wl.price}K VND
                                                    </span>
                                                </div><!-- End .product-cart-details -->

                                                <figure class="product-image-container">
                                                    <a href="product?itemid=${wl.itemId}" class="product-image">
                                                        <img src="${wl.image}" alt="product">
                                                    </a>
                                                </figure>
                                                <form action="wishlist" method="post">
                                                    <input type="hidden" value="${wl.itemId}" name="itemid">
                                                    <button style="font-size: 20px" type="submit" class="btn-remove" title="Remove Product"><i class="icon-close"></i></button>
                                                </form>
                                            </div><!-- End .product -->
                                        </c:forEach>
                                    </div><!-- End .cart-product -->
                                </div><!-- End .dropdown-menu -->
                            </div><!-- End .cart-dropdown -->
                            <div class="dropdown cart-dropdown">
                                <a href="mycart.jsp" class="dropdown-toggle" role="button">
                                    <i class="icon-shopping-cart"></i>
                                    <span class="cart-count">${sessionScope.size}</span>
                                </a>
                            </div><!-- End .cart-dropdown -->

                            <c:if test="${loggedInUser==null}">
                                <a href="login" style=" margin-left: 17px;color: black" role="button">
                                    <i class="icon-user" style="font-size:3.0rem;" ></i>
                                    LOGIN
                                </a>
                            </c:if>
                            <c:if test="${loggedInUser!=null}">
                                <div class="dropdown">

                                    <a href="" style=" margin-left: 17px;color: black" role="button" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-user" style="font-size:3.0rem;" ></i>${customer_name}
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <ul style="font-size: 15px;">
                                            <li><a href="profile" style="color: black">My Account</a></li>
                                            <li><a href="logout" style="color: black">Logout</a></li>
                                        </ul>
                                    </div>     
                                </div>
                            </c:if>
                        </div><!-- End .header-right -->
                    </div><!-- End .container -->
                </div><!-- End .header-middle -->
            </header><!-- End .header -->

            <main>
                <div class="container" style="display: flex">
                    <div class="profile-card">
                        <div class="card-body">
                            <h5 class="card-title">User Profile</h5>
                            <p class="card-text"><i class="fas fa-id-card icon"></i> Account ID: ${user.getId()}</p>
                            <p class="card-text"><i class="fas fa-user icon"></i> Name: ${user.getCustomer_name()}</p>
                            <p class="card-text"><i class="fas fa-venus-mars icon"></i> Sex: ${user.getSex()}</p>
                            <p class="card-text"><i class="fas fa-envelope icon"></i> Email: ${user.getEmail()}</p>
                            <p class="card-text"><i class="fas fa-user-circle icon"></i> Username: ${user.getUsername()}</p>
                            <p class="card-text"><i class="fas fa-phone icon"></i> Phone: ${user.getPhone_number()}</p>
                            <p class="card-text"><i class="fas fa-birthday-cake icon"></i> Birthdate: ${user.getBirthdate()}</p>
                            <p class="card-text"><i class="fas fa-user-tag icon"></i> Role: ${user.getRole()}</p>
                            <a href="editprofile" class="btn btn-primary btn-block">Edit Profile</a>
                            <a href="changepassword" class="btn btn-primary btn-block">Change password</a>
                        </div>
                    </div>
                    <div class="profile-card" style="width: 800px">
                        <div class="card-body">
                            <h2 style="text-align: center">Đơn hàng của bạn</h2>
                            <table class="table table-borderless table-earning">
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Date</th>
                                        <th class="text-right">Quantity</th>
                                        <th class="text-right">Total Price</th>
                                        <th class="text-right">Actions</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach items="${invoiceList}" var="ilist">
                                        <c:forEach items="${ordersList}" var="olist">
                                            <c:if test="${ilist.orderId==olist.orderid}">
                                                <tr>
                                            <form method="get" action="invoice">
                                                <td>${ilist.orderId}</td>
                                                <td>${ilist.createDate}</td>
                                                <td class="text-right">${olist.totalQuantity}</td>
                                                <td class="text-right">${olist.totalPrice}</td>
                                                <input type="hidden" name="createDate" value="${ilist.createDate}">
                                                <input type="hidden" name="orderId" value="${ilist.orderId}">
                                                <input type="hidden" name="customer_name" value="${olist.customer_name}">
                                                <input type="hidden" name="totalQuantity" value="${olist.totalQuantity}">
                                                <input type="hidden" name="tmpPrice" value="${olist.tmpPrice}">
                                                <input type="hidden" name="totalPrice" value="${olist.totalPrice}">
                                                <td class="text-right" style="width: 30%">
                                                    <button type="submit" class="btn btn-primary" style="width: 10%">View</button>
                                                </td>
                                            </form>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                </c:forEach>
                                </tbody>
                            </table>
                            <c:if test="${invoiceList.size()==0}">
                                <div style="text-align: center;font-style: italic">
                                    <h4>Bạn chưa có đơn hàng nào </h4>
                                    <h6>Mua sắm ngay bây giờ!! </h6>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
        </div>
    </main>
    <footer class="footer footer-2">
        <div class="footer-bottom">
            <div class="container">
                <p class="footer-copyright">Copyright © 2024 T.Kien Store. All Rights Reserved.</p><!-- End .footer-copyright -->
                <ul class="footer-menu">
                    <li><a href="#">Terms Of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul><!-- End .footer-menu -->

                <div class="social-icons social-icons-color">
                    <span class="social-label">Social Media</span>
                    <a href="#" class="social-icon social-facebook" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                    <a href="#" class="social-icon social-twitter" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                    <a href="#" class="social-icon social-instagram" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                    <a href="#" class="social-icon social-youtube" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
                    <a href="#" class="social-icon social-pinterest" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                </div><!-- End .soial-icons -->
            </div><!-- End .container -->
        </div><!-- End .footer-bottom -->
    </footer><!-- End .footer -->


    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>


    <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->
    <div class="mobile-menu-container mobile-menu-light">
        <div class="mobile-menu-wrapper">
            <span class="mobile-menu-close"><i class="icon-close"></i></span>

            <form action="#" method="get" class="mobile-search">
                <label for="mobile-search" class="sr-only">Search</label>
                <input type="search" class="form-control" name="mobile-search" id="mobile-search" placeholder="Search in..." required>
                <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
            </form>
            <div class="social-icons">
                <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
            </div><!-- End .social-icons -->
        </div><!-- End .mobile-menu-wrapper -->
    </div><!-- End .mobile-menu-container -->
</div>
<!-- Plugins JS File -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/jquery.hoverIntent.min.js"></script>
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/superfish.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<!-- Main JS File -->
<script src="assets/js/main.js"></script>
<script src="assets/js/demos/demo-21.js"></script>
</body>

<!-- molla/index-21.html  22 Nov 2019 10:01:54 GMT -->
</html>
