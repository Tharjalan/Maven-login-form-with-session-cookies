


<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Zeus Tech</title>



    <style>
        /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
        @import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
        @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

        body{
            margin: 0;
            padding: 0;
            background: #fff;

            color: #fff;
            font-family: Arial;
            font-size: 12px;
        }

        .body{
            position: absolute;
            top: -20px;
            left: -20px;
            right: -40px;
            bottom: -40px;
            width: auto;
            height: auto;
            background-image: url(https://images.pexels.com/photos/165509/pexels-photo-165509.jpeg?w=940&h=650&auto=compress&cs=tinysrgb);
            background-size: cover;
            -webkit-filter: blur(5px);
            z-index: 0;
        }

        .grad{
            position: absolute;
            top: -20px;
            left: -20px;
            right: -40px;
            bottom: -40px;
            width: auto;
            height: auto;
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
            z-index: 1;
            opacity: 0.7;
        }

        .header{
            position: absolute;
            top: calc(50% - 35px);
            left: calc(50% - 255px);
            z-index: 2;
        }

        .header div{
            float: left;
            color: #fff;
            font-family: 'Exo', sans-serif;
            font-size: 35px;
            font-weight: 200;
        }

        .header div span{
            color: #5379fa !important;
        }

        .login{
            position: absolute;
            top: calc(50% - 75px);
            left: calc(50% - 50px);
            height: 150px;
            width: 500px;
            padding: 10px;
            z-index: 2;
        }

        .login input[type=text]{
            width: 400px;
            height: 30px;
            background: transparent;
            border: 1px solid rgba(255,255,255,0.6);
            border-radius: 2px;
            color: #fff;
            font-family: 'Exo', sans-serif;
            font-size: 16px;
            font-weight: 400;
            padding: 4px;
        }

        .login input[type=password]{
            width: 400px;
            height: 30px;
            background: transparent;
            border: 1px solid rgba(255,255,255,0.6);
            border-radius: 2px;
            color: #fff;
            font-family: 'Exo', sans-serif;
            font-size: 16px;
            font-weight: 400;
            padding: 4px;
            margin-top: 10px;
        }

        .login input[type=button]{
            width: 260px;
            height: 35px;
            background: #fff;
            border: 1px solid #fff;
            cursor: pointer;
            border-radius: 2px;
            color: #a18d6c;
            font-family: 'Exo', sans-serif;
            font-size: 16px;
            font-weight: 400;
            padding: 6px;
            margin-top: 10px;
        }

        .login input[type=button]:hover{
            opacity: 0.8;
        }

        .login input[type=button]:active{
            opacity: 0.6;
        }

        .login input[type=text]:focus{
            outline: none;
            border: 1px solid rgba(255,255,255,0.9);
        }

        .login input[type=password]:focus{
            outline: none;
            border: 1px solid rgba(255,255,255,0.9);
        }

        .login input[type=button]:focus{
            outline: none;
        }

        ::-webkit-input-placeholder{
            color: rgba(255,255,255,0.6);
        }



    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
<div class="body"></div>
<div class="grad"></div>
<div class="header">
    <div>Cyber<span>Tech</span></div>
</div>
<br>
<div class="login">


    <form method="post" action="">
        <div class="box">
            <h1>Zeus Tech</h1>

            <input type="text" name="username" value="email" onFocus="field_focus(this, 'email');" onblur="field_blur(this, 'email');" class="email" />

            <input type="password" name="password" value="password" onFocus="field_focus(this, 'password');" onblur="field_blur(this, 'password');" class="password" />

            </div> <!-- End Btn -->

        <div class="btn"><input type="submit"  name="submit" value="login" />

            <input type="radio" name="cookie" value="no" > <label> No flag</label>
            <input type="radio" name="cookie" value="http" > <label> HttpOnly</label>
            <input type="radio" name="cookie" value="secure"> <label> Secure</label>
            <input type="radio" name="cookie" value="both"> <label> Secure & HttpOnly</label>

        </div> <!-- End Box -->

    </form>


</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


</body>
</html>










<script src="script.js" type="text/javascript"></script>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>






<%
    Cookie cookie=null;
    Cookie[] cookies=null;
    cookies=request.getCookies();
    String scheme=request.getScheme();



    if(request.getParameter("submit") != null) {


        String username = request.getParameter("username");
        String password = request.getParameter("password");


        if ("admin".equals(username) && "admin".equals(password)) {
            out.println("Login success!!");

            String radio = request.getParameter("cookie");//get radio buttion  value

            if (request.getParameter("submit") != null) {

                if("no".equals(radio)) {
                    //no secure and httponly flags
                    Cookie cookie1 = new Cookie("datar", "VFJDE3598ROPDL0900KVMKMDJSA289DNVCMX"); // create cookie object
                    cookie1.setMaxAge(60);    //set max age for cookie in seconds
                    cookie1.setDomain("localhost"); //set domain for cookie
                    cookie1.setPath("/myloginapp");  // set path
                    response.addCookie(cookie1);  //create cookie
                    response.sendRedirect("loginfunc.jsp");

                }
               else if ("secure".equals(radio)) {
                    //it has only secure flags
                    Cookie cook = new Cookie("datar", "VFJDE3598ROPDL0900KVMKMDJSA289DNVCMX");
                    cook.setMaxAge(60);
                    cook.setSecure(true);  // enable secure connection
                    cook.setDomain("localhost");
                    cook.setPath("/myloginapp");
                    response.addCookie(cook);
                    response.sendRedirect("loginfunc.jsp");
                }

                else if ("http".equals(radio)) {
                    //it has only httponly flags
                    Cookie cook = new Cookie("datar", "VFJDE3598ROPDL0900KVMKMDJSA289DNVCMX");
                    cook.setMaxAge(60);
                    cook.setHttpOnly(true); //java script can not run on this cookie
                    cook.setDomain("localhost");
                    cook.setPath("/mylognapp");
                    response.addCookie(cook);
                    response.sendRedirect("loginfunc.jsp");
                } else if ("both".equals(radio)) {
                    //it has secure and httponly flags
                    Cookie cook = new Cookie("datar", "VFJDE3598ROPDL0900KVMKMDJSA289DNVCMX");
                    cook.setMaxAge(60);
                    cook.setSecure(true);
                    cook.setHttpOnly(true);
                    cook.setDomain("localhost");
                    cook.setPath("/myloginapp");
                    response.addCookie(cook);
                    response.sendRedirect("loginfunc.jsp");
                }
            }
        }

                else {
                    out.println("failed!!");
                }

        }


%>


