<%-- 
    Document   : CreateNewPass
    Created on : May 22, 2022, 2:45:46 PM
    Author     : cloudy_place
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/CreateNewPass.css">
    </head>
    <body>
        <br>
        <br>
        <div class="cont">
            <div class="content">
                <h2>Tạo mật khẩu mới</h2>
                <div class="error-notifi">
                    <p  style="    color: red;
                        font-weight: 700;">${errorPass}</p>
                    </br>
                    <p class="notifi">Tạo mật khẩu mới có tối thiểu 6 kí tự</p>
                </div>

                <form action="CreateNewPass" method="post">
                    <div class="newPassword-rePassword">
                        <label>
                            <input name="newPass" type="password" placeholder="Nhập mật khẩu mới:" />
                        </label>
                        <label>
                            <input name="rePass" type="password" placeholder="Nhập lại mật khẩu mới:" />
                        </label>


                    </div>

                    <hr class="hr">
                    <div class="Huy-Gui">
                        <a style="text-decoration: none;" href="login"><button type="button" class="submit">Hủy</button></a>
                        <button type="submit" class="submit">Tiếp tục</button>
                    </div>
                </form>



            </div>

        </div>
    </body>
</html>
