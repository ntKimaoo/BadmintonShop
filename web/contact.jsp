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
        <title>Contact Now |</title>
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
        <style>

            .container {
                width: 80%; /* hoặc bất kỳ giá trị chiều rộng nào khác */
                margin-left: auto;
                margin-right: auto;
                margin-bottom: 50px;
                font-family: sans-serif;
            }
            .container .title{
                border-bottom: 2px solid grey;
            }
            .lien-he{
                color: #146C94;
            }
            .content-lien-he{
                display: flex;
            }
            .lien-he-map{
            }
            .lien-he-map iframe{
                width: 800px;
                height: 500px;
            }
            .lien-he-title h3{
                margin-top: 30px;
                margin-bottom: 30px;
            }
            .lien-he-title{
                display: inline-block;
                font-weight: bold;
                width: 100%;
            }
            .lien-he-title img{
                width:5%;
                margin-right: 5px;
            }
            .contact-detail{
                display: flex;
                align-items: center;
                margin-bottom: 10px;
                color: black;
            }
            .contact-detail a{
                text-decoration: none;
                color: black;
            }
            .social-links a{
                text-decoration: none   ;
            }
            .content-social{
                margin-right: 20px;
            }
            .content-social:hover{
                opacity: 60%;
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
                                    <li>
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
                                    <li class="active">
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

            <div class="container">
                <h1 class="title">KẾT NỐI VỚI TRUNG KIÊN BADMINTON</h1>
                <div class="content-lien-he">
                    <div class="lien-he">
                        <div class="lien-he-title">
                            <h3>LIÊN HỆ</h3>
                            <div class="contact-detail">
                                <img src="images/pos.png" alt="">
                                <div>Số 69 Song Phượng, huyện Đan Phượng, <br>Hà Nội, Việt Nam
                                </div>
                            </div>
                            <div class="contact-detail">
                                <img src="images/email.png" alt="">
                                <div>tkbadminton@gmail.com</div>
                            </div>
                        </div>
                        <div class="lien-he-title">
                            <h3>LIÊN HỆ CÔNG VIỆC</h3>
                            <div class="contact-detail">
                                <img src="images/email.png" alt="">
                                <a href="tkbadminton@gmail.com">tkbadminton@gmail.com</a>
                            </div>
                            <div class="contact-detail">
                                <img src="images/email.png" alt="">
                                <a href="tel:+84989423251">0989 423 251</a>
                            </div>
                        </div>
                        <div class="lien-he-title">
                            <h3>THEO DÕI TKBADMINTON</h3>
                            <div class="social-links">
                                <a href="https://www.facebook.com/profile.php?id=100084461662820" target="_blank" class="content-social">
                                    <img class="" src="images/facebook-one_.png" alt="Facebook">
                                </a>
                                <a href="#" target="_blank" class="content-social">
                                    <img src="images/zalo_.png" alt="Zalo">
                                </a>
                                <a href="#" target="_blank" class="content-social">
                                    <img src="images/instagram-logo-bold_.png" alt="Instagram">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="lien-he-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4619.56838232213!2d105.6716973304278!3d21.080643848410553!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3134566f58a36f47%3A0xabcb0fa5ad31d258!2zVMOieSBTxqFuLCBUVC4gUGjDuW5nLCDEkGFuIFBoxrDhu6NuZywgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e1!3m2!1svi!2s!4v1720960390100!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                    </div>
                </div>
            </div>
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
        </div>
        <!-- Plugins JS File -->
        <script type="text/javascript">
            function product(id) {
                document.do.action = "product?itemid=" + id;
                document.do.submit();
            }
        </script>
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
