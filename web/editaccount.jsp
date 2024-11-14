<%-- 
    Document   : editaccount
    Created on : Jul 8, 2024, 8:08:27 AM
    Author     : kiennn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Profile</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <h2>Edit Profile</h2>
            <form action="editAccount" method="post" id="editProfileForm">
                <div class="form-group">
                    <label for="id">ID</label>
                    <input type="number" class="form-control" id="id" name="id" value="${userChoose.id}" readonly>
                </div>
                <div class="form-group">
                    <label for="customer_name">Customer Name</label>
                    <input type="text" class="form-control" id="customer_name" value="${userChoose.customer_name}" name="customer_name" required>
                </div>
                <div class="form-group">
                    <label for="phone_number">Phone Number</label>
                    <input type="text" class="form-control" id="phone_number" value="${userChoose.phone_number}"  name="phone_number" required>
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" value="${userChoose.username}" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="text" class="form-control" id="password" value="${userChoose.password}" name="password" required>
                </div>
                <div class="form-group">
                    <label for="role">Role</label>
                    <input type="text" class="form-control" id="role" name="role" value="
                           <c:if test="${userChoose.role==1}">admin</c:if>
                           <c:if test="${userChoose.role==0}">customer</c:if>" required>
                </div>
                <div class="form-group">
                    <label for="sex">Sex</label>
                    <select class="form-control" id="sex" name="sex" required>
                        <c:if test="${userChoose.sex eq 'M'}">
                            <option value="${userChoose.sex}">Male</option>
                            <option value="F">Female</option>
                        </c:if>
                        <c:if test="${userChoose.sex eq 'F'}">
                            <option value="${userChoose.sex}">Female</option>
                            <option value="M">Male</option>
                        </c:if>
                        <c:if test="${userChoose.sex==null}">
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </c:if>


                    </select>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" value="${userChoose.email}" name="email" required>
                </div>
                <div class="form-group">
                    <label for="birthdate">Birthdate</label>
                    <input type="date" class="form-control" id="birthdate" value="${userChoose.birthdate}" name="birthdate">
                </div>
                <button type="submit" class="btn btn-primary">Save Changes</button>
            </form>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

