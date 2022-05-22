<%-- 
    Document   : login
    Created on : 19-05-2022, 12:54:46
    Author     : Quan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cinema-Đăng nhập</title>
        <link rel="stylesheet" href="css/styleSignUp.css">


    </head>
    <body>
        <div class="cont">
            <div class="form sign-in">
                <h2>Chào mừng</h2>
                </br>
                <div style="    display: flex;
                     justify-content: center;
                     color: red;">${mess}</div>
                <form action="login" method="post">
                    <label>
                        <span>Email</span>
                        <input name="email" type="email"  required/>
                    </label>
                    <label>
                        <span>Mật khẩu</span>
                        <input name="pass" type="password" required/>
                    </label>
                    </br>
                    <div style="display: flex; justify-content: center">
                        <input style="width: 5%" name="remember" type="checkbox"> 
                        <p>Nhớ mật khẩu</p>
                    </div>

                    <button type="submit" class="submit">Đăng nhập</button>
                    <a style="text-decoration: none;" href="forgotpassword"><p class="forgot-pass">Quên mật khẩu?</p></a>


                </form>


            </div>
            <div class="sub-cont">
                <div class="img">
                    <div class="img__text m--up">

                        <h3>Không có tài khoản? 
                            Vui lòng đăng ký!</h3>
                    </div>
                    <div class="img__text m--in">

                        <h3>Nếu bạn đã có tài khoản. Ðăng nhập ngay.</h3>
                    </div>
                    <div class="img__btn">
                        <span class="m--up">Đăng ký</span>
                        <span class="m--in">Đăng nhập</span>
                    </div>
                </div>
                <div class="form sign-up">
                    <h2>Tạo tài khoản của bạn</h2>
                    <form action="signup" method="post">
                        <label>
                            <span>Họ và tên</span>
                            <input name="name" type="text" required/>
                        </label>
                        <label>
                            <span>Email</span> ${errorExistEmail}
                            <input  name="emailSignUp" type="email" required/>
                        </label>
                        <label>
                            <span>Password</span>
                            <input name="passSignUp" type="password" required/>
                        </label>
                        <label>
                            <span>Gender</span>
                            </br>
                            </br>
                            <div style="display: flex">
                                <input id="gender" name="gender" type="radio" value="1" required/>Male 
                                <input id="gender" name="gender" type="radio" value="0" />Female 
                            </div>

                        </label>
                        <label>
                            <span>DateOfBirth</span>
                            <input name="dob" type="date" required/>
                        </label>
                        <label>
                            <span>Address</span>
                            <input name="address" type="text" required/>
                        </label>
                        <label>
                            <span>Phone</span>
                            <input name="phone" type="text" required/>
                        </label>
                        <button type="submit" class="submit">Sign Up</button>

                    </form>
                    <script>
                        document.querySelector('.img__btn').addEventListener('click', function () {
                            document.querySelector('.cont').classList.toggle('s--signup');
                        });
                    </script>

                </div>
            </div>
        </div>
    </body>
</html>
