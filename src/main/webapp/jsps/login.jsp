<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>
    <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap.min.css'/>">
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap-theme.min.css'/>">
        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/bootstrap_admin/css/bootstrap-admin-theme.css'/>">
        <!-- Custom styles -->
        <style type="text/css">
            .bootstrap-admin-login-form{
            	margin-top: 50px;
            }
        </style>
</head>
<body>
   


  <body class="bootstrap-admin-without-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <form method="post" action="<c:url value='/j_spring_security_check'/>" class="bootstrap-admin-login-form">
                        <h1>Login</h1>
                        <div class="form-group">
                            <input class="form-control" type="text" name="j_username" placeholder="用户名">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="password" name="j_password" placeholder="密码">
                        </div>
                        <div class="form-group">
                            <label>
                                <input type="checkbox" name="_spring_security_remember_me">
                               	 记住我(2周内自动登录)
                            </label>
                        </div>
                        <button class="btn btn-lg btn-primary" type="submit">登录</button>
                        <button class="btn btn-lg btn-primary" type="submit">注册</button>
                    </form>
                </div>
            </div>
        </div>


    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
     <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/bootstrap.min.js'/>"></script>
        
</body>
</html>