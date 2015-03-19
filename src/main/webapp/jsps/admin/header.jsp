<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
       <!-- small navbar -->
        <nav class="navbar navbar-default navbar-fixed-top bootstrap-admin-navbar-sm" role="navigation">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-left bootstrap-admin-theme-change-size">
                                <li class="text">更改窗口大小:</li>
                                <li><a class="size-changer small">小窗口</a></li>
                                <li><a class="size-changer large active">大</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#">链接1</a></li>
                                <li><a href="#">链接2</a></li>
                                <li>
                                    <a href="#">链接3 <i class="glyphicon glyphicon-bell"></i></a>
                                </li>
                                <li>
                                    <a href="#">设置 <i class="glyphicon glyphicon-cog"></i></a>
                                </li>
                                <li>
                                    <a href="#">跳转到前端 <i class="glyphicon glyphicon-share-alt"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" role="button" class="dropdown-toggle" data-hover="dropdown"> <i class="glyphicon glyphicon-user"></i> <sec:authentication property="principal.nickName"/> <i class="caret"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">我的动态</a></li>
                                        <li><a href="#">其他动态</a></li>
                                        <li><a href="#">个人中心</a></li>
                                        <li role="presentation" class="divider"></li>
                                        <li><a href="<c:url value='/j_spring_security_logout'/>">注销</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
       
       
          <!-- main / large navbar -->
        <nav class="navbar navbar-default navbar-fixed-top bootstrap-admin-navbar bootstrap-admin-navbar-under-small" role="navigation">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".main-navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="http://blog.sina.com.cn/dodoyota">后台管理系统</a>
                        </div>
                        <div class="collapse navbar-collapse main-navbar-collapse">
                            <ul class="nav navbar-nav">
                            	<c:forEach items="${moduleList }" var="module">
                                <li class='<c:if test="${defaultModule ==module.id}">active</c:if>'><a href="<c:url value='${module.url}?moduleId=${module.id }'/>">${module.name }</a></li>
                                </c:forEach>     
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div>
                </div>
            </div><!-- /.container -->
        </nav>
