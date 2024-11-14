<%-- 
    Document   : product
    Created on : Jun 29, 2024, 11:31:56 PM
    Author     : kiennn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">


    <!-- molla/product.html  22 Nov 2019 09:54:50 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Sản phẩm |</title>
        <meta name="keywords" content="HTML5 Template">
        <meta name="description" content="Molla - Bootstrap eCommerce Template">
        <meta name="author" content="p-themes">
        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png">
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
        <!-- Main CSS File -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/plugins/nouislider/nouislider.css">
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


            <main class="main">
                <div class="page-content">
                    <div class="container">
                        <div class="product-details-top">
                            <form action="addcart" method="post">
                                <input type="hidden" value="${product.itemId}" name="itemId">
                                <div class="row" style="margin-top: 10px">
                                    <div class="col-md-6">
                                        <div class="product-gallery product-gallery-vertical">
                                            <div class="row">
                                                <figure class="product-main-image">
                                                    <img id="product-zoom" src="${product.image}" data-zoom-image="${product.image}" alt="product image">

                                                    <a href="#" id="btn-product-gallery" class="btn-product-gallery">
                                                        <i class="icon-arrows"></i>
                                                    </a>
                                                </figure><!-- End .product-main-image -->

                                                <div id="product-zoom-gallery" class="product-image-gallery">
                                                    <a class="product-gallery-item active" href="#" data-image="${product.image}" data-zoom-image="${product.image}">
                                                        <img src="${product.image}" alt="product side">
                                                    </a>

                                                    <a class="product-gallery-item" href="#" data-image="${product.image}" data-zoom-image="${product.image}">
                                                        <img src="${product.image}" alt="product cross">
                                                    </a>

                                                    <a class="product-gallery-item" href="#" data-image="${product.image}" data-zoom-image="${product.image}">
                                                        <img src="${product.image}" alt="product with model">
                                                    </a>

                                                    <a class="product-gallery-item" href="#" data-image="assets/images/products/single/4.jpg" data-zoom-image="assets/images/products/single/4-big.jpg">
                                                        <img src="${product.image}" alt="product back">
                                                    </a>
                                                </div><!-- End .product-image-gallery -->
                                            </div><!-- End .row -->
                                        </div><!-- End .product-gallery -->
                                    </div><!-- End .col-md-6 -->

                                    <div class="col-md-6">
                                        <div class="product-details">
                                            <h1 class="product-title">${product.name}</h1><!-- End .product-title -->


                                            <div class="product-price">
                                                ${product.price}K VND
                                            </div><!-- End .product-price -->

                                            <div class="product-content" >
                                                <p style="font-family: monospace">${product.describe} </p>
                                            </div><!-- End .product-content -->


                                            <div class="details-filter-row details-row-size">
                                                <label for="size">Size:</label>
                                                <div class="select-custom">
                                                    <c:if test="${loaiItem eq 'Vợt'}">
                                                        <select name="size" id="size" class="form-control">
                                                            <option value="3U">3U</option>
                                                            <option value="4U">4U</option>
                                                            <option value="5U">5U</option>
                                                            <option value="6U">6U</option>
                                                        </select>
                                                    </c:if>
                                                    <c:if test="${loaiItem eq 'Áo'}">
                                                        <select name="size" id="size" class="form-control">
                                                            <option value="S">S</option>
                                                            <option value="M">M</option>
                                                            <option value="L">L</option>
                                                            <option value="XL">XL</option>
                                                            <option value="XXL">XXL</option>
                                                        </select>
                                                    </c:if>
                                                    <c:if test="${loaiItem eq 'Giày'}">
                                                        <select name="size" id="size" class="form-control">
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                            <option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                        </select>
                                                    </c:if>
                                                </div><!-- End .select-custom -->

                                            </div><!-- End .details-filter-row -->

                                            <div class="details-filter-row details-row-size">
                                                <label for="qty">Số lượng:</label>
                                                <div class="product-details-quantity">
                                                    <c:if test="${product.quantity<10}">
                                                        <input name="numberOfItem" type="number" id="qty" class="form-control" value="1" min="1" max="${product.quantity}" step="1" data-decimals="0" required>
                                                    </c:if>
                                                    <c:if test="${product.quantity>=10}">
                                                        <input name="numberOfItem" type="number" id="qty" class="form-control" value="1" min="1" max="10" step="1" data-decimals="0" required>
                                                    </c:if>
                                                </div><!-- End .product-details-quantity -->
                                            </div><!-- End .details-filter-row -->

                                            <div class="product-details-action">
                                                <c:if test="${product.quantity>0 and product.status eq 'Còn hàng'}">
                                                    <button type="submit" class="btn-product btn-cart"><span>add to cart</span></button>
                                                </c:if>
                                                <c:if test="${product.quantity==0 or product.status eq 'Hết hàng'}">
                                                    <button type="submit" class="btn-product btn-cart" disabled=""><span>Sản phẩm tạm hết</span></button>
                                                </c:if>

                                                <div class="details-action-wrapper">
                                                    <a href="wishlist?itemid=${product.itemId}" class="btn-product btn-wishlist" title="Wishlist"><span>Add to Wishlist</span></a>
                                                </div><!-- End .details-action-wrapper -->
                                            </div><!-- End .product-details-action -->
                                        </div><!-- End .product-details -->
                                    </div><!-- End .col-md-6 -->
                                </div><!-- End .row -->
                            </form>
                        </div><!-- End .product-details-top -->

                        <div class="product-details-tab">
                            <ul class="nav nav-pills justify-content-center" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="product-desc-link" data-toggle="tab" href="#product-desc-tab" role="tab" aria-controls="product-desc-tab" aria-selected="true">Description</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="product-info-link" data-toggle="tab" href="#product-info-tab" role="tab" aria-controls="product-info-tab" aria-selected="false">Additional information</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="product-shipping-link" data-toggle="tab" href="#product-shipping-tab" role="tab" aria-controls="product-shipping-tab" aria-selected="false">Shipping & Returns</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="product-review-link" data-toggle="tab" href="#product-review-tab" role="tab" aria-controls="product-review-tab" aria-selected="false">Reviews (2)</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="product-desc-tab" role="tabpanel" aria-labelledby="product-desc-link">
                                    <div class="product-desc-content">
                                        <h3>Product Information</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. </p>
                                        <ul>
                                            <li>Nunc nec porttitor turpis. In eu risus enim. In vitae mollis elit. </li>
                                            <li>Vivamus finibus vel mauris ut vehicula.</li>
                                            <li>Nullam a magna porttitor, dictum risus nec, faucibus sapien.</li>
                                        </ul>

                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. </p>
                                    </div><!-- End .product-desc-content -->
                                </div><!-- .End .tab-pane -->
                                <div class="tab-pane fade" id="product-info-tab" role="tabpanel" aria-labelledby="product-info-link">
                                    <div class="product-desc-content">
                                        <h3>Information</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. </p>

                                        <h3>Fabric & care</h3>
                                        <ul>
                                            <li>Faux suede fabric</li>
                                            <li>Gold tone metal hoop handles.</li>
                                            <li>RI branding</li>
                                            <li>Snake print trim interior </li>
                                            <li>Adjustable cross body strap</li>
                                            <li> Height: 31cm; Width: 32cm; Depth: 12cm; Handle Drop: 61cm</li>
                                        </ul>

                                        <h3>Size</h3>
                                        <p>one size</p>
                                    </div><!-- End .product-desc-content -->
                                </div><!-- .End .tab-pane -->
                                <div class="tab-pane fade" id="product-shipping-tab" role="tabpanel" aria-labelledby="product-shipping-link">
                                    <div class="product-desc-content">
                                        <h3>Delivery & returns</h3>
                                        <p>We deliver to over 100 countries around the world. For full details of the delivery options we offer, please view our <a href="#">Delivery information</a><br>
                                            We hope you’ll love every purchase, but if you ever need to return an item you can do so within a month of receipt. For full details of how to make a return, please view our <a href="#">Returns information</a></p>
                                    </div><!-- End .product-desc-content -->
                                </div><!-- .End .tab-pane -->
                                <div class="tab-pane fade" id="product-review-tab" role="tabpanel" aria-labelledby="product-review-link">
                                    <div class="reviews">
                                        <h3>Reviews (2)</h3>
                                        <div class="review">
                                            <div class="row no-gutters">
                                                <div class="col-auto">
                                                    <h4><a href="#">Samanta J.</a></h4>
                                                    <div class="ratings-container">
                                                        <div class="ratings">
                                                            <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                                        </div><!-- End .ratings -->
                                                    </div><!-- End .rating-container -->
                                                    <span class="review-date">6 days ago</span>
                                                </div><!-- End .col -->
                                                <div class="col">
                                                    <h4>Good, perfect size</h4>

                                                    <div class="review-content">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus cum dolores assumenda asperiores facilis porro reprehenderit animi culpa atque blanditiis commodi perspiciatis doloremque, possimus, explicabo, autem fugit beatae quae voluptas!</p>
                                                    </div><!-- End .review-content -->

                                                    <div class="review-action">
                                                        <a href="#"><i class="icon-thumbs-up"></i>Helpful (2)</a>
                                                        <a href="#"><i class="icon-thumbs-down"></i>Unhelpful (0)</a>
                                                    </div><!-- End .review-action -->
                                                </div><!-- End .col-auto -->
                                            </div><!-- End .row -->
                                        </div><!-- End .review -->

                                        <div class="review">
                                            <div class="row no-gutters">
                                                <div class="col-auto">
                                                    <h4><a href="#">John Doe</a></h4>
                                                    <div class="ratings-container">
                                                        <div class="ratings">
                                                            <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                                        </div><!-- End .ratings -->
                                                    </div><!-- End .rating-container -->
                                                    <span class="review-date">5 days ago</span>
                                                </div><!-- End .col -->
                                                <div class="col">
                                                    <h4>Very good</h4>

                                                    <div class="review-content">
                                                        <p>Sed, molestias, tempore? Ex dolor esse iure hic veniam laborum blanditiis laudantium iste amet. Cum non voluptate eos enim, ab cumque nam, modi, quas iure illum repellendus, blanditiis perspiciatis beatae!</p>
                                                    </div><!-- End .review-content -->

                                                    <div class="review-action">
                                                        <a href="#"><i class="icon-thumbs-up"></i>Helpful (0)</a>
                                                        <a href="#"><i class="icon-thumbs-down"></i>Unhelpful (0)</a>
                                                    </div><!-- End .review-action -->
                                                </div><!-- End .col-auto -->
                                            </div><!-- End .row -->
                                        </div><!-- End .review -->
                                    </div><!-- End .reviews -->
                                </div><!-- .End .tab-pane -->
                            </div><!-- End .tab-content -->
                        </div><!-- End .product-details-tab -->

                        <h2 class="title text-center mb-4" style="font-family: sans-serif">Sản phẩm tương tự</h2><!-- End .title text-center -->

                        <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                             data-owl-options='{
                             "nav": false, 
                             "dots": true,
                             "margin": 20,
                             "loop": false,
                             "responsive": {
                             "0": {
                             "items":1
                             },
                             "480": {
                             "items":2
                             },
                             "768": {
                             "items":3
                             },
                             "992": {
                             "items":4
                             },
                             "1200": {
                             "items":4,
                             "nav": true,
                             "dots": false
                             }
                             }
                             }'>
                            <c:forEach items="${listSame}" var="same">
                                <div class="product product-7 text-center">
                                    <figure class="product-media">
                                        <a href="product?itemid=${same.itemId}">
                                            <img src="${same.image}" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="addcart?itemId=${same.itemId}" class="btn-product btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">NO. 1</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product?itemid=${same.itemId}">${same.name}</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            ${same.price}K VND
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </c:forEach>
                        </div><!-- End .owl-carousel -->
                    </div><!-- End .container -->
                </div><!-- End .page-content -->
            </main><!-- End .main -->

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
        </div><!-- End .page-wrapper -->
        <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>






        <!-- Plugins JS File -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/jquery.hoverIntent.min.js"></script>
        <script src="assets/js/jquery.waypoints.min.js"></script>
        <script src="assets/js/superfish.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/bootstrap-input-spinner.js"></script>
        <script src="assets/js/jquery.elevateZoom.min.js"></script>
        <script src="assets/js/bootstrap-input-spinner.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- Main JS File -->
        <script src="assets/js/main.js"></script>
    </body>


    <!-- molla/product.html  22 Nov 2019 09:55:05 GMT -->
</html>
