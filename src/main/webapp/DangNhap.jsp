<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    <title>Ecommerce Website</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<%@include file="DauTrang.jsp" %>


<section id="trang-chu">
    <div class="chieu-rong-lon-nhat">
        <div class="noi-dung-trang-chu">
            <h3>Quản lý <br>Tài khoản</h3>
            <p>Đăng nhập để lưu những món hàng bạn yêu thích và
                địa chỉ giao hàng thường xuyên của bạn.</p>
        </div>
        <div class="dang-nhap">
            <div class="bao-quanh">
                <h1>Đăng nhập</h1>
                <%if(request.getAttribute("xacthuc") != null && (int) request.getAttribute("xacthuc") == 1 ) {%>
                <h3 style="color: red">Email/mật khẩu không đúng</h3>
                <% request.removeAttribute("xacthuc"); } else  {%>
                <% } %>
                <form action="/dangNhap" method="post">
                    <input type="email" name="email" placeholder="Email"><br>
                    <input type="password" name="matkhau" placeholder="Mật khẩu"><br>
                    <input type="submit" class="nut" value="Đăng nhập" >
                </form>
                <p class="chua-dang-ky">
                    <a href="DangKy.jsp">Đăng ký ngay</a>
                </p>
            </div>
        </div>
    </div>
</section>

<%@include file="ChanTrang.jsp" %>
</body>

</html>

