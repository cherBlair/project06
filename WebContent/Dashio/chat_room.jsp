<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="${path}/Dashio/img/favicon.png" rel="icon">
  <link href="${path}/Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="${path}/Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="${path}/Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
	<jsp:include page="top.jsp"/>
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper site-min-height">
        <!-- page start-->
        <div class="chat-room mt">
          <aside class="mid-side">
            <div class="chat-room-head">
              <h3>Chat Room: Support</h3>
              <form action="#" class="pull-right position">
                <input type="text" placeholder="Search" class="form-control search-btn ">
              </form>
            </div>
            <div class="group-rom">
              <div class="first-part odd">Sam Soffes</div>
              <div class="second-part">Hi Mark, have a minute?</div>
              <div class="third-part">12:30</div>
            </div>
            <div class="group-rom">
              <div class="first-part">Mark Simmons</div>
              <div class="second-part">Of course Sam, what you need?</div>
              <div class="third-part">12:31</div>
            </div>
            <div class="group-rom">
              <div class="first-part odd">Sam Soffes</div>
              <div class="second-part">I want you examine the new product</div>
              <div class="third-part">12:32</div>
            </div>
            <div class="group-rom">
              <div class="first-part">Mark Simmons</div>
              <div class="second-part">Ok, send me the pic</div>
              <div class="third-part">12:32</div>
            </div>
            <div class="group-rom">
              <div class="first-part odd">Sam Soffes</div>
              <div class="second-part">
                <a href="${path}/Dashio/#">product.jpg</a> <span class="text-muted">35.4KB</span>
                <p><img class="img-responsive" src="${path}/Dashio/img/product.jpg" alt=""></p>
              </div>
              <div class="third-part">12:32</div>
            </div>
            <div class="group-rom">
              <div class="first-part">Mark Simmons</div>
              <div class="second-part">Fantastic job, love it :)</div>
              <div class="third-part">12:32</div>
            </div>
            <div class="group-rom last-group">
              <div class="first-part odd">Sam Soffes</div>
              <div class="second-part">Thanks!!</div>
              <div class="third-part">12:33</div>
            </div>
            <footer>
              <div class="chat-txt">
                <input type="text" class="form-control">
              </div>
              <div class="btn-group hidden-sm hidden-xs">
                <button type="button" class="btn btn-white"><i class="fa fa-meh-o"></i></button>
                <button type="button" class="btn btn-white"><i class=" fa fa-paperclip"></i></button>
              </div>
              <button class="btn btn-theme">Send</button>
            </footer>
          </aside>
          <aside class="right-side">
            <div class="user-head">
              <a href="${path}/Dashio/#" class="chat-tools btn-theme"><i class="fa fa-cog"></i> </a>
              <a href="${path}/Dashio/#" class="chat-tools btn-theme03"><i class="fa fa-key"></i> </a>
            </div>
            <div class="invite-row">
              <h4 class="pull-left">Team Members</h4>
              <a href="${path}/Dashio/#" class="btn btn-theme04 pull-right">+ Invite</a>
            </div>
            <ul class="chat-available-user">
              <li>
                <a href="${path}/Dashio/chat_room.jsp">
                  <img class="img-circle" src="${path}/Dashio/img/friends/fr-02.jpg" width="32">
                  Paul Brown
                  <span class="text-muted">1h:02m</span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/chat_room.jsp">
                  <img class="img-circle" src="${path}/Dashio/img/friends/fr-05.jpg" width="32">
                  David Duncan
                  <span class="text-muted">1h:08m</span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/chat_room.jsp">
                  <img class="img-circle" src="${path}/Dashio/img/friends/fr-07.jpg" width="32">
                  Laura Smith
                  <span class="text-muted">1h:10m</span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/chat_room.jsp">
                  <img class="img-circle" src="${path}/Dashio/img/friends/fr-08.jpg" width="32">
                  Julia Schultz
                  <span class="text-muted">3h:00m</span>
                  </a>
              </li>
              <li>
                <a href="${path}/Dashio/chat_room.jsp">
                  <img class="img-circle" src="${path}/Dashio/img/friends/fr-01.jpg" width="32">
                  Frank Arias
                  <span class="text-muted">4h:22m</span>
                  </a>
              </li>
            </ul>
          </aside>
        </div>
        <!-- page end-->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="${path}/Dashio/https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="${path}/Dashio/chat_room.jsp#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
  <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->

</body>

</html>
