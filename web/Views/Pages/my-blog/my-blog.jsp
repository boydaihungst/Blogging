<%@page import="Utils.Const"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Blog</title>
        <link href="Views/common/common.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container-fluid">
            <!--Header-->
            <jsp:include page="${HEADER}"></jsp:include>
                <main>
                <c:forEach  items="${LIST_ARTICLE}" var="art">
                    <c:choose>
                        <c:when test="${art.detail.type == BLOG_TYPE_NORMAL}">
                            <jsp:include page="${BLOG_NORMAl}"></jsp:include>
                        </c:when>
                        <c:when test="${art.detail.type == BLOG_TYPE_QUOTE}">
                            <jsp:include page="${BLOG_QUOTE}"></jsp:include>
                        </c:when>
                        <c:when test="${art.detail.type == BLOG_TYPE_PHOTO}">
                            <jsp:include page="${BLOG_PHOTO}"></jsp:include>
                        </c:when>
                    </c:choose>
                </c:forEach>
            </main>
            <!--Footer-->
            <jsp:include page="${FOOTER}"></jsp:include>
        </div>
    </body>
</html>
