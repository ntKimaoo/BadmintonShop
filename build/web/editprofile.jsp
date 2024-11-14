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
                font-size: 2rem;
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
                font-size: 20px;
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
                                    <li class="megamenu-container">
                                        <a href="home" class="sf-with-ul">Home</a>
                                    </li>
                                    <li>
                                        <a href="shop" class="sf-with-ul">Product</a>

                                        <div class="megamenu megamenu-sm">
                                            <div class="row no-gutters">
                                                <div class="col-md-6">
                                                    <div class="menu-col">
                                                        <div class="menu-title">Product Details</div><!-- End .menu-title -->
                                                        <ul>
                                                            <li><a href="product.html">Vợt cầu lông</a></li>
                                                            <li><a href="product.html">Quần áo thể thao</a></li>
                                                            <li><a href="product.html">Giày thể thao</a></li>
                                                            <li><a href="product.html">Phụ kiện vợt</a></li>
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
                                        <a href="#" class="sf-with-ul">BLOG</a>

                                        <ul>
                                            <li>
                                                <a href="about.html" class="sf-with-ul">About</a>

                                                <ul>
                                                    <li><a href="about.html">About 01</a></li>
                                                    <li><a href="about-2.html">About 02</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="contact.html" class="sf-with-ul">Contact</a>

                                                <ul>
                                                    <li><a href="contact.html">Contact 01</a></li>
                                                    <li><a href="contact-2.html">Contact 02</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="login.html">Login</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="blog.html" class="sf-with-ul">CONTACT</a>

                                        <ul>
                                            <li><a href="blog.html">Classic</a></li>
                                            <li><a href="blog-listing.html">Listing</a></li>
                                            <li>
                                                <a href="#">Grid</a>
                                                <ul>
                                                    <li><a href="blog-grid-2cols.html">Grid 2 columns</a></li>
                                                    <li><a href="blog-grid-3cols.html">Grid 3 columns</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="#">Masonry</a>
                                                <ul>
                                                    <li><a href="blog-masonry-2cols.html">Masonry 2 columns</a></li>
                                                    <li><a href="blog-masonry-3cols.html">Masonry 3 columns</a></li>
                                                    <li><a href="blog-masonry-4cols.html">Masonry 4 columns</a></li>
                                                    <li><a href="blog-masonry-sidebar.html">Masonry sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="#">Mask</a>
                                                <ul>
                                                    <li><a href="blog-mask-grid.html">Blog mask grid</a></li>
                                                    <li><a href="blog-mask-masonry.html">Blog mask masonry</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="#">Single Post</a>
                                                <ul>
                                                    <li><a href="single.html">Default with sidebar</a></li>
                                                    <li><a href="single-fullwidth.html">Fullwidth no sidebar</a></li>
                                                    <li><a href="single-fullwidth-sidebar.html">Fullwidth with sidebar</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <c:if test="${sessionScope.user.getRole()==1}">
                                        <li>
                                            <a href="manageproduct" class="button">ADMIN DASHBOARD</a>
                                        </li>
                                    </c:if>
                                </ul><!-- End .menu -->
                            </nav><!-- End .main-nav -->
                        </div><!-- End .header-left -->

                        <div class="header-right">
                            <div class="header-search">
                                <a href="#" class="search-toggle" role="button" title="Search"><i class="icon-search"></i></a>
                                <form action="#" method="get">
                                    <div class="header-search-wrapper">
                                        <label for="q" class="sr-only">Search</label>
                                        <input type="search" class="form-control" name="q" id="q" placeholder="Search in..." required>
                                    </div><!-- End .header-search-wrapper -->
                                </form>
                            </div><!-- End .header-search -->

                            <div class="dropdown cart-dropdown">
                                <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                                    <i class="icon-shopping-cart"></i>
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
                <div class="container">
                    <div class="profile-card">
                        <div class="card-body">
                            <h5 class="card-title">Edit Profile</h5>
                            <form action="editprofile" method="post">
                                <div class="form-group">
                                    <label for="accountId"><i class="fas fa-id-card icon"></i> Account ID:</label>
                                    <input type="text" class="form-control" id="accountId" name="accountId" value="${sessionScope.user.getId()}" readonly="">
                                </div>
                                <div class="form-group">
                                    <label for="name"><i class="fas fa-user icon"></i> Name:</label>
                                    <input type="text" class="form-control" id="name" name="name" value="${sessionScope.user.getCustomer_name()}">
                                </div>
                                <div class="form-group">
                                    <label for="sex"><i class="fas fa-venus-mars icon"></i> Sex:</label>
                                    <select class="form-control" id="sex" name="sex">
                                        <option value="${sessionScope.user.getSex()}" selected>${sessionScope.user.getSex()}</option>
                                        <option value="M">Male</option>
                                        <option value="F">Female</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="email"><i class="fas fa-envelope icon"></i> Email:</label>
                                    <input type="email" class="form-control" id="email" name="email" value="${sessionScope.user.getEmail()}">
                                </div>
                                <div class="form-group">
                                    <label for="username"><i class="fas fa-user-circle icon"></i> Username:</label>
                                    <input type="text" class="form-control" id="username" name="username" value="${sessionScope.user.getUsername()}">
                                </div>
                                <div class="form-group">
                                    <label for="password"><i class="fas fa-lock icon"></i> Password:</label>
                                    <input type="password" class="form-control" id="password" name="password" value="${sessionScope.user.getPassword()}">
                                </div>
                                <div class="form-group">
                                    <label for="phone"><i class="fas fa-phone icon"></i> Phone:</label>
                                    <input type="tel" class="form-control" id="phone" name="phone" value="${sessionScope.user.getPhone_number()}">
                                </div>
                                <div class="form-group">
                                    <label for="birthdate"><i class="fas fa-birthday-cake icon"></i> Birthdate:</label>
                                    <input type="date" class="form-control" id="birthdate" name="birthdate" value="${sessionScope.user.getBirthdate()}">
                                </div>
                                <div class="form-group">
                                    <label for="role"><i class="fas fa-user-tag icon"></i> Role:</label>
                                    <input type="text" class="form-control" id="role" name="role" value="${sessionScope.user.getRole()}" readonly="">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
                            </form>
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
