<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
  <title>사원 리스트 : 프로젝트 팀원 추가</title>
	<style type="text/css">
		.sch-bar{width:450px; height:40px;border-radius:10px; outline:none; border-color:black;
					padding-left:10px;}
		.sch-btn{width: 100px; height: 40px; border-radius: 10px; outline: none;
    				border-color: black; background-color: black; color: white;}
    	.schdiv{width:80px; height:38px; border-radius:10px; outline:none;}
	</style>
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
  <script src="${path}/a00_com/jquery.min.js"></script>
  <script src="${path}/a00_com/popper.min.js"></script>
  <script src="${path}/a00_com/bootstrap.min.js"></script>
  <script src="${path}/a00_com/jquery-ui.js"></script>
  <script type="text/javascript">
	  $(document).ready(function(){
		  	var chkinsmem = "${chkinsmem}";

		  	if(chkinsmem==1){
		  		$(location).attr("href","${path}/PMSemp.do?method=empList")
		  	}
			 /* $("#insBtn").click(function(){
				 $("form").attr("action","${path}/PMSemp.do?method=insemp");
				 $("form").submit(); 
			 }); */
			 $("#insBtn").click(function(){			 
				 Swal.fire({
					  title:'팀원추가 ',
					  text:"해당 직원을 팀원으로 추가하시겠습니까?",
					  icon: 'info',
					  showCancelButton: true
				}).then((result) => {
					if (result.value) {
						$("#setForm").attr("action","${path}/PMSemp.do?method=insemp");
						 $("#setForm").submit(); 
					}
				});
			 });
			 $("#goDelBtn").click(function(){
				  $(location).attr("href","${path}/PMSemp.do?method=delForm") 
			  });
			 $("#selsch").change(function(){
				  $(".search").attr({"id":this.value,"name":this.value});
			  });
		  });
	  	 
		 function goPage(no){
			$("[name=curPage]").val(no);
			$("#setForm").submit();
		 }
	 	
		 function enoclick(no){
			 if($("input:radio[id=eno"+no+"]").is(":checked")){
				 $("input:radio[id=phone"+no+"]").attr("checked",true);
			 }
		 }


  </script> 
</head>

<body>
	<jsp:include page="../main/top.jsp"/>

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">

          <!-- /col-md-12 -->
          <div class="col-md-12 mt">     
            <div class="content-panel">
              <table class="table table-hover">
              	<form:form class="form" commandName="pmsempsch" method="post" id="setForm">
           	    <form:hidden path="curPage"/>  
                <div>
                	<span style="font-size:25px; margin-left:10px;">
                		<i class="fa fa-angle-right"></i>
                					팀원 추가</span>
                	<span style="float:right; margin-right:10px;">
                	<select class="schdiv" id="selsch">
                		<option value="name">이름</option >
						<option value="grade">직급</option >
						<option value="dept">부서</option >
                	</select>
                		<!-- 검색창 -->
                		<form:input class="sch-bar search" path="name" placeholder="검색"/>
	                	<!-- 검색버튼 -->
	                	<input type="submit" class="sch-btn" value="Search" />
                	</span>
                </div>
                <thead>
                <!-- hidden속성으로 PM과 동일한 프로젝트 넘버가 등록된 사용자만 불러오기 -->
                  <tr>
                    <th>사원번호</th>
                    <th style="width:150px;">이름</th>
                    <th style="width:150px;">직책</th>
                    <th>부서명</th>
                    <th>이메일</th>
                    <th>핸드폰</th>
                    <th>권한</th>
                    <th>선택</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="empl" items="${elist}" varStatus="sts">
                  <tr>
                    <th>${empl.eno}</th>
                    <td>${empl.name}</td>
                    <td>${empl.grade}</td>
                    <th>${empl.dept}</th>
                    <td style="width:200px;">${empl.email}</td>
                    <th>${empl.phone}</th>
                    <th style="width:150px;">${empl.cname}</th>
                    <th><input type="radio" name="eno" id="eno${sts.index}" onclick="javascript:enoclick(${sts.index})" value="${empl.eno}" />
                    <input type="radio" name="phone" id="phone${sts.index}" value="${empl.phone}" style="visibility: hidden;" /></th>
                  </tr>
                  </c:forEach> 
                </tbody>
              </form:form>  
              </table>
              <!-- pagination -->
	          <div align="center">
			    <ul class="pagination pagination-sm">
			      <li class="page-item disabled">
			        <a class="page-link" href="javascript:goPage(${pmsempsch.startBlock-1});">&laquo;</a>
			      </li>
				  <c:forEach var="cnt" begin="${pmsempsch.startBlock}" end="${pmsempsch.endBlock}">
					  <li class="page-item ${pmsempsch.curPage==cnt?'active':''}">
					  
					  	<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
					</c:forEach>    
			      <li class="page-item">
			        <a class="page-link" href="javascript:goPage(${(pmsempsch.endBlock==pmsempsch.pageCount)?
									pmsempsch.endBlock:pmsempsch.endBlock+1});">&raquo;</a>
			      </li>
			    </ul>
			  </div>      
              <!-- end -->
            </div>
          <!-- change button -->
            <div class="showback" style="text-align:right;">
               <div style="display:inline-block; ">
             	  <button type="button" class="btn btn-danger" 
		           			id="goDelBtn" style="margin-right:20px;">팀원삭제이동</button>
		           <button type="button" class="btn btn-success" 
		           			id="insBtn" style="margin-right:20px;">추가</button>
		      
	           </div>
	        </div>
	      <!-- end -->	      
          </div>
          <!-- /col-md-12 -->    
      </section>
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
        <a href="${path}/Dashio/index.jsp#" class="go-top">
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
