<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>后台管理系统</title>
    <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap.min.css'/>">
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap-theme.min.css'/>">
        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap-admin-theme.css'/>">
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap-admin-theme-change-size.css'/>">
        <!-- Custom styles -->
        <style type="text/css">
            .bootstrap-admin-login-form{
            	margin-top: 50px;
            	
            }
        </style>
        <script type="text/javascript">
        
         var basePath = "<c:url value='/'/>";
        </script>
</head>

  <body class="bootstrap-admin-with-small-navbar">
     
     <%@include file="/jsps/admin/header.jsp" %>
  
  
    <div class="container-fluid">
     <div class="row">
     	 <div class="col-md-2 bootstrap-admin-col-left">
     	 
     	 <%@include file="/jsps/admin/leftMenu.jsp" %>
     	 </div>
     	
     	<!-- content -->
     	 <div class="col-md-10">
     	 
     	 	<iframe  id="_main" scrolling="no" frameborder="0" src="<c:url value='/jsps/admin/welcome.jsp'/>"  width="98%" height="500" style="min-height: 550px;" ></iframe>
			</div>
     	 
     	 </div>
     </div>

       <%@include file="/jsps/admin/footer.jsp" %>

     <script type="text/javascript" src="<c:url value='/resources/jquery/jquery-1.9.0.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/bootstrap.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/twitter-bootstrap-hover-dropdown.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/bootstrap-admin-theme-change-size.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/js/admin/index.js'/>"></script>
          	<script type="text/javascript">
    	$("#_main").load(function(){ 
    		var mainheight = $(this).contents().find("body").height()+30; 
    		$(this).height(mainheight); 
    		}); 
   				</script>
</body>
</html>