<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户管理</title>
    <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap.min.css'/>">
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap-theme.min.css'/>">
        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap-admin-theme.css'/>">
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap-admin-theme-change-size.css'/>">
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/vendors/selectize/dist/css/selectize.bootstrap3.css'/>">
        <!-- Custom styles -->
        <style type="text/css">
            .bootstrap-admin-login-form{
            	margin-top: 50px;
            }
        </style>
</head>
<body>
   


  <body style="padding: 0px;" class="bootstrap-admin-with-small-navbar">
    
      <div class="container-fluid">
         <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default bootstrap-admin-no-table-panel">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">新创建用户</div>
                                </div>
                                <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                                    <form id="_addUserForm" class="form-horizontal">
                                        <fieldset>
                                            <legend>新用户信息</legend>
                                            <div class="form-group">
                                            <label class="col-md-2 control-label" for="typeahead">用户名:</label>
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control col-md-6" id="_nickName">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                            <label class="col-md-2 control-label" for="typeahead">密码:</label>
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control col-md-6" id="_nickName">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                            <label class="col-md-2 control-label" for="typeahead">确认密码:</label>
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control col-md-6" id="_nickName">
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="form-group">
                                            <label class="col-md-2 control-label" for="typeahead">性别:</label>
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control col-md-6" id="_nickName">
                                                </div>
                                            </div>
                                            
                                             <div class="form-group">
                                            <label class="col-md-2 control-label" for="typeahead">年龄:</label>
                                                <div class="col-md-4">
                                                    <input type="text" class="form-control col-md-6" id="_nickName">
                                                </div>
                                            </div>
                                            
                                             <div class="form-group form-actions">
                                          <button type="submit" class="btn btn-primary">Save changes</button>
                                          <button type="reset" class="btn">Cancel</button>
                                        </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
      
      
      
      </div>

     <script type="text/javascript" src="<c:url value='/resources/jquery/jquery-1.9.0.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/bootstrap.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/twitter-bootstrap-hover-dropdown.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/bootstrap-admin-theme-change-size.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/twitter-bootstrap-hover-dropdown.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/vendors/uniform/jquery.uniform.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/vendors/chosen.jquery.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/vendors/selectize/dist/js/standalone/selectize.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/vendors/jquery-validation/dist/jquery.validate.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/js/admin/user/addUser.js'/>"></script>
     <%@include file="/jsps/common/autoHeight.jsp" %> 
</body>
</html>