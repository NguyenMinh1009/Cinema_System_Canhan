<%-- 
    Document   : ForgotPassword
    Created on : May 21, 2022, 6:04:52 PM
    Author     : cloudy_place
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/ForgotPassword.css">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <br>
        <div class="cont">
            <div class="content">
                <h2>Đặt lại tài khoản của bạn</h2>
                <p style="color: red">${mess}</p>
                <p>Vui lòng nhập email để đặt lại tài khoản của bạn</p>

                <form action="forgotpassword" method="post">
                    <label>
                        <input name="email" type="email" placeholder="Hãy nhập email của bạn:" />
                    </label>
                    <div class="Huy-Gui">
                        <a style="text-decoration: none;" href="login"><button type="button" class="submit">Hủy</button></a>
                        <button type="submit" class="submit" >Gửi</button>
                    </div>

                </form>

            </div>

        </div>
    </body>
</html>
