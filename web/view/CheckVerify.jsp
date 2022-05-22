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
                    <p style="    color: red;
                       font-weight: 700;">${errorVerify}</p>
                    </br>
                    <p class="notifi">Vui lòng kiểm tra mã trong email của bạn. Mã này gồm 6 kí tự</p>
                </div>

                <form action="CheckVerify" method="post">
                    <div class="capcha-email">
                        <label>
                            <input name="verify" type="password" placeholder="Nhập mã:" />
                        </label>
                        <div class="email">
                            <p>Chúng tôi đã gửi cho bạn mã đến: </p>
                            <p>${existEmail}
                        </div>

                    </div>

                    <hr class="hr">
                    <div class="ReCapcha-Huy-Gui">
                        <a style="    margin-top: 50px;
                           color: blue;
                           text-decoration: none" href="">Bạn chưa nhận được mã?</a>
                        <a style="text-decoration: none;" href="login"><button type="button" class="submit">Hủy</button></a>
                        <button type="submit" class="submit">Tiếp tục</button>
                    </div>

                </form>



            </div>

        </div>


    </body>
</html>
