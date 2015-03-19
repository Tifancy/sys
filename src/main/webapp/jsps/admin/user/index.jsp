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
      <div class="col-md-1"><sec:authorize url="/admin/user/deleteUser.do">
            <a href="<c:url value='/admin/user/deleteUser.do'/>">
                    <button id="_addNewUser" class="btn btn-sm btn-primary">
                        <i class="glyphicon glyphicon-pencil"></i>
                      	新增用户
                    </button>
                </a>
        </sec:authorize></div>
        
        <div class="col-md-3">
         <sec:authorize url="/admin/user/deleteUser.do">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="输入用户名搜索查询...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">查询</button>
      </span>
</div>
        </sec:authorize>
        </div>
      </div>
      
      <div class="row"><hr/> </div>
         <div class="row">
            
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>编号</th>
                                                <th>用户名</th>
                                                <th>昵称</th>
                                                <th>状态</th>
                                                <th>创建时间</th>
                                                <th>更新时间</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${page.result }" var="user" varStatus="indx">
                                            <tr>
                                                <td>${indx.index +1}</td>
                                                <td>${user.name }</td>
                                                <td>${user.nickName }</td>
                                                <td>${user.state }</td>
                                                <td><fmt:formatDate value="${user.createdOn }" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
                                                <td><fmt:formatDate value="${user.updatedOn}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                                <td>
                                                 <sec:authorize url="/admin/user/deleteUser.do">
                                                <a href="<c:url value='/admin/user/toEditUser.do?userId=${user.id}'/>">
                                                        <button class="btn btn-sm btn-primary">
                                                            <i class="glyphicon glyphicon-bell"></i>
                                                          	修改
                                                        </button>
                                                    </a>
                                                    </sec:authorize>
                                                <sec:authorize url="/admin/user/deleteUser.do">
                                                <a href="<c:url value='/admin/user/deleteUser.do'/>">
                                                        <button class="btn btn-sm btn-danger">
                                                            <i class="glyphicon glyphicon-trash"></i>
                                                          	删除
                                                        </button>
                                                    </a>
                                                    </sec:authorize>
                                               
                                        
                                                    </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                            
                        
                    </div>
      </div>
       

     <script type="text/javascript" src="<c:url value='/resources/jquery/jquery-1.9.0.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/bootstrap.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/twitter-bootstrap-hover-dropdown.min.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/bootstrap_admin/js/bootstrap-admin-theme-change-size.js'/>"></script>
     <script type="text/javascript" src="<c:url value='/resources/js/admin/user/index.js'/>"></script>
     <%@include file="/jsps/common/autoHeight.jsp" %> 
</body>
</html>