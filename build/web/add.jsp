<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Add New Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .form-control {
                height: 41px;
                box-shadow: none;
                color: #969fa4;
            }
            .form-control:focus {
                border-color: #5cb85c;
            }
            .form-control, .btn {
                border-radius: 3px;
            }
            .add-product-form {
                width: 400px;
                margin: 0 auto;
                padding: 30px 0;
            }
            .add-product-form h2 {
                margin: 0 0 15px;
                position: relative;
                text-align: center;
            }
            .add-product-form h2:before, .add-product-form h2:after {
                content: "";
                height: 2px;
                width: 40%;
                background: #d4d4d4;
                position: absolute;
                top: 50%;
                z-index: 2;
            }
            .add-product-form h2:before {
                left: 0;
            }
            .add-product-form h2:after {
                right: 0;
            }
            .add-product-form .hint-text {
                margin-bottom: 30px;
                text-align: center;
            }
            .add-product-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #f2f3f7;
                box-shadow: 0 2px 3px rgba(0, 0, 0, 0.2);
                padding: 30px;
            }
            .add-product-form .form-group {
                margin-bottom: 20px;
            }
            .add-product-form .btn {
                font-size: 16px;
                font-weight: bold;
                min-width: 140px;
                outline: none !important;
            }
        </style>
    </head>
    <body>
        <div class="add-product-form">
            <form action="add" method="post">
                <h2>Add Product</h2>
                <p class="hint-text">Điền thông tin sản phẩm mới</p>
                <div class="form-group">
                    <input type="text" class="form-control" name="name" placeholder="Name" required="required">
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" name="price" placeholder="Price" required="required">
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" name="quantity" placeholder="Quantity" required="required">
                </div>
                <div class="form-group">
                    <input type="date" class="form-control" name="releaseDate" placeholder="Release Date" required="required">
                </div>
                <div class="form-group">
                    <textarea class="form-control" name="describe" placeholder="Describe" required="required"></textarea>
                </div>
                <div class="form-group">
                    <select class="form-control" name="status" required="required">
                        <option value="">Select Status</option>
                        <option value="Còn hàng">Còn hàng</option>
                        <option value="Hết hàng">Hết hàng</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="image" placeholder="Image URL" required="required">
                </div>
                <div class="form-group">
                    <select class="form-control" name="cateid" required="required">
                        <option value="">Select Category</option>
                        <c:forEach items="${category}" var="listC">
                            <option value="${listC.id}">${listC.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-block">Add Product</button>
                </div>
                <a href="manageproduct">Back</a>
            </form>
        </div>
    </body>
</html>
