<%-- 
    Document   : admin
    Created on : May 21, 2022, 5:32:00 PM
    Author     : User
--%>

<%@page import="sample.jobs.JobDAO"%>
<%@page import="sample.jobs.JobDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="image/logo_free-file.png" type="image/x-icon">
        <title>Flance.vn</title>
        <link rel="icon" href="assets1/images/logo_free-file.png" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets1/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="assets1/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets1/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="assets1/icon/themify-icons/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="assets1/icon/font-awesome/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="assets1/css/jquery.mCustomScrollbar.css">
    <!-- am chart export.css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css"
        media="all" />
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="assets1/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRoleID().equals("AD")) {
                response.sendRedirect("login.jsp");
                return;
            }
            if (loginUser == null) {
                loginUser = new UserDTO();
            }


        %>
        <!-- Pre-loader end -->
        <div id="pcoded" class="pcoded">
            <div class="pcoded-overlay-box"></div>
            <div class="pcoded-container navbar-wrapper">
                <nav class="navbar header-navbar pcoded-header" style="padding-bottom: 10px;">
                    <div class="navbar-wrapper">
                        <div class="navbar-logo">
                            <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                                <i class="ti-menu"></i>
                            </a>
                            <div class="mobile-search waves-effect waves-light">
                                <div class="header-search">
                                    <div class="main-search morphsearch-search">
                                        <div class="input-group">
                                            <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                            <input type="text" class="form-control" placeholder="Enter Keyword">
                                            <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a href="ListJob">
                                <img class="img-fluid" src="assets1/images/Freelancer_free-file (1).png"
                                     style="width: 55%; padding-bottom: 3px; padding-right: 5px;" alt="Theme-Logo" />
                            </a>
                            <a class="mobile-options waves-effect waves-light">
                                <i class="ti-more"></i>
                            </a>
                        </div>

                        <div class="navbar-container container-fluid">

                            <ul class="nav-right">
                                <li class="user-profile ">
                                    <a href="#" class="waves-effect waves-light">
                                        <img src="avatarOfUser/<%= loginUser.getAvatar()%>" class="img-radius" alt="User-Profile-Image">
                                        <span><%= loginUser.getProfileName()%></span>  
                                    </a>
                                    
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="pcoded-main-container">
                    <div class="pcoded-wrapper">
                        <nav class="pcoded-navbar">
                            <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                            <div class="pcoded-inner-navbar main-menu">
                                <div class="">
                                    <div class="main-menu-header">
                                        <img class="img-80 img-radius" src="avatarOfUser/<%= loginUser.getAvatar()%>"
                                             style="padding-top: 10px;" alt="User-Profile-Image">
                                        <div class="user-details">
                                            <span id="more-details"><%= loginUser.getProfileName()%></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="pcoded-navigation-label" data-i18n="nav.category.navigation">Quản lí</div>
                                <ul class="pcoded-item pcoded-left-item">
                                    <li class="active">
                                        <a href="ListJob" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">Trang chủ</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>

                                </ul>
                                <div class="pcoded-navigation-label" data-i18n="nav.category.forms">Phản hồi &amp; Tin
                                    tức
                                </div>
                                <ul class="pcoded-item pcoded-left-item">
                                    <li>
                                        <a href="#" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.form-components.main">Phản
                                                hồi</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.form-components.main">Tin
                                                tức</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="MainController?action=Logout" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><b>FC</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.form-components.main">Đăng xuất</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                </ul>
                               
                            </div>
                        </nav>
                        <div class="pcoded-content">
                            <!-- Page-header start -->

                            <!-- Page-header end -->
                            <div class="pcoded-inner-content">
                                <!-- Main-body start -->
                                <div class="main-body">
                                    <div class="page-wrapper">
                                        <!-- Page body start -->

                                        <div class="page-body">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="student-tab" data-toggle="tab"
                                                       href="#student" role="tab" aria-controls="student"
                                                       aria-selected="true">
                                                        Danh sách người dùng</a>
                                                </li>

                                                <li class="nav-item">
                                                    <a class="nav-link" id="recuiter-tab" data-toggle="tab" href="#recuiter"
                                                       role="tab" aria-controls="recuiter" aria-selected="false">
                                                        Danh sách công việc</a>
                                                </li>
                                            </ul>

                                            <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="student" role="tabpanel"
                                                     aria-labelledby="student-tab">
                                                    <%
                                                        String search = request.getParameter("search");
                                                        if (search == null) {
                                                            search = "";
                                                        }
                                                    %>
                                                    <form action="MainController" method="POST">
                                                        <input type="text" value="<%= search%>" name="search" placeholder="Tìm kiếm...">                            
                                                        <button type="submit" name="action" value="SearchUser">Tìm kiếm</button>
                                                    </form>
                                                    <%
                                                        List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
                                                        if (listUser != null) {
                                                            if (listUser.size() > 0) {
                                                    %>
                                                    <table class="table table-stripe">
                                                        <tr>
                                                            <th>Tài khoản</th>
                                                            <th>Tên</th>
                                                            <th>Ngày sinh</th>
                                                            <th>Hình ảnh</th>
                                                            <th>SĐT</th>
                                                            <th>Địa chỉ</th>
                                                            <th>Email</th>
                                                            <th>Trạng thái</th>
                                                            <td>&nbsp;</td>
                                                        </tr>

                                                        <%
                                                            
                                                            for (UserDTO user : listUser) {
                                                                if (user.getRoleID().equalsIgnoreCase("US")) {
                                                        %>
                                                        <form action="MainController" method="POST">
                                                            <tr>
                                                                
                                                                <td>
                                                                    <%= user.getAccountID()%>
                                                                </td>
                                                                <td>
                                                                    <%= user.getProfileName()%>
                                                                </td>
                                                                <td>
                                                                    <%
                                                                        if (user.getBirthday() == null) {
                                                                            user.setBirthday("");
                                                                        }
                                                                    %>
                                                                    <%= user.getBirthday()%>
                                                                </td>
                                                                <td><img src="avatarOfUser/<%= user.getAvatar()%>" height="50px"
                                                                         width="60px"></td>
                                                                <td>
                                                                    <%
                                                                        if (user.getPhone() == null) {
                                                                            user.setPhone("");
                                                                        }
                                                                    %>
                                                                    <%= user.getPhone()%>
                                                                </td>
                                                                <td>
                                                                    <%
                                                                        if (user.getAddress() == null) {
                                                                            user.setAddress("");
                                                                        }
                                                                    %>
                                                                    <%= user.getAddress()%>
                                                                </td>
                                                                <td>
                                                                    <%= user.getEmail()%>
                                                                </td>
                                                                <td>
                                                                    <%= user.isStatus()%>
                                                                </td>
                                                            </tr>
                                                        </form>
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                    </table>
                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </div>
                                                <div class="tab-pane fade" id="recuiter" role="tabpanel"
                                                     aria-labelledby="recuiter-tab">
                                                    <%
                                                        List<JobDTO> listJob = (List<JobDTO>) session.getAttribute("LIST_JOB");
                                                        if (listJob != null) {
                                                            if (listJob.size() > 0) {
                                                    %>
                                                    <table class="table table-stripe">
                                                        <tr>
                                                            <th>STT</th>                                                           
                                                            <th>Tên dự án</th>
                                                            <th>Bắt đầu</th>
                                                            <th>Kết thúc</th>
                                                            <th>Mô tả</th>
                                                            <th>Giá</th>
                                                            <th>Chủ dự án</th>
                                                            <th>Trạng thái</th>
                                                            <td style="white-space: normal;">
                                                        </tr>
                                                        <%
                                                            int count = 1;
                                                            for (JobDTO job : listJob) {
                                                              if(job.getStatus() == 0 || job.getStatus() == -1 || job.getStatus() == 1)  {
                                                        %>
                                                        <form action="MainController" method="POST">
                                                            <tr>
                                                                <td><%= count++%></td>                                                           
                                                                <td>
                                                                    <%= job.getJobName()%>
                                                                </td>
                                                                <td>
                                                                    <%= job.getStartTime()%>
                                                                </td>
                                                                <td>
                                                                    <%= job.getEndTime()%>
                                                                </td>
                                                                <td style="white-space: normal;">
                                                                    <%= job.getDescription()%>
                                                                </td>
                                                                <td>
                                                                    <%= JobDAO.formatPrice(job.getPrice()) %> VNĐ
                                                                </td>
                                                                <td>
                                                                    <%= job.getProfileName()%>
                                                                </td>

                                                                <td>
                                                                    <%
                                                                        if (job.getStatus() == 1) {
                                                                    %>
                                                                    Approved
                                                                    <%
                                                                        }
                                                                    %>
                                                                    <%
                                                                        if (job.getStatus() == -1) {
                                                                    %>
                                                                    Rejected
                                                                    <%
                                                                        }
                                                                    %>
                                                                    <%
                                                                        if (job.getStatus() == 0) {
                                                                    %>
                                                                    <button onclick="changeStatus(this, <%= job.getJobID()%>, 1)">Approved</button>
                                                                    <button onclick="changeStatus(this,<%= job.getJobID()%>, -1)">Reject</button>
                                                                    <%
                                                                        }
                                                                    %>
                                                                </td>
                                                            </tr>
                                                        </form>
                                                        <%                                                            }
}
                                                        %>
                                                    </table
                                                    <%
                                                        
                                                            }
                                                        }
                                                    %>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="styleSelector">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="assets1/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="assets1/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="assets1/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="assets1/js/bootstrap/js/bootstrap.min.js "></script>
    <script type="text/javascript" src="assets1/pages/widget/excanvas.js "></script>
    <!-- waves js -->
    <script src="assets1/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="assets1/js/jquery-slimscroll/jquery.slimscroll.js "></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="assets1/js/modernizr/modernizr.js "></script>
    <!-- slimscroll js -->
    <script type="text/javascript" src="assets1/js/SmoothScroll.js"></script>
    <script src="assets1/js/jquery.mCustomScrollbar.concat.min.js "></script>
    <!-- Chart js -->
    <script type="text/javascript" src="assets1/js/chart.js/Chart.js"></script>
    <!-- amchart js -->
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="assets1/pages/widget/amchart/gauge.js"></script>
    <script src="assets1/pages/widget/amchart/serial.js"></script>
    <script src="assets1/pages/widget/amchart/light.js"></script>
    <script src="assets1/pages/widget/amchart/pie.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <!-- menu js -->
    <script src="assets1/js/pcoded.min.js"></script>
    <script src="assets1/js/vertical-layout.min.js "></script>
    <!-- custom js -->
    <script type="text/javascript" src="assets1/pages/dashboard/custom-dashboard.js"></script>
    <script type="text/javascript" src="assets1/js/script.js "></script>
        <script>
                                                                        $('#myTab a').on('click', function (e) {
                                                                            e.preventDefault()
                                                                            $(this).tab('show')
                                                                        })
        </script>

        <script>
            function changeStatus(btn, jobID, status) {
                var text = btn.textContent;
                btn.parentElement.innerHTML = text;
                $.ajax({
                    url: "/swp391-freelancerJob-main/ApproveController",
                    type: "get", //send it through get method
                    data: {
                        jobID: jobID,
                        status: status
                    },
                    success: function (response) {

                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
        </script>
    </body>
</html>
