<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

     <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
     	<c:forEach items="${menuList }" var="menu" varStatus="indx">
                        <li id="_menu_${menu.id}" class='<c:if test="${indx.index ==0 }">active</c:if>'>
                            <a href="javascript:void(0);" url="${menu.url }" id="${menu.id }" name="${menu.name}"><i class="glyphicon glyphicon-chevron-right"></i> ${menu.name }</a>
                        </li>
                        </c:forEach>
                    </ul>
                    
                    
        
    