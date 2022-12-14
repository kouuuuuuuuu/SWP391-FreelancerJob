<%-- 
    Document   : dieukhoankhachhang
    Created on : Jul 19, 2022, 11:01:39 AM
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
            <div>
                <h1>??i???u kho???n s??? d???ng d??nh cho Kh??ch h??ng</h1>
                <div class="wrapper-content">
                    <h2>&nbsp;</h2>
                <h2>1. T??i kho???n kh??ch h??ng</h2>
                <p>Website FLance.vn (???FLance???, ???Ch??ng t??i???) l?? n???n t???ng k???t n???i Kh??ch h??ng v?? Freelancer t???i Vi???t Nam. FLance.vn c?? xu???t th??n t??? c???ng ?????ng Freelancer Vi???t Nam h??n 500.000 th??nh vi??n l??m vi???c ??a l??nh v???c.</p>
                <p>????? duy tr?? m??i tr?????ng l??m vi???c ch???t l?????ng cao cho Kh??ch h??ng, m???i th??ng tin ???????c cung c???p trong t??i kho???n ng?????i d??ng FLance ph???i ?????m b???o t??nh trung th???c v?? c?? ngu???n ki???m ch???ng:</p>
                <ul>
                <li>M???i ng?????i ch??? ???????c s??? d???ng m???t t??i kho???n, v?? m???i t??i kho???n ch??? thu???c v??? m???t ng?????i. T??i kho???n kh??ng ???????c chia s??? v???i b???t k??? ai ho???c sao ch??p d?????i m???i h??nh th???c.</li>
                <li>H??? s?? ph???i c?? ???nh ?????i di???n v?? kh??ng ???????c c?? li??n h??? ho???c thu???c quy???n s??? h???u c???a b???t c??? m???t c??ng ty n??o.</li>
                </ul>
                <p>Ngo??i ra, khi ????ng vi???c, t??i kho???n Kh??ch h??ng (b???n) c???n ?????m b???o c??c y??u c???u sau:&nbsp;</p>
                <ul>
                <li>Kh??ng ghi s??? ??i???n tho???i, email, t??i kho???n m???ng x?? h???i ho???c b???t k??? th??ng tin li??n l???c n??o trong ph???n th??ng tin d??? ??n/vi???c l??m.</li>
                <li>Ghi r?? ti??u ?????, l??nh v???c chuy??n m??n (v?? d???: L???p tr??nh vi??n PHP/Wordpress)</li>
                <li>C?? t??n ?????y ?????, n???u s??? d???ng nickname ph???i&nbsp;????? trong d???u () b??n c???nh t??n th???t.</li>
                <li>Gi???i thi???u t??m t???t v??? b???n th??n.</li>
                <li>Th??nh ph??? c?? tr??.</li>
                <li>S??? ??i???n tho???i h???p l???.</li>
                </ul>
                <h2>&nbsp;</h2>
                <h2>2. Vi???c theo d??? ??n</h2>
                <p><strong>2.1. ????ng vi???c d??? ??n</strong><br>
                M???t d??? ??n ???????c b???t ?????u b???ng vi???c ????ng l??n website. D??? ??n c???a b???n s??? ???????c ch?? ?? n???u n?? ???????c vi???t m???t c??ch chuy??n nghi???p, m?? t??? ch??nh x??c c??c y??u c???u c??ng vi???c.</p>
                <p>T???t c??? c??c d??? ??n ???????c ????ng l??n ph???i ph???i tu??n th??? c??c ch??nh s??ch sau:</p>
                <ul>
                <li>Kh??ng chia s??? ho???c thu th???p th??ng tin li??n l???c c???a Freelancer tr?????c khi g???i tin nh???n ri??ng cho Freelancer.</li>
                <li>Ng??n ng??? l???ch s??? v?? kh??ng bao h??m n???i dung qu???ng c??o.</li>
                <li>Kh??ng ????ng c??ng m???t n???i dung nhi???u l???n.</li>
                <li>Kh??ng y??u c???u d???ch v??? b???t h???p ph??p, vi ph???m quy???n s??? h???u tr?? tu???, quy???n t??c gi??? ho???c c??c ??i???u kho???n d???ch v??? c???a m???t d???ch v???, s???n ph???m ho???c trang web kh??c.</li>
                <li>Kh??ng ???????c y??u c???u Freelancer l??m mi???n ph?? trong b???t k??? h??nh th???c n??o, bao g???m c??? c??c cu???c thi trong ???? Freelancers ?????ng ?? tham gia mi???n ph?? ho???c ???????c tr??? ph?? r???t ??t, ch??? ng?????i th???ng cu???c m???i ???????c thanh to??n to??n b??? s??? ti???n.</li>
                <li>Kh??ng ???????c y??u c???u Freelancer tr??? ph?? ????? ???????c tham gia ch??o gi??.</li>
                <li>Th??ng tin m?? t??? c???a d??? ??n kh??ng ???????c ch???a b???t k??? n???i dung ng?????i l???n, t??i li???u khi??u d??m ho???c g??y ph???n c???m.</li>
                <li>Kh??ng ???????c y??u c???u cung c???p c??c n???i dung vi ph???m t??nh h???c thu???t.</li>
                <li>Th??ng tin m?? t??? kh??ng ch???a n???i dung spam ho???c qu???ng b?? tr???c ti???p hay gi??n ti???p cho m???t website, c??ng ty, nh??n hi???u c???a b??n th??? ba.</li>
                </ul>
                <p><br>
                <strong>2.2. L??m vi???c</strong></p>
                <p>Trong v??ng 48 gi??? sau khi ch???n ???????c Freelancer, Kh??ch h??ng c?? quy???n "H???y giao vi???c" v?? Freelancer c?? quy???n "T??? ch???i nh???n vi???c". Sau khi ???H???y giao vi???c???, Kh??ch h??ng kh??ng th??? giao l???i vi???c ???? h???y cho Freelancer. Ng?????c l???i, Freelancer sau khi ???T??? ch???i nh???n vi???c??? s??? kh??ng th??? nh???n l???i c??ng vi???c ???? t??? ch???i. Sau khi Kh??ch h??ng ???H???y giao vi???c??? ho???c Freelancer ???T??? ch???i nh???n vi???c???, vi???c s??? t??? ?????ng chuy???n v??? tr???ng th??i ?????ang nh???n h??? s?????. Kh??ch h??ng c?? th??? giao vi???c l???i cho Freelancer kh??c. Sau 48h, Kh??ch h??ng v?? Freelancer c?? th??? ????? l???i ????nh gi?? cho nhau.</p>
                <p><br>
                <strong>2.3. ?????y top d??? ??n&nbsp;</strong></p>
                <p>T??nh n??ng ?????y top d??? ??n cho ph??p Kh??ch h??ng ????a d??? ??n l??n v??? tr?? ?????u ti??n trong danh s??ch vi???c. T??nh n??ng ?????y top d??? ??n ??p d???ng cho Vi???c d??? ??n, Vi???c b??n th???i gian v?? Cu???c thi thi???t k???. D??? ??n ???????c ?????y top s??? ???????c hi???n th??? ph??a b??n d?????i D??? ??n n???i b???t tr??n trang d??? ??n c??ng vi???c m???i.</p>
                <p>Kh??ch h??ng c?? th??? ch???n m???t trong c??c h??nh th???c ?????y top, ????????y top t???c th????? ho???c ????????y top t??? ?????ng???. V???i c??c&nbsp; t??nh n??ng ????????y top t???c th????? v?? ????????y top t??? ?????ng???, Kh??ch h??ng c???n thanh to??n b???ng credit ho???c n??ng c???p t??i kho???n KHPLUS / KHPRO. V??? tr?? ?????u ti??n trong danh s??ch vi???c s??? thay ?????i d???a tr??n th???i gian c???a d??? ??n ???????c ?????y. D??? ??n ???????c ?????y s??? c?? v??? tr?? cao h??n v??? tr?? c???a d??? ??n ???? ???????c ?????y tr?????c ????. Kh??ch h??ng c?? th??? xem ???????c th???i ??i???m v?? lo???i ?????y top ngay trong trang ???Xem c??ng vi???c???.</p>
                <p>2.3.1. C??c h??nh th???c ?????y top d??? ??n<br>
                V???i t??nh n??ng ?????y top t???c th??: Kh??ch h??ng ???????c ?????y top cho d??? ??n ngay l???p t???c, kh??ng c???n th???i gian ch???.&nbsp;</p>
                <p>V???i t??nh n??ng ?????y top t??? ?????ng: Khi Kh??ch h??ng s??? d???ng t??nh n??ng ????????y top t??? ?????ng???, h??? th???ng tr??n FLance.vn s??? t??? ?????ng ?????y top d??? ??n t???i ??a 01 l???n/gi??? li??n t???c trong kho???ng th???i gian do Kh??ch h??ng l???a ch???n. Kh??ch h??ng c?? th??? l???a ch???n s??? d???ng t??nh n??ng ????????y top t??? ?????ng??? trong 24h (1 ng??y), 72h (3 ng??y) ho???c 168h (7 ng??y).&nbsp;</p>
                <p>2.3.2. Th???i gian ?????y top d??? ??n<br>
                V???i ?????y top t???c th??: D??? ??n s??? ???????c ?????y l??n top ngay l???p t???c m?? kh??ng c???n ch??? 6 ti???ng.&nbsp;</p>
                <p>Th???i gian ch??? s??? t??? ?????ng ???????c c??i ?????t l???i t??nh t??? l??c ?????y top cu???i c??ng. V???i ?????y top t??? ?????ng: (a) Khi s??? d???ng ?????y top t??? ?????ng, th???i gian ?????y top s??? t??? ?????ng ???????c c??i ?????t l???i theo ch??? ????? b???n ???? ch???n. (b) Th???i gian ?????y top t??? ?????ng s??? ???????c c???ng d???n. Th???i gian c???a g??i ?????y top t??? ?????ng s??? ???????c t??nh nh?? sau: ???th???i gian hi???n t???i b???ng th???i gian g??i m???i nh???t c???ng th???i gian g??i c?? c??n l???i???.</p>
                <p>Kh??ch h??ng kh??ng th??? d???ng ho???c h???y ?????y top d??? ??n khi ???? b???t ?????u s??? d???ng t??nh n??ng ?????y top d??? ??n. Credit s??? kh??ng ???????c ho??n l???i khi Kh??ch h??ng ???? ch???n ?????y top t???c th?? ho???c ?????y top t??? ?????ng. Trong m???i tr?????ng h???p, quy???t ?????nh c???a FLance.vn l?? quy???t ?????nh cu???i c??ng.</p>
                <p>D??? ??n ???? h???t h???n n???u ???????c ?????y top s??? ???????c t??? ?????ng gia h???n th???i gian nh???n ch??o gi??. Th???i gian ???????c gia h???n ch??o gi?? ?????i v???i ?????y top t???c th?? l?? 24h, ?????i v???i ?????y top t??? ?????ng l?? th???i gian ?????y top t??? ?????ng c?? hi???u l???c t????ng ???ng l?? 24h, 72h, ho???c 168h. Kh??ch h??ng c?? th??? xem l???ch s??? to??n b??? c??c l???n ?????y top t???i khung hi???n th??? d??? ??n c??ng vi???c.&nbsp;<br>
                &nbsp;</p>
                <p><strong>2.4. L??m m???i d??? ??n</strong></p>
                <p>T??nh n??ng l??m m???i d??? ??n l?? t??nh n??ng ph???c h???i v?? l??m m???i l???i d??? ??n ???? h???t h???n. Kh??ch h??ng ch??? c?? th??? s??? d???ng t??nh n??ng n??y khi n??ng c???p t??i kho???n KHPRO. Sau khi n??ng c???p t??i kho???n KHPRO, kh??ch h??ng c?? 03 l???n l??m m???i d??? ??n mi???n ph?? m???i 30 ng??y (1 th??ng). S??? l???n mi???n ph?? l??m m???i d??? ??n ???????c c???ng d???n tr??n th???i gian c???a g??i d???ch v??? m?? kh??ch h??ng ???? mua.&nbsp;</p>
                <p>Sau khi s??? d???ng t??nh n??ng, d??? ??n c???a kh??ch h??ng s??? tr??? v??? tr???ng th??i ban ?????u sau khi ????ng: (1) D??? ??n sau khi l??m m???i ???????c g???n nh??n (???l??m m???i???) tr??n ti??u ????? d??? ??n. (2) D??? ??n sau khi l??m m???i s??? xu???t hi???n ph??a d?????i d??? ??n n???i b???t tr??n ?????u trang c??ng vi???c. (3) D??? ??n ???????c m??? l???i v?? Freelancer c?? th??? ch??o gi??. (4) D??? ??n sau khi l??m m???i v???n gi??? nguy??n th??ng tin n???i dung, ng??n s??ch d??? ??n. (5) To??n b??? ch??o gi?? ???? c?? trong d??? ??n ???????c gi??? nguy??n sau khi l??m m???i. (6) D??? ??n sau khi l??m m???i v???n xu???t hi???n trong th?? g???i ?? vi???c m???i h??ng ng??y ???????c g???i cho Freelancer. C??c ho???t ?????ng l??m m???i d??? ??n s??? ???????c l??u l???i trong trang l???ch s??? d??? ??n.&nbsp;</p>
                <p>T??nh n??ng l??m m???i d??? ??n s??? d???ng ???????c cho ba lo???i c??ng vi???c: (1) D??? ??n, (2) Vi???c b??n th???i gian, (3) Cu???c thi thi???t k???. Kh??ch h??ng ch??? s??? d???ng ???????c t??nh n??ng l??m m???i khi ch??o gi?? ???? h???t h???n, ho???c sau khi d??? ??n ???? ???????c ????ng 3 ng??y tr?????c ???? (72 gi???).&nbsp;</p>
                <p>&nbsp;</p>
                <p><strong>2.5. G??i d???ch v??? d??nh cho Kh??ch h??ng</strong></p>
                <p>2.5.1. G??i KHBASIC&nbsp;</p>
                <p>G??i KHBASIC l?? g??i d???ch v??? c?? b???n d??nh cho kh??ch h??ng. Khi s??? d???ng g??i&nbsp; KHBASIC, kh??ch h??ng ???????c ????ng d??? ??n kh??ng m???t ph?? v?? ???????c m???i t???i ??a 04 Freelancer v??o ch??o gi?? cho m???i d??? ??n ???? ????ng.&nbsp;</p>
                <p>2.5.2. G??i KHPLUS</p>
                <p>G??i KHPLUS l?? g??i d???ch v??? m??? r???ng d??nh cho kh??ch h??ng. Trong th???i gian s??? d???ng g??i KHPLUS, kh??ch h??ng ???????c ????ng d??? ??n kh??ng m???t ph?? v?? ???????c m???i t???i ??a 20 Freelancer v??o ch??o gi?? cho m???i d??? ??n ???? ????ng. Kh??ch h??ng ???????c mi???n ph?? ????ng d??? ??n b?? m???t, mi???n ph?? s??? d???ng t??nh n??ng ????ng n???i b???t d??? ??n, ?????y top t???c th?? cho d??? ??n.</p>
                <p>2.5.3. G??i KHPRO&nbsp;</p>
                <p>G??i KHPRO l?? g??i d???ch v??? to??n di???n d??nh cho kh??ch h??ng. Khi s??? d???ng g??i KHPRO, kh??ch h??ng ???????c ????ng d??? ??n kh??ng m???t ph?? v?? ???????c m???i t???i ??a 50 Freelancer v??o ch??o gi?? cho m???i d??? ??n ???? ????ng. Kh??ch h??ng ???????c mi???n ph?? ????ng d??? ??n b?? m???t v?? mi???n ph?? t??nh n??ng ?????y top t???c th?? trong th???i gian s??? d???ng g??i. Kh??ch h??ng ?????ng th???i s??? ???????c s??? d???ng c??c quy???n l???i sau: (1) C?? 03 l???n ????ng d??? ??n n???i b???t tr??n fanpage FLance.vn trong m???t th??ng; (2) C?? 03 l???n l??m m???i d??? ??n ???? ????ng trong m???t th??ng; (3) Mi???n ph?? s??? d???ng t??nh n??ng li??n h??? tr???c ti???p v???i Freelancer ???? x??c th???c th??ng tin li??n h??? tr??n FLance v?? c?? ch??o gi?? trong c??c d??? ??n c???a kh??ch h??ng.</p>
                <p>2.5.4. Quy ?????nh chung khi s??? d???ng g??i d???ch v??? kh??ch h??ng</p>
                <p>(1)To??n b??? c??c t??i kho???n ch??a n??ng c???p s??? ???????c m???c ?????nh l?? t??i kho???n KHBASIC.(2)&nbsp;T??i kho???n sau khi n??ng c???p s??? tr??? th??nh t??i kho???n KHPLUS ho???c KHPRO.(3)&nbsp;Sau khi h???t h???n c???a g??i t??i kho???n ???? n??ng c???p, t??i kho???n s??? t??? ?????ng tr??? v??? m???c KHBASIC. (4)&nbsp;M???i t??i kho???n ch??? c?? th??? n??ng c???p duy nh???t 01 g??i d???ch v??? KHPLUS ho???c KHPRO trong m???t th???i ??i???m.(5)&nbsp;Sau khi n??ng c???p t??i kho???n, kh??ch h??ng kh??ng th??? h???y g??i. Ph?? ???? ti??u d??ng ????? mua g??i d???ch v??? s??? kh??ng ???????c ho??n tr??? trong b???t k??? tr?????ng h???p n??o.</p>
                <p>&nbsp;</p>
                
                <h2>3. Cam k???t c???a FLance</h2>
                <p>FLance ?????m b???o quy???n l???i thanh to??n cho kh??ch h??ng v?? freelancer m???t c??ch c??ng b???ng, ngay c??? khi x???y ra tranh ch???p. ???? l?? c??ch ch??ng t??i th??? hi???n s??? t??n tr???ng ?????i v???i c??c d??? ??n ???????c th???c hi???n tr??n FLance.</p>
                <h2>&nbsp;</h2>
                <h2>4. Thanh to??n</h2>
                <p>Kh??ch h??ng ho???c Freelancer c?? th??? mua c??c g??i d???ch v??? li??n quan ????? s??? d???ng c??c t??nh n??ng k???t n???i l??m vi???c tr??n FLance.vn</p>
                <h2>&nbsp;</h2>
                <h2>5. Ph???n h???i v?? ????nh gi??</h2>
                <p>Nh???ng ????nh gi?? trung th???c v?? kh??ch quan g??p ph???n t???o n??n m???t m??i tr?????ng l??m vi???c s??i ?????ng v?? hi???u qu???. C??c ph???n h???i t???t nh???t l?? khi ch??ng cung c???p th??ng tin h???u ??ch cho c??? ng?????i nh???n v?? c???ng ?????ng n??i chung.</p>
                <p>Ch??ng t??i kh??ng gi??m s??t, ki???m duy???t, ho???c ??i???u tra th??ng tin ph???n h???i. Tuy nhi??n, trong m???t s??? tr?????ng h???p, ch??ng t??i c?? th??? x??a x???p h???ng v?? ph???n h???i n???u ph??t hi???n vi ph???m ??i???u kho???n s??? d???ng c???a FLance ho???c c??c h?????ng d???n chi ti???t d?????i ????y.</p>
                <p>Nghi??m c???m c??c h??nh vi nh???m l??m sai l???ch th??ng tin ph???n h???i, ??p bu???c ng?????i d??ng kh??c b???ng c??ch ??e d???a ph???n h???i ti??u c???c ho???c ????? ngh??? ????? b??n ho???c mua d???ch v??? ????? ?????i l???y th??ng tin ph???n h???i t??ch c???c.</p>
                <p>Th??ng tin ph???n h???i thu???c c??c n???i dung sau c?? th??? b??? ???n ho???c ch???nh s???a:</p>
                <ul>
                <li>Spam, qu???ng c??o ho???c n???i dung th????ng m???i kh??c.</li>
                <li>N???i dung ???ng h??? c??c ho???t ?????ng b???t h???p ph??p.</li>
                <li>N???i dung n??i v??? ng?????i kh??c.</li>
                <li>B??nh lu???n ch??nh tr???, t??n gi??o, ho???c v???n ????? x?? h???i kh??c ch??? kh??ng ph???i l?? m???t l???i nh???n x??t tr???c ti???p v??? kinh nghi???m l??m vi???c.</li>
                <li>X??c ph???m, t???c t??u, khi??u d??m, vu kh???ng, b??i nh???, ??e d???a, ph??n bi???t ?????i x???, ho???c t??i li???u khi??u d??m.</li>
                </ul>
                <p>&nbsp;</p>
                <h2><span style="font-size:20px">7.</span>&nbsp;L??u ?? d??nh cho Kh??ch h??ng</h2>
                <p>(1) Ch??ng t??i c?? quy???n kh??a t??i kho???n c???a b???n b???t c??? khi n??o ph??t hi???n vi ph???m m?? kh??ng c???n th??ng b??o tr?????c.</p>
                <p>(2) N???i dung c??c ??i???u kho???n s??? ???????c thay ?????i, b??? sung v?? c???p nh???t th?????ng xuy??n ????? ph?? h???p v???i y??u c???u th???c t???.</p> </div>
                </div>

        </div>
    </main>
    
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
