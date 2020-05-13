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
  <link href="${path}/Dashio/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
  <link href="${path}/Dashio/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
  <link rel="stylesheet" href="${path}/Dashio/lib/advanced-datatable/css/DT_bootstrap.css" />
  <!-- Custom styles for this template 
  <link href="${path}/Dashio/css/style.css" rel="stylesheet">-->
  <link href="${path}/Dashio/css/style-responsive.css" rel="stylesheet">
  
  <script src="https://cdn.ckeditor.com/ckeditor5/17.0.0/classic/ckeditor.js"></script> 
  <script src="https://code.jquery.com/jquery-1.11.3.js"></script> 


  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>
<style>

.test1{
	border-collapse:collapse;
	padding: 100px;
}

#sep{
	float:left;}
#sep1{
	float:right;}
</style>
<body>
  <section id="container">
	<jsp:include page="top.jsp"/>
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
      
      <br>
      <form id="" method="post" align="">

	<table class="test1">
		<tr>
			<th width="10%" style="text-align:center;">제목</th>
			<td id="id" colspan="4" style="text-align:left;">111</td>
		</tr>
		
		<tr>
			<th style="text-align:center;">작성일</th>
			<td id="id" style="text-align:left;">222</td>
			
			<th style="text-align:center;">조회수</th>
			<td id="id" style="text-align:left;">333</td>
		</tr>			
			
		<tr>
			<th style="text-align:center;">상세내용</th>
			<td id="id" colspan="4" style="text-align:left;">444</td>
		</tr>			
	</table>
	
<br>
	<input type="hidden" name="bproc"/>
	<input type="hidden" name="num"/>
	
</form>
      
      
      
      
      <div class="ha">
		<form method="post">
			<div>	
		      <div class="input-group-prepend ">
			   <span class="input-group-text ">글번호</span>
		      </div>
		         <input name="no" class="form-control" value=""/>	
		<div class="input-group-prepend">
			<span class="input-group-text">상위글번호</span>
		</div>
		<input name="refno" class="form-control" 
			 value="" />	
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend">
			<span class="input-group-text">작 성 자</span>
		</div>
		<input name="writer" class="form-control" 
			value="" 
			placeholder="작성자입력하세요" />	
		<div class="input-group-prepend">
			<span class="input-group-text">조회수</span>
		</div>
		<input  class="form-control" 
			 value="" />	
	</div>		
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">제 목</span>
		</div>
		<input name="title" class="form-control"
			value=""  
			placeholder="제목입력하세요" />	
		 
	</div>  	
	<div class="input-group mb-3">	
		<div class="input-group-prepend">
			<span class="input-group-text">등록일</span>
		</div>
		<input class="form-control" 
			value=""/>	
		<div class="input-group-prepend">
			<span class="input-group-text">수정일</span>
		</div>
		<input class="form-control" 
			value="" />	
	</div>			
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">내 용</span>
		</div>
		<textarea name="content" rows="10" 
			class="form-control" 
			placeholder="내용입력하세요" >${board.content}</textarea>		 
	</div> 

	<div style="text-align:right;">
		<input type="button" class="btn btn-info"
			value="수정" id="uptBtn"/>
		<input type="button" class="btn btn-danger"
			value="삭제" id="delBtn"/>		
		<input type="button" class="btn btn-warning"
			value="답글" id="reBtn"/>					
		<input type="button" class="btn btn-success"
			value="조회 화면으로" id="goMain"/>
	</div>
	</form>
</div>	
      
      
      
      <!-- FORM VALIDATION -->
        <div class="row mt">
          <div class="col-lg-12">
            <h4><i class="fa fa-angle-right"></i> 공지사항</h4>
            <div class="form-panel">
              <div class=" form">
                <form class="cmxform form-horizontal style-form" id="commentForm" method="get" action="">
                  
                  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-1">제목</label>
                    <div class="col-lg-7">
                      <input class=" form-control" id="cname" name="name" minlength="2" type="text" required />
                    </div>
                  </div>
                  
                    <div class="form-group ">
                    <label for="cname" class="control-label col-lg-1">작성일</label>
                    <div class="col-lg-7">
                      <input class=" form-control" id="cname" name="name" minlength="2" type="text" required />
                    </div>
                  </div>
                  
                    <div class="form-group ">
                    <label for="cname" class="control-label col-lg-1">내용</label>
                    <div class="col-lg-7">                                                                                                                                                                                                                                                                                                                                   
                      <input class=" form-control" id="cname" name="name" minlength="2" type="text" required />
                    </div>
                  </div>
                  
                 
                  
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme" type="submit">Save</button>
                      <button class="btn btn-theme04" type="button">Cancel</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
      
      
      
      
      
       <div class="row mt">
          <div class="col-lg-12">
            <h4><i class="fa fa-angle-right"></i> 공지사항</h4>
            <br>
            
            <tr>
            	<td><label class="control-label col-lg">제목1</label><input  class=" form-control1" id="cname" name="name" type="text" />11</td>
            	<td><input class=" form-control1" id="cname" name="name" minlength="2" type="text" required />22</td>
            </tr>
            	
            <tr>
            	<td></td>
            	<td></td>
            </tr>
            
            
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
      
      
      

 <div class="row mt">
          <div class="col-lg-12">
            <h4><i class="fa fa-angle-right"></i> 공지사항</h4>
            <div class="form-panel">
              <div class=" form">
                <form class="cmxform form-horizontal style-form" id="commentForm" method="get" action="">
                  
                 <div id="ha"> 
                  <div id="sep">
	                  <div class="form-group ">
	                    <label for="cname" class="control-label col-lg-2">제목1</label>
	                    <div class="col-lg-10">
	                      <input class=" form-control" id="cname" name="name" minlength="2" type="text" required />
	                    </div>
	                  </div>
	              </div>   
	                
	              <div id="sep1">   
	                  <div class="form-group ">
	                    <label for="cname" class="control-label col-lg-2">제목2</label>
	                    <div class="col-lg-10">
	                      <input class=" form-control" id="cname" name="name" minlength="2" type="text" required />
	                    </div>
	                  </div>
                  </div>
                 </div>
                  
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme" type="submit">수정</button>
                      <button class="btn btn-theme04" type="button">삭제</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->

<div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i> 공지사항2</h4>
              <form class="form-inline" role="form">
                <div class="form-group">
                  <label for="cname" class="control-label col-lg-2" style="width: 100%; float: left;">제목2</label>
                  <input type="" class="form-control" id="" >
                </div>
                <div class="form-group">
                  <label for="cname" class="control-label col-lg-2">제목2</label>
                  <input type="" class="form-control" id="">
                </div>
              
              </form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        
        
        
        
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
        <a href="${path}/Dashio/form_validation.jsp#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
   
  </section>
  
  <script>


</script>
 
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${path}/Dashio/lib/jquery/jquery.min.js"></script>
  <script type="text/javascript" language="javascript" src="${path}/Dashio/lib/advanced-datatable/js/jquery.js"></script>
  <script src="${path}/Dashio/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${path}/Dashio/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${path}/Dashio/lib/jquery.scrollTo.min.js"></script>
  <script src="${path}/Dashio/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script type="text/javascript" language="javascript" src="${path}/Dashio/lib/advanced-datatable/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="${path}/Dashio/lib/advanced-datatable/js/DT_bootstrap.js"></script>
  <!--common script for all pages-->
  <script src="${path}/Dashio/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script type="text/javascript">
    /* Formating function for row details */
    function fnFormatDetails(oTable, nTr) {
      var aData = oTable.fnGetData(nTr);
      var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
      sOut += '<tr><td>Rendering engine:</td><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
      sOut += '<tr><td>Link to source:</td><td>Could provide a link here</td></tr>';
      sOut += '<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>';
      sOut += '</table>';

      return sOut;
    }

    $(document).ready(function() {
      /*
       * Insert a 'details' column to the table
       */
      var nCloneTh = document.createElement('th');
      var nCloneTd = document.createElement('td');
      nCloneTd.innerHTML = '<img src="${path}/Dashio/lib/advanced-datatable/images/details_open.png">';
      nCloneTd.className = "center";

      $('#hidden-table-info thead tr').each(function() {
        this.insertBefore(nCloneTh, this.childNodes[0]);
      });

      $('#hidden-table-info tbody tr').each(function() {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
      });

      /*
       * Initialse DataTables, with no sorting on the 'details' column
       */
      var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [{
          "bSortable": false,
          "aTargets": [0]
        }],
        "aaSorting": [
          [1, 'asc']
        ]
      });

      /* Add event listener for opening and closing details
       * Note that the indicator for showing which row is open is not controlled by DataTables,
       * rather it is done here
       */
      $('#hidden-table-info tbody td img').live('click', function() {
        var nTr = $(this).parents('tr')[0];
        if (oTable.fnIsOpen(nTr)) {
          /* This row is already open - close it */
          this.src = "lib/advanced-datatable/media/images/details_open.png";
          oTable.fnClose(nTr);
        } else {
          /* Open this row */
          this.src = "lib/advanced-datatable/images/details_close.png";
          oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
        }
      });
    });
  </script>
</body>
</html>
