<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
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
  <link href="${path}/Dashio/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
  <link href="${path}/Dashio/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
  <link rel="stylesheet" href="${path}/Dashio/lib/advanced-datatable/css/DT_bootstrap.css" />
  
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="${path}/Dashio/lib/bootstrap-timepicker/compiled/timepicker.css" />
  <!-- Custom styles for this template -->
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  <style>
  	.control-label{font-size:1.3em;}
  </style>
  
  <script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>


<script type="text/javascript">
	var mdiv = "${infor_M.mdiv}"
	var currentDate = new Date();
	var day = 1000 * 60 * 60 * 24;
	currentDate.setUTCHours(0);
	currentDate.setUTCMinutes(0);
	currentDate.setUTCSeconds(0);
	currentDate.setUTCMilliseconds(0);
	currentDate = currentDate.getTime();
	
	$(document).ready(function(){
		$("#regBtn").click(function(){
			Swal.fire({
				  title: '프로젝트 추가',// 큰 문자열
				  text: "기입하신 정보대로 등록하시겠습니까?",//작은 문자열
				  icon: 'info',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: 'Yes!'
				}).then((result) => {
				  if (result.value) {
					var sdatestr = $("[name=pro_sdate]").val();
					var deadlinestr = $("[name=pro_dline]").val();
					if(sdatestr != ''){
					var sdate = new Date(sdatestr);
					sdate = sdate.getTime();
					
					}
					if(deadlinestr != ''){
					var deadline = new Date(deadlinestr);
					deadline = deadline.getTime();
					}
				
					if($("[name=pro_pname]").val()=='' || 
							$("[name=pro_pname]").val()==null){
						Swal.fire(
					      '입력 데이터 문제',
					      '프로젝트 명을 입력해주세요.',
					      'error'
					    )
					}else if($("[name=pro_sdate]").val()=='' || $("[name=pro_sdate]").val()==null){
						Swal.fire(
					      '입력 데이터 문제',
					      '시작일을 입력해주세요.',
					      'error'
					    )
					}else if($("[name=pro_dline]").val()=='' || $("[name=pro_dline]").val()==null){
						Swal.fire(
					      '입력 데이터 문제',
					      '종료일을 입력해주세요.',
					      'error'
					    )
					}else if(currentDate>sdate){ 1590 > 1546
						Swal.fire(
					      '입력 데이터 문제',
					      '시작일은 오늘날짜보다 이후여야 합니다.',
					      'error'
					    )
					}else if(currentDate>deadline){
						Swal.fire(
					      '입력 데이터 문제',
					      '종료일은 오늘날짜보다 이후여야 합니다.',
					      'error'
					    )
					}else if(deadline<sdate){
						Swal.fire(
					      '입력 데이터 문제',
					      '종료일은 시작일보다 이후여야 합니다.',
					      'error'
					    )
					}else if($("[name=pro_mname]").val()=='' || $("[name=pro_mname]").val()==null){
						Swal.fire(
					      '입력 데이터 문제',
					      'PM을 선택해주세요.',
					      'error'
					    )
					}else if($("[name=pro_detail]").val()=='' || $("[name=pro_detail]").val()==null){
						Swal.fire(
					      '입력 데이터 문제',
					      '상세내용을 입력해주세요.',
					      'error'
					    )
					}else{
					// Yes 버튼 클릭시 수행 코드
			    	$("#commentForm").attr("action","${path}/project.do?method=proins");
					$("#commentForm").submit();	
					}
				  }
				})
		});	
		$("#goMain").click(function(){
			if(confirm("조회 화면 이동 합니다.")){
				$(location).attr("href","${path}/DashTeam.do?method=list");			
			}
		});
		
		$("#selPm").click(function(){
			selectpm();
		});
	});
	
	function selectpm() {
		window.open("${path}/project.do?method=selectpm&mdiv="+mdiv, 
				"SelectPM", "width=780, height=520, left=300, top=100");
	}
</script>
  
</head>

<body>
  <section id="container">
	<jsp:include page="top.jsp"/>
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper" style="height:300px; margin-top:0;">
         <!-- FORM VALIDATION -->
     <form class="cmxform form-horizontal style-form" id="commentForm" method="post">
        <div class="row mt">
          <div class="col-lg-12">
	        <h4><i class="fa fa-angle-right" style="padding-left:15px; font-size:1.5em;"> 프로젝트 추가</i></h4>
            <div class="form-panel">
              <div class=" form">
                  <div class="form-group ">
                    <label for="pname" class="control-label col-lg-2">프로젝트명</label>
                    <div class="col-lg-10">
                    
                      <input class=" form-control" id="pname" name="pro_pname" minlength="2" type="text" required />
                      
                    </div>
                  </div>
					<div class="form-group">
					  <label class="control-label col-lg-2">시작일</label>
					  <div class="col-md-2 col-xs-11">
					    <div data-date-viewmode="years" data-date-format="yyyy/mm/dd" data-date="${sysDate}" class="input-append date dpYears">
					    
					      <input type="text" name="pro_sdate" readonly size="16" class="form-control">
					      
					      <span class="input-group-btn add-on">
					        <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
					        </span>
					    </div>
					    <span class="help-block">Select date</span>
					  </div>
					</div>
   					<div class="form-group">
					  <label class="control-label col-lg-2">종료일</label>
					  <div class="col-md-2 col-xs-11">
					    <div data-date-viewmode="years" data-date-format="yyyy/mm/dd" data-date="${sysDate}" class="input-append date dpYears">
					    
					      <input type="text" name="pro_dline" readonly size="16" class="form-control">
					      
					      <span class="input-group-btn add-on">
					        <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
					        </span>
					    </div>
					    <span class="help-block">Select date</span>
					  </div>
					</div>
                  <div class="form-group ">
                    <label for="curl" class="control-label col-lg-2">PM</label>
                    <div class="col-md-2 col-xs-5">
                      <input type="hidden" name="pro_mno"/>
                      <input class=" form-control" id="pname" name="pro_mname" minlength="2" type="text" required readonly/>
                      <span class="input-group-btn add-on">
	                      <input type="button" class="btn btn-info" value="선택" id="selPm"/>
			        </span>
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="ccomment" class="control-label col-lg-2">프로젝트 개요</label>
                    <div class="col-lg-10">
                      <textarea class="form-control " id="ccomment" name="pro_detail" required></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10" style="text-align:right;">
                    <input type="button" class="btn btn-info"
						value="등록" id="regBtn"/>
                      <input type="button" class="btn btn-success"
						value="뒤로가기" id="goMain"/>
                    </div>
                  </div>
                
              </div>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        </form>
        <!-- /row -->
        
        
        
        
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
        <a href="${path}/Dashio/advanced_form_components.jsp#" class="go-top">
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
  <!--script for this page-->
  <script src="${path}/Dashio/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="${path}/Dashio/lib/advanced-form-components.js"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
</body>

</html>