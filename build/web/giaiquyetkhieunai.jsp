<%-- 
    Document   : giaiquyetkhieunai
    Created on : Jul 19, 2022, 11:14:15 AM
    Author     : Zenos
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
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/LOGO FPT.png">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/price_rangs.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <style>

        .avatar{
            width: 40px;
            height: 40px;
        }
        .dropdown:hover .dropdown-menu { 
            display: block; 
            margin-top: 0;
        }

        .logo {
            padding: 7px;
            width: 10rem;
        }




        .single-slider {
            height: 35rem;
            /* padding: 5rem; */
            color: #fff;
        }

        .border-btn2 {
            border: 0.3rem solid;
        }

        .online-cv {
            margin-top: 15rem;
        }

        .footer {
            background-color: #24262b;
            padding: 70px 0;
            margin-top: 15rem;
        }

        .container-footer {
            max-width: 1170px;
            margin: auto;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
        }


    </style>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
        %> 
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
                                    <%
                                        if (loginUser == null) {
                                    %>
                                    <a href="HomeController"><img src="assets/img/Flancer.png" alt=""></a>
                                        <%
                                        } else {
                                        %>                                   
                                    <a href="AppearJob"><img src="assets/img/Flancer.png" alt=""></a>
                                        <%
                                            }
                                        %>
                                </div>
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <div class="menu-wrapper">
                                    <!-- Main-menu -->
                                    <div class="main-menu">
                                        <nav class="d-none d-lg-block">
                                            <ul id="navigation">
                                                <%
                                                    if (loginUser == null) {
                                                %>
                                                <li><a href="HomeController">Trang ch???</a></li>
                                                    <%
                                                        }
                                                    %>

                                                <%
                                                    if (loginUser != null) {
                                                %>
                                                <li><a href="AppearJob">Trang ch???</a></li>
                                                    <%
                                                        }
                                                    %>
                                                <li><a href="#">C??ng vi???c</a>
                                                    <ul class="submenu">
                                                        <%
                                                            if (loginUser == null) {
                                                        %>
                                                        <li><a href="jobListHomePage.jsp">T??m C??ng Vi???c</a></li>
                                                            <%
                                                                }
                                                            %>
                                                            <%
                                                                if (loginUser != null) {
                                                            %>
                                                        <li><a href="jobList.jsp">T??m C??ng Vi???c</a></li>
                                                            <%
                                                                }
                                                            %>
                                                        <li><a href="addJob.jsp">????ng c??ng vi???c</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="aboutUs.jsp">Li??n h???</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- Header-btn -->
                                    <%
                                        if (loginUser == null) {
                                    %>
                                    <div class="header-btn d-none f-right d-lg-block">
                                        <a href="register.jsp" class="btn head-btn1">????ng k??</a>
                                        <a href="login.jsp" class="btn head-btn2">????ng nh???p</a>
                                    </div>
                                    <%
                                        }
                                    %>
                                    <%
                                        if (loginUser != null) {
                                    %>
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
                                    <%
                                        }
                                    %>
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
        <main>
            <div class="container">
                <div class="cms-section container cms-content">
                    <div>
                        <h1>Gi???i quy???t khi???u n???i</h1>
                        <div class="wrapper-content">
                            <div>
                                <p>Trong khi s??? d???ng trang k???t n???i FLance.vn, n???u b???n c???n khi???u n???i v??? d???ch v???, b???n c?? th??? th???c hi???n theo c??c b?????c sau:</p>
                                <p>B?????c 1: G???i khi???u n???i/y??u c???u xem x??t qua email h??? tr??? c???a FLance hotro@Flance.vn</p>
                                <p>B?????c 2: B??? ph???n ch??m s??c kh??ch h??ng c???a FLance.vn s??? ti???p nh???n khi???u n???i v?? ph???n h???i t???i b???n trong t???i ??a 72 gi??? sau khi g???i. T??y theo t??nh ch???t v?? m???c ????? khi???u n???i, sau t???i ??a 10 ng??y l??m vi???c, vLance.vn s??? li??n h??? trao ?????i v???i b???n ????? x??c nh???n v???n ????? v?? ph????ng ??n x??? l??. Th???i gian gi???i quy???t m???t khi???u n???i t???i ??a l?? 10 ng??y l??m vi???c</p>
                                <p>B?????c 3: Trong tr?????ng h???p n???m ngo??i kh??? n??ng v?? th???m quy???n c???a FLance.vn, FLance c?? quy???n t??? ch???i x??? l?? khi???u n???i.</p>
                                <p>FLance.vn t??n tr???ng v?? nghi??m t??c th???c hi???n c??c quy ?????nh c???a ph??p lu???t v??? b???o v??? quy???n l???i c???a th??nh vi??n. V?? v???y, ????? ngh??? c??c b??n g???m Kh??ch h??ng v?? Freelancer c???n cung c???p ?????y ?????, ch??nh x??c, trung th???c v?? chi ti???t c??c th??ng tin c?? li??n quan ?????n v???n ????? c???n khi???u n???i. M???i h??nh vi l???a ?????o, gian l???n ho???c ph?? ho???i, g??y r???i s??? ch???u ho??n to??n tr??ch nhi???m tr?????c ph??p lu???t.</p>
                                <p>Trong tr?????ng h???p Kh??ch h??ng v?? Freelancer x???y ra m??u thu???n. FLance.vn kh??ng c?? tr??ch nhi???m gi???i quy???t c??c m??u thu???n n??y.&nbsp;</p>
                                <p>?????a ch??? nh???n th?? khi???u n???i:&nbsp;<br>
                                    C??ng Ty C??? ph???n Magenweb Vi???t Nam<br>
                                    ?????a ch???: T??a nh?? Ladeco, t???ng 12A, s??? 266 ?????i C???n, ph?????ng Li???u Giai, qu???n Ba ????nh, th??nh ph??? H?? N???i<br>
                                    ??i???n tho???i: (+84) 024.6684.1818<br>
                                    Email: hotro@Flance.vn</p>
                                <p>&nbsp;</p>
                            </div> </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
