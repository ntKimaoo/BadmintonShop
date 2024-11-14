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

    </head>
    <body>
        <div class="page-wrapper">
            <div class="notification" style="background-image: url(assets/images/demos/demo-21/notification-back.jpg)">
                <div class="notify-content">
                    <h3>FREE SHIP CHO ĐƠN TỪ 1.500K</h3>
                </div>
                <div class="notify-action">
                    <a href="#"><i class="icon-close"></i></a>
                </div>
            </div>
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

            <main class="main">
                <div class="intro-slider-container mb-5">
                    <div class="intro-slider owl-carousel owl-theme owl-nav-inside owl-light" data-toggle="owl" 
                         data-owl-options='{
                         "dots": true,
                         "nav": false, 
                         "responsive": {
                         "1200": {
                         "nav": false,
                         "dots": false
                         }
                         }
                         }'>
                        <div class="intro-slide" style="background-image: url(images/astrox88-sd-key-visual-2880x1120-_1718650445.webp);">

                        </div><!-- End .intro-slide -->
                        <div class="intro-slide" style="background-image: url(images/65z3ltd-launch-website_1695177820.webp);">

                        </div><!-- End .intro-slide -->

                        <div class="intro-slide" style="background-image: url(images/1000z-launch-website-banner_1695177885.webp);">

                        </div><!-- End .intro-slide -->




                    </div><!-- End .intro-slider owl-carousel owl-simple -->

                    <span class="slider-loader"></span><!-- End .slider-loader -->
                </div><!-- End .intro-slider-container -->


                <div class="container banner-container">
                    <div class="col-lg-4 col-md-8 col-sm-10 col-12 col-pd1">
                        <a href="category.html">
                            <img src="assets/images/demos/demo-21/banner/banner-1.jpg">
                        </a>
                        <div class="banner-content">
                            <div class="title">
                                <a href="category.html"><h3 class="darkWhite">Badminton is life</h3></a>
                            </div>
                            <div class="content">
                                <a href="category.html"><h3>Running Apparel</h3></a>
                                <a href="category.html"><h3>END OF SEASON SALE</h3></a>
                            </div>
                            <div class="action">
                                <a href="shop" class="btn btn-demoprimary">
                                    <span>SHOP NOW</span>
                                    <i class="icon-long-arrow-right"></i>
                                </a>
                            </div>
                        </div><!-- End .row -->
                    </div>
                    <div class="col-lg-4 col-md-8 col-sm-10 col-12 col-pd1">
                        <a href="shop">
                            <img src="assets/images/demos/demo-21/banner/banner-2.jpg">
                        </a>
                        <div class="banner-content">
                            <div class="title">
                                <a href="shop"><h3 class="darkWhite">Hike Your Next Trail </h3></a>
                            </div>
                            <div class="content">
                                <a href="shop"><h3>NEW SEASON</h3></a>
                                <a href="shop"><h3>NEW GEAR</h3></a>
                            </div>
                            <div class="action">
                                <a href="shop" class="btn btn-demoprimary">
                                    <span>DISCOVER NOW</span>
                                    <i class="icon-long-arrow-right"></i>
                                </a>
                            </div>
                        </div><!-- End .row -->
                    </div>
                    <div class="col-lg-4 col-md-8 col-sm-10 col-12 col-pd1">
                        <a href="category.html">
                            <img src="assets/images/demos/demo-21/banner/banner-3.jpg">
                        </a>
                        <div class="banner-content">
                            <div class="title">
                                <a href="shop"><h3 class="darkWhite">Summer Sale</h3></a>
                            </div>
                            <div class="content">
                                <a href="shop"><h3>Sale up to 30%</h3></a>
                            </div>
                            <div class="action">
                                <a href="shop" class="btn btn-demoprimary">
                                    <span>SHOP NOW</span>
                                    <i class="icon-long-arrow-right"></i>
                                </a>
                            </div>
                        </div><!-- End .row -->
                    </div>
                </div>


                <div class="container logos">
                    <div class="owl-carousel mb-5 owl-simple" data-toggle="owl" 
                         data-owl-options='{
                         "nav": true, 
                         "dots": false,
                         "margin": 10,
                         "loop": false,
                         "responsive": {
                         "0": {
                         "items":2
                         },
                         "420": {
                         "items":3
                         },
                         "600": {
                         "items":4
                         },
                         "900": {
                         "items":5
                         },
                         "1024": {
                         "items":6
                         }
                         }
                         }'>
                        <a class="brand">
                            <img src="assets/images/brands/1.png" alt="Brand Name">
                        </a>

                        <a class="brand">
                            <img src="assets/images/brands/2.png" alt="Brand Name">
                        </a>

                        <a class="brand">
                            <img src="assets/images/brands/3.png" alt="Brand Name">
                        </a>

                        <a class="brand">
                            <img src="assets/images/brands/4.png" alt="Brand Name">
                        </a>

                        <a class="brand">
                            <img src="assets/images/brands/5.png" alt="Brand Name">
                        </a>

                        <a class="brand">
                            <img src="assets/images/brands/6.png" alt="Brand Name">
                        </a>

                        <a class="brand">
                            <img src="assets/images/brands/7.png" alt="Brand Name">
                        </a>
                    </div><!-- End .owl-carousel -->
                </div><!-- End .container -->

                <div class="container bestsellers">
                    <hr class="mb-3">
                    <div class="heading">
                        <h2 class="title text-center">BEST SELLERS</h2>
                        <p class="content text-center mb-4">The Trends. The latest fashion trends from top brands!</p>
                    </div>

                    <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                         data-owl-options='{
                         "nav": true, 
                         "dots": false,
                         "margin": 20,
                         "loop": false,
                         "responsive": {
                         "0": {
                         "items":2
                         },
                         "768": {
                         "items":3
                         },
                         "992": {
                         "items":4
                         }
                         }
                         }'>
                        <c:forEach items="${bestsellerList}" var="bsl">
                            <div class="product demo21">
                                <figure class="product-media">
                                    <a href="product?itemid=${bsl.itemId}">
                                        <img src="${bsl.image}" alt="Product image" class="product-image">
                                        <img src="${bsl.image}" alt="Product image" class="product-image-hover">
                                    </a>

                                </figure><!-- End .product-media -->

                                <div class="product-body text-center">
                                    <h3 class="product-title"><a href="product?itemid=${bsl.itemId}">${bsl.name}</a></h3><!-- End .product-title -->
                                    <div class="product-price">
                                        <span class="new-price">${bsl.price}K VND</span>
                                    </div><!-- End .product-price -->
                                    <div class="ratings-container">
                                        <div class="ratings">
                                            <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                        </div><!-- End .ratings -->
                                        <span class="ratings-text">( 2 Reviews )</span>
                                    </div><!-- End .rating-container -->

                                    <div class="product-action">
                                        <a href="product?itemid=${bsl.itemId}" class="btn-product btn-cart" title="Add to cart"><span>ADD TO CART</span></a>
                                        <a href="wishlist?itemid=${bsl.itemId}" class="btn-addtolist"><span>&nbsp;Add to Wishlist</span></a>
                                    </div><!-- End .product-action -->

                                </div><!-- End .product-body -->
                            </div><!-- End .product -->
                        </c:forEach>

                    </div><!-- End .owl-carousel -->
                </div>

                <div class="choose-style">
                    <div class="container row">
                        <div class="banner-intro col-lg-5">
                            <h3 class="title">Get Your<br>Inspiration<br>In The Street.</h3>

                            <p class="darkWhite">IN THIS LOOK</p>
                            <h4 class="content darkWhite">• Vợt Lining halbertec 9000</h4>
                            <h4 class="content darkWhite">• Áo thể thao lining </h4>
                            <h4 class="content darkWhite">• Giày lining ayas026</h4>
                            <p class="price darkWhite">$55.00 - $150.00</p>

                            <a href="category.html" class="btn btn-demoprimary">
                                <span>BUY ALL </span>
                                <i class="icon-long-arrow-right"></i>
                            </a>
                        </div>
                        <div class="carousel col-lg-7">
                            <div class="heading">
                                <h2 class="title" style="margin-left: 150px">Choose Your Style</h2>
                                <p class="content" style="font-family: sans-serif;margin-left: 150px">Combo cho sự tự tin trên mọi loại sân cầu</p>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-6">
                                    <div class="product demo21">
                                        <figure class="product-media">
                                            <a href="search?name=lining+halbertec+9000">
                                                <img src="images/vot-cau-long-lining-halbertec-9000-chinh-hang_1713475947.webp" alt="Product image" class="product-image">
                                            </a>

                                        </figure><!-- End .product-media -->

                                        <div class="product-body text-center">
                                            <h3 class="product-title"><a href="search?name=lining+halbertec+9000">Lining halbertec 9000</a></h3><!-- End .product-title -->
                                            <div class="product-price">
                                                <span class="cur-price">Giá: 5100K</span>
                                            </div><!-- End .product-price -->
                                            <div class="ratings-container">
                                                <div class="ratings">
                                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                                </div><!-- End .ratings -->
                                                <span class="ratings-text">( 2 Reviews )</span>
                                            </div><!-- End .rating-container -->


                                            <div class="product-action">
                                                <a href="product?itemid=11" class="btn-product btn-cart" title="Add to cart"><span>ADD TO CART</span></a>
                                            </div><!-- End .product-action -->

                                            <a href="wishlist?itemid=11" class="btn-addtolist"><span>&nbsp;Add to Wishlist</span></a>

                                        </div><!-- End .product-body -->
                                    </div><!-- End .product -->

                                </div>
                                <div class="col-lg-4 col-md-4 col-6">
                                    <div class="product demo21">
                                        <figure class="product-media">
                                            <a href="product?itemid=94">
                                                <img src="images/ao-cau-long-lining-a435-nam-den_1715198117.webp" alt="Product image" class="product-image">
                                            </a>

                                            <div class="product-countdown" data-until="+9h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->
                                        </figure><!-- End .product-media -->

                                        <div class="product-body text-center">
                                            <h3 class="product-title"><a href="product?item=94">Áo thể thao lining</a></h3><!-- End .product-title -->
                                            <div class="product-price">
                                                <span class="cur-price">Giá: 130K</span>
                                            </div><!-- End .product-price -->
                                            <div class="ratings-container">
                                                <div class="ratings">
                                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                                </div><!-- End .ratings -->
                                                <span class="ratings-text">( 4 Reviews )</span>
                                            </div><!-- End .rating-container -->

                                            <div class="product-action">
                                                <a href="product?itemid=94" class="btn-product btn-cart" title="Add to cart"><span>ADD TO CART</span></a>
                                            </div><!-- End .product-action -->
                                            <a href="wishlist?itemid=94" class="btn-addtolist"><span>&nbsp;Add to Wishlist</span></a>

                                        </div><!-- End .product-body -->
                                    </div><!-- End .product -->
                                </div>
                                <div class="col-lg-4 col-md-4 col-6">
                                    <div class="product demo21">
                                        <figure class="product-media">
                                            <a href="product?itemid=95">
                                                <img src="images/giay-cau-long-lining-ayas026-1-chinh-hang_1706562942.webp" alt="Product image" class="product-image">
                                            </a>

                                        </figure><!-- End .product-media -->

                                        <div class="product-body text-center">
                                            <h3 class="product-title"><a href="product?itemid=95">Giày lining ayas026</a></h3><!-- End .product-title -->
                                            <div class="product-price">
                                                <span class="cur-price">Giá: 2600K</span>
                                            </div><!-- End .product-price -->
                                            <div class="ratings-container">
                                                <div class="ratings">
                                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                                </div><!-- End .ratings -->
                                                <span class="ratings-text">( 0 Reviews )</span>
                                            </div><!-- End .rating-container -->

                                            <div class="product-action">
                                                <a href="product?itemId=95" class="btn-product btn-cart" title="Add to cart"><span>ADD TO CART</span></a>
                                            </div><!-- End .product-action -->
                                            <a href="wishlist?itemid=95" class="btn-addtolist"><span>&nbsp;Add to Wishlist</span></a>

                                        </div><!-- End .product-body -->
                                    </div><!-- End .product -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container category-banner">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6" >
                            <a href="shop?name=vợt">
                                <img src="assets/images/demos/demo-21/banner/vot-cau-long.jpg">
                            </a>
                            <div class="banner-content">
                                <a href="shop?name=vợt"><h3 class="category"> RACKET </h3></a>
                                <a href="shop?name=vợt" class="action">SHOP NOW</a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <a href="shop?name=áo">
                                <img src="assets/images/demos/demo-21/banner/quan-ao.jpg">
                            </a>
                            <div class="banner-content">
                                <a href="shop?name=áo"><h3 class="category"> SPORTS </h3></a>
                                <a href="shop?name=áo"><h3 class="category"> &nbsp &nbsp &nbsp &nbsp CLOTHING </h3></a>
                                <a href="shop?name=áo" class="action">SHOP NOW</a>
                            </div>

                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <a href="shop?name=giày">
                                <img src="assets/images/demos/demo-21/banner/footware.jpg">
                            </a>
                            <div class="banner-content">
                                <a href="shop?name=giày"><h3 class="category"> FOOTWEAR </h3></a>
                                <a href="shop?name=giày" class="action">SHOP NOW</a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <a href="shop?name=phụ%20kiện">
                                <img src="assets/images/demos/demo-21/banner/accessories.jpg">
                            </a>
                            <div class="banner-content">
                                <a href="shop?name=phụ%20kiện"><h3 class="category"> ACCESSORIES </h3></a>
                                <a href="shop?name=phụ%20kiện" class="action">SHOP NOW</a>
                            </div>

                        </div>


                    </div>
                </div>

                <div class="container new-arrivals">

                    <hr class="mb-5 mt-8">

                    <div class="heading heading-center mb-3">
                        <h2 class="title">NEW ARRIVALS </h2><!-- End .title -->

                        <ul class="nav nav-pills justify-content-center" role="tablist">
                        </ul>
                    </div>

                    <div class="tab-content tab-content-carousel">
                        <form action="" method="post" name="do">
                            <div class="tab-pane p-0 fade show active" id="arrivals-all-tab" role="tabpanel" aria-labelledby="arrivals-all-link">
                                <div class="row">

                                    <c:forEach items="${sessionScope.arrvialList}" var="al">
                                        <div class="col-xl-5col col-lg-3 col-md-4 col-6" style="margin-bottom: 40px">
                                            <div class="product demo21">
                                                <figure class="product-media">
                                                    <a href="product?itemid=${al.itemId}">
                                                        <img src="${al.image}" alt="Product image" class="product-image">
                                                    </a>

                                                </figure><!-- End .product-media -->

                                                <div class="product-body text-center">
                                                    <h3 class="product-title" style="margin-top: 5px; font-family: sans-serif;"><a href="product?itemid=${al.itemId}product.html">${al.name}</a></h3><!-- End .product-title -->
                                                    <div class="product-price">
                                                        <span class="cur-price">${al.price}K vnd</span>
                                                    </div><!-- End .product-price -->
                                                    <div class="ratings-container">
                                                        <div class="ratings">
                                                            <div class="ratings-val" style="width: 0%;"></div><!-- End .ratings-val -->
                                                        </div><!-- End .ratings -->
                                                        <span class="ratings-text">( 0 Reviews )</span>
                                                    </div><!-- End .rating-container -->


                                                    <div class="product-action">
                                                        <a href="product?itemid=${al.itemId}" style="cursor: pointer" class="btn-product btn-cart"><span>ADD TO CART</span></a>
                                                    </div><!-- End .product-action -->

                                                    <a href="wishlist?itemid=${al.itemId}" class="btn-addtolist"><span>&nbsp;Add to Wishlist</span></a>

                                                </div><!-- End .product-body -->
                                            </div><!-- End .product -->
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>
                        </form>
                    </div><!-- .End .tab-pane -->

                    <div class="text-center">
                        <a href="shop" class="btn btn-viewMore">
                            <span>VIEW MORE PRODUCTS</span>
                            <i class="icon-long-arrow-right"></i>
                        </a>
                    </div>
                </div><!-- End .container -->

                <div class="container newsletter">
                    <div class="background" style="background-image: url(assets/images/demos/demo-21/newsLetter/banner.jpg);">
                        <div class="subscribe">
                            <div class="subscribe-title text-center">
                                <h1 class="intro-title2nd">SUBSCRIBE FOR OUR NEWSLETTER</h1>
                                <h1 class="intro-title1st">Learn about new offers and get more deals by joining our newsletter</h1>
                            </div>
                            <form action="#">
                                <div class="input-group">
                                    <input type="email" placeholder="Enter your Email Address" aria-label="Email Adress" required="">
                                    <div class="input-group-append">
                                        <button class="btn btn-subscribe" type="submit"><span>Subscribe</span><i class="icon-long-arrow-right"></i></button>
                                    </div><!-- .End .input-group-append -->
                                </div><!-- .End .input-group -->
                            </form>
                        </div>
                    </div>
                </div>

                <div class="container service mt-4" style="margin-bottom: 50px">
                    <div class="col-sm-6 col-lg-3 col-noPadding">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-truck"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Payment &amp; Delivery</h3><!-- End .icon-box-title -->
                                <p>Free shipping for orders over $50</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-4 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-rotate-left"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Return &amp; Refund</h3><!-- End .icon-box-title -->
                                <p>Free 100% money back guarantee</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-4 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-life-ring"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Quality Support</h3><!-- End .icon-box-title -->
                                <p>Alway online feedback 24/7</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-4 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-envelope"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">JOIN OUR NEWSLETTER</h3><!-- End .icon-box-title -->
                                <p>10% off by subscribing to our newsletter</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-4 -->
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
