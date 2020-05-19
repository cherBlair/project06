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
  <title>PMS사용자 리스트 : 직급변경 </title>
  <style type="text/css">
  	  .sch-bar{width:450px; height:40px;border-radius:10px; outline:none; border-color:black;
				padding-left:10px;}
	  .sch-btn{width: 100px; height: 40px; border-radius: 10px; outline: none;
    			border-color: black; background-color: black; color: white;}
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
		  
			 $("#regBtn").click(function(){		 
				$(location).attr("href","${path}/PMSemp.do?method=insForm") 
			 }); 
			 $("#modBtn").click(function(){		 
				$(location).attr("href","${path}/PMSemp.do?method=modForm") 
			 }); 
	  });
	  function go(eno){
		  $(location).attr("href",
				  //eno다음에 = 추가됨
				  "${path}/PMSemp.do?method=modForm&peno="+eno);
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
              <form method="post">
              <table class="table table-hover">
                <div>
                	<span style="font-size:25px; margin-left:10px;"><i class="fa fa-angle-right"></i>
                					사원 목록</span>
                	<span style="float:right; margin-right:10px;">
	                	<input type="text" class="sch-bar" name="" id="" placeholder="Search"/>
	                	<input type="submit" class="sch-btn" value="Search" />
                	</span>
                </div>
              

                <thead>
                  <tr>
                    <th>사원번호</th>
                    <th>이름</th>
                    <th>직책</th>
                    <th>부서명</th>
                    <th>이메일</th>
                    <th>핸드폰</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="emp" items="${elist}">
                  <tr ondblclick="javascript:go(${emp.eno})">
                    <th>${emp.eno}</th>
                    <td style="width:200px;">${emp.name}</td>
                    <td style="width:200px;">${emp.grade}</td>
                    <th>${emp.dept}</th>
                    <td style="width:150px;">${emp.email}</td>
                    <th>${emp.phone}</th>
                  </tr>
                  </c:forEach> 
                </tbody>
              </table>
              </form>
              <!-- pagination -->
	          <div align="center">
			    <ul class="pagination pagination-sm">
			      <li class="page-item disabled">
			        <a class="page-link" href="javascript:goPage(${bsch.startBlock-1});">&laquo;</a>
			      </li>
				      <li class="page-item active ${bsch.curPage==cnt?'active':''}">
				        <a class="page-link" href="javascript:goPage(${cnt})">1</a>
				      </li>
			      <li class="page-item">
			        <a class="page-link" href="javascript:goPage(${(bsch.endBlock==bsch.pageCount)?
									bsch.endBlock:bsch.endBlock+1});">&raquo;</a>
			      </li>
			    </ul>
			  </div>   
              <!-- end -->
            </div>
          <!-- change button -->
            <div class="showback" style="text-align:right;">
               <div style="display:inline-block; ">
               <!-- 
               c:if로 CEO로그인일 때 모든 버튼이보이고 
			   CTO로그인일 때 CTO설정을 제외한 모든 버튼 보이도록 
                -->
		           <button type="button" class="btn btn-warning" id="regBtn" 
		           			style="margin-right:20px;">사원 등록</button>
		           <button type="button" class="btn btn-default">이전</button>
	           </div>
	        </div>
	      <!-- end -->	      
          </div>
          <!-- /col-md-12 -->    
      </section>
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->

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
