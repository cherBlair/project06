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
  <!-- blueimp Gallery styles -->
  <link rel="stylesheet" href="${path}/Dashio/http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
  <!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
  <link rel="stylesheet" href="${path}/Dashio/lib/file-uploader/css/jquery.fileupload.css">
  <link rel="stylesheet" href="${path}/Dashio/lib/file-uploader/css/jquery.fileupload-ui.css">
  <!-- CSS adjustments for browsers with JavaScript disabled -->
  <noscript>
      <link rel="stylesheet" href="${path}/Dashio/lib/file-uploader/css/jquery.fileupload-noscript.css">
    </noscript>
  <noscript>
      <link rel="stylesheet" href="${path}/Dashio/lib/file-uploader/css/jquery.fileupload-ui-noscript.css">
    </noscript>

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
        <h3><i class="fa fa-angle-right"></i> Multiple Files Uploader</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <!-- The file upload form used as target for the file upload widget -->
            <form id="fileupload" action="http://jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data">
              <!-- Redirect browsers with JavaScript disabled to the origin page -->
              <noscript>
                  <input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/">
                </noscript>
              <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
              <div class="row fileupload-buttonbar">
                <div class="col-lg-8">
                  <!-- The fileinput-button span is used to style the file input field as button -->
                  <span class="btn btn-success fileinput-button">
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>Add files...</span>
                  <input type="file" name="files[]" multiple>
                  </span>
                  <button type="submit" class="btn btn-theme start">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start upload</span>
                    </button>
                  <button type="reset" class="btn btn-theme02 cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel upload</span>
                    </button>
                  <button type="button" class="btn btn-theme04 delete">
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                    </button>
                  <input type="checkbox" class="toggle">
                  <!-- The global file processing state -->
                  <span class="fileupload-process"></span>
                </div>
                <!-- /col-lg-7 -->
                <!-- The global progress state -->
                <div class="col-lg-4 fileupload-progress fade">
                  <!-- The global progress bar -->
                  <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar progress-bar-success" style="width:0%;">
                    </div>
                  </div>
                  <!-- The extended global progress state -->
                  <div class="progress-extended">
                    &nbsp;
                  </div>
                </div>
                <!-- /col-lg-5 -->
              </div>
              <!-- /row -->
              <!-- The table listing the files available for upload/download -->
              <table role="presentation" class="table table-striped">
                <tbody class="files">
                </tbody>
              </table>
            </form>
            <br>
            <div class="content-panel">
              <div class="panel-body">
                <h4>Demo Notes</h4>
                <ul>
                  <li>The maximum file size for uploads in this demo is <strong>5 MB</strong> (default file size is unlimited).</li>
                  <li>Only image files (<strong>JPG, GIF, PNG</strong>) are allowed in this demo (by default there is no file type restriction).</li>
                  <li>Uploaded files will be deleted automatically after <strong>5 minutes</strong> (demo setting).</li>
                  <li>You can <strong>drag &amp; drop</strong> files from your desktop on this webpage (see <a href="${path}/Dashio/https://github.com/blueimp/jQuery-File-Upload/wiki/Browser-support">Browser support</a>).</li>
                  <li>Please refer to the <a href="${path}/Dashio/https://github.com/blueimp/jQuery-File-Upload">project website</a> and <a href="${path}/Dashio/https://github.com/blueimp/jQuery-File-Upload/wiki">documentation</a> for more information.</li>
                  <li>Built with Twitter's <a href="${path}/Dashio/http://twitter.github.com/bootstrap/">Bootstrap</a> CSS framework and Icons from <a href="${path}/Dashio/http://glyphicons.com/">Glyphicons</a>.</li>
                </ul>
              </div>
            </div>
            <!-- /panel -->
            <!-- The blueimp Gallery widget -->
            <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
              <div class="slides"></div>
              <h3 class="title"></h3>
              <a class="prev">â¹</a>
              <a class="next">âº</a>
              <a class="close">Ã</a>
              <a class="play-pause"></a>
              <ol class="indicator"></ol>
            </div>
          </div>
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
        <a href="${path}/Dashio/file_upload.jsp#" class="go-top">
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
  <!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
  <script src="${path}/Dashio/lib/file-uploader/js/vendor/jquery.ui.widget.js"></script>
  <!-- The Templates plugin is included to render the upload/download listings -->
  <script src="${path}/Dashio/http://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
  <!-- The Load Image plugin is included for the preview images and image resizing functionality -->
  <script src="${path}/Dashio/http://blueimp.github.io/JavaScript-Load-Image/js/load-image.min.js"></script>
  <!-- The Canvas to Blob plugin is included for image resizing functionality -->
  <script src="${path}/Dashio/http://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
  <!-- blueimp Gallery script -->
  <script src="${path}/Dashio/http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
  <!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
  <script src="${path}/Dashio/lib/file-uploader/js/jquery.iframe-transport.js"></script>
  <!-- The basic File Upload plugin -->
  <script src="${path}/Dashio/lib/file-uploader/js/jquery.fileupload.js"></script>
  <!-- The File Upload processing plugin -->
  <script src="${path}/Dashio/lib/file-uploader/js/jquery.fileupload-process.js"></script>
  <!-- The File Upload image preview & resize plugin -->
  <script src="${path}/Dashio/lib/file-uploader/js/jquery.fileupload-image.js"></script>
  <!-- The File Upload audio preview plugin -->
  <script src="${path}/Dashio/lib/file-uploader/js/jquery.fileupload-audio.js"></script>
  <!-- The File Upload video preview plugin -->
  <script src="${path}/Dashio/lib/file-uploader/js/jquery.fileupload-video.js"></script>
  <!-- The File Upload validation plugin -->
  <script src="${path}/Dashio/lib/file-uploader/js/jquery.fileupload-validate.js"></script>
  <!-- The File Upload user interface plugin -->
  <script src="${path}/Dashio/lib/file-uploader/js/jquery.fileupload-ui.js"></script>
  <!-- The main application script -->
  <script src="${path}/Dashio/lib/file-uploader/js/main.js"></script>
  <!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
  <!--[if (gte IE 8)&(lt IE 10)]>
    <script src="${path}/Dashio/assets/file-uploader/js/cors/jquery.xdr-transport.js"></script>
    <![endif]-->
  <!-- The template to display files available for upload -->
  <script id="template-upload" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
      <td>
        <span class="preview"></span>
      </td>
      <td>
        <p class="name">{%=file.name%}</p>
        <strong class="error text-danger"></strong>
      </td>
      <td>
        <p class="size">Processing...</p>
        <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
          <div class="progress-bar progress-bar-success" style="width:0%;"></div>
        </div>
      </td>
      <td>
        {% if (!i && !o.options.autoUpload) { %}
        <button class="btn btn-primary start" disabled>
                  <i class="glyphicon glyphicon-upload"></i>
                  <span>Start</span>
              </button> {% } %} {% if (!i) { %}
        <button class="btn btn-warning cancel">
                  <i class="glyphicon glyphicon-ban-circle"></i>
                  <span>Cancel</span>
              </button> {% } %}
      </td>
    </tr>
    {% } %}
  </script>
  <!-- The template to display files available for download -->
  <script id="template-download" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
      <td>
        <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="${path}/Dashio/{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="${path}/Dashio/{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
      </td>
      <td>
        <p class="name">
          {% if (file.url) { %}
          <a href="${path}/Dashio/{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl? 'data-gallery': ''%}>{%=file.name%}</a> {% } else { %}
          <span>{%=file.name%}</span> {% } %}
        </p>
        {% if (file.error) { %}
        <div><span class="label label-danger">Error</span> {%=file.error%}</div>
        {% } %}
      </td>
      <td>
        <span class="size">{%=o.formatFileSize(file.size)%}</span>
      </td>
      <td>
        {% if (file.deleteUrl) { %}
        <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}" {% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}' {% } %}>
              <i class="glyphicon glyphicon-trash"></i>
              <span>Delete</span>
              </button>
        <input type="checkbox" name="delete" value="1" class="toggle"> {% } else { %}
        <button class="btn btn-warning cancel">
                  <i class="glyphicon glyphicon-ban-circle"></i>
                  <span>Cancel</span>
              </button> {% } %}
      </td>
    </tr>
    {% } %}
  </script>

</body>

</html>
