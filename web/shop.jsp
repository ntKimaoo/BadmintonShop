<%-- 
    Document   : shop
    Created on : Jun 24, 2024, 1:09:07 PM
    Author     : kiennn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">


    <!-- molla/category-4cols.html  22 Nov 2019 10:02:52 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>TKB STORE - Sản phẩm</title>
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
        <!-- Main CSS File -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css">
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
                                    <li >
                                        <a href="home" class="sf-with-ul">Home</a>
                                    </li>
                                    <li class="active">
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
                <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
                    <div class="container">
                        <h1 class="page-title">Sản phẩm chính hãng<span>Mua sắm ngay</span></h1>
                    </div><!-- End .container -->
                </div><!-- End .page-header -->

                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="${searchFound!=null ? "col-lg-12" : "col-lg-9"}">
                                <div class="toolbox" style="margin-top: 20px">
                                    <c:if test="${searchFound==null}">
                                        <div class="toolbox-left">
                                            <div class="toolbox-info">
                                                Showing <span>12 of ${totalItem}</span> Products
                                            </div><!-- End .toolbox-info -->
                                        </div><!-- End .toolbox-left -->
                                    </c:if>
                                </div><!-- End .toolbox -->
                                <form name="do" action="" method="post">
                                    <div class="products mb-3">
                                        <div class="row justify-content-center">
                                            <c:forEach items="${listProduct}" var="list">
                                                <div class="col-6 col-md-4 col-lg-4 col-xl-3">
                                                    <div class="product product-7 text-center">
                                                        <figure class="product-media">
                                                            <span class="product-label label-new">New</span>
                                                            <a href="product?itemid=${list.itemId}">
                                                                <img src="${list.image}" alt="Product image" class="product-image">
                                                            </a>

                                                            <div class="product-action-vertical">
                                                                <a href="wishlist?itemid=${list.itemId}" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                                                <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                                            </div><!-- End .product-action-vertical -->

                                                            <div class="product-action">
                                                                <a onclick="addcart('${list.itemId}')" style="cursor: pointer" class="btn-product btn-cart"><span>add to cart</span></a>
                                                            </div><!-- End .product-action -->
                                                        </figure><!-- End .product-media -->

                                                        <div class="product-body">
                                                            <h3 class="product-title"><a href="product.jsp" style="font-family: sans-serif">${list.name}</a></h3><!-- End .product-title -->
                                                            <div class="product-price">
                                                                <fmt:formatNumber value="${list.price}" pattern="#,##0.###" />K vnd
                                                            </div><!-- End .product-price -->
                                                            <div class="ratings-container">
                                                                <div class="ratings">
                                                                    <div class="ratings-val" style="width: 20%;"></div><!-- End .ratings-val -->
                                                                </div><!-- End .ratings -->
                                                                <span class="ratings-text">( 0 Reviews )</span>
                                                            </div><!-- End .rating-container -->
                                                        </div><!-- End .product-body -->
                                                    </div><!-- End .product -->
                                                </div><!-- End .col-sm-6 col-lg-4 col-xl-3 -->
                                            </c:forEach>
                                        </div>
                                    </div>
                                </form>



                                <c:if test="${searchFound==null}">
                                    <c:if test="${foundList==null}">
                                        <nav aria-label="Page navigation">
                                            <ul class="pagination justify-content-center">
                                                <li class="page-item ${pageIndex<=1 ? "disabled":""}">
                                                    <a class="page-link page-link-prev" href="shop?index=${pageIndex - 1}&name=${loai}" aria-label="Previous">
                                                        <span aria-hidden="true"><i class="icon-long-arrow-left"></i></span>Prev
                                                    </a>
                                                </li>
                                                <c:forEach begin="1" end="${endP}" var="i">
                                                    <li class="page-item ${pageIndex==i ? "active":""}" aria-current="page"><a class="page-link" href="shop?index=${i}&name=${loai}">${i}</a></li>
                                                    </c:forEach>
                                                <li class="page-item-total">of ${endP}</li>
                                                <li class="page-item ${pageIndex>=endP ? "disabled":""}">
                                                    <a class="page-link page-link-next" href="shop?index=${pageIndex + 1}&name=${loai}" aria-label="Next">
                                                        Next <span aria-hidden="true"><i class="icon-long-arrow-right"></i></span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </c:if>
                                </c:if>
                                <c:if test="${searchFound!=null}">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item ${pageIndex<=1 ? "disabled":""}">
                                                <a class="page-link page-link-prev" href="search?index=${pageIndex - 1}&name=${searchFound}" aria-label="Previous">
                                                    <span aria-hidden="true"><i class="icon-long-arrow-left"></i></span>Prev
                                                </a>
                                            </li>
                                            <c:forEach begin="1" end="${endP}" var="i">
                                                <li class="page-item ${pageIndex==i ? "active":""}" aria-current="page"><a class="page-link" href="search?index=${i}&name=${searchFound}">${i}</a></li>
                                                </c:forEach>
                                            <li class="page-item-total">of ${endP}</li>
                                            <li class="page-item ${pageIndex>=endP ? "disabled":""}">
                                                <a class="page-link page-link-next" href="search?index=${pageIndex + 1}&name=${searchFound}" aria-label="Next">
                                                    Next <span aria-hidden="true"><i class="icon-long-arrow-right"></i></span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </c:if>
                            </div><!-- End .col-lg-9 -->
                            <c:if test="${searchFound==null}">
                                <aside class="col-lg-3 order-lg-first">
                                    <form action="category?name=${loai}" method="POST">
                                        <div class="sidebar sidebar-shop">
                                            <div class="widget widget-clean">
                                                <label>Filters:</label>
                                                <a href="#" class="sidebar-filter-clear">Clean All</a>
                                            </div><!-- End .widget widget-clean -->

                                            <div class="widget widget-collapsible">
                                                <h3 class="widget-title">
                                                    <a data-toggle="collapse" href="#widget-1" role="button" aria-expanded="true" aria-controls="widget-1">
                                                        Brand
                                                    </a>
                                                </h3><!-- End .widget-title -->

                                                <div class="collapse show" id="widget-1">
                                                    <div class="widget-body">
                                                        <div class="filter-items filter-items-count">
                                                            <c:forEach items="${listCategory}" var="listCate">
                                                                <div class="filter-item">
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" class="custom-control-input" id="checkbox-${listCate.id}" name="category" value="${listCate.name}">
                                                                        <label class="custom-control-label" for="checkbox-${listCate.id}" >${listCate.name}</label>
                                                                    </div><!-- End .custom-checkbox -->
                                                                    <span class="item-count">
                                                                        <c:out value="${categoryProductCounts[listCate.name]}" />
                                                                    </span>
                                                                </div><!-- End .filter-item -->
                                                            </c:forEach>
                                                        </div><!-- End .filter-items -->
                                                    </div><!-- End .widget-body -->
                                                </div><!-- End .collapse -->
                                            </div><!-- End .widget -->

                                            <div class="widget widget-collapsible">
                                                <h3 class="widget-title">
                                                    <a data-toggle="collapse" href="#widget-2" role="button" aria-expanded="true" aria-controls="widget-2">
                                                        Giá tiền
                                                    </a>
                                                </h3><!-- End .widget-title -->

                                                <div class="collapse show" id="widget-2">
                                                    <div class="widget-body">
                                                        <div class="filter-items">
                                                            <div class="filter-item">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="size-1" name="priceRange" value="500-1000">
                                                                    <label class="custom-control-label" for="size-1">500k-1000k</label>
                                                                </div><!-- End .custom-checkbox -->
                                                            </div><!-- End .filter-item -->

                                                            <div class="filter-item">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="size-2" name="priceRange" value="1000-3500">
                                                                    <label class="custom-control-label" for="size-2">1000k-3500k</label>
                                                                </div><!-- End .custom-checkbox -->
                                                            </div><!-- End .filter-item -->

                                                            <div class="filter-item">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="size-3" name="priceRange" value="3500-5000">
                                                                    <label class="custom-control-label" for="size-3">3500k-5000k</label>
                                                                </div><!-- End .custom-checkbox -->
                                                            </div><!-- End .filter-item -->

                                                            <div class="filter-item">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="size-4" name="priceRange" value="5000-6500">
                                                                    <label class="custom-control-label" for="size-4">5000k-6500k</label>
                                                                </div><!-- End .custom-checkbox -->
                                                            </div><!-- End .filter-item -->

                                                            <div class="filter-item">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="size-5" name="priceRange" value="6500-10000">
                                                                    <label class="custom-control-label" for="size-5">6500k-10000k</label>
                                                                </div><!-- End .custom-checkbox -->
                                                            </div><!-- End .filter-item -->
                                                        </div><!-- End .filter-items -->
                                                    </div><!-- End .widget-body -->
                                                </div><!-- End .collapse -->
                                            </div><!-- End .widget -->
                                        </div>
                                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                                    </form>
                                </aside><!-- End .col-lg-3 -->
                            </c:if>
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .page-content -->
            </main><!-- End .main -->

            <footer class="footer">
                <div class="footer-bottom">
                    <div class="container">
                        <p class="footer-copyright">Copyright © 2024 T.Kien Store. All Rights Reserved.</p><!-- End .footer-copyright -->
                        <figure class="footer-payments">
                            <img src="assets/images/payments.png" alt="Payment methods" width="272" height="20">
                        </figure><!-- End .footer-payments -->
                    </div><!-- End .container -->
                </div><!-- End .footer-bottom -->
            </footer><!-- End .footer -->
        </div><!-- End .page-wrapper -->
        <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>



        <!-- Plugins JS File -->
        <script type="text/javascript">
            function addcart(id) {
                document.do.action = "addcart?itemId=" + id;
                document.do.submit();
            }
        </script>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/jquery.hoverIntent.min.js"></script>
        <script src="assets/js/jquery.waypoints.min.js"></script>
        <script src="assets/js/superfish.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wNumb.js"></script>
        <script src="assets/js/bootstrap-input-spinner.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/nouislider.min.js"></script>
        <!-- Main JS File -->
        <script src="assets/js/main.js"></script>
    </body>


    <!-- molla/category-4cols.html  22 Nov 2019 10:02:55 GMT -->
</html>