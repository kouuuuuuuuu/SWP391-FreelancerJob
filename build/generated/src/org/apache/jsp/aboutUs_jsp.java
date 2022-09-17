package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import sample.user.UserDTO;

public final class aboutUs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Flance.vn</title>\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"manifest\" href=\"site.webmanifest\">\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/LOGO FPT.png\">\n");
      out.write("\n");
      out.write("        <!-- CSS here -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/flaticon.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/price_rangs.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/slicknav.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/animate.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/magnific-popup.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/fontawesome-all.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/themify-icons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/slick.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/nice-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        \n");
      out.write("        .avatar{\n");
      out.write("            width: 40px;\n");
      out.write("            height: 40px;\n");
      out.write("        }\n");
      out.write("        .dropdown:hover .dropdown-menu { \n");
      out.write("            display: block; \n");
      out.write("            margin-top: 0;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .logo {\n");
      out.write("            padding: 7px;\n");
      out.write("            width: 10rem;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("        .single-slider {\n");
      out.write("            height: 35rem;\n");
      out.write("            /* padding: 5rem; */\n");
      out.write("            color: #fff;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .border-btn2 {\n");
      out.write("            border: 0.3rem solid;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .online-cv {\n");
      out.write("            margin-top: 15rem;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .footer {\n");
      out.write("            background-color: #24262b;\n");
      out.write("            padding: 70px 0;\n");
      out.write("            margin-top: 15rem;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container-footer {\n");
      out.write("            max-width: 1170px;\n");
      out.write("            margin: auto;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .row {\n");
      out.write("            display: flex;\n");
      out.write("            flex-wrap: wrap;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        ");

            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
        
      out.write(" \n");
      out.write("        <!-- Preloader Start -->\n");
      out.write("        <div id=\"preloader-active\">\n");
      out.write("            <div class=\"preloader d-flex align-items-center justify-content-center\">\n");
      out.write("                <div class=\"preloader-inner position-relative\">\n");
      out.write("                    <div class=\"preloader-circle\"></div>\n");
      out.write("                    <div class=\"preloader-img pere-text\">\n");
      out.write("                        <img src=\"assets/img/Flancer.png\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Preloader Start -->\n");
      out.write("        <header>\n");
      out.write("            <!-- Header Start -->\n");
      out.write("            <div class=\"header-area header-transparrent\">\n");
      out.write("                <div class=\"headder-top header-sticky\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row align-items-center\">\n");
      out.write("                            <div class=\"col-lg-3 col-md-2\">\n");
      out.write("                                <!-- Logo -->\n");
      out.write("                                <div class=\"logo\">\n");
      out.write("                                    ");

                                        if (loginUser == null) {
                                    
      out.write("\n");
      out.write("                                    <a href=\"HomeController\"><img src=\"assets/img/Flancer.png\" alt=\"\"></a>\n");
      out.write("                                        ");

                                        } else {
                                        
      out.write("                                   \n");
      out.write("                                    <a href=\"AppearJob\"><img src=\"assets/img/Flancer.png\" alt=\"\"></a>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-lg-9 col-md-9\">\n");
      out.write("                                <div class=\"menu-wrapper\">\n");
      out.write("                                    <!-- Main-menu -->\n");
      out.write("                                    <div class=\"main-menu\">\n");
      out.write("                                        <nav class=\"d-none d-lg-block\">\n");
      out.write("                                            <ul id=\"navigation\">\n");
      out.write("                                                ");

                                                    if (loginUser == null) {
                                                
      out.write("\n");
      out.write("                                                <li><a href=\"HomeController\">Trang chủ</a></li>\n");
      out.write("                                                    ");

                                                        }
                                                    
      out.write("\n");
      out.write("\n");
      out.write("                                                ");

                                                    if (loginUser != null) {
                                                
      out.write("\n");
      out.write("                                                <li><a href=\"AppearJob\">Trang chủ</a></li>\n");
      out.write("                                                    ");

                                                        }
                                                    
      out.write("\n");
      out.write("                                                <li><a href=\"#\">Công việc</a>\n");
      out.write("                                                    <ul class=\"submenu\">\n");
      out.write("                                                        ");

                                                            if (loginUser == null) {
                                                        
      out.write("\n");
      out.write("                                                        <li><a href=\"jobListHomePage.jsp\">Tìm Công Việc</a></li>\n");
      out.write("                                                            ");

                                                                }
                                                            
      out.write("\n");
      out.write("                                                            ");

                                                                if (loginUser != null) {
                                                            
      out.write("\n");
      out.write("                                                        <li><a href=\"jobList.jsp\">Tìm Công Việc</a></li>\n");
      out.write("                                                            ");

                                                                }
                                                            
      out.write("\n");
      out.write("                                                        <li><a href=\"addJob.jsp\">Đăng công việc</a></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </li>\n");
      out.write("                                                <li><a href=\"aboutUs.jsp\">Liên hệ</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </nav>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Header-btn -->\n");
      out.write("                                    ");

                                        if (loginUser == null) {
                                    
      out.write("\n");
      out.write("                                    <div class=\"header-btn d-none f-right d-lg-block\">\n");
      out.write("                                    <a href=\"register.jsp\" class=\"btn head-btn1\">Đăng kí</a>\n");
      out.write("                                    <a href=\"login.jsp\" class=\"btn head-btn2\">Đăng nhập</a>\n");
      out.write("                                </div>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                    ");

                                        if (loginUser != null) {
                                    
      out.write("\n");
      out.write("                                    <div class=\"dropdown\">\n");
      out.write("                                        <div class=\"mb-3\">                                            \n");
      out.write("                                                <img class=\"rounded-circle avatar ml-2\" src=\"avatarOfUser/");
      out.print( loginUser.getAvatar());
      out.write("\" alt=\"avatar\" />\n");
      out.write("                                                ");
      out.print( loginUser.getProfileName());
      out.write("                                            \n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"dropdown-menu pt-2 pr-4\" aria-labelledby=\"dropdownMenuButton\">\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"profile.jsp\"><i class=\"fas fa-user pr-2\"></i>Trang cá nhân</a>\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"changePassword.jsp\"><i class=\"fas fa-key pr-2\"></i>Đổi mật khẩu</a>\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"historyJob.jsp\"><i class=\"fas fa-history pr-2\"></i>Lịch sử công việc</a>\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"MainController?action=Logout\"><i class=\"fas fa-sign-out-alt pr-2\"></i>Đăng xuất</a>\n");
      out.write("                                    </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Mobile Menu -->\n");
      out.write("                            <div class=\"col-12\">\n");
      out.write("                                <div class=\"mobile_menu d-block d-lg-none\"></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Header End -->\n");
      out.write("        </header>\n");
      out.write("        <main>\n");
      out.write("            <!-- Hero Area Start-->\n");
      out.write("            <div class=\"slider-area \">\n");
      out.write("                <div class=\"single-slider section-overly slider-height2 d-flex align-items-center\"\n");
      out.write("                     data-background=\"image/banner.png\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-xl-12\">\n");
      out.write("                                <div class=\"hero-cap text-center\">\n");
      out.write("                                    <h2 style=\"color: #fff;\n");
      out.write("                                        font-size: 5rem;\">About us</h2>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Hero Area End -->\n");
      out.write("            <!-- Support Company Start-->\n");
      out.write("            <div class=\"support-company-area fix section-padding2\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row align-items-center\">\n");
      out.write("                        <div class=\"col-xl-6 col-lg-6\">\n");
      out.write("                            <div class=\"right-caption\">\n");
      out.write("                                <!-- Section Tittle -->\n");
      out.write("                                <div class=\"section-tittle section-tittle2\">\n");
      out.write("                                    <span>What we are doing</span>\n");
      out.write("                                    <h2>A lot Talented people are getting Jobs</h2>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"support-caption\">\n");
      out.write("                                    <p class=\"pera-top\">Mollit anim laborum duis au dolor in voluptate velit ess cillum\n");
      out.write("                                        dolore eu lore dsu quality mollit anim laborumuis au dolor in voluptate velit\n");
      out.write("                                        cillum.</p>\n");
      out.write("                                    <p>Mollit anim laborum.Duis aute irufg dhjkolohr in re voluptate velit esscillumlore eu\n");
      out.write("                                        quife nrulla parihatur. Excghcepteur signjnt occa cupidatat non inulpadeserunt\n");
      out.write("                                        mollit aboru. temnthp incididbnt ut labore mollit anim laborum suis aute.</p>\n");
      out.write("                                    <a href=\"about.html\" class=\"btn post-btn\">Post a job</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xl-6 col-lg-6 dflex-d align-self-end\">\n");
      out.write("                            <div class=\"support-location-img\">\n");
      out.write("                                <img src=\"assets/img/about-instruduce.png\" alt=\"\">\n");
      out.write("                                <div class=\"support-img-cap text-center\">\n");
      out.write("                                    <p>Since</p>\n");
      out.write("                                    <span>2022</span>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Support Company End-->\n");
      out.write("            <!-- How  Apply Process Start-->\n");
      out.write("            <div class=\"apply-process-area apply-bg pt-150 pb-150\" data-background=\"assets/img/gallery/how-applybg.png\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <!-- Section Tittle -->\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-12\">\n");
      out.write("                            <div class=\"section-tittle white-text text-center\">\n");
      out.write("                                <span>Apply process</span>\n");
      out.write("                                <h2 style=\"color: #f27405;\"> How it works</h2>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Apply Process Caption -->\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-4 col-md-6\">\n");
      out.write("                            <div class=\"single-process text-center mb-30\">\n");
      out.write("                                <div class=\"process-ion\">\n");
      out.write("                                    <span class=\"flaticon-search\"></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"process-cap\">\n");
      out.write("                                    <h5 style=\"color: #f27405;\">1. Search a job</h5>\n");
      out.write("                                    <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut\n");
      out.write("                                        laborea.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-4 col-md-6\">\n");
      out.write("                            <div class=\"single-process text-center mb-30\">\n");
      out.write("                                <div class=\"process-ion\">\n");
      out.write("                                    <span class=\"flaticon-curriculum-vitae\"></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"process-cap\">\n");
      out.write("                                    <h5 style=\"color: #f27405;\">2. Apply for job</h5>\n");
      out.write("                                    <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut\n");
      out.write("                                        laborea.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-4 col-md-6\">\n");
      out.write("                            <div class=\"single-process text-center mb-30\">\n");
      out.write("                                <div class=\"process-ion\">\n");
      out.write("                                    <span class=\"flaticon-tour\"></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"process-cap\">\n");
      out.write("                                    <h5 style=\"color: #f27405;\">3. Get your job</h5>\n");
      out.write("                                    <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut\n");
      out.write("                                        laborea.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- How  Apply Process End-->\n");
      out.write("            <!-- Online CV Area Start -->\n");
      out.write("            <div class=\"online-cv cv-bg section-overly pt-90 pb-120\" data-background=\"image/2222.png\"\n");
      out.write("                 style=\"height: 35rem;\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row justify-content-center\">\n");
      out.write("                        <div class=\"col-xl-10\">\n");
      out.write("                            <div class=\"cv-caption text-center\">\n");
      out.write("                                <p class=\"pera1\">FEATURED TOURS Packages</p>\n");
      out.write("                                <p class=\"pera2\"> Make a Difference with Your Online Resume!</p>\n");
      out.write("                                <a href=\"#\" class=\"border-btn2 border-btn4\" style=\"color: #fff;\n");
      out.write("                                   margin-top: 5rem;\"> <strong> your cv</strong></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Online CV Area End-->\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        <!-- JS here -->\n");
      out.write("\n");
      out.write("        <!-- All JS Custom Plugins Link Here here -->\n");
      out.write("        <script src=\"./assets/js/vendor/modernizr-3.5.0.min.js\"></script>\n");
      out.write("        <!-- Jquery, Popper, Bootstrap -->\n");
      out.write("        <script src=\"./assets/js/vendor/jquery-1.12.4.min.js\"></script>\n");
      out.write("        <script src=\"./assets/js/popper.min.js\"></script>\n");
      out.write("        <script src=\"./assets/js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- Jquery Mobile Menu -->\n");
      out.write("        <script src=\"./assets/js/jquery.slicknav.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Jquery Slick , Owl-Carousel Plugins -->\n");
      out.write("        <script src=\"./assets/js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"./assets/js/slick.min.js\"></script>\n");
      out.write("        <script src=\"./assets/js/price_rangs.js\"></script>\n");
      out.write("        <!-- One Page, Animated-HeadLin -->\n");
      out.write("        <script src=\"./assets/js/wow.min.js\"></script>\n");
      out.write("        <script src=\"./assets/js/animated.headline.js\"></script>\n");
      out.write("        <script src=\"./assets/js/jquery.magnific-popup.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Scrollup, nice-select, sticky -->\n");
      out.write("        <script src=\"./assets/js/jquery.scrollUp.min.js\"></script>\n");
      out.write("        <script src=\"./assets/js/jquery.nice-select.min.js\"></script>\n");
      out.write("        <script src=\"./assets/js/jquery.sticky.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- contact js -->\n");
      out.write("        <script src=\"./assets/js/contact.js\"></script>\n");
      out.write("        <script src=\"./assets/js/jquery.form.js\"></script>\n");
      out.write("        <script src=\"./assets/js/jquery.validate.min.js\"></script>\n");
      out.write("        <script src=\"./assets/js/mail-script.js\"></script>\n");
      out.write("        <script src=\"./assets/js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Jquery Plugins, main Jquery -->\n");
      out.write("        <script src=\"./assets/js/plugins.js\"></script>\n");
      out.write("        <script src=\"./assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
