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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <style>

            .title{
                margin-bottom: 5vh;
            }
            .card{
                margin: auto;
                max-width: 950px;
                width: 90%;
                box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                border-radius: 1rem;
                border: transparent;
            }
            @media(max-width:767px){
                .card{
                    margin: 3vh auto;
                }
            }
            .cart{
                background-color: #fff;
                padding: 4vh 5vh;
                border-bottom-left-radius: 1rem;
                border-top-left-radius: 1rem;
            }
            @media(max-width:767px){
                .cart{
                    padding: 4vh;
                    border-bottom-left-radius: unset;
                    border-top-right-radius: 1rem;
                }
            }
            .summary{
                background-color: #ddd;
                border-top-right-radius: 1rem;
                border-bottom-right-radius: 1rem;
                padding: 4vh;
                color: rgb(65, 65, 65);
            }
            @media(max-width:767px){
                .summary{
                    border-top-right-radius: unset;
                    border-bottom-left-radius: 1rem;
                }
            }
            .summary .col-2{
                padding: 0;
            }
            .summary .col-10
            {
                padding: 0;
            }
            .row{
                margin: 0;
            }
            .title b{
                font-size: 1.5rem;
            }
            .main{
                margin: 0;
                padding: 2vh 0;
                width: 100%;
            }
            .col-2, .col{
                padding: 0 1vh;
            }
            a{
                padding: 0 1vh;
            }
            .close{
                margin-left: auto;
                font-size: 0.7rem;
            }
            col-2 img{
                width: 3.5rem;
            }
            .back-to-shop{
                margin-top: 4.5rem;
            }
            h5{
                margin-top: 4vh;
            }
            hr{
                margin-top: 1.25rem;
            }
            form{
                padding: 2vh 0;
            }
            select{
                border: 1px solid rgba(0, 0, 0, 0.137);
                padding: 1.5vh 1vh;
                margin-bottom: 4vh;
                outline: none;
                width: 100%;
                background-color: rgb(247, 247, 247);
            }
            input{
                border: 1px solid rgba(0, 0, 0, 0.137);
                padding: 1vh;
                margin-bottom: 4vh;
                outline: none;
                width: 100%;
                background-color: rgb(247, 247, 247);
            }
            input:focus::-webkit-input-placeholder
            {
                color:transparent;
            }
            .btn{
                background-color: #000;
                border-color: #000;
                color: white;
                width: 100%;
                font-size: 0.7rem;
                margin-top: 4vh;
                padding: 1vh;
                border-radius: 0;
            }
            .btn:focus{
                box-shadow: none;
                outline: none;
                box-shadow: none;
                color: white;
                -webkit-box-shadow: none;
                -webkit-user-select: none;
                transition: none;
            }
            .btn:hover{
                color: white;
            }
            a{
                color: black;
            }
            a:hover{
                color: black;
                text-decoration: none;
            }
            #code{
                background-image: linear-gradient(to left, rgba(255, 255, 255, 0.253) , rgba(255, 255, 255, 0.185)), url("https://img.icons8.com/small/16/000000/long-arrow-right.png");
                background-repeat: no-repeat;
                background-position-x: 95%;
                background-position-y: center;
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
                                            <a href="manageproduct" class="button">ADMIN DASHBOARD</a>
                                        </li>
                                    </c:if>
                                </ul><!-- End .menu -->
                            </nav><!-- End .main-nav -->
                        </div><!-- End .header-left -->

                        <div class="header-right">

                            <div class="dropdown cart-dropdown">
                                <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
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

            <main class="main">
                <div class="card">
                    <div class="row">
                        <div class="col-md-8 cart">
                            <div class="title">
                                <div class="row">
                                    <div class="col"><h4><b>Shopping Cart</b></h4></div>
                                    <form action="buy" method="get" style="padding: 0">
                                        <input name="couponcode" placeholder="MÃ GIẢM GIÁ" style="padding: 0; margin: 0;width: 150px;font-size: 15px">
                                        <button type="submit" style="font-size: 15px; border: 0">CHECK</button>
                                    </form>
                                    <div class="col align-self-center text-right text-muted">${sessionScope.size} items</div>
                                </div>
                            </div>
                            <c:set var="o" value="${sessionScope.cart}"/>
                            <c:set var="t" value="0"/>
                            <c:forEach items="${o.items}" var="i">
                                <c:set var="t" value="${t+1}"/>
                                <div class="row border-top">
                                    <div class="row main align-items-center">
                                        <div class="col-2"><img class="img-fluid" src="${i.product.image}"></div>
                                        <div class="col">
                                            <div class="row">${i.product.name}</div>
                                        </div>
                                        <div class="col">
                                            <a href="process?num=-1&id=${i.product.getItemId()}">-</a>
                                            <a class="border">${i.quantity}</a>
                                            <a href="process?num=1&id=${i.product.getItemId()}">+</a>
                                        </div>
                                        <form action="updatesize" style="display: flex;align-items: center;margin-right: 40px">
                                            <div class="col" style="width: 100px">
                                                <input type="hidden" name="itemid" value="${i.product.itemId}">
                                                <c:if test="${sizeUpdate!=null}">
                                                    Size: <input type="text" value="${sizeUpdate}" name="sizeOfItem">
                                                </c:if>
                                                <c:if test="${sizeUpdate==null}">
                                                    Size: <input type="text" value="${i.size}" name="sizeOfItem">
                                                </c:if>
                                            </div>
                                            <button type="submit" style="height: 30px;border: 0.5px solid grey;"><i class="fa fa-refresh"></i></button>
                                        </form>
                                        <div class="col">${i.price*i.quantity}K </div>
                                        <form action="process" method="POST">
                                            <input type="hidden" name="itemid" value="${i.product.itemId}">
                                            <button class="close" style="font-size: 15px">&#10005;</button>
                                        </form><br>
                                        
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                        <div class="col-md-4 summary">
                            <form action="buy" method="POST">
                                <div><h5><b>Summary</b></h5></div>
                                <input type="hidden" name="size" value="${sizeUpdate}">
                                <hr>
                                <select>
                                    <option class="text-muted">Ship thường: 30k</option>
                                    <option class="text-muted">Ship nhanh: 40k</option>
                                    <option class="text-muted">Ship hỏa tốc: 50k</option>
                                </select>
                                <input type="text" name="address" placeholder="ĐỊA CHỈ NHẬN HÀNG" value="${address}">
                                <input name="couponcode" type="hidden" value="${coupon}">
                                <select name="paymentmethod">
                                    <option class="text-muted" value="PM1">Thanh toán khi nhận hàng</option>
                                    <option class="text-muted" value="PM2">Chuyển Khoản</option>
                                </select>
                                <input type="text" name="note" placeholder="GHI CHÚ ĐƠN HÀNG" value="${note}">
                                <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                                    <div class="col">TOTAL PRICE</div>
                                    <c:if test="${tmpPrice!=null}">
                                        <div class="col text-right">
                                            <p style="font-size: 15px; color: black">${tmpPrice}K VND</p></div>
                                        </c:if>

                                </div>
                                <c:if test="${discount!=null}">
                                    <div class="row">
                                        <div class="col text-right">
                                            <p style="font-size: 15px; color: black"> - ${discount*tmpPrice/100}K VND </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col text-right">
                                            <p style="font-size: 18px; color: black">= ${tmpPrice-discount*tmpPrice/100}K VND</p>
                                        </div>
                                    </div>
                                </c:if>
                                <button type="submit" class="btn" style="font-size: 20px">CHECKOUT</button>
                            </form>
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
