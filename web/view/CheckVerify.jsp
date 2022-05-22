<%-- 
    Document   : CheckVerify
    Created on : May 21, 2022, 7:28:50 PM
    Author     : cloudy_place
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/CheckVerify.css">
        <title>JSP Page</title>
    </head>
<body>
    <br>
    <br>
    <div class="cont">
        <div class="content">
            <h2>Nhập mã bảo mật</h2>
            <div class="error-notifi">
                <p class="error">Số bạn đã nhập không khớp với mã. Vui lòng thử lại</p>
                <p class="notifi">Vui lòng kiểm tra mã trong email của bạn. Mã này gồm 6 số</p>
            </div>
            
            <div class="capcha-email">
                <label>
                    <input type="password" placeholder="Nhập mã:" />
                </label>
                <div class="email">
                    <p>Chúng tôi đã gửi cho bạn mã đến: </p>
                    <p>****************>
                </div>

            </div>

            <hr class="hr">
            <div class="ReCapcha-Huy-Gui">
                <a href="">Bạn chưa nhận được mã?</a>
                <button type="button" class="submit">Hủy</button>
                <button type="button" class="submit">Tiếp tục</button>
            </div>


        </div>

    </div>


</body>
</html>
