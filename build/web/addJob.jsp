<%-- 
    Document   : addJob
    Created on : Jun 7, 2022, 2:37:25 PM
    Author     : User
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flance.vn</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/LOGO FPT.png">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/price_rangs.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>

    <style>
        input[type=text],
        select {
            width: 100%;
            height: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        html {
            font-family: sans-serif;
            line-height: 1.15;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
            -ms-overflow-style: scrollbar;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }

        div {
            display: block;
        }

        .append-white .input-append .add-on {
            color: rgb(153, 153, 153);
            background: rgb(255, 255, 255);
            position: absolute;
            margin-left: -55px;
            border: 0px;
            margin-top: 5px;
            border-radius: 4px;
        }

        .avatar{
            width: 40px;
            height: 40px;
        }

        .dropdown:hover .dropdown-menu { 
            display: block; 
            margin-top: 0;
        }

        .logo{   
            margin-top: 15px;
            height: 90px;
            width: 140px;
        }
    </style>

    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRoleID().equals("US")) {
                response.sendRedirect("login.jsp");
                return;
            }
            if (loginUser == null) {
                loginUser = new UserDTO();
            }

        %>
        <!-- Preloader Start -->
        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <img src="assets/img/Flancer.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- Preloader Start -->
        <header>
            <!-- Header Start -->
            <div class="header-area header-transparrent">
                <div class="headder-top header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-3 col-md-2">
                                <!-- Logo -->
                                <div class="logo">
                                    <a href="AppearJob"><img src="assets/img/Flancer.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <div class="menu-wrapper">
                                    <!-- Main-menu -->
                                    <div class="main-menu">
                                        <nav class="d-none d-lg-block">
                                            <ul id="navigation">
                                                <li><a href="AppearJob">Trang ch???</a></li>
                                                <li><a href="#">C??ng Vi???c</a>
                                                    <ul class="submenu">
                                                        <li><a href="jobList.jsp">T??m C??ng Vi???c</a></li>
                                                        <li><a href="addJob.jsp">????ng c??ng vi???c</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="aboutUs.jsp">Li??n l???c</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Header-btn -->
                                    <div class="dropdown">
                                        <div class="mb-3">                                            
                                            <img class="rounded-circle avatar ml-2" src="avatarOfUser/<%= loginUser.getAvatar()%>" alt="avatar" />
                                            <%= loginUser.getProfileName()%>                                            
                                        </div>
                                        <div class="dropdown-menu pt-2 pr-4" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="profile.jsp"><i class="fas fa-user pr-2"></i>Trang ca?? nh??n</a>
                                            <a class="dropdown-item" href="changePassword.jsp"><i class="fas fa-key pr-2"></i>??????i m????t kh????u</a>
                                            <a class="dropdown-item" href="payment.jsp"><i class="fab fa-cc-visa pr-2"></i>Ph????ng th????c thanh toa??n</a> 
                                            <a class="dropdown-item" href="historyJob.jsp"><i class="fas fa-history pr-2"></i>L???ch s??? c??ng vi???c</a>
                                            <a class="dropdown-item" href="MainController?action=Logout"><i class="fas fa-sign-out-alt pr-2"></i>????ng xu????t</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height2 d-flex align-items-center"
                 data-background="./assets/img/background.png">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>????ng c??ng vi???c</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <form action="PostJobController" method="POST" enctype="multipart/form-data">
            <section class="site-section">
                <div class="container">
                    <div class="row align-items-center mb-5">
                    </div>
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <form class="p-10 p-md-5 border rounded">
                                <h3 class="text-black mb-5 border-bottom pb-2">Chi ti???t c??ng vi???c</h3>
                                <div class="form-group">
                                    <label for="company-website-tw d-block">????ng ???nh th??ng tin c??ng vi???c</label> <br>
                                    <label class="btn btn-primary btn-md btn-file">
                                        M??? t???p tin<input type="file" hidden name="image" id="img">
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label for="job-title">Ch??? ????? c??ng vi???c</label>
                                    <input input type="text" name="jobName" class="form-control" id="job-title">
                                </div>

                                <div class="form-group">
                                    <label for="job-description">M?? t??? c??ng vi???c</label>
                                    <div class="editor" id="editor-1">
                                        <div>
                                            <textarea class="form-control" rows="10" id="comment" name="description"
                                                      placeholder="M?? t???"></textarea>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">                            	
                                    <label class="mt-2 ml-2" for="job-region">Thu????c li??nh v????c:</label>
                                    <select name="tagID" id="tag" class="box" >
                                        <option value="T01">Thi????t k???? ?????? ho??a</option>
                                        <option value="T02">Qua??ng ca??o</option>
                                        <option value="T03">V??n ba??n va?? di??ch thu????t</option>
                                        <option value="T04">Chi??nh s????a hi??nh a??nh</option>
                                        <option value="T05">Chi??nh s????a videos</option>
                                        <option value="T06">C??ng ngh???? th??ng tin</option>
                                        <option value="T07">Kinh doanh</option>
                                        <option value="T08">Kha??c</option>
                                    </select>
                                </div>

                                Th???i gian: T????  <input type="date" name="startTime" required="" id="time">  ?????n  <input type="date" name="endTime" required="" id="time">

                                <div class="control-group primary-type mt-3">
                                    <div class="row-fluid">
                                        <div class="span2">
                                            <div class="sprites-job-posting sprites-4"></div>
                                        </div>
                                        <div>
                                            <label>Ng??n s??ch</label>
                                            <div class="control-group wrapper append-white combo-row-1st span6 budget">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row-fluid">
                                        <div class="span2">
                                        </div>
                                        <div class="span10">
                                            <div>
                                                <div class="control-group wrapper append-white combo-row-1st span6 budget">
                                                    <div class="  input-append ">
                                                        <input type="text" name="price" id="vlance_jobbundle_jobtype_budget"
                                                               name="vlance_jobbundle_jobtype[budget]" required="required"
                                                               pattern="^(0|[1-9][0-9/.]*)$" placeholder="Th?? lao d??? ki???n" data-toggle="popover"
                                                               data-placement="top" data-content="Th?? lao d??? ki???n, VD: 500.000"
                                                               data-trigger="hover" class="popovers-input span12">
                                                        <span class="add-on">VN??</span>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>


                </div>
                <input type="hidden" name="accountID" value="<%= loginUser.getAccountID()%>">
                <div class="row align-items-center mb-5">

                    <div class="col-lg-5 ml-auto">
                        <div class="row">
                            <div class="col-1">
                            </div>
                            <div class="col-8">
                                <button class="btn btn-block btn-primary btn-md" name="action" value="Post">L??u b??i ????ng</button>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </section>
        </form>

        <jsp:include page="footer.jsp"></jsp:include>     

        <!-- JS here -->
        <!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <script src="./assets/js/price_rangs.js"></script>

        <!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
    </body>
</html>
